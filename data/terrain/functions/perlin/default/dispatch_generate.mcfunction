# 执行者为todo
execute as @e[tag=pixel] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand run function terrain:perlin/default/generate