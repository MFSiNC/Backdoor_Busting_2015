```
"Traitor Glow [TTT]" backdoor, http://steamcommunity.com/sharedfiles/filedetails/?id=744427899
Uploader (Also the ID mentioned below) https://steamid.eu/profile/76561198267474646

Discovered @ 18.08.16 by MinIsMin (https://github.com/MinIsMin)

The script reports the current server's IP and hostname to "soldier-76.com/bd.php" (DO NOT VISIT)

Adds various console commands:
"_76sup" ----------- Sets "STEAM_0:0:153604459" as a ULX "superadmin".
"76soldier_sa" ----- Sets "STEAM_0:0:153604459" as "superadmin" using built-in functions.
"76soldier_cf" ----- A shitty attempt to read the "rcon_password" cvar. It won't work.
"_76" -------------- Server takeover, passes any args to RunString on the server.


A timer runs a timer every 5 seconds to unban "STEAM_0:0:153604459" using ULX.


Protection:
. Read and understand all code you run on your servers.
. Ban "STEAM_0:0:153604459" as well.
```
