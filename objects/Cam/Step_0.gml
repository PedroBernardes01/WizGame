/// @description Insert description here
// You can write your code in this editor

if !instance_exists(Player) exit;
x = lerp(x,Player.x,0.1)
y = lerp(y,Player.y-Cam.camheight/2,0.1)
camera_set_view_pos(view_camera[0],x-Cam.camwidht/2,y-Cam.camheight/2)