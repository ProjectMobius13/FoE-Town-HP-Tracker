/// @description Insert description here
// You can write your code in this editor

x = 32;

var _xx = room_width/2;
var _yy = y + 128 + 96;

_xx -= 80;

if point_in_rectangle(mouse_x, mouse_y, _xx-32, _yy-32, _xx+32, _yy+32) {
	hover_none = 1;	
	theme_string = "None";
} else {
	hover_none = 0;
}

_xx += 80;
if point_in_rectangle(mouse_x, mouse_y, _xx-32, _yy-32, _xx+32, _yy+32) {
	hover_christmas = 1;	
	theme_string = "Hearth's Warming";
} else {
	hover_christmas = 0;
}

_xx += 80;
if point_in_rectangle(mouse_x, mouse_y, _xx-32, _yy-32, _xx+32, _yy+32) {
	hover_new_year = 1;	
	theme_string = "New Year";
} else {
	hover_new_year = 0;
}

_xx = room_width/2;
_yy += 80;
if point_in_rectangle(mouse_x, mouse_y, _xx-string_width(" Cancel ")/2, _yy-string_height(" Cancel ")/2, _xx+string_width(" Cancel ")/2, _yy+string_height(" Cancel ")/2) {
	hover_OK = 1;	
} else {
	hover_OK = 0;
}

if mouse_check_button_pressed(mb_left) {
	if hover_none
		obj_control.overlay = theme_string;
		
	if hover_christmas
		obj_control.overlay = theme_string;
		
	if hover_new_year
		obj_control.overlay = theme_string;
		
	if hover_OK {
		instance_activate_all();
		instance_destroy(id);
	}
}