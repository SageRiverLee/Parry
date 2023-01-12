/// @description Insert description here
// You can write your code in this editor
draw_self()
switch(player_animation_state){
	case animationState.moving:
		sprite_index = sPlayerMove;
		if(mouse_y < y){
			if(mouse_x > x){
				image_index = 3;
			} else{
				image_index = 2
			}
		} else{
			if(mouse_x > x){
				image_index = 0;
			} else{
				image_index = 1;
			}
		}
	break;
	default:
	//Add later when more animations
}






