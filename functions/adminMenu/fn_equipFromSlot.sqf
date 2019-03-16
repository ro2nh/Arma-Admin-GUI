// Equips a chosen unit with a chosen equipment
params["_unit", "_selected"];

// Checking if there is a selected equipment slot
if(_selected == -1) exitWith {};
if(_selected >= count SLOTS) exitWith {};

_selectedSlot = SLOTS select _selected;

[player, [uiNamespace, _selectedSlot]] call BIS_fnc_loadInventory;
hint "Equipment was loaded.";
