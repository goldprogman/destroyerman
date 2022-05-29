rand=random_range(3,6)
image_angle=360-random_range(0,40)
image_xscale=1.25-(rand/20);
image_yscale=1.25-(rand/20);
sound = audio_play_sound(snd_meteorfall,10,false)
audio_sound_pitch(sound, 0.55+(rand*0.1))
