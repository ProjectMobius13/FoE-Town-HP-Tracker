/// @description Insert description here
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
			/*the variable _result holds the link you have set in the Update Sync app, this could be:
			(1) A link to your website for the player to then download the new version (recommended)
			(2) The direct link to the new version's file.
			For each scenario you can perform the following respectively*/
			//(1) open link in browser:
				//url_open(_result);
			//(2) download file example:
				/*path = gameName+".txt";//downloading will fail if you do not include the [correct] file extension
				file = http_get_file(_result,path);
				downloading = 1;*/
			/*Now to uninstall this version:
			(1 - not recommended) If your game is installed on the player's pc AND you know the directory you can use an extension such
			as this one https://marketplace.yoyogames.com/assets/575/execute-shell to run the uninstaller for the game.
			(2) If you are not packaging your game as an installer OR can't be certain of the uninstaller's location, then you will have to show a prompt to ask
			the player to delete this version of the game.*/
				//(2.a) Example prompt:
				//show_message("Please exit the game and uninstall this version before installing the new version.");/*
			//(3) You can create your own NSIS installer script for your game which uninstalls the exisiting/previous version before it installs the new version*/
	}
}
