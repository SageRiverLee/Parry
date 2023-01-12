/// @description Insert description here
// You can write your code in this editor
image_alpha -= 1 / duration;
y += lengthdir_y(spd, dir);
x += lengthdir_x(spd, dir);
if (image_alpha <= 0) instance_destroy(self);







