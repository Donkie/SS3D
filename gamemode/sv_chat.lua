function GM:PlayerCanSeePlayersChat( text, teamOnly, listener, speaker )
  if !isRoundActive then return true; end
  if !listener:IsAlive() then return true; end
  if teamOnly && speaker:IsAlive() then return true; end
  if !speaker:IsAlive() && !listener:IsAlive() then return true; end

  return false;
end
