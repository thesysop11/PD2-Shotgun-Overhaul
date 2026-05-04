local to_fix = {
	["saiga"] = true,
	["x_basset"] = true,
	["basset"] = true
}

function RaycastWeaponBase:dont_fix()
	if not to_fix[self:get_name_id()] then
		return true
	end
	
	return false
end

local old_fire_sound = RaycastWeaponBase._fire_sound
function RaycastWeaponBase:_fire_sound(...)
	if self:dont_fix() then
		return old_fire_sound(self, ...)
	end
end

Hooks:PreHook(RaycastWeaponBase, "fire", "shotgun_autofire_fix", function(self, ...)
	if not self:dont_fix() then
		self._bullets_fired = 0
		self:play_tweak_data_sound("stop_fire")
		self:play_tweak_data_sound("fire_single", "fire")
	end
end)