local old_kill = PlayerManager.on_killshot
function PlayerManager:on_killshot(killed_unit, variant, headshot, weapon_id)
	old_kill(self, killed_unit, variant, headshot, weapon_id)
	
	local player_unit = self:player_unit()
	local weapon = self:get_current_state()._equipped_unit:base()
	
	if weapon:is_category("shotgun") and variant ~= "melee" then
		local distance = mvector3.distance(player_unit:position(), killed_unit:position())
		if self:has_category_upgrade("shotgun", "panic") then
			local rage = self:upgrade_value("shotgun", "panic")
			if rage and distance <= rage.range and managers.player:has_inactivate_temporary_upgrade("temporary", "rage_panic") then
				managers.player:activate_temporary_upgrade("temporary", "rage_panic")
				local enemies = World:find_units_quick("sphere", player_unit:position(), rage.area, 12, 21)
				
				for i, unit in ipairs(enemies) do
					if unit:character_damage() then
						unit:character_damage():build_suppression(0, 1)
					end
				end
			end
		end
		
		if self:has_category_upgrade("shotgun", "movement_multiplier") then
			local rage_pro = self:upgrade_value("shotgun", "movement_multiplier")
			if rage_pro and distance <= rage_pro.range then
				managers.player:activate_temporary_upgrade("temporary", "rage_increased_movement_speed")
			end
		end
	end
end