function AkimboShotgunBase:calculate_ammo_max_per_clip()
	return ShotgunBase.calculate_ammo_max_per_clip(self)
end

function AkimboShotgunBase:replenish()
	return ShotgunBase.replenish(self)
end

function AkimboShotgunBase:_get_current_damage(dmg_mul)
	return ShotgunBase._get_current_damage(self, dmg_mul)
end