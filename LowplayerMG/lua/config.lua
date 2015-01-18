-- This is the configuration file for the DarkRP Zombies minigame
-- For the configuration of Zombie and Weapon Spawnpoints, see zombiespawns.lua and weaponspawns.lua
-- To configure the weapons that spawn, see weaponlist.lua

-- CHANGE NUMBERS
--      There are two numbers, considered the "Change Numbers", low and High.
--      The first, maxplayers is the number of players at which the game will switch back to normal DarkRP.
--      The second is the number of players at which the game will switch to zombie Mode.
--      The first must ALWAYS be smaller than the second.
maxplayers=6;
minplayers=4;

-- ZOMBIE SPAWN PROBABILITY
--      The script will potentially spawn zombies each spawn point, for each one it "rolls a 100 sided dice".
--      The Zombie spawn probability is the probability out of 100 that a zombie will spawn.
--      For example choosing 33 would mean zombies would spawn 33 times out of 100.
zombieprobabilty=40;

-- WEAPON SPAWN PROBABILITY
--      The script will potentially spawn WEAPONs each spawn point, for each one it "rolls a 100 sided dice".
--      The WEAPON spawn probability is the probability out of 100 that a WEAPON will spawn.
--      For example choosing 33 would mean WEAPONs would spawn 33 times out of 100.
weaponprobability=30;

