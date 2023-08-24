# 执行者为node
execute store result score @s vector_x run data get entity @s UUIDLeast 0.0000000001
execute store result score @s vector_z run data get entity @s UUIDMost 0.0000000001
scoreboard players operation @s math = range global
scoreboard players operation @s math *= 2 math
scoreboard players operation @s vector_x %= @s math
scoreboard players operation @s vector_z %= @s math
scoreboard players operation @s vector_x -= range global
scoreboard players operation @s vector_z -= range global
scoreboard players reset @s math

scoreboard players operation @s count = grid math
scoreboard players operation @s count *= 2 math
scoreboard players operation @s count *= @s count

scoreboard players operation @s layer = layer math

tag @s remove init