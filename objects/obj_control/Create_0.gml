/// @description Insert description here
// You can write your code in this editor

#region Camera Variables
	_cam_xx = 0;
	_cam_yy = 0;
	_total_region_size = room_height;
	_top_camera_y = camera_get_view_y(view_camera[0]);
	_camera_height = camera_get_view_height(view_camera[0]);
	_bottom_camera_y = _top_camera_y + _camera_height;
	camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
#endregion

#region Scroll Bar Variables
	_scroll_area_start_y = _top_camera_y + 60;
	_scroll_area_height = (_bottom_camera_y - 66) - (_top_camera_y + 60);
	_scroll_bar_height = (_camera_height / _total_region_size) * _scroll_area_height;
	_scroll_bar_relative_y = (_top_camera_y / _total_region_size) * _scroll_area_height;
	_scroll_bar_y = _scroll_area_start_y + _scroll_bar_relative_y;
#endregion

#region UI Interaction Variables
	_base_width = room_width;
	_base_height = room_height;
	_width = _base_width;
	_height = _base_height;
	
	
	add_hover = 0;
	up_hover = 0;
	down_hover = 0;
	scroll_hover = 0;
	
	scroll_toggle = 0;
	
	mouse_x_previous = mouse_x;
	mouse_y_previous = mouse_y;
#endregion

#region Create Initial Fighter Entry
	var _fighter_count = instance_number(obj_fighter);
	var _xx = x;
	var _yy = y + 96 * _fighter_count;
	var _fighter = instance_create_depth(_xx, _yy, depth + 1, obj_fighter);
	with _fighter {
		_id = _fighter_count + 1;
		_name = "Fighter " + string(_id);
	}
#endregion

#region Updater Setup
	username = "PM13";//your username as a string, as set in the Update Sync app
	password = "PlanetBinary1011005!UpdateSync";//your password as a string, as set in the Update Sync app
	gameName = "Ashes Battle Assistant";//your game's name as a string, as set in the Update Sync app
	thisVersion = real(string_digits(GM_version));//the version of this build as a real*
	
	rtrn = UpdateSync_init(username,password,gameName);
	
	_update_available = false;
	_update_url = "null";
	
	_update_yes_hover = 0;
	_update_no_hover = 0;
#endregion