Version 1 of Temple Island by Karen Sittig begins here.

A thing can be broken or repaired. A thing is usually repaired.

The bridge is south of Temple Island and north of Howl. The bridge is a door. The bridge is closed and unopenable. The bridge is broken. "A plank bridge extends before you. [if the bridge is open] It looks newly repaired[otherwise] It appears to be missing a plank[end if].".

Understand "cross [something]" as crossing. Crossing is an action applying to one thing.

Before going through the closed bridge:
	say "(first opening of the bridge) You notice that the bridge is missing a plank.";
	say "The bridge must be repaired before you can cross.";

Check crossing:
	if the noun is not a door, say "[The noun] is not something you can cross." instead;
	if the noun is broken, say "[The noun] needs to be repaired before it can be crossed." instead;

Carry out crossing:
	try entering the noun

Temple Island ends here.