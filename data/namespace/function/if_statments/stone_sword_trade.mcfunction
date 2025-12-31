#trading stone sword for (golden apple)(fire charge x 4)(tnt x 3)

execute unless entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run return fail
 give @s tnt[consumable={consume_seconds:1000000000},item_name=["§4 TNT"]] 3
 give @s fire_charge[consumable={consume_seconds:1000000000},item_name=["§4 Fire Ball"]] 4
 item replace entity @s weapon.offhand with air
  
 

    