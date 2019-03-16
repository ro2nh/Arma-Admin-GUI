// Checks if the player is in the admin list
// Input: player
// Output: true if he is
//         false otherwise
params["_player"];

_uid = getPlayerUID player;

if(_uid in AdminList) exitWith { true };
false