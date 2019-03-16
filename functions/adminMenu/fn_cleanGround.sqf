// Clean the ground from items in radius of 200 meters
{
	deleteVehicle _x;
} forEach (nearestObjects[getPos player, ["WeaponHolder", "GroundWeaponHolder"], 200]);

// Clean the ground from dead bodies in the entire map
{
	deleteVehicle _x;
} forEach allDeadMen;