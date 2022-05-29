x+=sin(degtorad(image_angle))*(rand*1.5);
y+=cos(degtorad(image_angle))*(rand*1.5);
if (y>by) {
instance_create_depth(x,y,-100,obj_bom)
audio_play_sound(snd_meteor,10,false)
instance_destroy();
}