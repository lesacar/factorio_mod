data:extend({
    {
        type = "technology",
        name = "water-digging",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        prerequisites = {"automation"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "water-digger"
            }
        },
        unit = {
            count = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 15
        }
    },
    {
        type = "technology",
        name = "tungsten-digging",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        prerequisites = {"automation"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "tungsten-digger"
            }
        },
        unit = {
            count = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 15
        }
    },
    {
        type = "technology",
        name = "holmium-digging",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        prerequisites = {"automation"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "holmium-digger"
            }
        },
        unit = {
            count = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 15
        }
    },
})
