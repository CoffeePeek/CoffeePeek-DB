INSERT INTO "CoffeeBeans" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    -- Происхождение
    (gen_random_uuid(), 'Эфиопия', NOW(), NOW()),
    (gen_random_uuid(), 'Колумбия', NOW(), NOW()),
    (gen_random_uuid(), 'Бразилия', NOW(), NOW()),
    (gen_random_uuid(), 'Кения', NOW(), NOW()),
    (gen_random_uuid(), 'Гватемала', NOW(), NOW()),
    (gen_random_uuid(), 'Коста-Рика', NOW(), NOW()),
    (gen_random_uuid(), 'Перу', NOW(), NOW()),
    (gen_random_uuid(), 'Индонезия', NOW(), NOW()),
    (gen_random_uuid(), 'Вьетнам', NOW(), NOW()),
    (gen_random_uuid(), 'Индия', NOW(), NOW()),
    (gen_random_uuid(), 'Руанда', NOW(), NOW()),
    (gen_random_uuid(), 'Бурунди', NOW(), NOW()),
    (gen_random_uuid(), 'Танзания', NOW(), NOW()),
    (gen_random_uuid(), 'Панама', NOW(), NOW()),
    (gen_random_uuid(), 'Сальвадор', NOW(), NOW()),
    (gen_random_uuid(), 'Гондурас', NOW(), NOW()),
    (gen_random_uuid(), 'Никарагуа', NOW(), NOW()),
    (gen_random_uuid(), 'Мексика', NOW(), NOW()),
    (gen_random_uuid(), 'Йемен', NOW(), NOW()),

    -- Виды
    (gen_random_uuid(), 'Арабика', NOW(), NOW()),
    (gen_random_uuid(), 'Робуста', NOW(), NOW()),
    (gen_random_uuid(), 'Либерика', NOW(), NOW()),

    -- Разновидности
    (gen_random_uuid(), 'Typica', NOW(), NOW()),
    (gen_random_uuid(), 'Bourbon', NOW(), NOW()),
    (gen_random_uuid(), 'Caturra', NOW(), NOW()),
    (gen_random_uuid(), 'Catuai', NOW(), NOW()),
    (gen_random_uuid(), 'Geisha', NOW(), NOW()),
    (gen_random_uuid(), 'SL28', NOW(), NOW()),
    (gen_random_uuid(), 'SL34', NOW(), NOW()),
    (gen_random_uuid(), 'Pacamara', NOW(), NOW()),

    -- Обработка
    (gen_random_uuid(), 'Мытая обработка', NOW(), NOW()),
    (gen_random_uuid(), 'Натуральная обработка', NOW(), NOW()),
    (gen_random_uuid(), 'Хани обработка', NOW(), NOW()),
    (gen_random_uuid(), 'Анаэробная ферментация', NOW(), NOW()),

    -- Блэнды
    (gen_random_uuid(), 'Эспрессо-смесь', NOW(), NOW()),
    (gen_random_uuid(), 'Фильтр-смесь', NOW(), NOW())
ON CONFLICT DO NOTHING;