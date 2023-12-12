/// @description Insert description here
// You can write your code in this editor

#region Variables
	// Set Variables
	var _xx = x;
	var _yy = y;
	
	var _fighter_count = instance_number(obj_fighter);
	
	var _top_camera_view = camera_get_view_y(view_camera[0]);
	var _bottom_camera_view = _top_camera_view + camera_get_view_height(view_camera[0]);
	
	//_total_region_size = max(room_height, _fighter_count * (ENTRY_HEIGHT+4) + ENTRY_HEIGHT+4);
	_total_region_size = max(room_height, _fighter_count * (ENTRY_HEIGHT+4) + 100);
	
	_top_camera_y = camera_get_view_y(view_camera[0]);
	_camera_height = camera_get_view_height(view_camera[0]);
	_bottom_camera_y = _top_camera_y + _camera_height;
	_scroll_area_start_y = _top_camera_y + 60;
	_scroll_area_height = (_bottom_camera_y - 66) - (_top_camera_y + 60);
	_scroll_bar_height = (_camera_height / _total_region_size) * _scroll_area_height;
	_scroll_bar_relative_y = (_top_camera_y / _total_region_size) * _scroll_area_height;
	_scroll_bar_y = _scroll_area_start_y + _scroll_bar_relative_y;
	
	selected_button = 0;
	
	// Only show the scroll bar if entry number exceeds one page
	if _total_region_size > room_height
		scroll_toggle = true;
	else
		scroll_toggle = false;
#endregion

#region UI Button Checks
	
	if (_update_available) {
		instance_deactivate_object(obj_fighter);
		_yy = _top_camera_y + _camera_height/2 + 24;
		_xx = room_width/4 + 32;
		if point_in_rectangle(mouse_x, mouse_y, _xx - string_width("Yes")/2 - 2, _yy - string_height("Yes")/2 - 2, _xx + string_width("Yes")/2 + 2, _yy + string_height("Yes")/2 + 2) {
			_update_yes_hover = 1;
			selected_button = "Update";
		} else {
			_update_yes_hover = 0;
		}
		_xx = 3*room_width/4 - 32;
		if point_in_rectangle(mouse_x, mouse_y, _xx - string_width("Yes")/2 - 2, _yy - string_height("Yes")/2 - 2, _xx + string_width("Yes")/2 + 2, _yy + string_height("Yes")/2 + 2) {
			_update_no_hover = 1;
			selected_button = "Ignore Update";
		} else {
			_update_no_hover = 0;
		}
	} else {
		// Add Fighter Button
		_xx = room_width/2;
		_yy = y + 32 + (ENTRY_HEIGHT+4) * _fighter_count;
		if scroll_hover != 1 && point_in_circle(mouse_x, mouse_y, _xx, _yy, 32) {
			add_hover = 1;
			selected_button = "Add Fighter";
		} else {
			add_hover = 0;	
		}
		
		// Scroll Up Button
		if scroll_toggle && scroll_hover != 1 && point_in_rectangle(mouse_x, mouse_y, room_width - 32, _top_camera_view + 31, room_width, _scroll_bar_y - 2) {
			up_hover = 1;
			selected_button = "Scroll Up";
		} else {
			up_hover = 0;
		}
		
		// Scroll Down Button
		if scroll_toggle && scroll_hover != 1 && point_in_rectangle(mouse_x, mouse_y, room_width - 32, _scroll_bar_y + _scroll_bar_height + 2, room_width, _bottom_camera_view - 32) {
			down_hover = 1;
			selected_button = "Scroll Down";
		} else {
			down_hover = 0;
		}
		
		// Scroll Bar
		if scroll_toggle && scroll_hover != 1 && point_in_rectangle(mouse_x, mouse_y, room_width - 30, _scroll_bar_y, room_width - 2, _scroll_bar_y + _scroll_bar_height) {
			scroll_hover = 1;
		} else {
			if !mouse_check_button(mb_left)
				scroll_hover = 0;
		}
		
		// Dragging Scroll Bar
		if mouse_check_button(mb_left) {
			if scroll_hover == 1 {
				_cam_yy += (mouse_y - mouse_y_previous) / _scroll_area_height * _total_region_size;
				_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*(ENTRY_HEIGHT+4))-_camera_height+ENTRY_HEIGHT+4);
				camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
			}
		}
	}
		
	// Handle Button Presses
	if mouse_check_button_pressed(mb_left) {
		switch (selected_button) {
			// Create a Fighter Entry
			case "Add Fighter":
				_xx = x;
				_yy = y + (ENTRY_HEIGHT+4) * _fighter_count;
				
				var _fighter = instance_create_depth(_xx, _yy, depth + 1, obj_fighter);
				
				with _fighter {
					_id = _fighter_count + 1;
					_name = "Fighter " + string(_id);
				}
				
				_fighter_count = instance_number(obj_fighter);
				_total_region_size = max(room_height, _fighter_count * (ENTRY_HEIGHT+4) + 100);
				
				if _total_region_size > room_height {
					_cam_yy = (_fighter_count*(ENTRY_HEIGHT+4))-_camera_height+100;
					_cam_yy = clamp(_cam_yy, 0, (_fighter_count*(ENTRY_HEIGHT+4))-_camera_height+100);
					camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
				}
				break;
			// Scroll Up One Page
			case "Scroll Up":
				_cam_yy -= 96 * 5;
				_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*(ENTRY_HEIGHT+4))-_camera_height+(ENTRY_HEIGHT+4));
				camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
				break;
			// Scroll Down One Page
			case "Scroll Down":
				_cam_yy += 96 * 5;
				_cam_yy = clamp(_cam_yy, 0, (instance_number(obj_fighter)*(ENTRY_HEIGHT+4))-_camera_height+(ENTRY_HEIGHT+4));
				camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
				break;
			case "Update":
				url_open(_update_url);
				if os_type == os_windows {
					game_end();
				}
				instance_activate_object(obj_fighter);
				_update_available = false;
				break;
			case "Ignore Update":
				instance_activate_object(obj_fighter);
				_update_available = false;
				break;
		}
	}
#endregion

#region Scroll Wheel
	if scroll_hover != 1 && mouse_wheel_up() {
		_cam_yy -= 8;
		_cam_yy = clamp(_cam_yy, 0, max(0, (instance_number(obj_fighter)*(ENTRY_HEIGHT+4))-_camera_height+(ENTRY_HEIGHT+4)));
		camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
	}
	
	if scroll_hover != 1 && mouse_wheel_down() {
		_cam_yy += 8;
		_cam_yy = clamp(_cam_yy, 0, max(0, (instance_number(obj_fighter)*(ENTRY_HEIGHT+4))-_camera_height+(ENTRY_HEIGHT+4)));
		camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);
	}
#endregion

#region End of Step Actions
	mouse_x_previous = mouse_x;
	mouse_y_previous = mouse_y;
#endregion

#region Browser Scaling
	if os_browser == browser_not_a_browser
		exit;
		
	if (browser_width != width || browser_height != height){
	    _width = min(_base_width, browser_width);
	    _height = min(_base_height, browser_height);
		
	    scale_canvas(_base_width, _base_height, _width, _height, true);
	}
#endregion