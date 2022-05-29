animtimer++;
audio_stop_sound(mus_thedestroyer);
switch (endid) {
case 0: sprite_index=spr_neutralend; break;
case 1: sprite_index=spr_genocideend; break;
case 2: sprite_index=spr_pacifistend; break; }
if (animtimer>60) {
image_alpha=clamp((animtimer-60)/10,0,1);
}
if (animtimer=60) {
switch (endid) {
case 0: audio_play_sound(snd_neutralend,100,false); break;
case 1: audio_play_sound(snd_genocideend,100,false); break;
case 2: audio_play_sound(snd_pacifistend,100,false); break; }
}
