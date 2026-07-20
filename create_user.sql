DO $$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'waypoint_user') THEN
      CREATE ROLE waypoint_user WITH LOGIN PASSWORD 'waypoint_password';
   END IF;
END
$$;

ALTER ROLE waypoint_user WITH SUPERUSER; -- Make superuser so they can create extensions or do anything needed in local dev.
