/// @description Insert description here
// You can write your code in this editor

switch (selected_button) {
		case 1:
			_hp -= 1;
			_hp = clamp(_hp, 0, _total_hp);
			break;
		case 2:
			_hp += 1;
			if (_hp > _total_hp) {
				_total_hp += 1;
				_total_hp = clamp(_total_hp, 1, 20);
			}
			_hp = clamp(_hp, 0, _total_hp);
			break;
		case 3:
			_total_hp -= 1;
			if (_hp > _total_hp) {
				_hp -= 1;
				_hp = clamp(_hp, 0, _total_hp);
			} 
			_total_hp = clamp(_total_hp, 1, 20);
			break;
		case 4:
			if (_hp == _total_hp)
				_hp += 1;
			_total_hp += 1;
			_total_hp = clamp(_total_hp, 1, 20);
			break;
		case 5:
			if (_hp < 1)
				result_string = str_broken_heart;
			else
				result_string = str_heart;
				
			for (count = _hp; count > 0; count--) {
				result_string += str_full_bar;
			}
			
			for (count = _total_hp - _hp; count > 0; count--) {
				result_string += str_empty_bar;
			}
			
			clipboard_set_text(result_string);
			break;
		case 6:
			var _fighter_at_position = instance_position(x, y-96, obj_fighter);
			if _fighter_at_position {
				//show_message(string(x) + " " + string(y));
				_fighter_at_position.y += 96;	
				y -= 96;
			}
			//show_message(string(x) + " " + string(y));
			break;
		case 7:
			var _fighter_at_position = instance_position(x, y+96, obj_fighter);
			if _fighter_at_position {
				//show_message(string(x) + " " + string(y));
				_fighter_at_position.y -= 96;	
				y += 96;
			}
			//show_message(string(x) + " " + string(y));
			break;
		case 8:
			break;
	}