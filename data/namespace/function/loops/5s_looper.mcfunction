#5 second looper
#trigger enable
 scoreboard players enable @a SuicideButton

#lag clearer
 execute at @a run execute as @e[distance= 300..] run kill @s
#spawners
 execute unless entity @e[tag=GameTP,type=interaction,distance=..200] run summon interaction 5 -60 9 {width:15,height:15,Tags:["GameTP"]}
 execute unless entity @e[tag=ItemTP,type=interaction,distance=..200] run summon interaction 5 -60 2 {width:3,height:8,Tags:["ItemTP"]}
 execute unless entity @e[tag=lobbyTP,type=interaction,distance=..200] run summon interaction 5 -60 -10 {width:3,height:8,Tags:["lobbyTP"]}
  #partical generators
    execute unless entity @e[distance=..200,tag=MainGameParticals] run summon armor_stand 5 -60 9 {Invisible:true,Invulnerable:true,Tags:["MainGameParticals"]}
    execute unless entity @e[distance=..200,tag=MainGameParticals2] run summon armor_stand 5 -60 9 {Invisible:true,Invulnerable:true,Tags:["MainGameParticals2"]}
    #item displays
     execute unless entity @e[distance=..200,tag=TNT] run summon item_display 1 -58.5 -17 {item_display:"fixed",item:{id:"minecraft:tnt",count:1},Tags:["TNT"]}

#spawnpoint
 spawnpoint @a 0 -59 10
#loop
 schedule function namespace:loops/5s_looper 5s