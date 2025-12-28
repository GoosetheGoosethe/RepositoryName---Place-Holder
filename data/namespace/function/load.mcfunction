say Datapack reloaded, ver demo 0.3
spawnpoint @a -380 64 -2
#scorboards:
 #dummy
  scoreboard objectives add dummycount dummy
 #health
  scoreboard objectives add health health
  scoreboard objectives setdisplay below_name health
 #item give scorboards
  scoreboard objectives add item_fireball dummy
  scoreboard objectives add item_snowball dummy
  scoreboard objectives add item_fishing_rod dummy
  scoreboard objectives add item_enderpearl dummy
  scoreboard objectives add item_water_bucket dummy
  scoreboard objectives add item_tnt dummy
  scoreboard objectives add item_wool dummy
  scoreboard objectives add item_golden dummy

execute store result score @a dummycount if entity @e
say number of entities:
tellraw @p {score:{name:"@a",objective:"dummycount"}}

#git

