# 执行者为todo
execute unless score @s count matches -2147483648..2147483647 run scoreboard players operation @s count = unit global
execute if score @s count matches 2.. as @e[tag=temp] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand at @s run function terrain:perlin/pixel_fill
execute if score @s count matches 2.. run scoreboard players remove @s count 1
execute if score @s count matches 1 as @e[tag=temp] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand run tag @s remove temp
execute if score @s count matches 1 run scoreboard players set @s state 1