execute at @e[type=snowball] run fill ^ ^-1.5 ^-1 ^ ^-1.5 ^-1 white_wool replace air
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle angry_villager ^ ^ ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
clear @a bucket
fill -386 64 2 -374 68 -5 air replace minecraft:white_wool

execute at @e[type=interaction,limit=1,tag=GameTP] as @a[distance=0..2] run function namespace:game_start
execute at @e[type=interaction,limit=1,tag=GameTP] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace white_wool

scoreboard players enable @a SuicideButton
kill @a[scores={SuicideButton=1..}]
scoreboard players set @a SuicideButton 0
#off hand activation
 execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p golden_apple
 execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p fire_charge[consumable={consume_seconds:1000000000}] 4
 execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p shears[consumable={consume_seconds:1000000000}] 1
 execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p tnt[consumable={consume_seconds:1000000000}] 3
 execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run item replace entity @p weapon.offhand with air
  
 #execute at @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}] run execute anchored eyes at @p run summon fireball ^ ^1 ^1
 #kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
 #
 #execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] run execute anchored eyes at @p run summon tnt ^ ^ ^25 {fuse:40}
 #kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
 #
 #execute at @e[type=item,nbt={Item:{id:"minecraft:shears"}}] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace white_wool
 #kill @e[type=item,nbt={Item:{id:"minecraft:shears"}}]
 #
 #execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 white_wool replace air
 #execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace white_wool
 #execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace water
 #kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}]
#roll back scoreboards
 execute if entity @a[scores={item_fireball=2..}] run scoreboard players set @a item_fireball 0
 execute if entity @a[scores={item_snowball=2..}] run scoreboard players set @a item_snowball 0
 execute if entity @a[scores={item_enderpearl=2..}] run scoreboard players set @a item_enderpearl 0
 execute if entity @a[scores={item_fishing_rod=2..}] run scoreboard players set @a item_fishing_rod 0
 execute if entity @a[scores={item_tnt=2..}] run scoreboard players set @a item_tnt 0
 execute if entity @a[scores={item_water_bucket=2..}] run scoreboard players set @a item_water_bucket 0
 execute if entity @a[scores={item_wool=2..}] run scoreboard players set @a item_wool 0
 execute if entity @a[scores={item_golden=2..}] run scoreboard players set @a item_golden 0
 execute if entity @a[scores={item_fireball=2..}] run scoreboard players set @a item_fireball 0



 advancement revoke @a only namespace:use_item