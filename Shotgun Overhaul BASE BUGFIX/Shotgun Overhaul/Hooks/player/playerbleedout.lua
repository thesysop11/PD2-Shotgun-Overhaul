function PlayerBleedOut:_update_check_actions(t, dt)
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

	self._unit:camera():set_shaker_parameter("headbob", "amplitude", 0)
	self:_update_throw_projectile_timers(t, input)
	self:_update_reload_timers(t, dt, input)
	self:_update_equip_weapon_timers(t, input)

	if input.btn_stats_screen_press then
		self._unit:base():set_stats_screen_visible(true)
	elseif input.btn_stats_screen_release then
		self._unit:base():set_stats_screen_visible(false)
	end

	self:_update_foley(t, input)

	local new_action = nil
	new_action = new_action or self:_check_action_weapon_gadget(t, input)
	new_action = new_action or self:_check_action_weapon_firemode(t, input)
	new_action = new_action or self:_check_action_reload(t, input)
	new_action = new_action or self:_check_change_weapon(t, input)

	if not new_action then
		new_action = self:_check_action_primary_attack(t, input)

		if not _G.IS_VR then
			self._shooting = new_action
		end
	end

	new_action = new_action or self:_check_action_throw_projectile(t, input)
	new_action = new_action or self:_check_action_equip(t, input)
	new_action = new_action or self:_check_action_interact(t, input)
	new_action = new_action or self:_check_action_steelsight(t, input)
	new_action = new_action or self:_check_action_deploy_underbarrel(t, input)

	self:_check_action_night_vision(t, input)
	self:_check_use_item(t, input)
end