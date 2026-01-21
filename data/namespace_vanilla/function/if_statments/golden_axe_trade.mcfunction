#trading golden axe for (golden apple x 2)(ender pearl)

execute unless entity @s[nbt={equipment:{offhand:{id:"minecraft:golden_axe"}}}] run return fail
 give @s golden_apple[item_name=["§3 Golden Apple"]]
 give @s ender_pearl[item_name=["§9 Ender Pearl"]]

 item replace entity @s weapon.offhand with air
 execute at @s[scores={Passive_Amplifiers=4}] run scoreboard players add @a[distance=..8] concused 120
  execute at @s[scores={Passive_Amplifiers=4}] run effect give @s speed 16 0 true
 