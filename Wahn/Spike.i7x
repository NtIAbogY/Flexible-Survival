Version 1 of Spike by Wahn begins here.
[Version 1 - New Character]


[ libido of Spike - Spike in subby position    ]
[  0: nothing yet                              ]
[  1: talked into oral service / BJ            ]
[  2: nothing yet                              ]
[  3: nothing yet                              ]
[  4: nothing yet                              ]
[ 21: pressured into oral service / BJ         ]
[ 22: nothing yet                              ]
[ 23: nothing yet                              ]
[ 24: nothing yet                              ]
[ 41: forced into oral service / BJ            ]
[ 42: nothing yet                              ]
[ 43: nothing yet                              ]
[ 44: nothing yet                              ]

[ thirst of Spike                              ]
[  0: standard setting - calls player Boss     ]
[  1: calls player <name of player>            ]

Section 1 - Introduction 

instead of navigating Grey Abbey Library while (Alexandra is in Grey Abbey Library and a random chance of 1 in 4 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Meeting Spike[line break]";
	say "     Arriving back at the library, you are greeted by the sight of a male anthro doberman, leaning against the building's exterior wall close to the front entrance. He is casually smoking a cigarette, blowing out smoke as he watches you come closer. The doberman is a young adult, eighteen or nineteen from the looks of it, not that it means much anymore these days. He is dressed in a pair of ripped jeans, a skin-tight mesh shirt showing off his toned chest, as well as a loose-fitting collar around his neck, studded with spikes. With half of his head hair shaved off and the other half dyed neon green, he certainly has a memorable look. 'Hey there, I'm Spike,' the canine says to you in a firm tone, clearly taking care not to sound too eager. 'I was told you're the boss hereabouts,' he adds, then takes a pull from his cigarette, blowing a puff of smoke into the air after a short moment.";
	say "     'So... I've had enough of being just one of the pack, and I was thinking that you need a right-hand man. I'm plenty tough and wanna see some action out there in the city, not just a few blocks around the lair. Come on, if you agree, the queen bitch in the library can't tell me off no more.' His last comment, combined with the young man's physical appearance finally makes something click in your mind, and you realize with a start who and what he is. You are talking with one of Alexandra's offspring - who clearly had a bit of a growth spurt recently, turning into this young man. From the looks of it, he's inherited a lot of the 'bad dog' attitude of his mother, and has decided to make a name for himself in a typical 'young though guy' fashion - by becoming a hanger-on for the biggest, baddest person he knows - you. After all, you did make Alexandra your bitch.":
	WaitLineBreak;
	say "     With this new realization in mind, you take another look at Spike: this young canine looks about 18 years old and clearly has been working out a bit, giving him a toned but not too bulky physique that should serve him well in a fight. He shows a stoic and tough expression that you think must have been practiced and perfected in front of a mirror, yet he can't quite hide the excitement betrayed by his slowly wagging tail. When he realizes what you are looking at, Spike concentrates to stop the movement behind his back. The tension in his whole being is palpable, with the young dog waiting for you to reply to his offer.";
	LineBreak;
	say "     [bold type]What do you tell Spike as your answer?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Take him on as your companion. He'll learn a lot.";
	say "     [link](2)[as]2[end link] - Tell him to be a good doggie and go back to Alexandra.";
	say "     [link](3)[as]3[end link] - If he's so tough, he can just set out alone. (Send him away)[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to accept him, [link]2[end link] to send him back to Alexandra or [link]3[end link] to send him away.";
	if calcnumber is 1:
		LineBreak;
		say "[SpikeAccepted]";
		decrease libido of Alexandra by 1; [one less teen following Alexandra around]
	else if calcnumber is 2: [send him back to Alexandra]
		LineBreak;
		say "     As you tell the young dog that he should go back to his mother, Spike's expression just gets more determined and he pushes himself off the wall to step closer and persuade you. 'Come on! You know I can be very useful for you. I could keep your back protected when you fight a group of people, or be a lookout, and I have a [italic type]really[roman type] good nose too. I could sniff it out if someone wants to hide themselves or some nice stuff from you. Or all sorts of other things. You'd regret not having me along!' He's really putting everything he has into this plea, trying to show his toughness, but at the same time a bit of the typical 'puppy dog eyes' creeps into his expression too.";
		say "     [bold type]Will you change your mind?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, fine. He can follow you around.";
		say "     ([link]N[as]n[end link]) - Nope. This dog is gonna go straight back to mommy.";
		if player consents:
			LineBreak;
			say "[SpikeAccepted]";
		else:
			LineBreak;
			say "     Telling the young man that no, you [italic type]actually[roman type] just want him to go back to his mother hand help her keep on top of the unruly bunch of his siblings, Spike growls under his breath. Flinging the cigarette away with an angry flick of his wrist, the anthro canine grumbles, 'This is fucking stupid,' and looks to the ground sulkily. For a moment, it seems like he'll just reject your decision, but then he suddenly looks up at you and barks out, 'I thought you'd be different. Like a real leader or something!' And with that, he turns his back to you, shuffling off to get back into the library.";
	else: [send him away - you monster!]
		LineBreak;
		say "     As you tell the young dog that he should go off on his own, he freezes in motion for a second, not sure what to reply. Clearly, this is one option that he hadn't even considered when he played through things in his mind. You see him swallow nervously, glancing to the library entrance for a second before he shakes his head to himself. 'Okay then, I'll do it,' Spike says, his firm tone sounding just a little bit brittle to your ears as he pushes himself off the wall. 'I'm gonna go make my own way, out there. Alone in the city,' he adds, taking a few slow steps down the road as if waiting to hear you say that he passed the test and you'll keep him now. But no, all you give him is a wish for good luck, which leaves Spike standing there for a moment longer, his back turned to you, before he runs away, not stopping for one second before he is out of sight.";
		decrease libido of Alexandra by 1; [one less teen following Alexandra around]

to say SpikeAccepted:
	say "     As you agree to take Spike along as your companion, his tail starts wagging up a storm and the young man says excitedly, 'Right on! We'll make this city ours! Let's have some fun!' With his hand lowering to rub the crotch of his jeans, you have little doubt what sort of 'fun' he expects to soon have. Taking another drag from his smoke, the anthro canine then flicks it aside and takes position by your side, steeling his expression to be properly tough and just a bit overbearing, as he expects the right-hand man of 'The Boss' would need to be.";

Section 2 - Combat Pet

doberman companion is a pet. doberman companion is a part of the player.
understand "Spike" as doberman companion.
understand "doberman" as doberman companion.
The description of doberman companion is "[SpikeDesc]".
The weapon damage of doberman companion is 7.
The level of doberman companion is 5.
The Dexterity of doberman companion is 16.
The summondesc of doberman companion is "[SummonSpike]".
The dismissdesc of doberman companion is "[DismissSpike]".
The assault of doberman companion is "[one of]Spike pounces your opponent, landing some good hits.[or]The anthro doberman by your side lands a kick on the leg of your opponent, hurting and distracting them.[or]An aggressive bark by Spike distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, Spike snaps for your enemy with his teeth, leaving a gash as he is fought off.[at random]".
the fuckscene of doberman companion is "[SexWithSpike]".

to say SummonSpike:
	remove Spike from play;
	if player is in Grey Abbey 2F and Spike is in Grey Abbey 2F: [summoning while standing next to him]
		say "     ...";
	else: [regular summoning]
		say "     ...";

to say DismissSpike:
	move Spike to Grey Abbey Library;
	if player is in Grey Abbey 2F: [regular dismiss]
		say "     ...";
	else: [dismissing him in the abbey]
		say "     ...";

Section 3 - NPC

Spike is a man.
The description of Spike is "[SpikeDesc]".
The conversation of Spike is { "<This is nothing but a placeholder!>" }.
The scent of Spike is "     ...".

to say SpikeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Spike] <- DEBUG[line break]";
	say "     Spike is young doberman that looks to be about 18 years old. He clearly has been working out a bit, giving him a toned but not too bulky physique that should serve him well in a fight. The young man is dressed in a pair of ripped jeans, a skin-tight mesh shirt showing off his toned chest, as well as a loose-fitting collar around his neck, studded with spikes. With half of his head hair shaved off and the other half dyed neon green and hanging down one side of his face as a middling long strand, he certainly has a memorable look.";
	if player is in Grey Abbey 2F:
		say "     Having claimed a corner of the upper library floor as his, Spike has made a little man-cave for himself, dragging a mattress up from the bunker and setting the desk that occupied the corner as a little reading nook on its side, to block a passage between two bookshelves. Posters of scantily dressed human women, as well as one or two with anthro furry erotic art have been pinned to the back wall so that he can look at them when lying down. Which Spikes does quite a bit, day-dreaming about things while stroking himself.";
	else:
		say "     Accompanying you on your travel throughout the city, he is never far away, usually just a step behind and a little to the side - serving as muscle and glowering at anyone who might dream of crossing you. As he notices your attention on himself, the doberman strokes a hand through his green-dyed hair and gives you a [if libido of Spike > 40]slightly frightened[else]respectful[end if] nod.";

Section 3 - Conversation

instead of conversing the Spike:
	if player is in Grey Abbey 2F and Spike is in Grey Abbey 2F:
		say "[SpikeTalkMenu]";
	else if companion of player is doberman companion:
		say "[SpikeTalkMenu]";
	else:
		say "     Spike isn't here.";

instead of conversing doberman companion:
	if doberman companion is not tamed:
		say "     Who?";
	else:
		if player is in Grey Abbey 2F and Spike is in Grey Abbey 2F:
			say "[SpikeTalkMenu]";
		else if companion of player is doberman companion:
			say "[SpikeTalkMenu]";
		else:
			say "     Spike isn't here.";

to say SpikeTalkMenu:

to say SpikeTalkMenu:
	LineBreak;
	project the figure of Spike_face_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is not defaultnamed and thirst of Spike is 0:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you by your name";
		now sortorder entry is 1;
		now description entry is "Allow Spike to call you [name of player]";
	[]
	if thirst of Spike is 1:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Boss";
		now sortorder entry is 2;
		now description entry is "Make Spike call you Boss instead of your name";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 3;
	now description entry is "Make Spike tell you about his background";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Tell him to call you by your name"):
					say "[SpikeTalk1]";
				else if (nam is "Tell him to call you Boss"):
					say "[SpikeTalk2]";
				else if (nam is "Ask him about himself"):
					say "[SpikeTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SpikeTalk1:
	say "     'Alright! Will do, [name of player]!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring looks when he thinks you are not watching.";

to say SpikeTalk2:
	say "     'Of course. Will do, boss!' Spike replies, taking care to appear upbeat about it even though you're taking this little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";

to say SpikeTalk3:
	say "     Lifting his arms and putting both hands behind his head, Spike looks at you and shrugs. 'You know most of it anyways. After all, you were the one who tamed the tough bitch that is my mom and brought her to the library. She had me and the others not much later. Living with all of them as a pack wasn't half bad at first either. You should have seen the things we did together! There are some corners in the library that... ah, but that's old news. Anyways, mom kept treating me like a pup even when I grew up. Hell, I was fully grown for days and she still lumped me in with the others. Got pretty annoyed with that shit, fast, so I started exploring the surrounding city blocks on my own. Anything to get out from under her paw a bit, you know.' Patting the leg of his ripped jeans and tugging on his skin-tight mesh shirt, the anthro doberman proudly explains that he found them scavenging.";
	say "     Then Spike goes on to grab his crotch, adjusting the penis-shaped bulge in it and says, 'After what happened next, I knew I didn't just want to go back and spend all my time cooped up in the library. Following the most amazing scent, I went down the street and into an alley - and there I met a bitch! Oh yeah, let me tell you, that husky slut was just asking for it. Totally in heat and ready to rub up against me from the first moment our eyes met. Damn, I still can't believe how good it felt to sink my bone into her, to take that needy bitch!' Now your canine companion is openly rubbing his dick through the fabric of his pants, caught up in the memory of losing his virginity. 'Well, I fucked her good! Tied with her and stayed on top till I had bred that pussy to the brim!'";
	WaitLineBreak;
	say "     Spike shares a grin with you, happy to share his story, but then suddenly his face draws into a bit of a frown and he goes on to say, 'When I got back home mom was angry about me just going off on my own and wanted to know what I had been doing. I told her exactly [italic type]whom[roman type] I had been doing, and that I was an adult now - and that stupid bitch just laughed!' Intentionally raising his voice to sound a bit more like Alexandra, Spike says in a biting tone, 'Just because you got your dick wet doesn't mean you're a man.' The young man shows a little bit of his teeth and growls under his breath, then barks out the words, 'I'll show her, and everyone else too! Things are gonna be great with me and you out in the city together!'";

Section 4 - Fucking

instead of fucking the Spike:
	say "[SexWithSpike]";

to say SexWithSpike:
	if (lastfuck of Spike - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Spike doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Spike, <positive reaction at being approached for sex>";
		wait for any key;
		say "[SpikeSexMenu]";

to say SpikeSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Spike suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Spike off";
	now sortorder entry is 2;
	now description entry is "...";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get a blowjob"):
					say "[SpikeSex1]";
				if (nam is "Suck Spike off"):
					say "[SpikeSex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;
	

[ libido of Spike - Spike in subby position    ]
[  0: nothing yet                              ]
[  1: talked into oral service / BJ            ]
[  2: nothing yet                              ]
[  3: nothing yet                              ]
[  4: nothing yet                              ]
[ 21: pressured into oral service / BJ         ]
[ 22: nothing yet                              ]
[ 23: nothing yet                              ]
[ 24: nothing yet                              ]
[ 41: forced into oral service / BJ            ]
[ 42: nothing yet                              ]
[ 43: nothing yet                              ]
[ 44: nothing yet                              ]


to say SpikeSex1: [oral on the player]
	if libido of Spike is 0:
		say "     As you tell the young doberman that you want him to blow your cock, he gapes openly at you and replies, 'Wait - what's this now?! I thought we'd pick up some babes out on the streets to have fun with. Or maybe even a girly dude. But now you want [italic type]me[roman type] to go down on you? I don't know, [if thirst of Spike is 1][name of player][else]Boss[end if].' The anthro canine makes half a step back and raises his hands in a warding gesture, clearly less than convinced that he wants to follow your request.";
		say "     [bold type]How do you want to deal with this? It will likely set the tone for your further relationship...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Talk him into going down on you.";
		say "     [link](2)[as]2[end link] - Pressure Spike into servicing you.";
		say "     [link](3)[as]3[end link] - Just Grab him and force him to his knees.";
		say "     [link](4)[as]4[end link] - Allow him to refuse.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk him into it, [link]2[end link] to pressure him into it, [link]3[end link] to physically make him do it, or [link]4[end link] to allow Spike to refuse.";
		if calcnumber is 1: [talked into it]
			LineBreak;
			say "     Raising an eye at his refusal, you tell the young man that in order to have total trust in one another, real men become more than just people who work together. That there is a whole level of devotion beyond simple obedience. Drawing him in with words full of fervor, you soon have Spike listening with eager attention, his tail wagging left and right. When you then go on to say that you think he is ready to become one of the people you really trust, the young doberman sinks down in front of you and looks up with a smile on his muzzle. Stroking the strands of neon-green head-hair out of his face, you run your hand along the side of his face and proclaim that you're proud of him, then push aside your clothes and free your [cock of player] shaft to stand erect before his eyes.";
			say "     ...";
			now libido of Spike is 1; [talked into it]
		else if calcnumber is 2: [pressured into it]
			LineBreak;
			say "     Looking scornfully at the resistant young man, you tell him in no uncertain terms that you are very disappointed in his performance as your companion. After all, how can you count on him for important tasks if he even fails at the most simple things you give him as a test. Something even the most stupid slut you could pick up on the street would be capable of doing. Spike's face is a study of emotions as you make your accusation-filled little speech, going from disapproval, to shock, to a deep worry. He gulps when you come to a stop, looking at him expectantly, then slowly sinks to his haunches. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you push aside your clothes to free your [cock of player] shaft to stand erect before his eyes.";
			say "     ...";
			now libido of Spike is 21; [pressured into it]
		else if calcnumber is 3: [forced into it]
			LineBreak;
			say "     Stepping right into the young doberman's comfort zone, you give him not a second further to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him that he gave himself to you, with everything this implies, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you push aside your clothes to free your [cock of player] shaft to stand erect before his eyes.";
			say "     ...";
			now libido of Spike is 41; [forced into it]
		else: 
			LineBreak;
			say "     Slowly reaching out to put a hand on his shoulder, you smile at the young man and tell him that he doesn't have to worry. You wouldn't want to do anything he isn't comfortable with. 'Thanks [if thirst of Spike is 1][name of player][else]Boss[end if], I appreciate it. I would do almost anything for you, but you know... I'm a real man. In control and on top. Not a bitch to service anyone - even you.' Giving him a little squeeze with your hand and nodding to the impressionable young man, you tell Spike that you'll respect his position. His tail wags left and right at this show of being treated 'right' and confirmed in his stance. Looks like your decision did cost you the immediate pleasure of enjoying the doberman's mouth, but gained you a new level of devotion from your young follower.";
			now libido of Spike is 100; [allowed him to refuse, not gonna bring it up again]

to say SpikeSex2: [oral on Spike]
	say "     A";

to say SpikeSex3: [virgin Spike fucked]
	say "     A";

to say SpikeSex4: [non-virgin Spike fucked]
	say "     A";

to say SpikeSex5: [Spike fucks player pussy]
	say "     A";

to say SpikeSex6: [Spike fucks player ass]
	say "     A";


Spike ends here.
