gamerule doWeatherCycle false
weather clear

scoreboard objectives add ps_weather dummy
scoreboard players set time_r ps_weather 0
scoreboard players set is_r ps_weather 0
scoreboard players set time_t ps_weather 0
scoreboard players set is_t ps_weather 0

# Calculate initial rain time
scoreboard players set RangeInputLow PseudoRNG 12000
scoreboard players set RangeInputHigh PseudoRNG 180000
function rng:get_next_range
scoreboard players operation time_r ps_weather = RangeRNG PseudoRNG

# Calculate initial thunder time
scoreboard players set RangeInputLow PseudoRNG 12000
scoreboard players set RangeInputHigh PseudoRNG 180000
function rng:get_next_range
scoreboard players operation time_t ps_weather = RangeRNG PseudoRNG

tellraw @a "Initialised Persistent Weather"