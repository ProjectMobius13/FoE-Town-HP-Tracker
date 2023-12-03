/// @description Insert description here
// You can write your code in this editor

var _xx = x;
var _yy = y;
var _box_nineslice_scroll = sprite_get_nineslice(spr_scroll_bar_nine_slice);

_box_nineslice_scroll.enabled = true;
_box_nineslice_scroll.left = 3;
_box_nineslice_scroll.right = 3;
_box_nineslice_scroll.top = 3;
_box_nineslice_scroll.bottom = 3;

_top_camera_y = camera_get_view_y(view_camera[0]);
_camera_height = camera_get_view_height(view_camera[0]);
_bottom_camera_y = _top_camera_y + _camera_height;
_scroll_area_start_y = _top_camera_y + 60;
_scroll_area_height = (_bottom_camera_y - 66) - (_top_camera_y + 60);
_scroll_bar_height = (_camera_height / _total_region_size) * _scroll_area_height;
_scroll_bar_relative_y = (_top_camera_y / _total_region_size) * _scroll_area_height;
_scroll_bar_y = _scroll_area_start_y + _scroll_bar_relative_y;
_scroll_bar_y = clamp(_scroll_bar_y, _scroll_area_start_y, _scroll_area_start_y + _scroll_area_height - _scroll_bar_height);

_yy = y + 96 * instance_number(obj_fighter);

draw_sprite(spr_add_fighter_button, add_hover, room_width/2, _yy);

draw_set_alpha(scroll_toggle);
draw_sprite(spr_up_button, 6+up_hover, room_width - 32, _top_camera_y + 30);
draw_sprite_stretched(spr_scroll_bar_nine_slice, scroll_hover, room_width - 30, _scroll_bar_y, 28, _scroll_bar_height);
draw_sprite(spr_down_button, 6+down_hover, room_width - 32, _bottom_camera_y - 66);
draw_set_alpha(1);

_box_nineslice_scroll.enabled = false;