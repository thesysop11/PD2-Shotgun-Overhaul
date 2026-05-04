local old_update = ShotgunBase._update_stats_values
function ShotgunBase:_update_stats_values()
	old_update(self)
	
	local custom_stats = managers.weapon_factory:get_custom_stats_from_weapon(self._factory_id, self._blueprint)
	
	self.shot_spread = 0.8
	for part_id, stats in pairs(custom_stats) do
		if stats.shot_spread then
			self.shot_spread = stats.shot_spread
		end
	end
end

function ShotgunBase:replenish()
	local ammo_max_multiplier = managers.player:upgrade_value("player", "extra_ammo_multiplier", 1)

	for _, category in ipairs(self:weapon_tweak_data().categories) do
		ammo_max_multiplier = ammo_max_multiplier * managers.player:upgrade_value(category, "extra_ammo_multiplier", 1)
	end

	ammo_max_multiplier = ammo_max_multiplier + ammo_max_multiplier * (self._total_ammo_mod or 0)

	if managers.player:has_category_upgrade("player", "add_armor_stat_skill_ammo_mul") then
		ammo_max_multiplier = ammo_max_multiplier * managers.player:body_armor_value("skill_ammo_mul", nil, 1)
	end

	ammo_max_multiplier = managers.modifiers:modify_value("WeaponBase:GetMaxAmmoMultiplier", ammo_max_multiplier)
	local ammo_max_per_clip = self:calculate_ammo_max_per_clip()
	local ammo_max = math.round((tweak_data.weapon[self._name_id].AMMO_MAX + managers.player:upgrade_value(self._name_id, "clip_amount_increase") * ammo_max_per_clip) * ammo_max_multiplier)
	if managers.player:has_category_upgrade("shotgun", "ammo_increase_addmag") then
		ammo_max = ammo_max + tweak_data.weapon[self._name_id].CLIP_AMMO_MAX * managers.player:upgrade_value("shotgun", "ammo_increase_addmag")
	end
	ammo_max_per_clip = math.min(ammo_max_per_clip, ammo_max)

	self:set_ammo_max_per_clip(ammo_max_per_clip)
	self:set_ammo_max(ammo_max)
	self:set_ammo_total(ammo_max)
	self:set_ammo_remaining_in_clip(ammo_max_per_clip)

	self._ammo_pickup = tweak_data.weapon[self._name_id].AMMO_PICKUP

	if self._assembly_complete then
		for _, gadget in ipairs(self:get_all_override_weapon_gadgets()) do
			if gadget and gadget.replenish then
				gadget:replenish()
			end
		end
	end

	self:update_damage()
end

function ShotgunBase:_get_current_damage(dmg_mul)
	local damage = ShotgunBase.super._get_current_damage(self, dmg_mul)
	damage = damage / (self._ammo_data and self._ammo_data.bullet_class == "FlameBulletBase" and 1 or self._rays)
	
	return damage
end

function ShotgunBase:get_shot_spread(user_unit)
	local spread = 0.8
	if self.shot_spread then
		spread = self.shot_spread
	end
	
	local current_state = user_unit and user_unit:movement() and user_unit:movement()._current_state
	if current_state and current_state:in_steelsight() then
		local primary_category = self:weapon_tweak_data().categories and self:weapon_tweak_data().categories[1]
		local mul = managers.player:upgrade_value(primary_category, "spread_multiplier", 1)
		if mul > 0 then
			spread = spread / mul
		end
	end
	
	return spread
end

local math_map_range_clamped = math.map_range_clamped

function ShotgunBase:get_damage_falloff(damage, col_ray, user_unit)
	if self._optimal_distance + self._optimal_range == 0 then
		return damage
	end

	local distance = col_ray.distance or mvector3.distance(col_ray.unit:position(), user_unit:position())
	local near_dist = self._optimal_distance - self._near_falloff
	local optimal_start = self._optimal_distance
	local optimal_end = self._optimal_distance + self._optimal_range
	local far_dist = optimal_end + self._far_falloff
	local near_mul = 1
	local optimal_mul = 1
	local far_mul = 1
	local primary_category = self:weapon_tweak_data().categories and self:weapon_tweak_data().categories[1]
	local current_state = user_unit and user_unit:movement() and user_unit:movement()._current_state

	if current_state and current_state:in_steelsight() then
		local mul = managers.player:upgrade_value(primary_category, "steelsight_range_inc", 1)
		far_dist = far_dist + self._far_falloff * mul
	end

	local damage_mul = 1

	if distance < self._optimal_distance then
		if self._near_falloff > 0 then
			damage_mul = math_map_range_clamped(distance, near_dist, optimal_start, near_mul, optimal_mul)
		else
			damage_mul = near_mul
		end
	elseif distance < optimal_end then
		damage_mul = optimal_mul
	elseif self._far_falloff > 0 then
		local mul = (distance - optimal_end) / (far_dist - optimal_end)
		if mul > 1 then
			mul = 1
		elseif mul < 0 then
			mul = 0
		end
		
		damage_mul = 1 - mul * far_mul
	else
		damage_mul = far_mul
	end

	return damage * damage_mul
end

function ShotgunBase:calculate_ammo_max_per_clip()
	local added = 0
	local weapon_tweak_data = self:weapon_tweak_data()

	if self:is_category("shotgun") and tweak_data.weapon[self._name_id].has_magazine then
		local mul = managers.player:upgrade_value("shotgun", "magazine_multiplier", 0)
		
		added = weapon_tweak_data.CLIP_AMMO_MAX * mul
	elseif self:is_category("pistol") and not self:is_category("revolver") and managers.player:has_category_upgrade("pistol", "magazine_capacity_inc") then
		added = managers.player:upgrade_value("pistol", "magazine_capacity_inc", 0)

		if self:is_category("akimbo") then
			added = added * 2
		end
	elseif self:is_category("smg", "assault_rifle", "lmg") then
		added = managers.player:upgrade_value("player", "automatic_mag_increase", 0)

		if self:is_category("akimbo") then
			added = added * 2
		end
	end

	local ammo = tweak_data.weapon[self._name_id].CLIP_AMMO_MAX + added
	ammo = ammo + managers.player:upgrade_value(self._name_id, "clip_ammo_increase")

	if not self:upgrade_blocked("weapon", "clip_ammo_increase") then
		ammo = ammo + managers.player:upgrade_value("weapon", "clip_ammo_increase", 0)
	end

	for _, category in ipairs(tweak_data.weapon[self._name_id].categories) do
		if not self:upgrade_blocked(category, "clip_ammo_increase") then
			ammo = ammo + managers.player:upgrade_value(category, "clip_ammo_increase", 0)
		end
	end

	ammo = ammo + (self._extra_ammo and self._extra_ammo / 2 or 0)

	return ammo
end

local mvec_temp = Vector3()
local mvec_direction = Vector3()
local mvec_spread_direction = Vector3()

--TODO: Achievements, stats
function ShotgunBase:_fire_raycast(user_unit, from_pos, direction, dmg_mul, shoot_player, spread_mul, autohit_mul, suppr_mul, shoot_through_data)	
	local function normalized_spread(radius, x_multi, y_multi)
		local spread = math.abs(radius) or 0
		local x_m = math.abs(x_multi) or 1
		local y_m = math.abs(y_multi) or 1
		
		if ( spread <= 0 or x_m <= 0 and y_m <= 0 ) then
			return 0, 0
		end
		
		local stand_dev = spread / 2 --Get an offset within 2 standard deviations (~96% of all values)
        local x, y, s = 0, 0, 0
        repeat
            x = math.random() * 2 - 1
            y = math.random() * 2 - 1
            s = x * x + y * y
        until ( s < 1 and s > 0 )

        s = math.sqrt(-2 * math.log(s) / s) * stand_dev

        local yaw = x * s
        local pitch = y * s
		local length = math.sqrt(yaw * yaw + pitch * pitch)
		
        if length > spread then
			yaw = yaw / length * spread
			pitch = pitch / length * spread
		end
		
		yaw = yaw * x_m;
		pitch = pitch * y_m;
		
		return yaw, pitch
	end
	
	local result = nil
	local hit_objects = {}
	local hit_enemies = {}
	local hit_units = {}
	local col_rays = nil

	if self._alert_events then
		col_rays = {}
	end

	local damage = self:_get_current_damage(dmg_mul)
	local autoaim, dodge_enemies = self:check_autoaim(from_pos, direction, self._range)

	local spread_x, spread_y = self:_get_spread(user_unit)
	local right = direction:cross(Vector3(0, 0, 1)):normalized()
	local up = direction:cross(right):normalized()

	--Set the direction the spread will fly out
	mvector3.set(mvec_direction, direction)
	local theta = math.random() * 360
	local radius = math.sqrt(math.random()) * (spread_mul or 1)
	local ax = math.cos(theta) * radius * spread_x
	local ay = math.sin(theta) * radius * spread_y
	mvector3.add(mvec_direction, right * math.tan(ax))
	mvector3.add(mvec_direction, up * math.tan(ay))
	mvector3.set(mvec_direction, mvec_direction:normalized())
	
	mvector3.set(right, mvec_direction:cross(Vector3(0, 0, 1)):normalized())
	mvector3.set(up, mvec_direction:cross(right):normalized())
	local shot_spread_mul_x, shot_spread_mul_y = 1, 1
	if self._spread_multiplier then
		shot_spread_mul_x = self._spread_multiplier[1]
		shot_spread_mul_y = self._spread_multiplier[2]
	end

	local is_fire = self._ammo_data and self._ammo_data.bullet_class == "FlameBulletBase" and true or false
	for i = 1, self._rays do
		--Get the normalized spread direction
		local yaw, pitch = 0, 0
		local s_spread = ShotgunBase.get_shot_spread(self, user_unit)
		if is_fire then
			local s_theta = math.random() * 360
			local s_radius = math.sqrt(math.random()) * s_spread
			yaw = math.cos(s_theta) * s_radius * shot_spread_mul_x
			pitch = math.sin(s_theta) * s_radius * shot_spread_mul_y
		else
			yaw, pitch = normalized_spread(s_spread, shot_spread_mul_x, shot_spread_mul_y)
		end
		
		mvector3.set(mvec_spread_direction, mvec_direction)
		if (yaw ~= 0 or pitch ~= 0 ) then
			mvector3.add(mvec_spread_direction, right * math.tan(yaw))
			mvector3.add(mvec_spread_direction, up * math.tan(pitch))
			mvector3.set(mvec_spread_direction, mvec_spread_direction:normalized())
		end
		
		local hits = ShotgunBase._fire_raycast_aimed(self, from_pos, mvec_spread_direction)
		for _, hit in ipairs(hits) do
			local not_object = hit.unit:character_damage()
			if is_fire then
				local enemy_key = hit.unit:key()
				if not hit_units[enemy_key] or not_object and hit.unit:character_damage().is_head and hit.unit:character_damage():is_head(hit.body) then
					hit_units[enemy_key] = hit
					
					if not_object then
						hit_enemies[enemy_key] = hit
					else
						hit_objects[enemy_key] = hit
					end
				end
			else
				table.insert(hit_units, hit)
				
				if not_object then
					table.insert(hit_enemies, hit)
				else
					table.insert(hit_objects, hit)
				end
			end
		end
		
		if col_rays and #hits < 1 then
			local ray_to = mvector3.copy(from_pos)
			mvector3.add(ray_to, mvec_spread_direction * self:weapon_range())
			local spread_direction = mvector3.copy(mvec_spread_direction)

			table.insert(col_rays, {
				position = ray_to,
				ray = spread_direction
			})
		end
	end
	
	if col_rays then
		local added = {}
		for _, unit in pairs(hit_units) do
			local unit_key = unit.unit:key()
			if not added[unit_key] then
				added[unit_key] = unit
				table.insert(col_rays, unit)
			end
		end
	end

	local kill_data = {
		kills = 0,
		headshots = 0,
		civilian_kills = 0
	}
	
	local ignore_unit = {}
	for _, hit in pairs(hit_units) do
		local damage = self:get_damage_falloff(damage, hit, user_unit)
		local enemy_key = hit.unit:key()
		
		if damage > 0 and not ignore_unit[enemy_key] then
			local my_result = self._bullet_class:on_collision(hit, self._unit, user_unit, damage)
			my_result = managers.mutators:modify_value("ShotgunBase:_fire_raycast", my_result)

			if my_result then
				if my_result.type == "death" then
					managers.game_play_central:do_shotgun_push(hit.unit, hit.position, hit.ray, hit.distance, user_unit)

					kill_data.kills = kill_data.kills + 1

					if hit.body and hit.body:name() == Idstring("head") then
						kill_data.headshots = kill_data.headshots + 1
					end

					if hit.unit and hit.unit:base() and (hit.unit:base()._tweak_table == "civilian" or hit.unit:base()._tweak_table == "civilian_female") then
						kill_data.civilian_kills = kill_data.civilian_kills + 1
					end
				elseif my_result.type == "healed" then
					ignore_unit[enemy_key] = hit
				end
			end
		end
	end

	if dodge_enemies and self._suppression then
		for enemy_data, dis_error in pairs(dodge_enemies) do
			enemy_data.unit:character_damage():build_suppression(suppr_mul * dis_error * self._suppression, self._panic_suppression_chance)
		end
	end

	if not result then
		result = {
			hit_enemy = next(hit_enemies) and true or false
		}

		if self._alert_events then
			result.rays = #col_rays > 0 and col_rays
		end
	end

	managers.statistics:shot_fired({
		hit = false,
		weapon_unit = self._unit
	})

	--Only count hits on the same enemy once
	local unique_enemies = {}
	for _, d in pairs(hit_enemies) do
		local enemy_key = d.unit:key()
		if not unique_enemies[enemy_key] then
			unique_enemies[enemy_key] = d
			managers.statistics:shot_fired({
				skip_bullet_count = true,
				hit = true,
				weapon_unit = self._unit
			})
		end
	end

	for key, data in pairs(tweak_data.achievement.shotgun_single_shot_kills) do
		if data.headshot and data.count <= kill_data.headshots - kill_data.civilian_kills or data.count <= kill_data.kills - kill_data.civilian_kills then
			local should_award = true

			if data.blueprint then
				local missing_parts = false

				for _, part_or_parts in ipairs(data.blueprint) do
					if type(part_or_parts) == "string" then
						if not table.contains(self._blueprint or {}, part_or_parts) then
							missing_parts = true

							break
						end
					else
						local found_part = false

						for _, part in ipairs(part_or_parts) do
							if table.contains(self._blueprint or {}, part) then
								found_part = true

								break
							end
						end

						if not found_part then
							missing_parts = true

							break
						end
					end
				end

				if missing_parts then
					should_award = false
				end
			end

			if should_award then
				managers.achievment:_award_achievement(data, key)
			end
		end
	end

	return result
end

local mvec_to_aimed = Vector3()
local mvec_spread_direction_aimed = Vector3()

function ShotgunBase:_fire_raycast_aimed(from_pos, direction)
	local ray_distance = self:weapon_range()
	mvector3.set(mvec_spread_direction_aimed, direction)
	mvector3.set(mvec_to_aimed, mvec_spread_direction_aimed)
	mvector3.multiply(mvec_to_aimed, ray_distance)
	mvector3.add(mvec_to_aimed, from_pos)

	local ray_hits, hit_enemy = self:_collect_hits(from_pos, mvec_to_aimed)
	
	return ray_hits
	
	--[[local hit_anyone = false
	local hit_count = 0
	local cop_kill_count = 0
	local hit_through_wall = false
	local hit_through_shield = false
	local hit_result = nil

	for _, hit in ipairs(ray_hits) do
		damage = self:get_damage_falloff(damage, hit, user_unit)
		hit_result = nil

		if damage > 0 then
			hit_result = self._bullet_class:on_collision(hit, self._unit, user_unit, damage)
		end

		if hit_result and hit_result.type == "death" then
			local unit_type = hit.unit:base() and hit.unit:base()._tweak_table
			local is_civilian = unit_type and CopDamage.is_civilian(unit_type)

			if not is_civilian then
				cop_kill_count = cop_kill_count + 1
			end

			if self:is_category(tweak_data.achievement.easy_as_breathing.weapon_type) and not is_civilian then
				self._kills_without_releasing_trigger = (self._kills_without_releasing_trigger or 0) + 1

				if tweak_data.achievement.easy_as_breathing.count <= self._kills_without_releasing_trigger then
					managers.achievment:award(tweak_data.achievement.easy_as_breathing.award)
				end
			end
		end

		if hit_result then
			hit.damage_result = hit_result
			hit_anyone = true
			hit_count = hit_count + 1
		end

		if hit.unit:in_slot(managers.slot:get_mask("world_geometry")) then
			hit_through_wall = true
		elseif hit.unit:in_slot(managers.slot:get_mask("enemy_shield_check")) then
			hit_through_shield = hit_through_shield or alive(hit.unit:parent())
		end

		if hit_result and hit_result.type == "death" and cop_kill_count > 0 then
			local unit_type = hit.unit:base() and hit.unit:base()._tweak_table
			local multi_kill, enemy_pass, obstacle_pass, weapon_pass, weapons_pass, weapon_type_pass = nil

			for achievement, achievement_data in pairs(tweak_data.achievement.sniper_kill_achievements) do
				multi_kill = not achievement_data.multi_kill or cop_kill_count == achievement_data.multi_kill
				enemy_pass = not achievement_data.enemy or unit_type == achievement_data.enemy
				obstacle_pass = not achievement_data.obstacle or achievement_data.obstacle == "wall" and hit_through_wall or achievement_data.obstacle == "shield" and hit_through_shield
				weapon_pass = not achievement_data.weapon or self._name_id == achievement_data.weapon
				weapons_pass = not achievement_data.weapons or table.contains(achievement_data.weapons, self._name_id)
				weapon_type_pass = not achievement_data.weapon_type or self:is_category(achievement_data.weapon_type)

				if multi_kill and enemy_pass and obstacle_pass and weapon_pass and weapons_pass and weapon_type_pass then
					if achievement_data.stat then
						managers.achievment:award_progress(achievement_data.stat)
					elseif achievement_data.award then
						managers.achievment:award(achievement_data.award)
					elseif achievement_data.challenge_stat then
						managers.challenge:award_progress(achievement_data.challenge_stat)
					elseif achievement_data.trophy_stat then
						managers.custom_safehouse:award(achievement_data.trophy_stat)
					elseif achievement_data.challenge_award then
						managers.challenge:award(achievement_data.challenge_award)
					end
				end
			end
		end
	end

	if not tweak_data.achievement.tango_4.difficulty or table.contains(tweak_data.achievement.tango_4.difficulty, Global.game_settings.difficulty) then
		if self._gadgets and table.contains(self._gadgets, "wpn_fps_upg_o_45rds") and cop_kill_count > 0 and managers.player:player_unit():movement():current_state():in_steelsight() then
			if self._tango_4_data then
				if self._gadget_on == self._tango_4_data.last_gadget_state then
					self._tango_4_data = nil
				else
					self._tango_4_data.last_gadget_state = self._gadget_on
					self._tango_4_data.count = self._tango_4_data.count + 1
				end

				if self._tango_4_data and tweak_data.achievement.tango_4.count <= self._tango_4_data.count then
					managers.achievment:_award_achievement(tweak_data.achievement.tango_4, "tango_4")
				end
			else
				self._tango_4_data = {
					count = 1,
					last_gadget_state = self._gadget_on
				}
			end
		elseif self._tango_4_data then
			self._tango_4_data = nil
		end
	end

	result.hit_enemy = hit_anyone

	if self._autoaim then
		self._shot_fired_stats_table.hit = hit_anyone
		self._shot_fired_stats_table.hit_count = hit_count

		if (not self._ammo_data or not self._ammo_data.ignore_statistic) and not self._rays then
			managers.statistics:shot_fired(self._shot_fired_stats_table)
		end
	end

	local furthest_hit = ray_hits[#ray_hits]

	if (furthest_hit and furthest_hit.distance > 600 or not furthest_hit) and alive(self._obj_fire) then
		self._obj_fire:m_position(self._trail_effect_table.position)
		mvector3.set(self._trail_effect_table.normal, mvec_spread_direction_aimed)

		local trail = World:effect_manager():spawn(self._trail_effect_table)

		if furthest_hit then
			World:effect_manager():set_remaining_lifetime(trail, math.clamp((furthest_hit.distance - 600) / 10000, 0, furthest_hit.distance))
		end
	end

	if self._alert_events then
		result.rays = ray_hits
	end

	return result]]
end