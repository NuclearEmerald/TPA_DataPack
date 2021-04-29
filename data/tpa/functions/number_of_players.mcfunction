execute store result score .player_count nop if entity @a
execute if score .player_count nop matches 11.. run bossbar add warning {"text":"YOU HAVE TOO MANY PLAYERS THE MAX IS 10","bold":true,"italic":true,"color":"#FF0005"}
execute if score .player_count nop matches 11.. run bossbar set warning color red
execute if score .player_count nop matches 11.. run bossbar set warning players @a
execute unless score .player_count nop matches 11.. run bossbar remove warning