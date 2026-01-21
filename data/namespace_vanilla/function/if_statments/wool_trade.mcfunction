

execute unless entity @s[nbt={equipment:{offhand:{id:"minecraft:white_wool",count:64}}}] run return fail
   
    execute store result score @s random run scoreboard players get random random

 give @s[scores={random=1}] arrow 16
 give @s[scores={random=2}] stone_sword[item_name=["§4 Stone Sword"]]
 give @s[scores={random=3}] tnt[consumable={consume_seconds:1000000000},item_name=["§5 TNT"]] 1
 give @s[scores={random=4}] fire_charge[consumable={consume_seconds:1000000000},item_name=["§5 Fire Ball"]] 1
 give @s[scores={random=5}] lightning_rod[consumable={consume_seconds:1000000000},item_name=["§5 Lightning Rod"]] 1
 give @s[scores={random=6}] snowball[item_name=["§9 Snowball"]] 1
 give @s[scores={random=7}] ender_pearl[item_name=["§9 Ender Pearl"]] 1
 give @s[scores={random=8}] shears[consumable={consume_seconds:1000000000},item_name=["§9 Shears"]]
 give @s[scores={random=9}] white_dye[consumable={consume_seconds:1000000000},enchantments={unbreaking:3},item_name=["§3 mini fort"]]
 give @s[scores={random=10}] golden_apple[item_name=["§3 Golden Apple"]]
 give @s[scores={random=11}] tnt[consumable={consume_seconds:1000000000},item_name=["§5 TNT"]] 12
 give @s[scores={random=12}] golden_apple[item_name=["§3 Golden Apple"]] 2
 give @s[scores={random=13}] white_wool 32
 item replace entity @s weapon.offhand with air
  
 

    