summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["grass","temp"]}
spreadplayers ~ ~ 0 4 false @e[tag=grass,tag=temp]

execute as @e[tag=grass,tag=temp] at @s if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:grass
setblock ~ ~ ~ minecraft:grass

kill @e[tag=grass,tag=temp]
kill @s[tag=grass]