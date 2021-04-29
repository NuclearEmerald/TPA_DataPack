execute as @a[scores={tpapid=11..}] run scoreboard players set @s tpapid 10
execute as @a[scores={tpapid=..0}] run scoreboard players set @s tpapid 10
tag @r add tpapid_operation
scoreboard players operation .temp tpapid = @p[tag=tpapid_operation] tpapid
scoreboard players operation .temp tpapid -= 1 tpapid
execute unless score .temp tpapid < 1 tpapid run execute as @a if score @s tpapid = .temp tpapid run tag @s add found
execute unless entity @a[tag=found] run execute unless entity @a[scores={tpa=1..}] run execute unless entity @a[scores={tpatp=1..}] run execute unless entity @a[scores={tpty=1..}] run execute unless score .temp tpapid < 1 tpapid run scoreboard players operation @p[tag=tpapid_operation] tpapid = .temp tpapid
execute as @r run execute at @s if score @s tpapid = @r[distance=0.1..] tpapid run scoreboard players set @s tpapid 10
scoreboard players add @a tpapid 0
scoreboard players reset .temp tpapid
tag @a remove tpapid_operation
tag @a remove found