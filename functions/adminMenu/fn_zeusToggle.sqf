// Toggle zeus
params["_listID", "_selectedID"];

// Checks which unit is selected
_unit = [_listID, _selectedID] call RSystems_fnc_getUnitFromList;
_unitSelected = objNull;

if(_unit isEqualTo objNull) then
{
	_unitSelected = player;
}
else
{
	if (alive _unit) then
	{
		_unitSelected = _unit;
	}
};

if(_unitSelected isEqualTo objNull) exitWith {};

// Toggle zeus on admin
// Toggle zeus on player
