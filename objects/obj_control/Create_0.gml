/// @description Insert description here
// You can write your code in this editor

_cam_xx = 0;
_cam_yy = 0;

camera_set_view_pos(view_camera[0], _cam_xx, _cam_yy);

_xx = x;
_yy = y;

add_hover = 0;
up_hover = 0;
down_hover = 0;

scroll_toggle = 0;


var _fighter_count = instance_number(obj_fighter);

var _xx = x;
var _yy = y + 96 * _fighter_count;

var _fighter = instance_create_depth(_xx, _yy, depth + 1, obj_fighter);

with _fighter {
	_id = _fighter_count + 1;
	_name = "Fighter " + string(_id);
}