
--gets number of players currently in the server, checks if it is enough, returns true or false

function getplayers()
    players=#player.GetAll();
    PrintMessage( HUD_PRINTTALK, players );
    if ( players <= 4 ) then
        return false;
    else
        if ( players >= 6 ) then
            return true;
            end;
    end;
end;


--creates zombies for the first time and sets the variable indicating zombie mode has been started
function initzombies()
    include('zombiespawns.lua');
    zombie={};
    for key,value in pairs(spawnpoints) do
        zombie[key] = ents.Create("npc_zombie");
        zombie[key]:SetPos(value);
        zombie[key]:Spawn();
    zombiemode=true;
    end;
end;

-- maintains the zombie population by replacing the dead undead
function createzombies()
    include('zombiespawns.lua');
    for key,value in pairs(spawnpoints) do
        if IsValid ( zombie[key] ) then
            else
                zombie[key] = ents.Create("npc_zombie");
                zombie[key]:SetPos(value);
                zombie[key]:Spawn();
            end;
    end;
end;

-- creates hidden weapons for the first time
function initweapons()
    include('weaponspawns.lua');
    include('weaponlist.lua')
    weapon={};
    for key,value in pairs(spawnpoints) do
        weapon[key] = ents.Create(weaponlist[ math.random( #weaponlist ) ]);
        weapon[key]:SetPos(value);
        weapon[key]:Spawn();
    weaponmode=true;
    end;
end;

-- ensures there are enough hidden weapons left on the server
function createweapons()
    include('weaponspawns.lua');
    for key,value in pairs(spawnpoints) do
        if IsValid ( weapon[key] ) then
            else
                weapon[key] = ents.Create(weaponlist[ math.random( #weaponlist ) ]);
                weapon[key]:SetPos(value);
                weapon[key]:Spawn();
            end;
    end;
end;



--chooses mode. Activates zombie mode when needed.
function choosemode(nplayers)
    if ( nplayers ) then
        PrintMessage( HUD_PRINTTALK, "Sufficient Players, Running in RP Mode." );
        zombiemode=false;
        weaponmode=false;
        RunConsoleCommand("gmod_admin_cleanup");
    else
        PrintMessage( HUD_PRINTTALK, "Insufficient players for RP, Running in Zombie Apocalypse mode. For more info type !za in chat." );
        if ( zombiemode && weaponmode ) then
            createzombies();
            createweapons();
        else
            initzombies();
            initweapons();
        end;
    end;
end;
