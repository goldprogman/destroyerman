/// @description Insert description here
// You can write your code in this editor
image_xscale=2+0.01*timer;
image_yscale=2+0.01*timer;
x=xstart+random_range(-1,1);
y=ystart+random_range(-1,1);
if (timer>=50) {
transp=60-timer;
image_alpha=1/transp;
}
if (timer>=60) {
instance_destroy();	
}
timer++;