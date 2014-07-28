enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Secret_Society v3.1.4";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "real_weather.sqf";
[] execVM "zlt_fastrope.sqf";
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Markt preise updated! %1", _this select 1];
	};
};
StartProgress = true;