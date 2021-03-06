﻿/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_leader","Guerilla Leader",1340],
			["U_O_SpecopsUniform_ocamo",nil,1500],
			["U_O_PilotCoveralls",nil,610],
			["U_O_CombatUniform_ocamo",nil,3200],
			["U_O_GhillieSuit",nil,7000],
			["U_B_GhillieSuit",nil,7000],
			["U_O_PilotCoveralls",nil,4200],
			["U_O_CombatUniform_oucamo",nil,3200],
			["U_O_SpecopsUniform_ocamo",nil,3200],
			["U_I_CombatUniform",nil,3200],
			["U_I_OfficerUniform",nil,3300]			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_CrewHelmetHeli_B","Gasmaske",1550]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,1850],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
			["V_HarnessOGL_brn","Bombengürtel",52500],
			["V_RebreatherB",nil,3200],
			["V_RebreatherIR",nil,3200],
			["V_RebreatherIA",nil,3200]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,300],
			["B_Kitbag_mcamo",nil,800],
			["B_TacticalPack_oli",nil,1500],
			["B_FieldPack_ocamo",nil,1100],
			["B_Bergen_sgg",nil,1500],
			["B_Kitbag_cbr",nil,800],
			["B_Carryall_oli",nil,2300],
			["B_Carryall_khk",nil,2300]
		];
	};
};