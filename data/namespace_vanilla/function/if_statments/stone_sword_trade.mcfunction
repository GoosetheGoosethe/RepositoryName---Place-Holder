#trading stone sword for (golden apple)(fire charge x 4)(tnt x 3)

execute unless entity @s[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run return fail
 give @s tnt[consumable={consume_seconds:1000000000},item_name=["§5 TNT"]] 3
 give @s fire_charge[consumable={consume_seconds:1000000000},item_name=["§5 Fire Ball"]] 4
 item replace entity @s weapon.offhand with air
 execute at @s[scores={Passive_Amplifiers=4}] run scoreboard players add @a[distance=..8] concused 120
  execute at @s[scores={Passive_Amplifiers=4}] run effect give @s speed 16 0 true
 

    