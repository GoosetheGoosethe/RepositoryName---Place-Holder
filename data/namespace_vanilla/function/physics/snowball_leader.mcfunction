execute anchored eyes run summon snowball ^ ^-.8 ^1 {Tags:["Motion_1"]}
execute store result entity @e[tag=Motion_1,limit=1,sort=nearest,type=snowball] Rotation[0] float 1 run data get entity @s Rotation[0] 1 
execute store result entity @e[tag=Motion_1,limit=1,sort=nearest,type=snowball] Rotation[1] float 1 run data get entity @s Rotation[1] 1 
execute as @e[sort=nearest,tag=Motion_1,limit=1,type=snowball] at @e[sort=nearest,tag=Motion_1,limit=1,type=snowball] run function namespace:physics/motion_type_1