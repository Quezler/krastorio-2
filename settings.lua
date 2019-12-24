-- -- KRASTORIO SETTINGS
-- Setting order "[as]NUMBER"
data:extend(
{
	-- A - Config
	{
		type = "bool-setting",
		name = "kr-loaders",
		setting_type = "startup",
		default_value = true,
		order = "a1"
	},
	-- S - Science
	{
        type = "string-setting",
        name = "kr-automation-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio 2",
        allowed_values = {"Factorio", "Krastorio 2"},
		order = "s1"
    },
	{
        type = "string-setting",
        name = "kr-logistic-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio 2",
        allowed_values = {"Factorio", "Krastorio 2"},
		order = "s2"
    },
	{
        type = "string-setting",
        name = "kr-military-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio 2",
        allowed_values = {"Factorio", "Krastorio 2"},
		order = "s3"
    },
	{
        type = "string-setting",
        name = "kr-chemical-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio 2",
        allowed_values = {"Factorio", "Krastorio 2"},
		order = "s4"
    },
	{
        type = "string-setting",
        name = "kr-production-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio 2",
        allowed_values = {"Factorio", "Krastorio 2"},
		order = "s5"
    },
	{
        type = "string-setting",
        name = "kr-utility-science-pack-recipe",
        setting_type = "startup",
        default_value = "Krastorio 2",
        allowed_values = {"Factorio", "Krastorio 2"},
		order = "s6"
    }
})

-- -- VANILLA CHANGES SETTINGS
-- Setting order "bNUMBER"
data:extend(
{
	-- B - Config
	{
		type = "bool-setting",
		name = "kr-rebalance-vehicles&fuels",
		setting_type = "startup",
		default_value = true,
		order = "b1"
	}
})
