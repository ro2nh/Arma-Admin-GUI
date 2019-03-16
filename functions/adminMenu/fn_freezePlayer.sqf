// Freezes player - prevent him from moving
// Heals a chosen player or self
params["_listID", "_selectedID"];

// Checks which unit is selected
_unit = [_listID, _selectedID] call RSystems_fnc_getUnitFromList;

if(_unit isEqualTo objNull) then
{
	_unit = player;
};
if !(alive _unit) exitWith {};

// Checks if not already frozen
_frozen = _unit getVariable["Frozen", false];

if(_frozen) then
{
	// Unfreeze unit
	[_unit, true] remoteExec ["enableSimulation"];
	_unit setVariable["Frozen", false];
}
else
{
	[_unit, false] remoteExec ["enableSimulation"];
	_unit setVariable["Frozen", true];
};