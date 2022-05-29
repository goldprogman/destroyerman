/// @description Insert description here
// You can write your code in this editor
y+=yvel;
yvel+=yacc;
x+=xvel;
xvel+=xacc;
fusetimer--;
if (fusetimer<0) {
instance_create_depth(x,y,-100,obj_candy)	
instance_create_depth(x,y,-100,obj_candy)	
instance_create_depth(x,y,-100,obj_candy)	
instance_create_depth(x,y,-101,obj_bom)	
audio_play_sound(snd_explosion,10,false)
instance_destroy();
}