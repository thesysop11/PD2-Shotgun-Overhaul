function PlayerTased:_update_check_actions(t, dt)
	local input = self:_get_input(t, dt)
	
	if not self._attack_released and self._equipped_unit then
		local weap_base = self._equipped_unit:base()
		local fire_mode = weap_base:fire_mode()
		local fire_on_release = weap_base:fire_on_release()
		
		if fire_mode == "single" and not fire_on_release and not input.btn_primary_attack_state then
			self._attack_released = true
		elseif fire_mode ~= "single" or fire_on_release then
			self._attack_released = true
		end
	end

	self:_check_action_shock(t, input)

	self._taser_value = math.step(self._taser_value, 0.8, dt / 4)

	managers.environment_controller:set_taser_value(self._taser_value)

	local shooting = self:_check_action_primary_attack(t, input)

	if shooting then
		self._camera_unit:base():recoil_kick(-5, 5, -5, 5)
	end

	if self._unequip_weapon_expire_t and self._unequip_weapon_expire_t <= t then
		self._unequip_weapon_expire_t = nil

		self:_start_action_equip_weapon(t)
	end

	if self._equip_weapon_expire_t and self._equip_weapon_expire_t <= t then
		self._equip_weapon_expire_t = nil
	end

	if input.btn_stats_screen_press then
		self._unit:base():set_stats_screen_visible(true)
	elseif input.btn_stats_screen_release then
		self._unit:base():set_stats_screen_visible(false)
	end

	self:_update_foley(t, input)

	local new_action = nil

	self:_check_action_interact(t, input)

	local new_action = nil
end