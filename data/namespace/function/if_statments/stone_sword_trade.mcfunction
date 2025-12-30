#trading stone sword for (golden apple)(fire charge x 4)(tnt x 3)

execute if entity @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}},scores={dummycount=30}] run return fail
 give @s golden_apple
 give @s tnt[consumable={consume_seconds:1000000000}] 3
 give @s fire_charge[consumable={consume_seconds:1000000000}] 4
 

    