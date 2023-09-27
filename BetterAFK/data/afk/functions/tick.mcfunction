### Check for movement ###
execute as @a[scores={walking_under=0,walking_on_water=0,sneaking=0,aviating=0,sprinting=0,walking=0,climbing=0,boating=0,carting=0,swimming=0,flying=0,horsing=0,pigging=0}] run tag @s add AFK
execute as @a unless entity @s[scores={walking_under=0,walking_on_water=0,sneaking=0,aviating=0,sprinting=0,walking=0,climbing=0,boating=0,carting=0,swimming=0,flying=0,horsing=0,pigging=0}] run tag @s remove AFK

### AFK Timer ###
scoreboard players add @a[tag=AFK] AFK 1
scoreboard players set @a[tag=!AFK] AFK 0

### Check for AFK tag / run functions ###
execute as @a[tag=AFK] if score $AFK AFK = @s AFK run function afk:afk

### Reset AFK Conditions ###
scoreboard players set @a walking_under 0
scoreboard players set @a walking_on_water 0
scoreboard players set @a sneaking 0
scoreboard players set @a aviating 0
scoreboard players set @a sprinting 0
scoreboard players set @a walking 0
scoreboard players set @a climbing 0
scoreboard players set @a boating 0
scoreboard players set @a carting 0
scoreboard players set @a swimming 0
scoreboard players set @a flying 0
scoreboard players set @a horsing 0
scoreboard players set @a pigging 0

### Remove teams ###
execute as @a[scores={AFK=0}] run team leave @p

### Kick if AFK too long - WIP ###