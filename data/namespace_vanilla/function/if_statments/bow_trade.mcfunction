execute unless entity @s[nbt={equipment:{offhand:{id:"minecraft:bow"}}}] run return fail
 give @s lightning_rod[consumable={consume_seconds:1000000000},item_name=["§5 Lightning Rod"]] 2
 give @s snowball[item_name=["§9 Snowball"]] 1

 item replace entity @s weapon.offhand with air
 execute at @s[scores={Passive_Amplifiers=4}] run scoreboard players add @a[distance=..8] concused 120
  execute at @s[scores={Passive_Amplifiers=4}] run effect give @s speed 16 1 true