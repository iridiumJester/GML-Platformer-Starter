/// @desc Establish key variable

hsp = 0;
vsp = 0;
grv = 0.5;
walksp = 6;
jumpsp = 15;
passedCheckpoint = false;

if (room == rmInfiniteJumps) 
{
	grv = 0.7;
	walksp = 8;
	jumpsp = 21;
}