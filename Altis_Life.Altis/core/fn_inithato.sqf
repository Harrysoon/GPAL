#include <macro.h>
/*
	File: fn_initHato.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the PMC
*/

private [ "_end" ];
addRating player 99999999 ;
waitUntil {! ( isNull ( findDisplay 46 ))};

if((FETCH_CONST(life_hatoLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
