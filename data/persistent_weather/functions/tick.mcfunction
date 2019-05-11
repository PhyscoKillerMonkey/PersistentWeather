scoreboard players remove time_r ps_weather 1
scoreboard players remove time_t ps_weather 1

execute if score time_r ps_weather matches ..0 if score is_r ps_weather matches 0 run function persistent_weather:start_rain
execute if score time_r ps_weather matches ..0 if score is_r ps_weather matches 1 run function persistent_weather:stop_rain

execute if score time_t ps_weather matches ..0 if score is_t ps_weather matches 0 run function persistent_weather:start_thunder
execute if score time_t ps_weather matches ..0 if score is_t ps_weather matches 1 run function persistent_weather:stop_thunder