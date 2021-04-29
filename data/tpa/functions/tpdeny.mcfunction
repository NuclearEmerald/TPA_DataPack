execute as @a[scores={tpdeny=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute as @a[scores={tphelper=1..}] run execute if score @s tphelper = @p[scores={tpdeny=1..}] tpapid run tag @s add this
execute as @a[scores={tpdeny=1..}] run tellraw @p[tag=this] ["",{"text": "-","color": "gold"},{"selector":"@s"},{"text":" denied your teleport request","color":"red"},{"text": "-","color": "gold"}]
execute as @p[scores={tpdeny=1..}] run scoreboard players set @s tpty 0
execute if entity @a[scores={tpdeny=1..}] run scoreboard players reset @a[tag=this] tphelper
tag @a[scores={tpdeny=1..}] remove timer
scoreboard players reset @a[scores={tpdeny=1..}] t
scoreboard players reset @a[scores={tpdeny=1..}] s
scoreboard players reset @a[scores={tpdeny=1..}] m
scoreboard players reset @a[scores={tpdeny=1..}] tpdeny
tag @a remove this