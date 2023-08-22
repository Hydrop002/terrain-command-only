# 通用
scoreboard objectives add global dummy
scoreboard objectives add math dummy
scoreboard objectives add state dummy
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add count dummy
scoreboard objectives add rand dummy
scoreboard objectives add depth dummy
# 柏林噪声
scoreboard objectives add layer dummy
scoreboard objectives add grid dummy
scoreboard objectives add variation dummy
scoreboard objectives add vector_x dummy
scoreboard objectives add vector_z dummy
scoreboard objectives add offset_x dummy
scoreboard objectives add offset_z dummy
scoreboard objectives add px dummy
scoreboard objectives add pz dummy
scoreboard objectives add a dummy
scoreboard objectives add b dummy
scoreboard objectives add interp_n dummy
scoreboard objectives add interp_s dummy
scoreboard objectives add interp dummy
scoreboard objectives add perlin dummy

scoreboard objectives setdisplay sidebar global

# 通用
execute unless score radius global matches -2147483648..2147483647 run scoreboard players set radius global 3
execute unless score unit global matches -2147483648..2147483647 run scoreboard players set unit global 16
# 柏林噪声
execute unless score layer global matches -2147483648..2147483647 run scoreboard players set layer global 2
execute unless score grid global matches -2147483648..2147483647 run scoreboard players set grid global 64
execute unless score range global matches -2147483648..2147483647 run scoreboard players set range global 16
execute unless score height global matches -2147483648..2147483647 run scoreboard players set height global 64
execute unless score variation global matches -2147483648..2147483647 run scoreboard players set variation global 32

# 常数
scoreboard players set 0 math 0
scoreboard players set 1 math 1
scoreboard players set 2 math 2
scoreboard players set 3 math 3
scoreboard players set 4 math 4
scoreboard players set 5 math 5
scoreboard players set 6 math 6
scoreboard players set 7 math 7
scoreboard players set 8 math 8
scoreboard players set 9 math 9
scoreboard players set 10 math 10
scoreboard players set 11 math 11
scoreboard players set 12 math 12
scoreboard players set 13 math 13
scoreboard players set 14 math 14
scoreboard players set 15 math 15
scoreboard players set 16 math 16
scoreboard players set 32 math 32
scoreboard players set 64 math 64
scoreboard players set 128 math 128
scoreboard players set 256 math 256
scoreboard players set -1 math -1
scoreboard players set -2 math -2
scoreboard players set -3 math -3
scoreboard players set -4 math -4
scoreboard players set -5 math -5
scoreboard players set -6 math -6
scoreboard players set -7 math -7
scoreboard players set -8 math -8
scoreboard players set -9 math -9
scoreboard players set -10 math -10
scoreboard players set -11 math -11
scoreboard players set -12 math -12
scoreboard players set -13 math -13
scoreboard players set -14 math -14
scoreboard players set -15 math -15
scoreboard players set -16 math -16

gamerule commandBlockOutput false
