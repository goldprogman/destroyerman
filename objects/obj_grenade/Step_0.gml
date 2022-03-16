switch (state) {
case 0: yvel=(319-y)/10;
xvel=(319-x)/10;
state=1;
break;
case 1: 
if (tx<x&&x<bx) {
	if (ty<y&&y<by) {
		xvel/=3; yvel/=3;
		state=2;
	}
}
}
fusetimer--;
if (fusetimer<=0) {
	image_speed=1;
}