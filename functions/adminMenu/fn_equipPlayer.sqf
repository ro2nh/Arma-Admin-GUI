// Equips a chosen unit with a chosen equipment
params["_listID", "_selectedID", "_slot"];

// Checks which unit is selected
_unit = [_listID, _selectedID] call RSystems_fnc_getUnitFromList;
if(_unit isEqualTo objNull) exitWith {};
if !(alive _unit) exitWith {};

[_unit, _slot] call RSystems_fnc_equipFromSlot;