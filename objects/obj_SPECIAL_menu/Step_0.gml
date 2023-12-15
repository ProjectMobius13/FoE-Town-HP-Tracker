/// @description Insert description here
// You can write your code in this editor

var _xx = room_width/2-64;
var _xx2 = room_width/2+32;

// Strength
var _yy = y+72;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_str_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[STRENGTH] > 1 {
			_SPECIAL[STRENGTH] -= 1;
			_points += 1;
		}
	}
} else {
	_str_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_str_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[STRENGTH] < 10 && _points > 0 {
			_SPECIAL[STRENGTH] += 1;
			_points -= 1;
		}
	}
} else {
	_str_up = 0;
}

// Perception
_yy += 48;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_per_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[PERCEPTION] > 1 {
			_SPECIAL[PERCEPTION] -= 1;
			_points += 1;
		}
	}
} else {
	_per_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_per_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[PERCEPTION] < 10 && _points > 0 {
			_SPECIAL[PERCEPTION] += 1;
			_points -= 1;
		}
	}
} else {
	_per_up = 0;
}

// Endurance
_yy += 48;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_end_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[ENDURANCE] > 1 {
			_SPECIAL[ENDURANCE] -= 1;
			_points += 1;
		}
	}
} else {
	_end_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_end_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[ENDURANCE] < 10 && _points > 0 {
			_SPECIAL[ENDURANCE] += 1;
			_points -= 1;
		}
	}
} else {
	_end_up = 0;
}

// Charisma
_yy += 48;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_cha_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[CHARISMA] > 1 {
			_SPECIAL[CHARISMA] -= 1;
			_points += 1;
		}
	}
} else {
	_cha_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_cha_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[CHARISMA] < 10 && _points > 0 {
			_SPECIAL[CHARISMA] += 1;
			_points -= 1;
		}
	}
} else {
	_cha_up = 0;
}

// Inteligence
_yy += 48;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_int_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[INTELLIGENCE] > 1 {
			_SPECIAL[INTELLIGENCE] -= 1;
			_points += 1;
		}
	}
} else {
	_int_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_int_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[INTELLIGENCE] < 10 && _points > 0 {
			_SPECIAL[INTELLIGENCE] += 1;
			_points -= 1;
		}
	}
} else {
	_int_up = 0;
}

// Agility
_yy += 48;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_agi_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[AGILITY] > 1 {
			_SPECIAL[AGILITY] -= 1;
			_points += 1;
		}
	}
} else {
	_agi_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_agi_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[AGILITY] < 10 && _points > 0 {
			_SPECIAL[AGILITY] += 1;
			_points -= 1;
		}
	}
} else {
	_agi_up = 0;
}

// Luck
_yy += 48;

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx+32, _yy+32) {
	_luck_down = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[LUCK] > 1 {
			_SPECIAL[LUCK] -= 1;
			_points += 1;
		}
	}
} else {
	_luck_down = 0;
}

if point_in_rectangle(mouse_x, mouse_y, _xx2, _yy, _xx2+32, _yy+32) {
	_luck_up = 1;
	if mouse_check_button_pressed(mb_left) {
		if _SPECIAL[LUCK] < 10 && _points > 0 {
			_SPECIAL[LUCK] += 1;
			_points -= 1;
		}
	}
} else {
	_luck_up = 0;
}

// Save 
_xx = room_width/2 - 64 - string_width(" Cancel ")/2;
_xx2 = _xx + string_width(" Cancel ");
_yy += 152

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx2, _yy + string_height(" Cancel ")) {
	_save = 1;
	if mouse_check_button_pressed(mb_left) {
		array_copy(obj_fighter._SPECIAL, 0, _SPECIAL, 0, 7);
		instance_destroy(id);
	}
} else {
	_save = 0;
}

// Cancel 
_xx = room_width/2 + 64 - string_width(" Cancel ")/2;
_xx2 = _xx + string_width(" Cancel ");

if point_in_rectangle(mouse_x, mouse_y, _xx, _yy, _xx2, _yy + string_height(" Cancel ")) {
	_cancel = 1;
	if mouse_check_button_pressed(mb_left)
		instance_destroy(id);
} else {
	_cancel = 0;
}