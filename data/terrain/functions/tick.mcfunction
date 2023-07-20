
execute as @a[tag=op] at @s run function terrain:perlin/todo
execute as @e[tag=todo,scores={state=0}] at @s run function terrain:perlin/pixel
execute as @e[tag=todo,scores={state=1}] at @s run function terrain:perlin/dispatch_noise
execute at @e[tag=todo,scores={state=2}] as @e[tag=pixel] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand at @s run function terrain:perlin/generate
