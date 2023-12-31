/// @description Insert description here
// You can write your code in this editor

//draw_sprite_stretched_ext(spr_box_nine_slice, GREEN, x, y, room_width-64, room_height-64, c_white, 1);

var _xx = room_width/2;
var _yy = y + 32 + 96;

draw_set_font(font_ui_24);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_color(#3BFD3B);
draw_text(_xx, _yy, "Choose a Theme");
draw_set_color(c_white);

_yy += 96;

_xx -= 80;
draw_sprite(spr_theme_icons, 0 + hover_none, _xx, _yy);

_xx += 80;
draw_sprite(spr_theme_icons, 2 + hover_christmas, _xx, _yy);

_xx += 80;
draw_sprite(spr_theme_icons, 4 + hover_new_year, _xx, _yy);

_xx = room_width/2;
_yy += 48;

draw_set_font(font_ui_18);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(#3BFD3B);
draw_text(_xx, _yy, theme_string);
draw_set_color(c_white);

_yy += 32;
draw_set_font(font_ui_18);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_sprite_stretched_ext(spr_box_nine_slice, GREEN, _xx - string_width(" Cancel ")/2, _yy - string_height(" Cancel ")/2, string_width(" Cancel "), string_height(" Cancel "), c_white, 1);

if hover_OK
	draw_set_color(c_white);
else
	draw_set_color(#3BFD3B);
draw_text(_xx, _yy, "OK");