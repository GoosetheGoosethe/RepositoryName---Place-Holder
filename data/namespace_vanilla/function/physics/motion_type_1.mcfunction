execute store result score @s motion_x1 run data get entity @s Pos[0] 1000

execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.4

execute store result score @s motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s motion_z2 run data get entity @s Pos[2] 1000
tp @s ~ ~-.2 ~
execute store result score @s motion_y2 run data get entity @s Rotation[1] 1000

execute store result entity @s Motion[0] float 0.0005 run scoreboard players operation @s motion_x2 -= @s motion_x1
execute store result entity @s Motion[1] float -0.000003614 run scoreboard players get @s motion_y2
execute store result entity @s Motion[2] float 0.0005 run scoreboard players operation @s motion_z2 -= @s motion_z1

