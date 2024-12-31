data:extend({
    {
        type = "recipe",
        name = "water-digger",
        enabled = false,
        energy_required = 1,
        icon = "__base__/graphics/icons/inserter.png",
        icon_size = 64, -- Ensure this matches your icon's size
        ingredients = {
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "processing-unit", amount = 5 }
        },
        results = {
            {
                type = "item",
                name = "water-digger",
                amount = 1
            }
        },
        allow_quantity = false
    },
    {
        type = "recipe",
        name = "tungsten-digger",
        enabled = false,
        energy_required = 1,
        icon = "__base__/graphics/icons/inserter.png",
        icon_size = 64,
        ingredients = {
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "processing-unit", amount = 5 }
        },
        results = {
            {
                type = "item",
                name = "tungsten-digger",
                amount = 1
            }
        },
        allow_quantity = false
    },
    {
        type = "recipe",
        name = "holmium-digger",
        enabled = false,
        energy_required = 1,
        icon = "__base__/graphics/icons/inserter.png",
        icon_size = 64,
        ingredients = {
            { type = "item", name = "fast-inserter", amount = 1 },
            { type = "item", name = "processing-unit", amount = 5 }
        },
        results = {
            {
                type = "item",
                name = "holmium-digger",
                amount = 1
            }
        },
        allow_quantity = false
    }
})

