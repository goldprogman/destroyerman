texttimer=0;
turn=0;
attacktimer=0;
textlines=["I must say, you're looking quite lean, green... and MEAN!!! You're the PERFECT target to test out new explosives on! HUHUHU! ", "BOOOOOOM!!!", "Try eating fuse", "I'm EXPLODING with PAIN"];

audio_play_sound(mus_thedestroyer, 100, true);
function initializeturn(){
	battleturn=11;	
texttimer=0; attacktimer=0;
turn++;
}