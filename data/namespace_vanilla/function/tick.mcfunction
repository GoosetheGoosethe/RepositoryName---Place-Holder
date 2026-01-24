scoreboard players add @e[type=!player,distance=..1000] age 1



execute at @e[type=snowball,scores={age=3..},distance=..1000] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool replace air
kill @e[type=snowball,scores={age=140..},distance=..1000]
execute as @e[type=snowball,distance=..1000] run data modify entity @s Motion[1] set value 0.1


fill -386 64 2 -374 68 -5 air replace minecraft:white_wool
clear @a bucket
#random :3
     execute store result score random random run random value 1..13


#bossbars
    bossbar set ae_descention players @a[scores={Energy_Amplifiers=1},distance=..600,tag=!dead]
    bossbar set ae_athletics players @a[scores={Energy_Amplifiers=2},distance=..600,tag=!dead]
    bossbar set ae_weary players @a[scores={Energy_Amplifiers=3},distance=..600,tag=!dead]
    bossbar set ae_metal_heart players @a[scores={Energy_Amplifiers=4},distance=..600,tag=!dead]
    bossbar set ae_ticker players @a[scores={Energy_Amplifiers=5},distance=..600,tag=!dead]
    bossbar set ae_eulogy players @a[scores={Energy_Amplifiers=6},distance=..600,tag=!dead]
    bossbar set ae_hustle players @a[scores={Energy_Amplifiers=7},distance=..600,tag=!dead]
    bossbar set ae_rift_walker players @a[scores={Energy_Amplifiers=8},distance=..600,tag=!dead]

#items in lobby
  clear @a[nbt={Inventory:[{id:"minecraft:purple_dye",count:2}]},tag=dead,distance=..100] purple_dye
  item replace entity @a[tag=dead,distance=..100] container.8 with purple_dye[consumable={consume_seconds:1000000000},custom_name="§9 Game Rules"]
  kill @e[type=item,nbt={Item:{id:"minecraft:purple_dye"}}]
  clear @a[nbt={Inventory:[{id:"minecraft:red_dye",count:2}]},tag=dead,distance=..100] red_dye
  item replace entity @a[tag=dead,distance=..100] container.4 with red_dye[consumable={consume_seconds:1000000000},custom_name="§9 Reset Equipment And Amplifiers"]
  kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]
#TP // lobby and selection
 execute at @e[type=interaction,limit=1,tag=GameTP] as @a[distance=0..2] run function namespace_vanilla:game_functions/game_start
 execute at @e[type=interaction,limit=1,tag=GameTP] run fill ~10 ~10 ~10 ~-10 ~-1 ~-10 air replace white_wool
 
 execute at @e[type=interaction,limit=1,tag=ItemTP] as @a[distance=..1.001] run function namespace_vanilla:lobby_functions/item_tp
 execute at @e[type=interaction,limit=1,tag=lobbyTP] as @a[distance=..1.001] run function namespace_vanilla:lobby_functions/lobby_tp

 execute at @e[type=interaction,limit=1,tag=AmplifyTP] as @a[distance=..1.001] run function namespace_vanilla:lobby_functions/amplify_tp
 execute at @e[type=interaction,limit=1,tag=lobbyTP2] as @a[distance=..1.001] run function namespace_vanilla:lobby_functions/lobby_tp_2
#particals
 execute at @e[tag=MainGameParticals,distance=..200] run particle end_rod ^ ^3.8 ^2.3 0 0 0 0 1 force @a
 execute as @e[tag=MainGameParticals,distance=..200] at @e[tag=MainGameParticals,distance=..200] run tp @s ~ ~ ~ ~3 ~
 
 execute at @e[tag=MainGameParticals2,distance=..200] run particle enchanted_hit ^ ^.4 ^4.3 0 0 0 0 5 force @a
 execute at @e[tag=MainGameParticals2,distance=..200] run particle enchanted_hit ^ ^.4 ^-4.3 0 0 0 0 5 force @a
 execute as @e[tag=MainGameParticals2,distance=..200] at @e[tag=MainGameParticals2,distance=..200] run tp @s ~ ~ ~ ~4 ~

#off hand activation
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:stone_sword"}}}] run function namespace_vanilla:if_statments/stone_sword_trade
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:golden_axe"}}}] run function namespace_vanilla:if_statments/golden_axe_trade
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:bow"}}}] run function namespace_vanilla:if_statments/bow_trade
    execute as @a[nbt={equipment:{offhand:{id:"minecraft:white_wool",count:64}}},scores={Passive_Amplifiers=3}] run function namespace_vanilla:if_statments/wool_trade

#interaction condition, check loops/tick_conditional_interaction; for follow ups.
    execute at @a[tag=dead,gamemode=adventure] run function namespace_vanilla:loops/tick_conditional_interactions

#Triggers //suicide button
    kill @a[scores={SuicideButton=1..}]
    scoreboard players set @a SuicideButton 0

#advancment tech
    scoreboard players add @a[advancements={namespace_vanilla:use_item=true}] item_used 1
    advancement revoke @a[scores={item_used=4..}] only namespace_vanilla:use_item
    scoreboard players set @a[scores={item_used=4..}] item_used 0
#death section
    #Eleventh hour
    execute at @a[scores={died=1..,Passive_Amplifiers=8},tag=!dead,gamemode=survival] run summon tnt ~ ~1 ~ {fuse:15}
    #
    tag @a[scores={died=1..},gamemode=survival] add dead
    gamemode adventure @a[tag=dead,gamemode=survival]
    effect give @a[tag=dead] weakness 1 100 true
    execute as @a[tag=dead,distance=..300] run scoreboard players set @s AE 0
    

#item particals
    execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] run particle flame ^ ^ ^25 0 12.5 0 0 5 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
    execute at @a[nbt={SelectedItem:{id:"minecraft:tnt"}}] anchored eyes run particle cloud ^ ^1 ^25 0 0 0 0 10 force @p[nbt={SelectedItem:{id:"minecraft:tnt"}}]
    execute at @a[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}] anchored eyes run particle electric_spark ^ ^1 ^10 0 0 0 0.1 15 force @p[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}]

#status effects
    #bleeding
        scoreboard players remove @a[scores={bleeding=1..},distance=..600,tag=!dead] bleeding 1
        execute as @a[scores={bleeding=1..},distance=..600,tag=!dead] run function namespace_vanilla:status_effects/bleeding
    #concused
    scoreboard players remove @a[scores={concused=1..},distance=..600,tag=!dead] concused 1
        execute as @a[scores={concused=1..},distance=..600,tag=!dead] run function namespace_vanilla:status_effects/concused
#amplifier secter
    
    #passive
     #Shadowborn 1
     execute as @a[predicate=namespace_vanilla:darkness,scores={Passive_Amplifiers=1},distance=..500] run effect give @s strength 1 0 true
     #Bloodsplater 2
     tag @a[scores={Passive_Amplifiers=2,health=20..}] add max_health
     execute at @a[scores={Passive_Amplifiers=2,health=..19},tag=max_health] run scoreboard players set @a[distance=1..8] bleeding 181


     tag @a[scores={Passive_Amplifiers=2,health=..19},tag=max_health] remove max_health
     #Obituary 3
     effect give @a[scores={Passive_Amplifiers=5,health=..8},distance=..600] hunger 2 0 true 
     effect give @a[scores={Passive_Amplifiers=5,health=..8},distance=..600] poison 1 1 true 
     effect give @a[scores={Passive_Amplifiers=5,health=..8},distance=..600] strength 1 2 true 
     #Of Welkin 4
     effect give @a[scores={Passive_Amplifiers=6},predicate=namespace_vanilla:welkin_req,distance=..600] slow_falling 6 1 true
     execute as @a[scores={Passive_Amplifiers=6},distance=..600] if entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run attribute @s gravity base set 0.02
     execute as @a[scores={Passive_Amplifiers=6},distance=..600] unless entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run attribute @s gravity base set 0.08
     #Of Abyss 5
     effect give @a[scores={Passive_Amplifiers=7},predicate=namespace_vanilla:abyss_req,distance=..600,tag=!dead] speed 1 0 true
     effect give @a[scores={Passive_Amplifiers=7},predicate=!namespace_vanilla:abyss_req,distance=..600,tag=!dead] weakness 1 0 true
     #Featherlight 6
     execute as @a[scores={Passive_Amplifiers=9},tag=!dead,distance=..600] run attribute @s max_health base set 14
     effect give @a[scores={Passive_Amplifiers=9},tag=!dead,distance=..600] speed 2 0 true
     effect give @a[scores={Passive_Amplifiers=9},tag=!dead,distance=..600] jump_boost 2 1 true
     #aprhension 7
     scoreboard players add @e[type=tnt,distance=..600] dummycount 1
     execute at @e[type=tnt,distance=..600,scores={dummycount=5..}] run playsound block.note_block.chime master @a[scores={Passive_Amplifiers=10},distance=..35] ~ ~ ~ 1 1 1
     execute at @e[type=tnt,distance=..600,scores={dummycount=5..}] run particle raid_omen ~ ~ ~ 0 8 0 0 40 force @a[scores={Passive_Amplifiers=10},distance=..35]
     execute at @a[scores={Passive_Amplifiers=10},distance=..600] at @a[distance=1..45,scores = {Passive_Amplifiers=..9}] run particle raid_omen ~ ~ ~ 0 8 0 0 40 force @a[scores={Passive_Amplifiers=10},distance=..35]
     execute at @a[scores={Passive_Amplifiers=10},distance=..600] at @a[distance=1..45,scores = {Passive_Amplifiers=9..}] run particle raid_omen ~ ~ ~ 0 8 0 0 40 force @a[scores={Passive_Amplifiers=10},distance=..35]
     scoreboard players set @e[type=tnt,distance=..600,scores={dummycount=6..}] dummycount 0
     #Normalcy 8
      execute as @a[scores={Passive_Amplifiers=11},tag=!dead,distance=..600] run attribute @s max_health base set 24
      execute as @a[tag=dead,distance=..600] run attribute @s max_health base set 20
    
    #Energy
     scoreboard players set @a Energy_Amplifiers 0
     #Descention
     execute as @a[scores={Energy_Amplifiers=1},tag=!dead,distance=..600] store result bossbar ae_descention value run scoreboard players get @s AE
     scoreboard players add @a[scores={Energy_Amplifiers=1,AE=..41},nbt={OnGround:0b},tag=!dead,distance=..600] AE 1
     scoreboard players remove @a[scores={Energy_Amplifiers=1,AE=0..},nbt={OnGround:1b},tag=!dead,distance=..600] AE 1
     effect give @a[scores={Energy_Amplifiers=1,AE=20..},tag=!dead,distance=..600] slow_falling 2 3 true
     effect give @a[scores={Energy_Amplifiers=1,AE=39..},tag=!dead,distance=..600] speed 2 0 true
     #Athletics
     execute as @a[scores={Energy_Amplifiers=2},tag=!dead,distance=..600] store result bossbar ae_athletics value run scoreboard players get @s AE
     scoreboard players add @a[scores={Energy_Amplifiers=2,AE=..301},predicate=namespace_vanilla:sprinting,tag=!dead,distance=..600] AE 1
     scoreboard players remove @a[scores={Energy_Amplifiers=2,AE=0..},predicate=!namespace_vanilla:sprinting,tag=!dead,distance=..600] AE 1
     effect give @a[scores={Energy_Amplifiers=2,AE=100..},tag=!dead,distance=..600] speed 2 0 true
     effect give @a[scores={Energy_Amplifiers=2,AE=300..},tag=!dead,distance=..600] slowness 4 0 true
     effect give @a[scores={Energy_Amplifiers=2,AE=300..},tag=!dead,distance=..600] weakness 4 0 true
     effect give @a[scores={Energy_Amplifiers=2,AE=300..},tag=!dead,distance=..600] hunger 4 0 true
    #weary
    #metal heart
     
     execute as @a[scores={Energy_Amplifiers=4},tag=!dead,distance=..600] store result bossbar ae_metal_heart value run scoreboard players get @s AE
     scoreboard players add @a[scores={Energy_Amplifiers=4,AE=..222},nbt={active_effects:[{id:"minecraft:slowness"}]},distance=..600,tag=!dead] AE 1
     scoreboard players add @a[scores={Energy_Amplifiers=4,AE=..222},nbt={active_effects:[{id:"minecraft:weakness"}]},distance=..600,tag=!dead] AE 1
     scoreboard players add @a[scores={Energy_Amplifiers=4,AE=..222},nbt={active_effects:[{id:"minecraft:hunger"}]},distance=..600,tag=!dead] AE 1
     execute as @a[scores={Energy_Amplifiers=4},distance=..600,predicate=namespace_vanilla:sneaking] run function namespace_vanilla:energyamplifiers/metal_heart

     #ticker
      execute as @a[scores={Energy_Amplifiers=5},tag=!dead,distance=..600] store result bossbar ae_ticker value run scoreboard players get @s AE
      execute at @a[scores={Energy_Amplifiers=5},tag=!dead,distance=..600] if entity @e[type=tnt,distance=..6] run scoreboard players add @a[scores={Energy_Amplifiers=5,AE=..31},tag=!dead,distance=..600] AE 1
      execute at @a[scores={Energy_Amplifiers=5,AE=30..},tag=!dead,distance=..600] at @a[distance=1..12] run summon tnt ~ ~ ~ {fuse:25}
      give @a[scores={Energy_Amplifiers=5,AE=20..},tag=!dead,distance=..600] tnt
      scoreboard players set @a[scores={Energy_Amplifiers=5,AE=20..},tag=!dead,distance=..600] AE 0

    #eulogy
      execute as @a[scores={Energy_Amplifiers=6},tag=!dead,distance=..600] store result bossbar ae_eulogy value run scoreboard players get @s AE
        scoreboard players add @a[scores={Energy_Amplifiers=6,health=20..,AE=..100},tag=!dead,distance=..600,] AE 1
        effect give @a[scores={Energy_Amplifiers=6,AE=10..},tag=!dead,distance=..600,predicate=namespace_vanilla:sneaking] regeneration 2 1 true
        scoreboard players remove @a[scores={Energy_Amplifiers=6,AE=0..},tag=!dead,distance=..600,predicate=namespace_vanilla:sneaking] AE 8

    # ustle
     execute as @a[scores={Energy_Amplifiers=7},tag=!dead,distance=..600] store result bossbar ae_hustle value run scoreboard players get @s AE
     scoreboard players add @a[scores={Energy_Amplifiers=7,AE=..120},nbt={active_effects:[{id:"minecraft:speed"}]},distance=..600,tag=!dead] AE 1
     scoreboard players add @a[scores={Energy_Amplifiers=7,AE=..120},nbt={active_effects:[{id:"minecraft:slowness"}]},distance=..600,tag=!dead] AE 1
     effect give @a[scores={Energy_Amplifiers=7,AE=119..},distance=..600,tag=!dead] jump_boost 8 2 true
     effect give @a[scores={Energy_Amplifiers=7,AE=119..},distance=..600,tag=!dead] haste 8 4 true
     effect clear @a[scores={Energy_Amplifiers=7,AE=20..},distance=..600,tag=!dead] weakness
     scoreboard players set @a[scores={Energy_Amplifiers=7,AE=119..},distance=..600,tag=!dead] AE 0
    #riftwalker
     execute as @a[scores={Energy_Amplifiers=8},tag=!dead,distance=..600] store result bossbar ae_rift_walker value run scoreboard players get @s AE
     scoreboard players add @a[scores={Energy_Amplifiers=8,AE=..100},tag=!dead,distance=..600,predicate=namespace_vanilla:sneaking] AE 1
     execute at @a[scores={Energy_Amplifiers=8,AE=100},tag=!dead,distance=..600,predicate=namespace_vanilla:sneaking] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:[rift]}
     scoreboard players add @a[scores={Energy_Amplifiers=8,AE=100..},tag=!dead,distance=..600] teleport_counter 1
     scoreboard players add @e[distance=..600,tag=rift,type=armor_stand] AE 1
     tp @a[distance=..600,tag=!dead,scores={Energy_Amplifiers=8,teleport_counter=200..}] @e[distance=..600,tag=rift,type=armor_stand,limit=1,scores={AE=200..}]
     effect give @a[distance=..600,tag=!dead,scores={Energy_Amplifiers=8,teleport_counter=200..}] slowness 3 3 true
     kill @e[distance=..600,tag=rift,type=armor_stand,limit=1,scores={AE=200..}]
     scoreboard players set @a[distance=..600,tag=!dead,scores={Energy_Amplifiers=8,AE=100..,teleport_counter=200..}] AE 0 
     scoreboard players set @a[distance=..600,tag=!dead,scores={Energy_Amplifiers=8,teleport_counter=200..}] teleport_counter 0 
     scoreboard players set @a[distance=..600,tag=dead,scores={Energy_Amplifiers=8}] teleport_counter 0 
     execute at @e[distance=..600,tag=rift,type=armor_stand] run particle portal ~ ~ ~ 0.1 0.5 0.1 0.03 30 force @a[distance=..600,tag=!dead,scores={Energy_Amplifiers=8}]


