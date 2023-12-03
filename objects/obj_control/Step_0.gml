/// @description Insert description here
// You can write your code in this editor

var _xx = x;
var _yy = y;

var _fighter_count = instance_number(obj_fighter);

var _top_camera_view = camera_get_view_y(view_camera[0]);
var _bottom_camera_view = _top_camera_view + camera_get_view_height(view_camera[0]);

_total_region_size = max(room_height, _fighter_count * 96 + 96);

_top_camera_y = camera_get_view_y(view_camera[0]);
_camera_height = camera_get_view_height(view_camera[0]);
_bottom_camera_y = _top_camera_y + _camera_height;
_scroll_area_start_y = _top_camera_y + 60;
_scroll_area_height = (_bottom_camera_y - 66) - (_top_camera_y + 60);
_scroll_bar_height = (_camera_height / _total_region_size) * _scroll_area_height;
_scroll_bar_relative_y = (_top_camera_y / _total_region_size) * _scroll_area_height;
_scroll_bar_y = _scroll_area_start_y + _scroll_bar_relative_y;

selected_button = 0;

if instance_number(obj_fighter) > 5
	scroll_toggle = true;
else
	scroll_toggle = false;

_xx = room_width/2;
_yy = y + 32 + 96 * _fighter_count;

if scroll_hover != 1 && point_in_circle(mouse_x, mouse_y, _xx, _yy, 32) {
	add_hover = 1;
	selected_button = 1;
} else {
	add_hover = 0;	
}

if scroll_toggle && scroll_hover != 1 && point_in_rectangle(mouse_x, mouse_y, room_width - 32, _top_camera_view + 31, room_width, _scroll_bar_y - 2) {
	up_hover = 1;
	selected_button = 2;
} else {
	up_hover = 0;
}

if scroll_toggle && scroll_hover != 1 && point_in_rectangle(mouse_x, mouse_y, room_width - 32, _scroll_bar_y + _scroll_bar_height + 2, room_width, _bottom_camera_view - 32) {
	down_hover = 1;
	selected_button = 3;
} else {
	down_hover = 0;
}

if scroll_toggle && scroll_hover != 1 && point_in_rectangle(mouse_x, mouse_y, room_width - 30, _scroll_bar_y, room_width - 2, _scroll_bar_y + _scroll_bar_height) {
	scroll_hover = 1;
	//selected_button = 3;
} else {
	if !mouse_check_button(mb_left)
		scroll_hover = 0;
}

if mouse_check_button(mb_left) {
	if scroll_hover == 1 {
		_cam_yy += (mouse_y - mouse_y_previous) / _scroll_area_height * _total_region_size;
		_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*96)-640+96);
		camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
		
		/*mouse_x_previous = mouse_x;
		mouse_y_previous = mouse_y;
		exit;*/
	}
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
				//_cam_yy += 96;
				_cam_yy = (instance_number(obj_fighter)*96)-640+96;
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

if scroll_hover != 1 && mouse_wheel_up() {
	_cam_yy -= 8;
	_cam_yy = clamp(_cam_yy, 0, max(0, (instance_number(obj_fighter)*96)-640+96));
	camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
}

if scroll_hover != 1 && mouse_wheel_down() {
	_cam_yy += 8;
	_cam_yy = clamp(_cam_yy, 0, max(0, (instance_number(obj_fighter)*96)-640+96));
	camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
}

mouse_x_previous = mouse_x;
mouse_y_previous = mouse_y;