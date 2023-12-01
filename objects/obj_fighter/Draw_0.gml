/// @description draw event
// You can write your code in this editor


var _box_nineslice = sprite_get_nineslice(spr_box_nine_slice);

_box_nineslice.enabled = true;
_box_nineslice.left = 2;
_box_nineslice.right = 2;
_box_nineslice.top = 2;
_box_nineslice.bottom = 2;

var _xx = x;
var _yy = y;
var _icon_width = sprite_get_width(spr_icons);

// Draw Box
draw_sprite_stretched(_box_nineslice, 0, _xx, _yy, room_width-64, 92);
draw_sprite_stretched_ext(spr_name_field, 0, _xx+6, _yy+6, max(string_width("A"), string_width(_name)+4), max(string_height("A"), string_height(_name)+2), c_white, max(name_hover, _focus));

// Draw Name Font
draw_set_font(font_mono);
_xx += 8;
_yy += 8;

if (_focus)
	draw_set_color(c_white);
else
	draw_set_color(#3BFD3B);
draw_set_valign(fa_top);
draw_text(_xx, _yy, _name);
draw_set_color(c_white);

// Draw HP Editors
_yy += 20

draw_set_color(#3BFD3B);
draw_set_halign(fa_left);
draw_text(_xx, _yy, "Current HP: ");

_xx += string_width("Current HP: ");

draw_sprite(spr_minus_button, hp_minus_hover, _xx, _yy + 2);

_xx += 16;
draw_set_color(#3BFD3B);
draw_set_halign(fa_center);
draw_text(_xx + 10, _yy, string(_hp))
draw_set_halign(fa_left);
draw_set_color(c_white);

_xx += 20;
draw_sprite(spr_plus_button, hp_plus_hover, _xx, _yy + 2);




_yy += 20
_xx = x + 8;

draw_set_color(#3BFD3B);
draw_set_halign(fa_left);
draw_text(_xx, _yy, "Max. HP: ");

_xx += 84;

draw_sprite(spr_minus_button, max_hp_minus_hover, _xx, _yy + 2);

_xx += 16;
draw_set_color(#3BFD3B);
draw_set_halign(fa_center);
draw_text(_xx + 10, _yy, string(_total_hp))
draw_set_halign(fa_left);
draw_set_color(c_white);

_xx += 20;
draw_sprite(spr_plus_button, max_hp_plus_hover, _xx, _yy + 2);



// Draw Health Icons
_xx = x + 8;
_yy += 20;
if (_hp < 1)
	draw_sprite(spr_icons, 1, _xx, _yy);
else
	draw_sprite(spr_icons, 0, _xx, _yy);

_xx += _icon_width + 2;

for (count = _hp; count > 0; count--) {
	draw_sprite(spr_icons, 2, _xx, _yy);
	_xx += _icon_width + 2;
}

for (count = _total_hp - _hp; count > 0; count--) {
	draw_sprite(spr_icons, 3, _xx, _yy);
	_xx += _icon_width + 2;
}

// Draw big icons
_xx = x + 256;
_yy = y + 28;

draw_sprite(spr_copy_text_button, copy_hover, _xx, _yy);
_xx += 40;
draw_sprite(spr_up_button, up_hover, _xx, _yy);
_xx += 40;
draw_sprite(spr_down_button, down_hover, _xx, _yy);
_xx += 40;
draw_sprite(spr_delete_button, delete_hover, _xx, _yy);





_box_nineslice.enabled = false;