data:extend(
{  
	{
		type = "assembling-machine",
		name = "kr-electrolysis-plant",
		icon_size = 32,
		icon = kr_entities_icons_path .. "electrolysis-plant.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "kr-electrolysis-plant"},
		max_health = 500,
		corpse = "kr-big-random-pipes-remnant",
		dying_explosion = "big-explosion",
		resistances = 
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				pipe_picture = kr_pipe_path,
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-3, -1} }}
			},						
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				pipe_picture = kr_pipe_path,
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-3, 1} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				pipe_picture = kr_pipe_path,
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {3, -1} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				pipe_picture = kr_pipe_path,
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {3, 1} }}
			},
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			north =
			{
				filename = kr_entities_path .. "electrolysis-plant/electrolysis-plant-h.png",
				width = 190,
				height = 190,
				frame_count = 1,
				--line_length = 6,
				shift = {0, 0},
				--animation_speed = 0.5
				hr_version =
				{
					filename = kr_entities_path .. "electrolysis-plant/hr-electrolysis-plant-h.png",
					width = 380,
					height = 380,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, 0},
					--animation_speed = 0.5
				}
			},
			east =
			{
				filename = kr_entities_path .. "electrolysis-plant/electrolysis-plant-v.png",
				width = 190,
				height = 190,
				frame_count = 1,
				--line_length = 6,
				shift = {0, 0},
				--animation_speed = 0.5
				hr_version =
				{
					filename = kr_entities_path .. "electrolysis-plant/hr-electrolysis-plant-v.png",
					width = 380,
					height = 380,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, 0},
					--animation_speed = 0.5
				}
			},
			south =
			{
				filename = kr_entities_path .. "electrolysis-plant/electrolysis-plant-h.png",
				width = 190,
				height = 190,
				frame_count = 1,
				--line_length = 6,
				shift = {0, 0},
				--animation_speed = 0.5
				hr_version =
				{
					filename = kr_entities_path .. "electrolysis-plant/hr-electrolysis-plant-h.png",
					width = 380,
					height = 380,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, 0},
					--animation_speed = 0.5
				}
			},
			west =
			{
				filename = kr_entities_path .. "electrolysis-plant/electrolysis-plant-v.png",
				width = 190,
				height = 190,
				frame_count = 1,
				--line_length = 6,
				shift = {0, 0},
				--animation_speed = 0.5
				hr_version =
				{
					filename = kr_entities_path .. "electrolysis-plant/hr-electrolysis-plant-v.png",
					width = 380,
					height = 380,
					scale = 0.5,
					frame_count = 1,
					--line_length = 6,
					shift = {0, 0},
					--animation_speed = 0.5
				}
			}
		},
		working_visualisations =
		{
			{
				light =
				{
					intensity = 0.3,
					size = 10,
					shift = {0, 0},
					color = {r=0.1, g=0.5, b=1}
				}
			},
			{
				animation =
				{
					filename = kr_entities_path .. "electrolysis-plant/electrolysis-plant-anim.png",
					width = 190,
					height = 190,
					frame_count = 8,
					line_length = 2,
					shift = {0, 0},
					animation_speed = 0.3,
					hr_version =
					{
						filename = kr_entities_path .. "electrolysis-plant/hr-electrolysis-plant-anim.png",
						width = 380,
						height = 380,
						scale = 0.5,
						frame_count = 8,
						line_length = 2,
						shift = {0, 0},
						animation_speed = 0.3
					}
				}
			}
		},
		crafting_categories = { "electrolysis" },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				{
					filename = kr_buildings_sounds_path .. "electrolysis-plant.ogg",
					volume = 0.8
				}
			},
			idle_sound = 
			{ 
				filename = "__base__/sound/idle1.ogg", 
				volume = 1 
			},
			apparent_volume = 1.5
		},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_second_per_watt = 2 / 10000000
		},
		energy_usage = "0.5MW",
		ingredient_count = 6,
		module_specification = { module_slots = 2 },
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	}
})