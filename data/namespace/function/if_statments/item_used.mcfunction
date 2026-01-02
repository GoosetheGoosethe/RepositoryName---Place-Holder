execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}}] as @s anchored eyes run function namespace:physics/fire_ball_leader
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}}] run clear @s fire_charge 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:tnt"}}] as @s anchored eyes run summon tnt ^ ^ ^25 {fuse:40,explosion_power:3}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:tnt"}}] run clear @s tnt 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}] as @s anchored eyes run summon lightning_bolt ^ ^ ^10 {}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}] run clear @s lightning_rod 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace white_wool
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"}}] run clear @s shears 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 white_wool replace air
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace white_wool
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] run clear @s white_dye[item_name=["§3 mini fort"]] 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:snowball"}}] as @s anchored eyes run function namespace:physics/snowball_leader
execute if entity @s[nbt={SelectedItem:{id:"minecraft:snowball"}}] run clear @s snowball 1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run scoreboard players set @s munition 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run scoreboard players set @s utility 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run scoreboard players set @s weaponry 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run scoreboard players set @s shore 0 
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run title @s actionbar {text:"Equipment reset",color:"red"}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] run dialog show @s namespace:gamerules

