#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: coldgas (http://altis.newhopeoutfit.de)
	Created for www.altisliferpg.com
*/


if(side player == independent) then {
	if ((uniform player) == "U_B_CombatUniform_mcam") then {
		player setObjectTextureGlobal [0, "textures\medic\medic_uniform_hv.paa"];
	};

	if (backpack player == "B_Carryall_cbr") then {
		backpackContainer player setObjectTextureGlobal [0, "textures\medic\mediccarryall.paa"];
	};
};
if(side player == WEST) then {
	switch(FETCH_CONST(life_coplevel)) do{
		case 0:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, ""];
			};
		};
		case 1:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\hato\hato_Uniform.paa"];
			};
		};
		case 2:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\police\pcso_uniform.paa"];
			};
		};
		case 3:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\police\police_low.paa"];
			};
		};
		case 4:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\police\police_low.paa.paa"];
			};
		};
		case 5:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\police\police_high.paa"];
			};
		};
		case 6:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\police\police_high.paa"];
			};
		};
		case 7:{
			if (uniform player == "U_B_CombatUniform_mcam") then{
				player setObjectTextureGlobal [0, "textures\police\sco19.paa"];
			};
		};
	};
};

if(side player == civilian) then {
	// Prisoner
	if(side player == civilian && uniform player == "U_B_CombatUniform_mcam") then {
	player setObjectTextureGlobal [0, "textures\civilian\Civ_PrisonerUniform.paa"];
	};
};