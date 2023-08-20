# 执行者为pixel
execute at @s run setblock ~ 0 ~ minecraft:bedrock
kill @s
scoreboard players remove @e[tag=todo,distance=..0.1] count 1
kill @e[tag=todo,distance=..0.1,scores={count=0}]