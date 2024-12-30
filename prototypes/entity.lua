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

