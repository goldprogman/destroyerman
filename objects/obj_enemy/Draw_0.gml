/// @description chatting
if (battleturn==10) {
	texttimer++;
	if (texttimer>30) {
	draw_sprite(spr_dialogsmall, 0, 380, 100);	
	}
	currentchar=floor((texttimer-30)/2);
draw_set_font(Font4);
text = string_copy(textlines[turn],1,currentchar);
draw_text_ext_colour(400, 105, text, 18, 275,c_black,c_black,c_black,c_black,1);
if (currentchar-30>=string_length(textlines[turn])) {
battleturn=11;	
texttimer=0;
turn++;
}
}