INSERT INTO "EquipmentCategories" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
(0, 'Espresso Machine', NOW(), NOW()),
(1, 'Grinder', NOW(), NOW()),
(2, 'Scale', NOW(), NOW()),
(3, 'Brewer', NOW(), NOW());


INSERT INTO "Equipments" ("Id", "Brand", "ModelName", "CategoryId", "Name", "IsCustom", "IsPrimary", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
-- --- ЭСПРЕССО-МАШИНЫ (CategoryId: 0) ---
(gen_random_uuid(), 'La Marzocco', 'Linea Classic S', 0, 'La Marzocco Linea Classic S', false, true, NOW(), NOW()),
(gen_random_uuid(), 'La Marzocco', 'Linea PB', 0, 'La Marzocco Linea PB', false, false, NOW(), NOW()),
(gen_random_uuid(), 'La Marzocco', 'Strada AV', 0, 'La Marzocco Strada AV', false, false, NOW(), NOW()),
(gen_random_uuid(), 'La Marzocco', 'KB90', 0, 'La Marzocco KB90', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Victoria Arduino', 'Black Eagle Maverick', 0, 'Victoria Arduino Black Eagle Maverick', false, true, NOW(), NOW()),
(gen_random_uuid(), 'Victoria Arduino', 'Eagle One', 0, 'Victoria Arduino Eagle One', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Slayer', 'Steam LP', 0, 'Slayer Steam LP', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Slayer', 'Espresso V3', 0, 'Slayer Espresso V3', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Kees van der Westen', 'Spirit', 0, 'Kees van der Westen Spirit', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Sanremo', 'Cafe Racer', 0, 'Sanremo Cafe Racer', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Modbar', 'Espresso AV', 0, 'Modbar Espresso AV', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Nuova Simonelli', 'Aurelia Wave', 0, 'Nuova Simonelli Aurelia Wave', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Synesso', 'MVP Hydra', 0, 'Synesso MVP Hydra', false, false, NOW(), NOW()),

-- --- КОФЕМОЛКИ (CategoryId: 1) ---
(gen_random_uuid(), 'Mahlkönig', 'EK43', 1, 'Mahlkönig EK43', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Mahlkönig', 'EK43 S', 1, 'Mahlkönig EK43 S', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Mahlkönig', 'E80W Grind-by-Weight', 1, 'Mahlkönig E80W Grind-by-Weight', false, true, NOW(), NOW()),
(gen_random_uuid(), 'Mahlkönig', 'E65S', 1, 'Mahlkönig E65S', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Victoria Arduino', 'Mythos One', 1, 'Victoria Arduino Mythos One', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Victoria Arduino', 'Mythos 2', 1, 'Victoria Arduino Mythos 2', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Mazzer', 'ZM', 1, 'Mazzer ZM', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Mazzer', 'Robur S', 1, 'Mazzer Robur S', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Anfim', 'SPII+', 1, 'Anfim SPII+', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Fiorenzato', 'F64 E', 1, 'Fiorenzato F64 E', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Eureka', 'Atom Excellence', 1, 'Eureka Atom Excellence', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Weber Workshops', 'EG-1', 1, 'Weber Workshops EG-1', false, false, NOW(), NOW()),

-- --- ВЕСЫ (CategoryId: 2) ---
(gen_random_uuid(), 'Acaia', 'Lunar', 2, 'Acaia Lunar', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Acaia', 'Pearl S', 2, 'Acaia Pearl S', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Felicita', 'Arc', 2, 'Felicita Arc', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Hiroia', 'Jimmy', 2, 'Hiroia Jimmy', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Timemore', 'Black Mirror', 2, 'Timemore Black Mirror', false, false, NOW(), NOW()),

-- --- ПУРОВЕРЫ / АЛЬТЕРНАТИВА (CategoryId: 3) ---
(gen_random_uuid(), 'Hario', 'V60-02', 3, 'Hario V60-02', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Chemex', 'Classic 6-Cup', 3, 'Chemex Classic 6-Cup', false, false, NOW(), NOW()),
(gen_random_uuid(), 'AeroPress', 'Original', 3, 'AeroPress Original', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Kalita', 'Wave 185', 3, 'Kalita Wave 185', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Origami', 'Dripper M', 3, 'Origami Dripper M', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Fellow', 'Stagg [X]', 3, 'Fellow Stagg [X]', false, false, NOW(), NOW()),
(gen_random_uuid(), 'April', 'Glass Dripper', 3, 'April Glass Dripper', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Trinity', 'Origin', 3, 'Trinity Origin', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Moccamaster', 'KBG Select', 3, 'Moccamaster KBG Select', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Fetco', 'CBS-2131XTS', 3, 'Fetco CBS-2131XTS', false, false, NOW(), NOW()),
(gen_random_uuid(), 'Marco', 'Jet 6', 3, 'Marco Jet 6', false, false, NOW(), NOW());