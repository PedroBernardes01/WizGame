/// @description Insert description here
// You can write your code in this editor

if !instance_exists(Player) exit
if !place_meeting(x+1366,y,Basic_CamColision) || !place_meeting(x-1366,y,Basic_CamColision)
	x = lerp(x,Player.x,0.1)
if !place_meeting(x,y-768,Basic_CamColision)
	y = lerp(y,Player.y-Cam.camheight/3,0.1)
camera_set_view_pos(view_camera[0],x-Cam.camwidht/2,y-Cam.camheight/2)