// Opens the dialog
params["_player"];

// IDS:
_dialogID = 999;
_tabletID = 2200;
_equipmentList = 1501;
_spawnsAndPlayersList = 1500;
_teleportOptionsList = 1502;
_timeSlider = 1900;

_elements = [
    1500, 1501, 1900, 1003, 1005, 1006, 1600, 1502, 1002, 1601, 1602, 1603, 1605, 1606, 1604, 1607, 1608, 1609, 1503, 1610
];

// Checks if the dialog is already open
if(dialog) then
{
	closeDialog 0;
};

// Creating the dialog
createDialog "AdminMenu";

// Loading operating system
[_tabletID, _elements] call RSystems_fnc_loadTablet;

// Setting up time slider
_currentTime = floor daytime;
sliderSetRange[_timeSlider, 0, 24];
sliderSetPosition[_timeSlider, _currentTime];

// Setting up equipment list
_slotsAmount = count SLOTS;
for [{private _i = 0}, {_i < _slotsAmount}, {_i = _i + 1}] do
{
	_slotName = SLOTS select _i;
	lbAdd [_equipmentList, _slotName];
};

// Setting up spawns and players list
[_dialogID, _spawnsAndPlayersList] spawn RSystems_fnc_fetchSpawnsAndPlayers;

// Setting up teleport options
lbAdd [_teleportOptionsList, "Me"];
lbAdd [_teleportOptionsList, "Spawn/Player"];