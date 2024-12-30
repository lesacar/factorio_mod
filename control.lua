local water_diggers = {}

---- Initialization ----
local function init_existing_diggers()
    -- Clear existing table
    water_diggers = {}
    -- Find all existing water diggers
    for _, surface in pairs(game.surfaces) do
        for _, inserter in pairs(surface.find_entities_filtered({name = "water-digger"})) do
            water_diggers[inserter.unit_number] = inserter
            -- game.print("Found existing water digger")
        end
    end
end

local first_exec = 1

---- Runtime Events ----
local function OnWaterDiggerTick(event)
    if first_exec == 1 then
        init_existing_diggers()
        first_exec = 0
        game.print("Calcite miners found:" .. table_size(water_diggers))
        game.print(serpent.block(water_diggers))

    end
    for unit_number, inserter in pairs(water_diggers) do
        if inserter.valid then
            local pickup_position = inserter.pickup_position -- Where it grabs
            local water_tile = game.surfaces["nauvis"].get_tile(pickup_position)

            -- Check if it's grabbing from water
            if water_tile and water_tile.prototype.name == "water" then
                -- If its hand is empty, spawn calcite
                if inserter.held_stack.valid_for_read == false then
                    inserter.held_stack.set_stack({name = "calcite", count = 1})
                end
            end
        else
            water_diggers[unit_number] = nil
        end
    end
end

-- Handle entity built events
local function OnBuilt(event)
    local entity = event.created_entity or event.entity
    if entity and entity.name == "water-digger" then
        water_diggers[entity.unit_number] = entity
    end
end

-- Handle entity removed events
local function OnRemoved(event)
    local entity = event.entity
    if entity and entity.name == "water-digger" then
        water_diggers[entity.unit_number] = nil
    end
end

local function init_events()
    script.on_event(defines.events.on_tick, OnWaterDiggerTick)

    -- Register build events
    local build_events = {
        defines.events.on_built_entity,
        defines.events.on_robot_built_entity,
        defines.events.script_raised_built,
        defines.events.script_raised_revive
    }
    for _, event in pairs(build_events) do
        script.on_event(event, OnBuilt)
    end

    -- Register removal events
    local remove_events = {
        defines.events.on_entity_died,
        defines.events.on_robot_mined_entity,
        defines.events.on_player_mined_entity,
        defines.events.script_raised_destroy
    }
    for _, event in pairs(remove_events) do
        script.on_event(event, OnRemoved)
    end
end

script.on_init(function()
    init_existing_diggers()
    init_events()
end)

script.on_load(function()
    init_events()
end)

script.on_configuration_changed(function(data)
    init_existing_diggers()
end)
