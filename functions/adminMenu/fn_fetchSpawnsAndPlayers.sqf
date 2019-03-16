// Fetches all spawns and players and display them on the list
params["_dialogID", "_spawnsAndPlayersList"];

// Declaring spawn key if does not exist
if (isNil "SPAWN_KEY") then
{
	SPAWN_KEY = [];
};

// Checks if dialog is open
while {!(isNull(findDisplay(_dialogId)))} do
{
	// Add spawns to the list
	if(count SPAWN_KEY > 0) then
	{
		{
			_y = _x;
			{
				if(_y find _x < 0) exitWith {};
				lbAdd[_spawnsAndPlayersList, _y];
			} forEach SPAWN_KEY;
		} forEach allMapMarkers;
	};

	// Add players to the list
	{
		// Don't display dead and self
		if(alive _x && !(_x isEqualTo player)) then
		{
			//for now
			_playerDisplayName = format["%1 - ZEUS_D", name _x];
			lbAdd[_spawnsAndPlayersList, _playerDisplayName];
		};
	} forEach allPlayers;

	sleep 0.4;
	// Clear table
	lbClear(_spawnsAndPlayersList);
};