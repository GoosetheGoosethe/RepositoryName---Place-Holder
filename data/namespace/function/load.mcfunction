spawnpoint @a 5 -59 14
setworldspawn 5 -59 14

#scorboards:

 #age
  scoreboard objectives add age dummy
 #dummy
  scoreboard objectives add dummycount dummy
  #text for debuging (**upgraded needs cleaning)
  execute store result score #entitycounter dummycount if entity @e
  tellraw @a[gamemode=creative] {text:"reloaded ver 1.9 (demo) {click for debug options, hover for debug text.}",click_event:{action:"run_command",command:"function namespace:debugging/debugtellraw"},hover_event:{action:"show_text",value:[{text:"entity counter: "},{score:{name:"#entitycounter",objective:"dummycount"}}]}} 
 #health
  scoreboard objectives add health health
  scoreboard objectives setdisplay below_name health
 #death
  scoreboard objectives add died deathCount
 #kys
  scoreboard objectives add SuicideButton trigger
 #item give scorboards (**better system upgrades needed here**)
 scoreboard objectives add shore dummy
 scoreboard objectives add utility dummy
 scoreboard objectives add munition dummy
 scoreboard objectives add weaponry dummy

 scoreboard objectives add item_used dummy
 #pyhsics keepers
    scoreboard objectives add motion_x1 dummy
    scoreboard objectives add motion_y1 dummy
    scoreboard objectives add motion_z1 dummy

    scoreboard objectives add motion_x2 dummy
    scoreboard objectives add motion_y2 dummy
    scoreboard objectives add motion_z2 dummy
#entity count debug (debug)
kill @e[type=interaction]

#loop kickstarters
 schedule function namespace:loops/5s_looper 1s
