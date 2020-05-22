local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")

function laser_artillery_turret_sheet(inputs)
return
{
	layers =
	{
		{
			filename = kr_entities_path .. "turrets/laser-artillery-turret-sheet.png",
			width = 220,
			height = 190,
			line_length = inputs.frame_count or 8,
			frame_count = inputs.frame_count or 1,
			axially_symmetrical = false,
			direction_count = 64,
			shift = {0, -0.7},
			hr_version =
			{
				filename = kr_entities_path .. "turrets/hr-laser-artillery-turret-sheet.png",
				width = 440,
				height = 380,
				line_length = inputs.frame_count or 8,
				frame_count = inputs.frame_count or 1,
				axially_symmetrical = false,
				direction_count = 64,
				shift = {0, -0.7},
				scale = 0.5
			}
		},		
		{
			flags = { "mask" },
			filename = kr_entities_path .. "turrets/laser-artillery-turret-sheet-mask.png",
			width = 220,
			height = 190,
			line_length = inputs.frame_count or 8,
			frame_count = inputs.frame_count or 1,
			axially_symmetrical = false,
			direction_count = 64,
			shift = {0, -0.7},
			apply_runtime_tint = true,
			hr_version =
			{
				flags = { "mask" },
				filename = kr_entities_path .. "turrets/hr-laser-artillery-turret-sheet-mask.png",
				width = 440,
				height = 380,
				line_length = inputs.frame_count or 8,
				frame_count = inputs.frame_count or 1,
				axially_symmetrical = false,
				direction_count = 64,
				shift = {0, -0.7},
				apply_runtime_tint = true,
				scale = 0.5
			}
		},		
		{
			filename = kr_entities_path .. "turrets/laser-artillery-turret-sheet-shadow.png",
			width = 230,
			height = 190,
			line_length = inputs.frame_count or 8,
			frame_count = inputs.frame_count or 1,
			axially_symmetrical = false,
			direction_count = 64,
			shift = {0.9, 0.05},
			draw_as_shadow = true,
			hr_version =
			{
				filename = kr_entities_path .. "turrets/hr-laser-artillery-turret-sheet-shadow.png",
				width = 460,
				height = 380,
				line_length = inputs.frame_count or 8,
				frame_count = inputs.frame_count or 1,
				axially_symmetrical = false,
				direction_count = 64,
				shift = {0.9, 0.05},
				draw_as_shadow = true,
				scale = 0.5
			}
		}	
	}
}
end


data:extend(
{  
	{
		type = "electric-turret",
		name = "kr-laser-artillery-turret",
		icon = kr_entities_icons_path .. "laser-artillery-turret.png",
		icon_size = 64,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "kr-laser-artillery-turret"},
		max_health = 1000,
		corpse = "big-remnants",
		damaged_trigger_effect = hit_effects.entity(),
		resistances = 
		{
			{type = "physical", percent = 50},
			{type = "fire", percent = 75},
			{type = "impact", percent = 75}
		},
		collision_box = {{-1.75, -1.75 }, {1.75, 1.75}},
		selection_box = {{-2, -2 }, {2, 2}},
		
		base_picture =
		{
			layers =
			{
				{
					filename = kr_entities_path .. "turrets/kr-turret-base.png",
					priority = "high",
					width = 220,
					height = 190,
					axially_symmetrical = false,
					direction_count = 1,
					frame_count = 1,
					shift = {0, -0.8},
					hr_version =
					{
						filename = kr_entities_path .. "turrets/hr-kr-turret-base.png",
						priority = "high",
						width = 440,
						height = 380,
						axially_symmetrical = false,
						direction_count = 1,
						frame_count = 1,
						shift = {0, -0.8},
						scale = 0.5
					}
				},	
				{
					filename = kr_entities_path .. "turrets/kr-turret-base-mask.png",
					flags = { "mask", "low-object" },
					line_length = 1,
					width = 220,
					height = 190,
					axially_symmetrical = false,
					direction_count = 1,
					frame_count = 1,
					shift = {0, -0.8},
					apply_runtime_tint = true,
					hr_version =
					{
						filename = kr_entities_path .. "turrets/hr-kr-turret-base-mask.png",
						flags = { "mask", "low-object" },
						line_length = 1,
						width = 440,
						height = 380,
						axially_symmetrical = false,
						direction_count = 1,
						frame_count = 1,
						shift = {0, -0.8},
						apply_runtime_tint = true,
						scale = 0.5
					}
				},
				{
					filename = kr_entities_path .. "turrets/kr-turret-base-shadow.png",
					line_length = 1,
					width = 220,
					height = 190,
					axially_symmetrical = false,
					draw_as_shadow = true,
					direction_count = 1,
					frame_count = 1,
					shift = {0, -0.8},
					hr_version =
					{
						filename = kr_entities_path .. "turrets/hr-kr-turret-base-shadow.png",
						line_length = 1,
						width = 440,
						height = 380,
						axially_symmetrical = false,
						draw_as_shadow = true,
						direction_count = 1,
						frame_count = 1,
						shift = {0, -0.8},
						scale = 0.5
					}
				}
			}
		},
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_glow_animation = laser_turret_shooting_glow(),
		glow_light_intensity = 0.5, -- defaults to 0

		rotation_speed = 0.002,
		preparing_speed = 0.08,
		folding_speed = 0.02,
		dying_explosion = "big-explosion",
		--attacking_speed = 0.020, -- its strongly reduce rate of fire
		folded_animation = laser_artillery_turret_sheet{direction_count = 8, line_length = 1},
		
		energy_source =
		{
			type = "electric",
			buffer_capacity = "100MJ",
			input_flow_limit = "125MW",
			drain = "25MW",
			usage_priority = "primary-input"
		},
		
		attack_parameters =
		{
			type = "projectile",
			cooldown = 60,
			projectile_creation_distance = 3.9,
			projectile_center = {0, 0.2},
			range = 100, -- artillery is 7 * 32 -- problem is that turret don't shoot on target that have range more than 100, so 100 is max. F*** game limitations. Again
			min_range = 20, -- artillery is 32
			ammo_type =
			{
				category = "laser-turret",
				target_type = "entity",
				energy_consumption = "50MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "projectile",
						projectile = "laser-projectile",
						starting_speed = 1,
						direction_deviation = 0.1,
						range_deviation = 0.1,
						max_range = 7 * 32, -- same of artillery
						source_effects =
						{
							type = "create-explosion",
							entity_name = "kr-laser-explosion-gunshot"
						}
					}
				}
			},
			rotate_penalty = 10,
			--warmup = 27, -- its strongly reduce rate of fire
			sound =
			{
				{
					filename = kr_weapons_sounds_path .. "laser-artillery-turret-shot.ogg",
					volume = 1
				}
			}
		},
		
		starting_attack_sound =
		{
			{
				filename = kr_weapons_sounds_path .. "laser-artillery-turret-starting_attack_sound.ogg",
				volume = 1
			}
		},
		
		rotating_sound =
		{
			sound = 
			{
				filename = kr_buildings_sounds_path .. "turret-rotating.ogg",
				volume = 1
			}
		},
		
		shoot_in_prepare_state = false,
		turret_base_has_direction = true,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		call_for_help_radius = 110
	}
})