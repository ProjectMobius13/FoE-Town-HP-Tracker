/// @description Insert description here
// You can write your code in this editor

var _xx = x;
var _yy = y;

var _top_camera_view = camera_get_view_y(view_camera[0]);
var _bottom_camera_view = _top_camera_view + camera_get_view_height(view_camera[0])
var _mid_camera_view =  _top_camera_view + camera_get_view_height(view_camera[0])/2;

_yy = y + 96 * instance_number(obj_fighter);

draw_sprite(spr_add_fighter_button, add_hover, room_width/2, _yy);

draw_set_alpha(scroll_toggle);
draw_sprite(spr_up_button, up_hover, room_width - 32, _top_camera_view + 30);
draw_sprite(spr_down_button, down_hover, room_width - 32, _bottom_camera_view - 66);
draw_set_alpha(1);