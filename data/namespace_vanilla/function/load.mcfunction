spawnpoint @a 5 -59 14
setworldspawn 5 -59 14

#text for debuging (**upgraded needs cleaning)
  execute store result score #entitycounter dummycount if entity @e
  tellraw @a[gamemode=creative] {text:"reloaded ver 1.14 (demo) {click for debug options, hover for debug text.}",click_event:{action:"run_command",command:"function namespace:debugging/debugtellraw"},hover_event:{action:"show_text",value:[{text:"entity counter: "},{score:{name:"#entitycounter",objective:"dummycount"}}]}} 

#bossbars
   #descention
    bossbar add ae_descention [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_descention max 40
   #athletics
    bossbar add ae_athletics [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_athletics max 300
   #weary
    bossbar add ae_weary [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_weary max 300
   #metal heart
    bossbar add ae_metal_heart [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_metal_heart max 220
   #ticker
    bossbar add ae_ticker [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_ticker max 20
   #eulogy
    bossbar add ae_eulogy [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_eulogy max 100
   #hustle
    bossbar add ae_hustle [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_hustle max 120
   #rift walker
    bossbar add ae_rift_walker [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_rift_walker max 100
   #libation
    bossbar add ae_libation [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_libation max 300
   #imperceptible
    bossbar add ae_imperceptible [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_imperceptible max 300
   #unremarkable
    bossbar add ae_unremarkable [{"color":"#1354AB","text":"A"},{"color":"#234EA5","text":"m"},{"color":"#3249A0","text":"p"},{"color":"#42439A","text":"l"},{"color":"#523E94","text":"i"},{"color":"#62388E","text":"f"},{"color":"#713289","text":"i"},{"color":"#812D83","text":"e"},{"color":"#91277D","text":"r "},{"color":"#A12277","text":"E"},{"color":"#B01C72","text":"n"},{"color":"#C0166C","text":"e"},{"color":"#D01166","text":"r"},{"color":"#E00B60","text":"g"},{"color":"#FF0055","text":"y"}]
    bossbar set ae_unremarkable max 300

#scorboards:

 #tp
   scoreboard objectives add teleport_counter dummy
 #status effects
    
    scoreboard objectives add bleeding dummy
    scoreboard objectives add concused dummy

 #age
  scoreboard objectives add age dummy
 #dummy
  scoreboard objectives add dummycount dummy
  scoreboard objectives add random dummy
 #health
  scoreboard objectives add health health
  scoreboard objectives setdisplay below_name health
 #death
  scoreboard objectives add died deathCount
 #kys
  scoreboard objectives add SuicideButton trigger
 #item give scorboards
 scoreboard objectives add shore dummy
 scoreboard objectives add utility dummy
 scoreboard objectives add munition dummy
 scoreboard objectives add weaponry dummy

 scoreboard objectives add item_used dummy
 #Apmlifier scorboards
    scoreboard objectives add Passive_Amplifiers dummy
    scoreboard objectives add Energy_Amplifiers dummy
    scoreboard objectives add AE dummy
 #pyhsics keepers
    scoreboard objectives add motion_x1 dummy
    scoreboard objectives add motion_y1 dummy
    scoreboard objectives add motion_z1 dummy

    scoreboard objectives add motion_x2 dummy
    scoreboard objectives add motion_y2 dummy
    scoreboard objectives add motion_z2 dummy
#entity count debug (debug)
kill @e[type=interaction]
kill @e[type=text_display]

#loop kickstarters
 schedule function namespace_vanilla:loops/5s_looper 1s
