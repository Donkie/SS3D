function GM:PlayerCanSeePlayersChat( text, teamOnly, listener, speaker )
  if !listener:IsAlive() then return true; end
  if teamOnly && speaker:IsAlive() then return true; end
  if !speaker:IsAlive() && !listener:IsAlive() then return true;

  return false;
end
