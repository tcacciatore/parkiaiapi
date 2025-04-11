
DROP TABLE IF EXISTS exercises;

CREATE TABLE exercises (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT,
    duration TEXT,
    intensity TEXT,
    description TEXT
);

BEGIN;
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        1,
        'Rotation de la tête',
        'mobilité',
        '2 minutes',
        'faible',
        'Tenez-vous droit ou asseyez-vous. Tournez lentement la tête vers la droite, maintenez 5 secondes, puis vers la gauche. Répétez plusieurs fois. Faites aussi des cercles lents dans le sens horaire puis antihoraire.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        2,
        'Roulé d’épaules',
        'mobilité',
        '2 minutes',
        'faible',
        'En position assise ou debout, laissez vos bras détendus. Faites rouler vos épaules vers l’avant en grand cercle pendant 30 secondes, puis vers l’arrière. Répétez plusieurs séries.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        3,
        'Flexion/extension des poignets',
        'mobilité',
        '1 minute',
        'faible',
        'Tendez les bras devant vous, paumes vers le bas. Pliez les poignets vers le haut, maintenez 3 secondes, puis vers le bas. Répétez le mouvement doucement une vingtaine de fois.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        4,
        'Rotation des hanches',
        'mobilité',
        '2 minutes',
        'faible',
        'Debout, pieds écartés à la largeur des hanches, mains sur les hanches. Faites des cercles lents avec le bassin, d’un côté puis de l’autre. Maintenez un bon équilibre.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        5,
        'Cercles avec les chevilles',
        'mobilité',
        '1 minute',
        'faible',
        'Assis sur une chaise, levez un pied légèrement au-dessus du sol. Faites tourner votre cheville dans le sens des aiguilles d’une montre puis dans le sens inverse. Changez de pied.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        6,
        'Flexion latérale du tronc',
        'mobilité',
        '2 minutes',
        'faible',
        'Debout, bras le long du corps. Inclinez le haut du corps lentement vers la droite, puis vers la gauche, en glissant la main le long de la cuisse. Gardez le dos droit.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        7,
        'Étirement des bras vers le haut',
        'mobilité',
        '1 minute',
        'faible',
        'Debout ou assis, levez lentement les bras au-dessus de la tête comme pour toucher le plafond. Maintenez 5 secondes, puis relâchez doucement.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        8,
        'Ouverture/fermeture des mains',
        'mobilité',
        '1 minute',
        'faible',
        'Ouvrez grand les mains puis refermez-les en serrant doucement le poing. Répétez l’ouverture et la fermeture rapidement pendant 1 minute pour stimuler la motricité fine.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        9,
        'Marche sur place rythmée',
        'marche',
        '3 minutes',
        'modérée',
        'Levez alternativement les genoux comme si vous marchiez, tout en bougeant les bras en opposition. Conservez un rythme régulier et soutenu.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        10,
        'Marche avec arrêt/démarrage',
        'marche',
        '5 minutes',
        'modérée',
        'Marchez normalement puis arrêtez-vous net à un signal (ou toutes les 10 secondes). Maintenez l''arrêt 2 secondes, puis reprenez. Cela stimule la capacité à gérer les blocages.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        11,
        'Marche en ligne droite',
        'marche',
        '3 minutes',
        'modérée',
        'Imaginez une ligne droite au sol. Marchez dessus en plaçant un pied exactement devant l''autre, talon contre pointe. Aide à travailler l''équilibre et la précision.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        12,
        'Marche en arrière',
        'marche',
        '3 minutes',
        'modérée',
        'Avancez en arrière très lentement, en gardant les bras levés ou en vous tenant légèrement à un mur. Permet de stimuler l’équilibre postural.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        13,
        'Levé de genoux haut',
        'marche',
        '3 minutes',
        'modérée',
        'En marchant sur place ou en déplacement, montez les genoux à hauteur de hanches. Essayez de maintenir l’équilibre à chaque levée de genou.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        14,
        'Marche avec comptage',
        'marche',
        '2 minutes',
        'modérée',
        'Marchez à rythme régulier en comptant à voix haute. Par exemple : “1, 2, 3, 4” en synchronisant les pas. Cela stimule à la fois le mouvement et la concentration.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        15,
        'Marche avec musique',
        'marche',
        '5 minutes',
        'modérée',
        'Lancez une musique à rythme constant (80-100 bpm). Marchez en suivant ce tempo pour améliorer la fluidité de la marche.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        16,
        'Changement de direction',
        'marche',
        '3 minutes',
        'modérée',
        'Marchez quelques mètres, puis tournez lentement à gauche ou à droite, en marquant une pause avant chaque changement de direction. Améliore l’adaptation motrice.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        17,
        'Squats assistés à une chaise',
        'renforcement',
        '2 minutes',
        'modérée',
        'Debout face à une chaise, pliez les genoux comme pour vous asseoir sans aller jusqu’au bout. Revenez en position debout. Gardez les bras tendus devant pour l''équilibre.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        18,
        'Lever de talons',
        'renforcement',
        '2 minutes',
        'modérée',
        'Debout, montez sur la pointe des pieds, maintenez 3 secondes, puis redescendez lentement. À faire près d’un mur ou d’une table pour la sécurité.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        19,
        'Montée de marche',
        'renforcement',
        '3 minutes',
        'modérée',
        'Utilisez une marche ou un step. Montez avec une jambe, puis l’autre. Redescendez de la même façon. Alternez les jambes à chaque répétition.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        20,
        'Pompes murales',
        'renforcement',
        '2 minutes',
        'modérée',
        'Placez les mains contre un mur, pieds à environ 1 mètre. Pliez les coudes pour approcher la poitrine du mur, puis repoussez doucement.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        21,
        'Levé de genou assis',
        'renforcement',
        '2 minutes',
        'modérée',
        'Assis sur une chaise, levez lentement un genou vers la poitrine, puis redescendez. Alternez les jambes. Maintenez le dos bien droit.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        22,
        'Taper du pied',
        'renforcement',
        '1 minute',
        'faible',
        'Assis, tapez un pied au sol rapidement puis l’autre, en rythme. Stimule la coordination et l’activation musculaire des jambes.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        23,
        'Élastiques doux',
        'renforcement',
        '3 minutes',
        'modérée',
        'Asseyez-vous et utilisez un élastique souple. Étirez-le entre vos bras ou vos jambes lentement et de façon contrôlée.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        24,
        'Levé des bras avec bouteille',
        'renforcement',
        '2 minutes',
        'modérée',
        'Tenez une petite bouteille d’eau dans chaque main. Levez les bras à hauteur d’épaules, puis redescendez. À faire lentement.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        25,
        'Équilibre sur une jambe',
        'équilibre',
        '1 minute',
        'modérée',
        'Debout, tenez-vous sur une jambe pendant 10 secondes, puis changez. Tenez-vous à une chaise ou un mur si besoin.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        26,
        'Attraper une balle',
        'coordination',
        '3 minutes',
        'modérée',
        'En binôme ou seul contre un mur, lancez une balle souple et attrapez-la. Cela stimule coordination œil-main et réactivité.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        27,
        'Bras/jambes croisés',
        'coordination',
        '2 minutes',
        'modérée',
        'Touchez le genou gauche avec la main droite, puis inversement. Répétez le mouvement en rythme en alternant.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        28,
        'Taper sur les genoux',
        'coordination',
        '1 minute',
        'faible',
        'Assis, tapez les genoux avec les mains en alternant droite/gauche, puis les croisez. Stimule les séquences motrices.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        29,
        'Assis/debout répété',
        'coordination',
        '3 minutes',
        'modérée',
        'Levez-vous d’une chaise sans aide des bras, puis asseyez-vous doucement. Répétez lentement en contrôlant chaque mouvement.'
    );
INSERT INTO exercises (id, name, type, duration, intensity, description) VALUES (
        30,
        'Danse lente',
        'coordination',
        '5 minutes',
        'modérée',
        'Mettez une musique douce et suivez le rythme avec des pas simples. Seul ou avec un partenaire. Excellent pour la fluidité du mouvement.'
    );
COMMIT;
