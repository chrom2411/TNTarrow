# summon a tnt at the arrow position
execute as @e[type=arrow,distance=..5,sort=nearest,limit=1] at @s run function tntarrow:summon_tnt

# expend tnt
clear @s minecraft:tnt 1

# supply arrow
execute unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:infinity"}]}}}] run give @s minecraft:arrow 1
