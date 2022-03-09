/// @description attacks
if (battleturn==11) {
//switch(turn) {
//case 0:
if (attacktimer%20==0) {
bomb1=instance_create_depth(250+random_range(-50, 50),-10+random_range(-20, 20),-100,obj_bomb)
bomb1.yvel=10;
bomb1.yacc=-0.15;
bomb1.image_speed=2;}
if (attacktimer%30==0) {
dyna1=instance_create_depth(450+random_range(-50, 50),40+random_range(-20, 20),-100,obj_dynamite)
dyna1.yvel=10;
dyna1.yacc=-0.2;
dyna1.rotvel=10;
}
if (attacktimer>300) {
	atkcleanup();
	battleturn=0;tx=37;
ty=255;
bx=601;
by=384;
attacktimer=-1;
}
attacktimer++;
//break;
//}
}