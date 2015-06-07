/*
	a3 epoch trader
	HS_weaponsrestriction.sqf
	by Halv & Suppe
*/
#include "settings.sqf";

_vehicle = _this;

//_vehicle setVehicleAmmo _setVehicleAmmo;

{if(_vehicle isKindOf (_x select 0))exitWith{{_vehicle removeWeaponGlobal _x;}forEach (_x select 1);};}forEach _restrictedvehicles;

if(_clearammo)then{
	{_path = _x;{if !(_x in _dontremove)then{_vehicle removeMagazinesTurret [_x,_path];};}forEach (_vehicle magazinesTurret _path);}forEach [[-1],[0],[1],[2],[0,0],[1,0],[2,0],[0,1],[0,2]];
};
