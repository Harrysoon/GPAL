/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["textures\police\vehicles\hunterfront.paa","cop","textures\police\vehicles\hunterback.paa"],
			["textures\police\vehicles\hunterfront.paa","cop","textures\police\vehicles\hunterbackarv.paa"]
		];
	};
};