Version 2 of Ram by Sarokcat begins here.
[ Version 2.1 - Unleashed ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Ram to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ] 
ramconsent is a number that varies.

to say ram attack:
	if cunts of player > 0:
		say "     Knocking you to the ground, the powerful male grins as he stands over your defeated form, 'And now to claim you as part of my flock,' He says teasingly, as he pushes your legs apart with one of his rough hooflike hands, his touch making you shudder slightly, as his masculine musk fills your head, causing your pussy to moisten eagerly. You feel yourself moaning submissively, as he runs his hooves over your body teasingly, even as he settles himself between your legs, the feeling of his thick cock rubbing up against your crotch making you feel even more submissive as you spread your legs wider for him.";
		say "     'Now that's a good eager little ewe,' the ram mutters smugly, as he enjoys your body's automatic response to his dominant scent and actions. You try to protest, only to find yourself bleating just like a ewe as he sheathes himself in you in one swift move, the feel of his thick cock pressing into your body making your mind explode with pleasure.  As the powerful ram thrusts into you again and again, you can feel your protests fading, and you can feel your dominant urges fading with each thrust, replaced by feelings of happy submission to your ram.  With the intense pleasure of his cock stroking your insides, you can't help but embrace your new instincts, and you pant eagerly as you begin to clutch the powerful ram to your body tightly.";
		say "     Happy at this newest evidence of his complete victory over your body, the Ram lets out a triumphant cry as he shoots his seed into you, making you moan happily in response. After a minute of lying there with his cock still twitching inside you, the ram pulls himself out of your body, making you blink as you look up at the powerful beast.  Standing up the ram grins down at you, 'Now that you know what it's like to be a proper ewe, I expect you will come running next time I call.' He says teasingly as you nod absently. 'I need to go find a few more members for the flock, so once you are a proper ewe, be sure to hunt me down, that's an order from your new Ram.' He says with amusement as he turns and jogs off into the city. Leaving you lying there on the ground, your mind still fogged with submissive bliss, a strong desire to obey and do just what your ram ordered welling up within you, even as you try to hold on to your remaining humanity.[impregchance]";
	otherwise if "Male Preferred" is listed in feats of player:
		say "     The beast pushes you down to the ground roughly, pinning you there as he pumps his own cock eagerly.  You are forced to watch as his hoof-hands rub at his balls and cock, an impressive set of genitals on the woolly victor, unable to look away even as he starts to pump harder.  You groan in defeat as he shoots his sticky seed all over your body, marking you as his.";
		say "     'Ah that was good,' The ram says happily as he rubs his cock some more.  'Almost nothing feels as good as defeating a trespasser in my territory.'  The ram says as he gets off you, before turning to depart, leaving you to contend with the mess he left in his wake.";
	otherwise:
		say "     The beast pushes you down to the ground roughly, pinning you there as he pumps his own cock eagerly.  You are forced to watch as his hoof-hands rub at his balls and cock, an impressive set of genitals on the woolly victor, unable to look away even as he starts to pump harder.  You groan in defeat as he shoots his sticky seed all over your body, marking you as his.";
		say "     'Ah that was good,' the ram says happily as he rubs his cock some more.  'Almost nothing feels as good as defeating a trespasser in my territory.'  The ram says as he gets off you, before grinning evilly as he looks down at your helpless form. 'Now once you're done transforming into a proper ewe for me, you come find me right away.  That's an order from your ram,' the powerful ram says, before chuckling as he heads back into the city.  You are left lying there covered in his seed, and with a surprisingly strong desire to hunt him down again, just like he told you to...";
	if girl is not banned:
		infect "ewe";
	otherwise:
		infect "ram";


To say ram loss:
	say "The male ram groans as you knock him to the ground viciously, the beast staring up at you fearfully as he signals his defeat. When you shift your weight as if to move closer, the formerly brave beast panics and scrambles away awkwardly, making you chuckle at the sight as he disappears back into the city.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "ram" to infections of guy;
	add "ram" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "ram"; [Name of your new Monster]
	now attack entry is "[one of]He rubs his [']specially treated['] wool on you, causing you to moan at the sensitive sensation.[or]He rushes forward, knocking you back with his short horns.[or]The ram strikes out with one of his hoof-like fists, the strike sending you reeling.[or]He smirks at you before letting out a loud sheep call, the noise echoing in your head making your thoughts fuzzy.[or]The powerful ram strikes you with his hoof-like fist, sending you reeling.[or]The male ram grins happily as he tries to wrestle you to the ground.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[ram loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[ram attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A strong looking male ram approaches, the horns on his head curling back slightly, while the horn between his legs juts proudly forward.";[ Description of the creature when you encounter it.]
	now face entry is "short blunt muzzle on your flattened face, your sheep-like ears sticking straight out from the side of your head, and two small horns extending from your forehead and curling backwards";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "strong and rugged, equally well built for fighting other rams or keeping predators at bay.  Your strong leg muscles give you extra power when charging forward.  Your arms are thinner and end in hoof-like hands that have a little trouble manipulating things, but you don't need them to butt heads with anyone who crosses you";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]thickly wooled[or]wool covered[or]thick fleeced[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "A short round sheep-like nub of a tail sits right over your ass, occasionally flicking one way or another in response to some stimulus.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]bestial[or]ram[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face pushes forward into a short blunt muzzle, like a ram's, as two small horns push their way out of the sides of your forehead"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "[one of]your frame grows larger and more bulky, and your hands and feet fuse into darker and more hoof-like versions of themselves, though they still seem fairly adequate for manipulating objects[or]it grows thicker and more muscular, your hands and feet becoming more like a sheep's hooves, as your leg muscles bunch and shift, perfect for propelling yourself forward quickly[at random]"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a strong itching seems to spread underneath the skin, as before your eyes a thick coat of coarse woolly hair begins to cover your body"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your ass expands into a more rounded shape. A short round nub of a tail startling you as it pushes its way out above your ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it twists and warps between your legs, growing thicker as it takes on a black and pink tint, before drawing up into a new sheath between your legs"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is "Male";
	now hp entry is 50;
	now lev entry is 6;
	now wdam entry is 9;
	now area entry is "Outside";
	now cocks entry is 1;
	now cock length entry is 9;
	now cock width entry is 6;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 0;
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 30;
	now loot entry is "Tainted wool";
	now lootchance entry is 40;
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]stocky[at random]";
	now type entry is "ovine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]



Table of Game Objects (continued)
name	desc	weight	object
"Tainted wool"	"A small bundle of rough wool you found in the city, strangely enough, it has a rather pleasant musky scent coming from it."	1	Tainted wool

Tainted wool is a grab object. It is part of the player.

The usedesc of Tainted wool is "[taintedwooleffect]";

to say taintedwooleffect:
	say "You take out the small bundle of wool you acquired earlier, and your head swims slightly as your nose fills with its strong musky odor. Feeling a bit aroused by the strange scent, you slowly start to rub the wool up against your cheek in order to enjoy the smell better. The feeling of the soft wool rubbing against your body, as well as the arousing aroma, make you lose track of time for a minute, until you realize you can feel your body starting to change.";
	if girl is not banned:
		infect "ewe";
	otherwise:
		infect "ram";


instead of sniffing Tainted wool:
	say "The wool smells of ram musk.";


when play ends:
	if bodyname of player is "ram":
		if ewefucked > 0:
			if humanity of player is less than 10:
				if cocks of player is greater than 0:
					say "Your mind giving out under the strain of the infection, you head out into the city, Mary following along like a good little ewe. You quickly set about finding more members to convert to your flock, increasing your numbers for a time and protecting the trail of Ewes following you. Unfortunately you aren't alone in the city and are beset on all sides by different predators and infected until finally you and your small flock are captured by a group of hyenas.  At first it is somewhat disconcerting to be surrounded by predators, but soon you realize it isn't all bad.  As the only male you are indispensable to them, and you are kept in some comfort, your only duty is to breed the Ewes all day and relax.  Eventually you don't even mind one or two of your flock disappearing every now and then, and you even come to enjoy being sheared...";
				otherwise:
					say "Your mind beginning to fray at the edges, you head back to the store where Mary is waiting for you. Without the makings of a real ram, you aren't quite able to form a flock of your own  with your friendly little ewe, fortunately though, Mary has a plan for you both.  Taking advantage of your increased strength, the two of you head out into the city together, your dimly recalled familiarity with the city, as well as Mary's expertise in scavenging serving you well as you look for a safe location to set up.  Eventually finding a suitable spot, the two of you set out to trap yourselves a nice ram or two for you both to share.  It isn't long before you have one of those rams wandering around without a flock trussed up and protesting in your new hideout, the two of you easily able to overpower his surprised form.  His protesting stops quickly however, when he realizes that the two of you need a nice male like him for your flock, and he resolves to do his duty eagerly.  He is somewhat surprised to find himself relegated to the role of a breeding stud, the two of you visiting him whenever the urge strikes you, and ignoring him otherwise. Your strength protecting the small flock instead of his, while Mary's smarts helps your small group survive in the dangerous city, while he warms both of your beds at night. Your lust fogged mind is happy to have found such a lovely flock to be a part of, as you cuddle happily up against Mary the two of you spending plenty of lustful time together without your new ram, even as she makes plans for the soldiers which are sure to come soon... and you feel a smile stretching your sheep-like muzzle as you realize your flock will probably be growing larger very soon indeed.";
			otherwise:
				if cocks of player is greater than 0:
					say "You and Mary are quite happy when the rescue arrives, allowing you to leave the city once you are determined to be safe enough. You travel together for a while, but it is lonely with only the two of you.  You decide to settle down and raise a larger flock eventually, opening a small clothing and fabric store before settling down to breed some new young lambs.  The demand for your hand-spun clothing and well-made designs quickly outstrips your ability to keep up, and so you find yourself hiring on a few other young women to help, who eventually join the flock eagerly after a gift of some of your [']specially treated['] wool garments. You soon enough have a rather brisk business going, and a small but ever increasing flock to take care of you. Though the next time the building inspector complains about the multiple occupancy you just might have to invite her into the flock as well...";
				otherwise:
					say "You and Mary are quite happy when the rescue arrives, the two of you more then happy to prove yourselves safe to the nice soldiers who examine you.  Once they let you go, you both head out together into the world outside the city, your changed forms make it hard to fit in however, and a flock of just two members seems rather lonely sometimes. At Mary's urging, you both head out into the country, where you can start a small sheep farm of your own, both of you agreeing that at least having some fellow sheep around should be rather comforting to your changed senses.  When your flock arrives, the two of you feel much better immediately, and you discover the other sheep follow you around without protest when you lead them places, making your job much easier then normal.  You find one of the rams eyeing you and Mary rather often however, and are almost unsurprised to return home one day to find Mary bleating away happily underneath him. The sight is strangely arousing, as he finishes mating her, and she blushingly explains that her season crept up on her, and he was just so tempting and right there... Letting her know you aren't upset, she smiles happily, before teasingly reminding you that your own season will be coming soon. Blushing in surprise, you look at the handsome ram nosing around your flock member, and much to Mary's amusement, you let her know that you can hardly wait...";
		otherwise if ramfucked > 0:
			if humanity of player is less than 10:
				if cunts of player is greater than 0:
					say "Returning to the store, feeling somewhat more dominant and bestial then before, you resolve to talk to Leon about things this time. However when you arrive and walk in, Leon and several other members of the flock pounce on you eagerly, the ewes holding you down for your dominant ram, as he makes sure to breed you again and again. Your urge to struggle fades, as he inducts you into the flock like a proper ewe, mating you again and again like the beasts you both are, your bleating calls of pleasure filling the store, even as the musky aroma of your flock surrounds you. When Leon is finally done claiming you as his own, you can hardly remember why you would have wanted to protest belonging to your handsome ram, your will overcome by your new urges, and the powerful males pheromones. You feel a silly smile spreading across your muzzle as the rest of the flock hug and stroke your more powerful body, making you feel nice and welcome as they help you settle in to your new home. Fitting in is surprisingly easy, as is just letting your powerful ram and the rest of the flock do your thinking for you, and your larger size and muscles ensure you a lovely position underneath your new master more often then not. Soon your belly is swelling pleasantly with the promise of new life, and your lust filled sheep like mind, can think of little that will be better then presenting your powerful male with lovely little baby sheep for his flock, and then having him fill you up with even more of them..."; 
				otherwise:
					say "Returning to the store, Leon tries to bar the doors to keep you out, however the rest of the ewes are helpless to resist the sight of your powerful male body, and the ewe you rescued earlier unlocks the side door for you. You grin as you sneak up on the nervous Leon, before finally leaping on the flock leader and wrestling him to the ground. You enjoy having the formerly dominant male pinned underneath you, while the rest of his flock watches your struggle with increasing arousal. Finally Leon is forced to admit defeat, as you hold him down and tease his all to pliable body until he submits. As your new flock gathers happily around their new leader, their cheers and the soft strokes of their hoof-like hands making you feel strong and powerful, you proceed to celebrate your position  by making Leon drink your masculine seed time and time again. Soon the former ram is just as female and needy as any of your other ewes, a change you help her celebrate by filling her with your offspring right away.  You enjoy several long nights of bestial mating, as you claim the entire flock one by one, ensuring their loyalty to their new ram and master. Settling in to the store is easy enough, and quite enjoyable to your instinct driven mind, your ewes taking good care of you, while you make sure they are all nice and well bred, though you single out two of them as your special favorites. Both Mary, and the formerly male Leon, share your bed every night, often with another flock member of two, and you enjoy watching them grow increasingly more submissive as their bellies grow round with proof of your ram-like virility.  Eventually the Military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, you can only grin at them in amusement, more then happy with your new life here in the changed city. A viewpoint you share with some of the most promising soldiers, adding them to your flock when they won't be missed, your flock growing slowly and steadily, and becoming the largest flock in the city, giving you quite a bit of bargaining power when the military are finally forced to come to the bargaining table...";
			otherwise:
				if cunts of player is greater than 0:
					say "When the rescue arrives, you return to the store where you join Leon and the rest in evacuating, and your new more powerful body serves you well as you aid your powerful ram in fending off any trouble.  Soon after your release from the military camp, Leon leads you all to a secluded community out in the countryside, where you can all settle down in peace.  The flock settles into their new life with surprising ease, taking up several jobs in town, as well as starting up a small ranch of their own nearby, and you are happily in the middle of it all. Your more powerful form, as well as your still sharp mind, quickly making you Leon's favorite, as well as his second in command. You enjoy the challenge of settling any problems with the concerned townspeople or visitors, especially when sometimes the settlement results in a new flock member or two, and coming home to the warm arms of your ram every night is a wonderful feeling as well. Looking around at your new life, you are hard pressed to think of how things could get any better then this, a grin crossing your muzzle as you look around at your increasingly sheep owned community.";
				otherwise:
					say "When the soldiers arrive, you guide them to the store and the flock of sheep taking shelter there, enjoying the joyous response of the flock of your arrival with soldiers. Leon is rather reluctant to let another male ram join them, but under the circumstances he can't actually refuse, and you and the rest of the sheep end up going through the military base together. You make a number of [']close['] friends among the ewes as they try testing you for infectiousness, before being forced to give up and let you go so they could focus on events in the city itself. Once free and out of the military's hands, you and Leon lock horns for a bit over your exact position regarding the flock, since the ewes are very much in love with you both. Eventually for the peace of the flock, he ends up acknowledging you as an equal, much to your amusement, and the two of you end up leading your new flock together as you look for some place to settle down. Eventually purchasing a large parcel of land, and creating your own small self-sufficient community. With the efforts of two rams, your flock and town begins to grow rather quickly, with the few visitors to your small community often ending up as nice new ewes for one or the other of you to play with. You have several small fights with Leon over the years, but a strange sort of friendship and rivalry develops between you, and keeps you working together through the roughest of times. As you settle down and listen to the latest news on the radio while your large flock gathers around you comfortably like the extended family you have all become, you feel a smile stretching your sheep-like muzzle, as you listen to the news about the complete failure of the military containment, knowing your flock is already ready for the new world that is sure to arrive soon enough.";
		otherwise:
			if humanity of player is less than 10:
				if cocks of player is greater than 0:
					say "Giving in to your new powerful instincts, you waste no time in wandering through the streets of the city, desperately looking for ewes or unchanged people to add to your flock. [one of]Being far too late to find any unclaimed people to transform, you wander aimlessly, your mind growing increasingly more feral and bestial until you submit completely to your instincts.  Eventually when the military come you are rescued, however there is little hope for them to rehabilitate someone as far gone mentally as you are, and so you end up spending much of your time locked up on the base, though occasionally some of the scientists, or female soldiers will sneak into your cell to enjoy the kinds of pleasures only a true ram can give them...[or]Finding it hard to put together a flock of your own at this point, you end up challenging many of the other rams wandering the city, trying to prove your dominance and take their flocks.  After several near fights, you eventually manage to win yourself a small flock, which you lead proudly, fending off attacks by other rams, and doing your best to avoid the more predatory beasts at the same time.  You lie low when the military assault the city, and you and your flock come out again once they have been driven back. Gathering up the remnants of the less intelligent flocks which were scattered by the assault, you soon have the largest and most powerful flock around, and happily claim yourself a nice piece of grazing land near the park.  While you still lose the occasional sheep to the predators, as the flock leader you lead a happy and prosperous life, your only job to ensure that the rest of the sheep are well bred and filled with your seed... a job you enjoy heartily.[at random]";
				otherwise:
					say "Submitting completely to your new confusing instincts, you wander the city aimlessly, your ram-like dominant instincts warring with your female bodies submissive needs. Eventually you end up driving away several interested rams, and even a few ewes, until finally you are caught by one of the powerful predators in the city.  The powerful [one of]Tigertaur[or]Wolflike[or]Bear[or]Panthertaur[or]Gryphon[or]Hyena[at random] beast pinning you down roughly, and you find yourself overwhelmed by his predatory musk and actions.  The male beast is surprised at your eager bodies response to finally finding a more powerful and dominant male, as you moan and rub against them teasingly. Seemingly amused, the male predator wastes no time in giving you what your body so desperately needs, his exotic cock causing your mind to explode in pleasure as he breeds you again and again throughout the night. Eventually when he moves to leave, you find yourself following him along eagerly, much to his amusement, the predatory male taking you back to his den, where he breeds you again several more times, as you bleat submissively underneath him, happy to finally have found a properly dominant male to submit to.  You adapt to your new life as his predatory plaything with surprising ease, and before long you have his lovely babies on the way, and you just can't help but look forward to taking care of them for him.";
			otherwise:
				if cocks of player is greater than 0:
					say "You feel somewhat grateful when the rescue arrives, as they take you to their base to make sure you are no longer infectious. Once there, you waste no time in convincing the all too pliable female nurses to clear you for release, teasing them with your ram-like musk, and making them promise to follow after you as soon as they can. Grinning you head out into the world eagerly, already planning out the best way to acquire a nice flock to play with, and the best way to make a living. You eventually find yourself in one of the major cities, making some contacts, and working for minimum wage, under a lazy and abusive male supervisor, which is an offense to your Ram like dignity. When one of the nurses finally shows up, you waste no time in teasing and playing with her, enjoying how she begs and pleads for you to change her and make her your ewe. Once you finally give in and finish changing her, you have an amusing idea, which your new ewe eagerly goes along with, luring your offensive supervisor out with tempting glimpses of her changed body. When he is fully distracted and in your apartment, you strike, your ewe eagerly holding him down while you make a lovely new ewe for your flock, with your two first flock members by your side, it is easy enough to acquire several more. Soon you quit your old job entirely, and are able to relax in style, having your new ewes work for you, or often enough renting your shapely flock members out to curious people for a night or two of mind blowing sex, and some of those who come back often enough end up finding out just how mind-blowing the sex can be as a female ewe as well.  It's a ram's life...";
				otherwise:
					say "When the rescue comes, several of the soldiers are amused by your sheep-like new body, and make several jokes as they return you to their base. Feeling somewhat aggressive, you end up challenging several of the soldiers to wrestling matches, which your new form lets you win handily. Flush with victory, you end up offering to have some fun with some of the recently defeated soldiers, an offer they heartily accept.  Several hours and one amazing orgy later, you and a group of rather embarrassed looking new rams will emerge from the barracks, much to the amusement of their fellow squadmates. Your new friends will call in several favors in order to sneak themselves and you out of the camp without anyone else noticing, which leads you all piling in for a road trip to the nearest soldiers house.  Several hours spent in the car with their masculine musk nearly drives you crazy, and your female scent is equally distracting to your new mates, and when you eventually arrive at the house, you are barely through the door before sheep-like bodies are rubbing up against each other again. After several days of near constant rutting, you finally feel somewhat satiated, and start to think clearly again, and though you still enjoy the approving looks of your mates as they stroke your soft fleece, your burning need is mostly sated. Once they introduce themselves, you begin planning your next steps, all of the males amusingly enough bowing to your dominance as you go over who they know who might make good additions to your small flock, as well as family members they think would benefit from your new changes. Soon you are on a new road trip together, your new rams making several phone calls to get people ready, while you head out to gather up  your soon to be flock members before you can all find someplace safe to settle down together, a smile stretching your muzzle as you look forward to how much fun you and your new flock are going to have together.":




[ Edit this to have the correct Name as wall]
Ram ends here.
