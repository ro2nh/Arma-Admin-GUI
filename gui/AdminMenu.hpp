class adminMenu
{
    idd = 999;

    class controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by ro2n, v1.063, #Xusado)
        ////////////////////////////////////////////////////////
        class background: RscPicture
        {
            idc = 2200;
            x = 0.1 * safezoneW + safezoneX;
            y = 0.05 * safezoneH + safezoneY;
            w = 0.8 * safezoneW;
            h = 0.8 * safezoneH;
        };
        class spawnsAndPlayersList: RscListbox
        {
            idc = 1500;
            x = 0.303125 * safezoneW + safezoneX;
            y = 0.234 * safezoneH + safezoneY;
            w = 0.196875 * safezoneW;
            h = 0.196 * safezoneH;
        };
        class equipmentList: RscListbox
        {
            idc = 1501;
            x = 0.565625 * safezoneW + safezoneX;
            y = 0.234 * safezoneH + safezoneY;
            w = 0.13125 * safezoneW;
            h = 0.196 * safezoneH;
        };
        class timeSlider: RscSlider
        {
            idc = 1900;
            x = 0.493437 * safezoneW + safezoneX;
            y = 0.556 * safezoneH + safezoneY;
            w = 0.203437 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class spawnsAndPlayersLabel: RscText
        {
            idc = 1003;
            text = "Spawns And Players"; //--- ToDo: Localize;
            x = 0.3425 * safezoneW + safezoneX;
            y = 0.206 * safezoneH + safezoneY;
            w = 0.105 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class toolsLabel: RscText
        {
            idc = 1005;
            text = "Tools"; //--- ToDo: Localize;
            x = 0.31625 * safezoneW + safezoneX;
            y = 0.514 * safezoneH + safezoneY;
            w = 0.0328125 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class equipmentLabel: RscText
        {
            idc = 1006;
            text = "Equipment"; //--- ToDo: Localize;
            x = 0.598437 * safezoneW + safezoneX;
            y = 0.192 * safezoneH + safezoneY;
            w = 0.0590625 * safezoneW;
            h = 0.042 * safezoneH;
        };
        class teleportButton: RscButton
        {
            idc = 1600;
            onMouseButtonClick = "[1500, lbCurSel 1500, lbCurSel 1502] call RSystems_fnc_teleportPlayer;";

            text = "Teleport"; //--- ToDo: Localize;
            x = 0.440937 * safezoneW + safezoneX;
            y = 0.458 * safezoneH + safezoneY;
            w = 0.0590625 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class teleportOptionsList: RscListbox
        {
            idc = 1502;
            text = "Spawn/Player Me"; //--- ToDo: Localize;
            x = 0.31625 * safezoneW + safezoneX;
            y = 0.458 * safezoneH + safezoneY;
            w = 0.118125 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class toLabel: RscText
        {
            idc = 1002;
            text = "To"; //--- ToDo: Localize;
            x = 0.296562 * safezoneW + safezoneX;
            y = 0.458 * safezoneH + safezoneY;
            w = 0.0196875 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class equipSelfButton: RscButton
        {
            idc = 1601;
            onMouseButtonClick = "[player, lbCurSel 1501] call RSystems_fnc_equipFromSlot;";

            text = "Equip"; //--- ToDo: Localize;
            x = 0.565625 * safezoneW + safezoneX;
            y = 0.458 * safezoneH + safezoneY;
            w = 0.0590625 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class saveEquipmentButton: RscButton
        {
            idc = 1602;
            onMouseButtonClick = "[lbCurSel 1501] call RSystems_fnc_saveEquipment;";

            text = "Save"; //--- ToDo: Localize;
            x = 0.637812 * safezoneW + safezoneX;
            y = 0.458 * safezoneH + safezoneY;
            w = 0.0590625 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class equipPlayerButton: RscButton
        {
            idc = 1603;
            onMouseButtonClick = "[1500, lbCurSel 1500, lbCurSel 1501] call RSystems_fnc_equipPlayer;";

            text = "Equip"; //--- ToDo: Localize;
            x = 0.506562 * safezoneW + safezoneX;
            y = 0.234 * safezoneH + safezoneY;
            w = 0.0525 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class fixButton: RscButton
        {
            idc = 1605;
            onMouseButtonClick = "[1500, lbCurSel 1500] call RSystems_fnc_fixPlayerVehicle;";

            text = "Fix"; //--- ToDo: Localize;
            x = 0.506562 * safezoneW + safezoneX;
            y = 0.318 * safezoneH + safezoneY;
            w = 0.0525 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class zeusButton: RscButton
        {
            idc = 1606;
            onMouseButtonClick = "[1500, lbCurSel 1500] call RSystems_fnc_zeusToggle;";

            text = "Zeus"; //--- ToDo: Localize;
            x = 0.506562 * safezoneW + safezoneX;
            y = 0.36 * safezoneH + safezoneY;
            w = 0.0525 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class healButton: RscButton
        {
            idc = 1604;
            onMouseButtonClick = "[1500, lbCurSel 1500] call RSystems_fnc_healPlayer;";

            text = "Heal"; //--- ToDo: Localize;
            x = 0.506562 * safezoneW + safezoneX;
            y = 0.276 * safezoneH + safezoneY;
            w = 0.0525 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class cleanGroundButton: RscButton
        {
            idc = 1607;
            onMouseButtonClick = "call RSystems_fnc_cleanGround;";

            text = "Clean Ground"; //--- ToDo: Localize;
            x = 0.467187 * safezoneW + safezoneX;
            y = 0.668 * safezoneH + safezoneY;
            w = 0.0721875 * safezoneW;
            h = 0.042 * safezoneH;
        };
        class setTimeButton: RscButton
        {
            idc = 1608;
            onMouseButtonClick = "[sliderPosition 1900] call RSystems_fnc_setTime;";

            text = "Set Time"; //--- ToDo: Localize;
            x = 0.5525 * safezoneW + safezoneX;
            y = 0.598 * safezoneH + safezoneY;
            w = 0.07875 * safezoneW;
            h = 0.042 * safezoneH;
        };
        class spawnButton: RscButton
        {
            idc = 1609;
            text = "Spawn"; //--- ToDo: Localize;
            x = 0.355625 * safezoneW + safezoneX;
            y = 0.598 * safezoneH + safezoneY;
            w = 0.0721875 * safezoneW;
            h = 0.042 * safezoneH;
        };
        class RscListbox_1503: RscListbox
        {
            idc = 1503;
            text = "TESTING"; //--- ToDo: Localize;
            x = 0.303125 * safezoneW + safezoneX;
            y = 0.556 * safezoneH + safezoneY;
            w = 0.177187 * safezoneW;
            h = 0.028 * safezoneH;
        };
        class freezeButton: RscButton
        {
            idc = 1610;
            onMouseButtonClick = "[1500, lbCurSel 1500] call RSystems_fnc_freezePlayer;";

            text = "Freeze"; //--- ToDo: Localize;
            x = 0.506562 * safezoneW + safezoneX;
            y = 0.402 * safezoneH + safezoneY;
            w = 0.0525 * safezoneW;
            h = 0.028 * safezoneH;
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ////////////////////////////////////////////////////////
    };
};