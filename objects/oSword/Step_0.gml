/// @description Insert description here
// You can write your code in this editor
dir = point_direction(owner.x, owner.y, mouse_x, mouse_y)
x = owner.x + lengthdir_x(20, dir);
y = owner.y + lengthdir_y(20, dir);

image_angle = dir;

if(sprite_index == sSwordSlash && image_index == 10){
	sprite_index = sSword;
	image_index = 0;
}



