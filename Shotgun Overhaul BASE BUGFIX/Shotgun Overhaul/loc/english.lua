Hooks:Add("LocalizationManagerPostInit", "skill_tree_english", function(loc)
	LocalizationManager:add_localized_strings({
		["menu_dexterity"] = "Dexterity",
		["menu_dexterity_desc"] = "BASIC: ##$basic##\nDecrease the time it takes to draw and holster your shotguns by ##33%##.\n\nACE: ##$pro##\nYou gain the ability to reload your shotguns while sprinting.",
			
		["menu_clay_shooter"] = "Clay Shooter",
		["menu_clay_shooter_desc"] = "BASIC: ##$basic##\nYour accuracy with shotguns is increased by ##8##.\n\nACE: ##$pro##\nYour accuracy bonus when aiming with a shotgun is increased by ##20%##. Your shotgun snap to zoom speed is increased by ##100%##.",
			
		["menu_steady_hand"] = "Steady Hand",
		["menu_steady_hand_desc"] = "BASIC: ##$basic##\nYour stability with shotguns is increased by ##8##.\n\nACE: ##$pro##\nYou can now hip-fire your shotguns while sprinting.",

		["menu_modified_choke"] = "Modified Choke",
		["menu_modified_choke_desc"] = "BASIC: ##$basic##\nYour damage falloff range with shotguns is doubled when aiming.\n\nACE: ##$pro##\nYour shot spread is reduced by ##33%## when aiming.",
			
		["menu_spray_and_pray"] = "Spray and Pray",
		["menu_spray_and_pray_desc"] = "BASIC: ##$basic##\nCarry one additional magazine for your shotguns.\n\nACE: ##$pro##\nYou reload your shotguns ##50%## faster.",
			
		["menu_rage"] = "Rage",
		["menu_rage_desc"] = "BASIC: ##$basic##\nGain ##15%## damage reduction for ##10## seconds when three or more enemies are within ##18m## of you.\n\nACE: ##$pro##\nKilling an enemy within ##18m## of you with a shotgun causes nearby enemies to panic. This cannot occur more than once every ##5## seconds.",
		
		["new_bm_wp_upg_a_custom_desc"] = "Fires 8 pellets that can penetrate through enemies and walls.",
		["new_bm_wp_upg_a_slug_desc"] = "Fires a rifled slug that can penetrate through armor, shields, walls, and enemies. Significantly increases effective range.",
		["new_bm_wp_upg_a_explosive_desc"] = "Fires an explosive slug that stuns or kills enemies on impact.",
		["new_bm_wp_upg_a_piercing_desc"] = "Fires 15 darts that penetrate armor. Has a wider spread but longer effective range.",
		["new_bm_wp_upg_a_dragons_breath_desc"] = "Fires ignited shards that set enemies on fire when hit. Significantly lowers effective range."
	})
end)