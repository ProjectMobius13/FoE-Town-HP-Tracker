/// @description Creation Event
// You can write your code in this editor

#macro RED 0;
#macro ORANGE 1;
#macro YELLOW 2;
#macro GREEN 3;
#macro CYAN 4;
#macro BLUE 5;
#macro PURPLE 6;
#macro PINK 7;

str_heart			= "❤";
str_broken_heart	= "💔";
str_full_bar		= "▰";
str_empty_bar		= "▱";

_total_hp = 3;
_hp = 3;
_id = 1;
_name = "Fighter " + string(_id);

hp_plus_hover = 0;
hp_minus_hover = 0;
max_hp_plus_hover = 0;
max_hp_minus_hover = 0;
copy_hover = 0;
up_hover = 0;
down_hover = 0;
delete_hover = 0;
name_hover = 0;
_colors_hover = [0, 0, 0, 0, 0, 0, 0, 0];

_focus = false;

selected_button = 0;

_color = GREEN;
_text_color = [c_red, #FF7E32, #FFFF32, #3BFD3B, #00E6FF, #227EFF, #9000FF, #FF00EC];

_move_up = 0;
_move_down = 0;
_delete_check = 0;

result_string = "";

//clipboard_set_text("💔▱▱▱");
