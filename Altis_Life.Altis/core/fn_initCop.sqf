#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((FETCH_CONST(life_coplevel) == 0) && (FETCH_CONST(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
};

//Set paychecks based on rank

if(FETCH_CONST(life_coplevel) == 1) then{
	life_paycheck = life_paycheck + 1000;
};
if(FETCH_CONST(life_coplevel) == 2) then{
	life_paycheck = life_paycheck + 1500;
};
if(FETCH_CONST(life_coplevel) == 3) then{
	life_paycheck = life_paycheck + 2000;
};
if(FETCH_CONST(life_coplevel) == 4) then{
	life_paycheck = life_paycheck + 2500;
};
if(FETCH_CONST(life_coplevel) == 5) then{
	life_paycheck = life_paycheck + 2750;
};
if(FETCH_CONST(life_coplevel) == 6) then{
	life_paycheck = life_paycheck + 3000;
};


player setVariable["rank",(FETCH_CONST(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_reloadUniforms;
