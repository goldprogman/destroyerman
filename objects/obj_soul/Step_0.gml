switch (battleturn){
case (0): x=209; y=424;
obj_buttons.image_index=selection;
switch (selection) {
case 3: x+=68;
case 2: x+=65;
case 1: x+=65;
}
if (keyboard_check_pressed(vk_left)) {
	selection--;}
if (keyboard_check_pressed(vk_right)) {
	selection++;}
if (selection<0||selection>3) {
	selection-=4*sign(selection);
}
if (keyboard_check_pressed(ord("Z")))
{
	switch (selection) {
	case (0): battleturn=1; selection=0; rectanglehandler.fightpart=0; fightchoice=false; break;
	case (1): battleturn=2; selection=0; break;
	case (2): battleturn=3; selection=0; break;
	}
}
break;
case (1):	
switch (selection) {
	case (0):x=81; y=287; break;
	case (1):x=81; y=319; break;
}
if (keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right)||keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down)) {
	selection=(selection+1)%2;}
	if (keyboard_check_pressed(ord("Z")))
{
	if (fightchoice) {
	input=selection;
	battleturn=5;
	} else {
	target=selection;
	fightchoice=true;
	rectanglehandler.fightpart=2;
	selection=0;
	}
}
	
	break;
case (2): 
switch (selection) {
	case (0):x=81; y=287; break;
	case (1):x=337; y=287; break;
	case (2):x=81; y=319; break;
	case (3):x=337; y=319; break;
}
if (keyboard_check_pressed(vk_left)) {
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_right)) {
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_up)) {
	selection-=2;}
if (keyboard_check_pressed(vk_down)) {
	selection+=2;}
if (rightinput&&!keyboard_check(vk_right)) {rightinput=false;}
if (leftinput&&!keyboard_check(vk_left)) {leftinput=false;}
if (upinput&&!keyboard_check(vk_up)) {upinput=false;}
if (downinput&&!keyboard_check(vk_down)) {downinput=false;}
obj_buttons.image_index=4;
if (selection<0||selection>3) {
	selection-=4*sign(selection);
}
break;
case (5): if (input=1) {
if (tx!=135) {tx=135; bx=504; fightwait=true;
	striker= instance_create_depth(-50,-50,0,obj_you);
	puck= instance_create_depth(-50,-50,0,obj_puck);
	opp= instance_create_depth(-50,-50,0,obj_opponent);}
	
if (!fightwait) {	
	selection=0;
if (keyboard_check(vk_up)) {
	selection++;}
if (keyboard_check(vk_down)) {
selection--;}
if (keyboard_check(ord("Z"))) {
	selection/=2;}
	x=146; 
	y=320-(50*selection);
	obj_you.y=y;
	obj_you.x=x+24;
	if (puck.winner!=0) {
		if (puck.winner=-1) {playerdamage(3);}
		if (puck.winner=1) {damage(3);}
		instance_destroy(puck); instance_destroy(striker); instance_destroy(opp);
		battleturn=0; tx=37; bx=601;
		selection=0;
	}
}
} else {
	//damage(3);
	battleturn=0;//hhelp me
}
}
//show_debug_message(string(selection) + " " + string(battleturn))
//0: your turn, regular
//1: fight choices
//2: act choices
//3: item choices
//4: mercy choices
//5: fight action