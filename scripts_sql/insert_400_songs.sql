
DROP TABLE IF EXISTS songs;

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    artist TEXT NOT NULL,
    bpm INTEGER NOT NULL,
    style TEXT,
    spotify_link TEXT,
    apple_music_link TEXT,
    note TEXT,
    created_at TIMESTAMP NOT NULL
);

BEGIN;
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        1,
        'Shut Up and Dance',
        'The Killers',
        157,
        'dance',
        'https://open.spotify.com/track/shut-up-and-dance-the-killers',
        'https://music.apple.com/us/song/shut-up-and-dance-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        2,
        'Uptown Funk',
        'Lady Gaga',
        125,
        'reggae',
        'https://open.spotify.com/track/uptown-funk-lady-gaga',
        'https://music.apple.com/us/song/uptown-funk-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        3,
        'Take On Me',
        'The Killers',
        126,
        'disco',
        'https://open.spotify.com/track/take-on-me-the-killers',
        'https://music.apple.com/us/song/take-on-me-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        4,
        'Shape of You',
        'Portugal. The Man',
        82,
        'reggae',
        'https://open.spotify.com/track/shape-of-you-portugal.-the-man',
        'https://music.apple.com/us/song/shape-of-you-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        5,
        'Get Lucky',
        'OneRepublic',
        125,
        'rock',
        'https://open.spotify.com/track/get-lucky-onerepublic',
        'https://music.apple.com/us/song/get-lucky-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        6,
        'Levitating',
        'A-ha',
        157,
        'rock',
        'https://open.spotify.com/track/levitating-a-ha',
        'https://music.apple.com/us/song/levitating-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        7,
        'Levitating',
        'Pharrell Williams',
        62,
        'dance',
        'https://open.spotify.com/track/levitating-pharrell-williams',
        'https://music.apple.com/us/song/levitating-pharrell-williams',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        8,
        'Shake It Off',
        'Nirvana',
        84,
        'soul',
        'https://open.spotify.com/track/shake-it-off-nirvana',
        'https://music.apple.com/us/song/shake-it-off-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        9,
        'Counting Stars',
        'Maroon 5',
        117,
        'soul',
        'https://open.spotify.com/track/counting-stars-maroon-5',
        'https://music.apple.com/us/song/counting-stars-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        10,
        'Blinding Lights',
        'Katy Perry',
        158,
        'soul',
        'https://open.spotify.com/track/blinding-lights-katy-perry',
        'https://music.apple.com/us/song/blinding-lights-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        11,
        'Get Lucky',
        'Survivor',
        106,
        'dance',
        'https://open.spotify.com/track/get-lucky-survivor',
        'https://music.apple.com/us/song/get-lucky-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        12,
        'Rolling in the Deep',
        'Avicii',
        158,
        'reggae',
        'https://open.spotify.com/track/rolling-in-the-deep-avicii',
        'https://music.apple.com/us/song/rolling-in-the-deep-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        13,
        'Moves Like Jagger',
        'Eminem',
        152,
        'rap',
        'https://open.spotify.com/track/moves-like-jagger-eminem',
        'https://music.apple.com/us/song/moves-like-jagger-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        14,
        'Bad Guy',
        'Adele',
        146,
        'rnb',
        'https://open.spotify.com/track/bad-guy-adele',
        'https://music.apple.com/us/song/bad-guy-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        15,
        'Shape of You',
        'Billie Eilish',
        62,
        'rap',
        'https://open.spotify.com/track/shape-of-you-billie-eilish',
        'https://music.apple.com/us/song/shape-of-you-billie-eilish',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        16,
        'Billie Jean',
        'Ed Sheeran',
        104,
        'dance',
        'https://open.spotify.com/track/billie-jean-ed-sheeran',
        'https://music.apple.com/us/song/billie-jean-ed-sheeran',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        17,
        'Dance Monkey',
        'Kanye West',
        71,
        'electro',
        'https://open.spotify.com/track/dance-monkey-kanye-west',
        'https://music.apple.com/us/song/dance-monkey-kanye-west',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        18,
        'Dance Monkey',
        'Tones and I',
        92,
        'classique',
        'https://open.spotify.com/track/dance-monkey-tones-and-i',
        'https://music.apple.com/us/song/dance-monkey-tones-and-i',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        19,
        'Bad Guy',
        'Jennifer Lopez',
        70,
        'dance',
        'https://open.spotify.com/track/bad-guy-jennifer-lopez',
        'https://music.apple.com/us/song/bad-guy-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        20,
        'Bad Guy',
        'Ed Sheeran',
        82,
        'rnb',
        'https://open.spotify.com/track/bad-guy-ed-sheeran',
        'https://music.apple.com/us/song/bad-guy-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        21,
        'Lose Yourself',
        'Bee Gees',
        64,
        'soul',
        'https://open.spotify.com/track/lose-yourself-bee-gees',
        'https://music.apple.com/us/song/lose-yourself-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        22,
        'Stronger',
        'Queen',
        122,
        'dance',
        'https://open.spotify.com/track/stronger-queen',
        'https://music.apple.com/us/song/stronger-queen',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        23,
        'Don''t Stop Me Now',
        'Lady Gaga',
        129,
        'funk',
        'https://open.spotify.com/track/dont-stop-me-now-lady-gaga',
        'https://music.apple.com/us/song/dont-stop-me-now-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        24,
        'Shut Up and Dance',
        'Ed Sheeran',
        68,
        'pop',
        'https://open.spotify.com/track/shut-up-and-dance-ed-sheeran',
        'https://music.apple.com/us/song/shut-up-and-dance-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        25,
        'Dance Monkey',
        'Ed Sheeran',
        66,
        'hip hop',
        'https://open.spotify.com/track/dance-monkey-ed-sheeran',
        'https://music.apple.com/us/song/dance-monkey-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        26,
        'Happy',
        'Pharrell Williams',
        73,
        'reggae',
        'https://open.spotify.com/track/happy-pharrell-williams',
        'https://music.apple.com/us/song/happy-pharrell-williams',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        27,
        'Don''t Stop Me Now',
        'Eminem',
        117,
        'dance',
        'https://open.spotify.com/track/dont-stop-me-now-eminem',
        'https://music.apple.com/us/song/dont-stop-me-now-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        28,
        'Seven Nation Army',
        'The Weeknd',
        77,
        'pop',
        'https://open.spotify.com/track/seven-nation-army-the-weeknd',
        'https://music.apple.com/us/song/seven-nation-army-the-weeknd',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        29,
        'Hey Ya!',
        'OneRepublic',
        153,
        'rap',
        'https://open.spotify.com/track/hey-ya!-onerepublic',
        'https://music.apple.com/us/song/hey-ya!-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        30,
        'Shut Up and Dance',
        'Queen',
        77,
        'hip hop',
        'https://open.spotify.com/track/shut-up-and-dance-queen',
        'https://music.apple.com/us/song/shut-up-and-dance-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        31,
        'Wake Me Up',
        'Daft Punk',
        104,
        'dance',
        'https://open.spotify.com/track/wake-me-up-daft-punk',
        'https://music.apple.com/us/song/wake-me-up-daft-punk',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        32,
        'Counting Stars',
        'Nirvana',
        63,
        'pop',
        'https://open.spotify.com/track/counting-stars-nirvana',
        'https://music.apple.com/us/song/counting-stars-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        33,
        'Shut Up and Dance',
        'Taylor Swift',
        71,
        'classique',
        'https://open.spotify.com/track/shut-up-and-dance-taylor-swift',
        'https://music.apple.com/us/song/shut-up-and-dance-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        34,
        'Wake Me Up',
        'Katy Perry',
        75,
        'funk',
        'https://open.spotify.com/track/wake-me-up-katy-perry',
        'https://music.apple.com/us/song/wake-me-up-katy-perry',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        35,
        'Levitating',
        'Imagine Dragons',
        61,
        'soul',
        'https://open.spotify.com/track/levitating-imagine-dragons',
        'https://music.apple.com/us/song/levitating-imagine-dragons',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        36,
        'Wake Me Up',
        'A-ha',
        74,
        'rap',
        'https://open.spotify.com/track/wake-me-up-a-ha',
        'https://music.apple.com/us/song/wake-me-up-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        37,
        'Counting Stars',
        'The Killers',
        124,
        'funk',
        'https://open.spotify.com/track/counting-stars-the-killers',
        'https://music.apple.com/us/song/counting-stars-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        38,
        'Stronger',
        'Coldplay',
        116,
        'disco',
        'https://open.spotify.com/track/stronger-coldplay',
        'https://music.apple.com/us/song/stronger-coldplay',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        39,
        'Can''t Stop the Feeling',
        'Billie Eilish',
        142,
        'classique',
        'https://open.spotify.com/track/cant-stop-the-feeling-billie-eilish',
        'https://music.apple.com/us/song/cant-stop-the-feeling-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        40,
        'Hey Ya!',
        'Avicii',
        97,
        'indie',
        'https://open.spotify.com/track/hey-ya!-avicii',
        'https://music.apple.com/us/song/hey-ya!-avicii',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        41,
        'Levitating',
        'Katy Perry',
        75,
        'pop',
        'https://open.spotify.com/track/levitating-katy-perry',
        'https://music.apple.com/us/song/levitating-katy-perry',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        42,
        'Happy',
        'Katy Perry',
        61,
        'rnb',
        'https://open.spotify.com/track/happy-katy-perry',
        'https://music.apple.com/us/song/happy-katy-perry',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        43,
        'Lose Yourself',
        'Survivor',
        121,
        'hip hop',
        'https://open.spotify.com/track/lose-yourself-survivor',
        'https://music.apple.com/us/song/lose-yourself-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        44,
        'Don''t Stop Me Now',
        'The Weeknd',
        116,
        'dance',
        'https://open.spotify.com/track/dont-stop-me-now-the-weeknd',
        'https://music.apple.com/us/song/dont-stop-me-now-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        45,
        'Levitating',
        'Justin Timberlake',
        135,
        'rnb',
        'https://open.spotify.com/track/levitating-justin-timberlake',
        'https://music.apple.com/us/song/levitating-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        46,
        'Seven Nation Army',
        'Justin Timberlake',
        140,
        'pop',
        'https://open.spotify.com/track/seven-nation-army-justin-timberlake',
        'https://music.apple.com/us/song/seven-nation-army-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        47,
        'Blinding Lights',
        'Survivor',
        77,
        'funk',
        'https://open.spotify.com/track/blinding-lights-survivor',
        'https://music.apple.com/us/song/blinding-lights-survivor',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        48,
        'Happy',
        'The Weeknd',
        157,
        'rock',
        'https://open.spotify.com/track/happy-the-weeknd',
        'https://music.apple.com/us/song/happy-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        49,
        'Blinding Lights',
        'Lady Gaga',
        153,
        'classique',
        'https://open.spotify.com/track/blinding-lights-lady-gaga',
        'https://music.apple.com/us/song/blinding-lights-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        50,
        'Shape of You',
        'Taylor Swift',
        122,
        'pop',
        'https://open.spotify.com/track/shape-of-you-taylor-swift',
        'https://music.apple.com/us/song/shape-of-you-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        51,
        'On the Floor',
        'Justin Timberlake',
        148,
        'dance',
        'https://open.spotify.com/track/on-the-floor-justin-timberlake',
        'https://music.apple.com/us/song/on-the-floor-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        52,
        'Counting Stars',
        'Pharrell Williams',
        116,
        'pop',
        'https://open.spotify.com/track/counting-stars-pharrell-williams',
        'https://music.apple.com/us/song/counting-stars-pharrell-williams',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        53,
        'Smells Like Teen Spirit',
        'Billie Eilish',
        55,
        'reggae',
        'https://open.spotify.com/track/smells-like-teen-spirit-billie-eilish',
        'https://music.apple.com/us/song/smells-like-teen-spirit-billie-eilish',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        54,
        'Levitating',
        'Daft Punk',
        129,
        'hip hop',
        'https://open.spotify.com/track/levitating-daft-punk',
        'https://music.apple.com/us/song/levitating-daft-punk',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        55,
        'Eye of the Tiger',
        'OneRepublic',
        143,
        'pop',
        'https://open.spotify.com/track/eye-of-the-tiger-onerepublic',
        'https://music.apple.com/us/song/eye-of-the-tiger-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        56,
        'Treasure',
        'Portugal. The Man',
        102,
        'hip hop',
        'https://open.spotify.com/track/treasure-portugal.-the-man',
        'https://music.apple.com/us/song/treasure-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        57,
        'Get Lucky',
        'Daft Punk',
        78,
        'hip hop',
        'https://open.spotify.com/track/get-lucky-daft-punk',
        'https://music.apple.com/us/song/get-lucky-daft-punk',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        58,
        'Happy',
        'Dua Lipa',
        154,
        'funk',
        'https://open.spotify.com/track/happy-dua-lipa',
        'https://music.apple.com/us/song/happy-dua-lipa',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        59,
        'Shake It Off',
        'Jennifer Lopez',
        83,
        'soul',
        'https://open.spotify.com/track/shake-it-off-jennifer-lopez',
        'https://music.apple.com/us/song/shake-it-off-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        60,
        'Happy',
        'Tones and I',
        69,
        'funk',
        'https://open.spotify.com/track/happy-tones-and-i',
        'https://music.apple.com/us/song/happy-tones-and-i',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        61,
        'Feel It Still',
        'Adele',
        60,
        'funk',
        'https://open.spotify.com/track/feel-it-still-adele',
        'https://music.apple.com/us/song/feel-it-still-adele',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        62,
        'Moves Like Jagger',
        'Coldplay',
        134,
        'rock',
        'https://open.spotify.com/track/moves-like-jagger-coldplay',
        'https://music.apple.com/us/song/moves-like-jagger-coldplay',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        63,
        'Feel It Still',
        'Nirvana',
        134,
        'classique',
        'https://open.spotify.com/track/feel-it-still-nirvana',
        'https://music.apple.com/us/song/feel-it-still-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        64,
        'Levitating',
        'Michael Jackson',
        145,
        'rnb',
        'https://open.spotify.com/track/levitating-michael-jackson',
        'https://music.apple.com/us/song/levitating-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        65,
        'Lose Yourself',
        'Imagine Dragons',
        146,
        'hip hop',
        'https://open.spotify.com/track/lose-yourself-imagine-dragons',
        'https://music.apple.com/us/song/lose-yourself-imagine-dragons',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        66,
        'Shut Up and Dance',
        'Taylor Swift',
        121,
        'rnb',
        'https://open.spotify.com/track/shut-up-and-dance-taylor-swift',
        'https://music.apple.com/us/song/shut-up-and-dance-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        67,
        'Levitating',
        'Ed Sheeran',
        139,
        'rnb',
        'https://open.spotify.com/track/levitating-ed-sheeran',
        'https://music.apple.com/us/song/levitating-ed-sheeran',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        68,
        'Hey Ya!',
        'The Killers',
        103,
        'funk',
        'https://open.spotify.com/track/hey-ya!-the-killers',
        'https://music.apple.com/us/song/hey-ya!-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        69,
        'Shape of You',
        'Billie Eilish',
        158,
        'soul',
        'https://open.spotify.com/track/shape-of-you-billie-eilish',
        'https://music.apple.com/us/song/shape-of-you-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        70,
        'Seven Nation Army',
        'Portugal. The Man',
        77,
        'classique',
        'https://open.spotify.com/track/seven-nation-army-portugal.-the-man',
        'https://music.apple.com/us/song/seven-nation-army-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        71,
        'Happy',
        'Dua Lipa',
        157,
        'rnb',
        'https://open.spotify.com/track/happy-dua-lipa',
        'https://music.apple.com/us/song/happy-dua-lipa',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        72,
        'Levitating',
        'Eminem',
        122,
        'rnb',
        'https://open.spotify.com/track/levitating-eminem',
        'https://music.apple.com/us/song/levitating-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        73,
        'Hey Ya!',
        'A-ha',
        117,
        'rap',
        'https://open.spotify.com/track/hey-ya!-a-ha',
        'https://music.apple.com/us/song/hey-ya!-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        74,
        'Dance Monkey',
        'Outkast',
        121,
        'rock',
        'https://open.spotify.com/track/dance-monkey-outkast',
        'https://music.apple.com/us/song/dance-monkey-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        75,
        'Eye of the Tiger',
        'Outkast',
        92,
        'reggae',
        'https://open.spotify.com/track/eye-of-the-tiger-outkast',
        'https://music.apple.com/us/song/eye-of-the-tiger-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        76,
        'On the Floor',
        'OneRepublic',
        57,
        'classique',
        'https://open.spotify.com/track/on-the-floor-onerepublic',
        'https://music.apple.com/us/song/on-the-floor-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        77,
        'Levitating',
        'Pharrell Williams',
        55,
        'rnb',
        'https://open.spotify.com/track/levitating-pharrell-williams',
        'https://music.apple.com/us/song/levitating-pharrell-williams',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        78,
        'Dance Monkey',
        'Bruno Mars',
        119,
        'electro',
        'https://open.spotify.com/track/dance-monkey-bruno-mars',
        'https://music.apple.com/us/song/dance-monkey-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        79,
        'On the Floor',
        'OneRepublic',
        92,
        'dance',
        'https://open.spotify.com/track/on-the-floor-onerepublic',
        'https://music.apple.com/us/song/on-the-floor-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        80,
        'Get Lucky',
        'Queen',
        57,
        'pop',
        'https://open.spotify.com/track/get-lucky-queen',
        'https://music.apple.com/us/song/get-lucky-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        81,
        'Somebody Told Me',
        'Eminem',
        135,
        'soul',
        'https://open.spotify.com/track/somebody-told-me-eminem',
        'https://music.apple.com/us/song/somebody-told-me-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        82,
        'Moves Like Jagger',
        'Adele',
        115,
        'electro',
        'https://open.spotify.com/track/moves-like-jagger-adele',
        'https://music.apple.com/us/song/moves-like-jagger-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        83,
        'Stronger',
        'Bee Gees',
        82,
        'pop',
        'https://open.spotify.com/track/stronger-bee-gees',
        'https://music.apple.com/us/song/stronger-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        84,
        'Dance Monkey',
        'Eminem',
        141,
        'dance',
        'https://open.spotify.com/track/dance-monkey-eminem',
        'https://music.apple.com/us/song/dance-monkey-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        85,
        'Uptown Funk',
        'Eminem',
        60,
        'rock',
        'https://open.spotify.com/track/uptown-funk-eminem',
        'https://music.apple.com/us/song/uptown-funk-eminem',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        86,
        'Shake It Off',
        'Adele',
        160,
        'hip hop',
        'https://open.spotify.com/track/shake-it-off-adele',
        'https://music.apple.com/us/song/shake-it-off-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        87,
        'Blinding Lights',
        'Tones and I',
        95,
        'funk',
        'https://open.spotify.com/track/blinding-lights-tones-and-i',
        'https://music.apple.com/us/song/blinding-lights-tones-and-i',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        88,
        'Can''t Stop the Feeling',
        'Daft Punk',
        112,
        'funk',
        'https://open.spotify.com/track/cant-stop-the-feeling-daft-punk',
        'https://music.apple.com/us/song/cant-stop-the-feeling-daft-punk',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        89,
        'Don''t Stop Me Now',
        'OneRepublic',
        68,
        'reggae',
        'https://open.spotify.com/track/dont-stop-me-now-onerepublic',
        'https://music.apple.com/us/song/dont-stop-me-now-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        90,
        'Seven Nation Army',
        'Nirvana',
        64,
        'reggae',
        'https://open.spotify.com/track/seven-nation-army-nirvana',
        'https://music.apple.com/us/song/seven-nation-army-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        91,
        'Can''t Stop the Feeling',
        'Avicii',
        141,
        'electro',
        'https://open.spotify.com/track/cant-stop-the-feeling-avicii',
        'https://music.apple.com/us/song/cant-stop-the-feeling-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        92,
        'Levitating',
        'Avicii',
        61,
        'funk',
        'https://open.spotify.com/track/levitating-avicii',
        'https://music.apple.com/us/song/levitating-avicii',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        93,
        'Uptown Funk',
        'Adele',
        124,
        'soul',
        'https://open.spotify.com/track/uptown-funk-adele',
        'https://music.apple.com/us/song/uptown-funk-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        94,
        'Stronger',
        'Avicii',
        155,
        'rock',
        'https://open.spotify.com/track/stronger-avicii',
        'https://music.apple.com/us/song/stronger-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        95,
        'Bad Guy',
        'Tones and I',
        109,
        'indie',
        'https://open.spotify.com/track/bad-guy-tones-and-i',
        'https://music.apple.com/us/song/bad-guy-tones-and-i',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        96,
        'Can''t Stop the Feeling',
        'Billie Eilish',
        150,
        'classique',
        'https://open.spotify.com/track/cant-stop-the-feeling-billie-eilish',
        'https://music.apple.com/us/song/cant-stop-the-feeling-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        97,
        'Somebody Told Me',
        'Michael Jackson',
        118,
        'electro',
        'https://open.spotify.com/track/somebody-told-me-michael-jackson',
        'https://music.apple.com/us/song/somebody-told-me-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        98,
        'Dance Monkey',
        'A-ha',
        133,
        'hip hop',
        'https://open.spotify.com/track/dance-monkey-a-ha',
        'https://music.apple.com/us/song/dance-monkey-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        99,
        'Get Lucky',
        'Nirvana',
        123,
        'dance',
        'https://open.spotify.com/track/get-lucky-nirvana',
        'https://music.apple.com/us/song/get-lucky-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        100,
        'Don''t Stop Me Now',
        'Adele',
        71,
        'classique',
        'https://open.spotify.com/track/dont-stop-me-now-adele',
        'https://music.apple.com/us/song/dont-stop-me-now-adele',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        101,
        'Moves Like Jagger',
        'A-ha',
        144,
        'soul',
        'https://open.spotify.com/track/moves-like-jagger-a-ha',
        'https://music.apple.com/us/song/moves-like-jagger-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        102,
        'Moves Like Jagger',
        'The Weeknd',
        148,
        'indie',
        'https://open.spotify.com/track/moves-like-jagger-the-weeknd',
        'https://music.apple.com/us/song/moves-like-jagger-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        103,
        'On the Floor',
        'Portugal. The Man',
        61,
        'pop',
        'https://open.spotify.com/track/on-the-floor-portugal.-the-man',
        'https://music.apple.com/us/song/on-the-floor-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        104,
        'Somebody Told Me',
        'Avicii',
        71,
        'hip hop',
        'https://open.spotify.com/track/somebody-told-me-avicii',
        'https://music.apple.com/us/song/somebody-told-me-avicii',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        105,
        'Bad Guy',
        'Katy Perry',
        155,
        'rock',
        'https://open.spotify.com/track/bad-guy-katy-perry',
        'https://music.apple.com/us/song/bad-guy-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        106,
        'Rolling in the Deep',
        'Pharrell Williams',
        72,
        'classique',
        'https://open.spotify.com/track/rolling-in-the-deep-pharrell-williams',
        'https://music.apple.com/us/song/rolling-in-the-deep-pharrell-williams',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        107,
        'Uptown Funk',
        'Lady Gaga',
        100,
        'hip hop',
        'https://open.spotify.com/track/uptown-funk-lady-gaga',
        'https://music.apple.com/us/song/uptown-funk-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        108,
        'Shut Up and Dance',
        'Queen',
        62,
        'electro',
        'https://open.spotify.com/track/shut-up-and-dance-queen',
        'https://music.apple.com/us/song/shut-up-and-dance-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        109,
        'Bad Guy',
        'Jennifer Lopez',
        91,
        'funk',
        'https://open.spotify.com/track/bad-guy-jennifer-lopez',
        'https://music.apple.com/us/song/bad-guy-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        110,
        'Feel It Still',
        'OneRepublic',
        118,
        'classique',
        'https://open.spotify.com/track/feel-it-still-onerepublic',
        'https://music.apple.com/us/song/feel-it-still-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        111,
        'Take On Me',
        'Ed Sheeran',
        96,
        'rap',
        'https://open.spotify.com/track/take-on-me-ed-sheeran',
        'https://music.apple.com/us/song/take-on-me-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        112,
        'Counting Stars',
        'Eminem',
        159,
        'dance',
        'https://open.spotify.com/track/counting-stars-eminem',
        'https://music.apple.com/us/song/counting-stars-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        113,
        'Blinding Lights',
        'Michael Jackson',
        121,
        'electro',
        'https://open.spotify.com/track/blinding-lights-michael-jackson',
        'https://music.apple.com/us/song/blinding-lights-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        114,
        'Stronger',
        'Kanye West',
        70,
        'hip hop',
        'https://open.spotify.com/track/stronger-kanye-west',
        'https://music.apple.com/us/song/stronger-kanye-west',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        115,
        'Treasure',
        'Jennifer Lopez',
        83,
        'pop',
        'https://open.spotify.com/track/treasure-jennifer-lopez',
        'https://music.apple.com/us/song/treasure-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        116,
        'Somebody Told Me',
        'Lady Gaga',
        84,
        'dance',
        'https://open.spotify.com/track/somebody-told-me-lady-gaga',
        'https://music.apple.com/us/song/somebody-told-me-lady-gaga',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        117,
        'Seven Nation Army',
        'Katy Perry',
        100,
        'disco',
        'https://open.spotify.com/track/seven-nation-army-katy-perry',
        'https://music.apple.com/us/song/seven-nation-army-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        118,
        'Stronger',
        'Eminem',
        61,
        'rnb',
        'https://open.spotify.com/track/stronger-eminem',
        'https://music.apple.com/us/song/stronger-eminem',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        119,
        'Smells Like Teen Spirit',
        'Jennifer Lopez',
        84,
        'rnb',
        'https://open.spotify.com/track/smells-like-teen-spirit-jennifer-lopez',
        'https://music.apple.com/us/song/smells-like-teen-spirit-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        120,
        'Rolling in the Deep',
        'Imagine Dragons',
        72,
        'classique',
        'https://open.spotify.com/track/rolling-in-the-deep-imagine-dragons',
        'https://music.apple.com/us/song/rolling-in-the-deep-imagine-dragons',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        121,
        'Blinding Lights',
        'Taylor Swift',
        116,
        'hip hop',
        'https://open.spotify.com/track/blinding-lights-taylor-swift',
        'https://music.apple.com/us/song/blinding-lights-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        122,
        'Treasure',
        'Coldplay',
        156,
        'classique',
        'https://open.spotify.com/track/treasure-coldplay',
        'https://music.apple.com/us/song/treasure-coldplay',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        123,
        'Levitating',
        'Jennifer Lopez',
        92,
        'rock',
        'https://open.spotify.com/track/levitating-jennifer-lopez',
        'https://music.apple.com/us/song/levitating-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        124,
        'Seven Nation Army',
        'Queen',
        92,
        'rock',
        'https://open.spotify.com/track/seven-nation-army-queen',
        'https://music.apple.com/us/song/seven-nation-army-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        125,
        'On the Floor',
        'Bee Gees',
        110,
        'rap',
        'https://open.spotify.com/track/on-the-floor-bee-gees',
        'https://music.apple.com/us/song/on-the-floor-bee-gees',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        126,
        'Hey Ya!',
        'Survivor',
        114,
        'indie',
        'https://open.spotify.com/track/hey-ya!-survivor',
        'https://music.apple.com/us/song/hey-ya!-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        127,
        'Stayin'' Alive',
        'Coldplay',
        61,
        'funk',
        'https://open.spotify.com/track/stayin-alive-coldplay',
        'https://music.apple.com/us/song/stayin-alive-coldplay',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        128,
        'Happy',
        'Avicii',
        111,
        'rap',
        'https://open.spotify.com/track/happy-avicii',
        'https://music.apple.com/us/song/happy-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        129,
        'Take On Me',
        'Imagine Dragons',
        125,
        'disco',
        'https://open.spotify.com/track/take-on-me-imagine-dragons',
        'https://music.apple.com/us/song/take-on-me-imagine-dragons',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        130,
        'Blinding Lights',
        'Dua Lipa',
        71,
        'soul',
        'https://open.spotify.com/track/blinding-lights-dua-lipa',
        'https://music.apple.com/us/song/blinding-lights-dua-lipa',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        131,
        'Counting Stars',
        'The Weeknd',
        144,
        'disco',
        'https://open.spotify.com/track/counting-stars-the-weeknd',
        'https://music.apple.com/us/song/counting-stars-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        132,
        'Take On Me',
        'Tones and I',
        70,
        'soul',
        'https://open.spotify.com/track/take-on-me-tones-and-i',
        'https://music.apple.com/us/song/take-on-me-tones-and-i',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        133,
        'Smells Like Teen Spirit',
        'Jennifer Lopez',
        110,
        'funk',
        'https://open.spotify.com/track/smells-like-teen-spirit-jennifer-lopez',
        'https://music.apple.com/us/song/smells-like-teen-spirit-jennifer-lopez',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        134,
        'Somebody Told Me',
        'Billie Eilish',
        129,
        'rnb',
        'https://open.spotify.com/track/somebody-told-me-billie-eilish',
        'https://music.apple.com/us/song/somebody-told-me-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        135,
        'Treasure',
        'Eminem',
        131,
        'rock',
        'https://open.spotify.com/track/treasure-eminem',
        'https://music.apple.com/us/song/treasure-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        136,
        'Feel It Still',
        'Tones and I',
        145,
        'hip hop',
        'https://open.spotify.com/track/feel-it-still-tones-and-i',
        'https://music.apple.com/us/song/feel-it-still-tones-and-i',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        137,
        'On the Floor',
        'Queen',
        136,
        'soul',
        'https://open.spotify.com/track/on-the-floor-queen',
        'https://music.apple.com/us/song/on-the-floor-queen',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        138,
        'Seven Nation Army',
        'Maroon 5',
        70,
        'reggae',
        'https://open.spotify.com/track/seven-nation-army-maroon-5',
        'https://music.apple.com/us/song/seven-nation-army-maroon-5',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        139,
        'Beat It',
        'Outkast',
        87,
        'rap',
        'https://open.spotify.com/track/beat-it-outkast',
        'https://music.apple.com/us/song/beat-it-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        140,
        'Somebody Told Me',
        'Kanye West',
        149,
        'hip hop',
        'https://open.spotify.com/track/somebody-told-me-kanye-west',
        'https://music.apple.com/us/song/somebody-told-me-kanye-west',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        141,
        'Beat It',
        'OneRepublic',
        135,
        'reggae',
        'https://open.spotify.com/track/beat-it-onerepublic',
        'https://music.apple.com/us/song/beat-it-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        142,
        'Moves Like Jagger',
        'Nirvana',
        57,
        'rnb',
        'https://open.spotify.com/track/moves-like-jagger-nirvana',
        'https://music.apple.com/us/song/moves-like-jagger-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        143,
        'Dance Monkey',
        'Nirvana',
        150,
        'indie',
        'https://open.spotify.com/track/dance-monkey-nirvana',
        'https://music.apple.com/us/song/dance-monkey-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        144,
        'Dance Monkey',
        'Daft Punk',
        106,
        'rnb',
        'https://open.spotify.com/track/dance-monkey-daft-punk',
        'https://music.apple.com/us/song/dance-monkey-daft-punk',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        145,
        'Hey Ya!',
        'Queen',
        78,
        'funk',
        'https://open.spotify.com/track/hey-ya!-queen',
        'https://music.apple.com/us/song/hey-ya!-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        146,
        'Shape of You',
        'Justin Timberlake',
        66,
        'dance',
        'https://open.spotify.com/track/shape-of-you-justin-timberlake',
        'https://music.apple.com/us/song/shape-of-you-justin-timberlake',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        147,
        'Counting Stars',
        'Katy Perry',
        146,
        'reggae',
        'https://open.spotify.com/track/counting-stars-katy-perry',
        'https://music.apple.com/us/song/counting-stars-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        148,
        'Dance Monkey',
        'Queen',
        78,
        'soul',
        'https://open.spotify.com/track/dance-monkey-queen',
        'https://music.apple.com/us/song/dance-monkey-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        149,
        'Seven Nation Army',
        'Billie Eilish',
        104,
        'rap',
        'https://open.spotify.com/track/seven-nation-army-billie-eilish',
        'https://music.apple.com/us/song/seven-nation-army-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        150,
        'Shake It Off',
        'Kanye West',
        158,
        'disco',
        'https://open.spotify.com/track/shake-it-off-kanye-west',
        'https://music.apple.com/us/song/shake-it-off-kanye-west',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        151,
        'Moves Like Jagger',
        'Lady Gaga',
        88,
        'funk',
        'https://open.spotify.com/track/moves-like-jagger-lady-gaga',
        'https://music.apple.com/us/song/moves-like-jagger-lady-gaga',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        152,
        'Stronger',
        'Lady Gaga',
        58,
        'disco',
        'https://open.spotify.com/track/stronger-lady-gaga',
        'https://music.apple.com/us/song/stronger-lady-gaga',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        153,
        'Feel It Still',
        'Lady Gaga',
        120,
        'rnb',
        'https://open.spotify.com/track/feel-it-still-lady-gaga',
        'https://music.apple.com/us/song/feel-it-still-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        154,
        'Hey Ya!',
        'Queen',
        121,
        'rap',
        'https://open.spotify.com/track/hey-ya!-queen',
        'https://music.apple.com/us/song/hey-ya!-queen',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        155,
        'Lose Yourself',
        'Maroon 5',
        151,
        'indie',
        'https://open.spotify.com/track/lose-yourself-maroon-5',
        'https://music.apple.com/us/song/lose-yourself-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        156,
        'Take On Me',
        'Coldplay',
        148,
        'funk',
        'https://open.spotify.com/track/take-on-me-coldplay',
        'https://music.apple.com/us/song/take-on-me-coldplay',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        157,
        'Don''t Stop Me Now',
        'Ed Sheeran',
        93,
        'disco',
        'https://open.spotify.com/track/dont-stop-me-now-ed-sheeran',
        'https://music.apple.com/us/song/dont-stop-me-now-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        158,
        'Happy',
        'A-ha',
        143,
        'electro',
        'https://open.spotify.com/track/happy-a-ha',
        'https://music.apple.com/us/song/happy-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        159,
        'Feel It Still',
        'Daft Punk',
        104,
        'electro',
        'https://open.spotify.com/track/feel-it-still-daft-punk',
        'https://music.apple.com/us/song/feel-it-still-daft-punk',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        160,
        'Billie Jean',
        'Bee Gees',
        82,
        'pop',
        'https://open.spotify.com/track/billie-jean-bee-gees',
        'https://music.apple.com/us/song/billie-jean-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        161,
        'Eye of the Tiger',
        'Katy Perry',
        68,
        'rock',
        'https://open.spotify.com/track/eye-of-the-tiger-katy-perry',
        'https://music.apple.com/us/song/eye-of-the-tiger-katy-perry',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        162,
        'Stayin'' Alive',
        'Pharrell Williams',
        76,
        'dance',
        'https://open.spotify.com/track/stayin-alive-pharrell-williams',
        'https://music.apple.com/us/song/stayin-alive-pharrell-williams',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        163,
        'Stronger',
        'Jennifer Lopez',
        110,
        'electro',
        'https://open.spotify.com/track/stronger-jennifer-lopez',
        'https://music.apple.com/us/song/stronger-jennifer-lopez',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        164,
        'Rolling in the Deep',
        'Portugal. The Man',
        78,
        'classique',
        'https://open.spotify.com/track/rolling-in-the-deep-portugal.-the-man',
        'https://music.apple.com/us/song/rolling-in-the-deep-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        165,
        'Rolling in the Deep',
        'Daft Punk',
        94,
        'rock',
        'https://open.spotify.com/track/rolling-in-the-deep-daft-punk',
        'https://music.apple.com/us/song/rolling-in-the-deep-daft-punk',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        166,
        'Wake Me Up',
        'Nirvana',
        77,
        'electro',
        'https://open.spotify.com/track/wake-me-up-nirvana',
        'https://music.apple.com/us/song/wake-me-up-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        167,
        'Treasure',
        'Survivor',
        128,
        'disco',
        'https://open.spotify.com/track/treasure-survivor',
        'https://music.apple.com/us/song/treasure-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        168,
        'Can''t Stop the Feeling',
        'Adele',
        140,
        'hip hop',
        'https://open.spotify.com/track/cant-stop-the-feeling-adele',
        'https://music.apple.com/us/song/cant-stop-the-feeling-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        169,
        'Counting Stars',
        'OneRepublic',
        142,
        'disco',
        'https://open.spotify.com/track/counting-stars-onerepublic',
        'https://music.apple.com/us/song/counting-stars-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        170,
        'Shake It Off',
        'OneRepublic',
        95,
        'rnb',
        'https://open.spotify.com/track/shake-it-off-onerepublic',
        'https://music.apple.com/us/song/shake-it-off-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        171,
        'Eye of the Tiger',
        'Survivor',
        107,
        'rnb',
        'https://open.spotify.com/track/eye-of-the-tiger-survivor',
        'https://music.apple.com/us/song/eye-of-the-tiger-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        172,
        'Wake Me Up',
        'Katy Perry',
        115,
        'disco',
        'https://open.spotify.com/track/wake-me-up-katy-perry',
        'https://music.apple.com/us/song/wake-me-up-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        173,
        'Hey Ya!',
        'Queen',
        147,
        'disco',
        'https://open.spotify.com/track/hey-ya!-queen',
        'https://music.apple.com/us/song/hey-ya!-queen',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        174,
        'Shape of You',
        'Queen',
        159,
        'rap',
        'https://open.spotify.com/track/shape-of-you-queen',
        'https://music.apple.com/us/song/shape-of-you-queen',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        175,
        'Wake Me Up',
        'A-ha',
        105,
        'indie',
        'https://open.spotify.com/track/wake-me-up-a-ha',
        'https://music.apple.com/us/song/wake-me-up-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        176,
        'Treasure',
        'Kanye West',
        59,
        'soul',
        'https://open.spotify.com/track/treasure-kanye-west',
        'https://music.apple.com/us/song/treasure-kanye-west',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        177,
        'Dance Monkey',
        'Daft Punk',
        98,
        'rnb',
        'https://open.spotify.com/track/dance-monkey-daft-punk',
        'https://music.apple.com/us/song/dance-monkey-daft-punk',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        178,
        'Can''t Stop the Feeling',
        'Billie Eilish',
        130,
        'soul',
        'https://open.spotify.com/track/cant-stop-the-feeling-billie-eilish',
        'https://music.apple.com/us/song/cant-stop-the-feeling-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        179,
        'Levitating',
        'Adele',
        76,
        'disco',
        'https://open.spotify.com/track/levitating-adele',
        'https://music.apple.com/us/song/levitating-adele',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        180,
        'Moves Like Jagger',
        'Taylor Swift',
        85,
        'electro',
        'https://open.spotify.com/track/moves-like-jagger-taylor-swift',
        'https://music.apple.com/us/song/moves-like-jagger-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        181,
        'Billie Jean',
        'Outkast',
        70,
        'classique',
        'https://open.spotify.com/track/billie-jean-outkast',
        'https://music.apple.com/us/song/billie-jean-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        182,
        'Stayin'' Alive',
        'Portugal. The Man',
        125,
        'rnb',
        'https://open.spotify.com/track/stayin-alive-portugal.-the-man',
        'https://music.apple.com/us/song/stayin-alive-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        183,
        'Lose Yourself',
        'OneRepublic',
        117,
        'pop',
        'https://open.spotify.com/track/lose-yourself-onerepublic',
        'https://music.apple.com/us/song/lose-yourself-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        184,
        'Bad Guy',
        'Jennifer Lopez',
        85,
        'soul',
        'https://open.spotify.com/track/bad-guy-jennifer-lopez',
        'https://music.apple.com/us/song/bad-guy-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        185,
        'Shut Up and Dance',
        'OneRepublic',
        131,
        'disco',
        'https://open.spotify.com/track/shut-up-and-dance-onerepublic',
        'https://music.apple.com/us/song/shut-up-and-dance-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        186,
        'Eye of the Tiger',
        'Bee Gees',
        69,
        'disco',
        'https://open.spotify.com/track/eye-of-the-tiger-bee-gees',
        'https://music.apple.com/us/song/eye-of-the-tiger-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        187,
        'Smells Like Teen Spirit',
        'Ed Sheeran',
        65,
        'electro',
        'https://open.spotify.com/track/smells-like-teen-spirit-ed-sheeran',
        'https://music.apple.com/us/song/smells-like-teen-spirit-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        188,
        'Beat It',
        'A-ha',
        83,
        'indie',
        'https://open.spotify.com/track/beat-it-a-ha',
        'https://music.apple.com/us/song/beat-it-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        189,
        'Shake It Off',
        'Jennifer Lopez',
        126,
        'soul',
        'https://open.spotify.com/track/shake-it-off-jennifer-lopez',
        'https://music.apple.com/us/song/shake-it-off-jennifer-lopez',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        190,
        'Treasure',
        'Survivor',
        133,
        'disco',
        'https://open.spotify.com/track/treasure-survivor',
        'https://music.apple.com/us/song/treasure-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        191,
        'Bad Guy',
        'Survivor',
        113,
        'classique',
        'https://open.spotify.com/track/bad-guy-survivor',
        'https://music.apple.com/us/song/bad-guy-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        192,
        'Levitating',
        'Outkast',
        101,
        'rnb',
        'https://open.spotify.com/track/levitating-outkast',
        'https://music.apple.com/us/song/levitating-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        193,
        'Blinding Lights',
        'Maroon 5',
        89,
        'rnb',
        'https://open.spotify.com/track/blinding-lights-maroon-5',
        'https://music.apple.com/us/song/blinding-lights-maroon-5',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        194,
        'Happy',
        'Eminem',
        138,
        'pop',
        'https://open.spotify.com/track/happy-eminem',
        'https://music.apple.com/us/song/happy-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        195,
        'Somebody Told Me',
        'Outkast',
        57,
        'disco',
        'https://open.spotify.com/track/somebody-told-me-outkast',
        'https://music.apple.com/us/song/somebody-told-me-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        196,
        'Shake It Off',
        'Bee Gees',
        86,
        'hip hop',
        'https://open.spotify.com/track/shake-it-off-bee-gees',
        'https://music.apple.com/us/song/shake-it-off-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        197,
        'Rolling in the Deep',
        'The Killers',
        157,
        'rock',
        'https://open.spotify.com/track/rolling-in-the-deep-the-killers',
        'https://music.apple.com/us/song/rolling-in-the-deep-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        198,
        'Take On Me',
        'Michael Jackson',
        128,
        'classique',
        'https://open.spotify.com/track/take-on-me-michael-jackson',
        'https://music.apple.com/us/song/take-on-me-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        199,
        'Uptown Funk',
        'Taylor Swift',
        103,
        'rap',
        'https://open.spotify.com/track/uptown-funk-taylor-swift',
        'https://music.apple.com/us/song/uptown-funk-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        200,
        'Shake It Off',
        'The Killers',
        83,
        'rap',
        'https://open.spotify.com/track/shake-it-off-the-killers',
        'https://music.apple.com/us/song/shake-it-off-the-killers',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        201,
        'Shake It Off',
        'Dua Lipa',
        58,
        'classique',
        'https://open.spotify.com/track/shake-it-off-dua-lipa',
        'https://music.apple.com/us/song/shake-it-off-dua-lipa',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        202,
        'Bad Guy',
        'Taylor Swift',
        93,
        'pop',
        'https://open.spotify.com/track/bad-guy-taylor-swift',
        'https://music.apple.com/us/song/bad-guy-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        203,
        'Stronger',
        'OneRepublic',
        125,
        'dance',
        'https://open.spotify.com/track/stronger-onerepublic',
        'https://music.apple.com/us/song/stronger-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        204,
        'Can''t Stop the Feeling',
        'Daft Punk',
        87,
        'classique',
        'https://open.spotify.com/track/cant-stop-the-feeling-daft-punk',
        'https://music.apple.com/us/song/cant-stop-the-feeling-daft-punk',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        205,
        'Billie Jean',
        'Outkast',
        74,
        'indie',
        'https://open.spotify.com/track/billie-jean-outkast',
        'https://music.apple.com/us/song/billie-jean-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        206,
        'Blinding Lights',
        'Billie Eilish',
        60,
        'pop',
        'https://open.spotify.com/track/blinding-lights-billie-eilish',
        'https://music.apple.com/us/song/blinding-lights-billie-eilish',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        207,
        'Somebody Told Me',
        'The Killers',
        77,
        'funk',
        'https://open.spotify.com/track/somebody-told-me-the-killers',
        'https://music.apple.com/us/song/somebody-told-me-the-killers',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        208,
        'Get Lucky',
        'Adele',
        134,
        'dance',
        'https://open.spotify.com/track/get-lucky-adele',
        'https://music.apple.com/us/song/get-lucky-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        209,
        'Smells Like Teen Spirit',
        'Michael Jackson',
        141,
        'funk',
        'https://open.spotify.com/track/smells-like-teen-spirit-michael-jackson',
        'https://music.apple.com/us/song/smells-like-teen-spirit-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        210,
        'Stayin'' Alive',
        'Maroon 5',
        129,
        'classique',
        'https://open.spotify.com/track/stayin-alive-maroon-5',
        'https://music.apple.com/us/song/stayin-alive-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        211,
        'Wake Me Up',
        'Outkast',
        85,
        'soul',
        'https://open.spotify.com/track/wake-me-up-outkast',
        'https://music.apple.com/us/song/wake-me-up-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        212,
        'Billie Jean',
        'Bruno Mars',
        108,
        'dance',
        'https://open.spotify.com/track/billie-jean-bruno-mars',
        'https://music.apple.com/us/song/billie-jean-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        213,
        'Billie Jean',
        'OneRepublic',
        147,
        'soul',
        'https://open.spotify.com/track/billie-jean-onerepublic',
        'https://music.apple.com/us/song/billie-jean-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        214,
        'Lose Yourself',
        'Kanye West',
        142,
        'indie',
        'https://open.spotify.com/track/lose-yourself-kanye-west',
        'https://music.apple.com/us/song/lose-yourself-kanye-west',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        215,
        'Moves Like Jagger',
        'Ed Sheeran',
        140,
        'soul',
        'https://open.spotify.com/track/moves-like-jagger-ed-sheeran',
        'https://music.apple.com/us/song/moves-like-jagger-ed-sheeran',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        216,
        'Beat It',
        'Michael Jackson',
        140,
        'funk',
        'https://open.spotify.com/track/beat-it-michael-jackson',
        'https://music.apple.com/us/song/beat-it-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        217,
        'Shake It Off',
        'Billie Eilish',
        158,
        'rnb',
        'https://open.spotify.com/track/shake-it-off-billie-eilish',
        'https://music.apple.com/us/song/shake-it-off-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        218,
        'Somebody Told Me',
        'Michael Jackson',
        159,
        'indie',
        'https://open.spotify.com/track/somebody-told-me-michael-jackson',
        'https://music.apple.com/us/song/somebody-told-me-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        219,
        'Beat It',
        'Ed Sheeran',
        87,
        'soul',
        'https://open.spotify.com/track/beat-it-ed-sheeran',
        'https://music.apple.com/us/song/beat-it-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        220,
        'Wake Me Up',
        'Nirvana',
        76,
        'rap',
        'https://open.spotify.com/track/wake-me-up-nirvana',
        'https://music.apple.com/us/song/wake-me-up-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        221,
        'Uptown Funk',
        'Portugal. The Man',
        154,
        'rock',
        'https://open.spotify.com/track/uptown-funk-portugal.-the-man',
        'https://music.apple.com/us/song/uptown-funk-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        222,
        'Hey Ya!',
        'Adele',
        156,
        'classique',
        'https://open.spotify.com/track/hey-ya!-adele',
        'https://music.apple.com/us/song/hey-ya!-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        223,
        'Eye of the Tiger',
        'Outkast',
        102,
        'dance',
        'https://open.spotify.com/track/eye-of-the-tiger-outkast',
        'https://music.apple.com/us/song/eye-of-the-tiger-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        224,
        'Treasure',
        'The Weeknd',
        84,
        'rnb',
        'https://open.spotify.com/track/treasure-the-weeknd',
        'https://music.apple.com/us/song/treasure-the-weeknd',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        225,
        'Somebody Told Me',
        'Jennifer Lopez',
        145,
        'dance',
        'https://open.spotify.com/track/somebody-told-me-jennifer-lopez',
        'https://music.apple.com/us/song/somebody-told-me-jennifer-lopez',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        226,
        'Get Lucky',
        'Outkast',
        129,
        'rock',
        'https://open.spotify.com/track/get-lucky-outkast',
        'https://music.apple.com/us/song/get-lucky-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        227,
        'Hey Ya!',
        'Maroon 5',
        74,
        'rnb',
        'https://open.spotify.com/track/hey-ya!-maroon-5',
        'https://music.apple.com/us/song/hey-ya!-maroon-5',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        228,
        'Levitating',
        'Jennifer Lopez',
        150,
        'rnb',
        'https://open.spotify.com/track/levitating-jennifer-lopez',
        'https://music.apple.com/us/song/levitating-jennifer-lopez',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        229,
        'Eye of the Tiger',
        'Nirvana',
        74,
        'funk',
        'https://open.spotify.com/track/eye-of-the-tiger-nirvana',
        'https://music.apple.com/us/song/eye-of-the-tiger-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        230,
        'Lose Yourself',
        'OneRepublic',
        65,
        'rock',
        'https://open.spotify.com/track/lose-yourself-onerepublic',
        'https://music.apple.com/us/song/lose-yourself-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        231,
        'Don''t Stop Me Now',
        'Kanye West',
        119,
        'soul',
        'https://open.spotify.com/track/dont-stop-me-now-kanye-west',
        'https://music.apple.com/us/song/dont-stop-me-now-kanye-west',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        232,
        'Take On Me',
        'The Weeknd',
        127,
        'funk',
        'https://open.spotify.com/track/take-on-me-the-weeknd',
        'https://music.apple.com/us/song/take-on-me-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        233,
        'Can''t Stop the Feeling',
        'Survivor',
        86,
        'rap',
        'https://open.spotify.com/track/cant-stop-the-feeling-survivor',
        'https://music.apple.com/us/song/cant-stop-the-feeling-survivor',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        234,
        'Shake It Off',
        'Nirvana',
        152,
        'pop',
        'https://open.spotify.com/track/shake-it-off-nirvana',
        'https://music.apple.com/us/song/shake-it-off-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        235,
        'Blinding Lights',
        'Eminem',
        101,
        'indie',
        'https://open.spotify.com/track/blinding-lights-eminem',
        'https://music.apple.com/us/song/blinding-lights-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        236,
        'Bad Guy',
        'The Weeknd',
        135,
        'hip hop',
        'https://open.spotify.com/track/bad-guy-the-weeknd',
        'https://music.apple.com/us/song/bad-guy-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        237,
        'Shake It Off',
        'Katy Perry',
        113,
        'reggae',
        'https://open.spotify.com/track/shake-it-off-katy-perry',
        'https://music.apple.com/us/song/shake-it-off-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        238,
        'Uptown Funk',
        'OneRepublic',
        61,
        'hip hop',
        'https://open.spotify.com/track/uptown-funk-onerepublic',
        'https://music.apple.com/us/song/uptown-funk-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        239,
        'Stayin'' Alive',
        'Jennifer Lopez',
        63,
        'electro',
        'https://open.spotify.com/track/stayin-alive-jennifer-lopez',
        'https://music.apple.com/us/song/stayin-alive-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        240,
        'Don''t Stop Me Now',
        'Avicii',
        151,
        'rap',
        'https://open.spotify.com/track/dont-stop-me-now-avicii',
        'https://music.apple.com/us/song/dont-stop-me-now-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        241,
        'Somebody Told Me',
        'Maroon 5',
        143,
        'electro',
        'https://open.spotify.com/track/somebody-told-me-maroon-5',
        'https://music.apple.com/us/song/somebody-told-me-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        242,
        'Wake Me Up',
        'Taylor Swift',
        111,
        'reggae',
        'https://open.spotify.com/track/wake-me-up-taylor-swift',
        'https://music.apple.com/us/song/wake-me-up-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        243,
        'Shake It Off',
        'Portugal. The Man',
        110,
        'pop',
        'https://open.spotify.com/track/shake-it-off-portugal.-the-man',
        'https://music.apple.com/us/song/shake-it-off-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        244,
        'Get Lucky',
        'Dua Lipa',
        131,
        'funk',
        'https://open.spotify.com/track/get-lucky-dua-lipa',
        'https://music.apple.com/us/song/get-lucky-dua-lipa',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        245,
        'Stronger',
        'The Killers',
        78,
        'electro',
        'https://open.spotify.com/track/stronger-the-killers',
        'https://music.apple.com/us/song/stronger-the-killers',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        246,
        'Can''t Stop the Feeling',
        'Bruno Mars',
        121,
        'rap',
        'https://open.spotify.com/track/cant-stop-the-feeling-bruno-mars',
        'https://music.apple.com/us/song/cant-stop-the-feeling-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        247,
        'Dance Monkey',
        'Bruno Mars',
        71,
        'soul',
        'https://open.spotify.com/track/dance-monkey-bruno-mars',
        'https://music.apple.com/us/song/dance-monkey-bruno-mars',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        248,
        'Wake Me Up',
        'Tones and I',
        109,
        'electro',
        'https://open.spotify.com/track/wake-me-up-tones-and-i',
        'https://music.apple.com/us/song/wake-me-up-tones-and-i',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        249,
        'Dance Monkey',
        'Maroon 5',
        77,
        'rap',
        'https://open.spotify.com/track/dance-monkey-maroon-5',
        'https://music.apple.com/us/song/dance-monkey-maroon-5',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        250,
        'Bad Guy',
        'Portugal. The Man',
        71,
        'dance',
        'https://open.spotify.com/track/bad-guy-portugal.-the-man',
        'https://music.apple.com/us/song/bad-guy-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        251,
        'Don''t Stop Me Now',
        'Maroon 5',
        104,
        'funk',
        'https://open.spotify.com/track/dont-stop-me-now-maroon-5',
        'https://music.apple.com/us/song/dont-stop-me-now-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        252,
        'Smells Like Teen Spirit',
        'Eminem',
        125,
        'electro',
        'https://open.spotify.com/track/smells-like-teen-spirit-eminem',
        'https://music.apple.com/us/song/smells-like-teen-spirit-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        253,
        'On the Floor',
        'OneRepublic',
        63,
        'classique',
        'https://open.spotify.com/track/on-the-floor-onerepublic',
        'https://music.apple.com/us/song/on-the-floor-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        254,
        'Uptown Funk',
        'Justin Timberlake',
        144,
        'pop',
        'https://open.spotify.com/track/uptown-funk-justin-timberlake',
        'https://music.apple.com/us/song/uptown-funk-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        255,
        'Lose Yourself',
        'OneRepublic',
        56,
        'classique',
        'https://open.spotify.com/track/lose-yourself-onerepublic',
        'https://music.apple.com/us/song/lose-yourself-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        256,
        'Happy',
        'Maroon 5',
        147,
        'electro',
        'https://open.spotify.com/track/happy-maroon-5',
        'https://music.apple.com/us/song/happy-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        257,
        'Lose Yourself',
        'Lady Gaga',
        69,
        'electro',
        'https://open.spotify.com/track/lose-yourself-lady-gaga',
        'https://music.apple.com/us/song/lose-yourself-lady-gaga',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        258,
        'Rolling in the Deep',
        'Michael Jackson',
        105,
        'rap',
        'https://open.spotify.com/track/rolling-in-the-deep-michael-jackson',
        'https://music.apple.com/us/song/rolling-in-the-deep-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        259,
        'Wake Me Up',
        'Avicii',
        124,
        'reggae',
        'https://open.spotify.com/track/wake-me-up-avicii',
        'https://music.apple.com/us/song/wake-me-up-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        260,
        'Can''t Stop the Feeling',
        'Eminem',
        116,
        'soul',
        'https://open.spotify.com/track/cant-stop-the-feeling-eminem',
        'https://music.apple.com/us/song/cant-stop-the-feeling-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        261,
        'Get Lucky',
        'A-ha',
        76,
        'soul',
        'https://open.spotify.com/track/get-lucky-a-ha',
        'https://music.apple.com/us/song/get-lucky-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        262,
        'Seven Nation Army',
        'A-ha',
        160,
        'disco',
        'https://open.spotify.com/track/seven-nation-army-a-ha',
        'https://music.apple.com/us/song/seven-nation-army-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        263,
        'Stayin'' Alive',
        'Nirvana',
        61,
        'disco',
        'https://open.spotify.com/track/stayin-alive-nirvana',
        'https://music.apple.com/us/song/stayin-alive-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        264,
        'Feel It Still',
        'Survivor',
        66,
        'dance',
        'https://open.spotify.com/track/feel-it-still-survivor',
        'https://music.apple.com/us/song/feel-it-still-survivor',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        265,
        'Take On Me',
        'Nirvana',
        134,
        'indie',
        'https://open.spotify.com/track/take-on-me-nirvana',
        'https://music.apple.com/us/song/take-on-me-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        266,
        'Treasure',
        'Tones and I',
        154,
        'soul',
        'https://open.spotify.com/track/treasure-tones-and-i',
        'https://music.apple.com/us/song/treasure-tones-and-i',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        267,
        'Seven Nation Army',
        'Avicii',
        140,
        'electro',
        'https://open.spotify.com/track/seven-nation-army-avicii',
        'https://music.apple.com/us/song/seven-nation-army-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        268,
        'Dance Monkey',
        'Queen',
        129,
        'reggae',
        'https://open.spotify.com/track/dance-monkey-queen',
        'https://music.apple.com/us/song/dance-monkey-queen',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        269,
        'On the Floor',
        'Michael Jackson',
        101,
        'soul',
        'https://open.spotify.com/track/on-the-floor-michael-jackson',
        'https://music.apple.com/us/song/on-the-floor-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        270,
        'Seven Nation Army',
        'The Weeknd',
        128,
        'electro',
        'https://open.spotify.com/track/seven-nation-army-the-weeknd',
        'https://music.apple.com/us/song/seven-nation-army-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        271,
        'Treasure',
        'Dua Lipa',
        125,
        'dance',
        'https://open.spotify.com/track/treasure-dua-lipa',
        'https://music.apple.com/us/song/treasure-dua-lipa',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        272,
        'Shake It Off',
        'The Killers',
        133,
        'rock',
        'https://open.spotify.com/track/shake-it-off-the-killers',
        'https://music.apple.com/us/song/shake-it-off-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        273,
        'Rolling in the Deep',
        'Taylor Swift',
        95,
        'soul',
        'https://open.spotify.com/track/rolling-in-the-deep-taylor-swift',
        'https://music.apple.com/us/song/rolling-in-the-deep-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        274,
        'Can''t Stop the Feeling',
        'Portugal. The Man',
        68,
        'rnb',
        'https://open.spotify.com/track/cant-stop-the-feeling-portugal.-the-man',
        'https://music.apple.com/us/song/cant-stop-the-feeling-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        275,
        'Wake Me Up',
        'Lady Gaga',
        142,
        'indie',
        'https://open.spotify.com/track/wake-me-up-lady-gaga',
        'https://music.apple.com/us/song/wake-me-up-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        276,
        'Rolling in the Deep',
        'Portugal. The Man',
        113,
        'disco',
        'https://open.spotify.com/track/rolling-in-the-deep-portugal.-the-man',
        'https://music.apple.com/us/song/rolling-in-the-deep-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        277,
        'Get Lucky',
        'Adele',
        134,
        'indie',
        'https://open.spotify.com/track/get-lucky-adele',
        'https://music.apple.com/us/song/get-lucky-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        278,
        'Shut Up and Dance',
        'A-ha',
        73,
        'soul',
        'https://open.spotify.com/track/shut-up-and-dance-a-ha',
        'https://music.apple.com/us/song/shut-up-and-dance-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        279,
        'Seven Nation Army',
        'Survivor',
        130,
        'hip hop',
        'https://open.spotify.com/track/seven-nation-army-survivor',
        'https://music.apple.com/us/song/seven-nation-army-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        280,
        'Stronger',
        'Portugal. The Man',
        159,
        'soul',
        'https://open.spotify.com/track/stronger-portugal.-the-man',
        'https://music.apple.com/us/song/stronger-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        281,
        'Blinding Lights',
        'Michael Jackson',
        113,
        'dance',
        'https://open.spotify.com/track/blinding-lights-michael-jackson',
        'https://music.apple.com/us/song/blinding-lights-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        282,
        'Take On Me',
        'Eminem',
        115,
        'soul',
        'https://open.spotify.com/track/take-on-me-eminem',
        'https://music.apple.com/us/song/take-on-me-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        283,
        'Happy',
        'Bruno Mars',
        122,
        'disco',
        'https://open.spotify.com/track/happy-bruno-mars',
        'https://music.apple.com/us/song/happy-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        284,
        'Dance Monkey',
        'Nirvana',
        98,
        'rap',
        'https://open.spotify.com/track/dance-monkey-nirvana',
        'https://music.apple.com/us/song/dance-monkey-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        285,
        'Moves Like Jagger',
        'The Killers',
        126,
        'rnb',
        'https://open.spotify.com/track/moves-like-jagger-the-killers',
        'https://music.apple.com/us/song/moves-like-jagger-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        286,
        'Hey Ya!',
        'Nirvana',
        77,
        'dance',
        'https://open.spotify.com/track/hey-ya!-nirvana',
        'https://music.apple.com/us/song/hey-ya!-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        287,
        'Beat It',
        'Bruno Mars',
        129,
        'soul',
        'https://open.spotify.com/track/beat-it-bruno-mars',
        'https://music.apple.com/us/song/beat-it-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        288,
        'Treasure',
        'Portugal. The Man',
        59,
        'funk',
        'https://open.spotify.com/track/treasure-portugal.-the-man',
        'https://music.apple.com/us/song/treasure-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        289,
        'Don''t Stop Me Now',
        'Bruno Mars',
        87,
        'disco',
        'https://open.spotify.com/track/dont-stop-me-now-bruno-mars',
        'https://music.apple.com/us/song/dont-stop-me-now-bruno-mars',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        290,
        'Blinding Lights',
        'Jennifer Lopez',
        73,
        'soul',
        'https://open.spotify.com/track/blinding-lights-jennifer-lopez',
        'https://music.apple.com/us/song/blinding-lights-jennifer-lopez',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        291,
        'Happy',
        'Adele',
        69,
        'classique',
        'https://open.spotify.com/track/happy-adele',
        'https://music.apple.com/us/song/happy-adele',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        292,
        'Treasure',
        'Billie Eilish',
        56,
        'electro',
        'https://open.spotify.com/track/treasure-billie-eilish',
        'https://music.apple.com/us/song/treasure-billie-eilish',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        293,
        'Uptown Funk',
        'Eminem',
        66,
        'rnb',
        'https://open.spotify.com/track/uptown-funk-eminem',
        'https://music.apple.com/us/song/uptown-funk-eminem',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        294,
        'Take On Me',
        'Portugal. The Man',
        129,
        'indie',
        'https://open.spotify.com/track/take-on-me-portugal.-the-man',
        'https://music.apple.com/us/song/take-on-me-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        295,
        'Dance Monkey',
        'Survivor',
        158,
        'classique',
        'https://open.spotify.com/track/dance-monkey-survivor',
        'https://music.apple.com/us/song/dance-monkey-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        296,
        'Blinding Lights',
        'Taylor Swift',
        158,
        'disco',
        'https://open.spotify.com/track/blinding-lights-taylor-swift',
        'https://music.apple.com/us/song/blinding-lights-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        297,
        'Happy',
        'Maroon 5',
        129,
        'funk',
        'https://open.spotify.com/track/happy-maroon-5',
        'https://music.apple.com/us/song/happy-maroon-5',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        298,
        'Rolling in the Deep',
        'Adele',
        106,
        'electro',
        'https://open.spotify.com/track/rolling-in-the-deep-adele',
        'https://music.apple.com/us/song/rolling-in-the-deep-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        299,
        'Treasure',
        'Michael Jackson',
        97,
        'funk',
        'https://open.spotify.com/track/treasure-michael-jackson',
        'https://music.apple.com/us/song/treasure-michael-jackson',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        300,
        'Take On Me',
        'Taylor Swift',
        77,
        'soul',
        'https://open.spotify.com/track/take-on-me-taylor-swift',
        'https://music.apple.com/us/song/take-on-me-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        301,
        'Take On Me',
        'Nirvana',
        128,
        'rap',
        'https://open.spotify.com/track/take-on-me-nirvana',
        'https://music.apple.com/us/song/take-on-me-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        302,
        'Counting Stars',
        'Katy Perry',
        97,
        'rnb',
        'https://open.spotify.com/track/counting-stars-katy-perry',
        'https://music.apple.com/us/song/counting-stars-katy-perry',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        303,
        'On the Floor',
        'Justin Timberlake',
        110,
        'disco',
        'https://open.spotify.com/track/on-the-floor-justin-timberlake',
        'https://music.apple.com/us/song/on-the-floor-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        304,
        'Feel It Still',
        'Survivor',
        125,
        'classique',
        'https://open.spotify.com/track/feel-it-still-survivor',
        'https://music.apple.com/us/song/feel-it-still-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        305,
        'Levitating',
        'Daft Punk',
        61,
        'indie',
        'https://open.spotify.com/track/levitating-daft-punk',
        'https://music.apple.com/us/song/levitating-daft-punk',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        306,
        'Shape of You',
        'The Killers',
        137,
        'rap',
        'https://open.spotify.com/track/shape-of-you-the-killers',
        'https://music.apple.com/us/song/shape-of-you-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        307,
        'Moves Like Jagger',
        'Dua Lipa',
        80,
        'rap',
        'https://open.spotify.com/track/moves-like-jagger-dua-lipa',
        'https://music.apple.com/us/song/moves-like-jagger-dua-lipa',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        308,
        'Bad Guy',
        'Bee Gees',
        127,
        'hip hop',
        'https://open.spotify.com/track/bad-guy-bee-gees',
        'https://music.apple.com/us/song/bad-guy-bee-gees',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        309,
        'Eye of the Tiger',
        'A-ha',
        89,
        'classique',
        'https://open.spotify.com/track/eye-of-the-tiger-a-ha',
        'https://music.apple.com/us/song/eye-of-the-tiger-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        310,
        'Seven Nation Army',
        'The Killers',
        123,
        'reggae',
        'https://open.spotify.com/track/seven-nation-army-the-killers',
        'https://music.apple.com/us/song/seven-nation-army-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        311,
        'Eye of the Tiger',
        'Adele',
        120,
        'dance',
        'https://open.spotify.com/track/eye-of-the-tiger-adele',
        'https://music.apple.com/us/song/eye-of-the-tiger-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        312,
        'Treasure',
        'Coldplay',
        129,
        'rock',
        'https://open.spotify.com/track/treasure-coldplay',
        'https://music.apple.com/us/song/treasure-coldplay',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        313,
        'Take On Me',
        'Portugal. The Man',
        148,
        'soul',
        'https://open.spotify.com/track/take-on-me-portugal.-the-man',
        'https://music.apple.com/us/song/take-on-me-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        314,
        'Billie Jean',
        'Tones and I',
        68,
        'indie',
        'https://open.spotify.com/track/billie-jean-tones-and-i',
        'https://music.apple.com/us/song/billie-jean-tones-and-i',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        315,
        'Hey Ya!',
        'Justin Timberlake',
        121,
        'soul',
        'https://open.spotify.com/track/hey-ya!-justin-timberlake',
        'https://music.apple.com/us/song/hey-ya!-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        316,
        'Rolling in the Deep',
        'Survivor',
        102,
        'classique',
        'https://open.spotify.com/track/rolling-in-the-deep-survivor',
        'https://music.apple.com/us/song/rolling-in-the-deep-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        317,
        'Stronger',
        'Portugal. The Man',
        74,
        'electro',
        'https://open.spotify.com/track/stronger-portugal.-the-man',
        'https://music.apple.com/us/song/stronger-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        318,
        'Feel It Still',
        'Eminem',
        121,
        'electro',
        'https://open.spotify.com/track/feel-it-still-eminem',
        'https://music.apple.com/us/song/feel-it-still-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        319,
        'Dance Monkey',
        'Katy Perry',
        131,
        'reggae',
        'https://open.spotify.com/track/dance-monkey-katy-perry',
        'https://music.apple.com/us/song/dance-monkey-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        320,
        'Stronger',
        'Survivor',
        84,
        'indie',
        'https://open.spotify.com/track/stronger-survivor',
        'https://music.apple.com/us/song/stronger-survivor',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        321,
        'Rolling in the Deep',
        'Imagine Dragons',
        112,
        'rap',
        'https://open.spotify.com/track/rolling-in-the-deep-imagine-dragons',
        'https://music.apple.com/us/song/rolling-in-the-deep-imagine-dragons',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        322,
        'Billie Jean',
        'Taylor Swift',
        66,
        'hip hop',
        'https://open.spotify.com/track/billie-jean-taylor-swift',
        'https://music.apple.com/us/song/billie-jean-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        323,
        'Blinding Lights',
        'Imagine Dragons',
        101,
        'classique',
        'https://open.spotify.com/track/blinding-lights-imagine-dragons',
        'https://music.apple.com/us/song/blinding-lights-imagine-dragons',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        324,
        'Shake It Off',
        'Adele',
        135,
        'rnb',
        'https://open.spotify.com/track/shake-it-off-adele',
        'https://music.apple.com/us/song/shake-it-off-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        325,
        'Shut Up and Dance',
        'Coldplay',
        66,
        'classique',
        'https://open.spotify.com/track/shut-up-and-dance-coldplay',
        'https://music.apple.com/us/song/shut-up-and-dance-coldplay',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        326,
        'On the Floor',
        'Billie Eilish',
        112,
        'soul',
        'https://open.spotify.com/track/on-the-floor-billie-eilish',
        'https://music.apple.com/us/song/on-the-floor-billie-eilish',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        327,
        'Stayin'' Alive',
        'Portugal. The Man',
        110,
        'indie',
        'https://open.spotify.com/track/stayin-alive-portugal.-the-man',
        'https://music.apple.com/us/song/stayin-alive-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        328,
        'Dance Monkey',
        'Justin Timberlake',
        62,
        'rap',
        'https://open.spotify.com/track/dance-monkey-justin-timberlake',
        'https://music.apple.com/us/song/dance-monkey-justin-timberlake',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        329,
        'Happy',
        'Imagine Dragons',
        104,
        'rock',
        'https://open.spotify.com/track/happy-imagine-dragons',
        'https://music.apple.com/us/song/happy-imagine-dragons',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        330,
        'Seven Nation Army',
        'Outkast',
        103,
        'pop',
        'https://open.spotify.com/track/seven-nation-army-outkast',
        'https://music.apple.com/us/song/seven-nation-army-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        331,
        'Blinding Lights',
        'Bee Gees',
        59,
        'rock',
        'https://open.spotify.com/track/blinding-lights-bee-gees',
        'https://music.apple.com/us/song/blinding-lights-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        332,
        'On the Floor',
        'Eminem',
        135,
        'rnb',
        'https://open.spotify.com/track/on-the-floor-eminem',
        'https://music.apple.com/us/song/on-the-floor-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        333,
        'Smells Like Teen Spirit',
        'Justin Timberlake',
        63,
        'rock',
        'https://open.spotify.com/track/smells-like-teen-spirit-justin-timberlake',
        'https://music.apple.com/us/song/smells-like-teen-spirit-justin-timberlake',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        334,
        'Moves Like Jagger',
        'Dua Lipa',
        137,
        'electro',
        'https://open.spotify.com/track/moves-like-jagger-dua-lipa',
        'https://music.apple.com/us/song/moves-like-jagger-dua-lipa',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        335,
        'Take On Me',
        'Eminem',
        148,
        'dance',
        'https://open.spotify.com/track/take-on-me-eminem',
        'https://music.apple.com/us/song/take-on-me-eminem',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        336,
        'Somebody Told Me',
        'Portugal. The Man',
        147,
        'rock',
        'https://open.spotify.com/track/somebody-told-me-portugal.-the-man',
        'https://music.apple.com/us/song/somebody-told-me-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        337,
        'Wake Me Up',
        'Queen',
        93,
        'rnb',
        'https://open.spotify.com/track/wake-me-up-queen',
        'https://music.apple.com/us/song/wake-me-up-queen',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        338,
        'Hey Ya!',
        'Bee Gees',
        82,
        'indie',
        'https://open.spotify.com/track/hey-ya!-bee-gees',
        'https://music.apple.com/us/song/hey-ya!-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        339,
        'Take On Me',
        'Outkast',
        109,
        'dance',
        'https://open.spotify.com/track/take-on-me-outkast',
        'https://music.apple.com/us/song/take-on-me-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        340,
        'Stayin'' Alive',
        'The Killers',
        152,
        'electro',
        'https://open.spotify.com/track/stayin-alive-the-killers',
        'https://music.apple.com/us/song/stayin-alive-the-killers',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        341,
        'Treasure',
        'Outkast',
        138,
        'funk',
        'https://open.spotify.com/track/treasure-outkast',
        'https://music.apple.com/us/song/treasure-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        342,
        'Somebody Told Me',
        'Justin Timberlake',
        135,
        'rap',
        'https://open.spotify.com/track/somebody-told-me-justin-timberlake',
        'https://music.apple.com/us/song/somebody-told-me-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        343,
        'Lose Yourself',
        'Katy Perry',
        146,
        'dance',
        'https://open.spotify.com/track/lose-yourself-katy-perry',
        'https://music.apple.com/us/song/lose-yourself-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        344,
        'Take On Me',
        'Taylor Swift',
        85,
        'classique',
        'https://open.spotify.com/track/take-on-me-taylor-swift',
        'https://music.apple.com/us/song/take-on-me-taylor-swift',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        345,
        'Beat It',
        'Imagine Dragons',
        62,
        'rnb',
        'https://open.spotify.com/track/beat-it-imagine-dragons',
        'https://music.apple.com/us/song/beat-it-imagine-dragons',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        346,
        'Take On Me',
        'Ed Sheeran',
        109,
        'rnb',
        'https://open.spotify.com/track/take-on-me-ed-sheeran',
        'https://music.apple.com/us/song/take-on-me-ed-sheeran',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        347,
        'Take On Me',
        'Portugal. The Man',
        73,
        'rap',
        'https://open.spotify.com/track/take-on-me-portugal.-the-man',
        'https://music.apple.com/us/song/take-on-me-portugal.-the-man',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        348,
        'Lose Yourself',
        'Taylor Swift',
        143,
        'dance',
        'https://open.spotify.com/track/lose-yourself-taylor-swift',
        'https://music.apple.com/us/song/lose-yourself-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        349,
        'Stronger',
        'Adele',
        125,
        'rock',
        'https://open.spotify.com/track/stronger-adele',
        'https://music.apple.com/us/song/stronger-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        350,
        'Don''t Stop Me Now',
        'Nirvana',
        62,
        'rnb',
        'https://open.spotify.com/track/dont-stop-me-now-nirvana',
        'https://music.apple.com/us/song/dont-stop-me-now-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        351,
        'Beat It',
        'OneRepublic',
        136,
        'reggae',
        'https://open.spotify.com/track/beat-it-onerepublic',
        'https://music.apple.com/us/song/beat-it-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        352,
        'Billie Jean',
        'Portugal. The Man',
        119,
        'rap',
        'https://open.spotify.com/track/billie-jean-portugal.-the-man',
        'https://music.apple.com/us/song/billie-jean-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        353,
        'Uptown Funk',
        'A-ha',
        98,
        'hip hop',
        'https://open.spotify.com/track/uptown-funk-a-ha',
        'https://music.apple.com/us/song/uptown-funk-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        354,
        'Counting Stars',
        'Survivor',
        140,
        'rap',
        'https://open.spotify.com/track/counting-stars-survivor',
        'https://music.apple.com/us/song/counting-stars-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        355,
        'Eye of the Tiger',
        'Dua Lipa',
        86,
        'reggae',
        'https://open.spotify.com/track/eye-of-the-tiger-dua-lipa',
        'https://music.apple.com/us/song/eye-of-the-tiger-dua-lipa',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        356,
        'Counting Stars',
        'Coldplay',
        83,
        'funk',
        'https://open.spotify.com/track/counting-stars-coldplay',
        'https://music.apple.com/us/song/counting-stars-coldplay',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        357,
        'Wake Me Up',
        'Kanye West',
        73,
        'soul',
        'https://open.spotify.com/track/wake-me-up-kanye-west',
        'https://music.apple.com/us/song/wake-me-up-kanye-west',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        358,
        'Uptown Funk',
        'Jennifer Lopez',
        141,
        'dance',
        'https://open.spotify.com/track/uptown-funk-jennifer-lopez',
        'https://music.apple.com/us/song/uptown-funk-jennifer-lopez',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        359,
        'Stronger',
        'Justin Timberlake',
        101,
        'rap',
        'https://open.spotify.com/track/stronger-justin-timberlake',
        'https://music.apple.com/us/song/stronger-justin-timberlake',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        360,
        'Counting Stars',
        'Nirvana',
        92,
        'classique',
        'https://open.spotify.com/track/counting-stars-nirvana',
        'https://music.apple.com/us/song/counting-stars-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        361,
        'Get Lucky',
        'Avicii',
        73,
        'rap',
        'https://open.spotify.com/track/get-lucky-avicii',
        'https://music.apple.com/us/song/get-lucky-avicii',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        362,
        'Bad Guy',
        'Katy Perry',
        155,
        'hip hop',
        'https://open.spotify.com/track/bad-guy-katy-perry',
        'https://music.apple.com/us/song/bad-guy-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        363,
        'Don''t Stop Me Now',
        'Outkast',
        71,
        'rap',
        'https://open.spotify.com/track/dont-stop-me-now-outkast',
        'https://music.apple.com/us/song/dont-stop-me-now-outkast',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        364,
        'Uptown Funk',
        'Tones and I',
        66,
        'rock',
        'https://open.spotify.com/track/uptown-funk-tones-and-i',
        'https://music.apple.com/us/song/uptown-funk-tones-and-i',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        365,
        'Rolling in the Deep',
        'Bruno Mars',
        148,
        'rock',
        'https://open.spotify.com/track/rolling-in-the-deep-bruno-mars',
        'https://music.apple.com/us/song/rolling-in-the-deep-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        366,
        'Bad Guy',
        'A-ha',
        74,
        'dance',
        'https://open.spotify.com/track/bad-guy-a-ha',
        'https://music.apple.com/us/song/bad-guy-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        367,
        'Can''t Stop the Feeling',
        'OneRepublic',
        145,
        'electro',
        'https://open.spotify.com/track/cant-stop-the-feeling-onerepublic',
        'https://music.apple.com/us/song/cant-stop-the-feeling-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        368,
        'Smells Like Teen Spirit',
        'The Weeknd',
        130,
        'rap',
        'https://open.spotify.com/track/smells-like-teen-spirit-the-weeknd',
        'https://music.apple.com/us/song/smells-like-teen-spirit-the-weeknd',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        369,
        'Beat It',
        'Avicii',
        151,
        'rap',
        'https://open.spotify.com/track/beat-it-avicii',
        'https://music.apple.com/us/song/beat-it-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        370,
        'Eye of the Tiger',
        'Ed Sheeran',
        158,
        'electro',
        'https://open.spotify.com/track/eye-of-the-tiger-ed-sheeran',
        'https://music.apple.com/us/song/eye-of-the-tiger-ed-sheeran',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        371,
        'Billie Jean',
        'OneRepublic',
        141,
        'disco',
        'https://open.spotify.com/track/billie-jean-onerepublic',
        'https://music.apple.com/us/song/billie-jean-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        372,
        'Can''t Stop the Feeling',
        'Bruno Mars',
        108,
        'indie',
        'https://open.spotify.com/track/cant-stop-the-feeling-bruno-mars',
        'https://music.apple.com/us/song/cant-stop-the-feeling-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        373,
        'Stayin'' Alive',
        'Lady Gaga',
        103,
        'dance',
        'https://open.spotify.com/track/stayin-alive-lady-gaga',
        'https://music.apple.com/us/song/stayin-alive-lady-gaga',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        374,
        'Shape of You',
        'A-ha',
        84,
        'pop',
        'https://open.spotify.com/track/shape-of-you-a-ha',
        'https://music.apple.com/us/song/shape-of-you-a-ha',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        375,
        'Uptown Funk',
        'Katy Perry',
        80,
        'soul',
        'https://open.spotify.com/track/uptown-funk-katy-perry',
        'https://music.apple.com/us/song/uptown-funk-katy-perry',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        376,
        'Don''t Stop Me Now',
        'Taylor Swift',
        116,
        'dance',
        'https://open.spotify.com/track/dont-stop-me-now-taylor-swift',
        'https://music.apple.com/us/song/dont-stop-me-now-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        377,
        'Shut Up and Dance',
        'Survivor',
        115,
        'rock',
        'https://open.spotify.com/track/shut-up-and-dance-survivor',
        'https://music.apple.com/us/song/shut-up-and-dance-survivor',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        378,
        'Lose Yourself',
        'OneRepublic',
        85,
        'electro',
        'https://open.spotify.com/track/lose-yourself-onerepublic',
        'https://music.apple.com/us/song/lose-yourself-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        379,
        'Lose Yourself',
        'Adele',
        113,
        'indie',
        'https://open.spotify.com/track/lose-yourself-adele',
        'https://music.apple.com/us/song/lose-yourself-adele',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        380,
        'On the Floor',
        'Portugal. The Man',
        152,
        'rock',
        'https://open.spotify.com/track/on-the-floor-portugal.-the-man',
        'https://music.apple.com/us/song/on-the-floor-portugal.-the-man',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        381,
        'Moves Like Jagger',
        'Nirvana',
        123,
        'hip hop',
        'https://open.spotify.com/track/moves-like-jagger-nirvana',
        'https://music.apple.com/us/song/moves-like-jagger-nirvana',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        382,
        'Rolling in the Deep',
        'OneRepublic',
        67,
        'soul',
        'https://open.spotify.com/track/rolling-in-the-deep-onerepublic',
        'https://music.apple.com/us/song/rolling-in-the-deep-onerepublic',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        383,
        'Eye of the Tiger',
        'Taylor Swift',
        120,
        'disco',
        'https://open.spotify.com/track/eye-of-the-tiger-taylor-swift',
        'https://music.apple.com/us/song/eye-of-the-tiger-taylor-swift',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        384,
        'Feel It Still',
        'Dua Lipa',
        139,
        'soul',
        'https://open.spotify.com/track/feel-it-still-dua-lipa',
        'https://music.apple.com/us/song/feel-it-still-dua-lipa',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        385,
        'Moves Like Jagger',
        'Ed Sheeran',
        87,
        'soul',
        'https://open.spotify.com/track/moves-like-jagger-ed-sheeran',
        'https://music.apple.com/us/song/moves-like-jagger-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        386,
        'Uptown Funk',
        'The Killers',
        91,
        'funk',
        'https://open.spotify.com/track/uptown-funk-the-killers',
        'https://music.apple.com/us/song/uptown-funk-the-killers',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        387,
        'Bad Guy',
        'Katy Perry',
        146,
        'soul',
        'https://open.spotify.com/track/bad-guy-katy-perry',
        'https://music.apple.com/us/song/bad-guy-katy-perry',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        388,
        'Seven Nation Army',
        'The Killers',
        89,
        'rock',
        'https://open.spotify.com/track/seven-nation-army-the-killers',
        'https://music.apple.com/us/song/seven-nation-army-the-killers',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        389,
        'Stayin'' Alive',
        'Nirvana',
        75,
        'reggae',
        'https://open.spotify.com/track/stayin-alive-nirvana',
        'https://music.apple.com/us/song/stayin-alive-nirvana',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        390,
        'Rolling in the Deep',
        'OneRepublic',
        113,
        'rap',
        'https://open.spotify.com/track/rolling-in-the-deep-onerepublic',
        'https://music.apple.com/us/song/rolling-in-the-deep-onerepublic',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        391,
        'Uptown Funk',
        'Coldplay',
        105,
        'rnb',
        'https://open.spotify.com/track/uptown-funk-coldplay',
        'https://music.apple.com/us/song/uptown-funk-coldplay',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        392,
        'Counting Stars',
        'The Killers',
        59,
        'dance',
        'https://open.spotify.com/track/counting-stars-the-killers',
        'https://music.apple.com/us/song/counting-stars-the-killers',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        393,
        'Eye of the Tiger',
        'Bee Gees',
        59,
        'rock',
        'https://open.spotify.com/track/eye-of-the-tiger-bee-gees',
        'https://music.apple.com/us/song/eye-of-the-tiger-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        394,
        'Lose Yourself',
        'Michael Jackson',
        118,
        'reggae',
        'https://open.spotify.com/track/lose-yourself-michael-jackson',
        'https://music.apple.com/us/song/lose-yourself-michael-jackson',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        395,
        'Counting Stars',
        'A-ha',
        105,
        'dance',
        'https://open.spotify.com/track/counting-stars-a-ha',
        'https://music.apple.com/us/song/counting-stars-a-ha',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        396,
        'Wake Me Up',
        'Bee Gees',
        70,
        'pop',
        'https://open.spotify.com/track/wake-me-up-bee-gees',
        'https://music.apple.com/us/song/wake-me-up-bee-gees',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        397,
        'Stayin'' Alive',
        'Outkast',
        148,
        'funk',
        'https://open.spotify.com/track/stayin-alive-outkast',
        'https://music.apple.com/us/song/stayin-alive-outkast',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        398,
        'Take On Me',
        'Bruno Mars',
        122,
        'pop',
        'https://open.spotify.com/track/take-on-me-bruno-mars',
        'https://music.apple.com/us/song/take-on-me-bruno-mars',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        399,
        'Eye of the Tiger',
        'Ed Sheeran',
        77,
        'indie',
        'https://open.spotify.com/track/eye-of-the-tiger-ed-sheeran',
        'https://music.apple.com/us/song/eye-of-the-tiger-ed-sheeran',
        'Convient pour un échauffement ou une marche lente.',
        '2025-04-12 02:44:13'
    );
INSERT INTO songs (id, title, artist, bpm, style, spotify_link, apple_music_link, note, created_at) VALUES (
        400,
        'Shake It Off',
        'Avicii',
        160,
        'electro',
        'https://open.spotify.com/track/shake-it-off-avicii',
        'https://music.apple.com/us/song/shake-it-off-avicii',
        'Parfait pour une marche dynamique.',
        '2025-04-12 02:44:13'
    );
COMMIT;