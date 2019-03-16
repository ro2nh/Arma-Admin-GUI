// Heals a chosen player or self
params["_listID", "_selectedID"];

// Checks which unit is selected
_unit = [_listID, _selectedID] call RSystems_fnc_getUnitFromList;

if(_unit isEqualTo objNull) exitWith
{
	// Heals admin
	player setDamage 0;
};

if !(alive _unit) exitWith {};

// Heals chosen unit
_unit setDamage 0;
