// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScript(textinfo){
	obj=instance_create_depth(0,0,-10000,obj_dialoguehandler);
	obj.text=textinfo;
}

function TextboxScript(textinfo){
	obj=instance_create_depth(0,0,10000,obj_dialoguehandler);
	obj.text=textinfo;
	obj.font=0;
}