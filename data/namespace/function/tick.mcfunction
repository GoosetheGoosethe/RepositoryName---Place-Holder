execute at @e[type=snowball] run fill ^ ^-1.5 ^-1 ^ ^-1.5 ^-1 white_wool replace air
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle flame ^ ^ ^25 0 12.5 0 0 5 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] anchored eyes run particle cloud ^ ^1 ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
clear @a bucket
fill -386 64 2 -374 68 -5 air replace minecraft:white_wool
#TP // lobby and selection
 execute at @e[type=interaction,limit=1,tag=GameTP] as @a[distance=0..2] run function namespace:game_functions/game_start
 execute at @e[type=interaction,limit=1,tag=GameTP] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace white_wool
 
 execute at @e[type=interaction,limit=1,tag=ItemTP] as @a[distance=..1.001] run function namespace:game_functions/selection_tp
 execute at @e[type=interaction,limit=1,tag=lobbyTP] as @a[distance=..1.001] run function namespace:game_functions/lobby_tp
#particals
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
    

#interactions
 execute as @e[tag=Fire_Charge_I,distance=..200,type=interaction] on target run scoreboard players set @s munition 1
 execute as @e[tag=Fire_Charge_I,distance=..200,type=interaction] on target run title @s actionbar {text:"Equipped Fire Ball",bold:true,color:"#ff3067"}
 data modify entity @e[tag=Fire_Charge_I,limit=1,distance=..200,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=TNT_I,type=interaction] on target run scoreboard players set @s munition 2
 execute as @e[distance=..200,tag=TNT_I,type=interaction] on target run title @s actionbar {text:"Equipped TNT",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=TNT_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Lightning_Rod_I,type=interaction] on target run scoreboard players set @s munition 3
 execute as @e[distance=..200,tag=Lightning_Rod_I,type=interaction] on target run title @s actionbar {text:"Equipped lightning Rod",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Lightning_Rod_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=Fortress_I,type=interaction] on target run scoreboard players set @s shore 1
 execute as @e[distance=..200,tag=Fortress_I,type=interaction] on target run title @s actionbar {text:"Equipped Fortress",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Fortress_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Golden_Apple_I,type=interaction] on target run scoreboard players set @s shore 2
 execute as @e[distance=..200,tag=Golden_Apple_I,type=interaction] on target run title @s actionbar {text:"Equipped Golden Apple",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Golden_Apple_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=Stone_Sword_I,type=interaction] on target run scoreboard players set @s weaponry 1
 execute as @e[distance=..200,tag=Stone_Sword_I,type=interaction] on target run title @s actionbar {text:"Equipped Stone Sword",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Stone_Sword_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Golden_Sword_I,type=interaction] on target run scoreboard players set @s weaponry 2
 execute as @e[distance=..200,tag=Golden_Sword_I,type=interaction] on target run title @s actionbar {text:"Equipped Golden Axe",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Golden_Sword_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Bow_I,type=interaction] on target run scoreboard players set @s weaponry 3
 execute as @e[distance=..200,tag=Bow_I,type=interaction] on target run title @s actionbar {text:"Equipped Bow & Arrows",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Bow_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]

 execute as @e[distance=..200,tag=Snowball_I,type=interaction] on target run scoreboard players set @s utility 1
 execute as @e[distance=..200,tag=Snowball_I,type=interaction] on target run title @s actionbar {text:"Equipped Snowball",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Snowball_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Ender_Pearl_I,type=interaction] on target run scoreboard players set @s utility 2
 execute as @e[distance=..200,tag=Ender_Pearl_I,type=interaction] on target run title @s actionbar {text:"Equipped Ender Pearls",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Ender_Pearl_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]
 execute as @e[distance=..200,tag=Shears_I,type=interaction] on target run scoreboard players set @s utility 3
 execute as @e[distance=..200,tag=Shears_I,type=interaction] on target run title @s actionbar {text:"Equipped Shears",bold:true,color:"#ff3067"}
 data modify entity @e[distance=..200,tag=Shears_I,limit=1,type=interaction] interaction set from entity @e[limit=1,tag=SelectionBlocker1,distance=..200,type=interaction]



#Triggers //suicide button
    kill @a[scores={SuicideButton=1..}]
    scoreboard players set @a SuicideButton 0



