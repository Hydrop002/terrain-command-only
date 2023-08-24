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
execute unless score layer global matches -2147483648..2147483647 run scoreboard players set layer global 3
execute unless score grid global matches -2147483648..2147483647 run scoreboard players set grid global 64
execute unless score range global matches -2147483648..2147483647 run scoreboard players set range global 32
execute unless score height global matches -2147483648..2147483647 run scoreboard players set height global 64
execute unless score variation global matches -2147483648..2147483647 run scoreboard players set variation global 64

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
scoreboard players set 17 math 17
scoreboard players set 18 math 18
scoreboard players set 19 math 19
scoreboard players set 20 math 20
scoreboard players set 21 math 21
scoreboard players set 22 math 22
scoreboard players set 23 math 23
scoreboard players set 24 math 24
scoreboard players set 25 math 25
scoreboard players set 26 math 26
scoreboard players set 27 math 27
scoreboard players set 28 math 28
scoreboard players set 29 math 29
scoreboard players set 30 math 30
scoreboard players set 31 math 31
scoreboard players set 32 math 32
scoreboard players set 33 math 33
scoreboard players set 34 math 34
scoreboard players set 35 math 35
scoreboard players set 36 math 36
scoreboard players set 37 math 37
scoreboard players set 38 math 38
scoreboard players set 39 math 39
scoreboard players set 40 math 40
scoreboard players set 41 math 41
scoreboard players set 42 math 42
scoreboard players set 43 math 43
scoreboard players set 44 math 44
scoreboard players set 45 math 45
scoreboard players set 46 math 46
scoreboard players set 47 math 47
scoreboard players set 48 math 48
scoreboard players set 49 math 49
scoreboard players set 50 math 50
scoreboard players set 51 math 51
scoreboard players set 52 math 52
scoreboard players set 53 math 53
scoreboard players set 54 math 54
scoreboard players set 55 math 55
scoreboard players set 56 math 56
scoreboard players set 57 math 57
scoreboard players set 58 math 58
scoreboard players set 59 math 59
scoreboard players set 60 math 60
scoreboard players set 61 math 61
scoreboard players set 62 math 62
scoreboard players set 63 math 63
scoreboard players set 64 math 64
scoreboard players set 128 math 128
scoreboard players set 256 math 256
scoreboard players set 512 math 512
scoreboard players set 1024 math 1024
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
scoreboard players set -17 math -17
scoreboard players set -18 math -18
scoreboard players set -19 math -19
scoreboard players set -20 math -20
scoreboard players set -21 math -21
scoreboard players set -22 math -22
scoreboard players set -23 math -23
scoreboard players set -24 math -24
scoreboard players set -25 math -25
scoreboard players set -26 math -26
scoreboard players set -27 math -27
scoreboard players set -28 math -28
scoreboard players set -29 math -29
scoreboard players set -30 math -30
scoreboard players set -31 math -31
scoreboard players set -32 math -32
scoreboard players set -33 math -33
scoreboard players set -34 math -34
scoreboard players set -35 math -35
scoreboard players set -36 math -36
scoreboard players set -37 math -37
scoreboard players set -38 math -38
scoreboard players set -39 math -39
scoreboard players set -40 math -40
scoreboard players set -41 math -41
scoreboard players set -42 math -42
scoreboard players set -43 math -43
scoreboard players set -44 math -44
scoreboard players set -45 math -45
scoreboard players set -46 math -46
scoreboard players set -47 math -47
scoreboard players set -48 math -48
scoreboard players set -49 math -49
scoreboard players set -50 math -50
scoreboard players set -51 math -51
scoreboard players set -52 math -52
scoreboard players set -53 math -53
scoreboard players set -54 math -54
scoreboard players set -55 math -55
scoreboard players set -56 math -56
scoreboard players set -57 math -57
scoreboard players set -58 math -58
scoreboard players set -59 math -59
scoreboard players set -60 math -60
scoreboard players set -61 math -61
scoreboard players set -62 math -62
scoreboard players set -63 math -63

gamerule commandBlockOutput false
