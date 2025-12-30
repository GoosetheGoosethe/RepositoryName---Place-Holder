execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}}] anchored eyes run summon fireball ^ ^-.3 ^1.8
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}}] run clear @s fire_charge 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:tnt"}}] as @s anchored eyes run summon tnt ^ ^ ^25 {fuse:45,explosion_power:3}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:tnt"}}] run clear @s tnt 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace white_wool
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] run clear @s shears 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 white_wool replace air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace white_wool

execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] run clear @s white_dye[item_name=["mini fort"]] 1





