Hooks:PostHook(UpgradesTweakData, "_shotgun_definitions", "new_shotgun_skills", function(self, tweak_data)
	
	self.values.shotgun.swap_speed_multiplier = {
		1.5
	}
	
	self.values.shotgun.reload_speed_multiplier = {
		1.5
	}
	
	self.values.shotgun.spread_index_addend = {
		2
	}
	
	self.values.shotgun.steelsight_accuracy_inc = {
		0.8
	}
	
	self.values.shotgun.enter_steelsight_speed_multiplier = {
		2
	}
	
	self.values.shotgun.recoil_index_addend = {
		2
	}
	
	self.values.shotgun.ammo_increase_addmag = {
		1
	}
	
	self.values.shotgun.sprint_reload = {
		true
	}
	
	self.values.shotgun.steelsight_range_inc = {
		1
	}
	
	self.values.shotgun.spread_multiplier = {
		1.5
	}
	
	self.values.shotgun.panic = {
		{
			area = 900,
			range = 1800,
			amount = "panic"
		}
	}
	
	self.values.temporary.rage_panic = {
		{
			true,
			5
		}
	}
	
	self.values.temporary.dmg_dampener_outnumbered = {
		{
			0.85,
			10
		}
	}
	
	self.definitions.shotgun_swap_speed_multiplier = {
		name_id = "menu_shotgun_swap_speed_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "swap_speed_multiplier",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_reload_speed_multiplier = {
		name_id = "menu_shotgun_reload_speed_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "reload_speed_multiplier",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_accuracy_inc = {
		name_id = "menu_shotgun_accuracy_inc",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "spread_index_addend",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_stability_inc = {
		name_id = "menu_shotgun_stability_inc",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "recoil_index_addend",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_aim_speed_multiplier = {
		name_id = "menu_shotgun_aim_speed_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "enter_steelsight_speed_multiplier",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_sprint_reload = {
		name_id = "menu_shotgun_sprint_reload",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "sprint_reload",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_ammo_increase = {
		name_id = "menu_shotgun_ammo_increase",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "ammo_increase_addmag",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_spread_multiplier = {
		name_id = "menu_shotgun_spread_multiplier",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "spread_multiplier",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_panic = {
		name_id = "menu_shotgun_panic",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "panic",
			category = "shotgun"
		}
	}
	
	self.definitions.shotgun_rage_panic = {
		name_id = "menu_shotgun_temp_rage_panic",
		category = "temporary",
		upgrade = {
			value = 1,
			upgrade = "rage_panic",
			category = "temporary"
		}
	}
	
end)