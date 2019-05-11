scoreboard players set is_r ps_weather 1

# Set rain timer to stop the rain
scoreboard players set RangeInputLow PseudoRNG 12000
scoreboard players set RangeInputHigh PseudoRNG 24000
function rng:get_next_range
scoreboard players operation time_r ps_weather = RangeRNG PseudoRNG

function persistent_weather:change_weather