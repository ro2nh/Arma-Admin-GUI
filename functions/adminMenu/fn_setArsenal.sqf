// Adds player actions to the arsenal

// Object init:
//  [] call RSystems_fnc_setArsenal;

_arsenal = this;

[_arsenal] spawn
{
	params["_arsenal"];

	// Let the system get initialized
	sleep 1;

	_slotsAmount = count SLOTS;
	for [{private _i = 0}, {_i < _slotsAmount}, {_i = _i + 1}] do
	{
		_slotName = SLOTS select _i;

		_arsenal addAction[_slotName, {
				_slot = _this select 3 select 1;
				[player, _slot] call RSystems_fnc_equipFromSlot;
			}, [player, _i], 0, true, false, "", "", 5];
	};
}