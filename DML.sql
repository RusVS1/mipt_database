INSERT INTO items_categories (category_name, features) VALUES
    ('Waframe part', 'Warframe is an advanced weapons system used exclusively by the Tenno in their missions throughout the Origin System. 
        The Warframes possess regenerative shields, greatly enhanced mobility, and the use of an array of supernatural abilities – all of 
        which further augment the Tennos deadly use of traditional combat arts.'),
    ('Weapon part', 'Weapons are one of the types of equipment. It can be used by Warframes. There are three main types of weapons in the game: 
    primary, secondary and melee weapons, which can be equipped with any Warframe at the same time.'),
    ('Mod', 'Mods, short for Modifications or Modules, are the upgrade system in WARFRAME in the form of special cards that can be equipped 
    on Warframes, weapons to enhance damage, power, survivability, speed, mobility, precepts, and utility.'),
    ('Sculpture', 'The sculptures are small artifacts from the Orokin era with moving parts. They can be used as decorations on the Orbiter, 
    sold to other players, or exchanged at the Mayors for Endo Endo.'),
    ('Relic', 'Void Relics are Orokin objects that can be opened to reveal valuable treasure enclosed within by completing Void Fissure missions. 
    They are the principal means of acquiring Prime parts and Forma Blueprints, as well as Ducats from exchanging Prime parts in Relays.'),
    ('Mistificator', 'Mistificators are special upgrades that are installed in special slots of compatible equipment that give passive or active effects when using an improved item.');


INSERT INTO items (item_name, category, creation_time, create_rank, rarity) VALUES
    ('Saryn Blueprint', 'Waframe part', '3 days', 0, 'Prime'),
    ('Saryn Chassis Blueprint', 'Waframe part', '12 hour', 0, 'Prime'),
    ('Saryn Neuroptics Blueprint', 'Waframe part', '12 hour', 0, 'Prime'),
    ('Saryn Systems Blueprint', 'Waframe part', '12 hour', 0, 'Prime'),
    ('Mirage Blueprint', 'Waframe part', '3 days', 8, 'Prime'),
    ('Mirage Chassis Blueprint', 'Waframe part', '12 hour', 8, 'Prime'),
    ('Mirage Neuroptics Blueprint', 'Waframe part', '12 hour', 8, 'Prime'),
    ('Mirage Systems Blueprint', 'Waframe part', '12 hour', 8, 'Prime'),
    ('Atlas Systems Blueprint', 'Waframe part', '12 hour', 0, 'Prime'),
    ('Boltor Blueprint', 'Weapon part', '12 hour', 13, 'Prime'),
    ('Boltor Barrel', 'Weapon part', NULL, 8, 'Prime'),
    ('Boltor Receiver', 'Weapon part', NULL, 8, 'Prime'),
    ('Boltor Stock', 'Weapon part', NULL, 8, 'Prime'),
    ('Shedu Chassis', 'Weapon part', NULL, 13, 'Common'),
    ('Shedu Handle', 'Weapon part', NULL, 13, 'Common'),
    ('Shedu Receiver', 'Weapon part', NULL, 13, 'Common'),
    ('Shedu Barrel', 'Weapon part', NULL, 13, 'Common'),
    ('Blind Rage', 'Mod', NULL, NULL, 'Gold'),
    ('Vitality', 'Mod', NULL, NULL, 'Bronze'),
    ('Cryo Rounds', 'Mod', NULL, NULL, 'Silver'),
    ('Anasa', 'Sculpture', NULL, NULL, 'Ayatan'),
    ('Ayr', 'Sculpture', NULL, NULL, 'Ayatan'),
    ('Kitha', 'Sculpture', NULL, NULL, 'Ayatan'),
    ('A1', 'Relic', NULL, NULL, 'Axi'),
    ('W1', 'Relic', NULL, NULL, 'Neo'),
    ('O6', 'Relic', NULL, NULL, 'Meso'),
    ('C10', 'Relic', NULL, NULL, 'Lith'),
    ('Arcane Energize', 'Mistificator', NULL, NULL, 'Legendary'),
    ('Arcane Fury', 'Mistificator', NULL, NULL, 'Gold'),
    ('Magus Cloud', 'Mistificator', NULL, NULL, 'Silver'),
    ('Virtuos Spike', 'Mistificator', NULL, NULL, 'Bronze');


INSERT INTO resources (resource_name, location_planet) VALUES
    ('Alloy Plate', 'Ceres'),
    ('Argon Crystal', 'Void'),
    ('Circuits', 'Venus'),
    ('Control Module', 'Void'),
    ('Cryotic', 'Pluto'),
    ('Ferrite', 'Earth'),
    ('Gallium', 'Mars'),
    ('Hexenon', 'Jupiter'),
    ('Morphics', 'Mercury'),
    ('Nano Spores', 'Deimos'),
    ('Neural Sensors', 'Jupiter'),
    ('Neurodes', 'Saturn'),
    ('Orokin Cell', 'Deimos'),
    ('Oxium', 'Neptune'),
    ('Plastids', 'Uranus'),
    ('Polymer Bundle', 'Uranus'),
    ('Rubedo', 'Sedna'),
    ('Salvage', 'Phobos'),
    ('Tellurium', 'Kuva Fortress'),
    ('Nitain Extract', 'Earth');


INSERT INTO resources_for_items (item, resource_name, quantity) VALUES
    ('Saryn Blueprint', 'Orokin Cell', 1),
    ('Saryn Neuroptics Blueprint', 'Alloy Plate', 1500),
    ('Saryn Neuroptics Blueprint', 'Neural Sensors', 2),
    ('Saryn Neuroptics Blueprint', 'Salvage', 3500),
    ('Saryn Neuroptics Blueprint', 'Rubedo', 750),
    ('Saryn Chassis Blueprint', 'Nitain Extract', 3),
    ('Saryn Chassis Blueprint', 'Nano Spores', 4000),
    ('Saryn Chassis Blueprint', 'Rubedo', 1200),
    ('Saryn Systems Blueprint', 'Nitain Extract', 3),
    ('Saryn Systems Blueprint', 'Orokin Cell', 1),
    ('Saryn Systems Blueprint', 'Ferrite', 4000),
    ('Saryn Systems Blueprint', 'Circuits', 5000),
    ('Mirage Blueprint', 'Orokin Cell', 5),
    ('Mirage Chassis Blueprint', 'Nitain Extract', 2),
    ('Mirage Chassis Blueprint', 'Morphics', 20),
    ('Mirage Chassis Blueprint', 'Alloy Plate', 26000),
    ('Mirage Chassis Blueprint', 'Oxium', 350),
    ('Mirage Neuroptics Blueprint', 'Neurodes', 5),
    ('Mirage Neuroptics Blueprint', 'Cryotic', 2000),
    ('Mirage Neuroptics Blueprint', 'Polymer Bundle', 2500),
    ('Mirage Neuroptics Blueprint', 'Ferrite', 18000),
    ('Mirage Systems Blueprint', 'Argon Crystal', 2),
    ('Mirage Systems Blueprint', 'Control Module', 10),
    ('Mirage Systems Blueprint', 'Rubedo', 4500),
    ('Mirage Systems Blueprint', 'Salvage', 23000),
    ('Boltor Blueprint', 'Orokin Cell', 10),
    ('Atlas Systems Blueprint', 'Argon Crystal', 2),
    ('Atlas Systems Blueprint', 'Gallium', 4),
    ('Atlas Systems Blueprint', 'Polymer Bundle', 1200),
    ('Atlas Systems Blueprint', 'Alloy Plate', 3200);
    

INSERT INTO sellers (seller_nickname, seller_status, mastery_rank, reputation) VALUES
    ('miniko', 'Online', 12, 5),
    ('RusVS', 'Online in game', 34, 36),
    ('MuNEEEE', 'Online', 8, -5),
    ('mizerhit', 'Offline', 3, 0),
    ('Pleiada', 'Online in game', 15, 10),
    ('Evolvento', 'Online in game', 11, 2),
    ('tabletca', 'Online in game', 30, 22),
    ('Aniki', 'Offline', 22, 14),
    ('ShadowOfCold', 'Offline', 17, -10),
    ('Peggystrum', 'Online in game', 2, 0),
    ('dimkiss', 'Online in game', 3, 2),
    ('NIK', 'Online', 17, -10),
    ('tsybenov', 'Online in game', 5, 0),
    ('RedRim', 'Online in game', 32, 22),
    ('TimoKrazow', 'Online', 9, 1),
    ('TROLOLOFeed', 'Online in game', 2, -34);


INSERT INTO active_lots (seller, item, date_put, price_piece, quantity, rank, trade_tax) VALUES
    ('MuNEEEE', 'Saryn Blueprint', '2024-04-07 12:23:45', 28, 1, NULL, 2000),
    ('tabletca', 'Saryn Blueprint', '2024-04-03 04:56:12', 33, 1, NULL, 2000),
    ('NIK', 'Saryn Blueprint', '2024-04-06 18:32:59', 34, 2, NULL, 2000),
    ('RusVS', 'Saryn Blueprint', '2024-04-11 05:43:21', 49, 9, NULL, 2000),
    ('tabletca', 'Saryn Blueprint', '2024-04-05 14:27:38', 60, 1, NULL, 2000),
    ('Aniki', 'Saryn Blueprint', '2024-04-08 21:10:05', 45, 1, NULL, 2000),
    ('RedRim', 'Saryn Blueprint', '2024-04-10 09:18:27', 45, 2, NULL, 2000),
    ('Peggystrum', 'Saryn Blueprint', '2024-04-01 20:37:49', 19, 1, NULL, 2000),
    ('mizerhit', 'Saryn Chassis Blueprint', '2024-04-04 06:02:33', 43, 1, NULL, 2000),
    ('RusVS', 'Saryn Chassis Blueprint', '2024-04-07 23:45:42', 45, 1, NULL, 2000),
    ('tabletca', 'Saryn Chassis Blueprint', '2024-04-03 11:58:12', 50, 1, NULL, 2000),
    ('Pleiada', 'Saryn Chassis Blueprint', '2024-04-02 18:29:59', 55, 5, NULL, 2000),
    ('NIK', 'Saryn Chassis Blueprint', '2024-04-02 07:14:36', 70, 2, NULL, 2000),
    ('Evolvento', 'Saryn Chassis Blueprint', '2024-04-06 15:42:09', 60, 3, NULL, 2000),
    ('ShadowOfCold', 'Saryn Chassis Blueprint', '2024-04-05 19:50:23', 43, 1, NULL, 2000),
    ('tabletca', 'Saryn Chassis Blueprint', '2024-04-11 08:37:56', 45, 3, NULL, 2000),
    ('RedRim', 'Saryn Neuroptics Blueprint', '2024-04-09 02:13:17', 8, 1, NULL, 2000),
    ('tsybenov', 'Saryn Neuroptics Blueprint', '2024-04-06 23:04:29', 9, 1, NULL, 2000),
    ('RusVS', 'Saryn Neuroptics Blueprint', '2024-04-05 17:59:11', 14, 30, NULL, 2000),
    ('MuNEEEE', 'Saryn Neuroptics Blueprint', '2024-04-08 13:25:48', 8, 1, NULL, 2000),
    ('dimkiss', 'Saryn Systems Blueprint', '2024-04-11 10:00:00', 7, 1, NULL, 2000),
    ('Aniki', 'Saryn Systems Blueprint', '2024-04-05 14:38:59', 7, 1, NULL, 2000),
    ('NIK', 'Saryn Systems Blueprint', '2024-04-04 16:11:32', 8, 3, NULL, 2000),
    ('tabletca', 'Saryn Systems Blueprint', '2024-04-09 08:01:11', 10, 3, NULL, 2000),
    ('Evolvento', 'Saryn Systems Blueprint', '2024-04-02 01:09:42', 3, 1, NULL, 2000),
    ('RedRim', 'Saryn Systems Blueprint', '2024-04-05 05:12:09', 4, 1, NULL, 2000),
    ('TimoKrazow', 'Mirage Blueprint', '2024-04-11 10:00:00', 39, 1, NULL, 2000),
    ('tabletca', 'Mirage Blueprint', '2024-04-07 07:23:42', 39, 5, NULL, 2000),
    ('RusVS', 'Mirage Blueprint', '2024-04-07 16:18:59', 40, 1, NULL, 2000),
    ('tsybenov', 'Mirage Blueprint', '2024-04-10 18:42:23', 40, 2, NULL, 2000),
    ('dimkiss', 'Mirage Blueprint', '2024-04-06 23:56:48', 50, 1, NULL, 2000),
    ('RedRim', 'Mirage Blueprint', '2024-04-02 14:37:12', 39, 1, NULL, 2000),
    ('NIK', 'Mirage Blueprint', '2024-04-06 09:54:18', 20, 1, NULL, 2000),
    ('Evolvento', 'Mirage Blueprint', '2024-04-08 20:28:54', 25, 1, NULL, 2000),
    ('tabletca', 'Mirage Chassis Blueprint', '2024-04-04 03:25:01', 7, 1, NULL, 2000),
    ('TROLOLOFeed', 'Mirage Chassis Blueprint', '2024-04-06 15:18:07', 8, 1, NULL, 2000),
    ('RedRim', 'Mirage Chassis Blueprint', '2024-04-07 10:59:43', 10, 1, NULL, 2000),
    ('TimoKrazow', 'Mirage Chassis Blueprint', '2024-04-06 11:42:35', 10, 1, NULL, 2000),
    ('Aniki', 'Mirage Chassis Blueprint', '2024-04-04 23:07:39', 10, 1, NULL, 2000),
    ('RusVS', 'Mirage Chassis Blueprint', '2024-04-11 02:04:21', 7, 1, NULL, 2000),
    ('ShadowOfCold', 'Mirage Chassis Blueprint', '2024-04-11 10:00:00', 1, 8, NULL, 2000),
    ('Evolvento', 'Mirage Neuroptics Blueprint', '2024-04-04 14:32:47', 4, 2, NULL, 2000),
    ('tabletca', 'Mirage Neuroptics Blueprint', '2024-04-07 20:15:29', 5, 1, NULL, 2000),
    ('Peggystrum', 'Mirage Neuroptics Blueprint', '2024-04-10 17:01:45', 6, 1, NULL, 2000),
    ('Pleiada', 'Mirage Neuroptics Blueprint', '2024-04-07 15:19:23', 7, 1, NULL, 2000),
    ('TROLOLOFeed', 'Mirage Neuroptics Blueprint', '2024-04-03 09:24:51', 7, 1, NULL, 2000),
    ('TimoKrazow', 'Mirage Systems Blueprint', '2024-04-04 19:59:02', 13, 1, NULL, 2000),
    ('mizerhit', 'Mirage Systems Blueprint', '2024-04-09 06:17:29', 13, 1, NULL, 2000),
    ('RusVS', 'Mirage Systems Blueprint', '2024-04-06 16:55:10', 13, 1, NULL, 2000),
    ('RedRim', 'Mirage Systems Blueprint', '2024-04-01 22:46:29', 13, 1, NULL, 2000),
    ('tabletca', 'Mirage Systems Blueprint', '2024-04-07 14:38:25', 14, 3, NULL, 2000),
    ('NIK', 'Mirage Systems Blueprint', '2024-04-06 10:45:19', 20, 1, NULL, 2000),
    ('tsybenov', 'Atlas Systems Blueprint', '2024-04-11 10:00:00', 3, 1, NULL, 2000),
    ('Aniki', 'Atlas Systems Blueprint', '2024-04-06 08:22:56', 3, 1, NULL, 2000),
    ('ShadowOfCold', 'Atlas Systems Blueprint', '2024-04-09 13:57:24', 3, 2, NULL, 2000),
    ('Pleiada', 'Atlas Systems Blueprint', '2024-04-01 17:43:50', 4, 1, NULL, 2000),
    ('MuNEEEE', 'Atlas Systems Blueprint', '2024-04-07 02:28:21', 20, 1, NULL, 2000),
    ('RedRim', 'Atlas Systems Blueprint', '2024-04-06 03:49:07', 40, 1, NULL, 2000),
    ('RusVS', 'Atlas Systems Blueprint', '2024-04-10 22:35:14', 5, 1, NULL, 2000),
    ('TROLOLOFeed', 'Atlas Systems Blueprint', '2024-04-08 18:04:53', 15, 1, NULL, 2000),
    ('tabletca', 'Atlas Systems Blueprint', '2024-04-01 15:30:04', 1, 1, NULL, 2000),
    ('RusVS', 'Boltor Blueprint', '2024-04-11 10:00:00', 28, 1, NULL, 2000),
    ('Peggystrum', 'Boltor Blueprint', '2024-04-10 06:52:11', 29, 3, NULL, 2000),
    ('Aniki', 'Boltor Blueprint', '2024-04-07 09:34:45', 35, 1, NULL, 2000),
    ('RedRim', 'Boltor Blueprint', '2024-04-05 18:29:17', 35, 1, NULL, 2000),
    ('tabletca', 'Boltor Blueprint', '2024-04-10 16:07:23', 15, 1, NULL, 2000),
    ('TROLOLOFeed', 'Boltor Barrel', '2024-04-06 23:44:39', 10, 1, NULL, 2000),
    ('Evolvento', 'Boltor Barrel', '2024-04-08 13:56:57', 12, 2, NULL, 2000),
    ('tabletca', 'Boltor Barrel', '2024-04-10 19:01:14', 14, 3, NULL, 2000),
    ('Aniki', 'Boltor Barrel', '2024-04-04 11:59:28', 16, 4, NULL, 2000),
    ('dimkiss', 'Boltor Barrel', '2024-04-11 10:00:00', 18, 5, NULL, 2000),
    ('RedRim', 'Boltor Receiver', '2024-04-01 01:24:45', 10, 1, NULL, 2000),
    ('tabletca', 'Boltor Receiver', '2024-04-01 11:58:29', 12, 2, NULL, 2000),
    ('NIK', 'Boltor Receiver', '2024-04-04 20:05:37', 14, 3, NULL, 2000),
    ('ShadowOfCold', 'Boltor Receiver', '2024-04-03 18:02:41', 16, 1, NULL, 2000),
    ('RusVS', 'Boltor Receiver', '2024-04-05 13:39:25', 18, 1, NULL, 2000),
    ('TROLOLOFeed', 'Boltor Stock', '2024-04-07 15:10:04', 10, 1, NULL, 2000),
    ('TimoKrazow', 'Boltor Stock', '2024-04-05 09:25:36', 12, 2, NULL, 2000),
    ('Aniki', 'Boltor Stock', '2024-04-09 14:07:01', 14, 3, NULL, 2000),
    ('RedRim', 'Boltor Stock', '2024-04-01 06:18:47', 16, 3, NULL, 2000),
    ('tabletca', 'Boltor Stock', '2024-04-10 22:05:29', 18, 2, NULL, 2000),
    ('Pleiada', 'Shedu Chassis', '2024-04-09 21:35:18', 15, 1, NULL, 2000),
    ('RusVS', 'Shedu Chassis', '2024-04-11 10:00:00', 17, 2, NULL, 2000),
    ('Peggystrum', 'Shedu Chassis', '2024-04-08 14:21:03', 19, 1, NULL, 2000),
    ('tabletca', 'Shedu Chassis', '2024-04-03 17:44:29', 21, 1, NULL, 2000),
    ('Pleiada', 'Shedu Chassis', '2024-04-02 09:30:51', 23, 1, NULL, 2000),
    ('RedRim', 'Shedu Handle', '2024-04-11 10:00:00', 15, 1, NULL, 2000),
    ('RusVS', 'Shedu Handle', '2024-04-07 14:23:09', 17, 2, NULL, 2000),
    ('TROLOLOFeed', 'Shedu Handle', '2024-04-06 23:50:12', 19, 3, NULL, 2000),
    ('Aniki', 'Shedu Handle', '2024-04-04 10:58:23', 21, 1, NULL, 2000),
    ('TROLOLOFeed', 'Shedu Handle', '2024-04-05 16:39:28', 23, 1, NULL, 2000),
    ('Evolvento', 'Shedu Receiver', '2024-04-07 02:27:51', 15, 1, NULL, 2000),
    ('tabletca', 'Shedu Receiver', '2024-04-05 12:10:59', 17, 2, NULL, 2000),
    ('TROLOLOFeed', 'Shedu Receiver', '2024-04-04 18:12:01', 19, 3, NULL, 2000),
    ('TimoKrazow', 'Shedu Receiver', '2024-04-08 06:53:29', 21, 1, NULL, 2000),
    ('RusVS', 'Shedu Receiver', '2024-04-02 07:24:15', 23, 1, NULL, 2000),
    ('ShadowOfCold', 'Shedu Barrel', '2024-04-07 12:34:56', 15, 1, NULL, 2000),
    ('dimkiss', 'Shedu Barrel', '2024-04-08 01:23:45', 17, 2, NULL, 2000),
    ('RedRim', 'Shedu Barrel', '2024-04-03 05:45:36', 19, 1, NULL, 2000),
    ('Pleiada', 'Shedu Barrel', '2024-04-05 08:37:59', 21, 2, NULL, 2000),
    ('RusVS', 'Shedu Barrel', '2024-04-06 09:12:34', 23, 1, NULL, 2000),
    ('Aniki', 'Blind Rage', '2024-04-01 06:24:58', 50, 1, 0, 8000),
    ('tabletca', 'Blind Rage', '2024-04-05 14:57:23', 52, 2, 0, 8000),
    ('NIK', 'Blind Rage', '2024-04-02 18:36:42', 54, 2, 0, 8000),
    ('Peggystrum', 'Blind Rage', '2024-04-03 20:48:15', 56, 1, 0, 8000),
    ('Evolvento', 'Blind Rage', '2024-04-04 22:01:39', 58, 1, 0, 8000),
    ('RusVS', 'Blind Rage', '2024-04-08 23:12:45', 50, 1, 0, 8000),
    ('RedRim', 'Blind Rage', '2024-04-01 19:24:58', 100, 2, 10, 8000),
    ('Pleiada', 'Blind Rage', '2024-04-05 12:57:23', 110, 2, 10, 8000),
    ('Pleiada', 'Blind Rage', '2024-04-06 08:36:42', 150, 2, 10, 8000),
    ('MuNEEEE', 'Blind Rage', '2024-04-03 16:48:15', 250, 1, 10, 8000),
    ('Aniki', 'Vitality', '2024-04-01 22:24:58', 10, 1, 0, 2000),
    ('tabletca', 'Vitality', '2024-04-04 14:57:23', 12, 2, 0, 2000),
    ('Pleiada', 'Vitality', '2024-04-03 08:36:42', 14, 1, 0, 2000),
    ('RedRim', 'Vitality', '2024-04-05 06:48:15', 16, 2, 0, 2000),
    ('tsybenov', 'Vitality', '2024-04-07 10:24:58', 18, 1, 0, 2000),
    ('mizerhit', 'Vitality', '2024-04-02 14:57:23', 35, 1, 10, 2000),
    ('RusVS', 'Vitality', '2024-04-06 08:36:42', 40, 2, 10, 2000),
    ('dimkiss', 'Vitality', '2024-04-08 06:48:15', 50, 1, 10, 2000),
    ('Aniki', 'Cryo Rounds', '2024-04-03 22:24:58', 10, 1, 0, 4000),
    ('RedRim', 'Cryo Rounds', '2024-04-02 06:48:15', 12, 2, 0, 4000),
    ('NIK', 'Cryo Rounds', '2024-04-05 14:57:23', 14, 1, 0, 4000),
    ('RusVS', 'Cryo Rounds', '2024-04-01 08:36:42', 16, 2, 0, 4000),
    ('ShadowOfCold', 'Cryo Rounds', '2024-04-07 06:48:15', 18, 1, 0, 4000),
    ('RedRim', 'Cryo Rounds', '2024-04-03 19:24:58', 22, 1, 5, 4000),
    ('tabletca', 'Cryo Rounds', '2024-04-04 14:57:23', 23, 2, 5, 4000),
    ('Pleiada', 'Cryo Rounds', '2024-04-06 08:36:42', 26, 1, 5, 4000),
    ('TimoKrazow', 'Anasa', '2024-04-01 22:24:58', 9, 1, 0, 4000),
    ('Aniki', 'Anasa', '2024-04-03 14:57:23', 9, 1, 0, 4000),
    ('Peggystrum', 'Anasa', '2024-04-07 08:36:42', 10, 1, 4, 4000),
    ('RusVS', 'Anasa', '2024-04-02 06:48:15', 12, 2, 4, 4000),
    ('TROLOLOFeed', 'Anasa', '2024-04-05 19:24:58', 14, 2, 4, 4000),
    ('Pleiada', 'Anasa', '2024-04-06 14:57:23', 16, 1, 4, 4000),
    ('RedRim', 'Anasa', '2024-04-01 08:36:42', 18, 1, 4, 4000),
    ('tabletca', 'Ayr', '2024-04-03 06:48:15', 16, 1, 0, 4000),
    ('Pleiada', 'Ayr', '2024-04-02 14:57:23', 16, 2, 0, 4000),
    ('RusVS', 'Ayr', '2024-04-05 08:36:42', 17, 3, 0, 4000),
    ('Evolvento', 'Ayr', '2024-04-07 06:48:15', 20, 1, 5, 4000),
    ('tabletca', 'Ayr', '2024-04-01 22:24:58', 22, 2, 5, 4000),
    ('RedRim', 'Ayr', '2024-04-04 14:57:23', 24, 3, 5, 4000),
    ('TimoKrazow', 'Ayr', '2024-04-06 08:36:42', 26, 1, 5, 4000),
    ('Aniki', 'Ayr', '2024-04-08 06:48:15', 15, 2, 5, 4000),
    ('Pleiada', 'Kitha', '2024-04-07 22:24:58', 50, 1, 5, 4000),
    ('tabletca', 'Kitha', '2024-04-03 14:57:23', 50, 2, 5, 4000),
    ('RusVS', 'Kitha', '2024-04-05 08:36:42', 51, 1, 5, 4000),
    ('Aniki', 'Kitha', '2024-04-01 06:48:15', 52, 1, 5, 4000),
    ('MuNEEEE', 'Kitha', '2024-04-02 22:24:58', 56, 1, 5, 4000),
    ('ShadowOfCold', 'A1', '2024-04-04 14:57:23', 50, 2, 3, 2000),
    ('NIK', 'A1', '2024-04-06 08:36:42', 51, 3, 3, 2000),
    ('tabletca', 'W1', '2024-04-08 06:48:15', 40, 1, 3, 2000),
    ('TimoKrazow', 'O6', '2024-04-01 22:24:58', 10, 1, 0, 2000),
    ('RusVS', 'O6', '2024-04-02 14:57:23', 12, 2, 0, 2000),
    ('dimkiss', 'O6', '2024-04-03 08:36:42', 18, 1, 1, 2000),
    ('Aniki', 'C10', '2024-04-05 06:48:15', 10, 1, 0, 2000),
    ('RedRim', 'C10', '2024-04-06 14:57:23', 12, 1, 0, 2000),
    ('tabletca', 'C10', '2024-04-07 08:36:42', 20, 1, 2, 2000),
    ('tabletca', 'Arcane Energize', '2024-04-08 06:48:15', 200, 1, 1, 2100000),
    ('RedRim', 'Arcane Energize', '2024-04-02 14:57:23', 202, 2, 1, 2100000),
    ('RedRim', 'Arcane Energize', '2024-04-03 08:36:42', 204, 1, 1, 2100000),
    ('RusVS', 'Arcane Energize', '2024-04-05 06:48:15', 206, 1, 1, 2100000),
    ('RusVS', 'Arcane Energize', '2024-04-01 22:24:58', 2001, 1, 21, 2100000),
    ('RedRim', 'Arcane Energize', '2024-04-04 14:57:23', 2100, 1, 21, 2100000),
    ('TROLOLOFeed', 'Arcane Fury', '2024-04-06 08:36:42', 50, 1, 1, 8000),
    ('tsybenov', 'Arcane Fury', '2024-04-08 06:48:15', 52, 2, 1, 8000),
    ('RusVS', 'Arcane Fury', '2024-04-02 14:57:23', 54, 3, 1, 8000),
    ('TimoKrazow', 'Arcane Fury', '2024-04-03 22:24:58', 244, 1, 21, 8000),
    ('Evolvento', 'Arcane Fury', '2024-04-07 06:48:15', 259, 2, 21, 8000),
    ('Pleiada', 'Magus Cloud', '2024-04-01 14:57:23', 10, 1, 1, 4000),
    ('ShadowOfCold', 'Magus Cloud', '2024-04-02 06:48:15', 12, 2, 1, 4000),
    ('Aniki', 'Magus Cloud', '2024-04-03 22:24:58', 14, 1, 1, 4000),
    ('tabletca', 'Magus Cloud', '2024-04-04 14:57:23', 16, 4, 1, 4000),
    ('RusVS', 'Magus Cloud', '2024-04-05 08:36:42', 18, 2, 1, 4000),
    ('RedRim', 'Virtuos Spike', '2024-04-02 06:48:15', 10, 1, 1, 2000),
    ('NIK', 'Virtuos Spike', '2024-04-03 14:57:23', 12, 2, 1, 2000),
    ('tabletca', 'Virtuos Spike', '2024-04-04 08:36:42', 14, 3, 1, 2000),
    ('Peggystrum', 'Virtuos Spike', '2024-04-05 06:48:15', 16, 2, 1, 2000),
    ('MuNEEEE', 'Virtuos Spike', '2024-04-01 22:24:58', 18, 1, 1, 2000),
    ('RusVS', 'Virtuos Spike', '2024-04-03 14:57:23', 110, 1, 21, 2000);

INSERT INTO lots_history (seller, item, date_put, sale_date, price, rank) VALUES 
    ('MuNEEEE', 'Saryn Blueprint', '2024-04-07 12:23:45', '2024-04-09 08:14:27', 28, NULL),
    ('tabletca', 'Saryn Blueprint', '2024-04-03 04:56:12', '2024-04-10 18:26:08', 33, NULL),
    ('NIK', 'Saryn Blueprint', '2024-04-06 18:32:59', '2024-04-09 01:42:17', 34, NULL),
    ('RusVS', 'Saryn Blueprint', '2024-04-11 05:43:21', '2024-04-11 12:33:56', 49, NULL),
    ('tabletca', 'Saryn Blueprint', '2024-04-05 14:27:38', '2024-04-10 03:44:59', 60, NULL),
    ('Aniki', 'Saryn Blueprint', '2024-04-08 21:10:05', '2024-04-11 00:34:39', 45, NULL),
    ('RedRim', 'Saryn Blueprint', '2024-04-10 09:18:27', '2024-04-11 15:21:33', 45, NULL),
    ('Peggystrum', 'Saryn Blueprint', '2024-04-01 20:37:49', '2024-04-10 17:25:09', 19, NULL),
    ('mizerhit', 'Saryn Chassis Blueprint', '2024-04-04 06:02:33', '2024-04-07 02:51:18', 43, NULL),
    ('RusVS', 'Saryn Chassis Blueprint', '2024-04-07 23:45:42', '2024-04-11 01:12:08', 45, NULL),
    ('tabletca', 'Saryn Chassis Blueprint', '2024-04-03 11:58:12', '2024-04-11 05:29:49', 50, NULL),
    ('Pleiada', 'Saryn Chassis Blueprint', '2024-04-02 18:29:59', '2024-04-11 02:17:29', 55, NULL),
    ('NIK', 'Saryn Chassis Blueprint', '2024-04-02 07:14:36', '2024-04-10 20:56:53', 70, NULL),
    ('Evolvento', 'Saryn Chassis Blueprint', '2024-04-06 15:42:09', '2024-04-10 21:34:28', 60, NULL),
    ('ShadowOfCold', 'Saryn Chassis Blueprint', '2024-04-05 19:50:23', '2024-04-10 16:21:42', 43, NULL),
    ('tabletca', 'Saryn Chassis Blueprint', '2024-04-11 08:37:56', '2024-04-11 20:44:17', 45, NULL),
    ('RedRim', 'Saryn Neuroptics Blueprint', '2024-04-09 02:13:17', '2024-04-11 09:44:06', 8, NULL),
    ('tsybenov', 'Saryn Neuroptics Blueprint', '2024-04-06 23:04:29', '2024-04-10 16:07:43', 9, NULL),
    ('RusVS', 'Saryn Neuroptics Blueprint', '2024-04-05 17:59:11', '2024-04-11 13:20:39', 14, NULL),
    ('MuNEEEE', 'Saryn Neuroptics Blueprint', '2024-04-08 13:25:48', '2024-04-11 00:37:12', 8, NULL),
    ('dimkiss', 'Saryn Systems Blueprint', '2024-04-11 10:00:00', '2024-04-11 13:33:02', 7, NULL),
    ('Aniki', 'Saryn Systems Blueprint', '2024-04-05 14:38:59', '2024-04-10 12:58:21', 7, NULL),
    ('NIK', 'Saryn Systems Blueprint', '2024-04-04 16:11:32', '2024-04-09 14:24:04', 8, NULL),
    ('tabletca', 'Saryn Systems Blueprint', '2024-04-09 08:01:11', '2024-04-10 20:47:55', 10, NULL),
    ('Evolvento', 'Saryn Systems Blueprint', '2024-04-02 01:09:42', '2024-04-08 14:42:33', 3, NULL),
    ('RedRim', 'Saryn Systems Blueprint', '2024-04-05 05:12:09', '2024-04-10 10:31:08', 4, NULL),
    ('TimoKrazow', 'Mirage Blueprint', '2024-04-11 10:00:00', '2024-04-11 19:15:46', 39, NULL),
    ('tabletca', 'Mirage Blueprint', '2024-04-07 07:23:42', '2024-04-10 22:32:15', 39, NULL),
    ('RusVS', 'Mirage Blueprint', '2024-04-07 16:18:59', '2024-04-11 01:14:20', 40, NULL),
    ('tsybenov', 'Mirage Blueprint', '2024-04-10 18:42:23', '2024-04-11 11:28:03', 40, NULL),
    ('dimkiss', 'Mirage Blueprint', '2024-04-06 23:56:48', '2024-04-10 09:05:13', 50, NULL),
    ('RedRim', 'Mirage Blueprint', '2024-04-02 14:37:12', '2024-04-10 21:47:06', 39, NULL),
    ('NIK', 'Mirage Blueprint', '2024-04-06 09:54:18', '2024-04-09 23:09:27', 20, NULL),
    ('Evolvento', 'Mirage Blueprint', '2024-04-08 20:28:54', '2024-04-10 02:01:58', 25, NULL),
    ('tabletca', 'Mirage Chassis Blueprint', '2024-04-04 03:25:01', '2024-04-09 07:38:49', 7, NULL),
    ('TROLOLOFeed', 'Mirage Chassis Blueprint', '2024-04-06 15:18:07', '2024-04-10 19:14:23', 8, NULL),
    ('RedRim', 'Mirage Chassis Blueprint', '2024-04-07 10:59:43', '2024-04-10 21:05:18', 10, NULL),
    ('TimoKrazow', 'Mirage Chassis Blueprint', '2024-04-06 11:42:35', '2024-04-10 20:52:23', 10, NULL),
    ('Aniki', 'Mirage Chassis Blueprint', '2024-04-04 23:07:39', '2024-04-10 20:07:12', 10, NULL),
    ('RusVS', 'Mirage Chassis Blueprint', '2024-04-11 02:04:21', '2024-04-11 11:56:29', 7, NULL),
    ('ShadowOfCold', 'Mirage Chassis Blueprint', '2024-04-11 10:00:00', '2024-04-11 12:09:58', 1, NULL),
    ('Evolvento', 'Mirage Neuroptics Blueprint', '2024-04-04 14:32:47', '2024-04-10 11:10:56', 4, NULL),
    ('tabletca', 'Mirage Neuroptics Blueprint', '2024-04-07 20:15:29', '2024-04-11 09:56:01', 5, NULL),
    ('Peggystrum', 'Mirage Neuroptics Blueprint', '2024-04-10 17:01:45', '2024-04-11 01:54:57', 6, NULL),
    ('Pleiada', 'Mirage Neuroptics Blueprint', '2024-04-07 15:19:23', '2024-04-10 18:09:37', 7, NULL),
    ('TROLOLOFeed', 'Mirage Neuroptics Blueprint', '2024-04-03 09:24:51', '2024-04-09 15:45:37', 7, NULL),
    ('TimoKrazow', 'Mirage Systems Blueprint', '2024-04-04 19:59:02', '2024-04-10 11:03:17', 13, NULL),
    ('mizerhit', 'Mirage Systems Blueprint', '2024-04-09 06:17:29', '2024-04-10 22:58:31', 13, NULL),
    ('RusVS', 'Mirage Systems Blueprint', '2024-04-06 16:55:10', '2024-04-10 21:16:53', 13, NULL),
    ('RedRim', 'Mirage Systems Blueprint', '2024-04-01 22:46:29', '2024-04-09 18:03:57', 13, NULL),
    ('tabletca', 'Mirage Systems Blueprint', '2024-04-07 14:38:25', '2024-04-10 23:32:47', 14, NULL),
    ('NIK', 'Mirage Systems Blueprint', '2024-04-06 10:45:19', '2024-04-09 05:33:28', 20, NULL),
    ('tsybenov', 'Atlas Systems Blueprint', '2024-04-11 10:00:00', '2024-04-11 17:22:51', 3, NULL),
    ('Aniki', 'Atlas Systems Blueprint', '2024-04-06 08:22:56', '2024-04-10 17:40:05', 3, NULL),
    ('ShadowOfCold', 'Atlas Systems Blueprint', '2024-04-09 13:57:24', '2024-04-10 07:07:59', 3, NULL),
    ('Pleiada', 'Atlas Systems Blueprint', '2024-04-01 17:43:50', '2024-04-10 18:07:08', 4, NULL),
    ('MuNEEEE', 'Atlas Systems Blueprint', '2024-04-07 02:28:21', '2024-04-10 17:45:11', 20, NULL),
    ('RedRim', 'Atlas Systems Blueprint', '2024-04-06 03:49:07', '2024-04-10 22:47:54', 40, NULL),
    ('RusVS', 'Atlas Systems Blueprint', '2024-04-10 22:35:14', '2024-04-11 09:34:39', 5, NULL),
    ('TROLOLOFeed', 'Atlas Systems Blueprint', '2024-04-08 18:04:53', '2024-04-10 05:26:35', 15, NULL),
    ('tabletca', 'Atlas Systems Blueprint', '2024-04-01 15:30:04', '2024-04-10 08:57:38', 1, NULL),
    ('RusVS', 'Boltor Blueprint', '2024-04-11 10:00:00', '2024-04-11 17:20:13', 28, NULL),
    ('Peggystrum', 'Boltor Blueprint', '2024-04-10 06:52:11', '2024-04-10 15:39:49', 29, NULL),
    ('Aniki', 'Boltor Blueprint', '2024-04-07 09:34:45', '2024-04-10 06:32:54', 35, NULL),
    ('RedRim', 'Boltor Blueprint', '2024-04-05 18:29:17', '2024-04-10 01:38:51', 35, NULL),
    ('tabletca', 'Boltor Blueprint', '2024-04-10 16:07:23', '2024-04-10 22:55:35', 15, NULL),
    ('TROLOLOFeed', 'Boltor Barrel', '2024-04-06 23:44:39', '2024-04-10 00:06:47', 10, NULL),
    ('Evolvento', 'Boltor Barrel', '2024-04-08 13:56:57', '2024-04-10 12:23:45', 12, NULL),
    ('tabletca', 'Boltor Barrel', '2024-04-10 19:01:14', '2024-04-10 21:38:57', 14, NULL),
    ('Aniki', 'Boltor Barrel', '2024-04-04 11:59:28', '2024-04-10 13:47:29', 16, NULL),
    ('dimkiss', 'Boltor Barrel', '2024-04-11 10:00:00', '2024-04-11 15:30:58', 18, NULL),
    ('RedRim', 'Boltor Receiver', '2024-04-01 01:24:45', '2024-04-09 02:45:36', 10, NULL),
    ('tabletca', 'Boltor Receiver', '2024-04-01 11:58:29', '2024-04-10 07:14:25', 12, NULL),
    ('NIK', 'Boltor Receiver', '2024-04-04 20:05:37', '2024-04-10 17:23:49', 14, NULL),
    ('ShadowOfCold', 'Boltor Receiver', '2024-04-03 18:02:41', '2024-04-10 08:49:29', 16, NULL),
    ('RusVS', 'Boltor Receiver', '2024-04-05 13:39:25', '2024-04-10 07:05:15', 18, NULL),
    ('TROLOLOFeed', 'Boltor Stock', '2024-04-07 15:10:04', '2024-04-10 16:32:51', 10, NULL),
    ('TimoKrazow', 'Boltor Stock', '2024-04-05 09:25:36', '2024-04-10 11:15:55', 12, NULL),
    ('Aniki', 'Boltor Stock', '2024-04-09 14:07:01', '2024-04-10 20:02:25', 14, NULL),
    ('RedRim', 'Boltor Stock', '2024-04-01 06:18:47', '2024-04-09 01:21:32', 16, NULL),
    ('tabletca', 'Boltor Stock', '2024-04-10 22:05:29', '2024-04-11 07:18:03', 18, NULL),
    ('Aniki', 'Blind Rage', '2024-04-01 06:24:58', '2024-04-01 06:24:58', 50, 0),
    ('tabletca', 'Blind Rage', '2024-04-05 14:57:23', '2024-04-05 14:57:23', 52, 0),
    ('NIK', 'Blind Rage', '2024-04-02 18:36:42', '2024-04-02 18:36:42', 54, 0),
    ('Peggystrum', 'Blind Rage', '2024-04-03 20:48:15', '2024-04-03 20:48:15', 56, 0),
    ('Evolvento', 'Blind Rage', '2024-04-04 22:01:39', '2024-04-04 22:01:39', 58, 0),
    ('RusVS', 'Blind Rage', '2024-04-08 23:12:45', '2024-04-08 23:12:45', 50, 0),
    ('RedRim', 'Blind Rage', '2024-04-01 19:24:58', '2024-04-01 19:24:58', 100, 10),
    ('Pleiada', 'Blind Rage', '2024-04-05 12:57:23', '2024-04-05 12:57:23', 110, 10),
    ('Pleiada', 'Blind Rage', '2024-04-06 08:36:42', '2024-04-06 08:36:42', 150, 10),
    ('MuNEEEE', 'Blind Rage', '2024-04-03 16:48:15', '2024-04-03 16:48:15', 250, 10),
    ('Aniki', 'Vitality', '2024-04-01 22:24:58', '2024-04-01 22:24:58', 10, 0),
    ('tabletca', 'Vitality', '2024-04-04 14:57:23', '2024-04-04 14:57:23', 12, 0),
    ('Pleiada', 'Vitality', '2024-04-03 08:36:42', '2024-04-03 08:36:42', 14, 0),
    ('RedRim', 'Vitality', '2024-04-05 06:48:15', '2024-04-05 06:48:15', 16, 0),
    ('tsybenov', 'Vitality', '2024-04-07 10:24:58', '2024-04-07 10:24:58', 18, 0),
    ('mizerhit', 'Vitality', '2024-04-02 14:57:23', '2024-04-02 14:57:23', 35, 10),
    ('RusVS', 'Vitality', '2024-04-06 08:36:42', '2024-04-06 08:36:42', 40, 10),
    ('dimkiss', 'Vitality', '2024-04-08 06:48:15', '2024-04-08 06:48:15', 50, 10),
    ('Aniki', 'Cryo Rounds', '2024-04-03 22:24:58', '2024-04-03 22:24:58', 10, 0),
    ('RedRim', 'Cryo Rounds', '2024-04-02 06:48:15', '2024-04-02 06:48:15', 12, 0),
    ('NIK', 'Cryo Rounds', '2024-04-05 14:57:23', '2024-04-05 14:57:23', 14, 0),
    ('RusVS', 'Cryo Rounds', '2024-04-01 08:36:42', '2024-04-01 08:36:42', 16, 0),
    ('ShadowOfCold', 'Cryo Rounds', '2024-04-07 06:48:15', '2024-04-07 06:48:15', 18, 0),
    ('RedRim', 'Cryo Rounds', '2024-04-03 19:24:58', '2024-04-03 19:24:58', 22, 5),
    ('tabletca', 'Cryo Rounds', '2024-04-04 14:57:23', '2024-04-04 14:57:23', 23, 5),
    ('Pleiada', 'Cryo Rounds', '2024-04-06 08:36:42', '2024-04-06 08:36:42', 26, 5),
    ('TimoKrazow', 'Anasa', '2024-04-01 22:24:58', '2024-04-01 22:24:58', 9, 0),
    ('Aniki', 'Anasa', '2024-04-03 14:57:23', '2024-04-03 14:57:23', 9, 0),
    ('Peggystrum', 'Anasa', '2024-04-07 08:36:42', '2024-04-07 08:36:42', 10, 4),
    ('RusVS', 'Anasa', '2024-04-02 06:48:15', '2024-04-02 06:48:15', 12, 4),
    ('TROLOLOFeed', 'Anasa', '2024-04-05 19:24:58', '2024-04-05 19:24:58', 14, 4),
    ('Pleiada', 'Anasa', '2024-04-06 14:57:23', '2024-04-06 14:57:23', 16, 4),
    ('RedRim', 'Anasa', '2024-04-01 08:36:42', '2024-04-01 08:36:42', 18, 4),
    ('tabletca', 'Ayr', '2024-04-03 06:48:15', '2024-04-03 06:48:15', 16, 0),
    ('Pleiada', 'Ayr', '2024-04-02 14:57:23', '2024-04-02 14:57:23', 16, 0),
    ('RusVS', 'Ayr', '2024-04-05 08:36:42', '2024-04-05 08:36:42', 17, 0),
    ('Evolvento', 'Ayr', '2024-04-07 06:48:15', '2024-04-07 06:48:15', 20, 5),
    ('tabletca', 'Ayr', '2024-04-01 22:24:58', '2024-04-01 22:24:58', 22, 5),
    ('RedRim', 'Ayr', '2024-04-04 14:57:23', '2024-04-04 14:57:23', 24, 5),
    ('TimoKrazow', 'Ayr', '2024-04-06 08:36:42', '2024-04-06 08:36:42', 26, 5),
    ('Peggystrum', 'Ayr', '2024-04-08 06:48:15', '2024-04-08 06:48:15', 28, 5),
    ('Pleiada', 'Kitha', '2024-04-07 22:24:58', '2024-04-07 22:24:58', 50, 5),
    ('tabletca', 'Kitha', '2024-04-03 14:57:23', '2024-04-03 14:57:23', 50, 5),
    ('RusVS', 'Kitha', '2024-04-05 08:36:42', '2024-04-05 08:36:42', 51, 5),
    ('Aniki', 'Kitha', '2024-04-01 06:48:15', '2024-04-01 06:48:15', 52, 5),
    ('MuNEEEE', 'Kitha', '2024-04-02 22:24:58', '2024-04-02 22:24:58', 56, 5),
    ('ShadowOfCold', 'A1', '2024-04-04 14:57:23', '2024-04-04 14:57:23', 50, 3),
    ('NIK', 'A1', '2024-04-06 08:36:42', '2024-04-06 08:36:42', 51, 3),
    ('tabletca', 'W1', '2024-04-08 06:48:15', '2024-04-08 06:48:15', 40, 3),
    ('TimoKrazow', 'O6', '2024-04-01 22:24:58', '2024-04-01 22:24:58', 10, 0),
    ('RusVS', 'O6', '2024-04-02 14:57:23', '2024-04-02 14:57:23', 12, 0),
    ('dimkiss', 'O6', '2024-04-03 08:36:42', '2024-04-03 08:36:42', 18, 1),
    ('Aniki', 'C10', '2024-04-05 06:48:15', '2024-04-05 06:48:15', 10, 0),
    ('RedRim', 'C10', '2024-04-06 14:57:23', '2024-04-06 14:57:23', 12, 0),
    ('tabletca', 'C10', '2024-04-07 08:36:42', '2024-04-07 08:36:42', 20, 2),
    ('tabletca', 'Arcane Energize', '2024-04-08 06:48:15', '2024-04-08 06:48:15', 200, 1),
    ('RedRim', 'Arcane Energize', '2024-04-02 14:57:23', '2024-04-02 14:57:23', 202, 1),
    ('RedRim', 'Arcane Energize', '2024-04-03 08:36:42', '2024-04-03 08:36:42', 204, 1),
    ('RusVS', 'Arcane Energize', '2024-04-05 06:48:15', '2024-04-05 06:48:15', 206, 1),
    ('RusVS', 'Arcane Energize', '2024-04-01 22:24:58', '2024-04-01 22:24:58', 2001, 21),
    ('RedRim', 'Arcane Energize', '2024-04-04 14:57:23', '2024-04-04 14:57:23', 2100, 21),
    ('TROLOLOFeed', 'Arcane Fury', '2024-04-06 08:36:42', '2024-04-06 08:36:42', 50, 1),
    ('tsybenov', 'Arcane Fury', '2024-04-08 06:48:15', '2024-04-08 06:48:15', 52, 1),
    ('RusVS', 'Arcane Fury', '2024-04-02 14:57:23', '2024-04-02 14:57:23', 54, 1),
    ('TimoKrazow', 'Arcane Fury', '2024-04-03 22:24:58', '2024-04-03 22:24:58', 244, 21),
    ('Evolvento', 'Arcane Fury', '2024-04-07 06:48:15', '2024-04-07 06:48:15', 259, 21),
    ('Pleiada', 'Magus Cloud', '2024-04-01 14:57:23', '2024-04-01 14:57:23', 10, 1),
    ('ShadowOfCold', 'Magus Cloud', '2024-04-02 06:48:15', '2024-04-02 06:48:15', 12, 1),
    ('Aniki', 'Magus Cloud', '2024-04-03 22:24:58', '2024-04-03 22:24:58', 14, 1),
    ('tabletca', 'Magus Cloud', '2024-04-04 14:57:23', '2024-04-04 14:57:23', 16, 1),
    ('RusVS', 'Magus Cloud', '2024-04-05 08:36:42', '2024-04-05 08:36:42', 18, 1),
    ('RedRim', 'Virtuos Spike', '2024-04-02 06:48:15', '2024-04-02 06:48:15', 10, 1),
    ('NIK', 'Virtuos Spike', '2024-04-03 14:57:23', '2024-04-03 14:57:23', 12, 1),
    ('tabletca', 'Virtuos Spike', '2024-04-04 08:36:42', '2024-04-04 08:36:42', 14, 1),
    ('Peggystrum', 'Virtuos Spike', '2024-04-05 06:48:15', '2024-04-05 06:48:15', 16, 1),
    ('MuNEEEE', 'Virtuos Spike', '2024-04-01 22:24:58', '2024-04-01 22:24:58', 18, 1),
    ('RusVS', 'Virtuos Spike', '2024-04-03 14:57:23', '2024-04-03 14:57:23', 110, 21);
