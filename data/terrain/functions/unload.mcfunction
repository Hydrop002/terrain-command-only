scoreboard objectives remove global
scoreboard objectives remove math
scoreboard objectives remove state
scoreboard objectives remove pos_x
scoreboard objectives remove pos_z
scoreboard objectives remove count
scoreboard objectives remove rand
scoreboard objectives remove depth

scoreboard objectives remove layer
scoreboard objectives remove grid
scoreboard objectives remove variation
scoreboard objectives remove vector_x
scoreboard objectives remove vector_z
scoreboard objectives remove offset_x
scoreboard objectives remove offset_z
scoreboard objectives remove px
scoreboard objectives remove pz
scoreboard objectives remove a
scoreboard objectives remove b
scoreboard objectives remove interp_n
scoreboard objectives remove interp_s
scoreboard objectives remove interp
scoreboard objectives remove perlin

tag @a remove op
kill @e[type=minecraft:area_effect_cloud]

tellraw @a {"text":"已卸载数据包","color":"red"}