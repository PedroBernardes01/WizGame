/// @description Insert description here
switch Player.class{
	case 1:
		sprite_index = Air_Pulse
		x = Player.image_xscale < 0 ? Player.x+64 : Player.x-64
		y = Player.y-10
		image_xscale = Player.image_xscale < 0 ? 1 : -1
		image_yscale = 1
		break;
	default:
		instance_destroy()
		break;
}
