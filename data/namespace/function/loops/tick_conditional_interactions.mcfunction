#lag prevention during empty lobies.
#interactions
 execute as @e[tag=Fire_Charge_I,distance=..200,type=interaction] on target run scoreboard players set @s munition 1
 execute as @e[tag=Fire_Charge_I,distance=..200,type=interaction] on target run title @s actionbar {text:"Equipped Fire Ball",bold:true,color:"#71ff6c"}
 data modify entity @e[tag=Fire_Charge_I,limit=1,distance=..200,type=interaction] interaction set value {}

 execute as @e[distance=..200,tag=TNT_I,type=interaction] on target run scoreboard players set @s munition 2
 execute as @e[distance=..200,tag=TNT_I,type=interaction] on target run title @s actionbar {text:"Equipped TNT",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=TNT_I,limit=1,type=interaction] interaction set value {}
 execute as @e[distance=..200,tag=Lightning_Rod_I,type=interaction] on target run scoreboard players set @s munition 3
 execute as @e[distance=..200,tag=Lightning_Rod_I,type=interaction] on target run title @s actionbar {text:"Equipped lightning Rod",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Lightning_Rod_I,limit=1,type=interaction] interaction set value {}

 execute as @e[distance=..200,tag=Fortress_I,type=interaction] on target run scoreboard players set @s shore 1
 execute as @e[distance=..200,tag=Fortress_I,type=interaction] on target run title @s actionbar {text:"Equipped Fortress",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Fortress_I,limit=1,type=interaction] interaction set value {}
 execute as @e[distance=..200,tag=Golden_Apple_I,type=interaction] on target run scoreboard players set @s shore 2
 execute as @e[distance=..200,tag=Golden_Apple_I,type=interaction] on target run title @s actionbar {text:"Equipped Golden Apple",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Golden_Apple_I,limit=1,type=interaction] interaction set value {}

 execute as @e[distance=..200,tag=Stone_Sword_I,type=interaction] on target run scoreboard players set @s weaponry 1
 execute as @e[distance=..200,tag=Stone_Sword_I,type=interaction] on target run title @s actionbar {text:"Equipped Stone Sword",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Stone_Sword_I,limit=1,type=interaction] interaction set value {}
 execute as @e[distance=..200,tag=Golden_Sword_I,type=interaction] on target run scoreboard players set @s weaponry 2
 execute as @e[distance=..200,tag=Golden_Sword_I,type=interaction] on target run title @s actionbar {text:"Equipped Golden Axe",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Golden_Sword_I,limit=1,type=interaction] interaction set value {}
 execute as @e[distance=..200,tag=Bow_I,type=interaction] on target run scoreboard players set @s weaponry 3
 execute as @e[distance=..200,tag=Bow_I,type=interaction] on target run title @s actionbar {text:"Equipped Bow & Arrows",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Bow_I,limit=1,type=interaction] interaction set value {}

 execute as @e[distance=..200,tag=Snowball_I,type=interaction] on target run scoreboard players set @s utility 1
 execute as @e[distance=..200,tag=Snowball_I,type=interaction] on target run title @s actionbar {text:"Equipped Snowball",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Snowball_I,limit=1,type=interaction] interaction set value {}
 execute as @e[distance=..200,tag=Ender_Pearl_I,type=interaction] on target run scoreboard players set @s utility 2
 execute as @e[distance=..200,tag=Ender_Pearl_I,type=interaction] on target run title @s actionbar {text:"Equipped Ender Pearls",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Ender_Pearl_I,limit=1,type=interaction] interaction set value {}
 execute as @e[distance=..200,tag=Shears_I,type=interaction] on target run scoreboard players set @s utility 3
 execute as @e[distance=..200,tag=Shears_I,type=interaction] on target run title @s actionbar {text:"Equipped Shears",bold:true,color:"#71ff6c"}
 data modify entity @e[distance=..200,tag=Shears_I,limit=1,type=interaction] interaction set value {}

#particals
 execute at @e[tag=Fire_Charge_I,distance=..200,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={munition=1}]
 execute at @e[distance=..200,tag=TNT_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={munition=2}]
 execute at @e[distance=..200,tag=Lightning_Rod_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={munition=3}]
 execute at @e[distance=..200,tag=Fortress_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={shore=1}]
 execute at @e[distance=..200,tag=Golden_Apple_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={shore=2}]
 execute at @e[distance=..200,tag=Stone_Sword_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={weaponry=1}]
 execute at @e[distance=..200,tag=Golden_Sword_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={weaponry=2}]
 execute at @e[distance=..200,tag=Bow_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={weaponry=3}]
 execute at @e[distance=..200,tag=Snowball_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={utility=1}]
 execute at @e[distance=..200,tag=Ender_Pearl_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={utility=2}]
 execute at @e[distance=..200,tag=Shears_I,type=interaction] run particle wax_on ~ ~ ~ 0.2 0.06 0.2 0.0 1 force @a[scores={utility=3}]
