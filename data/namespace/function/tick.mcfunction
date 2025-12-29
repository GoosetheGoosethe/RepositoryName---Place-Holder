execute at @e[type=snowball] run fill ^ ^-1.5 ^-1 ^ ^-1.5 ^-1 white_wool replace air
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle flame ^ ^ ^25 0 12.5 0 0 5 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] anchored eyes run particle cloud ^ ^1 ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
clear @a bucket
fill -386 64 2 -374 68 -5 air replace minecraft:white_wool

execute at @e[type=interaction,limit=1,tag=GameTP] as @a[distance=0..2] run function namespace:game_functions/game_start
execute at @e[type=interaction,limit=1,tag=GameTP] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace white_wool
execute at @e[type=interaction,limit=1,tag=ItemTP] run tp @a[distance=..1] ~ ~ ~-14
execute at @e[type=interaction,limit=1,tag=lobbyTP] run tp @a[distance=..1] ~ ~ ~14

execute at @e[tag=MainGameParticals,distance=..200] run particle end_rod ^ ^3.8 ^2.3 0 0 0 0 3 force @a
execute as @e[tag=MainGameParticals,distance=..200] at @e[tag=MainGameParticals,distance=..200] run tp @s ~ ~ ~ ~4 ~

execute at @e[tag=MainGameParticals2,distance=..200] run particle end_rod ^ ^.4 ^4.3 0 0 0 0 3 force @a
execute as @e[tag=MainGameParticals2,distance=..200] at @e[tag=MainGameParticals2,distance=..200] run tp @s ~ ~ ~ ~1 ~

#off hand activation
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run function namespace:if_statments/stone_sword_trade
    execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run item replace entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] weapon.offhand with air
#roll backs *(causes lots of lag, needs to be replaced) 
    execute if entity @a[scores={item_fireball=2..}] run scoreboard players set @a item_fireball 0
    execute if entity @a[scores={item_snowball=2..}] run scoreboard players set @a item_snowball 0
    execute if entity @a[scores={item_enderpearl=2..}] run scoreboard players set @a item_enderpearl 0
    execute if entity @a[scores={item_fishing_rod=2..}] run scoreboard players set @a item_fishing_rod 0
    execute if entity @a[scores={item_tnt=2..}] run scoreboard players set @a item_tnt 0
    execute if entity @a[scores={item_water_bucket=2..}] run scoreboard players set @a item_water_bucket 0
    execute if entity @a[scores={item_wool=2..}] run scoreboard players set @a item_wool 0
    execute if entity @a[scores={item_golden=2..}] run scoreboard players set @a item_golden 0
    execute if entity @a[scores={item_fireball=2..}] run scoreboard players set @a item_fireball 0
#Triggers //suicide button
    kill @a[scores={SuicideButton=1..}]
    scoreboard players set @a SuicideButton 0



