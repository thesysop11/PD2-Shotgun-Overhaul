Hooks:PostHook( WeaponTweakData, "init", "shotguns", function(self)
	local SHOTGUN_NEAR = {
		optimal_distance = 0,
		optimal_range = 1000,
		near_falloff = 0,
		far_falloff = 500,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	
	local SHOTGUN_MID = {
		optimal_distance = 0,
		optimal_range = 1500,
		near_falloff = 0,
		far_falloff = 750,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	
	local SHOTGUN_FAR = {
		optimal_distance = 0,
		optimal_range = 2000,
		near_falloff = 0,
		far_falloff = 1000,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	
	local SHOTGUN_VERY_FAR = {
		optimal_distance = 0,
		optimal_range = 2500,
		near_falloff = 0,
		far_falloff = 1250,
		near_multiplier = 1,
		far_multiplier = 0.5
	}
	
	--Primary Weapons
	--SPAS12
	self.spas12.rays = 9
	self.spas12.damage_falloff = SHOTGUN_MID
	self.spas12.AMMO_PICKUP = { 1.5, 1.86 }
	self.spas12.NR_CLIPS_MAX = 8
	self.spas12.AMMO_MAX = self.spas12.CLIP_AMMO_MAX * self.spas12.NR_CLIPS_MAX
	self.spas12.stats.damage = 96
	self.spas12.stats_modifiers = {
		damage = 3
	}
	self.spas12.stats.spread = 20
	self.spas12.stats.recoil = 10
	self.spas12.fire_mode_data = {
		fire_rate = 0.25
	}
	self.spas12.single = {
		fire_rate = 0.25
	}
	self.spas12.kick = {
		standing = {
			2,
			2.5,
			0.2,
			0.8
		}
	}
	self.spas12.kick.crouching = self.spas12.kick.standing
	self.spas12.kick.steelsight = {
		1.6,
		2,
		0.16,
		0.64
	}
	
	--O/U
	self.b682.rays = 9
	self.b682.damage_falloff = SHOTGUN_VERY_FAR
	self.b682.AMMO_PICKUP = { 0.75, 1.12 }
	self.b682.NR_CLIPS_MAX = 11
	self.b682.AMMO_MAX = self.b682.CLIP_AMMO_MAX * self.b682.NR_CLIPS_MAX
	self.b682.stats.damage = 192
	self.b682.stats_modifiers = {
		damage = 3
	}
	self.b682.stats.spread = 25
	self.b682.stats.recoil = 8
	self.b682.timers = {
		reload_not_empty = 2.4,
		reload_empty = 2.4,
		unequip = 0.55,
		equip = 0.55
	}
	self.b682.fire_mode_data = {
		fire_rate = 0.2
	}
	self.b682.single = {
		fire_rate = 0.2
	}
	self.b682.kick = {
		standing = {
			2.5,
			3,
			-0.2,
			0.2
		}
	}
	self.b682.kick.crouching = self.b682.kick.standing
	self.b682.kick.steelsight =  {
		2,
		2.4,
		-0.16,
		0.16
	}
	
	--870
	self.r870.rays = 9
	self.r870.damage_falloff = SHOTGUN_FAR
	self.r870.AMMO_PICKUP = { 0.75, 1.12 }
	self.r870.CLIP_AMMO_MAX = 5
	self.r870.NR_CLIPS_MAX = 7
	self.r870.AMMO_MAX = self.r870.CLIP_AMMO_MAX * self.r870.NR_CLIPS_MAX
	self.r870.stats.damage = 129
	self.r870.stats_modifiers = {
		damage = 3
	}
	self.r870.stats.spread = 20
	self.r870.stats.recoil = 8
	self.r870.fire_mode_data = {
		fire_rate = 0.571
	}
	self.r870.single = {
		fire_rate = 0.571
	}
	self.r870.kick = {
		standing = {
			2.5,
			3,
			-0.2,
			0.2
		}
	}
	self.r870.kick.crouching = self.r870.kick.standing
	self.r870.kick.steelsight = {
		2,
		2.4,
		-0.16,
		0.16
	}
	self.r870.shake.fire_multiplier = 1.5
	
	--Saiga
	self.saiga.rays = 9
	self.saiga.damage_falloff = SHOTGUN_NEAR
	self.saiga.AMMO_PICKUP = { 1.5, 2.23 }
	self.saiga.CLIP_AMMO_MAX = 8
	self.saiga.NR_CLIPS_MAX = 7
	self.saiga.AMMO_MAX = self.saiga.CLIP_AMMO_MAX * self.saiga.NR_CLIPS_MAX
	self.saiga.stats.damage = 87
	self.saiga.stats_modifiers = {
		damage = 3
	}
	self.saiga.stats.spread = 14
	self.saiga.stats.recoil = 8
	self.saiga.fire_mode_data = {
		fire_rate = 0.1
	}
	self.saiga.auto = {
		fire_rate = 0.1
	}
	self.saiga.kick = {
		standing = {
			2,
			2.5,
			-0.6,
			0.6
		}
	}
	self.saiga.kick.crouching = self.saiga.kick.standing
	self.saiga.kick.steelsight = {
		1.6,
		2,
		-0.48,
		0.48
	}
	
	--S/S
	self.huntsman.rays = 9
	self.huntsman.damage_falloff = SHOTGUN_FAR
	self.huntsman.AMMO_PICKUP = { 0.75, 1.12 }
	self.huntsman.NR_CLIPS_MAX = 13
	self.huntsman.AMMO_MAX = self.huntsman.CLIP_AMMO_MAX * self.huntsman.NR_CLIPS_MAX
	self.huntsman.stats.damage = 192
	self.huntsman.stats_modifiers = {
		damage = 3
	}
	self.huntsman.stats.spread = 23
	self.huntsman.stats.recoil = 6
	self.huntsman.timers.reload_not_empty = 2.2
	self.huntsman.timers.reload_empty = self.huntsman.timers.reload_not_empty
	self.huntsman.fire_mode_data = {
		fire_rate = 0.05
	}
	self.huntsman.single = {
		fire_rate = 0.05
	}
	self.huntsman.kick = {
		standing = {
			2.7,
			3.2,
			-0.1,
			0.4
		}
	}
	self.huntsman.kick.crouching = self.huntsman.kick.standing
	self.huntsman.kick.steelsight = {
		2.16,
		2.56,
		-0.08,
		0.32
	}
	
	--M1014
	self.benelli.rays = 9
	self.benelli.damage_falloff = SHOTGUN_NEAR
	self.benelli.AMMO_PICKUP = { 1.5, 1.86 }
	self.benelli.CLIP_AMMO_MAX = 5
	self.benelli.NR_CLIPS_MAX = 10
	self.benelli.AMMO_MAX = self.benelli.CLIP_AMMO_MAX * self.benelli.NR_CLIPS_MAX
	self.benelli.stats.damage = 96
	self.benelli.stats_modifiers = {
		damage = 3
	}
	self.benelli.stats.spread = 14
	self.benelli.stats.recoil = 11
	self.benelli.fire_mode_data = {
		fire_rate = 0.2
	}
	self.benelli.single = {
		fire_rate = 0.2
	}
	self.benelli.kick = {
		standing = {
			1.8,
			2.2,
			-0.1,
			0.4
		}
	}
	self.benelli.kick.crouching = self.benelli.kick.standing
	self.benelli.kick.steelsight = {
		1.44,
		1.76,
		-0.08,
		0.32
	}
	
	--KSG
	self.ksg.rays = 9
	self.ksg.damage_falloff = SHOTGUN_MID
	self.ksg.AMMO_PICKUP = { 0.75, 1.12 }
	self.ksg.stats.damage = 111
	self.ksg.stats_modifiers = {
		damage = 3
	}
	self.ksg.stats.spread = 19
	self.ksg.stats.recoil = 9
	self.ksg.fire_mode_data = {
		fire_rate = 0.571
	}
	self.ksg.single = {
		fire_rate = 0.571
	}
	self.ksg.kick = {
		standing = {
			2.2,
			2.7,
			-0.1,
			0.3
		}
	}
	self.ksg.kick.crouching = self.ksg.kick.standing
	self.ksg.kick.steelsight = {
		1.76,
		2.16,
		-0.08,
		0.24
	}
	self.ksg.shake.fire_multiplier = 1.5
	
	--AA-12
	self.aa12.rays = 9
	self.aa12.damage_falloff = SHOTGUN_NEAR
	self.aa12.AMMO_PICKUP = { 1.5, 2.23 }
	self.aa12.NR_CLIPS_MAX = 8
	self.aa12.AMMO_MAX = self.aa12.CLIP_AMMO_MAX * self.aa12.NR_CLIPS_MAX
	self.aa12.stats.damage = 87
	self.aa12.stats_modifiers = {
		damage = 3
	}
	self.aa12.stats.spread = 17
	self.aa12.stats.recoil = 10
	self.aa12.kick = {
		standing = {
			1.6,
			2,
			-0.2,
			0.2
		}
	}
	self.aa12.kick.crouching = self.aa12.kick.standing
	self.aa12.kick.steelsight = {
		1.28,
		1.6,
		-0.16,
		0.16
	}
	self.aa12.shake.fire_multiplier = 1.5
	
	--1887
	self.boot.rays = 9
	self.boot.damage_falloff = SHOTGUN_FAR
	self.boot.AMMO_PICKUP = { 0.75, 1.12 }
	self.boot.CLIP_AMMO_MAX = 5
	self.boot.NR_CLIPS_MAX = 6
	self.boot.AMMO_MAX = self.boot.CLIP_AMMO_MAX * self.boot.NR_CLIPS_MAX
	self.boot.stats.damage = 156
	self.boot.stats_modifiers = {
		damage = 3
	}
	self.boot.stats.spread = 23
	self.boot.stats.recoil = 6
	self.boot.fire_mode_data = {
		fire_rate = 0.6667
	}
	self.boot.single = {
		fire_rate = 0.6667
	}
	self.boot.kick = {
		standing = {
			2.7,
			3.2,
			-0.2,
			0.2
		}
	}
	self.boot.kick.crouching = self.boot.kick.standing
	self.boot.kick.steelsight = {
		2.16,
		2.56,
		-0.16,
		0.16
	}
	self.boot.shake.fire_multiplier = 2
	
	--1897
	self.m1897.rays = 9
	self.m1897.damage_falloff = SHOTGUN_MID
	self.m1897.AMMO_PICKUP = { 0.75, 1.12 }
	self.m1897.CLIP_AMMO_MAX = 5
	self.m1897.NR_CLIPS_MAX = 7
	self.m1897.AMMO_MAX = self.m1897.CLIP_AMMO_MAX * self.m1897.NR_CLIPS_MAX
	self.m1897.stats.damage = 129
	self.m1897.stats_modifiers = {
		damage = 3
	}
	self.m1897.stats.spread = 20
	self.m1897.stats.recoil = 8
	self.m1897.fire_mode_data = {
		fire_rate = 0.5
	}
	self.m1897.single = {
		fire_rate = 0.5
	}
	self.m1897.kick = {
		standing = {
			2.5,
			3,
			0.2,
			0.6
		}
	}
	self.m1897.kick.crouching = self.m1897.kick.standing
	self.m1897.kick.steelsight = {
		2,
		2.4,
		0.16,
		0.48
	}
	self.m1897.shake.fire_multiplier = 2
	
	--Mossberg
	self.m590.rays = 9
	self.m590.damage_falloff = SHOTGUN_MID
	self.m590.AMMO_PICKUP = { 0.75, 1.12 }
	self.m590.CLIP_AMMO_MAX = 6
	self.m590.NR_CLIPS_MAX = 7
	self.m590.AMMO_MAX = self.m590.CLIP_AMMO_MAX * self.m590.NR_CLIPS_MAX
	self.m590.stats.damage = 111
	self.m590.stats_modifiers = {
		damage = 3
	}
	self.m590.stats.spread = 18
	self.m590.stats.recoil = 10
	self.m590.fire_mode_data = {
		fire_rate = 0.5
	}
	self.m590.single = {
		fire_rate = 0.5
	}
	self.m590.kick = {
		standing = {
			2,
			2.5,
			-0.3,
			0.3
		}
	}
	self.m590.kick.crouching = self.m590.kick.standing
	self.m590.kick.steelsight = {
		1.6,
		2,
		-0.24,
		0.24
	}
	self.m590.shake.fire_multiplier = 1.5
	
	--Akimbo Spike
	self.x_basset.rays = 9
	self.x_basset.damage_falloff = SHOTGUN_NEAR
	self.x_basset.CLIP_AMMO_MAX = 10
	self.x_basset.NR_CLIPS_MAX = 7
	self.x_basset.AMMO_MAX = self.x_basset.CLIP_AMMO_MAX * self.x_basset.NR_CLIPS_MAX
	self.x_basset.AMMO_PICKUP = { 1.5, 2.23 }
	self.x_basset.stats.damage = 87
	self.x_basset.stats_modifiers = {
		damage = 3
	}
	self.x_basset.stats.spread = 16
	self.x_basset.fire_mode_data = {
		fire_rate = 0.1
	}
	self.x_basset.single = {
		fire_rate = 0.1
	}
	self.x_basset.stats.recoil = 8
	self.x_basset.kick = {
		standing = {
			2,
			2.5,
			-0.7,
			0.7
		}
	}
	self.x_basset.kick.crouching = self.x_basset.kick.standing
	self.x_basset.kick.steelsight = {
		1.6,
		2,
		-0.56,
		0.56
	}
	self.x_basset.shake.fire_multiplier = 2
	
	--Akimbo SIX12
	self.x_rota.rays = 9
	self.x_rota.damage_falloff = SHOTGUN_MID
	self.x_rota.AMMO_PICKUP = { 1.5, 1.86 }
	self.x_rota.NR_CLIPS_MAX = 5
	self.x_rota.AMMO_MAX = self.x_rota.CLIP_AMMO_MAX * self.x_rota.NR_CLIPS_MAX
	self.x_rota.stats.damage = 96
	self.x_rota.stats_modifiers = {
		damage = 3
	}
	self.x_rota.stats.spread = 20
	self.x_rota.stats.recoil = 10
	self.x_rota.fire_mode_data = {
		fire_rate = 0.25
	}
	self.x_rota.single = {
		fire_rate = 0.25
	}
	self.x_rota.kick = {
		standing = {
			2.2,
			2.7,
			-0.4,
			0.4
		}
	}
	self.x_rota.kick.crouching = self.x_rota.kick.standing
	self.x_rota.kick.steelsight = {
		1.76,
		2.16,
		-0.32,
		0.32
	}
	self.x_rota.shake.fire_multiplier = 2
	
	--Akimbo Judge
	self.x_judge.rays = 9
	self.x_judge.damage_falloff = SHOTGUN_NEAR
	self.x_judge.AMMO_PICKUP = { 0.75, 1.12 }
	self.x_judge.NR_CLIPS_MAX = 5
	self.x_judge.AMMO_MAX = self.x_judge.CLIP_AMMO_MAX * self.x_judge.NR_CLIPS_MAX
	self.x_judge.stats.damage = 96
	self.x_judge.stats_modifiers = {
		damage = 3
	}
	self.x_judge.stats.spread = 17
	self.x_judge.stats.recoil = 11
	self.x_judge.fire_mode_data = {
		fire_rate = 0.1667
	}
	self.x_judge.single = {
		fire_rate = 0.1667
	}
	self.x_judge.kick = {
		standing = {
			2.7,
			3.2,
			-0.5,
			0.5
		}
	}
	self.x_judge.kick.crouching = self.x_judge.kick.standing
	self.x_judge.kick.steelsight = {
		2.16,
		2.56,
		-0.4,
		0.4
	}
	self.x_judge.shake.fire_multiplier = 2
	
	--Secondaries
	--Judge
	self.judge.rays = 9
	self.judge.damage_falloff = SHOTGUN_NEAR
	self.judge.AMMO_PICKUP = { 0.75, 1.12 }
	self.judge.NR_CLIPS_MAX = 8
	self.judge.AMMO_MAX = self.judge.CLIP_AMMO_MAX * self.judge.NR_CLIPS_MAX
	self.judge.stats.damage = 96
	self.judge.stats_modifiers = {
		damage = 3
	}
	self.judge.stats.spread = 17
	self.judge.stats.recoil = 9
	self.judge.fire_mode_data = {
		fire_rate = 0.1667
	}
	self.judge.single = {
		fire_rate = 0.1667
	}
	self.judge.kick = {
		standing = {
			2.6,
			3,
			-0.4,
			0.4
		}
	}
	self.judge.kick.crouching = self.judge.kick.standing
	self.judge.kick.steelsight = {
		2.08,
		2.4,
		-0.32,
		0.32
	}
	
	--Shorty
	self.serbu.rays = 9
	self.serbu.damage_falloff = SHOTGUN_FAR
	self.serbu.AMMO_PICKUP = { 0.75, 1.12 }
	self.serbu.CLIP_AMMO_MAX = 2
	self.serbu.NR_CLIPS_MAX = 13
	self.serbu.AMMO_MAX = self.serbu.CLIP_AMMO_MAX * self.serbu.NR_CLIPS_MAX
	self.serbu.stats.damage = 156
	self.serbu.stats_modifiers = {
		damage = 3
	}
	self.serbu.stats.spread = 18
	self.serbu.stats.recoil = 7
	self.serbu.fire_mode_data = {
		fire_rate = 0.5
	}
	self.serbu.single = {
		fire_rate = 0.5
	}
	self.serbu.kick = {
		standing = {
			2.7,
			3.2,
			-0.3,
			0.3
		}
	}
	self.serbu.kick.crouching = self.serbu.kick.standing
	self.serbu.kick.steelsight = {
		2.16,
		2.56,
		-0.24,
		0.24
	}
	self.serbu.shake.fire_multiplier = 2
	
	--Spike
	self.basset.rays = 9
	self.basset.damage_falloff = SHOTGUN_NEAR
	self.basset.AMMO_PICKUP = { 1.5, 2.23 }
	self.basset.stats.damage = 87
	self.basset.stats_modifiers = {
		damage = 3
	}
	self.basset.stats.spread = 16
	self.basset.stats.recoil = 10
	self.basset.CLIP_AMMO_MAX = 5
	self.basset.NR_CLIPS_MAX = 10
	self.basset.AMMO_MAX = self.basset.CLIP_AMMO_MAX * self.basset.NR_CLIPS_MAX
	self.basset.fire_mode_data = {
		fire_rate = 0.1
	}
	self.basset.single = {
		fire_rate = 0.1
	}
	self.basset.stats.recoil = 6
	self.basset.kick = {
		standing = {
			2,
			2.5,
			0.1,
			0.6
		}
	}
	self.basset.kick.crouching = self.basset.kick.standing
	self.basset.kick.steelsight = {
		1.6,
		2,
		0.08,
		0.48
	}
	self.basset.shake.fire_multiplier = 2
	
	--Street Sweeper
	self.striker.rays = 9
	self.striker.damage_falloff = SHOTGUN_NEAR
	self.striker.AMMO_PICKUP = { 1.5, 1.86 }
	self.striker.NR_CLIPS_MAX = 4
	self.striker.AMMO_MAX = self.striker.CLIP_AMMO_MAX * self.striker.NR_CLIPS_MAX
	self.striker.stats.damage = 96
	self.striker.stats_modifiers = {
		damage = 3
	}
	self.striker.stats.spread = 15
	self.striker.stats.recoil = 8
	self.striker.fire_mode_data = {
		fire_rate = 0.25
	}
	self.striker.single = {
		fire_rate = 0.25
	}
	self.striker.kick = {
		standing = {
			1.8,
			2.2,
			-0.1,
			0.5
		}
	}
	self.striker.kick.crouching = self.striker.kick.standing
	self.striker.kick.steelsight = {
		1.44,
		1.76,
		-0.08,
		0.4
	}
	
	--SIX12
	self.rota.rays = 9
	self.rota.damage_falloff = SHOTGUN_MID
	self.rota.AMMO_PICKUP = { 1.5, 1.86 }
	self.rota.NR_CLIPS_MAX = 7
	self.rota.AMMO_MAX = self.rota.CLIP_AMMO_MAX * self.rota.NR_CLIPS_MAX
	self.rota.stats.damage = 96
	self.rota.stats_modifiers = {
		damage = 3
	}
	self.rota.stats.spread = 20
	self.rota.stats.recoil = 10
	self.rota.fire_mode_data = {
		fire_rate = 0.25
	}
	self.rota.single = {
		fire_rate = 0.25
	}
	self.rota.kick = {
		standing = {
			2,
			2.5,
			-0.2,
			0.2
		}
	}
	self.rota.kick.crouching = self.rota.kick.standing
	self.rota.kick.steelsight = {
		1.6,
		2,
		-0.16,
		0.16
	}
	
	--Ithaca
	self.m37.rays = 9
	self.m37.damage_falloff = SHOTGUN_FAR
	self.m37.AMMO_PICKUP = { 0.75, 1.12 }
	self.m37.CLIP_AMMO_MAX = 4
	self.m37.NR_CLIPS_MAX = 8
	self.m37.AMMO_MAX = self.m37.CLIP_AMMO_MAX * self.m37.NR_CLIPS_MAX
	self.m37.stats.damage = 129
	self.m37.stats_modifiers = {
		damage = 3
	}
	self.m37.fire_mode_data = {
		fire_rate = 0.571
	}
	self.m37.single = {
		fire_rate = 0.571
	}
	self.m37.stats.spread = 23
	self.m37.stats.recoil = 6
	self.m37.kick = {
		standing = {
			2.5,
			3,
			0.2,
			0.8
		}
	}
	self.m37.kick.crouching = self.m37.kick.standing
	self.m37.kick.steelsight = {
		2,
		2.4,
		0.16,
		0.64
	}
	self.m37.shake.fire_multiplier = 2
	
	--S/S
	self.coach.rays = 9
	self.coach.damage_falloff = SHOTGUN_FAR
	self.coach.AMMO_PICKUP = { 0.75, 1.12 }
	self.coach.NR_CLIPS_MAX = 11
	self.coach.AMMO_MAX = self.coach.CLIP_AMMO_MAX * self.coach.NR_CLIPS_MAX
	self.coach.stats.damage = 192
	self.coach.stats_modifiers = {
		damage = 3
	}
	self.coach.stats.spread = 25
	self.coach.stats.recoil = 6
	self.coach.fire_mode_data = {
		fire_rate = 0.05
	}
	self.coach.single = {
		fire_rate = 0.05
	}
	self.coach.kick = {
		standing = {
			2.7,
			3.2,
			-0.2,
			0.2
		}
	}
	self.coach.kick.crouching = self.coach.kick.standing
	self.coach.kick.steelsight = {
		2.16,
		2.56,
		-0.16,
		0.16
	}
	self.coach.shake.fire_multiplier = 2
end )