// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerdamage(blow){
	hp-=blow;
	obj_1x4.alarm[0]=20;
	audio_play_sound(snd_hurt, 5, false);
}

function damage(blow){
enemydmghandler.enemydamage(blow);	
}

function atkcleanup(){
instance_destroy(obj_dynabeam);
instance_destroy(obj_beamorigin);
instance_destroy(obj_bomb);
instance_destroy(obj_dynamite);
instance_destroy(obj_beam);
}