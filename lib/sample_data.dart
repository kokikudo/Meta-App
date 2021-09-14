const RE_DATA = [
  {
    "image": "assets/images/image_2.jpg",
    "amount": 200000,
    "address": "Jenison, MI 49428, SF",
    "bedrooms": 4,
    "bathrooms": 2,
    "area": 1416,
    "garage": 1,
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/image_1.jpg",
    "amount": 140000,
    "address": "351 Rockwood Dr, SF",
    "bedrooms": 4,
    "bathrooms": 2,
    "area": 1416,
    "garage": 1,
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
];

const game_sample = [
  {
    "name": "Hades",
    "image": "assets/games/hades_xbox_1.jpeg",
    "amount": 4905,
    "inc": "Take2",
    "metascore": 93,
    "userscore": 8.6,
    "position": 'game1',
    "summary":
        '''Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre. Hades is a god-like rogue-like dungeon crawler that combines the best aspects of Supergiant's critically acclaimed titles, including the fast-paced action of Bastion, the rich atmosphere and depth of Transistor, and the character-driven storytelling of Pyre.

BATTLE OUT OF HELL
As the immortal Prince of the Underworld, you'll wield the powers and mythic weapons of Olympus to break free from the clutches of the god of the dead himself, while growing stronger and unraveling more of the story with each unique escape attempt.

UNLEASH THE FURY OF OLYMPUS
The Olympians have your back! Meet Zeus, Athena, Poseidon, and many more, and choose from their dozens of powerful Boons that enhance your abilities. There are thousands of viable character builds to discover as you go.

BEFRIEND GODS, GHOSTS, AND MONSTERS
A fully-voiced cast of colorful, larger-than-life characters is waiting to meet you! Grow your relationships with them, and experience thousands of unique story events as you learn about what's really at stake for this big, dysfunctional family.

BUILT FOR REPLAYABILITY
New surprises await each time you delve into the ever-shifting Underworld, whose guardian bosses will remember you. Use the powerful Mirror of Night to grow permanently stronger, and give yourself a leg up the next time you run away from home.

NOTHING IS IMPOSSIBLE
Permanent upgrades mean you don't have to be a god yourself to experience the exciting combat and gripping story. Though, if you happen to be one, crank up the challenge and get ready for some white-knuckle action that will put your well-practiced skills to the test.
SIGNATURE SUPERGIANT STYLE
The rich, atmospheric presentation and unique melding of gameplay and narrative that's been core to Supergiant's games is here in full force: spectacular hand-painted environments and a blood-pumping original score bring the Underworld to life.''',
  },
  {
    "name": "Hades",
    "image": "assets/games/hades_ps5_2.jpeg",
    "amount": 2937,
    "inc": "Take2",
    "metascore": 93,
    "userscore": 8.3,
    "position": 'game2',
    "summary":
        '''Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre. Hades is a god-like rogue-like dungeon crawler that combines the best aspects of Supergiant's critically acclaimed titles, including the fast-paced action of Bastion, the rich atmosphere and depth of Transistor, and the character-driven storytelling of Pyre. BATTLE OUT OF HELL. As the immortal Prince of the Underworld, you'll wield the powers and mythic weapons of Olympus to break free from the clutches of the god of the dead himself, while growing stronger and unraveling more of the story with each unique escape attempt.

UNLEASH THE FURY OF OLYMPUS
The Olympians have your back! Meet Zeus, Athena, Poseidon, and many more, and choose from their dozens of powerful Boons that enhance your abilities. There are thousands of viable character builds to discover as you go.

BEFRIEND GODS, GHOSTS, AND MONSTERS
A fully-voiced cast of colorful, larger-than-life characters is waiting to meet you! Grow your relationships with them, and experience thousands of unique story events as you learn about what's really at stake for this big, dysfunctional family.

BUILT FOR REPLAYABILITY
New surprises await each time you delve into the ever-shifting Underworld, whose guardian bosses will remember you. Use the powerful Mirror of Night to grow permanently stronger, and give yourself a leg up the next time you run away from home.

NOTHING IS IMPOSSIBLE
Permanent upgrades mean you don't have to be a god yourself to experience the exciting combat and gripping story. Though, if you happen to be one, crank up the challenge and get ready for some white-knuckle action that will put your well-practiced skills to the test.
SIGNATURE SUPERGIANT STYLE
The rich, atmospheric presentation and unique melding of gameplay and narrative that's been core to Supergiant's games is here in full force: spectacular hand-painted environments and a blood-pumping original score bring the Underworld to life. '''
  },
  {
    "name": "A MONSTER'S EXPEDITION",
    "image": "assets/games/a_monsters_expedition_3.jpeg",
    "amount": 2200,
    "inc": "Draknek & Friends",
    "metascore": 92,
    "userscore": null,
    "position": 'game3',
    "summary": '''From some of the best puzzle designers in the world comes A Monster's Expedition, an adorable and relaxing open world puzzle adventure for monsters who love to learn about humans.

By pushing trees over to create pathways, you'll explore hundreds of islands near and far to learn about the history of "humanity".

Immerse yourself in human culture with all-new exhibits from the "Human Englandland" dig site, each accompanied with expert insights!'''
  },

];

const movies_sample = [
  {
    "name": "Citizen Kane",
    "image": "assets/movies/citizen_kane_poster_1.jpeg",
    "amount": 4800,
    "inc": "RKO RADIO PICTURES",
    "metascore": 100,
    "userscore": 8.4,
    "position": 'movie1',
    "summary": '''In a mansion called Xanadu, part of a vast palatial estate in Florida, the elderly Charles Foster Kane is on his deathbed. Holding a snow globe, he utters a word, "Rosebud", and dies. A newsreel obituary tells the life story of Kane, an enormously wealthy newspaper publisher and industrial magnate. Kane's death becomes sensational news around the world, and the newsreel's producer tasks reporter Jerry Thompson with discovering the meaning of "Rosebud".'''
  },
  {
    "name": "THE GODFATHER",
    "image": "assets/movies/the_godfather_2.jpeg",
    "amount": 1000,
    "inc": "PARAMOUNT PICTURES",
    "metascore": 100,
    "userscore": 9.2,
    "position": 'movie2',
    "summary": '''Francis Ford Coppola's epic features Marlon Brando in his Oscar-winning role as the patriarch of the Corleone family. Director Coppola paints a chilling portrait of the Sicilian clan's rise and near fall from power in America, masterfully balancing the story between the Corleone's family life and the ugly crime business in which they are engaged. Based on Mario Puzo's best-selling novel and featuring career-making performances by Al Pacino, James Caan and Robert Duvall, this searing and brilliant film garnered ten Academy Award nominations, and won three including Best Picture of 1972.'''
  },
  {
    "name": "REAR WINDOW",
    "image": "assets/movies/rear_window_3.jpeg",
    "amount": null,
    "inc": "PARAMOUNT PICTURES",
    "metascore": 100,
    "userscore": 8.8,
    "position": 'movie3',
"summary": '''A wheelchair-bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.'''
  },
];

const tv_sample = [
  {
    "name": "Rectify: Season 4",
    "image": "assets/tv/rectify_1.jpeg",
    "amount": null,
    "inc": "Sundance Channel",
    "metascore": 99,
    "userscore": 8.6,
    "position": 'tv1',
    "summary": '''Daniel tries to start a new life outside of Paulie in the fourth and final season of the drama.''',
  },
  {
    "name": "THE LARRY SANDERS SHOW : SEASON 4",
    "image": "assets/tv/the_larry_sanders_show_2.jpeg",
    "amount": null,
    "inc": "HBO",
    "metascore": 99,
    "userscore": 5.8,
    "position": 'tv2',
    "summary": '''Comic Garry Shandling draws upon his own talk show experiences to create the character of Larry Sanders, a paranoid, insecure host of a late night talk show. Larry, along with his obsequious TV sidekick Hank Kingsley and his fiercely protective producer Artie, allows Garry Shandling and his talented writers to look behind the scenes and to show us a convincing slice of behind the camera life.''',
  },
  {
    "name": "MURDER ONE : SEASON 1",
    "image": "assets/tv/murder_one_3.jpg",
    "amount": null,
    "inc": "ABC",
    "metascore": 99,
    "userscore": 6.4,
    "position": 'tv3',
    "summary": '''One of several crime and law dramas created by Steven Bochco (Hill Street Blues, NYPD Blue, L.A. Law), Murder One boasted a then-unique concept: it would tell a single story -- that of a major murder trial -- over the course of an entire season. In the first season, Daniel Benzali portrayed the lead defense attorney, Patricia Clarkson played his wife, and Jason Gedrick the accused man he represented. Audiences at the time seemed deterred by the serialization, with low ratings leading to major cast and format changes in season two.''',
  },
];