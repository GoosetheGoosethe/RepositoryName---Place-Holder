say Datapack reloaded, ver demo 1.2
spawnpoint @a 5 -59 14
setworldspawn 5 -59 14

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

#entity count debug
 execute store result score #a dummycount if entity @e
 say number of entities:
 tellraw @p {score:{name:"#a",objective:"dummycount"}}

#loop kickstarters
 schedule function namespace:loops/revoke_advancement 1t
 schedule function namespace:loops/5s_looper 5s