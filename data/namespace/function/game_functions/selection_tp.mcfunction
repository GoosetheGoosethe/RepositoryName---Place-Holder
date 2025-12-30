tp @s ~ ~ ~-13.2
playsound block.end_portal_frame.fill master @a ~ ~ ~
playsound block.end_portal_frame.fill master @a ~ ~ ~-13.3
execute at @s run particle dragon_breath ~ ~1.6 ~-.8 0 0 0 0.1 20 force @a
effect give @s slowness 1 3 true