/// @description Code by Bulletech Studios
// You can write your code in this editor
if os_browser != browser_not_a_browser
	exit;

if (ds_map_find_value(async_load, "id") == rtrn) {
	var _result = UpdateSync_results(thisVersion);
	switch (_result) {
		case 0://server-side issue
			show_debug_message("Could not check - server");
		break;
		case 1://server access issue
			show_debug_message("Could not check - permission");
		break;
		case 2://account access issue
			show_debug_message("Could not check - account");
		break;
		case 3://game name not found
			show_debug_message("Could not check - name");
		break;
		case 4://up to date
			show_debug_message("Up to date!");
		break;
		case 5://connection issue
			show_debug_message("Could not check - connection");
		break;
		default://new version available
			_update_url = _result;
			_update_available = true;
			show_debug_message("New version available!");
	}
}
