execute anchored eyes run summon fireball ^ ^-.8 ^1 {Tags:["Motion_1"]}
execute store result entity @e[tag=Motion_1,limit=1,sort=nearest,type=fireball] Rotation[0] float 1 run data get entity @s Rotation[0] 1 
execute store result entity @e[tag=Motion_1,limit=1,sort=nearest,type=fireball] Rotation[1] float 1 run data get entity @s Rotation[1] 1 
execute as @e[sort=nearest,tag=Motion_1,limit=1,type=fireball] at @e[sort=nearest,tag=Motion_1,limit=1,type=fireball] run function namespace:physics/motion_type_1