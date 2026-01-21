#5 second looper
#trigger enable
 scoreboard players enable @a SuicideButton

#lag clearer
kill @e[distance= 300..10000,type=!player]
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

   #text displayes
   execute unless entity @e[distance=..200,tag=Passive_A] run summon text_display 10 -56.5 30 {Tags:["Passive_A"],text:[{"color":"#00BBFF","text":"P"},{"color":"#08B0FF","text":"a"},{"color":"#11A5FF","text":"s"},{"color":"#199AFF","text":"s"},{"color":"#228FFF","text":"i"},{"color":"#2A84FF","text":"v"},{"color":"#3379FF","text":"e "},{"color":"#3B6EFF","text":"A"},{"color":"#4463FF","text":"m"},{"color":"#4C58FF","text":"p"},{"color":"#554DFF","text":"l"},{"color":"#5D42FF","text":"i"},{"color":"#6637FF","text":"f"},{"color":"#6E2CFF","text":"i"},{"color":"#7721FF","text":"e"},{"color":"#7F16FF","text":"r"},{"color":"#9000FF","text":"s"}],Rotation:[90F,0F]}
   execute unless entity @e[distance=..200,tag=Energy_A] run summon text_display 0 -56.5 30 {Tags:["Energy_A"],Rotation:[-90F,0F],text:[{"color":"#911C1C","text":"E"},{"color":"#8E1A2A","text":"n"},{"color":"#8B1938","text":"e"},{"color":"#871747","text":"r"},{"color":"#841555","text":"g"},{"color":"#811363","text":"y "},{"color":"#7E1271","text":"A"},{"color":"#7A107F","text":"m"},{"color":"#770E8E","text":"p"},{"color":"#740C9C","text":"l"},{"color":"#710BAA","text":"i"},{"color":"#6D09B8","text":"f"},{"color":"#6A07C6","text":"i"},{"color":"#6705D4","text":"e"},{"color":"#6404E3","text":"r"},{"color":"#5D00FF","text":"s"}]}
#spawnpoint
 spawnpoint @a 0 -59 10
#loop
 schedule function namespace_vanilla:loops/5s_looper 5s