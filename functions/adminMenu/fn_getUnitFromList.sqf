// Gets a unit from the list using a selected id
// Input: selected id (line in list)
// Output: unit on success
//         objNull on failure
params["_listID", "_selectedID"];

_unit = objNull;

if(_selectedID >= 0) then
{
	_unitName = lbText[_listID, _selectedID];
	_zeusLocation = _unitName find " - ZEUS_";
	if(_zeusLocation >= 0) then
	{
		_stringToParse = toArray _unitName;
		_stringToParse resize _zeusLocation;
		_name = toString _stringToParse;
		_playersAmount = count allPlayers;
		for [{private _i = 0}, {_i < _playersAmount}, {_i = _i + 1}] do
		{
			_currentUnit = allPlayers select _i;
			if(name _currentUnit isEqualTo _name) exitWith
			{
				_unit = _currentUnit;
			};
		};
	};
};
_unit