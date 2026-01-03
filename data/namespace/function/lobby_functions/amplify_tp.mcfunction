tp @s ~ ~ ~7.2
playsound block.end_portal_frame.fill master @a ~ ~ ~
playsound block.end_portal_frame.fill master @a ~ ~ ~7.2 1
execute at @s run particle dragon_breath ~ ~1.6 ~.8 0 0 0 0.1 20 force @a
effect give @s slowness 1 3 true
