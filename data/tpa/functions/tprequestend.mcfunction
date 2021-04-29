tag @s add temp
execute as @a[scores={tphelper=1..}] if score @s tphelper = @p[tag=temp] tpapid run tag @s add this
scoreboard players set @s tpty 0
scoreboard players reset @a[tag=this] tphelper
tellraw @p[tag=this] ["",{"text": "-","color": "gold"},{"text":"your teleport request to ","color":"red"},{"selector":"@p[tag=temp]"},{"text":" has expired","color":"red"},{"text": "-","color": "gold"}]
tellraw @p[tag=temp] ["",{"text": "-","color": "gold"},{"text":"the teleport request from ","color":"red"},{"selector":"@p[tag=this]"},{"text":" has expired","color":"red"},{"text": "-","color": "gold"}]
tag @s remove temp
tag @a[tag=this] remove this
scoreboard players reset @s tpam
tag @s remove timer