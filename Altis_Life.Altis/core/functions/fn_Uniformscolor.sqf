#include < macro.h > /*	COP UNIFORM SCRIPT	Edited: by maximum for better handling of actual uniforms	Created for www.altisliferpg.com*/ 
	if (side player == independent) then {
		if((uniform player) == "U_Rangemaster") then{
			player setObjectTextureGlobal[0, "textures\medic\paramedic_uniform_hv.paa"];
		};
	};
if (side player == WEST) then {
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 1)) then {		
		player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_PCSO.paa"];};	//Rank1	
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 2)) then {		
		player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_PC.paa"];};	//Rank 2
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 3)) then {		
		player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_SPC.paa"];};	//Rank 3
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 4)) then {		
		player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_SGT.paa"];};	//Rank 4
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 5)) then {		
		player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_CInsp.paa"];};//Rank 5
	if (uniform player == "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 6)) then {		
		player setObjectTextureGlobal [0, "textures\police\ManPol_Uniform_CSupt.paa"];};//Rank 6	
};	
