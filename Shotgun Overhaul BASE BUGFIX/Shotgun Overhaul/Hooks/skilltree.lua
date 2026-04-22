Hooks:PostHook(SkillTreeTweakData, "init", "new_shotgun_skill_tree", function(self, tweak_data)

	self.skills.dexterity = {
		{
			upgrades = {
				"shotgun_swap_speed_multiplier"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"shotgun_sprint_reload"
			},
			cost = self.costs.pro
		},
		name_id = "menu_dexterity",
		desc_id = "menu_dexterity_desc",
		icon_xy = {
			2,
			1
		}
	}
	
	self.skills.clay_shooter = {
		{
			upgrades = {
				"shotgun_accuracy_inc"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shotgun_steelsight_accuracy_inc_1",
				"shotgun_aim_speed_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_clay_shooter",
		desc_id = "menu_clay_shooter_desc",
		icon_xy = {
			8,
			7
		}
	}
	
	self.skills.steady_hand = {
		{
			upgrades = {
				"shotgun_stability_inc"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shotgun_hip_run_and_shoot_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_steady_hand",
		desc_id = "menu_steady_hand_desc",
		icon_xy = {
			4,
			1
		}
	}
	
	self.skills.modified_choke = {
		{
			upgrades = {
				"shotgun_steelsight_range_inc_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shotgun_spread_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_modified_choke",
		desc_id = "menu_modified_choke_desc",
		icon_xy = {
			8,
			5
		}
	}
	
	self.skills.spray_and_pray = {
		{
			upgrades = {
				"shotgun_ammo_increase"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shotgun_reload_speed_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_spray_and_pray",
		desc_id = "menu_spray_and_pray_desc",
		icon_xy = {
			8,
			6
		}
	}
	
	self.skills.rage = {
		{
			upgrades = {
				"player_damage_dampener_outnumbered"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"shotgun_panic",
				"shotgun_rage_panic"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_rage",
		desc_id = "menu_rage_desc",
		icon_xy = {
			3,
			2
		}
	}
	
	self.trees[4] = {
		skill = "enforcer",
		name_id = "st_menu_enforce_shotgun",
		unlocked = true,
		background_texture = "guis/textures/pd2/skilltree/bg_mastermind",
		tiers = {
			{
				"dexterity"
			},
			{
				"clay_shooter",
				"steady_hand"
			},
			{
				"modified_choke",
				"spray_and_pray"
			},
			{
				"rage"
			}
		}
	}

end)