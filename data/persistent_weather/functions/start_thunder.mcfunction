scoreboard players set is_t ps_weather 1

# Set rain timer to stop the thunder
scoreboard players set RangeInputLow PseudoRNG 3600
scoreboard players set RangeInputHigh PseudoRNG 15600
function rng:get_next_range
scoreboard players operation time_t ps_weather = RangeRNG PseudoRNG

function persistent_weather:change_weather