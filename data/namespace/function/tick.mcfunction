scoreboard players add @e[type=!player,distance=..1000] age 1

execute at @e[type=snowball,scores={age=3..},distance=..1000] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool replace air
execute as @e[type=snowball,distance=..1000] run data modify entity @s Motion[1] set value 0.1


clear @a[nbt={Inventory:[{id:"minecraft:purple_dye",count:2}]},tag=dead,distance=..100] purple_dye
execute at @a[tag=dead,distance=..100] run item replace entity @a container.8 with purple_dye[consumable={consume_seconds:1000000000},custom_name="§9 Game Rules"]
kill @e[type=item,nbt={Item:{id:"minecraft:purple_dye"}}]

 clear @a[nbt={Inventory:[{id:"minecraft:red_dye",count:2}]},tag=dead,distance=..100] red_dye
execute at @a[tag=dead,distance=..100] run item replace entity @a container.4 with red_dye[consumable={consume_seconds:1000000000},custom_name="§9 Reset Equipment"]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]

fill -386 64 2 -374 68 -5 air replace minecraft:white_wool
clear @a bucket
#TP // lobby and selection
 execute at @e[type=interaction,limit=1,tag=GameTP] as @a[distance=0..2] run function namespace:game_functions/game_start
 execute at @e[type=interaction,limit=1,tag=GameTP] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace white_wool
 
 execute at @e[type=interaction,limit=1,tag=ItemTP] as @a[distance=..1.001] run function namespace:lobby_functions/item_tp
 execute at @e[type=interaction,limit=1,tag=lobbyTP] as @a[distance=..1.001] run function namespace:lobby_functions/lobby_tp

 execute at @e[type=interaction,limit=1,tag=ItemTP] as @a[distance=..1.001] run function namespace:lobby_functions/amplify_tp
 execute at @e[type=interaction,limit=1,tag=lobbyTP] as @a[distance=..1.001] run function namespace:lobby_functions/lobby_tp_2
#particals
 execute at @e[tag=MainGameParticals,distance=..200] run particle end_rod ^ ^3.8 ^2.3 0 0 0 0 1 force @a
 execute as @e[tag=MainGameParticals,distance=..200] at @e[tag=MainGameParticals,distance=..200] run tp @s ~ ~ ~ ~3 ~
 
 execute at @e[tag=MainGameParticals2,distance=..200] run particle enchanted_hit ^ ^.4 ^4.3 0 0 0 0 5 force @a
 execute at @e[tag=MainGameParticals2,distance=..200] run particle enchanted_hit ^ ^.4 ^-4.3 0 0 0 0 5 force @a
 execute as @e[tag=MainGameParticals2,distance=..200] at @e[tag=MainGameParticals2,distance=..200] run tp @s ~ ~ ~ ~4 ~

#off hand activation
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run function namespace:if_statments/stone_sword_trade
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:golden_axe"}}}] run function namespace:if_statments/golden_axe_trade
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:bow"}}}] run function namespace:if_statments/bow_trade

#interaction condition, check loops/tick_conditional_interaction; for follow ups.
    execute at @a[tag=dead,gamemode=adventure] run function namespace:loops/tick_conditional_interactions

#Triggers //suicide button
    kill @a[scores={SuicideButton=1..}]
    scoreboard players set @a SuicideButton 0

#advancment tech
    scoreboard players add @a[advancements={namespace:use_item=true}] item_used 1
    advancement revoke @a[scores={item_used=4..}] only namespace:use_item
    scoreboard players set @a[scores={item_used=4..}] item_used 0
#death section
    tag @a[scores={died=1},gamemode=survival] add dead
    gamemode adventure @a[tag=dead,gamemode=survival]
    effect give @a[tag=dead] weakness 1 100 true

#item particals
    execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle flame ^ ^ ^25 0 12.5 0 0 5 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
    execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] anchored eyes run particle cloud ^ ^1 ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
    execute at @a[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}] anchored eyes run particle electric_spark ^ ^1 ^10 0 0 0 0.1 15 force @p[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}]
