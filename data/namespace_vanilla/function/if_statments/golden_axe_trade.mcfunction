#trading golden axe for (golden apple x 2)(ender pearl)

execute unless entity @a[nbt={equipment:{offhand:{id:"minecraft:golden_axe"}}}] run return fail
 give @s golden_apple[item_name=["§3 Golden Apple"]]
 give @s ender_pearl[item_name=["§9 Ender Pearl"]]

 item replace entity @s weapon.offhand with air
  
 