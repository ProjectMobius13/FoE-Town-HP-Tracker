/// @description Insert description here
// You can write your code in this editor

var _xx = x;
var _yy = y;

var _fighter_count = instance_number(obj_fighter);

var _top_camera_view = camera_get_view_y(view_camera[0]);
var _bottom_camera_view = _top_camera_view + camera_get_view_height(view_camera[0])
var _mid_camera_view =  _top_camera_view + camera_get_view_height(view_camera[0])/2;

selected_button = 0;

if instance_number(obj_fighter) > 5
	scroll_toggle = 1;
else
	scroll_toggle = 0;

_xx = room_width/2;
_yy = y + 32 + 96 * _fighter_count;

if point_in_circle(mouse_x, mouse_y, _xx, _yy, 32) {
	add_hover = 1;
	selected_button = 1;
} else {
	add_hover = 0;	
}

if scroll_toggle && point_in_rectangle(mouse_x, mouse_y, room_width - 32, _top_camera_view + 31, room_width, _top_camera_view + 64) {
	up_hover = 1;
	selected_button = 2;
} else {
	up_hover = 0;
}

if scroll_toggle && point_in_rectangle(mouse_x, mouse_y, room_width - 32, _bottom_camera_view - 63, room_width, _bottom_camera_view - 32) {
	down_hover = 1;
	selected_button = 3;
} else {
	down_hover = 0;
}


if mouse_check_button_pressed(mb_left) {
	switch (selected_button) {
		case 1:
			_xx = x;
			_yy = y + 96 * _fighter_count;
			
			var _fighter = instance_create_depth(_xx, _yy, depth + 1, obj_fighter);
			
			with _fighter {
				_id = _fighter_count + 1;
				_name = "Fighter " + string(_id);
			}
			
			if instance_number(obj_fighter) > 5 {
				_cam_yy += 96;
				_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*96)-640+96);
				camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
			}
			break;
		case 2:
			//_cam_yy -= 32;
			_cam_yy -= 96 * 5;
			_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*96)-640+96);
			camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
			break;
		case 3:
			//_cam_yy += 32;
			_cam_yy += 96 * 5;
			_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*96)-640+96);
			camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
			break;
	}
}

if mouse_wheel_up() {
	_cam_yy -= 8;
	_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*96)-640+96);
	camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
}

if mouse_wheel_down() {
	_cam_yy += 8;
	_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*96)-640+96);
	camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
}