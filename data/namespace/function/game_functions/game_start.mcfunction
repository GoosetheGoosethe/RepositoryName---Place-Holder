 execute unless entity @s[scores={utility=1..,shore=1..,weaponry=1..,munition=1..}]
 
     tp @s 0 1 0
#function run when game is started
     effect give @s instant_health 1 100 true
     effect give @s saturation 3 100 true
     effect give @s slowness 1 3 true
     effect give @s resistance 3 100 true

     scoreboard players set @s died 0
     tag @s remove dead
     tag @s add playing
     gamemode survival @s[gamemode=adventure]

 #giving players items
     clear @s

     execute if entity @s[scores={weaponry=1}] run give @s stone_sword[item_name=["§4 Stone Sword"]]
     execute if entity @s[scores={weaponry=2}] run give @s golden_axe[item_name=["§4 Golden Axe"]]
     execute if entity @s[scores={weaponry=3}] run give @s bow[item_name=["§4 Bow"]]
     execute if entity @s[scores={weaponry=3}] run give @s arrow 16

     execute if entity @s[scores={munition=1}] run give @s fire_charge[consumable={consume_seconds:1000000000},item_name=["§5 Fire Ball"]] 12
     execute if entity @s[scores={munition=2}] run give @s tnt[consumable={consume_seconds:1000000000},item_name=["§5 TNT"]] 10
     execute if entity @s[scores={munition=3}] run give @s lightning_rod[consumable={consume_seconds:1000000000},item_name=["§5 Lightning Rod"]] 6

     execute if entity @s[scores={utility=1}] run give @s snowball[item_name=["§9 Snowball"]] 5
     execute if entity @s[scores={utility=2}] run give @s ender_pearl[item_name=["§9 Ender Pearl"]] 1
     execute if entity @s[scores={utility=3}] run give @s shears[consumable={consume_seconds:1000000000},item_name=["§9 Shears"]]

     execute if entity @s[scores={shore=1}] run give @s white_dye[consumable={consume_seconds:1000000000},enchantments={unbreaking:3},item_name=["§3 mini fort"]]
     execute if entity @s[scores={shore=2}] run give @s golden_apple[item_name=["§3 Golden Apple"]]
     #execute if entity @s[scores={shore=3}] run give @s lightning_rod[consumable={consume_seconds:1000000000}] 10



     give @s white_wool 64
     give @s golden_carrot 3


   #reletive // spawn in ++ (*not functional needs fixing)
     execute at @s run particle dragon_breath ^ ^1.6 ^.3 0 0 0 0.1 20 force @a
     playsound item.goat_horn.sound.1 master @s 0 1 0 1
     execute at @s run fill ~3 ~-1 ~3 ~-3 ~3 ~-3 air replace white_wool
     execute at @s run fill ~3 ~-1 ~3 ~-3 ~3 ~-3 air replace water

