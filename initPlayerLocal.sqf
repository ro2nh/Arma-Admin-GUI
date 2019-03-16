// Waiting for admin list
waitUntil { !(isNil "AdminList") };

// Waiting for display
waitUntil { !(isNull (findDisplay 46)) };

_isPlayerAdmin = [player] call RSystems_fnc_isAdmin;

if (_isPlayerAdmin) then
{
	// Register a new event of pressing the "." key (83 keycode)
	(findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 83) then { [player] spawn RSystems_fnc_openMenu; };"];
};