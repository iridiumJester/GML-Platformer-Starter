/// @desc Core Player Logic

// Get player inputs

// Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{

vsp = -jumpsp

}

// Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{

	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,oWall))
{

	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp

// Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerJump;
	image_speed = 0;
	
	// jump up
	if (vsp < -(jumpsp / 2)) 
	{
		image_index = 0;
	}
	// top of jump
	else if (vsp >= -(jumpsp / 2) and vsp <= (jumpsp / 2)) 
	{
		image_index = 1;
	}
	// falling
	else if (vsp > (jumpsp / 2))
	{
		image_index = 2;
	}
}
else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerWalk;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

// Sit!!!
if (keyboard_check(vk_down)) 
{
	sprite_index = sPlayerSit;
}