local logo = Material( "ss3d/logo.png" );

local scrW = ScrW();
local scrH = ScrH();

local function drawImg( mat, color, x, y, w, h )
	if mat then
		surface.SetMaterial( mat );
		surface.SetDrawColor( color );

		surface.DrawTexturedRect( x, y, w, h );
	end
end

local function preRoundHUD()
	drawImg( logo, Color( 255, 255, 255, 255 ), 0, 0, ScreenScale( 1024 / 3 ), ScreenScale( 256 / 3 ) );
end

function GM:HUDPaint()
	if isRoundActive then

	else
		preRoundHUD();
	end
end
