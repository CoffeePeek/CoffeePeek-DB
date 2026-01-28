INSERT INTO "Equipments" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    -- Кофемашины
    (gen_random_uuid(), 'La Marzocco Linea PB', NOW(), NOW()),
    (gen_random_uuid(), 'Victoria Arduino Black Eagle', NOW(), NOW()),
    (gen_random_uuid(), 'Synesso MVP Hydra', NOW(), NOW()),
    (gen_random_uuid(), 'Slayer Espresso', NOW(), NOW()),
    (gen_random_uuid(), 'Nuova Simonelli Aurelia', NOW(), NOW()),
    (gen_random_uuid(), 'Sanremo Cafe Racer', NOW(), NOW()),
    (gen_random_uuid(), 'Dalla Corte DC Pro', NOW(), NOW()),

    -- Кофемолки
    (gen_random_uuid(), 'Mahlkönig EK43', NOW(), NOW()),
    (gen_random_uuid(), 'Mazzer Kony', NOW(), NOW()),
    (gen_random_uuid(), 'Eureka Atom', NOW(), NOW()),
    (gen_random_uuid(), 'Compak E8', NOW(), NOW()),
    (gen_random_uuid(), 'Baratza Sette 270', NOW(), NOW()),
    (gen_random_uuid(), 'Fiorenzato F64 Evo', NOW(), NOW()),

    -- Альтернативное оборудование
    (gen_random_uuid(), 'Chemex', NOW(), NOW()),
    (gen_random_uuid(), 'Hario V60', NOW(), NOW()),
    (gen_random_uuid(), 'Aeropress', NOW(), NOW()),
    (gen_random_uuid(), 'French Press', NOW(), NOW()),
    (gen_random_uuid(), 'Калита Wave', NOW(), NOW()),
    (gen_random_uuid(), 'Сифон', NOW(), NOW()),

    -- Другое
    (gen_random_uuid(), 'Marco SP9', NOW(), NOW()),
    (gen_random_uuid(), 'Бойлер Marco', NOW(), NOW()),
    (gen_random_uuid(), 'Весы Acaia Lunar', NOW(), NOW()),
    (gen_random_uuid(), 'Refractometer', NOW(), NOW())
ON CONFLICT DO NOTHING;