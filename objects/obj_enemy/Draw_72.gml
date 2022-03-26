/// @description pacifist
// You can write your code in this editor
if (battleturn==6) {
if (acttimer=0) {
switch (actchoice){
	case 0: TextLCOverride(["* DESTROYERMAN /n  ATK 50(25) /n  DEF 70", "* Likes: Bombs, explosionz, being /n  badass, PWNing and trolling!!! /n* Dislikes: Builderman from bloxpert islands you SUCKz builderman stop banishing knoddy"], 37); break;
	case 1: switch (friendliness) {
		case 0: TextboxScript("* You mention that you're oddly /n  familiar with explosives. /n* Destroyerman loved that!"); friendliness++; break;
		default: TextboxScript("* You gave Destroyerman a small /n  kiss. /n* Why did you do that?"); break;
	} break;
	case 2: switch (friendliness) {
		case 1: TextboxScript(["* Through the powers of scripting, you create a faulty bomb.", "* ...It blows up in your face. /n* Destroyerman loved that!"]); friendliness++; break;
		} break;
	case 3: switch (friendliness) {default: acttimer++;}
} //breaks here
acttimer++;}
}
/** You mention that you're oddly familiar with explosives.
Destroyerman loved that!
* Through the powers of scripting, you create a faulty bomb. (programmed pause)
* ...It blows up in your face.
Destroyerman loved that!
* You snicker with your face covered in ash.
Destroyerman loved that!
* Fixing the first oversight, you create another bomb.
* You try and light it, but it's got a short fuse-! (programmed pause)
* ...It blows up in your face again.
Destroyerman loved that!
* You sneeze and cough out some gunpowder and heartily laugh.
Destroyerman loved that!
* You create one more bomb and light it again.
* You toss it into the air, and...!
* It blows up in the shape of your face!
Destroyerman loved that!
* You tell Destroyerman what you've learned about pyrotechnics.
Destroyerman loved that!*/