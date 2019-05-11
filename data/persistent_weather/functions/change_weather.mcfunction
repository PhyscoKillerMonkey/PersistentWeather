execute if score is_r ps_weather matches 0 run weather clear
execute if score is_r ps_weather matches 1 if score is_t ps_weather matches 0 run weather rain
execute if score is_r ps_weather matches 1 if score is_t ps_weather matches 1 run weather thunder