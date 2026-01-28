insert into "Roles" ("Id", "Name", "CreatedAtUtc", "UpdatedAtUtc")
values
    (gen_random_uuid(), 'User', now(), now()),
    (gen_random_uuid(), 'Admin', now(), now()),
    (gen_random_uuid(), 'Moderator', now(), now()),
    (gen_random_uuid(), 'Owner', now(), now()),
    (gen_random_uuid(), 'Employee', now(), now()),
    (gen_random_uuid(), 'Roaster', now(), now())
