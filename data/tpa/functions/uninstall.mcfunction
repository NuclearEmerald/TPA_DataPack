scoreboard objectives remove tpa
scoreboard objectives remove tpacancel
scoreboard objectives remove tpatp
scoreboard objectives remove tpty
scoreboard objectives remove tpdeny
scoreboard objectives remove tpaccept
scoreboard objectives remove tpainfo
scoreboard objectives remove tpahelp
scoreboard objectives remove tpapid
scoreboard objectives remove tpid
scoreboard objectives remove tping
scoreboard objectives remove nop
scoreboard objectives remove tphelper
scoreboard objectives remove tpam
scoreboard objectives remove tpas
scoreboard objectives remove tpat
bossbar remove warning
execute store result score .uninstall zip run datapack disable "file/TPA DataPack - FOR REALMS - 1.0.1.zip"
execute store result score .uninstall unzip run datapack disable "file/TPA DataPack - FOR REALMS - 1.0.1"
execute if score .uninstall unzip matches 1.. run tellraw @s ["",{"text": "\n-----------------------------------------------------\n","color": "gold"},{"text":"YOU HAVE UNINSTALLED","color":"yellow"},{"text":" NuclearEmerald Gaming's ","color":"green"},{"text":"TPA DataPack.","color":"aqua"},{"text":"\n"},{"text":"To reinstall click the button below\n","color":"red"},{"text":"[REINSTALL]","color":"dark_red","clickEvent":{"action":"run_command","value":"/datapack enable \"file/TPA DataPack - FOR REALMS - 1.0.1\""}},{"text": "-------------------------------------------","color": "gold"}]
execute if score .uninstall zip matches 1.. run tellraw @s ["",{"text": "\n-----------------------------------------------------\n","color": "gold"},{"text":"YOU HAVE UNINSTALLED","color":"yellow"},{"text":" NuclearEmerald Gaming's ","color":"green"},{"text":"TPA DataPack.","color":"aqua"},{"text":"\n"},{"text":"To reinstall click the button below\n","color":"red"},{"text":"[REINSTALL]","color":"dark_red","clickEvent":{"action":"run_command","value":"/datapack enable \"file/TPA DataPack - FOR REALMS - 1.0.1.zip\""}},{"text": "-------------------------------------------","color": "gold"}]
scoreboard players set @s zip 0
scoreboard players set @s unzip 0