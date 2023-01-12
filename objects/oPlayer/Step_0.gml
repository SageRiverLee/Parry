/// @description Insert description here
// You can write your code in this editor
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
dash = keyboard_check_pressed(vk_shift)
swing_begin = mouse_check_button_pressed(mb_left)
swing_end = mouse_check_button_released(mb_left)

//Movement
#region

if(dash){
	hsp = sign(hsp) * dash_speed;
	vsp = sign(vsp) * dash_speed;
}
if(abs(hsp) < move_speed) {
	hsp = (right + -left) * (move_speed)
} else{
	hsp = Approach(hsp, 0, decel)
}
if(abs(vsp) < move_speed) {
	vsp = (-up + down) * (move_speed)
} else {
	vsp = Approach(vsp, 0, decel)
}


if(collision_line(x, y, x + hsp + (sprite_get_width(0)/2) * sign(hsp), y, oWall, 0, 0)){
	while(!collision_line(x, y, x +  sign(hsp) + (sprite_get_width(0)/2) * sign(hsp), y, oWall, 0, 0)) x += sign(hsp);
}else{
	x += hsp;
}
if(collision_line(x, y, x, y + vsp + (sprite_get_height(0)/2) * sign(vsp), oWall, 0, 0)){
	while(!collision_line(x, y, x, y + sign(vsp) + (sprite_get_height(0)/2) * sign(vsp), oWall, 0, 0)){ y += sign(vsp);}
}else{
	y += vsp;
}

#endregion
//Sword things
#region
if(swing_begin){
	swing = [mouse_x, mouse_y];
	dir = point_direction(x, y, swing[0], swing[1]);
}
if(swing_end){
	var endCoords = [mouse_x, mouse_y];
	
	var swingDir = point_direction(swing[0], swing[1], endCoords[0], endCoords[1]);
	if(point_distance(swing[0], swing[1], endCoords[0], endCoords[1]) <= 10){
		CreateSlash(type.jab);
	} else if (InRange(swingDir, dir, 45, 0) || InRange(swingDir, dir, 45, 1)){
		CreateSlash(type.up);
	} else if (InRange(swingDir, dir, 135, 1)){
		CreateSlash(type.right);
	} else if (InRange(swingDir, dir, 135, 0)){
		CreateSlash(type.left);
	} else{
		CreateSlash(type.down);
	}
}
#endregion


