/// @description sex
if (text=="ARRAYMODE") {
arraymode=true;
currenttext=0;
}
if (arraymode) {
text=textarray[currenttext];	
}
lookedupfont=fontlookupsheet[font]; //should probably start commenting shit
if (font=0) {
draw_set_font(Font1);	
} else {
draw_set_font(Font4);}
fontwidth=lookedupfont[1];
//thing that makes the text pop in one character per X frames
texttimer++;
if (texttimer>=timedelay) {
cut++;
texttimer=0;
}
i=1; letter=0; line=0;
while (i<=string_length(text)&&i<cut) {
	
	//BASICALLY detects if the word currently being typed would go out of bounds
	//and if it does it'll boot it into the next line
	length=0;
	while (string_char_at(text,i)!=" " && i<string_length(text)) {
		length++;
		i++;
	}
	if (letter+length>linecapacity) {
		letter=0; line++;
	}
	i-=length;
	//draw letter one at a time
	show_debug_message(string(i)+" "+string(letter)+" "+string(length)+" "+string(beginx+(letter*fontwidth))+" "+string(beginy+((fontwidth*2-1)*line)));
	draw_text_ext_colour(beginx+(letter*fontwidth), beginy+((fontwidth*2-1)*line), string_char_at(text,i), 18, 275,c_black,c_black,c_black,c_black,1);
	i++; letter++;
}
if (cut-30>i&&fontwidth=9) {
	if (arraymode&&currenttext<array_length(textarray)-1) {
	currenttext++; i=0; cut=0; letter=0; line=0;
	} else {
obj_enemy.initializeturn();
instance_destroy();}
}