Hooks:PostHook( WeaponFactoryTweakData, "init", "shotgun-mods", function(self)
	--Slug
	self.parts.wpn_fps_upg_a_slug.stats = {
		value = 5,
		spread = 4,
		moving_spread = 4,
		recoil = -2
	}
	self.parts.wpn_fps_upg_a_slug.custom_stats.shot_spread = 0
	self.parts.wpn_fps_upg_a_slug.custom_stats.damage_near_mul = 4
	self.parts.wpn_fps_upg_a_slug.custom_stats.damage_far_mul = 4
	self.parts.wpn_fps_upg_a_slug.desc_id = "new_bm_wp_upg_a_slug_desc"
	
	--000
	self.parts.wpn_fps_upg_a_custom.desc_id = "new_bm_wp_upg_a_custom_desc"
	self.parts.wpn_fps_upg_a_custom.stats = {
		value = 5,
		recoil = -1
	}
	self.parts.wpn_fps_upg_a_custom.custom_stats = {
		rays = 8,
		can_shoot_through_enemy = true,
		can_shoot_through_wall = true
	}
	
	---Free 000
	self.parts.wpn_fps_upg_a_custom_free.desc_id = "new_bm_wp_upg_a_custom_desc"
	self.parts.wpn_fps_upg_a_custom_free.stats = {
		value = 5,
		recoil = -1
	}
	self.parts.wpn_fps_upg_a_custom_free.custom_stats = {
		rays = 8,
		can_shoot_through_enemy = true,
		can_shoot_through_wall = true
	}
	
	--HE
	self.parts.wpn_fps_upg_a_explosive.stats = {
		value = 5,
		spread = 2,
		moving_spread = 2,
		recoil = -2
	}
	self.parts.wpn_fps_upg_a_explosive.custom_stats.shot_spread = 0
	self.parts.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 3
	self.parts.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 3
	self.parts.wpn_fps_upg_a_explosive.desc_id = "new_bm_wp_upg_a_explosive_desc"
	
	--Flechette
	self.parts.wpn_fps_upg_a_piercing.desc_id = "new_bm_wp_upg_a_piercing_desc"
	self.parts.wpn_fps_upg_a_piercing.stats = {
		value = 5
	}
	self.parts.wpn_fps_upg_a_piercing.custom_stats = {
		damage_near_mul = 2,
		armor_piercing_add = 1,
		damage_far_mul = 2,
		rays = 15,
		shot_spread = 1
	}
	
	--Dragon's Breath
	self.parts.wpn_fps_upg_a_dragons_breath.desc_id = "new_bm_wp_upg_a_dragons_breath_desc"
	self.parts.wpn_fps_upg_a_dragons_breath.stats = {
		value = 5
	}
	self.parts.wpn_fps_upg_a_dragons_breath.custom_stats = {
		armor_piercing_add = 1,
		ignore_statistic = true,
		muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
		can_shoot_through_shield = true,
		damage_far_mul = 0.5,
		damage_near_mul = 0.5,
		bullet_class = "FlameBulletBase",
		fire_dot_data = {
			dot_trigger_chance = "100",
			dot_damage = "10",
			dot_length = "3.1",
			dot_trigger_max_distance = "3000",
			dot_tick_period = "0.5"
		},
		rays = 18,
		shot_spread = 2
	}
	
	--Shark Teeth
	self.parts.wpn_fps_upg_ns_shot_shark.stats = {
		spread = -1,
		concealment = -2,
		suppression = -2,
		value = 5,
		recoil = 3
	}
	
	--Silent Killer
	self.parts.wpn_fps_upg_ns_shot_thick.stats = {
		alert_size = 12,
		spread_moving = -2,
		suppression = 12,
		value = 7,
		recoil = 2,
		concealment = -2
	}
	
	--King's Crown
	self.parts.wpn_fps_upg_shot_ns_king.stats = {
		value = 5,
		concealment = -2,
		suppression = -5,
		spread = 2,
		recoil = 1
	}
	
	--Shh!
	self.parts.wpn_fps_upg_ns_sho_salvo_large.stats = {
		alert_size = 12,
		spread = 1,
		suppression = 12,
		value = 7,
		recoil = 2,
		spread_moving = -2,
		concealment = -4
	}
	
	--Leveller
	self.parts.wpn_fps_upg_ns_duck.stats = {
		value = 1,
		recoil = 2,
		concealment = -2,
		spread_multi = {
			2,
			0.25
		}
	}
	self.parts.wpn_fps_upg_ns_duck.forbids = {
		"wpn_fps_upg_a_slug",
		"wpn_fps_upg_a_explosive"
	}
	
	--Shotgun-specific parts
	self.parts.wpn_fps_sho_basset_m_extended.stats.extra_ammo = 3
	
	self.parts.wpn_fps_shot_b682_s_ammopouch.stats.total_ammo_mod = 5
	
	self.parts.wpn_fps_shot_r870_body_rack.stats.extra_ammo = 0
	self.parts.wpn_fps_shot_r870_body_rack.stats.reload = 1
	
	self.parts.wpn_fps_sho_m590_b_suppressor.stats.spread = -1
	
	self.parts.wpn_fps_shot_m1897_b_short.stats.spread = -1
	
	self.parts.wpn_fps_sho_aa12_barrel_silenced.stats.damage = 0
	
	self.parts.wpn_fps_sho_aa12_mag_drum.stats.extra_ammo = 12
	
	self.parts.wpn_fps_sho_ksg_b_long.stats.extra_ammo = 0
	
	self.parts.wpn_fps_sho_ksg_b_short.stats.extra_ammo = -4
	self.parts.wpn_fps_sho_ksg_b_short.stats.damage = 0
	self.parts.wpn_fps_sho_ksg_b_short.stats.spread = -1
	
	self.parts.wpn_fps_sho_ben_b_short.stats.damage = 0
	self.parts.wpn_fps_sho_ben_b_short.stats.spread = -1
	self.parts.wpn_fps_sho_ben_b_short.stats.extra_ammo = 0
	
	self.parts.wpn_fps_sho_ben_b_long.stats.extra_ammo = 2
	
	self.parts.wpn_fps_sho_rota_b_silencer.stats.damage = 0
	
	self.parts.wpn_fps_sho_rota_fg_standard.stats.spread = -1
	
	self.parts.wpn_fps_shot_m37_b_short.stats.spread = -1
	
	self.parts.wpn_fps_sho_striker_b_suppressed.stats.damage = 0
	
	self.parts.wpn_fps_shot_huntsman_b_short.stats.spread = -3
	self.parts.wpn_fps_shot_huntsman_b_short.stats.recoil = -1
	
	self.parts.wpn_fps_shot_huntsman_s_short.stats.spread = -2
	self.parts.wpn_fps_shot_huntsman_s_short.stats.recoil = -2
	
	self.parts.wpn_fps_shot_b682_b_short.stats.spread = -3
	self.parts.wpn_fps_shot_b682_b_short.stats.recoil = -1
	
	self.parts.wpn_fps_shot_b682_s_short.stats.spread = -2
	self.parts.wpn_fps_shot_b682_s_short.stats.recoil = -2
	
	self.parts.wpn_fps_sho_coach_b_short.stats.spread = -3
	self.parts.wpn_fps_sho_coach_b_short.stats.recoil = -1
	
	self.parts.wpn_fps_sho_coach_s_short.stats.spread = -2
	self.parts.wpn_fps_sho_coach_s_short.stats.recoil = -2
	
	--General parts
	self.parts.wpn_fps_upg_i_autofire.stats.damage = 0
	
	self.parts.wpn_fps_upg_i_singlefire.stats.spread = 2
	self.parts.wpn_fps_upg_i_singlefire.stats.recoil = -1
	
	--870
	self.wpn_fps_shot_r870.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -33
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	self.wpn_fps_sho_ksg.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -15
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
			
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -24
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_fps_upg_o_specter = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_specter.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_aimpoint = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_aimpoint.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_aimpoint_2 = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_aimpoint_2.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_docter = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_docter.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_eotech = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_eotech.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_t1micro = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_t1micro.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_cmore = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_cmore.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_acog = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_acog.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_cs = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_cs.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_eotech_xps = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_eotech_xps.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_reflex = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_reflex.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_rx01 = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_rx01.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_rx30 = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_rx30.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_ak_extra_ris = {
			a_obj = "a_fl_90"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			forbids = table.list_add(self.parts.wpn_fps_upg_fl_ass_smg_sho_surefire.forbids, {
				"wpn_fps_addon_ris"
			}),
			adds = {
				"wpn_fps_ak_extra_ris"
			}
		},
		wpn_fps_upg_fl_ass_utg = {
			forbids = table.list_add(self.parts.wpn_fps_upg_fl_ass_utg.forbids, {
				"wpn_fps_addon_ris"
			}),
			adds = {
				"wpn_fps_ak_extra_ris",
				"wpn_fps_upg_fl_ass_peq15_flashlight"
			}
		},
		wpn_fps_upg_o_spot = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_spot.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_bmg = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_eotech.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_uh = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_eotech.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_fc1 = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = table.list_add(self.parts.wpn_fps_upg_o_eotech.forbids, {
				"wpn_fps_addon_ris"
			})
		},
		wpn_fps_upg_o_tf90 = {
			override = {
				wpn_fps_upg_fl_ass_smg_sho_peqbox = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_laser = {
					a_obj = "a_fl_2"
				},
				wpn_fps_upg_fl_ass_peq15 = {
					a_obj = "a_fl_2"
				}
			},
			forbids = {
				"wpn_fps_addon_ris",
				"wpn_fps_upg_o_sig",
				"wpn_fps_upg_o_xpsg33_magnifier"
			}
		}
	}
	
	--Mossberg
	self.wpn_fps_sho_m590.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -15
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -24
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--Shorty
	self.wpn_fps_shot_serbu.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -27
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -45
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--O/U
	self.wpn_fps_shot_b682.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -36
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -63
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_fps_upg_a_explosive = {
			custom_stats = {
				ignore_statistic = true,
				damage_far_mul = 3,
				damage_near_mul = 3,
				bullet_class = "InstantExplosiveBulletBase",
				rays = 1,
				shot_spread = 0
			}
		}
	}
	
	--S/S Primary
	self.wpn_fps_shot_huntsman.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -36
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -63
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_fps_upg_a_explosive = {
			custom_stats = {
				ignore_statistic = true,
				damage_far_mul = 3,
				damage_near_mul = 3,
				bullet_class = "InstantExplosiveBulletBase",
				rays = 1,
				shot_spread = 0
			}
		}
	}
	
	--S/S Secondary
	self.wpn_fps_sho_coach.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -36
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -63
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_fps_upg_a_explosive = {
			custom_stats = {
				ignore_statistic = true,
				damage_far_mul = 3,
				damage_near_mul = 3,
				bullet_class = "InstantExplosiveBulletBase",
				rays = 1,
				shot_spread = 0
			}
		}
	}
	
	--1887
	self.wpn_fps_sho_boot.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -27
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -45
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--1897
	self.wpn_fps_shot_m1897.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -33
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_laser = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_utg = {
			a_obj = "a_fl",
			parent = "foregrip"
		}
	}
	
	--Ithica
	self.wpn_fps_shot_m37.override = {
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -33
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_fps_upg_fl_ass_smg_sho_peqbox = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_smg_sho_surefire = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_peq15 = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_laser = {
			a_obj = "a_fl",
			parent = "foregrip"
		},
		wpn_fps_upg_fl_ass_utg = {
			a_obj = "a_fl",
			parent = "foregrip"
		}
	}
	
	--Akimbo Judge
	self.wpn_fps_pis_x_judge.override = {
		wpn_fps_upg_ns_shot_shark = {
			parent = "slide"
		},
		wpn_fps_upg_ns_shot_thick = {
			parent = "slide"
		},
		wpn_fps_upg_shot_ns_king = {
			parent = "slide"
		},
		wpn_fps_upg_ns_sho_salvo_large = {
			parent = "slide"
		},
		wpn_fps_upg_ns_duck = {
			parent = "slide"
		},
		wpn_fps_upg_a_piercing = {
			custom_stats = {
				damage_near_mul = 2,
				armor_piercing_add = 1,
				damage_far_mul = 2,
				rays = 15,
				shot_spread = 1
			}
		},
		wpn_fps_upg_a_explosive = {
			custom_stats = {
				ignore_statistic = true,
				damage_far_mul = 3,
				damage_near_mul = 3,
				bullet_class = "InstantExplosiveBulletBase",
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--Judge
	self.wpn_fps_pis_judge.override = {
		wpn_fps_upg_ns_shot_shark = {
			parent = "slide"
		},
		wpn_fps_upg_ns_shot_thick = {
			parent = "slide"
		},
		wpn_fps_upg_shot_ns_king = {
			parent = "slide"
		},
		wpn_fps_upg_ns_sho_salvo_large = {
			parent = "slide"
		},
		wpn_fps_upg_ns_duck = {
			parent = "slide"
		},
		wpn_fps_upg_a_piercing = {
			custom_stats = {
				damage_near_mul = 2,
				armor_piercing_add = 1,
				damage_far_mul = 2,
				rays = 15,
				shot_spread = 1
			}
		},
		wpn_fps_upg_a_explosive = {
			custom_stats = {
				ignore_statistic = true,
				damage_far_mul = 3,
				damage_near_mul = 3,
				bullet_class = "InstantExplosiveBulletBase",
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_slug = {
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--SPAS
	self.wpn_fps_sho_spas12.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--M1014
	self.wpn_fps_sho_ben.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--Akimbo SIX12
	self.wpn_fps_sho_x_rota.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--SIX12
	self.wpn_fps_sho_rota.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--Striker
	self.wpn_fps_sho_striker.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -18
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_upg_o_marksmansight_rear_vanilla = {
			a_obj = "a_o_r"
		},
		wpn_upg_o_marksmansight_front = {
			a_obj = "a_o_f"
		}
	}
	
	--Saiga
	self.wpn_fps_shot_saiga.override = {
		wpn_fps_sho_basset_m_extended = {
			stats = {
				extra_ammo = 2,
				value = 1,
				concealment = -2
			}
		},
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -15
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		},
		wpn_upg_o_marksmansight_rear_vanilla = {
			a_obj = "a_or",
			forbids = table.list_add(self.parts.wpn_upg_o_marksmansight_rear_vanilla.forbids, {
				"wpn_fps_upg_o_ak_scopemount"
			})
		},
		wpn_upg_o_marksmansight_front = {
			a_obj = "a_of"
		}
	}
	
	--AA12
	self.wpn_fps_sho_aa12.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -15
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--Akimbo Spike
	self.wpn_fps_sho_x_basset.override = {
		wpn_fps_sho_basset_m_extended = {
			stats = {
				extra_ammo = 6,
				value = 1,
				concealment = -2
			}
		},
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -15
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
	
	--Spike
	self.wpn_fps_sho_basset.override = {
		wpn_fps_upg_a_slug = {
			
			stats = {
				value = 5,
				spread = 4,
				moving_spread = 4,
				recoil = -2,
				damage = -9
			},
			custom_stats = {
				armor_piercing_add = 1,
				can_shoot_through_shield = true,
				can_shoot_through_wall = true,
				damage_far_mul = 4,
				damage_near_mul = 4,
				can_shoot_through_enemy = true,
				rays = 1,
				shot_spread = 0
			}
		},
		wpn_fps_upg_a_dragons_breath = {
			stats = {
				value = 5,
				damage = -15
			},
			custom_stats = {
				armor_piercing_add = 1,
				ignore_statistic = true,
				muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
				can_shoot_through_shield = true,
				damage_far_mul = 0.5,
				damage_near_mul = 0.5,
				bullet_class = "FlameBulletBase",
				fire_dot_data = {
					dot_trigger_chance = "100",
					dot_damage = "10",
					dot_length = "3.1",
					dot_trigger_max_distance = "3000",
					dot_tick_period = "0.5"
				},
				rays = 18,
				shot_spread = 2
			}
		}
	}
end )