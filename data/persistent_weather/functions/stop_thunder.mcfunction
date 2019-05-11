scoreboard players set is_t ps_weather 0

# Set rain timer to start the thunder
scoreboard players set RangeInputLow PseudoRNG 12000
scoreboard players set RangeInputHigh PseudoRNG 180000
function rng:get_next_range
scoreboard players operation time_t ps_weather = RangeRNG PseudoRNG

function persistent_weather:change_weather