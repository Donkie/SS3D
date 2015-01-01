
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("'"shared.lua"'")

--
-- Make BaseClass available
--
DEFINE_BASECLASS("gamemode_base")

function GM:PlayerSpawn( pl )
	player_manager.SetPlayerClass( pl, "player_sandbox" )
	BaseClass.PlayerSpawn( self, pl )
end

function GM:PlayerInitialSpawn( ply )

	BaseClass.PlayerInitialSpawn( self, ply )
	
end
