# 执行者为todo
execute unless score @s layer matches -2147483648..2147483647 run scoreboard players set @s layer 1
execute if score @s layer matches 1 run scoreboard players operation @s grid = grid global
execute if score @s layer matches 1 run scoreboard players operation @s variation = variation global
scoreboard players operation layer math = @s layer
scoreboard players operation grid math = @s grid
scoreboard players operation variation math = @s variation
scoreboard players operation ggg math = grid math
scoreboard players operation ggg math *= grid math
scoreboard players operation ggg math *= grid math
scoreboard players operation 3g math = grid math
scoreboard players operation 3g math *= 3 math
scoreboard players operation gr math = grid math
scoreboard players operation gr math *= range global

execute as @e[tag=pixel] if score @s rand = @e[tag=todo,distance=..0.1,limit=1] rand at @s run function terrain:perlin/noise
tag @e[tag=node] remove temp

scoreboard players add @s layer 1
scoreboard players operation @s grid /= 2 math
scoreboard players operation @s variation /= 2 math
execute if score @s layer > layer global run scoreboard players set @s state 2