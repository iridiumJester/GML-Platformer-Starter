/// @desc Going to next room

if room_exists(rmPlatformerEnd) 
{
	room_goto_next()
}

if room_exists(rmPortals) 
{
	room_goto_next()
}

if keyboard_check_pressed(vk_left) 
{
	if room_exists(rmHellWorld) 
	{
		room_goto_(rmHellWorld)
	}
}

if keyboard_check_pressed(vk_right) 
{
	if room_exists(rmFunLand) 
	{
	room_goto_(rmFunLand)
	}
}