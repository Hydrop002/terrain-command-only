# 执行者为proxy
execute if block ~ ~ ~ minecraft:air unless entity @e[tag=todo,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["pixel","todo","temp"]}
execute as @e[tag=todo,distance=..0.1] unless score @s state matches -2147483648..2147483647 run scoreboard players set @s state 0
execute as @e[tag=todo,distance=..0.1] unless score @s rand matches -2147483648..2147483647 store result score @s rand run data get entity @s UUIDLeast 0.0000000001