/*
	a3 epoch trader
	settings.sqf
	by Halv & Suppe
*/

_blacklist = ["srifle_DMR_03_spotter_F","13Rnd_mas_9x19_Mag","25Rnd_mas_9x21_Mag","B_mas_HMMWV_SOV_M2"];

_restrictedvehicles = [
	/*
		["vehicleclassname1",["weaponclassname1","weaponclassname2","weaponclassname3"]],
		["vehicleclassname2",["weaponclassname1","weaponclassname2","weaponclassname3"]],
	*/
		["B_Heli_Light_01_armed_F",["missiles_DAR"]]
];
//this is to set vehicle ammo amount, range from 0 to 1 - 0 is empty, 1 is full ammo
_setVehicleAmmo = 0;
//this is how vehicles spawn, 0 = player gets menu to decide, 1 = only allow saved vehicles, 2 = only allow rentals
_vehiclespawnmode = 0;