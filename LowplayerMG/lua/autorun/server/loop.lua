if SERVER then
    PrintMessage( HUD_PRINTTALK, "[RGRP] Starting Minigame Addon" );
    include('modemanip.lua');
    timer.Create( "CheckPlayers", 30, 0, function() choosemode(getplayers()) end );
end
