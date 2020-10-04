
file.Delete("dump.txt")

local function Dump(s, where)
	print("! Dump "..(where and ">>"..where.."<<" or "")..": ", s)
	HAC.file.Append("dump.txt", s)
end


ENV 			= {
	print			= print,
	Msg				= Msg,
	assert			= assert,
	pcall			= pcall,
	next			= next,
	pairs			= pairs,
	tonumber		= tonumber,
	math			= {
		randomseed 	= math.randomseed,
		frexp 		= math.frexp,
		random 		= math.random,
		pi 			= math.pi,
	},
	string			= {
		char		= function(b)
			local Char = string.char(b)
			--Msg(Char)
			return Char
		end,
		dump		= string.dump,
		sub			= string.sub,
		reverse		= string.reverse,
		format		= Format,
	},
	table = {
		concat		= table.concat,
	},	
	debug = {
		getregistry = function()
			print("! _R lookup")
			return _R
		end,
	},
	http			= {
		Fetch		= function(URL, Got,Err)
			Dump("HTTP[["..URL.."]]", "HTTP")
			return http.Fetch(URL, Got,Err)
		end,
	},
	
	RunString 		= function(s)
		print("! RunString: ", s)
		return Dump(s, "RunString")
	end,
	RunStringEx 		= function(s)
		print("! RunStringEx: ", s)
		return Dump(s, "RunStringEx")
	end,
}
ENV._G 		= ENV
ENV._G._G 	= ENV
ENV.getfenv = function() print("getfenv call") return ENV end


local Skip = {}
local Meta = {}
function Meta.__index(self, v)
	if not Skip[ v ] then
		print("! lookup: ", v)
		
		Skip[ v ] = true
	end
	
	
	return rawget(ENV, v)
end
Meta = setmetatable({}, Meta)


ENV.CompileString = function(s,e)
	print("\n! CompileString: ", e)
	
	s = "\n"..s
	
	s = s:gsub(" ", "\n")
	
	Dump(s, "CompileString")
	
	local This_2 = CompileString(s, "Cheat_2")
		setfenv(This_2, Meta)
	return This_2
end




local Cont = HAC.file.Read("shit.lua")

local This = CompileString(Cont, "Cheat")
	setfenv(This, Meta)
print("\n", pcall(This) )

