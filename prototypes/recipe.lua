data:extend(
        {
            {
                type = "recipe",
                name = "water-digger",
                enabled = false,
                energy_required = 1,
                icon = "__base__/graphics/icons/inserter.png",
                ingredients = {
                    { type = "item", name = "fast-inserter", amount = 1 },
                    { type = "item", name = "processing-unit", amount = 5 },
                },
                results = {{
                    type = "item",
                    name = "water-digger",
                    amount = 1
                }},
                allow_quantity = false
            }
        }
)

