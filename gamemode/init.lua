AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_hud.lua")
AddCSLuaFile("cl_chat.lua")

include("shared.lua")
include("sv_chat.lua")

util.AddNetworkString( "SS3D_Music" );

function GM:PlayerSpawn( ply )

end

function GM:PlayerInitialSpawn( ply )
	if isRoundActive then

	else
		ply:KillSilent();
		PlayMusic( "title1.ogg", ply );
	end
end

function GM:PlayerDeathThink()
	return false;
end

function PlayMusic( file, ply )
	net.Start( "SS3D_Music" );
	net.WriteString( file );

	if ply:IsValid() then
		net.Send( ply );
	else
		net.Broadcast();
	end
end
