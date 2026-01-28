INSERT INTO "Roasters" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    -- Российские обжарщики
    (gen_random_uuid(), 'Torrefacto', NOW(), NOW()),
    (gen_random_uuid(), 'Tasty Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Bravos', NOW(), NOW()),
    (gen_random_uuid(), 'Soyuz Coffee Roasting', NOW(), NOW()),
    (gen_random_uuid(), 'Kamchatka Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Skuratov Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Gutenberg Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Cooperative Black Drop', NOW(), NOW()),
    (gen_random_uuid(), 'Doughnut Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Rocket Bean Roastery', NOW(), NOW()),
    (gen_random_uuid(), 'Anaerobic Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Double B Coffee Roasters', NOW(), NOW()),
    (gen_random_uuid(), 'Neva Coffee Roasters', NOW(), NOW()),
    (gen_random_uuid(), 'Surf Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Loft Coffee Roasters', NOW(), NOW()),
    (gen_random_uuid(), 'Good Karma Coffee', NOW(), NOW()),
    (gen_random_uuid(), 'Sibaristica', NOW(), NOW()),
    (gen_random_uuid(), 'April Coffee Roasters', NOW(), NOW()),

    -- Международные обжарщики
    (gen_random_uuid(), 'Illy', NOW(), NOW()),
    (gen_random_uuid(), 'Lavazza', NOW(), NOW()),
    (gen_random_uuid(), 'Intelligentsia', NOW(), NOW()),
    (gen_random_uuid(), 'Blue Bottle', NOW(), NOW()),
    (gen_random_uuid(), 'Counter Culture', NOW(), NOW()),
    (gen_random_uuid(), 'Stumptown', NOW(), NOW()),
    (gen_random_uuid(), 'Square Mile', NOW(), NOW()),
    (gen_random_uuid(), 'Has Bean', NOW(), NOW()),
    (gen_random_uuid(), 'Tim Wendelboe', NOW(), NOW()),
    (gen_random_uuid(), 'The Barn', NOW(), NOW()),
    (gen_random_uuid(), 'Five Elephant', NOW(), NOW()),

    -- Собственная обжарка
    (gen_random_uuid(), 'Собственная обжарка', NOW(), NOW())
ON CONFLICT DO NOTHING;