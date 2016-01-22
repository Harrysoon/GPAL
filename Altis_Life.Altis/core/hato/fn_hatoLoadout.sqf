/*
File: fn_hatoLoadout.sqf
Author: Bryan "Tonic" Boardwine
Edited: Itsyuka
Implemented: Jack Bolton

Description:
Loads the HATO out with the default gear.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default hato gear.
player addUniform "U_B_CombatUniform_mcam";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";

[] call life_fnc_saveGear;
//[] call life_fnc_reloadUniforms; keeping commented out for now
