/// @description Insert description here
// You can write your code in this editor

/*show_message("Object Created! " + string(obj_fighter._name) + " Special Stats = " 
	+ string(obj_fighter._SPECIAL[STRENGTH]) + " " +
	+ string(obj_fighter._SPECIAL[PERCEPTION]) + " " +
	+ string(obj_fighter._SPECIAL[ENDURANCE]) + " " +
	+ string(obj_fighter._SPECIAL[CHARISMA]) + " " +
	+ string(obj_fighter._SPECIAL[INTELLIGENCE]) + " " +
	+ string(obj_fighter._SPECIAL[AGILITY]) + " " +
	+ string(obj_fighter._SPECIAL[LUCK]));*/


_SPECIAL = [obj_fighter._SPECIAL[STRENGTH],
			obj_fighter._SPECIAL[PERCEPTION],
			obj_fighter._SPECIAL[ENDURANCE],
			obj_fighter._SPECIAL[CHARISMA],
			obj_fighter._SPECIAL[INTELLIGENCE],
			obj_fighter._SPECIAL[AGILITY],
			obj_fighter._SPECIAL[LUCK]];

_points = 40 - _SPECIAL[STRENGTH]
			- _SPECIAL[PERCEPTION]
			- _SPECIAL[ENDURANCE]
			- _SPECIAL[CHARISMA]
			- _SPECIAL[INTELLIGENCE]
			- _SPECIAL[AGILITY]
			- _SPECIAL[LUCK];
			
_str_down = 0;
_str_up = 0;
_per_down = 0; 
_per_up = 0;
_end_down = 0;
_end_up = 0;
_cha_down = 0; 
_cha_up = 0;
_int_down = 0; 
_int_up = 0;
_agi_down = 0; 
_agi_up = 0;
_luck_down = 0; 
_luck_up = 0;
_save = 0; 
_cancel = 0;