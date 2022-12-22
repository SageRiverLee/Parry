// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum type{
	up,
	down,
	left,
	right,
	jab
}

function CreateSlash(slashType){
	switch(slashType){  
		case type.up:
		var swing = instance_create_layer(x + lengthdir_x(12, dir), y + lengthdir_y(12, dir), "Swings", oSwing);
			swing.dmg = 1;
			swing.spd = 0;
			swing.duration = 30;
			swing.creator = self;
			swing.dir = dir - 90;
			swing.sprite_index = sSwingForward;
			swing.image_angle = swing.dir;
		break;
		case type.down:
			show_debug_message("Feint!");
		break;
		case type.left:
			show_debug_message("Swipe!");
		break;
		case type.right:
			sword.sprite_index = sSwordSlash;
			sword.image_index = 0;
			sword.image_speed = 1;
		break;
		case type.jab:
			var swing = instance_create_layer(x + lengthdir_x(24, dir), y + lengthdir_y(24, dir), "Swings", oSwing);
			swing.dmg = 1;
			swing.spd = 0;
			swing.duration = 30;
			swing.creator = self;
			swing.dir = dir - 90;
			swing.sprite_index = sSwingJab;
			swing.image_angle = swing.dir;
		break;
		default:
			show_debug_message("You hella messed up here");
	}

}