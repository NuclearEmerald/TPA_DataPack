scoreboard players enable @a tpa
scoreboard players enable @a tpainfo
scoreboard players enable @a tpahelp
scoreboard players enable @a[scores={tpty=1..}] tpaccept
scoreboard players reset @a[scores={tpty=..0}] tpaccept
scoreboard players enable @a[scores={tpty=1..}] tpdeny
scoreboard players reset @a[scores={tpty=..0}] tpdeny
scoreboard players enable @a[scores={tpa=1..}] tpatp
scoreboard players reset @a[scores={tpa=..0}] tpatp
scoreboard players enable @a[scores={tpa=1..}] tpacancel
scoreboard players reset @a[scores={tpa=..0}] tpacancel

execute if entity @a[scores={tpa=1..}] run function tpa:tpa
execute if entity @a[scores={tpacancel=1..}] run function tpa:cancel
execute if entity @a[scores={tpatp=1..}] run function tpa:tp
execute if entity @a[scores={tpaccept=1..}] run function tpa:tpaccept
execute if entity @a[scores={tpdeny=1..}] run function tpa:tpdeny
function tpa:player_id
function tpa:number_of_players
function tpa:timer
execute if entity @a[scores={tpahelp=1..}] run function tpa:info
execute as @a[scores={tpainfo=1..}] run function tpa:tpa_gui

execute as @a[scores={back=1}] run function tpa:gui_init_back