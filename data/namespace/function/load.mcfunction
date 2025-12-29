say Datapack reloaded, ver demo 1.1
spawnpoint @a 5 -59 14
setworldspawn 5 -59 14
execute unless entity @e[tag=GameTp,type=interaction,limit=1] run summon interaction 5 -60 9 {width:15,height:15,Tags:["GameTP"]}
#scorboards:
 #dummy
  scoreboard objectives add dummycount dummy
 #health
  scoreboard objectives add health health
  scoreboard objectives setdisplay below_name health
 #kys
  scoreboard objectives add SuicideButton trigger
  
 #item give scorboards
  scoreboard objectives add item_fireball dummy
  scoreboard objectives add item_snowball dummy
  scoreboard objectives add item_fishing_rod dummy
  scoreboard objectives add item_enderpearl dummy
  scoreboard objectives add item_water_bucket dummy
  scoreboard objectives add item_tnt dummy
  scoreboard objectives add item_wool dummy
  scoreboard objectives add item_golden dummy

execute store result score #a dummycount if entity @e
say number of entities:
tellraw @p {score:{name:"#a",objective:"dummycount"}}

#git

schedule function namespace:revoke_advancement 1t