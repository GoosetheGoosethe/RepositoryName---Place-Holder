#5 second looper
#trigger enable
 scoreboard players enable @a SuicideButton

#lag clearer
 execute at @a run execute as @e[distance= 300..10000] run kill @s
#spawners 
 #interactions
  execute at @a unless entity @e[tag=GameTP,type=interaction,distance=..200] run summon interaction 5 -60 9 {width:1,height:1,Tags:["GameTP"]}
  execute at @a unless entity @e[tag=ItemTP,type=interaction,distance=..200] run summon interaction 5 -60 2 {width:3,height:8,Tags:["ItemTP"]}
  execute at @a unless entity @e[tag=lobbyTP,type=interaction,distance=..200] run summon interaction 5 -60 -10 {width:3.2,height:8,Tags:["lobbyTP"]}

  execute at @a unless entity @e[tag=AmplifyTP,type=interaction,distance=..200] run summon interaction 5 -60 16 {width:3,height:8,Tags:["AmplifyTP"]}
  execute at @a unless entity @e[tag=lobbyTP2,type=interaction,distance=..200] run summon interaction 5 -60 22 {width:3.2,height:8,Tags:["lobbyTP2"]}


  execute at @a unless entity @e[tag=SelectionBlocker1,type=interaction,distance=..200] run summon interaction 5 -60 -21 {width:30,height:.5,Tags:["SelectionBlocker1"]}

 #partical generators 
    execute at @a unless entity @e[distance=..200,tag=MainGameParticals] run summon armor_stand 5 -60 9 {Invisible:true,Invulnerable:true,Tags:["MainGameParticals"]}
    execute at @a unless entity @e[distance=..200,tag=MainGameParticals2] run summon armor_stand 5 -60 9 {Invisible:true,Invulnerable:true,Tags:["MainGameParticals2"]}
 #item displays 
    execute unless entity @e[distance=..200,tag=Fire_Charge] run summon item_display 1 -58.5 -14 {item_display:"fixed",item:{id:"minecraft:fire_charge",count:1},Tags:["Fire_Charge"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=TNT] run summon item_display 1 -58.5 -17 {item_display:"fixed",item:{id:"minecraft:tnt",count:1},Tags:["TNT"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Lightning_Rod] run summon item_display 1 -58.5 -20 {item_display:"fixed",transformation:{scale:[1.8,1.8,1.8],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]},item:{id:"minecraft:lightning_rod",count:1},Tags:["Lightning_Rod"],Rotation:[90,0]}

    execute unless entity @e[distance=..200,tag=Fortress] run summon item_display 1 -58.5 -23 {item_display:"fixed",item:{id:"minecraft:white_dye",count:1},Tags:["Fortress"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Golden_Apple] run summon item_display 1 -58.5 -26 {item_display:"fixed",item:{id:"minecraft:golden_apple",count:1},Tags:["Golden_Apple"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Turtle_Scute] run summon item_display 1 -58.5 -29 {item_display:"fixed",item:{id:"minecraft:turtle_scute",count:1},Tags:["Turtle_Scute"],Rotation:[90,0]}

    execute unless entity @e[distance=..200,tag=Stone_Sword] run summon item_display 9 -58.5 -14 {item_display:"fixed",item:{id:"minecraft:stone_sword",count:1},Tags:["Stone_Sword"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Golden_Sword] run summon item_display 9 -58.5 -17 {item_display:"fixed",item:{id:"minecraft:golden_axe",count:1},Tags:["Golden_Sword"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Bow] run summon item_display 9 -58.5 -20 {item_display:"fixed",item:{id:"minecraft:bow",count:1},Tags:["Bow"],Rotation:[90,0]}

    execute unless entity @e[distance=..200,tag=Snowball] run summon item_display 9 -58.5 -23 {item_display:"fixed",item:{id:"minecraft:snowball",count:1},Tags:["Snowball"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Ender_Pearl] run summon item_display 9 -58.5 -26 {item_display:"fixed",item:{id:"minecraft:ender_pearl",count:1},Tags:["Ender_Pearl"],Rotation:[90,0]}
    execute unless entity @e[distance=..200,tag=Shears] run summon item_display 9 -58.5 -29 {item_display:"fixed",item:{id:"minecraft:shears",count:1},Tags:["Shears"],Rotation:[90,0]}

  #item interactions
    execute unless entity @e[distance=..200,tag=Fire_Charge_I] run summon interaction 1 -59 -14 {Tags:["Fire_Charge_I"],response:true}
    execute unless entity @e[distance=..200,tag=TNT_I] run summon interaction 1 -59 -17 {Tags:["TNT_I"],response:true}
    execute unless entity @e[distance=..200,tag=Lightning_Rod_I] run summon interaction 1 -59 -20 {Tags:["Lightning_Rod_I"],response:true}

    execute unless entity @e[distance=..200,tag=Fortress_I] run summon interaction 1 -59 -23 {Tags:["Fortress_I"],response:true}
    execute unless entity @e[distance=..200,tag=Golden_Apple_I] run summon interaction 1 -59 -26 {Tags:["Golden_Apple_I"],response:true}
    execute unless entity @e[distance=..200,tag=Turtle_Scute_I] run summon interaction 1 -59 -29 {Tags:["Turtle_Scute_I"],response:true}

    execute unless entity @e[distance=..200,tag=Stone_Sword_I] run summon interaction 9 -59 -14 {Tags:["Stone_Sword_I"],response:true}
    execute unless entity @e[distance=..200,tag=Golden_Sword_I] run summon interaction 9 -59 -17 {Tags:["Golden_Sword_I"],response:true}
    execute unless entity @e[distance=..200,tag=Bow_I] run summon interaction 9 -59 -20 {Tags:["Bow_I"],response:true}

    execute unless entity @e[distance=..200,tag=Snowball_I] run summon interaction 9 -59 -23 {Tags:["Snowball_I"],response:true}
    execute unless entity @e[distance=..200,tag=Ender_Pearl_I] run summon interaction 9 -59 -26 {Tags:["Ender_Pearl_I"],response:true}
    execute unless entity @e[distance=..200,tag=Shears_I] run summon interaction 9 -59 -29 {Tags:["Shears_I"],response:true}

#spawnpoint
 spawnpoint @a 0 -59 10
#loop
 schedule function namespace_vanilla:loops/5s_looper 5s