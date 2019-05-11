scoreboard objectives remove ps_weather
gamerule doWeatherCycle true
weather clear

tellraw @s ["", {"text": "\nPersistent Weather:\n", "color": "yellow", "bold": true}, "Scoreboards removed, weather reset & datapack disabled.\n"]

datapack disable "file/PersistentWeather_1.0.zip"