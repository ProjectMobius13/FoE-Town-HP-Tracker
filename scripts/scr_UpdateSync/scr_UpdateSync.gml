/// @function UpdateSync_init(username,password,gameName);
/// @description Connect to server to check details
/// @param {string} username Your username as set in Update Sync
/// @param {string} password Your password as set in Update Sync
/// @param {string} gameName The game's name as set in Update Sync
function UpdateSync_init(_username,_password,_gameName) {
	var _user = sha1_string_utf8(base64_encode(_username));
	var _pass = sha1_string_utf8(base64_encode(_password));
	var _game = base64_encode(_gameName);
	var _rtrnArgs = "user="+_user + "&pass="+_pass + "&gme="+_game + "&key=USKey8412";
	rtrn = http_post_string("https://bulletechapps.com/Apps/UpdateSync/usrtrn.php",_rtrnArgs);
	return rtrn;
}
/// @function UpdateSync_results(version);
/// @description Return results
/// @param {real} version This version
function UpdateSync_results(_version) {
	if (ds_map_find_value(async_load, "status") == 0) {
		switch (ds_map_find_value(async_load, "result")) {
			case "0":
				return 0;
			break;
			case "2":
				return 1;
			break;
			case "3":
				return 2;
			break;
			case "4":
				return 3;
			break;
			default:
				var _ret = ds_map_find_value(async_load, "result");
				_ret = base64_decode(string_copy(_ret,string_pos(".",_ret)+1,string_length(_ret)));
				var vers = string_copy(_ret,1,string_pos(",",_ret)-1);
				_ret = string_copy(_ret,string_pos(",",_ret)+1,string_length(_ret));
				var _link = _ret;
				if (real(vers) > _version) {
					return _link;
				}
				else {
					return 4;
				}
		}
	}
	else {
		return 5;
	}
}