local addonName, addon = ...

-- Coords and English announcements sourced from https://wowpedia.fandom.com/wiki/Zaralek_Cavern
-- Quest IDs and names sourced from Nery's macros
-- Russian translations provided by Ranlom874
-- French by KatyPurry    
addon.events = {
    {
        groupID = 1,
        name = {
			enUS = "Cascades Calling",
			ruRU = "Зов каскадов",
		},
        questID = 75612,
        info = "Destroy 8 Pylons",
        coordX = 42.4,
        coordY = 73.8,
        announce = {
            enUS = "The Primalists have begun summoning something massive in the Cascades Column!",
            frFR = "Vous sentez la température dans les grottes augmenter considérablement.",
            ruRU = "Воины стихий начали призывать что-то большое в Колонне каскадов!",
        },
    }, {
        groupID = 5,
        name = {
			enUS = "Conspiracy of Flames",
			ruRU = "Заговор огней",
		},
        info = "Defeat Mobs in the area to overload 5 Skulls",
        questID = 75455,
        coordX = 32.1,
        coordY = 42.7,
        announce = {
            enUS = "Ancient djaradin chants echo from the caldera...",
            frFR = "D’anciens chants djaradins s’élèvent de la caldeira…",
            ruRU = "Из кальдеры доносятся древние песни джарадинов…",
        },
    }, {
        groupID = 3,
        name = {
			enUS = "Crystalline Survey",
			ruRU = "Исследование кристаллов",
		},
        info = "Defeat Agitated Crystallines",
        questID = 75471,
        coordX = 61.7,
        coordY = 46.4,
        announce = {
            enUS = "The sound of crystals ringing echoes through the cavern. The geological survey is about to begin near the Throughway!",
            frFR = "Le bruit des cristaux résonne dans toute la caverne. L’analyse géologique va commencer près du Passage !",
            deDE = "Der Klang von Kristallen schallt durch die Höhle. Gleich beginnt die geologische Messung in der Nähe des Durchgangs.",
            ruRU = "Звон кристаллов разносится по пещере. Мы начнем геологическое исследование возле Прохода!",
        },
    }, {       
        groupID = 2,
        name = {
			enUS = "Discordant Crystals",
			ruRU = "Диссонирующие кристаллы",
		},
        info = "Kill the Lodestone",
        questID = 75664,
        coordX = 57.4,
        coordY = 65.1,
        announce = {
            enUS = "The delicate natural song of the cavern is disrupted by violent, discordant notes!",
            frFR = "",
            deDE = "Der sanfte natürliche Gesang der Höhle wird von wilden, misstönenden Noten gestört!",
			ruRU = "Тихую песню пещер заглушают пронзительные, нестройные звуки!",
        },
    }, {
        groupID = 1,
        name = {
			enUS = "Glimmerfish",
			ruRU = "Лови мерцокуня, пока не уплыл",
		},
        info = "Attack the Fish to spawn scales. Requires 50 scales",
        questID = 75611,
        coordX = 45.2,
        coordY = 84.0,
        announce = {
            enUS = "A giant fish has been spotted near Glimmerogg!",
            frFR = "",
			ruRU = "У Мерцающего Огга видели огромную рыбу!",
        },
    }, {
        groupID = 4,
        name = {
			enUS = "Hungry Hungry Hydra",
			ruRU = "Голодная-преголодная гидра",
		},
        info = "Drag Mobs to the Hydras to feed them",
        questID = 75478,
        coordX = 46.8,
        coordY = 23.9,
        announce = {
            enUS = "A starving hydra emerges from the lava, looking for a quick meal!",
            frFR = "",
			ruRU = "Из лавы вынырнула голодная гидра! Она ищет еду.",
        },
    }, {
        groupID = 5,
        name = {
			enUS = "Imperfect Balance",
			ruRU = "Неидеальное равновесие",
		},
        info = "Kill guards until the weakened elemental can be attacked",
        questID = 75451,
        coordX = 36.3,
        coordY = 52.2,
        announce = {
            enUS = "A vicious roar resonates through the caldera.",
            frFR = "Un rugissement féroce résonne à travers la caldeira.",
            deDE = "Ein wildes Brüllen hallt durch die Kaldera.",
			ruRU = "По кальдере эхом прокатывается злобный рев.",
        },
    }, {
        groupID = 4,
        name = {
			enUS = "Magmaclaw Matriarch",
			ruRU = "Магмохват-матриарх",
		},
        info = "Kill the Magmaclaw Queen",
        questID = 75461,
        coordX = 48.8,
        coordY = 29.0,
        announce = {
            enUS = "A spawning swarm of magmaclaws begins to form, threatening the ecological balance of the caverns!",
            frFR = "Le claquement d’énormes griffes se fait entendre depuis les eaux.",
			ruRU = "Магмохваты сбиваются в рой и собираются размножаться. Экология пещер под угрозой!",
        },
    }, {
        groupID = 2,
        name = {
			enUS = "Monument Maintenance",
			ruRU = "",
		},
        info = "Bring statue pieces to the statue",
        questID = 75705,
        coordX = 58.4,
        coordY = 67.8,
        announce = {
            
        }, 
    }, {
        groupID = 5,
        name = {
			enUS = "Mortar Warfare",
			ruRU = "Мортира войны",
		},
        info = "Throw Frothing Lava at both ballistae",
        questID = 75454,
        coordX = 39.8,
        coordY = 43.7,
        announce = {
            enUS = "War cries erupt from the caldera as the djaradin begin to assemble their ballistae.",
            frFR = "Des cris de guerre fusent de la caldeira, alors que les troupes djaradines commencent à assembler leurs balistes.",
            deDE = "Kriegsschreie ertönen in der Kaldera, während die Djaradin beginnen, ihre Ballisten aufzubauen.",
			ruRU = "Из кальдеры доносятся боевые кличи: джарадины начали собирать баллисты.",
        },
    }, {
        groupID = 5,
        name = {
			enUS = "Seismic Ceremony",
			ruRU = "Сейсмическяа церемония",
		},
        info = "Click each Rune 3 times",
        questID = 75450,
        coordX = 34.1,
        coordY = 47.1,
        announce = {
            enUS = "The caldera begins to rumble...",
            frFR = "La caldeira se met à trembler…",
            deDE = "Die Erde in der Kaldera erbebt.",
			ruRU = "В кальдере дрожит земля.",
        },
    }, {
        groupID = 3,
        name = {
			enUS = "Shellfire",
			ruRU = "Под огнем",
		},
        info = "Douse the big snail with Buckets of Water",
        questID = 75222,
        coordX = 58.1,
        coordY = 49.5,
        announce = {
            enUS = "A fire elemental approaches Olfor and Big Bessie!",
            frFR = "Un élémentaire de feu approche d’Olfor et de la grosse Bessie !",
            deDE = "Ein Feuerelementar nähert sich Olfor und der großen Bessie!",
			ruRU = "Огненный элементаль приближается к Олфору и Бесси!",
        },
    }, {
        groupID = 3,
        name = {
			enUS = "Smellincense",
			ruRU = "Благовоняния",
		},
        info = "Protect the Incense cart",
        questID = 75370,
        coordX = 60.8,
        coordY = 55.5,
        announce = {
            enUS = "Delvert is starting to heat up his smelly pot by Deephollow Lake!",
            frFR = "Delvert commence à faire chauffer sa marmite odorante près du lac des Abysses !",
            deDE = "Delvert fängt an, seinen starkriechenden Topf am Tiefgrottensee zu erhitzen!",
			ruRU = "Делверт начинает варить пахучее зелье у Карст-озера!",
        },
    }, {
        groupID = 3,
        name = {
			enUS = "Smelly Scramble",
			ruRU = "Вонючая драка",
		},
        info = "Fill the Cauldron",
        questID = 75156,
        coordX = 57.6,
        coordY = 57.1,
        announce = {
            enUS = "Muskmettle the Smellomancer is getting ready to brew!",
            frFR = "Muskran l’Odoramancien se prépare à passer à l’action !",
            deDE = "Miefeifer der Riechomant macht sich zum Brauen bereit!",
			ruRU = "Мускусил Запахомант готов к варке!",
        },
    },
    {
        groupID = 3,
        name = {
			enUS = "Stress Express",
		},
        info = "Escort the Wagon to Loamm",
        questID = 75156,
        coordX = 64.5,
        coordY = 51.4,
        announce = {
            enUS = "Doopurt's wagon broke down in the Throughway!",
        },
    },
    {
        groupID = 4,
        name = {
			enUS = "Strike the Colors",
			ruRU = "Удар по знаменам",
		},
        info = "Click all Banners",
        questID = 75494,
        coordX = 43.6,
        coordY = 25.0,
        announce = {
            enUS = "Neltharion loyalists unfurl giant banners proclaiming their loyalty to Deathwing's memory!",
            frFR = "",
			ruRU = "Слуги Нелтариона развернули огромные знамена в знак верности Смертокрылу!",
        },
    },
    {
        groupID = 1,
        name = {
			enUS = "The Champion's Challenge",
			ruRU = "Состязание чемпионов",
		},
        info = "Pick up nearby weights",
        questID = 75624,
        coordX = 44.1,
        coordY = 80.7,
        announce = {
            enUS = "A weightlifting competition is about to begin in Glimmerogg!",
            frFR = "",
			ruRU = "В Мерцающем Огге вот-вот начнутся соревнования по тяжелой атлетике!",
        },
    },
    {
        groupID = 2,
        name = {
			enUS = "Whirling Zephyr",
			ruRU = "Кружащийся ветерок",
		},
        info = "Destroys Pylons with the Hurricane Scepter, dropped from nearby Primalists",
        questID = 74352,
        coordX = 57.5,
        coordY = 65.5,
        announce = {
            enUS = "The air hums with energy as the Primalists begin summoning a storm!",
            frFR = "L’atmosphère vrombit d’énergie tandis que les Primalistes invoquent une tempête !",
            deDE = "Die Luft vibriert vor Energie, als die Primalisten beginnen, einen Sturm zu beschwören!",
			ruRU = "Воздух гудит энергией. Воины стихий начинают призывать бурю!",
        },
    },
}

addon.bricks = {
    {
        name = {
            enUS = "Ritual Offering #1", 
            ruRU = "Ритуальное подношение #1",
        },
        questID = 73548, info = "Eastern part of Caldera", coordX = 40, coordY = 50},
    {
        name = {
            enUS = "Ritual Offering #2",
            ruRU = "Ритуальное подношение #2",
        },
        questID = 73551, info = "Northern part of Caldera", coordX = 32.0, coordY = 40.0},
    {
        name = {
            enUS = "Ritual Offering #3",
            ruRU = "Ритуальное подношение #3",
        },
        questID = 73553, info = "Southern part of Caldera", coordX = 31.0, coordY = 51.0},
    {
        name = {
            enUS = "Ritual Offering #4",
            ruRU = "Ритуальное подношение #4",
        },
        questID = 73552, info = "Southern part of Caldera", coordX = 31.0, coordY = 51.0},
    {
        name = {
            enUS = "Waterlogged Treasure",
            ruRU = "Промокшая котомка",
        },
        questID = 75015, info = "Chest is underwater", coordX = 62.1, coordY = 55.3},
}

addon.rares = {
	{
		objectID = 203515,
		name = "Alcanon",
		coordX = 56.4,
		coordY = 73.3,
		questID = 75284,
	}, {
		objectID = 203468,
		name = "Aquifon",
		coordX = 47.8,
		coordY = 74.8,
		questID = 75270,
    }, {
        objectID = 203621,
        name = "Brullo the Stronk",
        coordX = 41.4,
        coordY = 86.1,
        questID = 75325,
    }, {
		objectID = 204093,
		name = "Colossian",
		coordX = 48.2,
		coordY = 24.4,
		questID = 75475,
	}, {
		objectID = 203646,
		name = "Dinn",
		coordX = 29.2,
		coordY = 50.7,
		questID = 75352,
	}, {
		objectID = 203664,
		name = "Emberdusk",
		coordX = 32.1,
		coordY = 51.2,
		questID = 75361,
	}, {
		objectID = 203660,
		name = "Flowfy",
		coordX = 36.2,
		coordY = 44.7,
		questID = 75357,
	}, {
		objectID = 203592,
		name = "General Zskorro",
		coordX = 41.7,
		coordY = 18.4,
		questID = 75295,
	}, {
		objectID = 203477,
		name = "Goopal",
		coordX = 68.5,
		coordY = 46.4,
		questID = 75273,
	}, {
		objectID = 203627,
		name = "Invohq",
		coordX = 46.0,
		coordY = 33.3,
		questID = 75335,
	}, {
		objectID = 203625,
		name = "Karokta",
		coordX = 42.2,
		coordY = 65.9,
		questID = 75333,
	}, {
		objectID = 203466,
		name = "Kapraku",
		coordX = 59.3,
		coordY = 39.8,
		questID = 75268,
	}, {
		objectID = 203618,
		name = "Klakatak",
		coordX = 53.9,
		coordY = 42.3,
		questID = 75321,
	}, {
		objectID = 203462,
		name = "Kob'rok",
		coordX = 65.0,
		coordY = 55.8,
		questID = 75266,
	}, {
		objectID = 200111,
		name = "Magtembo",
		coordX = 41.1,
		coordY = 37.7,
		questID = 75339,
	}, {
		objectID = 203521,
		name = "Professor Gastrinax",
		coordX = 55.5,
		coordY = 18.3,
		questID = 75291,
	}, {
		objectID = 203643,
		name = "Skornak",
		coordX = 36.3,
		coordY = 52.9,
		questID = 75348,
	}, {
		objectID = 203480,
		name = "Spinmarrow",
		coordX = 53.1,
		coordY = 65.0,
		questID = 75275,
	}, {
		objectID = 203662,
		name = "Subterrax",
		coordX = 38.8,
		coordY = 46.5,
		questID = 75359,
	}, {
		objectID = 203593,
		name = "Underlight Queen",
		coordX = 58.2,
		coordY = 69.1,
		questID = 75297,
	}, {
		objectID = 201029,
		name = "Viridian King",
		coordX = 39.2,
		coordY = 71.0,
		questID = 75365,
	},
}

addon.headers = {
    events = {
        enUS = {
            "Glimmerogg", "Nal Ks'Kol", "Loamm", "Aberrus", "Caldera"
        },
        ruRU = {
            "Мерцающий Огг", "Нал-Кс'Кол", "Лоамм", "Aberrus", "Кальдера",
        },
    }
}

addon.snail = {
    {name = "Daily Snail", questIDs = {74515, 74517, 74516, 74520, 74519, 74518, 74514}},
}
