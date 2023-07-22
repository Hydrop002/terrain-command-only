# 执行者为proxy
tp @e[tag=cursor] @s
execute as @e[tag=cursor] store result score @s pos_x run data get entity @s Pos[0]
scoreboard players operation @e[tag=cursor] pos_x += unit global
execute as @e[tag=cursor] store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
execute as @e[tag=cursor] at @s run tp @s ~0.5 ~ ~

execute at @e[tag=cursor] unless entity @e[tag=proxy,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:20,Tags:["proxy"]}
execute at @e[tag=cursor] run data merge entity @e[tag=proxy,distance=..0.1,limit=1] {Duration:20}
execute at @e[tag=cursor] run scoreboard players operation @e[tag=proxy,distance=..0.1] depth = @s depth
execute at @e[tag=cursor] run scoreboard players remove @e[tag=proxy,distance=..0.1] depth 1

tp @e[tag=cursor] @s
execute as @e[tag=cursor] store result score @s pos_x run data get entity @s Pos[0]
scoreboard players operation @e[tag=cursor] pos_x -= unit global
execute as @e[tag=cursor] store result entity @s Pos[0] double 1 run scoreboard players get @s pos_x
execute as @e[tag=cursor] at @s run tp @s ~0.5 ~ ~

execute at @e[tag=cursor] unless entity @e[tag=proxy,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:20,Tags:["proxy"]}
execute at @e[tag=cursor] run data merge entity @e[tag=proxy,distance=..0.1,limit=1] {Duration:20}
execute at @e[tag=cursor] run scoreboard players operation @e[tag=proxy,distance=..0.1] depth = @s depth
execute at @e[tag=cursor] run scoreboard players remove @e[tag=proxy,distance=..0.1] depth 1

tp @e[tag=cursor] @s
execute as @e[tag=cursor] store result score @s pos_z run data get entity @s Pos[2]
scoreboard players operation @e[tag=cursor] pos_z += unit global
execute as @e[tag=cursor] store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z
execute as @e[tag=cursor] at @s run tp @s ~ ~ ~0.5

execute at @e[tag=cursor] unless entity @e[tag=proxy,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:20,Tags:["proxy"]}
execute at @e[tag=cursor] run data merge entity @e[tag=proxy,distance=..0.1,limit=1] {Duration:20}
execute at @e[tag=cursor] run scoreboard players operation @e[tag=proxy,distance=..0.1] depth = @s depth
execute at @e[tag=cursor] run scoreboard players remove @e[tag=proxy,distance=..0.1] depth 1

tp @e[tag=cursor] @s
execute as @e[tag=cursor] store result score @s pos_z run data get entity @s Pos[2]
scoreboard players operation @e[tag=cursor] pos_z -= unit global
execute as @e[tag=cursor] store result entity @s Pos[2] double 1 run scoreboard players get @s pos_z
execute as @e[tag=cursor] at @s run tp @s ~ ~ ~0.5

execute at @e[tag=cursor] unless entity @e[tag=proxy,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:20,Tags:["proxy"]}
execute at @e[tag=cursor] run data merge entity @e[tag=proxy,distance=..0.1,limit=1] {Duration:20}
execute at @e[tag=cursor] run scoreboard players operation @e[tag=proxy,distance=..0.1] depth = @s depth
execute at @e[tag=cursor] run scoreboard players remove @e[tag=proxy,distance=..0.1] depth 1
