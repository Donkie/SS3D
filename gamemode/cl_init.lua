include("shared.lua")
include("cl_hud.lua")
include("cl_chat.lua")

function GM:Initialize()
	if isRoundActive then
	else

	end
end

function GM:CalcView( ply, pos, ang, fov, nearZ, farZ )
	if isRoundActive then return; end

	local view = {
		origin = Vector( 840, 3695, -790 );
		angles = Angle( 0, 100, 0 );
	}

	return view;
end

function GM:HUDShouldDraw( name )
	if ( name == "CHUDHealth" || name == "CHUDBattery" || name == "CHudCrosshair" ) then
		return false;
	end

	return true;
end

net.Receive( "SS3D_Music", function( len )
	sound.PlayFile( "sound/ss3d/" .. net.ReadString(), "", function( chan )
		if ( IsValid( chan ) ) then chan:Play(); end
	end );
end );
