function PlayerParachuting:_update_check_actions(t, dt)
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
	
	self._stick_move = self._controller:get_input_axis("move")

	if mvector3.length(self._stick_move) < 0.1 then
		self._move_dir = nil
	else
		self._move_dir = mvector3.copy(self._stick_move)
		local cam_flat_rot = Rotation(self._cam_fwd_flat, math.UP)

		mvector3.rotate_with(self._move_dir, cam_flat_rot)
	end

	self:_update_throw_projectile_timers(t, input)
	self:_update_reload_timers(t, dt, input)
	self:_update_melee_timers(t, input)
	self:_update_charging_weapon_timers(t, input)
	self:_update_equip_weapon_timers(t, input)

	if self._change_item_expire_t and self._change_item_expire_t <= t then
		self._change_item_expire_t = nil
	end

	if self._change_weapon_pressed_expire_t and self._change_weapon_pressed_expire_t <= t then
		self._change_weapon_pressed_expire_t = nil
	end

	self:_update_steelsight_timers(t, dt)

	if input.btn_stats_screen_press then
		self._unit:base():set_stats_screen_visible(true)
	elseif input.btn_stats_screen_release then
		self._unit:base():set_stats_screen_visible(false)
	end

	self:_update_foley(t, input)

	local new_action = nil
	local anim_data = self._ext_anim
	new_action = new_action or self:_check_action_weapon_gadget(t, input)
	new_action = new_action or self:_check_action_weapon_firemode(t, input)

	if not new_action then
		-- Nothing
	end

	new_action = new_action or self:_check_action_reload(t, input)
	new_action = new_action or self:_check_change_weapon(t, input)
	new_action = new_action or self:_check_action_primary_attack(t, input)
	new_action = new_action or self:_check_action_equip(t, input)
	new_action = new_action or self:_check_action_throw_projectile(t, input)

	self:_check_action_steelsight(t, input)
end