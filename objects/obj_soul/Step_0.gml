switch (battleturn){
case (0): x=209; y=424;
obj_buttons.image_index=selection;
switch (selection) {
case 3: x+=68;
case 2: x+=65;
case 1: x+=65;
}
if (keyboard_check_pressed(vk_left)) {
	audio_play_sound(snd_menumove, 5, false);
	selection--;}
if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(snd_menumove, 5, false);
	selection++;}
if (selection<0||selection>3) {
	selection-=4*sign(selection);
}
if (keyboard_check_pressed(ord("Z")))
{
	audio_play_sound(snd_select, 10, false);
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
	selection=(selection+1)%2;
	audio_play_sound(snd_menumove, 5, false);}
	if (keyboard_check_pressed(ord("Z")))
{
	audio_play_sound(snd_select, 10, false);
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
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_right)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=sign(0.5-(selection%2));}
if (keyboard_check_pressed(vk_up)) {
	audio_play_sound(snd_menumove, 5, false);
	selection-=2;}
if (keyboard_check_pressed(vk_down)) {
	audio_play_sound(snd_menumove, 5, false);
	selection+=2;}
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
		if (puck.winner=1) {damage(6);}
		instance_destroy(puck); instance_destroy(striker); instance_destroy(opp);
		battleturn=10; tx=233; bx=405; x=319; y=319;
		selection=0;
	}
}
} else {
	damage(3);
	battleturn=10;//hhelp me
	 tx=233; bx=405; x=319; y=319;
}
break;
case (11):
if (keyboard_check(vk_left)) {
	x-=3;}
if (keyboard_check(vk_right)) {
	x+=3;}
if (keyboard_check(vk_up)) {
	y-=3;}
if (keyboard_check(vk_down)) {
	y+=3;}
if (x-9<tx) {x=tx+9} if (x+9>bx) {x=bx-8} if (y-9<ty) {y=ty+9} if (y+9>by) {y=by-8}
break;
}
if (floor(invuln/5)%2==1) {
image_alpha=0.5;
} else {
image_alpha=1;	
}
if (hp<=0) {
	instance_create_depth(x,y,-1000,obj_souldeath);
	room_goto(Gameover);
	audio_stop_sound(mus_thedestroyer);
}
if (invuln>0) {invuln--;}
//show_debug_message(string(selection) + " " + string(battleturn))
//0: your turn, regular
//1: fight choices
//2: act choices
//3: item choices
//4: mercy choices
//5: fight action
//10: enemy dialogue
//11: enemy turn