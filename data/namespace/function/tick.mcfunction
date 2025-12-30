execute at @e[type=snowball] run fill ^ ^-1.5 ^-1 ^ ^-1.5 ^-1 white_wool replace air
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle flame ^ ^ ^25 0 12.5 0 0 5 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] anchored eyes run particle cloud ^ ^1 ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
clear @a bucket
fill -386 64 2 -374 68 -5 air replace minecraft:white_wool

execute at @e[type=interaction,limit=1,tag=GameTP] as @a[distance=0..2] run function namespace:game_functions/game_start
execute at @e[type=interaction,limit=1,tag=GameTP] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace white_wool

execute at @e[type=interaction,limit=1,tag=ItemTP] as @a[distance=..1.001] run function namespace:game_functions/selection_tp
execute at @e[type=interaction,limit=1,tag=lobbyTP] as @a[distance=..1.001] run function namespace:game_functions/lobby_tp

execute at @e[tag=MainGameParticals,distance=..200] run particle end_rod ^ ^3.8 ^2.3 0 0 0 0 1 force @a
execute as @e[tag=MainGameParticals,distance=..200] at @e[tag=MainGameParticals,distance=..200] run tp @s ~ ~ ~ ~3 ~

execute at @e[tag=MainGameParticals2,distance=..200] run particle enchanted_hit ^ ^.4 ^4.3 0 0 0 0 5 force @a
execute at @e[tag=MainGameParticals2,distance=..200] run particle enchanted_hit ^ ^.4 ^-4.3 0 0 0 0 5 force @a
execute as @e[tag=MainGameParticals2,distance=..200] at @e[tag=MainGameParticals2,distance=..200] run tp @s ~ ~ ~ ~4 ~



#off hand activation
    execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run scoreboard players add @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] dummycount 1
    execute unless entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run scoreboard players remove @a dummycount 1
    execute as @a[scores={dummycount=30}] run function namespace:if_statments/stone_sword_trade
    execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}},scores={dummycount=30}] run item replace entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] weapon.offhand with air
    

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

#interactions
 execute as @e[tag=Fire_Charge_I,distance=..200,type=interaction] on target run say Fire Ball
 data modify entity @e[tag=Fire_Charge_I,limit=1,distance=..200,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=TNT_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=TNT_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Lightning_Rod_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Lightning_Rod_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=Fortress_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Fortress_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Golden_Apple_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Golden_Apple_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=Stone_Sword_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Stone_Sword_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Golden_Sword_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Golden_Sword_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Bow_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Bow_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=Snowball_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Snowball_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Ender_Pearl_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Ender_Pearl_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Shears_I,type=interaction] on target run say 2
 data modify entity @e[distance=..200,tag=Shears_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

#Triggers //suicide button
    kill @a[scores={SuicideButton=1..}]
    scoreboard players set @a SuicideButton 0



