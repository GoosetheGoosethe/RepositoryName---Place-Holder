#function run when game is started
     effect give @s instant_health 1 100 true
     effect give @s saturation 3 100 true
 #giving players items
     clear @s
     give @s stone_sword
     give @s white_wool 64
     give @s white_dye[consumable={consume_seconds:1000000000},enchantments={unbreaking:3},item_name=["mini fort"]]
     give @s ender_pearl 1
     give @s golden_carrot 3
     give @s water_bucket 1
     give @s fire_charge[consumable={consume_seconds:1000000000}] 10
     give @s shears[consumable={consume_seconds:1000000000}]
     give @s tnt[consumable={consume_seconds:1000000000}] 6
     give @s snowball 5
   
      
     #s
      #give @s[gamemode= survival] fishing_rod 1
      #execute if entity @s[scores={item_wool= 1}] run give @s[gamemode= survival] white_wool 64
      #execute if entity @s[scores={item_enderpearl= 1}] run give @s[gamemode= survival] ender_pearl 1
      #execute if entity @s[scores={item_golden= 1}] run give @s[gamemode= survival] golden_apple 3
      #execute if entity @s[scores={item_water_bucket= 1}] run give @s[gamemode= survival] water_bucket 1
      #execute if entity @s[scores={item_fireball= 1}] run give @s[gamemode= survival] fire_charge 10
      #execute if entity @s[scores={item_tnt= 1}] run give @s[gamemode= survival] tnt 10
      #execute if entity @s[scores={item_snowball= 1}] run give @s[gamemode= survival] snowball 5
      #execute if entity @s[scores={item_fishing_rod= 1}] run give @s[gamemode= survival] fishing_rod 1
      #execute if entity @a[scores={item_fireball= 1}] run give @a[gamemode= survival] fire_charge
      #execute if entity @a[scores={item_fireball= 1}] run give @a[gamemode= survival] fire_charge
      #execute if entity @a[scores={item_fireball= 1}] run give @a[gamemode= survival] fire_charge
tp @s 0 1 0

