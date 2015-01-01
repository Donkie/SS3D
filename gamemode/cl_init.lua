
include("shared.lua")

--
-- Make BaseClass available
--
DEFINE_BASECLASS("gamemode_base")

function GM:Initialize()
	BaseClass.Initialize( self )
end

function GM:HUDPaint()
	-- Draw all of the default stuff
	BaseClass.HUDPaint( self )
end
