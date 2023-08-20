# 执行者为pixel
execute store result score @s offset_x run data get entity @s Pos[0]
scoreboard players operation @s offset_x %= grid math
execute store result score @s offset_z run data get entity @s Pos[2]
scoreboard players operation @s offset_z %= grid math

tp @e[tag=cursor] @s
# northwest
execute as @e[tag=cursor] store result score @s pos_x run data get entity @s Pos[0]
execute as @e[tag=cursor] store result score @s pos_z run data get entity @s Pos[2]
scoreboard players operation @e[tag=cursor] pos_x /= grid math
scoreboard players operation @e[tag=cursor] pos_x *= grid math
scoreboard players operation @e[tag=cursor] pos_z /= grid math
scoreboard players operation @e[tag=cursor] pos_z *= grid math
execute as @e[tag=cursor] store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
execute as @e[tag=cursor] store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z
# add node
execute at @e[tag=cursor] as @e[tag=node,distance=..0.1] if score @s layer = layer math run tag @s add temp
execute at @e[tag=cursor] unless entity @e[tag=node,tag=temp,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["node","init","temp"]}
execute at @e[tag=cursor] as @e[tag=init,distance=..0.1] run function terrain:perlin/node
# calc
scoreboard players operation @s px = @s offset_x
execute at @e[tag=cursor] run scoreboard players operation @s px *= @e[tag=node,tag=temp,distance=..0.1] vector_x
scoreboard players operation @s pz = @s offset_z
execute at @e[tag=cursor] run scoreboard players operation @s pz *= @e[tag=node,tag=temp,distance=..0.1] vector_z
scoreboard players operation @s a = @s px
scoreboard players operation @s a += @s pz
# remove node
execute at @e[tag=cursor] run scoreboard players remove @e[tag=node,tag=temp,distance=..0.1] count 1
execute at @e[tag=cursor] run kill @e[tag=node,tag=temp,distance=..0.1,scores={count=0}]
# northeast
scoreboard players operation @e[tag=cursor] pos_x += grid math
execute as @e[tag=cursor] store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
# add node
execute at @e[tag=cursor] as @e[tag=node,distance=..0.1] if score @s layer = layer math run tag @s add temp
execute at @e[tag=cursor] unless entity @e[tag=node,tag=temp,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["node","init","temp"]}
execute at @e[tag=cursor] as @e[tag=init,distance=..0.1] run function terrain:perlin/node
# calc
scoreboard players operation @s px = @s offset_x
scoreboard players operation @s px -= grid math
execute at @e[tag=cursor] run scoreboard players operation @s px *= @e[tag=node,tag=temp,distance=..0.1] vector_x
scoreboard players operation @s pz = @s offset_z
execute at @e[tag=cursor] run scoreboard players operation @s pz *= @e[tag=node,tag=temp,distance=..0.1] vector_z
scoreboard players operation @s b = @s px
scoreboard players operation @s b += @s pz
scoreboard players operation @s interp_n = @s offset_x
scoreboard players operation @s interp_n *= -2 math
scoreboard players operation @s interp_n += 3g math
scoreboard players operation @s interp_n *= @s offset_x
scoreboard players operation @s interp_n *= @s offset_x
scoreboard players operation @s b -= @s a
scoreboard players operation @s interp_n *= @s b
scoreboard players operation @s interp_n /= ggg math
scoreboard players operation @s interp_n += @s a
# remove node
execute at @e[tag=cursor] run scoreboard players remove @e[tag=node,tag=temp,distance=..0.1] count 1
execute at @e[tag=cursor] run kill @e[tag=node,tag=temp,distance=..0.1,scores={count=0}]
# southeast
scoreboard players operation @e[tag=cursor] pos_z += grid math
execute as @e[tag=cursor] store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z
# add node
execute at @e[tag=cursor] as @e[tag=node,distance=..0.1] if score @s layer = layer math run tag @s add temp
execute at @e[tag=cursor] unless entity @e[tag=node,tag=temp,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["node","init","temp"]}
execute at @e[tag=cursor] as @e[tag=init,distance=..0.1] run function terrain:perlin/node
# calc
scoreboard players operation @s px = @s offset_x
scoreboard players operation @s px -= grid math
execute at @e[tag=cursor] run scoreboard players operation @s px *= @e[tag=node,tag=temp,distance=..0.1] vector_x
scoreboard players operation @s pz = @s offset_z
scoreboard players operation @s pz -= grid math
execute at @e[tag=cursor] run scoreboard players operation @s pz *= @e[tag=node,tag=temp,distance=..0.1] vector_z
scoreboard players operation @s b = @s px
scoreboard players operation @s b += @s pz
# remove node
execute at @e[tag=cursor] run scoreboard players remove @e[tag=node,tag=temp,distance=..0.1] count 1
execute at @e[tag=cursor] run kill @e[tag=node,tag=temp,distance=..0.1,scores={count=0}]
# southwest
scoreboard players operation @e[tag=cursor] pos_x -= grid math
execute as @e[tag=cursor] store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
# add node
execute at @e[tag=cursor] as @e[tag=node,distance=..0.1] if score @s layer = layer math run tag @s add temp
execute at @e[tag=cursor] unless entity @e[tag=node,tag=temp,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["node","init","temp"]}
execute at @e[tag=cursor] as @e[tag=init,distance=..0.1] run function terrain:perlin/node
# calc
scoreboard players operation @s px = @s offset_x
execute at @e[tag=cursor] run scoreboard players operation @s px *= @e[tag=node,tag=temp,distance=..0.1] vector_x
scoreboard players operation @s pz = @s offset_z
scoreboard players operation @s pz -= grid math
execute at @e[tag=cursor] run scoreboard players operation @s pz *= @e[tag=node,tag=temp,distance=..0.1] vector_z
scoreboard players operation @s a = @s px
scoreboard players operation @s a += @s pz
scoreboard players operation @s interp_s = @s offset_x
scoreboard players operation @s interp_s *= -2 math
scoreboard players operation @s interp_s += 3g math
scoreboard players operation @s interp_s *= @s offset_x
scoreboard players operation @s interp_s *= @s offset_x
scoreboard players operation @s b -= @s a
scoreboard players operation @s interp_s *= @s b
scoreboard players operation @s interp_s /= ggg math
scoreboard players operation @s interp_s += @s a
# remove node
execute at @e[tag=cursor] run scoreboard players remove @e[tag=node,tag=temp,distance=..0.1] count 1
execute at @e[tag=cursor] run kill @e[tag=node,tag=temp,distance=..0.1,scores={count=0}]

scoreboard players operation @s interp = @s offset_z
scoreboard players operation @s interp *= -2 math
scoreboard players operation @s interp += 3g math
scoreboard players operation @s interp *= @s offset_z
scoreboard players operation @s interp *= @s offset_z
scoreboard players operation @s interp_s -= @s interp_n
scoreboard players operation @s interp *= @s interp_s
scoreboard players operation @s interp /= ggg math
scoreboard players operation @s interp += @s interp_n
scoreboard players operation @s interp *= variation math
scoreboard players operation @s perlin += @s interp

execute if score layer math = layer global run scoreboard players operation @s perlin /= gr math
execute if score layer math = layer global run scoreboard players operation @s perlin += height global