function GM:OnPlayerChat( player, strText, bTeamOnly, bPlayerIsDead )
	local tab = {};

	if ( !isRoundActive ) then
		chat.AddText( Color( 0, 0, 255 ), "OOC: " .. player:Nick() .. ": " .. strText );
		return true;
	end

	if ( bPlayerIsDead ) then
		table.insert( tab, Color( 205, 0, 205 ) );
		table.insert( tab, "*DEAD* " );
	elseif ( bTeamOnly ) then
		table.insert( tab, Color( 0, 230, 0 ) );
		table.insert( tab, "[Radio] " );
	else
		table.insert( tab, Color( 230, 230, 230 ) );
	end

	if ( IsValid( player ) ) then
		table.insert( tab, player:Nick() );
	else
		chat.AddText( Color( 255, 0, 0 ), "Console: " .. strText );
		return true;
	end

	local prefix = "says";
	local ending = strText:sub( strText:len() );
	if  ending == "?" then
		prefix = "asks";
	elseif ending == "." then
		prefix = "states";
	elseif ending == "!" then
		prefix = "exclaims";
	end

	table.insert( tab, " " .. prefix .. ", \"" .. strText .. "\"" );

	chat.AddText( unpack( tab ) );

	return true;
end
