private["_rand","_sum"];
_rand = round(random 3);
_sum = ["weintraube",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_sammel_sperre = true;
	player say3D "harvest";
	titleText[format[(localize "STR_NOTF_Gathering"),localize "STR_Item_Weintrauben"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 5;
	if(([true,"weintraube",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[(localize "STR_NOTF_Picked"),_sum,localize "STR_Item_Weintrauben"],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_sammel_sperre = false;