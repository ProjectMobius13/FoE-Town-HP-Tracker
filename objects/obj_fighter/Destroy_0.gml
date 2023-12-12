/// @description Insert description here
// You can write your code in this editor

var _fighter_at_position = instance_position(x, y+ENTRY_HEIGHT+4, obj_fighter);
if _fighter_at_position {
	_fighter_at_position._delete_check = 1;
}

obj_control._cam_yy = clamp(obj_control._cam_yy, 0, (instance_number(obj_fighter)*(ENTRY_HEIGHT+4))-640);
camera_set_view_pos(view_camera[0], obj_control._cam_xx, max(obj_control._cam_yy, 0));