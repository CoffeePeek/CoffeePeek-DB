INSERT INTO "BrewMethods" ("Id", "Name", "Category", "CreatedAtUtc", "UpdatedAtUtc")
VALUES
    -- Category: Pressure (1)
    (gen_random_uuid(), 'Espresso', 1, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Aeropress', 1, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Moka Pot', 1, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Flair Manual Espresso', 1, CURRENT_TIMESTAMP, NULL),

    -- Category: Gravity (2)
    (gen_random_uuid(), 'Hario V60', 2, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Chemex', 2, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Kalita Wave', 2, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Origami Dripper', 2, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Batch Brew', 2, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Woodneck (Nel Drip)', 2, CURRENT_TIMESTAMP, NULL),

    -- Category: Immersion (3)
    (gen_random_uuid(), 'French Press', 3, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Clever Dripper', 3, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'AeroPress (Inverted)', 3, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Cold Brew', 3, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Siphon', 3, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'SoftBrew', 3, CURRENT_TIMESTAMP, NULL),

    -- Category: Traditional (4)
    (gen_random_uuid(), 'Cezve (Turkish Coffee)', 4, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Jebena', 4, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Phin (Vietnamese Drip)', 4, CURRENT_TIMESTAMP, NULL),
    (gen_random_uuid(), 'Karlsbad Device', 4, CURRENT_TIMESTAMP, NULL);