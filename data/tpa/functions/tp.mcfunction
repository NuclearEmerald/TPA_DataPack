tag @a[scores={tpatp=1..}] add tpar

tellraw @p[scores={tpatp=1..}] "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

execute as @a if entity @a[scores={tpatp=1..}] run execute if score @s tpapid = @s tpatp run tag @s add self

execute as @a[scores={tpatp=1..},tag=!self] run execute if score @s tphelper matches 1.. run tag @s add this
execute if entity @a[tag=this] run scoreboard players reset @a[scores={tpatp=1..}] tpatp
tellraw @p[tag=this] [{"text": "-","color": "gold"},{"text":"you can't teleport to more than one player at a time","color":"red"},{"text": "-","color": "gold"}]

scoreboard players operation .search tpapid = @p[scores={tpatp=1..}] tpatp
scoreboard players operation .search tpid = @p[scores={tpatp=1..}] tpapid

execute as @a if entity @a[scores={tpatp=1..},tag=!self] run execute if score @s tpapid = .search tpid run tag @s add this
execute as @p[tag=this] run scoreboard players operation @s tphelper = .search tpapid
execute as @a[tag=!this] if score @s tphelper = @p[tag=this] tphelper run scoreboard players reset @a[scores={tpatp=1..}] tpatp
execute as @a[tag=!this] if score @s tphelper = @p[tag=this] tphelper run tellraw @p[tag=this] [{"text": "-","color": "gold"},{"text":"another person is already trying to teleport to this player","color":"red"},{"text": "-","color": "gold"}]
execute as @a[tag=!this] if score @s tphelper = @p[tag=this] tphelper run scoreboard players reset @a[tag=this] tphelper 

execute as @a if entity @a[scores={tpatp=1..}] run execute unless score @s tpapid = @s tpatp run execute if score @s tpapid = .search tpapid run scoreboard players operation @s tpid = .search tpid

scoreboard players operation .search tping = @p[scores={tpid=1..}] tpid

execute as @a[scores={tpatp=1..}] if entity @a[scores={tpatp=1..}] run execute if score @s tpapid = .search tping run tag @s add tping

execute as @a[scores={tpid=1..}] run scoreboard players set @s tpty 1

execute as @a if entity @a[scores={tpatp=1..}] if entity @s[tag=self] run tellraw @s [{"text": "-","color": "gold"},{"text":"you can't teleport to yourself","color":"red"},{"text": "-","color": "gold"}]
execute as @a if entity @a[scores={tpatp=1..}] if entity @s[tag=self] run scoreboard players reset @s tphelper
execute as @a[scores={tpid=1..}] run execute run tellraw @s ["",{"text": "\n-----------------------------------------------------","color": "gold"},{"text": "\n"},{"selector":"@p[tag=tping]"},{"text":" is trying to tp to you\nyou have one minute to accept","color":"yellow"},{"text":"\n"},{"text":"[ACCEPT]","color":"green","clickEvent":{"action":"run_command","value":"/trigger tpaccept"}},{"text":"-","color":"gold"},{"text":"[DENY]","color":"red","clickEvent":{"action":"run_command","value":"/trigger tpdeny"}},{"text": "---------------------------------------","color": "gold"}]
execute as @a[tag=tping,tag=!self] run execute run tellraw @s ["",{"text": "\n-----------------------------------------------------","color": "gold"},{"text": "\n"},{"text":"you have sent a teleport request to ","color":"yellow"},{"selector":"@p[scores={tpid=1..}]"},{"text":"\nthey have one minute to accept","color":"yellow"},{"text":"\n"},{"text": "-----------------------------------------------------","color": "gold"}]
execute as @a[scores={tpid=1..}] run function tpa:timer
scoreboard players reset @a[tag=tpar] tpa
scoreboard players reset @a[scores={tpid=1..}] tpid
scoreboard players reset @a[scores={tpatp=1..}] tpatp
tag @a remove tping
tag @a remove this
tag @a remove self
tag @a remove tpar