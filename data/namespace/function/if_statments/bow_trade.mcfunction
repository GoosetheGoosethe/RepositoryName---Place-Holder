execute unless entity @a[nbt={equipment:{offhand:{id:"minecraft:bow"}}}] run return fail
 give @s lightning_rod[consumable={consume_seconds:1000000000},item_name=["§5 Lightning Rod"]] 2
 give @s snowball[item_name=["§9 Snowball"]] 1

 item replace entity @s weapon.offhand with air