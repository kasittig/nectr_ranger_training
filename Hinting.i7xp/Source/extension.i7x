Version 1 of Hinting by Karen Sittig begins here.

Explaining relates one thing to various things. The verb to explain means the explaining relation.
Instead of hinting about something when something unexamined (called the clue) explains the noun: 
    say "You're still missing some information that might be useful to understanding the problem. [More]"; 
    if player consents, try hinting about the clue.
Requiring relates one thing to various things. The verb to require means the requiring relation.
Instead of hinting about something when the noun requires something (called the implement) which is not carried by the player: 
    say "You're missing an object that might be useful to resolving this problem. [More]"; 
    if player consents, try hinting about the implement.
Hinting about is an action applying to one visible thing. Understand "hint about [any thing]" as hinting about.

Carry out hinting about: 
    if something explains the noun, say "You might want to review [the list of things which explain the noun]. "; 
    if the noun requires something: 
        say "You should be sure that you have [the list of things required by the noun]. "; 
    otherwise: 
        say "Sorry, I can't advise you further on that.".

Carry out hinting about something which explains something (called target): 
    if target is unseen, say "[The noun] might prove useful information, sooner or later." instead; 
    otherwise say "You could examine [the noun]." instead.
Carry out hinting about something which is required by something: 
    say "[The noun] might be useful to have. [More]"; 
    if player consents: 
        if a seen thing requires the noun, say "[The noun] may help with [the list of seen things which require the noun]." instead; 
        otherwise say "There are [number of things which require the noun in words] problems for which [the noun] might come in handy." instead.

Instead of hinting about something unseen: 
    if the noun is visible: 
        now the noun is seen; 
        continue the action; 
    say "Perhaps you should explore further. "; 
    if the ultimate location of the noun is an unvisited room: 
        try hinting about the ultimate location of the noun; 
    otherwise: 
        if the ultimate location of the noun is the location: 
            say "You're in the correct room right now[if the visible shell of the noun is a thing]. Try further exploring [the visible shell of the noun][end if]."; 
        otherwise: 
            try hinting about the ultimate location of the noun.
Instead of hinting about a visited room: 
    say "There's a room you've visited, but you haven't exhausted all there is to see there. [More]"; 
    if player consents: 
        say "Try going back to [the noun]. [More]"; 
        if player consents, direct player to the noun.
Instead of hinting about an unvisited room: 
    say "There's a room you haven't yet visited. [More]"; 
    if player consents, direct player to the noun.
To direct player to (goal - a room): 
    let way be the best route from location to the goal, using even locked doors; 
    if way is a direction, say "Try going [way] to start your explorations."; 
    otherwise say "Sorry, the route is an indirect one.".
Instead of hinting about a portable seen thing which is not visible: 
    if the noun is scenery, continue the action; 
    say "You have seen the item you need to solve this problem, but it's not in sight at the moment. [More]"; 
    if player consents: 
        try hinting about the ultimate location of the noun.

A thing can be seen or unseen. A thing is usually unseen. The player is seen. After printing the name of something (called target): now the target is seen.

A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined.

To decide what room is the ultimate location of (item - a thing): 
    let place be the holder of the item; 
    while the place is a thing: 
        let the place be the holder of the place; 
    if the place is a room, decide on the place.
To decide what thing is the visible shell of (item - a thing): 
    if item is visible, decide on the item; 
    let place be the holder of the item; 
    while place is a thing and place is not visible: 
        let place be the holder of the place; 
    if the place is visible, decide on the place.
To say more: 
    say "[paragraph break]Shall I go on? > ".

Carry out hinting about a locked lockable thing: 
    say "You could unlock [the noun] with [the matching key of the noun]." instead.
Instead of hinting about a locked thing when the matching key of the noun is not carried by the player: 
    if the player can see the matching key of the noun: 
        say "Perhaps [the matching key of the noun] would help."; 
    otherwise: 
        say "[The noun] is locked. There must be a key around somewhere. [More]"; 
        if player consents, try hinting about the matching key of the noun.
Carry out hinting about a closed openable unlocked thing: 
    say "You could open [the noun]." instead.
Carry out hinting about an open door: 
    say "You could enter [the noun]." instead.
Carry out hinting about an unexamined thing: 
    say "You might find out something if you examine [the noun]." instead.
Carry out hinting about an edible thing: 
    say "You could eat [the noun]." instead.
Carry out hinting about a wearable thing: 
    say "You could wear [the noun]." instead.
Carry out hinting about a pushable between rooms thing: 
    say "You could push [the noun] some direction." instead.

Hinting ends here.