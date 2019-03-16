// Fixes a chosen player vehicle or self vehicle
params["_listID", "_selectedID"];

// Checks which unit is selected
_unit = [_listID, _selectedID] call RSystems_fnc_getUnitFromList;

if(_unit isEqualTo objNull && vehicle player != player) exitWith
{
	// Fixing admin vehicle
	vehicle player setDamage 0;
};

if !(alive _unit) exitWith {};

// Fixing player vehicle
vehicle _unit setDamage 0;
