/*
	a3 epoch trader
	HS_weaponsrestriction.sqf
	by Halv & Suppe
	
	Copyright (C) 2015  Halvhjearne & Suppe > README.md
*/
#include "settings.sqf";

_vehicle = _this;

//_vehicle setVehicleAmmo _setVehicleAmmo;

{if(_vehicle isKindOf (_x select 0))exitWith{{_vehicle removeWeaponGlobal _x;}forEach (_x select 1);};}forEach _restrictedvehicles;

if(_clearammo)then{
	_turrets = (allturrets [_vehicle,true])+[[-1]];
	{_path = _x;{if !(_x in _dontremove)then{_vehicle removeMagazinesTurret [_x,_path];};}forEach (_vehicle magazinesTurret _path);}forEach _turrets;
};
