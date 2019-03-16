// Loads the operating system of the tablet
params["_tabletID", "_elements"];

// Hiding all elements
{
	ctrlShow[_x, false];
} forEach _elements;

PowerOnFlicking = 
{
	params["_tabletID"];

	for[{private _i = 0}, {_i < 4}, {_i = _i + 1}] do
	{
		ctrlSetText[_tabletID, "tablet\loadPowerLightOff.paa"];
		sleep 0.2;
		ctrlSetText[_tabletID, "tablet\loadPowerLightOn.paa"];
	};
	for[{private _i = 0}, {_i < 7}, {_i = _i + 1}] do
	{
		ctrlSetText[_tabletID, "tablet\load2PowerLightOff.paa"];
		sleep 0.2;
		ctrlSetText[_tabletID, "tablet\load2PowerLightOn.paa"];
	};
};

SystemOnFlicking =
{
	params["_tabletID"];

	for[{private _i = 0}, {_i < 10}, {_i = _i + 1}] do
	{
		ctrlSetText[_tabletID, "tablet\systemOnWirelessOff.paa"];
		sleep 2;
		ctrlSetText[_tabletID, "tablet\systemOnWirelessOn.paa"];
	};
};

// Loading operating system
ctrlSetText[_tabletID, "tablet\off.paa"];
sleep 0.24;
[_tabletID] call PowerOnFlicking;
[_tabletID] spawn SystemOnFlicking;

// Showing elements
{
	ctrlShow[_x, true];
} forEach _elements;