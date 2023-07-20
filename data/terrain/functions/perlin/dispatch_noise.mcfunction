# 执行者为todo
execute as @e[tag=pixel] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand at @s run function terrain:perlin/noise
scoreboard players set @s state 2