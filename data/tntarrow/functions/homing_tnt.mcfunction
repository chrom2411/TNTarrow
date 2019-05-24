teleport @e[type=tnt,tag=tntarrow,sort=nearest,limit=1] @s

# copy velocities of the arrow to the tnt
execute store result entity @e[type=tnt,tag=tntarrow,sort=nearest,limit=1] Motion[0] double 0.00001 run data get entity @s Motion[0] 100000
execute store result entity @e[type=tnt,tag=tntarrow,sort=nearest,limit=1] Motion[1] double 0.00001 run data get entity @s Motion[1] 100000
execute store result entity @e[type=tnt,tag=tntarrow,sort=nearest,limit=1] Motion[2] double 0.00001 run data get entity @s Motion[2] 100000
