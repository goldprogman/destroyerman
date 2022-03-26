for (i=0;i<5;i++) {
draw_rectangle(drawtx-i, drawty-i, drawbx+i, drawby+i, true);
	}
draw_set_font(Font1);
if (battleturn==1) {
draw_text_ext_colour(tx+63, ty+16, fights[0+fightpart], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+63, ty+48, fights[1+fightpart], 18, 275,c_white,c_white,c_white,c_white,1);
}
	if (battleturn==2) {
draw_text_ext_colour(tx+63, ty+16, acts[0], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+319, ty+16, acts[1], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+63, ty+48, acts[2], 18, 275,c_white,c_white,c_white,c_white,1);
draw_text_ext_colour(tx+319, ty+48, acts[3], 18, 275,c_white,c_white,c_white,c_white,1);
	}
	
	if (battleturn==3) {
		for (i=0;i<array_length(obj_soul.itemlist);i++)
draw_text_ext_colour(tx+63+(256*(i%2)), ty+16+(32*floor(i/2)), obj_soul.itemlist[i], 18, 275,c_white,c_white,c_white,c_white,1);
	}