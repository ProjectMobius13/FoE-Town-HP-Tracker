/// @description Initialize Variables

// String Values
str_heart			= "❤";
str_broken_heart	= "💔";
str_full_bar		= "▰";
str_empty_bar		= "▱";
result_string = "";

// HP Values
_total_hp = 3;
_hp = 3;

// Name Values
_id = 1;
_name = "Fighter " + string(_id);

// Interaction Variables
hp_plus_hover = 0;
hp_minus_hover = 0;
max_hp_plus_hover = 0;
max_hp_minus_hover = 0;
copy_hover = 0;
up_hover = 0;
down_hover = 0;
delete_hover = 0;
name_hover = 0;
special_hover = 0;
_colors_hover = [0, 0, 0, 0, 0, 0, 0, 0];
selected_button = 0;
_text_focus = false;

// Color Variables
_color = GREEN;
_text_color = [ #FF0000, #FF7E32, #FFFF32, #3BFD3B, #00E6FF, #227EFF, #9000FF, #FF00EC ];
_SPECIAL = [5, 5, 5, 5, 5, 5, 5];

// Move Checks
_move_up = 0;
_move_down = 0;
_delete_check = 0;
