BEGIN TRANSACTION;  -- Начало транзакции (ВНЕ блока DO)

DO $$
DECLARE belarusCountryId INT;
DECLARE minskCityId INT;
DECLARE nekrasovaStreetId INT;
DECLARE bogdanaKhmelnitskogoStreetId INT;
DECLARE kofeyokAddressId INT;
DECLARE coffeeProfileAddressId INT;
DECLARE kofeyokCoffeeShopId INT;
DECLARE coffeeProfileCoffeeShopId INT;
BEGIN

  ---- Вставка страны
  INSERT INTO "Countries" ("Name", "CreatedAt") VALUES ('Беларусь', CURRENT_DATE);
  SELECT "Id" INTO belarusCountryId FROM "Countries" WHERE "Name" = 'Беларусь';

  -- Вставка города
  INSERT INTO "Cities" ("Name", "CountryId", "CreatedAt") VALUES ('Минск', belarusCountryId, CURRENT_DATE);
  INSERT INTO "Cities" ("Name", "CountryId", "CreatedAt") VALUES ('Витебск', belarusCountryId, CURRENT_DATE);
  INSERT INTO "Cities" ("Name", "CountryId", "CreatedAt") VALUES ('Брест', belarusCountryId, CURRENT_DATE);
  INSERT INTO "Cities" ("Name", "CountryId", "CreatedAt") VALUES ('Баранович', belarusCountryId, CURRENT_DATE);
  INSERT INTO "Cities" ("Name", "CountryId", "CreatedAt") VALUES ('Гродно', belarusCountryId, CURRENT_DATE);
  SELECT "Id" INTO minskCityId FROM "Cities" WHERE "Name" = 'Минск';

  -- Вставка улиц
  INSERT INTO "Streets" ("Name", "CityId", "CreatedAt") VALUES ('Некрасова', minskCityId, CURRENT_DATE);
  INSERT INTO "Streets" ("Name", "CityId", "CreatedAt") VALUES ('Богдана Хмельницкого', minskCityId, CURRENT_DATE);
  SELECT "Id" INTO nekrasovaStreetId FROM "Streets" WHERE "Name" = 'Некрасова' AND "CityId" = minskCityId;
  SELECT "Id" INTO bogdanaKhmelnitskogoStreetId FROM "Streets" WHERE "Name" = 'Богдана Хмельницкого' AND "CityId" = minskCityId;

  -- Вставка адресов
  INSERT INTO "Addresses" ("CityId", "StreetId", "BuildingNumber", "CreatedAt") VALUES (minskCityId, nekrasovaStreetId, '10', CURRENT_DATE);
  SELECT "Id" INTO kofeyokAddressId FROM "Addresses" WHERE "CityId" = minskCityId AND "StreetId" = nekrasovaStreetId AND "BuildingNumber" = '10';
  INSERT INTO "Addresses" ("CityId", "StreetId", "BuildingNumber", "CreatedAt") VALUES (minskCityId, bogdanaKhmelnitskogoStreetId, '8', CURRENT_DATE);
  SELECT "Id" INTO coffeeProfileAddressId FROM "Addresses" WHERE "CityId" = minskCityId AND "StreetId" = bogdanaKhmelnitskogoStreetId AND "BuildingNumber" = '8';

  -- Вставка кофеен
  INSERT INTO "Shops" ("Name", "AddressId", "Status", "CreatedAt") VALUES ('Кофеёк', kofeyokAddressId, 1, CURRENT_DATE);
  SELECT "Id" INTO kofeyokCoffeeShopId FROM "Shops" WHERE "Name" = 'Кофеёк';
  INSERT INTO "Shops" ("Name", "AddressId", "Status", "CreatedAt") VALUES ('Кофе Профиль', coffeeProfileAddressId, 1, CURRENT_DATE);
  SELECT "Id" INTO coffeeProfileCoffeeShopId FROM "Shops" WHERE "Name" = 'Кофе Профиль';

  -- Вставка расписания
  INSERT INTO "Schedules" ("ShopId", "DayOfWeek", "OpeningTime", "ClosingTime", "IsOpen24Hours", "CreatedAt") VALUES (kofeyokCoffeeShopId, 1, '09:00:00', '21:00:00', false, CURRENT_DATE);
  INSERT INTO "Schedules" ("ShopId", "DayOfWeek", "OpeningTime", "ClosingTime", "IsOpen24Hours", "CreatedAt") VALUES (coffeeProfileCoffeeShopId, 1, '08:00:00', '18:00:00', false, CURRENT_DATE);


  -- Выборка для проверки результатов
  Perform
      cs."Name" AS Name,
      a."BuildingNumber" AS BuildingNumber,
      st."Name" AS StreetName,
      c."Name" AS CityName,
      cn."Name" AS CountryName,
      s."OpeningTime" AS OpeningTime,
      s."ClosingTime" AS ClosingTime
  FROM "Shops" cs
  JOIN "Addresses" a ON cs."AddressId" = a."Id"
  JOIN "Streets" st ON a."StreetId" = st."Id"
  JOIN "Cities" c ON st."CityId" = c."Id"
  JOIN "Countries" cn ON c."CountryId" = cn."Id"
  LEFT JOIN "Schedules" s ON cs."Id" = s."ShopId"
  WHERE cs."Id" IN (13, 14);

END $$;

COMMIT TRANSACTION;  -- Фиксация транзакции (ВНЕ блока DO)


BEGIN TRANSACTION;


DO $$
DECLARE i INT;
DECLARE belarusCountryId INT;
DECLARE minskCityId INT;
DECLARE nekrasovaStreetId INT;
DECLARE bogdanaKhmelnitskogoStreetId INT;
DECLARE kofeyokAddressId INT;
DECLARE coffeeProfileAddressId INT;
DECLARE kofeyokCoffeeShopId INT;
DECLARE coffeeProfileCoffeeShopId INT;
BEGIN

  -- Вставка страны (если ее еще нет)
  INSERT INTO "Countries" ("Name", "CreatedAt")
  SELECT 'Беларусь', CURRENT_DATE
  WHERE NOT EXISTS (SELECT 1 FROM "Countries" WHERE "Name" = 'Беларусь');
  SELECT "Id" INTO belarusCountryId FROM "Countries" WHERE "Name" = 'Беларусь';

  -- Вставка города (если его еще нет)
  INSERT INTO "Cities" ("Name", "CountryId")
  SELECT 'Минск', belarusCountryId
  WHERE NOT EXISTS (SELECT 1 FROM "Cities" WHERE "Name" = 'Минск');
  SELECT "Id" INTO minskCityId FROM "Cities" WHERE "Name" = 'Минск';

  FOR i IN 1..20 LOOP
    -- Генерация случайных данных

    -- Вставка улиц (случайные названия)
    INSERT INTO "Streets" ("Name", "CityId", "CreatedAt") VALUES ('Улица ' || i::text, minskCityId, current_date);
    INSERT INTO "Streets" ("Name", "CityId", "CreatedAt") VALUES ('Проспект ' || i::text, minskCityId, current_date);
    SELECT "Id" INTO nekrasovaStreetId FROM "Streets" WHERE "Name" = 'Улица ' || i::text AND "CityId" = minskCityId;  -- <--- ВОТ ТУТ НУЖНО БЫЛО ИСПРАВИТЬ
    SELECT "Id" INTO bogdanaKhmelnitskogoStreetId FROM "Streets" WHERE "Name" = 'Проспект ' || i::text AND "CityId" = minskCityId; -- <--- И ТУТ

    -- Вставка адресов (случайные номера домов)
    INSERT INTO "Addresses" ("CityId", "StreetId", "BuildingNumber", "CreatedAt") VALUES (minskCityId, nekrasovaStreetId, i::text, current_date);
    SELECT "Id" INTO kofeyokAddressId FROM "Addresses" WHERE "CityId" = minskCityId AND "StreetId" = nekrasovaStreetId AND "BuildingNumber" = i::text;
    INSERT INTO "Addresses" ("CityId", "StreetId", "BuildingNumber", "CreatedAt") VALUES (minskCityId, bogdanaKhmelnitskogoStreetId, (i * 2)::text, current_date);
    SELECT "Id" INTO coffeeProfileAddressId FROM "Addresses" WHERE "CityId" = minskCityId AND "StreetId" = bogdanaKhmelnitskogoStreetId AND "BuildingNumber" = (i * 2)::text;


    -- Вставка кофеен (случайные названия)
    INSERT INTO "Shops" ("Name", "AddressId", "Status", "CreatedAt") VALUES ('Кофе ' || i::text, kofeyokAddressId, 1, current_date);
    SELECT "Id" INTO kofeyokCoffeeShopId FROM "Shops" WHERE "Name" = 'Кофе ' || i::text;
    INSERT INTO "Shops" ("Name", "AddressId", "Status", "CreatedAt") VALUES ('Кофейня ' || i::text, coffeeProfileAddressId, 2, current_date);
    SELECT "Id" INTO coffeeProfileCoffeeShopId FROM "Shops" WHERE "Name" = 'Кофейня ' || i::text;

    -- Вставка расписания (можно сделать случайным)
    INSERT INTO "Schedules" ("ShopId", "DayOfWeek", "OpeningTime", "ClosingTime", "IsOpen24Hours", "CreatedAt") VALUES (kofeyokCoffeeShopId, 1, '09:00:00', '21:00:00', false, current_date);
    INSERT INTO "Schedules" ("ShopId", "DayOfWeek", "OpeningTime", "ClosingTime", "IsOpen24Hours", "CreatedAt") VALUES (coffeeProfileCoffeeShopId, 1, '08:00:00', '18:00:00', false, current_date);
  END LOOP;

  -- Выборка для проверки результатов (можно изменить)
  PERFORM * FROM "Shops";

END $$;

COMMIT TRANSACTION;


INSERT INTO "ShopPhoto" ("Url", "ShopId", "CreatedAt")
SELECT 'https://habrastorage.org/webt/jk/vy/z6/jkvyz62astocejwzu4ftlqxhl_0.jpeg', s."Id", current_date  -- Замените 'your_default_url' на нужный URL
FROM "Shops" s
WHERE NOT EXISTS (
    SELECT 1
    FROM "ShopPhoto" sp
    WHERE sp."ShopId" = s."Id"
);