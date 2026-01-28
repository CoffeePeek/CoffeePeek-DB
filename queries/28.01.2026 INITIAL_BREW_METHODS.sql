INSERT INTO "BrewMethods" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    (gen_random_uuid(), 'Эспрессо', NOW(), NOW()),
    (gen_random_uuid(), 'Американо', NOW(), NOW()),
    (gen_random_uuid(), 'Капучино', NOW(), NOW()),
    (gen_random_uuid(), 'Латте', NOW(), NOW()),
    (gen_random_uuid(), 'Флэт Уайт', NOW(), NOW()),
    (gen_random_uuid(), 'Раф', NOW(), NOW()),
    (gen_random_uuid(), 'Кортадо', NOW(), NOW()),
    (gen_random_uuid(), 'Макиато', NOW(), NOW()),

    -- Альтернативные методы
    (gen_random_uuid(), 'V60', NOW(), NOW()),
    (gen_random_uuid(), 'Chemex', NOW(), NOW()),
    (gen_random_uuid(), 'Аэропресс', NOW(), NOW()),
    (gen_random_uuid(), 'Френч-пресс', NOW(), NOW()),
    (gen_random_uuid(), 'Калита', NOW(), NOW()),
    (gen_random_uuid(), 'Турка', NOW(), NOW()),
    (gen_random_uuid(), 'Сифон', NOW(), NOW()),
    (gen_random_uuid(), 'Колд брю', NOW(), NOW()),
    (gen_random_uuid(), 'Фильтр-кофе', NOW(), NOW()),
    (gen_random_uuid(), 'Пуровер', NOW(), NOW())
ON CONFLICT DO NOTHING;