#function run when game is started
gamemode survival @p
effect give @p instant_health 1 100 true
effect give @p saturation 3 100 true
    #giving players items
    clear @p
     give @p stone_sword
     give @p shears
     execute if entity @a[scores={item_wool= 1}] run give @p[gamemode= survival] white_wool 64
     execute if entity @a[scores={item_enderpearl= 1}] run give @p[gamemode= survival] ender_pearl 1
     execute if entity @a[scores={item_golden= 1}] run give @p[gamemode= survival] golden_apple 3
     execute if entity @a[scores={item_water_bucket= 1}] run give @p[gamemode= survival] water_bucket 1
     execute if entity @a[scores={item_fireball= 1}] run give @p[gamemode= survival] fire_charge 10
     execute if entity @a[scores={item_tnt= 1}] run give @p[gamemode= survival] tnt 10
     execute if entity @a[scores={item_snowball= 1}] run give @p[gamemode= survival] snowball 5
     execute if entity @a[scores={item_fishing_rod= 1}] run give @p[gamemode= survival] fishing_rod 1
     #execute if entity @a[scores={item_fireball= 1}] run give @a[gamemode= survival] fire_charge
     #execute if entity @a[scores={item_fireball= 1}] run give @a[gamemode= survival] fire_charge
     #execute if entity @a[scores={item_fireball= 1}] run give @a[gamemode= survival] fire_charge
tp @p -389 63 50

