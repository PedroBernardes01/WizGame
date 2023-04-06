/// @description Loop
// You can write your code in this editor
spd = 6
Movex = (-keyboard_check(lft)+keyboard_check(rgt)) * spd
if place_meeting(x,y+Movey,Basic_Colision){
	Movey = 1
	if place_meeting(x,y+3,Basic_Colision){
		Movey = 0
		if keyboard_check_pressed(up)
			fram=0
	}
}
else{
	Movey += 1
}
if place_meeting(x+spd,y-1,Basic_Colision) && Movex > 0{
	Movex = 1
	if place_meeting(x+1,y-1,Basic_Colision)
		Movex = 0
}
if place_meeting(x-spd,y-1,Basic_Colision) && Movex < 0{
	Movex = -1
	if place_meeting(x-1,y-1,Basic_Colision)
		Movex = 0
}
if place_meeting(x,y+0.5,stair){
	Movey = 0
	if place_meeting(x,y+0.0000001,stair)
		y-=spd
}
if fram <= frames{
	fram += 1
	if fram <= frames - 6
		y-=1
	else
		y-=13
	if place_meeting(x,y-13,Basic_Colision){
		y-=1
		if place_meeting(x,y-1,Basic_Colision)
			fram = frames+1
	}
	Movey = 0
} 
if Movex == 0
    sprite_index = Player_stop
else{
    sprite_index = Player_walk
	image_xscale = Movex < 0 ? 2 : -2
}
if mouse_check_button_pressed(Magic1)
	instance_create_depth(x+64,y,3,Mg1,{speed: 0})
x += Movex
y += Movey