execute at @e[type=snowball] run fill ^ ^-1.5 ^-1 ^ ^-1.5 ^-1 white_wool replace air
execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle angry_villager ^ ^ ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
clear @a bucket
fill -386 64 2 -374 68 -5 air replace minecraft:white_wool

#off hand activation
execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p golden_apple
execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p shears
execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p tnt 4
execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run give @p fire_charge 4
execute at @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run item replace entity @p weapon.offhand with air
 
execute at @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}] run execute anchored eyes at @p run summon fireball ^ ^1 ^1
kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}]

execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] run execute anchored eyes at @p run summon tnt ^ ^ ^25 {fuse:40}
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]

execute at @e[type=item,nbt={Item:{id:"minecraft:shears"}}] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace white_wool
kill @e[type=item,nbt={Item:{id:"minecraft:shears"}}]

execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 white_wool replace air
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace white_wool
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace water
kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}]
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
#green/red light
 execute if entity @a[scores={item_fireball=1..}] run fill -373 65 -1 -373 65 -1 green_concrete
 execute if entity @a[scores={item_snowball=1..}] run fill -373 66 -4 -373 66 -4 green_concrete
 execute if entity @a[scores={item_enderpearl=1..}] run fill -373 66 -2 -373 66 -2 green_concrete
 execute if entity @a[scores={item_fishing_rod=1..}] run fill -373 66 -3 -373 66 -3 green_concrete
 execute if entity @a[scores={item_tnt=1..}] run fill -373 65 -4 -373 65 -4 green_concrete
 execute if entity @a[scores={item_water_bucket=1..}] run fill -373 66 -1 -373 66 -1 green_concrete
 execute if entity @a[scores={item_wool=1..}] run fill -373 65 -3 -373 65 -3 green_concrete
 execute if entity @a[scores={item_golden=1..}] run fill -373 65 -2 -373 65 -2 green_concrete

 execute unless entity @a[scores={item_fireball=1..}] run fill -373 65 -1 -373 65 -1 red_concrete
 execute unless entity @a[scores={item_snowball=1..}] run fill -373 66 -4 -373 66 -4 red_concrete
 execute unless entity @a[scores={item_enderpearl=1..}] run fill -373 66 -2 -373 66 -2 red_concrete
 execute unless entity @a[scores={item_fishing_rod=1..}] run fill -373 66 -3 -373 66 -3 red_concrete
 execute unless entity @a[scores={item_tnt=1..}] run fill -373 65 -4 -373 65 -4 red_concrete
 execute unless entity @a[scores={item_water_bucket=1..}] run fill -373 66 -1 -373 66 -1 red_concrete
 execute unless entity @a[scores={item_wool=1..}] run fill -373 65 -3 -373 65 -3 red_concrete
 execute unless entity @a[scores={item_golden=1..}] run fill -373 65 -2 -373 65 -2 red_concrete
 