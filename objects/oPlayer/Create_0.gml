/// @description Variables and Such
// You can write your code in this editor
enum animationState {
	moving,
	damage
}

player_animation_state = animationState.moving;
move_speed = 5;
dash_speed = 15;
decel = 1;

hsp = 0;
vsp = 0;

sword = instance_create_layer(x, y, "Instances", oSword);

sword.owner = self;

swing = [0, 0];
//Function to check if a direction is within the range of the referenceNum. dir = 0 left, dir = 1 right
function InRange(checkingNum, referenceNum, range, dir){
	if(dir == 0){
		var topBound = (referenceNum + range);
		if (topBound > 360){
			return((checkingNum <= (topBound % 360)) || ((checkingNum <= topBound) && (checkingNum >= referenceNum)));
		}else{
			return ((checkingNum <= topBound) && (checkingNum >= referenceNum));
		}
	}
	if(dir == 1){
		var botBound = (referenceNum - range);
		if (botBound < 0){
			return((checkingNum >= (botBound + 360)) || ((checkingNum >= botBound) && (checkingNum <= referenceNum)));
		}else{
			return ((checkingNum >= botBound) && (checkingNum <= referenceNum));
		}
	}
	
	
	show_debug_message("ERROR: INVALID DIR FOR FUNCTION InRange()");
	return true;
}

