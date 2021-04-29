tag @s add timer
execute as @a[tag=timer] if score @s tpat matches 20.. run scoreboard players add @s tpas 1
execute as @a[tag=timer] if score @s tpat matches 20.. run scoreboard players reset @s tpat
execute as @a[tag=timer] if score @s tpas matches 60.. run scoreboard players add @s tpam 1
execute as @a[tag=timer] if score @s tpas matches 60.. run scoreboard players reset @s tpas
scoreboard players add @a[tag=timer] tpat 1
execute as @a[scores={tpam=1..}] run function tpa:tprequestend