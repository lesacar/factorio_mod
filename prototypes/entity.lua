-- water digger (calcite)
local water_digger = table.deepcopy(data.raw["inserter"]["inserter"])
water_digger.name = "water-digger"
water_digger.icon = "__base__/graphics/icons/inserter.png"
water_digger.icon_size = 64
water_digger.minable = {mining_time = 0.1, result = "water-digger"}
water_digger.energy_per_movement = "10kJ"
water_digger.energy_per_rotation = "10kJ"
water_digger.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  drain = "0.5kW"
}
water_digger.extension_speed = 0.03
water_digger.rotation_speed = 0.02
water_digger.pickup_position = {0, -1}
water_digger.insert_position = {0, 1.2}
water_digger.collision_box = {{-0.15, -0.15}, {0.15, 0.15}}
water_digger.selection_box = {{-0.4, -0.4}, {0.4, 0.4}}

data:extend({water_digger})


-- tungsten digger
local tungsten_digger = table.deepcopy(data.raw["inserter"]["inserter"])
tungsten_digger.name = "tungsten-digger"
tungsten_digger.icon = "__base__/graphics/icons/inserter.png"
tungsten_digger.icon_size = 64
tungsten_digger.minable = {mining_time = 0.1, result = "tungsten-digger"}
tungsten_digger.energy_per_movement = "10kJ"
tungsten_digger.energy_per_rotation = "10kJ"
tungsten_digger.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  drain = "0.5kW"
}
tungsten_digger.extension_speed = 0.03
tungsten_digger.rotation_speed = 0.02
tungsten_digger.pickup_position = {0, -1}
tungsten_digger.insert_position = {0, 1.2}
tungsten_digger.collision_box = {{-0.15, -0.15}, {0.15, 0.15}}
tungsten_digger.selection_box = {{-0.4, -0.4}, {0.4, 0.4}}

data:extend({tungsten_digger})

-- holmium digger
local holmium_digger = table.deepcopy(data.raw["inserter"]["inserter"])
holmium_digger.name = "holmium-digger"
holmium_digger.icon = "__base__/graphics/icons/inserter.png"
holmium_digger.icon_size = 64
holmium_digger.minable = {mining_time = 0.1, result = "holmium-digger"}
holmium_digger.energy_per_movement = "10kJ"
holmium_digger.energy_per_rotation = "10kJ"
holmium_digger.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  drain = "0.5kW"
}
holmium_digger.extension_speed = 0.03
holmium_digger.rotation_speed = 0.02
holmium_digger.pickup_position = {0, -1}
holmium_digger.insert_position = {0, 1.2}
holmium_digger.collision_box = {{-0.15, -0.15}, {0.15, 0.15}}
holmium_digger.selection_box = {{-0.4, -0.4}, {0.4, 0.4}}

data:extend({holmium_digger})

