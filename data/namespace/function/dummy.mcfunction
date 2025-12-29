scoreboard players add @a item_fireball 1
execute if score @a[limit=1] dummycount >= 2 dummycount run scoreboard players set @a dummycount 0
