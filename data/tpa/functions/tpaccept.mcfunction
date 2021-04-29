execute as @a[scores={tpaccept=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute as @a[scores={tphelper=1..}] run execute if score @s tphelper = @p[scores={tpaccept=1..}] tpapid run tag @s add this
execute as @a[scores={tpaccept=1..}] run tp @p[tag=this] @s
execute as @p[scores={tpaccept=1..}] run scoreboard players set @s tpty 0
execute if entity @a[scores={tpaccept=1..}] run scoreboard players reset @a[tag=this] tphelper
tag @a[scores={tpaccept=1..}] remove timer
scoreboard players reset @a[scores={tpaccept=1..}] t
scoreboard players reset @a[scores={tpaccept=1..}] s
scoreboard players reset @a[scores={tpaccept=1..}] m
scoreboard players reset @a[scores={tpaccept=1..}] tpaccept
tag @a remove this