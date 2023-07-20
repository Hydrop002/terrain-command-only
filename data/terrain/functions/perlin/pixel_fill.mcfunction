# 执行者为temp
execute positioned ~1 ~ ~ unless entity @e[tag=pixel,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["pixel","temp"]}
execute positioned ~1 ~ ~ run scoreboard players operation @e[tag=pixel,distance=..0.1] rand = @s rand
execute positioned ~ ~ ~1 unless entity @e[tag=pixel,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["pixel","temp"]}
execute positioned ~ ~ ~1 run scoreboard players operation @e[tag=pixel,distance=..0.1] rand = @s rand
execute positioned ~1 ~ ~1 unless entity @e[tag=pixel,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:2147483647,Tags:["pixel","temp"]}
execute positioned ~1 ~ ~1 run scoreboard players operation @e[tag=pixel,distance=..0.1] rand = @s rand
tag @s remove temp