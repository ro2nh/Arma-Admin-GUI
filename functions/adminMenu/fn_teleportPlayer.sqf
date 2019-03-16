// Teleports a player to an admin or vise versa
params["_listID", "_selectedID", "_optionID"];

// Checks if option is valid
if(_optionID == -1) exitWith {};
// Checks which unit is selected
_unit = [_listID, _selectedID] call RSystems_fnc_getUnitFromList;
if(_unit isEqualTo objNull) exitWith
{
	// Teleport admin to respawn point
	_mapRespawnMark = lbText[_listID, _selectedID];
	player setPos (getMarkerPos _mapRespawnMark);
};
if !(alive _unit) exitWith {};

// Teleport player to admin
if(_optionID == 0) exitWith
{
	_unit setPos (getPos player);
};
// Teleport admin to player
if(_optionID == 1) exitWith
{
	player setPos (getPos _unit);
};