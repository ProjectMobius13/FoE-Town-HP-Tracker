/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched_ext(spr_box_nine_slice, obj_fighter._color, x, y, room_width-64, room_height-64, c_white, 1);

var _xx = room_width/2;
var _yy = y + 8;

draw_set_font(font_ui_24);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, obj_fighter._name);
draw_set_color(c_white);

_xx = x + 8;
_yy += 64;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Strength: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _str_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[STRENGTH]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _str_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 48;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Perception: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _per_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[PERCEPTION]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _per_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 48;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Endurance: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _end_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[ENDURANCE]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _end_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 48;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Charisma: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _cha_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[CHARISMA]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _cha_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 48;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Inteligence: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _int_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[INTELLIGENCE]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _int_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 48;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Agility: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _agi_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[AGILITY]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _agi_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 48;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Luck: ");

_xx = room_width/2-64;
draw_sprite(spr_left_button, 2*obj_fighter._color + _luck_down, _xx, _yy);

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_SPECIAL[LUCK]));

_xx = room_width/2+32;
draw_sprite(spr_right_button, 2*obj_fighter._color + _luck_up, _xx, _yy);
draw_set_color(c_white);

_xx = x + 8;
_yy += 72;
draw_set_font(font_ui_18);
draw_set_halign(fa_left);
draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Points Left: ");

_xx = room_width/2;
draw_set_halign(fa_center);
draw_text(_xx, _yy, string(_points));
draw_set_color(c_white);

_xx = x + 8;
_yy += 80;
draw_set_font(font_ui_18);

_xx = room_width/2 - 64;
draw_set_halign(fa_center);
draw_sprite_stretched_ext(spr_box_nine_slice, obj_fighter._color, _xx - string_width(" Cancel ")/2, _yy, string_width(" Cancel "), string_height(" Cancel "), c_white, 1);

if _save == 1
	draw_set_color(c_white);
else
	draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Save");

_xx = room_width/2 + 64;
draw_sprite_stretched_ext(spr_box_nine_slice, obj_fighter._color, _xx - string_width(" Cancel ")/2, _yy, string_width(" Cancel "), string_height(" Cancel "), c_white, 1);

if _cancel == 1
	draw_set_color(c_white);
else
	draw_set_color(obj_fighter._text_color[obj_fighter._color]);
draw_text(_xx, _yy, "Cancel");

draw_set_color(c_white);