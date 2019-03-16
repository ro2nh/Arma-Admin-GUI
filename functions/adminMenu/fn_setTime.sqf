// Sets the time of the server for all clients
params ["_time"];

_selectedTime = floor(_time);

[[], {setDate [2019, 1, 1, _selectedTime, 0]}] remoteExec ["call"];