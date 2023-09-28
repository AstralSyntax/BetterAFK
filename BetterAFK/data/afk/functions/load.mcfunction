### Load message ###
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"BetterAFK","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Loaded successfully","color":"green"},{"text":"!","color":"dark_gray"}]

### AFK Timer ###
scoreboard objectives add AFK dummy

### Set fake player ###
scoreboard players set $AFK AFK 0

### AFK Detection ###
scoreboard objectives add sneaking minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add aviating minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add climbing minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add boating minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add walking_under minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add walking_on_water minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add carting minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add swimming minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add flying minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add horsing minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add pigging minecraft.custom:minecraft.pig_one_cm

team add AFK
team modify AFK prefix {"text":"AFK ","color":"red"}
