DROP TABLE IF EXISTS favourite_maps CASCADE;
CREATE TABLE favourite_maps (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  map_id INTEGER NOT NULL REFERENCES maps(id) ON DELETE CASCADE,
  CONSTRAINT favourite_maps_unique UNIQUE (user_id, map_id)
);
