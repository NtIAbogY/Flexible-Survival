Version 1 of Ryan by Fuxi begins here.
[Character originally by Mizu]
[Coding Assistance by Prometheus]

[ Strength of Ryan - Date Failure ]

[ Perception of Ryan - Pregnancy Timer ]
[ 0 - Not pregnant                     ]
[ 1 - Ready to give Birth              ]
[ 25 - Large Baby Bump                 ]
[ 49 - Just Impregnated                ]

[ Hunger of Ryan - Number of Children ]

[ Libido of Ryan - Countdown for Pregnancy Talk ]

an everyturn rule:
	if Libido of Ryan > 1:
		decrease Libido of Ryan by 1;

an everyturn rule:
	if Perception of Ryan > 1:
		decrease Perception of Ryan by 1;
	else if Perception of Ryan is 1 and Ryan is visible:
		say "[RyanBirthing]";


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Ryan	"Ryan"

Ryan is a man.
ScaleValue of Ryan is 3. [X sized]
Body Weight of Ryan is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ryan is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ryan is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ryan is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ryan is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ryan is 8. [length in inches]
Breast Size of Ryan is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ryan is 2. [count of nipples]
Asshole Depth of Ryan is 12. [inches deep for anal fucking]
Asshole Tightness of Ryan is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ryan is 0. [number of cocks]
Cock Girth of Ryan is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ryan is 0. [Length in Inches]
Ball Count of Ryan is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ryan is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ryan is 1. [number of cunts]
Cunt Depth of Ryan is 12. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ryan is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ryan is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ryan is false.
PlayerRomanced of Ryan is false.
PlayerFriended of Ryan is false.
PlayerControlled of Ryan is false.
PlayerFucked of Ryan is false.
OralVirgin of Ryan is false.
Virgin of Ryan is false.
AnalVirgin of Ryan is false.
PenileVirgin of Ryan is true.
SexuallyExperienced of Ryan is true.
TwistedCapacity of Ryan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ryan is false. [steriles can't knock people up]
MainInfection of Ryan is "Fennec".
Description of Ryan is "[RyanDesc]".
Conversation of Ryan is { "Sir?" }.
The scent of Ryan is "Ryan smells of sex, heat, and fruit."

to say RyanDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Jerome: [HP of Jerome], Libido of Jerome: [Libido of Jerome] <- DEBUG[line break]";
	project Figure of Ryan_panties_icon;
	say "     Looking Ryan up and down, you take in the lithe fox's features. Currently lounging on your bed, your lovely fennec is covered head to paw in silky golden fur and has thick dark lashes that nicely complement his ocean-blue eyes and give him a slightly effeminate appearance. Despite Ryan's timidity, the lightly muscled cuntboy wears only flimsy black lace panties that do scantly anything to hide his heated pussy or curvy rump[if Perception of Ryan > 24], nor his blossoming baby bump[else if Perception of Ryan > 0] nor his large baby bump[end if][if Hunger of Ryan is 1] His only child clings close him but turns quickly to greet you smiling happily and alerting Ryan of your presence.[else if Hunger of Ryan > 1 and Hunger of Ryan < 8] Ryan's moderate litter of [Hunger of Ryan] young fennecs chatter excitedly as they see you alerting Ryan of your presence[else if Hunger of Ryan > 7] Ryan's massive brood of [Hunger of Ryan] young fennecs chatter excitedly as they see you, some of them even moving forward to hug and kiss you, quickly alerting Ryan of your presence[end if]. Noticing your attention, your lover smiles at you. 'Is there anything you need, sir?";


Section 2 - Talking

instead of conversing the Ryan:
	say "[RyanTalkMenu]";

to say RyanTalkMenu:
	project Figure of Ryan_panties_icon;
	let TalkDone be false;
	say "     [bold type]What do you wish to talk about with the fennec fox?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ryan's Past";
	now sortorder entry is 1;
	now description entry is "Ask him about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Space and Cleanliness";
	now sortorder entry is 2;
	now description entry is "Ask about his need for space and cleanliness";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 3;
	now description entry is "Boop his snoot!";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sexual Experience";
	now sortorder entry is 4;
	now description entry is "Ask about his increased skill in the bedroom";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Beach Date";
	now sortorder entry is 5;
	now description entry is "Invite Ryan out for a day at the beach";
	[]
	if (carried of Food > 0 and carried of Water Bottle > 0):
		choose a blank row in table of fucking options;
		now title entry is "Share Meal";
		now sortorder entry is 6;
		now description entry is "Share a can of food and a bottle of water with the fox";
	[]
	if "Fertile Pill Bottle" is listed in Traits of Ryan and "Pregnant" is listed in Traits of Ryan and Perception of Ryan is 0:
		choose a blank row in table of fucking options;
		now title entry is "Give Ryan Pill";
		now sortorder entry is 7;
		now description entry is "Give Ryan one of the fertile pills";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ryan's Past"):
					say "[RyanTalk1]";
				else if (nam is "Space and Cleanliness"):
					say "[RyanTalk2]";
				else if (nam is "Boop"):
					say "[RyanTalk3]";
				else if (nam is "Sexual Experience"):
					say "[RyanTalk4]";
				else if (nam is "Beach Date"):
					say "[RyanTalk5]";
					now TalkDone is true;
				else if (nam is "Share Meal"):
					say "[RyanTalk6]";
					now TalkDone is true;
				else if (nam is "Give Ryan Pill"):
					say "[RyanTalk7]";
				if TalkDone is false:
					say "[RyanTalkMenu]";
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Ryan looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RyanTalk1:
	say "     'You want to hear more about myself, sir? There's not much else to tell you, but I'm happy to remind you about anything you may have forgotten.' Smiling gently at you, Ryan grabs your hand to pull you onto the bed to lay with him before he begins. 'I grew up in a ritzy suburb. My parents weren't around much, and I was also rather shy, so I didn't make many friends. I came to this city for college, hoping I could come out of my shell, and it went wonderfully for a time before all of this happened,' the vulpine gestures at his body desparingly. 'I was out shopping when people started transforming. I got lucky and avoided the initial transformation, but a couple of fennecs caught me and gave me my new form.' Ryan sighs shakily as he remembers his attackers. Trying to calm the desert fox, you give his ears some gentle scratches and rubs and are rewarded with a murmur of pleasure as he nestles closer to you.";
	say "     'I wandered through the city for several weeks, somehow managing to evade any other threats until I stumbled upon the Shag Shack. I was desperate for a place to stay, so I begged Jerome to let me work there. He took me in and told me my smell and heat would bring him a profit.' Ryan's ears go flush as he reminisces. 'I didn't even know I was in heat or what that entailed. I was a mess before you came. You were my first client, the first to quench my heat, my first anything besides the other fennecs.' The gentle fox deflates a bit as he remembers his time at the Shag Shack but cheers up as he turns to you, hugging you tightly. 'And the rest is history. You put a kit in me and brought me to this library, sir. Thank you.'";

to say RyanTalk2:
	say "     Ryan goes to hold your hand and frowns as you question him on his need for hygiene and space. 'I suppose it's partly because of my upbringing and time at the Shag Shack. I grew up in a very prim household. Things like manners and cleanliness mattered greatly to my parents, and you've been inside the Shag Shack. I'm sure you noticed just how filthy it was inside, not to mention cramped, stuffed to the brim with whores, customers, and beds.' The short fox tenses up as he remembers the Shack. 'It disturbs me to think that I almost accepted that as my home, where my children would grow, where I would stay for the rest of my life.' Ryan shudders in revulsion and squeezes your hand to comfort himself. 'I can't thank you enough for allowing me to be more than that, Sir, for seeing more than a whore in me.'";

to say RyanTalk3:
	say "     The way Ryan adorably focuses on you, paired with the unbridled affection in his eyes, is too lovely to resist, and you can't stop yourself from giving him a quick boop. Giggling a bit, Ryan smiles and boops you back. 'I'm glad to have met you, sir.'";

to say RyanTalk4:
	say "     After fucking Ryan for a while, you've noticed your cute fox has progressed quite a bit from the whore you first met, who didn't even understand how his heats worked. Carefully you question your fox on his increased skill and knowledge regarding sex. Ryan, unsurprisingly, is somewhat reluctant to share his past experiences. Still, you gently coax your fox into speaking, reassuring him you won't be upset or think less of him for anything he tells you as you fluff his tail. 'I'm sure I don't need to tell you where I learned, sir. There weren't many good things about the Shag Shack, but... but I admit I enjoyed the sex,' Ryan's ears go red as he looks up at you anxiously. Petting Ryan, you smile comfortingly and nod for him to continue. 'I didn't know there were so many ways to please people and so many things to enjoy if you'd like to, sir. P-perhaps we can experiment, and I can show you some of the things I've learned?' Ryan mumbles the last bit. Humming noncommittally at his nervous question, you thank Ryan and give a couple of gentle parting pets.";

to say RyanTalk5:
	if Strength of Ryan is 1:
		say "     Briefly, the thought of trying to go on another date flicks through your mind again, but you quickly sour on it — the humiliating and depressing incident with the orca ruining any enjoyment the idea may have brought you. You daren't even try to bring up the idea of another outing to Ryan and put your poor fennec under any more distress.";
	else if daytimer is not day:
		say "     It'd be best to wait for the sun to rise before you invite Ryan on a date. You're sure your lovely fox will enjoy himself more in the warm daylight, but a romantic moonlit walk along the beach is a tempting idea.";
	else:
		say "     As you ask your question, Ryan looks up at you, worried. 'A trip to the beach, sir? Are you sure it'll be safe? I'd love to go with you, but the city isn't a place I want to wander around,' he frets anxiously. Stroking the fearful fennec's head and gently rubbing his ears, you assure him that the beach is safe and that you'll protect him during the journey. Ryan hesitates a bit more, torn between his usual caution and fear and his excitement toward the prospect of a beach date with you before finally he nervously agrees. 'A-alright, sir, you lead the way.' Grinning at him, you grab Ryan's hand and lead him out of the library with you. It's a relatively peaceful trip right up until the final stretch. You're only a couple blocks away from the promenade when a large orca decides to ambush you and your fox. Diving out of an alleyway, he breathes in deeply, taking in the scent of Ryan's heat, and rushes at you! Yelling at Ryan to get behind you and hide, you hurry to confront your attacker.";
		now inasituation is true;
		challenge "Killer Whale";
		if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
			if fightoutcome is 22: [submitted]
				say "[RyanBeachDateSubmit]";
			else: [lost]
				say "[RyanBeachDateLoss]";
		else if fightoutcome > 30: [fled]
			say "[RyanBeachDateFlee]";
		else if fightoutcome < 20: [player won]
			say "[RyanBeachDateVictory]";
		now inasituation is false;

to say RyanBeachDateSubmit:
	say "     The thought of submitting crosses your mind momentarily, but you quickly beat the idea from your mind knowing that the orca will show neither you nor Ryan any mercy. Unfortunately, your indecision seems to give your foe time to recover.";
	now inasituation is true;
	challenge "Killer Whale";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if fightoutcome is 22: [submitted]
			say "[RyanBeachDateSubmit]";
		else: [lost]
			say "[RyanBeachDateLoss]";
	else if fightoutcome > 30: [fled]
		say "[RyanBeachDateFlee]";
	else if fightoutcome < 20: [player won]
		say "[RyanBeachDateVictory]";
	now inasituation is false;

to say RyanBeachDateLoss:
	say "     Seeing an opening, the orca relieves you of your leg's support by sweeping them away with his thick and powerful tail. With you now on the ground and too weak to continue, the killer whale pulls you onto your knees, displaying a clear view of the beast's long, curving cock as it commences the ritual of emerging from its watertight home. 'Suck!' He orders you in a deep, rumbling command. Thrusting into your mouth at a slow and deliberate pace, you're made to slick his cetacean rod with your saliva while it becomes fully engorged. Eventually, you feel its immense length depart from your abused orifice before he indicates to you that he will be claiming another. He slides over you, his massive form pinning you against the cold concrete as his muscular tail spreads and otherwise prepares your legs for his eager intrusion. With a sharp jab, you feel the flexible member invade your ass, worming itself deeper into you like some meaty tentacle as he proceeds to pound your vulnerable hole.";
	say "     Influenced by the whale's perverse hold on you, you're soon unable to refuse the pleasure of such a wriggling intrusion. Slickly sliding across the supple walls of your [bodytype of Player] anus, the orca-man's impressive shaft probes the depths of your fleshy labyrinth, and it's not long before your hole is sufficiently stretched to accommodate the whole of his cock within your confines. Writhing in pleasure against the wet sand, this strange sensation is enough to drive you to climax, and - like clockwork - the beast's own release is made apparent as his thick, virile cum floods the confines of your stomach. Visibly bloated by such an impressive release, you feel the writhing organ soften before the whale pulls himself free of your tight hole. Satisfied with what he has wrought upon you, he departs, leaving you to lay across the concrete in a dizzy stupor.";
	WaitLineBreak;
	say "     While you lie on the ground recovering, you hear a panicked screech as the orca comes back, and you feel your heart sink as you realize what the sound was. Struggling in the orca's arms, Ryan is frantically trying to escape. 'Sir, help, please!' he screams for you, but desperately as you might want to assist your mate, after your brutal beating and fucking, you can't even stand, much less stop the orca. You can only give a pathetic whine in protest as the killer whale pins Ryan down on the concrete to lie in front of you, rips off his panties, and pushes his legs up. Lying where you are, you have a perfect view of Ryan's puffy canine spade, which means that you also have a perfect view to watch the strong cetacean's glossy cock part your lover's heated folds stretching him wide. You hear Ryan give a strained grunt as the beast pushes his girthy shaft into him. 'W-wait!' he stammers, but of course, the brute shows no restraint cramming inch after inch of cock into the small vulpine. He thrusts in deep, visibly bulging Ryan's stomach.";
	WaitLineBreak;
	say "     At first, your mate still struggles to resist, even stuffed full of dick; he persists in trying to push his attacker away, but quickly that resistance falls away. Ryan can't deny what his body needs. A strong male to pump him full of cum and leave him filled with pups, a need the orca is all too happy to fulfill, his oversized prick jammed past your lover's cervix and deep into his womb, primed and ready to bloat your lover with his seed with each hash thrust from the orca edging him ever closer to that goal and leaving Ryan seeing stars groaning out in pleasure as he pants from the intensity of the sensation. Thankfully Ryan's previous work in the shag shack [if Cock Length of Player > 20]and the time he spends with you [end if]seems to have adequately prepared him for taking the orca's oversized shaft[if Cock Length of Player < 14]. You wonder if your mate will even be able to feel you again after this as you consider just how massive the cock shoved inside him is[end if]. You're distracted from your thoughts as Ryan goes limp under the orca, and you feel your heart drop as you know he's given in to the pleasure. Your fox begins to pant slowly as you notice the cetacean's cock growling sloppy with a mixture of his and Ryan's juices.";
	say "     You can only watch impotently as the feral beast ravishes your lover, your shame and embarrassment only growing as Ryan's pleasure rises, moans and squeals replacing the vulpine's earlier groans of discomfort and pain, the orca's shaft glistening with his feminine juices. You even notice him rolling his hips to better receive the brute's shaft! It's not like you haven't watched Ryan get fucked before, but then you and he had control. It was something you both wanted! Now you're helpless, forced to listen to the raunchy wet noises of your fennec's pussy getting ruined. Turning to see you watching him and seeing the obvious pain and embarrassment on your face snaps Ryan out of his enjoyment momentarily. 'I'm so sorry, sir!' he sobs out to you, but despite Ryan's sorrow judging by his panting and increasingly loud moaning, your fox is edging ever closer to climax. You don't begrudge Ryan at all for his enjoyment, considering his heat and your own stolen orgasm under the orca. Your guess is quickly proved correct. A couple of rough thrusts later, your fox howls and shakes in orgasm, soaking the killer whale's shaft in his arousal while the walls of his snug cunny undoubtedly try to milk the superior male for every drop of his seed. The orca doesn't stop fucking Ryan for a moment slamming into the cuntboy's pussy and slinging his femcum across the ground with each withdrawal from the vulpine's sopping wet cunny.";
	WaitLineBreak;
	say "     Regardless of the humiliating situation that you find yourself in, you can't help but grow aroused at the sweet pheromones from Ryan's orgasm. But, it's not you who reaches orgasm with the beautiful fox but rather the victorious killer whale triumphantly bellowing as he floods your mate's wet snatch with his virile seed. He plants himself deep inside your lover to ensure every drop of his spunk is drained into him. Then, withdrawing slowly from Ryan, the cruel cetacean wanders off, satisfied by his two orgasms leaving you to watch his cum slowly flow out of your lover's abused pussy. You both lie down defeated, but eventually, you recover physically from the beating and the fucking you got and mentally from the agonizing humiliation of watching Ryan get raped while you could do nothing to stop it. Not wanting anything else to hurt either of you, you stumble to your feet and pick up your dazed fox while the orca's cum still leaks from his gaping pussy, some splashing on you. Currently in no state to return to the library, you stumble into an abandoned store and collapse to the floor.";
	say "     Already feeling wretched, your despair only grows as Ryan begins to weep, 'I'm so sorry, sir! I'm so sorry... I didn't do anything to help you fight. I couldn't stop him from-' A loud, hiccuped sob rolls through Ryan, preventing him from finishing his sentence. 'The worst part is that I even started to enjoy it. I'm such a worthless whore! Oh God, you're even hurt still!' Noticing a couple of light claw marks on your body Ryan starts hyperventilating as you rush forward to calm him. Hugging Ryan tightly, he cries into your chest, whimpering apologies and gripping your shoulders tightly as you assure Ryan that he has no reason to be the one feeling guilty. After all, you were the one that wanted to go on this trip and promised to protect him, then failed. Eventually, managing to soothe Ryan, you begin the long walk home. The both of you are utterly miserable as you enter the library and go down to your bed; flopping down on it, emotional exhaustion pulls you both into a dreamless sleep as you mutually hope to forget this horrible day.";
	CreatureSexAftermath "Player" receives "OralCock" from "Killer Whale";
	CreatureSexAftermath "Player" receives "AssFuck" from "Killer Whale";
	CreatureSexAftermath "Ryan" receives "PussyFuck" from "Killer Whale";
	now Strength of Ryan is 1;

to say RyanBeachDateFlee:
	say "     Realizing you're in a losing battle, you turn and run. Scooping up Ryan, you flee as fast as you can while pursued momentarily by your orca attacker, but your desperation gives you the edge. Winding through alleyways, you quickly manage to shake off the feral brute. Panting for breath, you and Ryan fall to the floor to recover energy before journeying to the library. Through your fatigue, you apologize for your failure to properly recognize the threats at the beach and your inability to fight them off, but Ryan's fretting cuts you off, 'You've nothing to be sorry for, sir. At least you tried your even bleeding still! I couldn't do anything at all to help,' your lover says worried and quite ashamed of himself as he looks over your wounds. Assuring Ryan you're okay, you begin the walk back to the library, relieved he's not upset with you and that you avoided any more threats. Back home, you go down to your bed and lay your tired fox down, apologizing for your failure one last time. You promise to grow stronger and let Ryan enjoy a proper day at the beach someday.";

to say RyanBeachDateVictory:
	say "     Defeating the orca. You give him a few vengeful farewell kicks and leave the cetacean knocked out on the cold concrete, then call out for Ryan. Scampering out from an alleyway, Ryan gives a paranoid glance toward the fallen killer whale and presses himself close to your side. He seems ashamed of himself for hiding from the fight but relaxes as he notices you smiling at him. Grabbing your mate's hand, you enter the Beach Plaza. Ryan seems amazed by the relative peace and normality around him as street hawkers sell clothes, brushes, soaps, and food while all kinds of infected go about their daily lives, chatting calmly or enjoying treats from a nearby cafe under parasols. 'It's amazing, sir. I didn't think anything like this could exist anymore,' Ryan whispers. Smiling proudly at your fox's evident enjoyment, you buy some gear from one of the many vendors and grab Ryan's hand to guide him down the long stairs to the beach.";
	say "     Breathing in deeply, you both enjoy the crisp ocean breeze forgetting momentarily the crisis and all the horrible things you've endured as you bask in the warm sunshine. Ryan seems especially beautiful like this, his silky golden fur shining in the sunlight. 'It's like paradise here, amazingly peaceful, perfectly hot, and this sand feels so natural to me,' your mate mutters. His infection seems to have given him a fondness for this environment. Given Ryan's never been to this beach, it's up to you to take charge. Petting his head softly, you ask whether your lovely fox would like a nice warm meal.";
	WaitLineBreak;
	say "     'That sounds fantastic, sir. The trip here really worked up my appetite, and the food I saw looks delicious!' Ryan beams at you. Grabbing his hand again, you guide your fennec to Sunny Snacks and direct Ryan to a patio table. You quickly order and return to him with two hotdogs and fries. It's not the fanciest or largest meal for either of you. Still, after eating nothing but cold and canned food for far longer than anyone ever should, it's a scrumptious treat for the two of you. Chuckling slightly at the ordinarily polite and proper vulpine wolfing down his food, you teasingly ask whether he'd like dessert. 'Yes, please!' Ryan replies, his ear reddening slightly at your tone. Patting his head, you order a sundae for your fox, which he devours with the same gusto as the hotdog and fries. It's a rather expensive treat, over 500 credits, but given how little you have to spend on and how overjoyed your lover is, it's a price well worth paying.";
	say "     Heading to the beach to digest your meal; you set up a towel for yourself and Ryan to lay on and cuddle with your loving desert fox. 'I didn't think anything like this was possible. That any place would be safe anymore. That I'd ever feel safe anymore. Everything has just been so crazy lately, so painful...' squeezing your hand, he continues, 'When this all began, I was just terrified. I didn't know what to do. I didn't have any food, and when I was transformed, I had nothing to hold onto. Nothing was left' Ryan sounds like he's tearing up, but you feel right now it's important that you listen, so you offer only a small gesture of support, stroking your lover's back gently to calm him. 'When you found me, I was just terrified of everything. I'd given up on everything. I was so sure that was the end for me until you came,' your lover's smiling now through his tears as he looks up at you. 'I don't know where I'd be without you, and I'm so happy to be with you, sir!' In the end, the tears Ryan cries aren't of sadness or pain. They're of joy as he embraces you overwhelmed with emotion and ecstatic to share this moment with you to share a future with you.";
	WaitLineBreak;
	say "     Cooing happily at the fluffy fox held in your arms, you gently pet him, content to bask in his love. 'Today's been wonderful. I don't know how I could thank you for bringing me here, for letting me have this moment of normalcy, for the meal, and for fighting off the orca. I already owe you so much, sir' a little shiver runs through him as he remembers the killer whale. At first, you think it's out of fear, and you love to comfort him, but you're instead shocked by the rising smell of vulpine arousal. 'You looked so strong protecting me, sir, so brave, powerful, and sexy.' Ryan says with evident longing as he moves between your legs, whispering seductively, 'How about I show you how much I appreciate everything?'";
	WaitLineBreak;
	if Player is Male:
		say "     You can't seem to agree fast enough as your cock springs quickly to attention. Smiling adoringly at you, your mate presses his nose to your heavy balls and takes a deep sniff of your musk, his eyes fluttering as he takes in your scent, heavy with pheromones that tell the heated fox he found exactly what he was looking for. A strong, virile male to stuff him full of spunk and leave him stuffed full of kits, and as you notice a trickle of his juices trickle down his thighs, your arousal soars at the knowledge that your smell alone makes Ryan so heavily aroused. Your lusty vulpine continues to like this for quite some before beginning to properly worship your balls, lapping steadily at your nuts, tasting your musk and the sweat built up from your fight with the orca. Ryan pops one into his mouth and then the other, swirling his tongue around them, making you groan as the sexy fennec works you up to feed him a massive load. Dropping your thoroughly washed testes from his mouth, Ryan fondles them appreciatively, looking forward to the treat they have in store for him, and gives a long lick to the head of your cock and promptly inhales you, taking you down to your pubes and swallowing around your [Cock of Player] meat. As you groan in pleasure, Ryan grinds his mouth against your crotch and moves one of your hands to his head, humming pleasantly around your cock. His desires are clear. It seems your sexy tod wants to take control! You're happy to oblige, lightly thrusting into Ryan's warm wet mouth while gently pushing him down with your hand, guiding your gentle fox to bob up and down on your thick dick.";
		say "     Though Ryan may have given you the reins, he's hardly idle in his worship, swallowing around your cock each time you sheath yourself in his throat; he laps at the underside of your dick while massaging your balls with one hand. Your fennec lover puts all his experience into pleasing you, and his idolizing gaze as you plunge into his mouth makes things that much better. Turning your attention from the euphoric pleasure of the blowjob Ryan's giving you, you look around and notice you've attracted quite a lot of attention from the other beachgoers, a couple of them even openly masturbating. Ryan seems to have noticed as well. Glancing up at the crowd, you see a blush rise up his face, but as your eyes meet again, he only ups his efforts, milking loud moans from you as he sucks harder around your dick and grows louder slurping messily his drool dripping down, your dick to your ball as he speeds up his bobbing. The little minx wants to show off! You respond in kind by upping the ante on your end as well as the powerful and arousing scent of Ryan's heat and pheromones rise in the air, you shift your grip from Ryan's head to around his ears, making him whine in pleasure as you grip then firmly and tug him down on your dick while massaging his sensitive ears.";
		WaitLineBreak;
		say "     You quickly feel your climax rising under your skilled fox's attention. Bucking into Ryan's throat faster and pushing him down harder, your churning balls slap against his chin as you howl in orgasm, shooting your load down your vulpine lover's throat. Ryan gulps down every drop of your spunk, his clenching throat squeezing more to feed him. Winding down from your climax, you slowly pull out, leaving Ryan's mouth with a loud pop and letting the last few shots coat his tongue and fall back, panting for breath. Opening his mouth to present you with the frothy mix of your seed and his spit while messy strings of it stretch between his jaws, Ryan then swallows. 'Thank you, sir,' he purrs to you, gently licking you clean. Through your haze of pleasure, you notice your fox hasn't gotten off, the sweet smell of his heat tickling your nose and rapidly hardening you up again.";
		say "     Darting up, you flip Ryan over and move behind him, making him yelp in surprise. Leaning in close, you murmur into his ear that you're far from done, drawing a needy whine from your sexy vulpine as you tug down his panties. 'God, please, sir, take me now!' Ryan whimpers, wiggling his round bum in an unnecessary attempt to entice you. Grinding against his dripping pussy, you lube your already spit-slicked cock with his juices, driving Ryan wild with lust and anticipation as he begs you to fuck him loudly, drawing the attention of other beachgoers who stare in envy at both you and your fennec. You can't help but feel immensely pleased with this as you finally plunge deep into Ryan's tight wet pussy, publicly claiming him as yours and turning any past begging into a drawn-out moan.";
		WaitLineBreak;
		say "     You don't give Ryan a moment to recover. Grabbing his tail, you roughly buck into your fox and pull him into every thrust, your hips and balls slapping loudly against his thighs while his warm juicy cunny slurps lewdly around your shaft. You ruthlessly pound into Ryan's pussy and give his bouncy bubble butt a quick spank that makes him squeeze his inner muscles delightfully tight around you. 'Fuck me, sir fuck me like I'm a bitch in heat! Show everyone I'm your bitch!' Ryan screams lustfully, all restraint forgotten, pounded out of him by your dick. Your tod's words light a fire in you as you remember the eyes of the crowd on you and the orca that tried to take him away from you, a primal need welling up to show everyone exactly who this fox belongs to! Upping the speed and strength of your thrusts, you soon push Ryan into a powerful climax, his femcum squelching lewdly to stain the towel beneath you and your crotch. His arousal dribbling down your nuts.";
		say "     You don't stop fucking the cuntboy for a second. Growling bestially, you try to hold back your own orgasm while Ryan's inner muscles try to milk you desperately for your seed. Your lover pants in pleasure, squirming in overstimulation, yet still, he begs you for more, and that's exactly what you do, tirelessly jackhammering into his soft folds[if player is knotted], popping your knot in and out his battered pussy[end if]. It doesn't take too long to drive Ryan into another climax. 'Please cum this time, sir. I need it. Knock me up! Breed me!' he pleads — the poor boy sounds like he could cry if you don't. Luckily you're unable to resist this time, your balls drawing up tightly as you roar out your climax, triumphantly flooding Ryan's fertile womb with your seed[if player is knotted] and popping in your swollen knot one last time to ensure every drop of your load stays in your mate[end if].";
		WaitLineBreak;
		say "     Still, as soon as you can do so again, you slam your hips forward into Ryan, your mind going blank from the pleasure. Eventually, when you come back to your senses, you see that Ryan is sleeping and you're still inside him. Pulling out of him, you admire the sight of his stretched, creamy cunny overflowing with your seed. Judging from the sky and how well-rested you feel, you must have fallen asleep at one point during your sex marathon. You can't remember much. Everything is a blur after the second orgasm. Though you hate to disturb your peacefully sleeping lover, you must be getting a move on before it gets too dark.";
		say "     Ryan yawns adorably as you wake him. 'Good morning, sir. I'm sorry, did I fall asleep? You were insatiable; I couldn't keep up! I'm still a bit weak,'  he exclaims, still quite sleepy, given he's just woken up. Smiling a bit smugly, you scoop your lovely fox into your arms, pat him on the head and tell him it's time to go home. 'Alright, sir, I'll be ready in a moment.' Ryan takes a few minutes to collect himself, shaking his fur free of sand and wiping off his still-dripping snatch with the beach towel. After a quick stretch, he's right as rain and ready to follow you. Your journey home is uneventful, the aura of confidence and power you have still riding the high of your public breeding with Ryan warding off any threats. Entering the library, you guide Ryan to the bed, where he flops down in apparent exhaustion. 'I'm still tired from the sex, and I'm not as used to traversing the city as you. It's a long walk from the library to here,' he mumbles. Kissing Ryan on the cheek, you leave him to rest, already looking forward to your next date.";
		NPCSexAftermath Ryan receives "OralCock" from Player;
		NPCSexAftermath Ryan receives "PussyFuck" from Player;
		if Libido of Ryan is 0 and Perception of Ryan is 0 and Hunger of Ryan is 0 and "Long Pregnancy" is not listed in Traits of Ryan:
			now Libido of Ryan is 17;
	else:
		say "     As much as you might want to fuck the sexy cuntboy right now and enjoy the pleasures of his sweltering pink depths and tight throat, you're unfortunately not currently equipped to have that type of fun with your lover at the moment. So it is with great regret and disappointment at your choice that you must turn down the pleasure Ryan's eagerly offering you, the smell of his heat teasing you with the possibility of what you could've had. Ryan seems quite surprised at your decision but acts quickly to respect your decision. Pushing himself from between your legs, he stands and stumbles away from you. 'Oh, umm, ok, sorry sir, I understand. We can just go about the rest of our date then.' Ryan's obviously embarrassed by your rejection, the tips of his ears bright pink as he awkwardly shuffles his feet around, kicking up sand, while he refuses to meet your eye. Quickly you assure Ryan that nothing is wrong with him. It's just you feel he doesn't need to thank you in any way. Instantly Ryan's posture shifts a gentle smile replacing his earlier frown as your rejection changes from you not wanting to have fun with the sexy vulpine to you not wishing to take advantage of him and not seeing the sexual pass for what it is. The fennec's previous embarrassment switched to admiration for your chivalry and respect, while your assumed obliviousness to his flirtation is seen as cute.";
		say "     While Ryan's swooning over you, you unknowingly completely sweep the uncomfortable situation away by quickly changing the topic and questioning the slender fennec on why he feels a particular affinity for this specific type of environment. Ryan seems grateful for the change in issue and latches on the conversation fast. 'I think it's because fennecs are dessert creatures. We like the sand, the sun, and warmth,' he responds quickly, launching into a tangent on his species while you intently listen. Despite the initial embarrassment caused by your rejection, the rest of your date is a great success as you enjoy a romantic walk along the beach and make pleasant conversations with Ryan while the warm sun shines on your both, the crash of the waves against the sand. Eventually, a cute yawn from Ryan signals to you it's about time you wrapped things up, scooping up the sleepy fennec. You begin the long journey home. Thankfully nothing attempts to harm you, and it's a relatively uneventful walk to the library and down into your bedroom, where you lay Ryan down to rest peacefully on your bed as your lover already dozed off in your arms somewhat during the walk home.";
	follow the turnpass rule;

to say RyanTalk6:
	say "     Pulling a water bottle and some food from your pack, you offer them to Ryan. Smiling happily at your offerings, the lithe fennec graciously accepts your gift and pats lightly beside himself on the bed. 'Would you like to join me for a meal, sir?' he asks gently. Having some time to spare and not wanting to disappoint your mate, you lay on the bed beside Ryan and pull the fox close to you as you share a relaxing meal. Chatting pleasantly, [one of]Ryan leads the conversation as he excitedly tells you stories of his past college life[or]you lead the conversation, and Ryan listens with rapt attention to stories of your adventures around the city[at random]. Long after your food and drink have finished, you and Ryan lay cuddling and talking for quite some time, the short break with your loving fox reminding you why you continue to fight and survive in this crazy city.";
	SanBoost 16;
	PlayerEat 6;
	PlayerDrink 12;

to say RyanTalk7:
	if "Taken Pill" is not listed in Traits of Ryan:
		say "     Pressing one of the little pills into Ryan's paw earns you a curious and somewhat cautious look from your lover as he stares questioningly at it. 'And this is for... what, sir?' he asks, confused. Realizing Ryan, of course, wouldn't know anything about this drug, you're quick to explain what the fertile pill does, emphasizing its ability to fix your shared pregnancy problem. At your explanation, Ryan immediately perks up, beaming at you at the prospect of a solution but still gazes at the pill in a somewhat paranoid fashion as he looks up back at you. However, his trust in you wins over his fear as he plucks a bottle of water on hand and, with a determined expression, quickly chugs down the pill before he can lose his nerve.";
		say "     'I suppose now we just wait for it to—' a gasp interrupts Ryan almost as soon as he begins. It seems you both greatly underestimated the pill's effectiveness and strength as the fox's stomach grows a small baby bump stretching his toned stomach muscles while your lover moans at the intense sensation. Just as quickly as the pill's effects begin, they end, leaving your mate panting as he cradles his newly expanded stomach, and you also can't help but notice a dribble of the fennec's juices drip down his thigh to the floor as the scent of his flares up clouding your mind with sympathetic arousal. Shaking your head to clear your thoughts, you reach out to check if Ryan's ok. You're surprised as the tiny foc quickly dives towards you hugging you tightly. 'Thank you, sir...' you hear him sniffle a little bit a feel a bit of wetness on your [skin of player] skin, but you know he isn't upset but instead overjoyed as he's one step closer to starting a family with you. Softly petting and stroking his head, you try for modesty, telling the beautiful cuntboy there's no need to thank you while basking in his gratitude and love. Eventually, Ryan releases you, leaving out to go about you're day as he gives you a goodbye kiss.";
		TraitGain "Taken Pill" for Ryan;
	else:
		say "     Pressing one of the little pills into Ryan's palms earns you an excited wiggle from your lover as he smiles up at you, tail wagging. You can't help but chuckle, seeing how Ryan's looking forward to expanding his family with you. 'Thank you, sir,' the gleeful fennec exclaims, reaching for a bottle of water he has on hand and guzzling down the drug. Just as before, it takes hardly any time for the pill to take effect. A moan bursts from Ryan's lips as his stomach expands, the medication kicking the fox's reproductive system into overdrive, forcing his pregnancy to speed up and intensifying his heat. By the end, your mate lies panting, cradling a small baby bump, his panties damp with his arousal while the scent of his heat clouds your senses somewhat.";
		say "     Ryan's the first to recover, rushing up to embrace you tightly and snapping you out of the momentary trance his heat held you in. For a moment, you stay frozen like that enjoying the unbridled affection and gratitude in Ryan's hug while returning the affectionate gesture with one of your own, gently rubbing the adorable fennec's large ears drawing a low purr from him. 'Stay close by, please, sir. I don't want you to miss anything,' he says, glancing nervously at you and leaving you with a gentle kiss on your lips.";
	now Perception of Ryan is 49;

Section 3 - Sex

instead of fucking Ryan:
	if lastfuck of Ryan - turns < 6:
		say "     Ryan looks up at you guiltily. 'Please give me a minute, sir! I won't be too long. I just need a couple of hours to recover,' he pleads. Feeling ashamed for stressing the poor fox and pushing for sex so soon after just fucking him, you quickly apologize and assure him that you can wait.";
	else:
		say "[RyanSexMenu]";

to say RyanSexMenu:
	if debugactive is 1:
		say "     DEBUG -> Ryan Sex Menu.";
	project Figure of Ryan_naked_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal";
		now sortorder entry is 1;
		now description entry is "Lift the fox onto your lap and feel his folds embrace you";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now sortorder entry is 2;
		now description entry is "Have Ryan suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fingering";
	now sortorder entry is 3;
	now description entry is "Finger the fennec's pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Cunnilingus";
	now sortorder entry is 4;
	now description entry is "Orally pleasure the fox";
	[]
	if Player is Male and scalevalue of Player > 1:
		choose a blank row in table of fucking options;
		now title entry is "Use his Ears";
		now sortorder entry is 5;
		now description entry is "Masturbate with his sinfully-soft ears";
	[]
	if Player is male and (IncestList is not warded and IncestList is not banned):
		choose a blank row in table of fucking options;
		now title entry is "Incestuous Group Sex";
		now sortorder entry is 6;
		now description entry is "Have some fun with the whole family";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Vaginal":
					say "[RyanSex1]";
				else if nam is "Blowjob":
					say "[RyanSex2]";
				else if nam is "Fingering":
					say "[RyanSex3]";
				else if nam is "Give Cunnilingus":
					say "[RyanSex4]";
				else if nam is "Use his Ears":
					say "[RyanSex5]";
				else if nam is "Incestuous Group Sex":
					say "[RyanSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the fennec fox, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RyanSex1: [Vaginal]
	if debugactive is 1:
		say "     DEBUG -> Ryan Vaginal";
	say "     Grabbing Ryan gently, you tug down his panties and pull him into your lap, eager to get to the fun, and it seems he's just as excited as he grinds his dripping slit against your cock. 'Fuck me, please, sir. I need it!' he begs, and you're more than happy to oblige. Groping his tight ass, you quickly sheath yourself in the cuntboy's warm wet pussy. Hugging you close, Ryan gasps in pleasure as you push into him. He's just as tight as the first time you fucked him, as you bounce him in your lap. The desert fox rests his head on your shoulders and moans whorishly with each buck into him. 'Please fill me with your kits, Sir. Breed me!' he whines into your ear, feral with lust. Eager to fulfill his demands, you thrust into Ryan's fertile pussy with unrestrained passion and unmatched lust, the sharp clap of your hips against his echoing across your room as you soon drive the slutty vulpine into a screaming climax, his juices lewdly squelching and running down your balls as you continue to pound into him. His claws dig into your skin as he orgasms, the sharp pain contrasting delightfully with the euphoric pleasure of his spasming cunt desperately trying to milk you for every drop of your cum, and it takes all of your self-control to resist climaxing right then and there";
	say "     Groaning out loudly, your force yourself out of Ryan for a moment, your prick pulsing with need as you shift positions, pushing Ryan down on the bed, you slam yourself back into his tight snatch, taking him missionary the cuntboy wraps his legs around you. Your face-to-face with the beautiful vulpine now. He's gorgeous even like this you think. Panting like a whore, his tongue hanging out, and his face flushed. Overwhelmed with desire, you lean in for a hungry kiss with the adorable fennec, which he returns with the same nigh desperation that you do, moaning into the kiss, the two of you part only for short breaths. While kissing him, you thrust sloppily into Ryan's pussy. All rhythm lost[if player is knotted] as you pop your knot in and out of him[end if]. It doesn't take much longer for you to reach orgasm, hissing in pleasure as [if player is knotted]you slam your knot in one last time and [else]you [end if]flood the sexy fox below you full of cum. Ryan follows soon after the sensation of being bred by you and feeling your warm spunk flooding his womb driving him into another intense climax.";
	WaitLineBreak;
	say "     Rolling away from each other, you both lie on the bed, panting. He surprises you again, straddling your hips and drawing you into a deep kiss while he rubs your balls with one hand and grinds his pussy onto your rapidly rising shaft. He begs, 'Please, sir, another round!' Ryan's time as a whore has dramatically improved his stamina, and he's ready for another fuck! His skillful grinding and hand, combined with the smell of his heat and arousal, make it an impossible offer to refuse. Growling bestially, you plunge back into the tod's leaking folds and get to work. After fucking the short fox long and hard twice more, you and he are finally satisfied. Proudly, you take in the sight of Ryan's sloppy pussy leaking your seed. Your cock twitches and you're nearly enticed into a fourth round as your fox teases you, flicking up his tail to further show off his creamy cunt leaking your seed. Smiling softly at you, the fennec coaxes you into some cuddles and kisses you softly as you both bask in the afterglow of your passionate romps. Sometime later, you reluctantly force yourself to part with your mate. Giving Ryan a gentle kiss, you promise to spend time with him again soon as you prepare to head back into the city.";
	NPCSexAftermath Ryan receives "PussyFuck" from Player;
	if "Pregnant" is not listed in Traits of Ryan:
		TraitGain "Pregnant" for Ryan;

to say RyanSex2: [Blowjob]
	if debugactive is 1:
		say "     DEBUG -> Ryan Blowjob";
	say "     Laying down on your bed, you grip your shaft and jerk off leisurely, smirking as you motive Ryan can't help but stare in obvious hunger, hypnotized by your cock, snapping him out of his reverie. Teasingly you ask whether your faithful fox would be willing to lend you a hand or a mouth. 'Of course, sir, I would be happy to help you,' the cute vulpine scrambles to answer and sets himself between your legs. Despite the immense experience you know he has, your lover still seems a bit nervous as he wraps a tentative paw around your meat and slowly strokes the fennec's soft pad pads providing quite an enjoyable sensation for you as he leans in to give a short lick to the head of your dick making you groan in pleasure. Emboldened as he sees you're clearly enjoying his efforts, Ryan slips the head of your dick into his mouth and swirls his tongue around you, lapping up your pre and stroking the rest of your cock with his hand. Glancing up at you, Ryan searches for your approval which you show by gently letting him while lightly giving him pushing down to show him your desires.";
	say "     Ryan takes the hint quickly and moves to take more of you in his mouth, drawing a small grunt of pleasure as more than half your cock is enveloped in your lover's warm wet mouth. Ryan keeps up his gentle rhythm, bobbing his head slowly while starting to fondle and squeeze your balls, his skilled tongue expertly working your dick while his experienced hands massage your nuts, working up a massive load for you to feed the sexy vulpine later. You're content to let Ryan do all of the work. Putting your hands behind your head, you relax and watch as the fennec blows you slurping and sucking hard around your dick, and thirstily gulping down thick wads of your pre. Ryan's eyes fall half closer as he contently nurses your cock his tongue lazily tracing the veins along your prick meeting your gaze again. Ryan closes his eyes completely and deepthroats you sheathing your dick in completely in his mouth.";
	WaitLineBreak;
	say "     You breathlessly praise Ryan, loudly moaning as he swallows around you, putting all his skill into pleasing you. Humming pleasantly around your shaft as you praise him, your mate goes back to sucking on your cocktip for a bit before slamming back down on your cock, throatfucking himself and drawing out more loud moans from you as you reflexively hump into his mouth, your balls slapping slightly against your lover's chin. Continuing at his languid pace, the cockslut fox expertly flicks his tongue over all your sensitive spots and counties to clear his throat on your dick. It's not long before Ryan's experienced mouth pulls you into climax. You can barely groan out a warning as you cum down his throat, and the cumhungry vulpine thirstily gulps down every drop of your seed. Popping your cock from his muzzle, Ryan licks you clean and purrs, nuzzling against your shaft before snuggling up to you as you reward his efforts with vigorous pets and vehement praise while you enjoy your post-orgasmic bliss. Regaining your energy, you enjoy cuddling with your mate for a spell before reluctantly separating from him, much to your mutual disappointment, as you prepare to head back into the city.";
	NPCSexAftermath Ryan receives "OralCock" from Player;

to say RyanSex3: [Fingering]
	if debugactive is 1:
		say "     DEBUG -> Ryan Fingering";
	if Player is not Male:
		say "     Running your eyes along Ryan's lithe form hungrily, you direct your dutiful fox to face the wall and spread his legs. 'Y-yes, Sir.' He eagerly complies with your request and quickly presents himself to you. Deciding to tease your fox a bit, you slowly walk up to him and slide down his soaked panties to feel up the nervous cuntboy. Rubbing the base of Ryan's tail, you flick and pinch his sensitive nipples while only giving fleeting strokes to his puffy snatch. Relentlessly you wind up the desert fox until he's squirming and begging desperately for your touch. 'O-oh God, sir, please, please, I need more!' you playfully chide him for his lack of patience before you show him mercy, sliding a finger into his dripping cunt, forcing a needy whine from the slutty fennec.";
		say "     Steadily, you pump your finger in and out of your mate's tightly gripping sex, speeding up you dip another finger into his and massage gently over his clit with your other hand as Ryan grows increasingly wet with arousal, his sodden cunt squelching lewdly with each rapid motion into him. At the same time, he struggles to keep himself standing, panting and trembling against the wall as you ruthlessly pleasure him. Leaning over the fox, you kiss him passionately as you drive him over the edge, the tod's juices soaking your hand and the floor beneath you as he finally collapses, limp from his powerful orgasm. Catching Ryan before he falls, you carry him towards your bed and gently lay him down while quietly praising him, earning a tired grin from your exhausted fox as you tell him all about how sexy he looked and how amazing he felt wrapped around you. Giving your mate a parting kiss on the cheek, you leave him to rest.";
	else:
		say "     Running your eyes along Ryan's lithe form hungrily, you direct your dutiful fox to face the wall and spread his legs. 'Y-yes, Sir.' He eagerly complies with your request and quickly presents himself to you. Deciding to tease the sexy vulpine a bit, you slowly walk up to him and slide down his soaked panties to feel up the nervous cuntboy. You start off just groping Ryan, flicking and pinching his sensitive nipples; you draw a needy whine from your lover as your hands drift down to his cup his sides, gently stroking his fur. You run your hands along your mate's delicate curves and reach his butt, squeezing his soft round ass for a bit, then moving up to rub the base of his tail, you give it a firm tug that draws a cute gasp from the delicate fox before finally reaching his thighs between than his puffy canine spade glistens with his arousal massaging Ryan's hips you slowly inch toward his cunt. You can feel your mate shaking with anticipation as he drips on the floor, only for you to taunt him with fleeting strokes to his needy pussy. Grinding against his ass, you relentlessly wind up the slutty fox until he squirms and begs desperately for your touch. 'O-oh God, sir, please, please, I need more!' you playfully chide him for his lack of patience before you show him mercy, sliding your fingers into his dripping cunt, forcing a needy whine from the slutty fennec.";
		say "     Steadily, you pump your digits in and out of your mate's tightly gripping sex. With your other hand, you gently massage over his clit as Ryan grows increasingly wet with arousal, his sodden cunt squelching lewdly with each rapid motion into him. While doing this, you're humping between your mate's curvy bum, hot dogging his plump cheeks and occasionally purposely missing a thrust to rub yourself between his soft thighs and dripping slit while Ryan struggles to keep himself standing, panting, and trembling against the wall as you ruthlessly pleasure and tease him with the possibility of a hard fuck. Realizing Ryan's close, you lean over the fox and kiss him passionately as you drive him over the edge, the tod's juices soaking your hand. You can see his legs starting to shake, but as you give Ryan a stern look and command to stay, he whimpers needily and obeys. You continue to fingerbang the enticing vulpine through his climax, the loud wet slurps echoing throughout the room each time you withdraw as his clenching insides desperately try to keep you buried knuckle deep inside his drooling snatch, the fox trembling in overstimulation yet can't resist rocking his hips back against your dexterous fingers it's not too long before Ryan's rising close to climax again and you're right their with him. ";
		WaitLineBreak;
		say "     Letting out a ragged groan. You mark the beautiful fennec's golden fur with thick ropes of your virile seed while the cuntboys moans, his juices running down his thighs as he slumps to the floor beneath you, limp and tired from his powerful orgasms. Catching Ryan before he falls, you carry him towards your bed and gently lay him down while quietly praising him, earning a tired grin from your exhausted fox as you tell him all about how sexy he looked and how amazing he felt wrapped around you. Giving your mate a parting kiss on the cheek, you leave him to rest.";
	NPCSexAftermath Ryan receives "PussyDildoFuck" from Player

to say RyanSex4: [Cunnilingus]
	if debugactive is 1:
		say "     DEBUG -> Ryan Cunnilingus";
	if Player is not Male:
		say "Breathing in deeply, you take in the scent of Ryan's heat. Constantly hovering around him, the fantastically arousing smell tempts you to take a hit right from the source as you slide onto the bed and between your fox's legs. He squeaks in surprise at your actions but makes no move to stop you as you slide down his panties and press your nose to his wet puffy pussy. So close to his slit, the smell of the fennec's arousal is intoxicating, emptying your head of any thought but worshiping his heated cunny. You start slowly and give a long lick along Ryan's nether lips to his sensitive clit drawing a low moan from the sexy fox as you savor the heavenly taste of his juices. The heady taste and smell of the fennec's muff has you painfully hard and reflexively humping your bed[if Player is female], smearing your juices messily all over your sheets[end if] in your desperation for stimulation, yet you daren't drag any of your attention away from your partner; instead, you only speed up your efforts pushing your tongue into his muff you lick noisily and moan alongside your fox as his pheromones drive you wild with lust.";
		say "     Your efforts are rewarded as Ryan screams in climax and, in a rare display of assertiveness, grabs your head to grind his muff roughly against your face and mouth, soaking you in his femcum. While he does this, your climax roars through you, your [if Player is female]neglected pussy pulsing and quivering despite the absence of direct stimulation[else]loins spasming and stirring[end if], the fox's addictive pheromone and scent alone driving you into a hands-free climax. Ryan lets you continue your worship for some time, the both of you enjoying one more climax before he pushes you away. Separated from his sex, you lie panting, pussy drunk, and inundated in the sweet musky scent of his femcum. Eventually recovering from your cunt-induced stupor, you give Ryan a parting kiss and go to rest yourself with thoughts of your lovely fox's wet snatch and its exciting scent lingering long in your mind.";
	else:
		say "     Breathing in deeply, you take in the scent of Ryan's heat. Constantly hovering around him, the fantastically arousing smell tempts you to take a hit right from the source as you slide onto the bed and between your fox's legs. He squeaks in surprise at your actions but makes no move to stop you as you slide down his panties and press your nose to his wet puffy pussy. So close to his slit, the smell of the fennec's arousal is intoxicating, emptying your head of any thought but worshiping his heated cunny. You start slowly and give a long lick along Ryan's nether lips to his sensitive clit drawing a low moan from the sexy fox as you savor the heavenly taste of his juices. The stunning vulpine tastes amazing, like honey, fruit, and sex. With each lick, your mind fogs up a little more, your restraint falling away bit by bit until you're quickly shifting from slow licks to absolutely devouring Ryan's cunt, your tongue shoved deep inside his drooling snatch while you thirstily gulp down his juices and huff in his scent like some addict eventually you're forced to draw away for to gasp for breath, flushed, and drooling but as soon as you can you're back eating Ryan out. 'Y-you're really enjoying this, aren't you?' you hear Ryan call out to you distantly, your eyes half-lidded, all senses dominated entirely by his sex.";
		say "     The heady flavor and smell of the fennec's muff has you painfully hard and reflexively humping your bed, smearing your pre messily all over your sheets in your desperation for stimulation, yet you daren't drag any of your attention away from your partner; instead, you only speed up your efforts pushing your tongue into his muff you lick noisily and moan alongside your fox as his pheromones drive you wild with lust. Your efforts are rewarded as Ryan screams in climax and, in a rare display of assertiveness, grabs your head to grind his muff roughly against your face and mouth, soaking you in his femcum as his inner muscles rhythmically clench around your tongue. While he does this, your climax roars through you, your unattended cock throbbing against your stomach as you shoot your load against your body and the sheets, the fox's addictive pheromone and scent alone driving you into a hands-free climax. Separated from his sex, you lie panting, pussy drunk, and inundated in the sweet musky aroma of his femcum, yet despite your orgasm unsatisfied, throbbing cock still rock hard, your needy whines drawing Ryan's attention.";
		WaitLineBreak;
		say "     At first, your mate seems worried as he shuffles toward you on shaky legs, but as he takes in your predicament that quickly shifts toward amusement, a small giggle escapes him. 'I'm sorry, sir. I don't mean to laugh. It's okay. I'll help you.' Ryan takes a light hold of your shaft that forces a gasp of pleasure from you, your body's sensitivity driven up to a thousand by the pheromones laced in your lover's scent and juices. Noticing this, you see a mischievous smirk light up on Ryan's face as he stares down at you. 'You're always teasing me, sir. You know how sensitive my heat makes me. Maybe you'd like to see how I feel,' he says, slowly tracing a finger up your shaft that leaves you shaking with need. Still weak from serving the sexy vulpine, you're entirely unable to resist, not that you'd want to in the first place. A single firm stroke along your dick snaps you from your thoughts. You squirm around desperately, your meat almost violently shooting thick spurts of pre as soft paw pads press down around you, but Ryan expertly keeps you from cumming despite the intense sensations tightly gripping the base of your cock and nuts, keeping you in check.";
		say "     'If that's just what my hands can do, I wonder how you'll handle the next part' a wet tongue dragging all the way from your balls right to your cocktip nearly makes you scream in pleasure as you blow a second massive load all over you and Ryan the skilled fox's grip unable to restrain your lust any longer. Your orgasm seems to last forever, and by the time you're done lying down, panting, and limp, your chest and belly are completely covered in sticky wads of spunk. Drained completely, you settle in for a long cuddle with Ryan, your lover praising you for your efforts in a way similar to how you might praise him. Eventually recovering from your cunt-induced stupor and the overstimulation, you give Ryan a parting kiss and go to stumble off with thoughts of your lovely fox's wet snatch and its exciting scent lingering long in your mind.";
	NPCSexAftermath Player receives "OralPussy" from Ryan;

to say RyanSex5: [Ear-job]
	if debugactive is 1:
		say "     DEBUG -> Ryan Earjob";
	say "     Ryan's ears flush as you make your suggestion. 'I'm sorry you want to use my ear for what,' he gapes at your a moment before recovering. 'Umm... O-okay, sir, if that's what you want, I'm willing, but please be gentle. They're quite sensitive,' he stutters out a moment later, nervously rising to his feet. Due to his small size, you only have to bend a little to brush your cock against Ryan's big ears, drawing a short squeak from your lovely fennec. Gently grabbing his ears, you start by massaging Ryan, wanting to ease your tense mate running your fingers up and down the delicate membrane pulling a faint moan from your lover as you wrap him around your dick. Amazingly warm and soft, his ears are the perfect thing to rut against. Humping against that sinfully soft fluff, you tighten your grip and jerk yourself off with Ryan's downy ears dribbling all over his silky golden fur, each delicate hair dragging over your dick, drawing a moan from you as your balls sway to slap against your mate's face. Shifting tactics, you start teasing the tip of your cock with his ears sliding up and down his slick flesh, then grinding your meat against Ryan's face, you mark him with your pre reveling in the dominance you have over the little vulpine who so obediently  before enfolding your dick again in his warm pelt.";
	say "     A wet tongue joins the pleasure of the velvety fuzz shrouded around your cock as Ryan moves to lick over your nuts, pressing his nose between them to inhale your musk. He laps and sucks eagerly at you until your balls glisten with his saliva while whining loudly as he slides down his panties to finger his soaking wet cunt. The slick wet noises of his self-pleasure and the sweet smell of his pheromones skyrocket your arousal. It's not too much longer until you climax, groaning as you shoot long ropes of your seed all across Ryan's face and ears, coinciding with your lover's orgasm as he shudders with pleasure soaking his hand and the floor beneath him with his sticky femcum. Panting slightly, you grab your bedsheets and move Ryan closer to use it as a cumrag wiping down your lover's face and ears. Not quite ready to leave yet, you cuddle with Ryan for a spell, kiss him farewell, then prepare to head back into the city.";

to say RyanSex6:
	if "Tried Incest" is not listed in traits of Ryan:
		say "     As you make your request, all attention immediately turns to you, and Ryan seems momentarily lost for words. Your lover's large fuzzy ears flush red while his children look at the both of you in excitement and anticipation as they wait for him to respond. 'I um, I suppose there's nothing wrong with our family growing a little bit closer,' Ryan manages to stutter out a reply and is received with joyous yips and cheers from his massive brood as, at long last, they get a chance to play with you after no doubt watching you fuck Ryan countless times before, despite your mate's initial embarrassment you can smell his arousal rising along with his children's. Grinning as you notice this fact, you think to yourself, you've found the perfect first fennec to kick off the fun. You're sure your children will enjoy the show as they usually do and won't mind waiting a little longer for their turn with you.";
		TraitGain "Tried Incest" for Ryan;
	else:
		say "     As you make your request again, all attention falls back on you, the anticipation your children had before replaced with lust and hunger. However, they're no less excited at the prospect of screwing around with you knowing now that Ryan's perfectly fine with this rather depraved family fun. 'I'm glad you're spending more time with our children,' Ryan purrs out to you, blushing somewhat, but though your lover can't seem to shake off his embarrassment. It seems he's also getting rather excited a hand unconsciously sneaking down a hand to rub at his quickly dampening panties. Chuckling to yourself as you notice this, you decide to start off the fun the same way you did last time, remembering how much your children seemed to enjoy the show and knowing they don't mind waiting for a little to get their turn.";
	say "     Scooping Ryan onto your lap, you take a moment to tease the lovely fox snaking a hand down his black lace panties. You rub his slick netherlips delighting in the adorable way he squirms in your lap, also enjoying the side effect of this as Ryan grinds his tight ass against your stiffening meat. Dipping a finger into your mate's wet cunt, your arousal skyrockets as you feel him clamp around your digits. Ryan's ripe for a fucking tight, wet, warm, and ready for you. Suppressing the urge to bend him over right then and there, you continue to finger the sexy cuntboy in front of your children, drawing loud moans from him and cheers as you work their dad into a mess right in front of them; the hollering grows louder as you reveal your hand to them sticky and stringy with Ryan's femcum and give it a lick, then move onto the main event slowly pushing down his panties and flinging them to your kids laughing loudly as they all scramble to catch the pheromone-ridden lingerie.";
	WaitLineBreak;
	say "     Grinding the tip of your shaft against Ryan's entrance, you drive both of you mad with lust, but your mate breaks first. 'Put it in, sir, please. I need it,' he groans to you, desperately trying to keep quiet. Noticing your children's attention has turned back to you and realizing why Ryan's trying to stifle his voice, you smirk and try to push your luck a bit more thrusting against Ryan's cunt you ask him to repeat and tell him maybe being a bit louder would help while you look into the crowd. Following your gaze, Ryan realizes what you are trying to do and shoots you a pleading look. For a moment, you feel tempted to give in. After all, you wouldn't want to do anything your mate is actually uncomfortable with, but as you feel his arousal drip onto your prick, any thought of mercy is wiped from your mind as you know now that the gentle fox is getting off on this just as much as you are.";
	say "     Ryan never stood a fighting chance at resisting you as deep in heat as he is and as expertly as you've already worked him up; whining loudly, he yells out his desire for you to sate him, 'Fuck me, please, sir! Breed me! Fill me with more kits!' your children roar with arousal as Ryan snaps losing all composure and begging for you to seed him a request you're all too happy to fulfill as it means you finally get to sink your dick into the tod's soaked snatch. In one quick thrust, you sheath your [cock size desc of Player] [Cock of Player] dick in Ryan and grind in deep against his cervix, drawing a needy whimper from your lover and a growl from you as you take a moment to savor being balls-deep in his cunny. Ryan's equally as vocal as you, gasping out in pleasure while his sex grips you vice-tight. At this point, your offspring also decide to join in on the fun, a couple of your sons moving closer to stroke and massage you, but they're still primarily content to watch you.";
	WaitLineBreak;
	say "     You don't stay idle for long. After all, you've got many more fennecs to breed besides Ryan, and you've also got to put on a show for them. So quickly, you switch from savoring your lover's slick cunt to wrecking it. Gripping his legs tightly, you spread them wide and raise them to give your young the perfect view of your cock sawing in and out of his pretty pink depths while his juices waterfall down your balls. The loud slap of your hips against his ass mixed with the lurid and raunchy wet noises of you roughly stuffing your fennec's slobbering slit with your cock. The best part is your slutty vulpine loves every minute of it, practically screaming in pleasure. Ryan's no longer able even to speak, instead defaulting to the loud yips and barks of hia infection as you fuck out every thought from him right in front of his brood, who watch in a mixture of wonder and excitement as they wait for their turn. The smell of vulpine arousal lies heavy in the air. The pheromone and musk of so many fertile and virile fennecs all lying in wait for you to breed them fogs your mind and drowns out any thought not related to filling as many asses and pussies as you possibly can. As this happens, your sons crowded around you grow bolder, licking and pinching, one of them even kneeling between your legs to lick you and Ryan while you fuck, and the others masturbate to the show.";
	say "     It doesn't take long before Ryan climaxes, his warm pussy spasming around, squeezing you so delightfully and soaking you in his girl-cum, drawing you into a powerful climax with him, one of what is sure to be many of your orgasms during this session. Your lover shakes and moans loudly in your grasp as you fill him with fat wads of cum before finally falling limp, panting heavily. Your teasing and fucking have exhausted him for now. Pulling out of Ryan's creamy snatch earns you a weak whine from the tired fox, still craving the pleasure of your touch and seed. Admiring the sight of your cum dripping from his slit, a shiver goes down your spine as you think that with this, you've bred even more kits to join in future family breedings. But even if Ryan's done, you're certainly not. Luckily, you have many other eager fennecs, your very own children, to help drain your balls. Right away, your sons, who were messaging and licking you during your mating with Ryan, immediately rush to present themselves, racing their tales to show off their tight tailholes and dripping pussies while begging almost childishly for you to choose them. 'Dad, me first!' 'No, me! I'm more experienced!' 'I'm more flexible!'";
	WaitLineBreak;
	say "     Their arguing does really matter to you. You're hardly paying attention, too busy eying their round asses and inviting holes, and in the end, you don't even get to choose one as another of your sons interrupts your choice. Quickly pouncing on you, the young fennec pushes you to the bed and straddles your waist, then lines up your cum and femcum-slicked cock with his tight asshole and starts riding you, his cute small pink prick bouncing which each rise and fall. You don't mind this change of pace at all; far too lust drunk to care. You're happy to let your son take the reigns so long as he keeps his sweet hole wrapped around you. Your son rides you with an experience showing the results of past play times with his brothers. Smoothly bouncing himself up and down on your shaft, he runs his arms along your chest to play with your body pinching your nipples and leaning in for a hungry kiss.";
	say "     You return his attention just as voraciously, moaning into the kiss as your tongues wrangle. You run your hands along your son's supple curves drinking in every inch of his body, gripping and running your hands along his soft thighs and stroking up his belly, enjoying that sinfully soft fur, then reaching down to grope your son's ample rear delighting in the way it jiggles with each slam down on your meaty dick. You cum first from this pairing. Still sensitive from your previous climax, you groan and whimper as you shoot a massive load deep into the curvy vulpine riding you but find no relief, your balls still feeling heavy with an ocean of cum, and your dick is still achingly hard. 'Daddy, I'm cumming!' the shapely fennec riding you cries out his climax only moments after you. The constant prostate battering and the feeling of your hot seed filling him up drives him over the edge, his gripping hole forcing a few more strings of cum from you while his tiny cock twitches shooting rather impressive lines all over you. All tuckered out. Your son moves to lay beside Ryan, happily purring while you're already bending over your next partner.";
	WaitLineBreak;
	say "     The son you're coupling with this time just so happens to be another cuntboy like his Ryan, and you waste zero time in fucking him; there's no discussion, no announcement that he's your pick, only a loud moan as you slip into puffy pussy and push your son over the bed to take him doggy style as the sweet scent of vulpine heat and arousal overwhelms the urge to go anything more than rut every single fennec in this room and your mating with this fox is no less rough than your mating with Ryan, and just as before, the slut captured in your embrace loves it. You discover a neat trick with this one, tugging on the small cuntboys ears or tail makes him tighten up deliciously around you. The fucking is all a blur for you, your bodies sore and tired, and yet you're the horniest you've ever been in your entire life, and you can't stop moving your hips. This time you climax together, your partner's insides milking you thoroughly as you pop off inside him. A long groan pours out from you as you dump your nuts into the young fennec below you, siring your own future grandchildren, and that's the last thing you think before you black out, your primal urges momentarily taking all control.";
	say "     When you come to your surrounded by your brood with Ryan's sleeping on your chest while all your children with him sleep curled up around you. The second thing you notice [if player is knotted]is that you're still knot-deep in one of your kids. Pulling out with a wet slurp, the third thing you notice [end if]as you stand up on wobbly legs is just how sore your body is from the sexual exertion of nonstop sex. Nonetheless, you succeeded as you look down on your still-slumbering family; you see there is not an ass or pussy in sight that doesn't drip with your seed, even if you don't remember it all. With a tired smile, you take a moment to enjoy the view of your loved ones blissfully asleep before stumbling out of the room to continue your exploration.";
	NPCSexAftermath Ryan receives "PussyFuck" from Player;
	if "Pregnant" is not listed in Traits of Ryan:
		TraitGain "Pregnant" for Ryan;


Section 4 - Events

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Ryan's Pregnancy"	Ryan's Pregnancy	"[EventConditions_RyansPregnancy]"	Maintenance Storeroom	2500	2	100

to say EventConditions_RyansPregnancy:
	if Libido of Ryan is 1: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Ryan's Pregnancy	"Ryan's Pregnancy"

Ryan's Pregnancy is a situation.
ResolveFunction of Ryan's Pregnancy is "[ResolveEvent Ryan's Pregnancy]".
Sarea of Ryan's Pregnancy is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]
Level of Ryan's Pregnancy is 0. [minimum level to encounter randomly]

to say ResolveEvent Ryan's Pregnancy:
	say "     Entering the storeroom that you've made your bedroom. You greet your Ryan cheerily and move to lay beside him in your bed but quickly shift into a more serious bearing upon noticing your lover's evident tension. Sitting on your bed, Ryan anxiously clutches his long fluffy tail, kneading and stroking it to calm himself. The cute fennec's adorably large ears are pressed down tightly to his head, while his usually pristine golden fur is slightly scruffy. 'Oh, h-hello sir, how are you doing' Ryan greets you nervously, the short fox's voice trembling somewhat as he gives you his best smile.";
	say "     Frowning down slightly at Ryan's apparent stress, you sit beside your mate and run a soothing hand down his back as you nestle your delicate fennec close to you. Doing this until you can feel Ryan relax against you, you gently ask him what's wrong. At first, he seems to try to dismiss your concerns, but under your knowing gaze, your mate quickly relents, letting out a sigh as he responds, 'W-when we went to the beach, sir, I talked to a couple two ladies during the time you were away getting us the food. Cutting it short, I noticed one was pregnant and asked how far along they were. The woman said only a couple of days, and the nanites sped things up. They told me all about how pregnancy is supposed to work now. Is that true?' nodding your head in affirmation, your frown grows as Ryan looks down worriedly and rubs slowly at his tummy. 'Do you think there's something wrong with me, sir?' he whispers.";
	WaitLineBreak;
	say "     'It's been quite a while, but I've not grown any bigger. I feel them; I swear I do, but I should've given birth by now. Do you think it's stress? God forbid, could I have—' as Ryan goes on, his speech and breathing grow faster. You quickly recognize the lithe vulpine's spiraling and swiftly cut him off before he reaches the worst-case scenario and drives himself into any more of a frenzy. You draw him into your lap and give a couple of quick soft rubs at his ears and the base of his tail, drawing a soft moan from the sensitive fox, speedily ending his fretting.";
	say "     [bold type]Holding Ryan tightly, you firmly state to him that he and your children with him are perfectly healthy and...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You'll prove it. There must be something in this crazed city that can help him.";
	say "     ([link]N[as]n[end link]) - Time will tell. The long pregnancy time means he'll have extra time to care for his children. (Note: Will not give birth within known future)";
	if Player consents:
		LineBreak;
		say "     You assure Ryan you'll find a way to speed up his pregnancy and prove he's healthy. Considering all of the current madness, they're must be something to help your devoted fennec with his problem. Pecking Ryan on the cheek, you promise to keep a lookout for anything that he can use to speed up his pregnancy if that's what Ryan wants. Your lovely fox immediately perks up at this news hugging you tightly and looking up at you, smiling ecstatically. 'Thank you, sir! I knew you'd find some way to help me!' he cries out happily, his large ears tickling your face slightly. As Ryan's excitement drops, his expression falls into something much more sincere and passionate despite his calming energy. 'Stay safe, sir. I want a family with you. I want our children to come sooner, but I can't do it without you.' Acknowledging your mate's plea, you quickly assure him you'll be careful while stroking his head, running your fingers through his soft fluff.";
		say "     Noticing that despite your assurances, Ryan's still not l a bit stiff, you switch tactics, cheerfully exclaiming that when you do find a way to speed up his pregnancy, you'll be able to breed quite a lot of kits with him. It gives you precisely the reaction you wanted as Ryan gapes at you red, rushing to the tips of his ears as he fumbles for a response. 'I-I suppose I always wanted a big family,' the short tod mumbles. Cheekily, you respond you're happy to fulfill his wish since you enjoy the process so much. By now, Ryan's wholly forgotten his past worries; covering his face with his hands, Ryan whines, 'Sirrrr!' You can't help but laugh as you tug the blushing fennec down to lay beside you on the bed. 'You're horrid,' your lover giggles as he snuggles closer, smiling up adoringly at you.";
		WaitLineBreak;
		say "     You enjoy a nice relaxing cuddle with your lover for a bit covering leisurely the past tension forgotten eventually; however, you must go. Pressing a reluctant parting kiss to Ryan's lips, you collect your gear and prepare to head back into the city. As you leave, you're thinking fast of possible solutions to your's and Ryan's shared problem. You'll have a tough time convincing Ryan to take anything that could potentially transform or be unsafe, considering how careful your lover is. You'll need something more precise. Maybe find a doctor experienced in this field to help or some credible drug. That leaves you with few options, but it'll have to do.";
		TraitGain "Pregnancy Aid Search" for Ryan;
	else:
		LineBreak;
		say "     During your travels across the city, you've encountered small children and have developed a theory as to why this is happening because perhaps infected grow slower in safer areas. You don't know if that applies to how long it takes to give birth, but it's the best argument you have right now to calm the agitated fox you have clutched in your lap and so you're quick to use it. As convincing as you can, you calmly explain to Ryan why his gestation has been slower compared to others infected in the city. At first, the slender fennec seems doubtful of this explanation. Still, given the level of trust Ryan has in you, paired with the fact that in his eyes, you're the expert in this field, given your exploration of the city, he quickly accepts your rationale as the truth.";
		say "     'I suppose that makes sense, Sir. Thank you. I was working myself up over nothing,' Ryan mumbles, fidgeting somewhat. 'It's a bit upsetting. I'm so excited to start a family with you. Though I was scared of everything going so fast, I was glad I might be able to start a family with you soon, or at least I was supposed to noting the apparent disappointment in your lover's voice, you try to cheer Ryan up a bit and encourage him to look on the bright side he'll probably have slow-growing children and be able to fully savor their childhood and raising them even if the tradeoff is more time and fewer pups continuing on you phrase his slow pregnancy as a blessing a prized piece of normalcy not many have. If the military can get its act together, he'll probably give birth in safety and be able to give his children a good home.";
		WaitLineBreak;
		say "     Ryan finally seems to cheer up at the mention of his children enjoying an appropriate childhood and normal being born outside of the struggle and madness of the city. Still, you stay with your lover for a while longer to ensure he's genuinely calm, enjoying a nice relaxing cuddle and some pleasant conversation. However, despite how much you may enjoy this interlude, you've still got things to do, and so giving Ryan a reluctant parting kiss, you collect your gear and reluctantly prepare to leave your mate. You've got many things to do, after all.";
		TraitGain "Long Pregnancy" for Ryan;
	now Libido of Ryan is 0;
	now Ryan's Pregnancy is resolved;

Section 5 - Birth

to say RyanBirthing:
	say "     A distressed whimper draws your attention to Ryan, 'I think they're getting impatient, sir!' your lover pants out to you, clutching his stomach. A glance down reveals his lace panties are soaked, the liquid also splattering onto his legs and the floor below him. The advanced state of Ryan's pregnancy makes what is happening fairly obvious his water's broken! Judging from the look of shock on Ryan's face, it seems he's reached the same conclusion as you.";
	if a random number between 1 and 3 is:
		-- 1:
			say "     Quickly jumping into action, you lay Ryan on your bed and tug off his panties as the first wave of contraction rushes over his body, forcing a cry of pain from your lover as his eyes tear up and flare with panic; his and his rapid breathing alert you of the cuntboy's fear. Grabbing his hand and squeezing it comfortingly, you try your absolute hardest to encourage Ryan to stay calm and push. Using your knowledge on how labor and birth work, you guide Ryan, only glancing away to check on how he progresses. Fascinatingly enough, rather than the pain and screaming you expected, Ryan begins to moan, the nanites blocking all pain and instead allowing him to focus on the pleasure as his child finally slips from the fox as he cries out to you, '[if Player is not defaultnamed][Name of Player][else]Sir[end if]!' and passes through Ryan's stretched vulva and onto the mattress below.";
			WaitLineBreak;
			say "     The little kit lying on your bed announces its presence and entrance into this world, loudly letting out high-pitched yelps and whining as it struggles about fruitlessly. A mess of things you're too frazzled to recognize is absorbed quickly into them. You're quick to set them on the right path; parting reluctantly from Ryan's side, you scoop up the noisy pup and use what little you have on hand to dry them, which turns out to be your blankets. While doing this, you take just a moment to admire the adorable and delicate child held in your arms, covered in danp cream fur. However, right now, you'll have to cut your adoration short as though the little tyke has calmed down somewhat, perhaps recognizing you as his parent; they're still crying out loudly, likely hungry, and Ryan's undoubtedly just as eager to see his child. Carefully cradling the kit in your arms, you lay him on Ryan's chest. Your lover nearly cries in joy the moment he catches sight of his child and shares the same blissful smile as you while he presses his child on his nipples to drink.";
			say "     You stay like this for a while watching in contented silence while your pup eats, the only sounds being yours and Ryan's breath, the pup's suckling, and your lover's light purring as you all huddle close together. Before long, thanks to the rapid growth provided by the nanites, it's not long before the cute little baby sucking on Ryan's nipple is displaced from his chest and grows rapidly into a much larger but no less adorable young adult fennec, staring up at both you and Ryan lovingly having inherited a wealth of knowledge and memories from the milk they just drank. You stick around for a couple of hours more to ensure Ryan's completely okay and interact a bit with your child, but still, you can't help but feel guilty as you prepare to head back into the city. Perhaps noticing this, Ryan strides up to you, giving you a passionate kiss on wobbly feet. 'It's alright, sir. I'll be fine here, we'll be fine here.' he gestures to your recently birthed child with him. 'Just promise to come back soon, okay?' with those last words, he goes you a quick peck on the cheek and leaves you to go about the rest day.";
			increase Hunger of Ryan by 1;
		-- 2:
			say "     Quickly jumping into action, you lay Ryan on your bed and tug off his panties as the first wave of contraction rushes over his body, forcing a cry of pain from your lover as his eyes tear up and flare with panic; his and his rapid breathing alert you of the cuntboys fear. Grabbing his hand and squeezing it comfortingly, you try your absolute hardest to encourage Ryan to stay calm and push. Using your knowledge on how labor and birth work, you guide Ryan, only glancing away to check on how he progresses. Fascinatingly enough, rather than the pain and screaming you expected, Ryan begins to moan, the nanites blocking all pain and instead allowing him to focus on the pleasure as his child finally slips from the fox as he cries out to you, '[if Player is not defaultnamed][Name of Player][else]Sir[end if]!' and passes through Ryan's stretched vulva and onto the mattress below.";
			WaitLineBreak;
			say "     The little kit lying on your bed announces its presence and entrance into this world, loudly letting out high-pitched yelps and whining as it struggles about fruitlessly, with one of his siblings following soon after and calling out just as loudly. A mess of things you're too frazzled to recognize is absorbed quickly into the two of them. You're quick to set them on the right path; parting reluctantly from Ryan's side, you scoop up one of the noisy pups and use what little you have on hand to dry them, which turns out to be your blankets. While doing this, you take just a moment to admire the adorable and delicate child held in your arms, covered in wet cream fur. However, right now, you'll have to cut your adoration short as though the little tyke has calmed down somewhat, perhaps recognizing you as his parent; they're still crying out loudly, likely hungry, his sibling still needs to be cared for, and Ryan's undoubtedly just as eager to see his child. Carefully cradling the kit in your arms, you lay him on Ryan's chest. Your lover nearly cries in joy the moment he catches sight of his child and shares the same blissful smile as you while he presses his child on his nipples to drink. You can't stay and watch, though, as one other pup lies in wait, cleaning your second birthed. You take a moment to adore them before gently kissing their head and passing them to Ryan to be fed.";
			say "     You stay like this for a while watching in contented silence while your pups eat, the only sounds being yours and Ryan's breath, the pups suckling, and your lover's light purring as you all huddle close together. Before long, thanks to the rapid growth provided by the nanites, it's not long before the cute little babies sucking on Ryan's nipple are displaced from his chest and grow rapidly into two much larger but no less adorable young adult fennecs. The two of them stare up at both you and Ryan lovingly, having inherited a wealth of knowledge and memories from the milk they just drank. You stick around for a couple of hours more to make sure Ryan's completely okay and interact a bit with your children, but still, you can't help but feel guilty as you prepare to head back into the city. Perhaps noticing this, Ryan strides up to you, giving you a passionate kiss on wobbly feet. 'It's alright, sir. I'll be fine here, we'll be fine here.' he gestures to your recently birthed children with him. 'Just promise to come back soon, okay?' with those last words, he goes you a quick peck on the cheek and leaves you to go about the rest day.";
			increase Hunger of Ryan by 2;
		-- 3:
			say "     Quickly jumping into action, you lay Ryan on your bed and tug off his panties as the first wave of contraction rushes over his body, forcing a cry of pain from your lover as his eyes tear up and flare with panic; his and his rapid breathing alert you of the cuntboys fear. Grabbing his hand and squeezing it comfortingly, you try your absolute hardest to encourage Ryan to stay calm and push. Using your knowledge on how labor and birth work, you guide Ryan, only glancing away to check on how he progresses. Fascinatingly enough, rather than the pain and screaming you expected, Ryan begins to moan, the nanites blocking all pain and instead allowing him to focus on the pleasure as his child finally slips from the fox as he cries out to you, '[if Player is not defaultnamed][Name of Player][else]Sir[end if]!' and passes through Ryan's stretched vulva and onto the mattress below.";
			WaitLineBreak;
			say "     The little kit lying on your bed announces its presence and entrance into this world, loudly letting out high-pitched yelps and whining as it struggles about fruitlessly, with two of his siblings following soon after and calling out just as loudly. A mess of things you're too frazzled to recognize is absorbed quickly into the three of them. You're quick to set them on the right path; parting reluctantly from Ryan's side, you scoop up one of the noisy pups and use what little you have on hand to dry them, which turns out to be your blankets. While doing this, you take just a moment to admire the adorable and delicate child held in your arms, covered in wet cream fur. However, right now, you'll have to cut your adoration short as though the little tyke has calmed down somewhat, perhaps recognizing you as his parent; they're still crying out loudly, likely hungry, his two siblings still need to be cared for, and Ryan's undoubtedly just as eager to see his child. Carefully cradling the kit in your arms, you lay him on Ryan's chest. Your lover nearly cries in joy the moment he catches sight of his child and shares the same blissful smile as you while he presses his child on his nipples to drink. You can't stay and watch, though, as two other pup lies in wait, cleaning your second and third born. You take a moment to adore them both before gently kissing their heads and passing one to Ryan to be fed while rocking the other in your arms, hoping to keep them calm while they wait for their turn.";
			say "     You stay like this for a while watching in contented silence while your pups eat, the only sounds being yours and Ryan's breath, the pups suckling, and your lover's light purring as you all huddle close together. Before long, thanks to the rapid growth provided by the nanites, it's not long before the cute little babies sucking on Ryan's nipple are displaced from his chest and grow rapidly into two much larger but no less adorable young adult fennecs, with the third fox joining them soon. The three of them stare up at you and Ryan lovingly, having inherited a wealth of knowledge and memories from the milk they just drank. You stick around for a couple of hours more to make sure Ryan's completely okay and interact a bit with your children, but still, you can't help but feel guilty as you prepare to head back into the city. Perhaps noticing this, Ryan strides up to you, giving you a passionate kiss on wobbly feet. 'It's alright, sir. I'll be fine here, we'll be fine here.' he gestures to your recently birthed children with him. 'Just promise to come back soon, okay?' with those last words, he goes you a quick peck on the cheek and leaves you to go about the rest day.";
			increase Hunger of Ryan by 3;
	now Perception of Ryan is 0;


Section 6 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ryan's Ending"	"NPC"	""	Ryan's Ending rule	900	false

This is the Ryan's Ending rule:
	if HP of Ryan > 0:
		trigger ending "Fang's Epilogue";
		if humanity of Player < 20:
			say "     Succumbing to your infection, you wander for a while before you reach the bunker and pound into Ryan fucking him long and hard into multiple orgasms for hours. Your fennec mate was always careful to hold firm to his sanity, but in his current intense grief and lust, he can't bring himself to resist you. Crying softly, Ryan grabs your face and draws you into one last passionate kiss before he follows you into madness.";
		else:
			say "     When the rescue comes, you and Ryan are taken together and are briefly held for testing, but quickly you're both deemed safe and sane, then released as the military turns to more pressing matters. Reaching out to his well-off family Ryan manages to snag a large sum of money to start your new life together, finding a large lovely house to set yourselves in. You and your mate eagerly await the birth of your children and anticipate the breeding of many more.";

Ryan ends here.
