summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0,Duration:1,Tags:["fern","temp"]}
spreadplayers ~ ~ 0 4 false @e[tag=fern,tag=temp]

execute as @e[tag=fern,tag=temp] at @s if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:fern
setblock ~ ~ ~ minecraft:fern

kill @e[tag=fern,tag=temp]
kill @s[tag=fern]