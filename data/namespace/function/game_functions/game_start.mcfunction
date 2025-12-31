     tp @s 0 1 0
#function run when game is started
     effect give @s instant_health 1 100 true
     effect give @s saturation 3 100 true
     effect give @s slowness 1 3 true
     effect give @s resistance 3 100 true

 #giving players items
     clear @s

     execute if entity @s[scores={munition=1}] run give @s fire_charge[consumable={consume_seconds:1000000000}] 10
     execute if entity @s[scores={munition=2}] run give @s tnt[consumable={consume_seconds:1000000000}] 6
     execute if entity @s[scores={munition=3}] run give @s lightning_rod[consumable={consume_seconds:1000000000}] 3

     execute if entity @s[scores={shore=1}] run give @s white_dye[consumable={consume_seconds:1000000000},enchantments={unbreaking:3},item_name=["mini fort"]]
     execute if entity @s[scores={shore=2}] run give @s golden_apple
     #execute if entity @s[scores={shore=3}] run give @s lightning_rod[consumable={consume_seconds:1000000000}] 10

     execute if entity @s[scores={utility=1}] run give @s snowball 5
     execute if entity @s[scores={utility=2}] run give @s ender_pearl 1
     execute if entity @s[scores={utility=3}] run give @s shears[consumable={consume_seconds:1000000000}]

     execute if entity @s[scores={weaponry=1}] run give @s stone_sword
     execute if entity @s[scores={weaponry=2}] run give @s golden_axe
     execute if entity @s[scores={weaponry=3}] run give @s bow
     execute if entity @s[scores={weaponry=3}] run give @s arrow 16


     give @s white_wool 64
     give @s golden_carrot 3


   #reletive // spawn in ++ (*not functional needs fixing)
     execute at @s run particle dragon_breath ^ ^1.6 ^.3 0 0 0 0.1 20 force @a
     playsound item.goat_horn.sound.1 master @s 0 1 0 1
     fill ~3 ~-1 ~3 ~-3 ~3 ~-3 air replace white_wool
     fill ~3 ~-1 ~3 ~-3 ~3 ~-3 air replace water

