execute as @a[scores={tpahelp=1..}] run tellraw @s ["",{"text": "\n\n-----------------------------------------------------\n","color": "gold"},{"text":"IMPORTANT","color":"#FF0005"},{"text": ": ","color": "gold"},{"text":"Made for realms so only supports up to ","color":"gold"},{"text":"10","underlined":true,"color":"gold"},{"text":" players","color":"gold"},{"text":"\n\n "},{"text":"Instructions: ","color":"gold"},{"text":"Run /trigger tpa and click on the name of the player you want to tp to. The player you tried to tp to will get a message saying you want to tp with the option to accept or deny. They will have one minute to accept before the request expires. If they accept you will be teleported to them if they deny you will be sent a message saying they denied the request. To exit the TPA menu without sending a request to anyone just click the cancel button at the bottom of the menu.","color":"green"},{"text":"\n "},{"text":"if you need more info this video will explain the process step by step ","color":"green"},{"text":"[VIDEO]","bold":true,"color":"dark_green","clickEvent": {"action": "open_url","value": "https://www.youtube.com/watch?v=RMwUojyNgcQ&t"}},{"text":"\n\n "},{"text":"uninstall","color":"red"},{"text":":","color":"gold"},{"text":" To completely remove this datapack from your world run /function tpa:uninstall\n","color":"aqua"},{"text": "[BACK]","color": "gold","clickEvent": {"action": "run_command","value": "/trigger tpainfo"}},{"text": "-----------------------------------------------","color": "gold"}]
scoreboard players reset @a[scores={tpahelp=1..}] tpahelp