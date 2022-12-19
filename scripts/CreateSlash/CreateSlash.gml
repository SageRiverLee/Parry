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
	var swing = instance_create_layer(x, y, "Swings", oSwing);
	swing.creator = self;
	switch(slashType){  
		case type.up:
			swing.dmg = 1;
			swing.spd = 0;
			swing.duration = 15;
			
		break;
		case type.down:
			show_debug_message("Feint!");
		break;
		case type.left:
			show_debug_message("Swipe!");
		break;
		case type.right:
			show_debug_message("Slash!");
		break;
		case type.jab:
			show_debug_message("Jab!");
		break;
		default:
			show_debug_message("You hella messed up here");
	}
}