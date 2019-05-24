scoreboard objectives add shoot_arrow minecraft.used:minecraft.bow

# summon TNT at the position of the arrow
execute as @a[scores={shoot_arrow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:tnt"}]}] at @s run function tntarrow:arrow2tnt

# homing TNT
execute as @e[type=arrow,tag=tntarrow] at @s run function tntarrow:homing_tnt

# explode TNT which landed in
# when hit ground or wall
execute as @e[type=arrow,tag=tntarrow,nbt={inGround:1b}] store result entity @e[type=tnt,tag=tntarrow,sort=nearest,limit=1] Fuse short 0 run data get entity @s inGround
kill @e[type=arrow,tag=tntarrow,nbt={inGround:1b}]
# when hit an entity
execute as @e[type=tnt,tag=tntarrow] at @s unless entity @e[type=arrow,tag=tntarrow,distance=..1] store result entity @s Fuse short 0 run data get entity @s Fuse

scoreboard players set @a shoot_arrow 0
