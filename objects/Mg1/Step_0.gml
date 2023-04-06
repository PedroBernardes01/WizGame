/// @description Insert description here
// You can write your code in this editor
switch Player.class{
	case 1:
		image_xscale = Player.image_xscale < 0 ? 1 : -1
		if !mouse_check_button(Player.Magic1)
			instance_destroy()
		x = Player.image_xscale < 0 ? Player.x+64 : Player.x-64
		y = Player.y-10
		break;
	default:
		instance_destroy()
		break;
}
