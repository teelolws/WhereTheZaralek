local addonName, addon = ...

-- Coords and English announcements sourced from https://wowpedia.fandom.com/wiki/Zaralek_Cavern
-- Quest IDs and names sourced from Nery's macros

addon.events = {
    {
        name = "Cascades Calling",
        questID = 75612,
        coordX = 42.4,
        coordY = 73.8,
        announce = {
            enUS = "The Primalists have begun summoning something massive in the Cascades Column!",
            frFR = "Vous sentez la température dans les grottes augmenter considérablement.",
        },
    }, {
        name = "Conspiracy of Flames",
        questID = 75455,
        coordX = 32.1,
        coordY = 42.7,
        announce = {
            enUS = "Ancient djaradin chants echo from the caldera...",
            frFR = "D’anciens chants djaradins s’élèvent de la caldeira…",
        },
    }, {
        name = "Crystalline Survey",
        questID = 75471,
        coordX = 61.7,
        coordY = 46.4,
        announce = {
            enUS = "The sound of crystals ringing echoes through the cavern. The geological survey is about to begin near the Throughway!",
            frFR = "Le bruit des cristaux résonne dans toute la caverne. L’analyse géologique va commencer près du Passage !",
            deDE = "Der Klang von Kristallen schallt durch die Höhle. Gleich beginnt die geologische Messung in der Nähe des Durchgangs.",
        },
    }, {
        name = "Discordant Crystals",
        questID = 75664,
        coordX = 57.4,
        coordY = 65.1,
        announce = {
            enUS = "The delicate natural song of the cavern is disrupted by violent, discordant notes!",
            frFR = "",
            deDE = "Der sanfte natürliche Gesang der Höhle wird von wilden, misstönenden Noten gestört!",
        },
    }, {
        name = "Glimmerfish",
        questID = 75611,
        coordX = 45.2,
        coordY = 84.0,
        announce = {
            enUS = "A giant fish has been spotted near Glimmerogg!",
            frFR = "",
        },
    }, {
        name = "Hungry Hungry Hydra",
        questID = 75478,
        coordX = 46.8,
        coordY = 23.9,
        announce = {
            enUS = "A starving hydra emerges from the lava, looking for a quick meal!",
            frFR = "",
        },
    }, {
        name = "Imperfect Balance",
        questID = 75451,
        coordX = 36.3,
        coordY = 52.2,
        announce = {
            enUS = "A vicious roar resonates through the caldera.",
            frFR = "Un rugissement féroce résonne à travers la caldeira.",
            deDE = "Ein wildes Brüllen hallt durch die Kaldera.",
        },
    },
    {
        name = "Magmaclaw Matriarch",
        questID = 75461,
        coordX = 48.8,
        coordY = 29.0,
        announce = {
            enUS = "A spawning swarm of magmaclaws begins to form, threatening the ecological balance of the caverns!",
            frFR = "Le claquement d’énormes griffes se fait entendre depuis les eaux.",
        },
    },
    --[[{
        name = "Monument Maintenance",
        questID = 75705,
        coordX = 58.4,
        coordY = 67.8,
        announce = {
            
        },
    },]]
    {
        name = "Mortar Warfare",
        questID = 75454,
        coordX = 39.8,
        coordY = 43.7,
        announce = {
            enUS = "War cries erupt from the caldera as the djaradin begin to assemble their ballistae.",
            frFR = "Des cris de guerre fusent de la caldeira, alors que les troupes djaradines commencent à assembler leurs balistes.",
            deDE = "Kriegsschreie ertönen in der Kaldera, während die Djaradin beginnen, ihre Ballisten aufzubauen.",
        },
    }, {
        name = "Seismic Ceremony",
        questID = 75450,
        coordX = 34.1,
        coordY = 47.1,
        announce = {
            enUS = "The caldera begins to rumble...",
            frFR = "La caldeira se met à trembler…",
            deDE = "Die Erde in der Kaldera erbebt.",
        },
    }, {
        name = "Shellfire",
        questID = 75222,
        coordX = 58.1,
        coordY = 49.5,
        announce = {
            enUS = "A fire elemental approaches Olfor and Big Bessie!",
            frFR = "Un élémentaire de feu approche d’Olfor et de la grosse Bessie !",
            deDE = "Ein Feuerelementar nähert sich Olfor und der großen Bessie!",
        },
    }, {
        name = "Smellincense",
        questID = 75370,
        coordX = 60.8,
        coordY = 55.5,
        announce = {
            enUS = "Delvert is starting to heat up his smelly pot by Deephollow Lake!",
            frFR = "Delvert commence à faire chauffer sa marmite odorante près du lac des Abysses !",
            deDE = "Delvert fängt an, seinen starkriechenden Topf am Tiefgrottensee zu erhitzen!",
        },
    }, {
        name = "Smelly Scramble",
        questID = 75156,
        coordX = 57.6,
        coordY = 57.1,
        announce = {
            enUS = "Muskmettle the Smellomancer is getting ready to brew!",
            frFR = "Muskran l’Odoramancien se prépare à passer à l’action !",
            deDE = "Miefeifer der Riechomant macht sich zum Brauen bereit!",
        },
    },
    {
        name = "Stress Express",
        questID = 75156,
        coordX = 64.5,
        coordY = 51.4,
        announce = {
            enUS = "Doopurt's wagon broke down in the Throughway!",
            frFR = "",
        },
    },
    {
        name = "Strike the Colors",
        questID = 75494,
        coordX = 43.6,
        coordY = 25.0,
        announce = {
            enUS = "Neltharion loyalists unfurl giant banners proclaiming their loyalty to Deathwing's memory!",
            frFR = "",
        },
    },
    {
        name = "The Champion's Challenge",
        questID = 75624,
        coordX = 44.1,
        coordY = 80.7,
        announce = {
            enUS = "A weightlifting competition is about to begin in Glimmerogg!",
            frFR = "",
        },
    },
    {
        name = "Whirling Zephyr",
        questID = 74352,
        coordX = 57.5,
        coordY = 65.5,
        announce = {
            enUS = "The air hums with energy as the Primalists begin summoning a storm!",
            frFR = "L’atmosphère vrombit d’énergie tandis que les Primalistes invoquent une tempête !",
            deDE = "Die Luft vibriert vor Energie, als die Primalisten beginnen, einen Sturm zu beschwören!",
        },
    },
}
