/// @description attacks
if (battleturn==11) {
switch(turn) {
case 1:
if (attacktimer=0) {
bomb1=instance_create_depth(319, 114,-100,obj_bomb)
bomb1.yvel=4.5;
bomb1.yacc=-0.05;
}
if (attacktimer=91) {	
bomb2=instance_create_depth(369, 319,-99,obj_bomb)
bomb3=instance_create_depth(269, 319,-99,obj_bomb)
}
if (attacktimer=182) {	
bomb4=instance_create_depth(369, 369,-99,obj_bomb)
bomb5=instance_create_depth(269, 269,-99,obj_bomb)
bomb6=instance_create_depth(369, 269,-99,obj_bomb)
bomb7=instance_create_depth(269, 369,-99,obj_bomb)
}
if (attacktimer=300) {
battleturn=0; atkcleanup();	
}
break;
case 2:
if (attacktimer=0) {
bomb1=instance_create_depth(319, 259,-100,obj_bomb)
bomb2=instance_create_depth(319, 379,-100,obj_bomb)
bomb1.death=false;
bomb2.death=false;
}
bomb1.x=319+sin(degtorad(attacktimer*5))*60;
bomb1.y=319+cos(degtorad(attacktimer*5))*60;
bomb2.x=319+sin(degtorad((attacktimer*5)-180))*60;
bomb2.y=319+cos(degtorad((attacktimer*5)-180))*60;
if (attacktimer=460) {
battleturn=0; atkcleanup();	
}
break;
case 3: 
if (attacktimer%30==0) {
dynarandom=random_range(-50,50);
dynax=319+dynarandom+(100*sign(dynarandom));
dyna1=instance_create_depth(dynax,40+random_range(-20, 20),-100,obj_dynamite)
dyna1.yvel=10;
dyna1.yacc=-0.2;
dyna1.rotvel=10;
}
if (attacktimer>300) {
battleturn=0; atkcleanup();	
}
break;
case 4: 
if (attacktimer%40==0){
bomb1=instance_create_depth(319+100*sign(random_range(-1,1)), random_range(54,174),-100,obj_bomb)
bomb1.yvel=9;
bomb1.yacc=-0.15;
bomb1.image_speed=1.5;
}
if (attacktimer%100==0){
rand=degtorad(random_range(-180,180))
gren1=instance_create_depth(319+319*sin(rand), 319-319*cos(rand),-100,obj_grenade)
}
if (attacktimer>=400){
battleturn=0;atkcleanup();	
}
break;
case 5:
if (attacktimer<60) {
	yfly-=4;
}
if (attacktimer>=60&&attacktimer<90) {
	
}
}}//put breaks BEFORE this line
attacktimer++;
/*if (attacktimer%20==0) {
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
attacktimer++;*/