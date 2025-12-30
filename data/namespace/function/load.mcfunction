spawnpoint @a 5 -59 14
setworldspawn 5 -59 14

#scorboards:
 #dummy
  scoreboard objectives add dummycount dummy
  #text for debuging (**upgraded needs cleaning)
  execute store result score #entitycounter dummycount if entity @e
  tellraw @a[gamemode=creative] {text:"reloaded ver 1.3 (demo) {click for debug options, hover for debug text.}",hover_event:{action:"show_text",value:[{score:{name:"#entitycounter",objective:"dummycount"}}]}}
 #health
  scoreboard objectives add health health
  scoreboard objectives setdisplay below_name health
 #kys
  scoreboard objectives add SuicideButton trigger
 #item give scorboards (**better system upgrades needed here**)
  scoreboard objectives add item_fireball dummy
  scoreboard objectives add item_snowball dummy
  scoreboard objectives add item_fishing_rod dummy
  scoreboard objectives add item_enderpearl dummy
  scoreboard objectives add item_water_bucket dummy
  scoreboard objectives add item_tnt dummy
  scoreboard objectives add item_wool dummy
  scoreboard objectives add item_golden dummy

#entity count debug (debug)


#loop kickstarters
 schedule function namespace:loops/revoke_advancement 1t
 schedule function namespace:loops/5s_looper 5s