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

// Horizontal collision
if (place_meeting(x+hsp,y,oInvisibleWall))
{

	while (!place_meeting(x+sign(hsp),y,oInvisibleWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical collision
if (place_meeting(x,y+vsp,oInvisibleWall))
{

	while (!place_meeting(x,y+sign(vsp),oInvisibleWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp