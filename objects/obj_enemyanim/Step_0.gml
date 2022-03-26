/// @description Insert description here
legs.image_yscale=1+(sin(degtorad(animtimer*5))*0.05);
head.y=128-(sin(degtorad(animtimer*5))*7.2)
arm.image_angle=0+(sin(degtorad(animtimer*5))*10)
legs.y=237+yfly;
head.y+=yfly;
arm.y=136+yfly;
animtimer++;