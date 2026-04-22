function PlayerDriving:update(t, dt)
	if self._vehicle == nil then
		print("[DRIVING] No in a vehicle")

		return
	elseif not self._vehicle:is_active() then
		print("[DRIVING] The vehicle is not active")

		return
	end

	if self._controller == nil then
		print("[DRIVING] No controller available")

		return
	end

	self:_update_input(dt)

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

	self:_calculate_standard_variables(t, dt)
	self:_update_ground_ray()
	self:_update_fwd_ray()
	self:_check_action_change_camera(t, input)
	self:_check_action_rear_cam(t, input)
	self:_update_hud(t, input)
	self:_update_action_timers(t, input)
	self:_check_action_exit_vehicle(t, input)

	if self._menu_closed_fire_cooldown > 0 then
		self._menu_closed_fire_cooldown = self._menu_closed_fire_cooldown - dt
	end

	if self._seat.driving then
		self:_update_check_actions_driver(t, dt, input)
	elseif self._seat.allow_shooting or self._stance == PlayerDriving.STANCE_SHOOTING then
		self:_update_check_actions_passenger(t, dt, input)
	else
		self:_update_check_actions_passenger_no_shoot(t, dt, input)
	end

	self._ext_movement:set_m_pos(self._unit:position())
	self:_upd_stance_switch_delay(t, dt)
end