 execute as @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run function namespace:if_statments/stone_sword_trade
execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run item replace entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] weapon.offhand with air
    
schedule function namespace:loops/10t_looper 20t