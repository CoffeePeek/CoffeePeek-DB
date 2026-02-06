INSERT INTO "EquipmentCategories" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    (1, 'Эспрессо-машины', NOW(), NOW()),
    (2, 'Кофемолки для эспрессо', NOW(), NOW()),
    (3, 'Универсальные/Bulk кофемолки', NOW(), NOW()),
    (4, 'Альтернативное заваривание', NOW(), NOW()),
    (5, 'Фильтр-системы (Batch Brew)', NOW(), NOW()),
    (6, 'Водоподготовка и бойлеры', NOW(), NOW()),
    (7, 'Весы и измерительные приборы', NOW(), NOW()),
    (8, 'Холодное заваривание (Cold Brew)', NOW(), NOW()),
    (9, 'Другое', NOW(), NOW())
ON CONFLICT ("Id") DO NOTHING;


INSERT INTO "Equipments"
("Id", "Name", "Brand", "ModelName", "IsCustom", "IsPrimary", "CategoryId", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    -- 1. Эспрессо-машины
    (gen_random_uuid(), 'La Marzocco Linea PB', 'La Marzocco', 'Linea PB', false, true, 1, NOW(), NOW()),
    (gen_random_uuid(), 'Victoria Arduino Black Eagle', 'Victoria Arduino', 'Black Eagle', false, true, 1, NOW(), NOW()),
    (gen_random_uuid(), 'Synesso MVP Hydra', 'Synesso', 'MVP Hydra', false, true, 1, NOW(), NOW()),
    (gen_random_uuid(), 'Slayer Espresso', 'Slayer', 'Espresso', false, true, 1, NOW(), NOW()),
    (gen_random_uuid(), 'Modbar Espresso AV', 'Modbar', 'Espresso AV', false, true, 1, NOW(), NOW()),

    -- 2. Кофемолки для эспрессо
    (gen_random_uuid(), 'Mazzer Kony', 'Mazzer', 'Kony', false, true, 2, NOW(), NOW()),
    (gen_random_uuid(), 'Anfim SPII Special Performance', 'Anfim', 'SPII', false, true, 2, NOW(), NOW()),
    (gen_random_uuid(), 'Nuova Simonelli Mythos One', 'Nuova Simonelli', 'Mythos One', false, true, 2, NOW(), NOW()),
    (gen_random_uuid(), 'Fiorenzato F64 Evo', 'Fiorenzato', 'F64 Evo', false, true, 2, NOW(), NOW()),

    -- 3. Универсальные/Bulk кофемолки
    (gen_random_uuid(), 'Mahlkönig EK43', 'Mahlkönig', 'EK43', false, true, 3, NOW(), NOW()),
    (gen_random_uuid(), 'Ditting 807 Lab Sweet', 'Ditting', '807 Lab Sweet', false, true, 3, NOW(), NOW()),

    -- 4. Альтернативное заваривание
    (gen_random_uuid(), 'Chemex Classic 6-cup', 'Chemex', 'Classic', false, false, 4, NOW(), NOW()),
    (gen_random_uuid(), 'Hario V60-02 Glass', 'Hario', 'V60', false, false, 4, NOW(), NOW()),
    (gen_random_uuid(), 'AeroPress Coffee Maker', 'AeroPress', 'Original', false, false, 4, NOW(), NOW()),
    (gen_random_uuid(), 'Kalita Wave 185', 'Kalita', 'Wave 185', false, false, 4, NOW(), NOW()),

    -- 5. Фильтр-системы (Batch Brew)
    (gen_random_uuid(), 'Moccamaster KBGT', 'Technivorm', 'Moccamaster', false, true, 5, NOW(), NOW()),
    (gen_random_uuid(), 'Fetco CBS-2131XTS', 'Fetco', 'CBS-2131XTS', false, true, 5, NOW(), NOW()),
    (gen_random_uuid(), 'Curtis G4 Gold Cup', 'Curtis', 'G4', false, true, 5, NOW(), NOW()),

    -- 6. Водоподготовка и бойлеры
    (gen_random_uuid(), 'Marco Ecoboiler T10', 'Marco', 'Ecoboiler T10', false, true, 6, NOW(), NOW()),
    (gen_random_uuid(), 'BWT Bestmax Premium', 'BWT', 'Bestmax', false, true, 6, NOW(), NOW()),

    -- 7. Весы и измерительные приборы
    (gen_random_uuid(), 'Acaia Lunar 2021', 'Acaia', 'Lunar', false, false, 7, NOW(), NOW()),
    (gen_random_uuid(), 'Acaia Pearl', 'Acaia', 'Pearl', false, false, 7, NOW(), NOW()),
    (gen_random_uuid(), 'VST Refractometer', 'VST', 'Coffee III', false, false, 7, NOW(), NOW()),
    (gen_random_uuid(), 'Felicita Arc', 'Felicita', 'Arc', false, false, 7, NOW(), NOW()),

    -- 8. Cold Brew
    (gen_random_uuid(), 'Toddy Cold Brew System', 'Toddy', 'Commercial Model', false, false, 8, NOW(), NOW()),

    -- 9. Аксессуары и химия
    (gen_random_uuid(), 'Puqpress Q2', 'Puqpress', 'Q2', false, false, 9, NOW(), NOW()),
    (gen_random_uuid(), 'Tamper Pullman BigStep', 'Pullman', 'BigStep', false, false, 9, NOW(), NOW()),
    (gen_random_uuid(), 'Pitcher Jibbi Little', 'Jibbi Little', 'Space', false, false, 9, NOW(), NOW()),
    (gen_random_uuid(), 'Cafiza Cleaner', 'Urnex', 'Cafiza', false, false, 9, NOW(), NOW()),
    (gen_random_uuid(), 'Rinza Milk Cleaner', 'Urnex', 'Rinza', false, false, 9, NOW(), NOW())

ON CONFLICT DO NOTHING;