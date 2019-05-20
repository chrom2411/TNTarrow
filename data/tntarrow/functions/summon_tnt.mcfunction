# summon a arrow with tnt
summon tnt ~ ~ ~ {Tags:["tntarrow"],Fuse:1000s}

# set tag and damage=0 to the arrow
tag @s add tntarrow
execute as @s store result entity @s damage double 0 run data get entity @s inGround
