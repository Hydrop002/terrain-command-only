# 执行者为proxy
execute if block ~ ~ ~ minecraft:air unless entity @e[tag=todo,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["todo"]}
execute as @e[tag=todo,distance=..0.1] unless score @s state matches -2147483647..2147483647 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["pixel","temp"]}
execute as @e[tag=todo,distance=..0.1] unless score @s state matches -2147483648..2147483647 run scoreboard players set @s state 0
execute as @e[tag=todo,distance=..0.1] unless score @s rand matches -2147483648..2147483647 store result score @s rand run data get entity @s UUIDLeast 0.0000000001
execute as @e[tag=pixel,distance=..0.1] unless score @s rand matches -2147483648..2147483647 run scoreboard players operation @s rand = @e[tag=todo,distance=..0.1,limit=1] rand