Version 1 of Game Endings by Core Mechanics begins here.

EndingID is a number that varies.[@Tag:NotSaved] EndingID is usually 1.

a Game Ending is a kind of object.
TheEnd is a Game Ending.[@Tag:NotSaved]
TheEnd has a truth state called Player imprisoned. Player imprisoned is usually false. [The player got imprisoned, enslaved and so on. Always involuntarily.]
TheEnd has a truth state called Player leaving. Player leaving is usually false. [The player left 'everything' behind. Always voluntarily.]
TheEnd has a truth state called Player died. Player died is usually false. [The player died. Includes starvation, dehydration, eaten alive and so on.]
TheEnd has a text called Ending Reason. Ending Reason is usually "". [The reason or cause of the ending. Extra info, like "starvation", "dehydration", "Wyvern" (in case of vore death for example) and so on.]

to setending ( Ending - text ):
	setending ending silence state is 0;

to setending ( Ending - text ) silently: [suppresses the debug output]
	setending ending silence state is 1;

to setending ( Ending - text ) silence state is ( Silence - a number ): [sets the ending ID by its name entry for later use]
	let found be 0;
	repeat with y running from 1 to number of filled rows in Table of GameEndings:
		choose row y in Table of GameEndings;
		if priority entry <= 0:
			next;
		if Name entry exactly matches the text Ending, case insensitively:
			now found is 1;
			now EndingID is y;
			break;
	if found is 0:
		say "ERROR - Ending '[Ending]' not found. (setending)[line break]";
	else if debugactive is 1 and Silence is 0:
		say "DEBUG: Current [']ending['] set to: [EndingID] = [name entry][line break]";

to trigger ending ( Ending - a text ):
	setending Ending;
	let found be 0;
	choose row EndingID in the Table of GameEndings;
	if Priority entry >= 0: [Make sure, that the ending was found and EndingID is set correctly]
		if Name entry exactly matches the text Ending, case insensitively:
			now found is 1;
	if found is 1:
		now Triggered entry is true;

to decide if ending ( Ending - a text ) is triggered:
	setending Ending silently;
	let found be 0;
	choose row EndingID in the Table of GameEndings;
	if Priority entry >= 0:
		if Name entry exactly matches the text Ending, case insensitively:
			now found is 1;
	if found is 1:
		if Triggered entry is true:
			decide yes;
	decide no;

vetcheat is an action applying to nothing.
understand "i am a pro" as vetcheat.

vetcheater is a number that varies.
carry out vetcheat:
	if vetcheater is not 0:
		say "You can only use this once.";
		stop the action;
	increase vetcheater by 1;
	increase XP of Player by 200;
	if level of Player < 5:
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		if XP of Player > ( level of Player plus one ) times 10:
			level up;
		else if "Fast Learner" is listed in feats of Player and XP of Player > ( level of Player plus one ) times 8:
			level up;
	decrease score by 400;

understand "superhot" as supersponsor.

When play ends:
	clear the screen;
	say "[bold type]Game Over![roman type][line break]";
	ratetheplayer;
	say "----------";
	follow the self examine rule;
	LineBreak;

to ratetheplayer:
	if gsgl is 1 and score > 0:
		now tempnum is (score / 20);
		increase score by tempnum;
	if "Ultimatum" is listed in feats of Player and score > 0:
		now tempnum2 is (score / 10);
	say "In Scenario: [bold type][scenario][roman type], you have achieved a score of [bold type][score][roman type].";
	if gsgl is 1 and score > 0, say "For choosing no gender lock, you received a bonus of [tempnum] points.";
	if "Ultimatum" is listed in feats of Player and score > 0, say "Your Ultimatum perk grants you a bonus of [tempnum2] points.";
	say "You've achieve the rank of: [bold type]";
	if score < 0:
		say "A used, broken condom!";
	else if score < 120:
		say "A used condom!";
	else if the score < 240:
		say "Post-Apocalyptic Passaround!";
	else if the score < 500:
		say "Salacious Scavenger!";
	else if the score < 1000:
		say "Wanton Wastewanderer!";
	else if the score < 1500:
		say "Serpent Blisskin!";
	else if the score < 2000:
		say "Maester Baster!";
	else if the score < 2500:
		say "Baude Warrior!";
	else if score > 9000:
		say "Th- What, 9000?!";
	else:
		say "The Lord Humungus!";
	say "[roman type]";
	if the score > 999:
		say "Your performance was so excellent, we'll give you a little... help, for your next run through. Type 'I am a pro' to gain 200 XP. It only works once per character";
		if bookfound is not 0:
			let tempnum be 0;
			sort table of library books in booknum order;
			repeat with y running from 1 to number of rows in table of library books:
				choose row y in table of library books;
				if booknum entry is bookfound:
					now tempnum is y;
					break;
			choose row tempnum from table of library books;
			if humanity of Player < 10:
				say ". Your confused, instinctual thoughts are sometimes broken by strange thoughts or images from a book you once read";
			else:
				say ". With all the excitement you went through at the library, the book you found remains firmly in your mind";
			say ". In the Abbey, type [bold type][']dewey [bookcode entry]['][roman type] to find it again in your next game";
		say ".";
	LineBreak;

when play ends:
	if thirst of Player >= 100 or hunger of Player >= 100:	[blocking regular endings]
		now BodyName of Player is "starvation";
		now FaceName of Player is "starvation";
		now SkinName of Player is "starvation";
		now TailName of Player is "starvation";
		now CockName of Player is "starvation";
		say "     You have perished from [if hunger of Player >= 100 and thirst of Player >= 100]starvation and thirst[else if hunger of Player >= 100]starvation[else]thirst[end if] and are no more. Your body becomes a meal for another of the more predatory creatures roaming the city.";
	else if BodyName of Player is "Tigertaur Sex Toy":
		say "     Even though you try a few times, you never manage to escape the clutches of your tigertaur masters, and servicing them eventually becomes the only reason for your existence, supplanting all other thoughts you might once have had.";
		stop the action;
	else if BodyName of Player is "Broken Husky Slut":
		say "     The alpha husky that captured you, continued to break down both your mind and body. Eventually, he was able to build you into his perfect submissive partner and the fact that you ended up turning into one of the few precious deltas, well that certainly made his bid to rule the husky packs much more assured..";
		stop the action;
	else if BodyName of Player is "DBrute Slave":
		say "     Your new reality in hell focuses on satisfying the relentless lusts of your demon brute masters, as well as being shared around for any other hellspawn he feels like allowing a ride...";
		stop the action;
	else if BodyName of Player is "Hunter's Bitch":
		if Player is female:
			say "     Having succumbed to the alpha husky's indoctrination, your next few days are spent being fucked again and again, until you are nothing but another husky bitch in Hunter's pack. Still, you only ever play second fiddle to Garnet, whom he is absolutely obsessed by, having gone so far as to search out the movie starlet to take for himself and make her a bitch. Therefore, most of your alpha's time is spent having sex with her. You're drawn into his play with the transformed movie star too, often being ordered to lick cum from her pussy or make out with the woman, with Hunter watching or fucking you as you do so.";
		else: [male & neuter]
			if "Male Preferred" is not listed in feats of Player: [can transform to female]
				say "     Having succumbed to the alpha husky's indoctrination, your next few days are spent being fucked again and again, with the dominant canine gleefully commenting about[if Player is male] your cock shrinking more and more, until [end if]the moment when the flesh of your crotch forms the first folds of a new and virgin pussy. Not that you keep your cherry more than a few minutes, as he takes great pleasure to [']claim['] you fully by humping a heavy load into the virginal womb of yours. Still, you only ever play second fiddle to Garnet, whom he is absolutely obsessed by, spending most of the day having sex with her. You're drawn into his play with the transformed movie star too, often being ordered to lick cum from her pussy or make out with the woman, with Hunter watching or fucking you as you do so.";
			else: [player can't become female]
				say "     Having succumbed to the alpha husky's indoctrination, your next few days are spent being fucked again and again, with the dominant canine growling a little about the fact that your gender doesn't seem to want to change at all. Still, he breaks you in good as his bitch-boy, used to taking that thick shaft all the time and serving as his guard for when the dominant male goes all out fucking Garnet. Having gone so far as to search out the movie starlet in the middle of the nanite apocalypse, just to take her for himself and make her a bitch, the man is absolutely obsessed with her. You're drawn into his play with the transformed movie star too, often being ordered to lick his cum from her pussy, with Hunter watching or fucking your ass as you do so.";
		stop the action;
	else if BodyName of Player is "Demon Slave":
		say "     Your new reality in hell focuses on satisfying Skarnoth's every desire - of which there are many, mostly carnal ones. As the overlord of his own little demonic realm, your master has the power to play with your body shape too, transforming you as he wishes to better enjoy breaking you to his will...";
		stop the action;
	else if ending "Lucifer's Mare" is triggered:
		follow the Lucifer's Mare rule;
		if Player imprisoned of TheEnd is true:
			stop the action;
	else if BodyName of Player is "Hell Prisoner":
		say "     You have delved in far too deep into the demonic realm. Hell has taken you and imprisoned your soul for all eternity. Now you serve only to satisfy the demons['] every whim of any kind, your will broken facing an inevitable fate. There's no hope... nor salvation.";
		stop the action;
	else if BodyName of Player is "dead":
		stop the action;
	else if humanity of Player < 10 and HP of the player > 0:
		if BodyName of Player is "Anthro Dragoness" and HP of Doctor Matt <= 100:
			say "Following some unknown instinct, you seek out another of your own, and home in on Orthas, the dragon that was guarding the lab. She pets you gently along your neck and makes soothing sounds that has you almost purring. She proves to be a loving and kind mistress and you protect her fiercely for the remainder of your long life.";
	else:
		say "You emerge from your harrowing experience with your mind intact, with your [BodyName of Player] form and [FaceName of Player] face.";
		if BodyName is "Human":
			say "Despite the traumas set on you, you do your best to fit back in with humanity after the rescue arrives.";
		if Cock Length of Player > 10 or Ball Size of Player > 3 and player is male:
			say "Your extreme masculine attributes prove to be more than a little awkward. As society puts itself back together, you do find a niche. Others, changed as you, require the services of such studs, and you never lack for something to do on the weekends.";
			if Cock Count of Player > 1:
				say "Your multiple endowments become quite popular amongst some infected, whom come from some great distance to be serviced by you. Though it is illegal to charge for such services, many leave you a 'gift' regardless, even a marriage proposal or two.";
		if SkinName of Player matches the text "Human", case insensitively:
			increase score by 0;
		else:
			say "Your unnatural [Skin of Player] flesh makes you stand out in a crowd. You find it difficult to keep friends outside of other infected, even after you're declared safe for contact.";
		if "Fertile" is listed in feats of Player and ( number of filled rows in the Table of PlayerChildren + FeralBirths) > 5:
			if Player is female:
				say "You've been pregnant so many times and given birth to so many children that the nanites make a very strange change to your reproductive organs. Your body automatically stored a large amount of cum from the last creature that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of pregnancy. At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life.";
			else if Player is mpreg_ok and mpregcount >= 6:
				if "Breeding True" is not listed in feats of Player and "They Have Your Eyes" is not listed in feats of Player:
					say "You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs. Your body begins automatically storing some cum from anyone or anything that's screwed you. Soon after you give birth, a small amount of the stored cum is automatically leaked out from a few of these storage chambers to be used to re-impregnate you if someone hasn't yet mated you. This medley of semen is somehow mixed together to give you children from several sires. You spend the rest of your life in a constant state of male pregnancy. At first, you're alarmed by this, but soon you're seeking out diverse lovers to add their semen to your stores, loving the beautiful array of hybrid children you birth. Your ever-growing brood cares for your every whim, allowing you to enjoy your new life as a male breeder. Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
				else:
					say "You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs. Your body begins automatically storing a large cum from the last creatures that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of male pregnancy. At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life. Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
			if "Wild Womb" is listed in feats of Player:
				say "However, thanks to your unusual tendency to birth feral children, many of your young soon strike out on their own, often sneaking away in the night, as their instinct to breed and spread their infection takes control.";
		if BodyName of Player is "Anthro Dragoness":
			say "Your dragon like body proves as much a curiosity as repulsion in those around you. You find gainful employment as a mascot for a theme park, where you are paid to wander the park and entertain the clients within. The job proves largely enjoyable, especially since the more annoying people are intimidated by your bulk and claws.";

Game Endings ends here.
