BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS "diagrams" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "key"	        TEXT NOT NULL,
  "diagram"	    TEXT NOT NULL,
  "created_at"  TEXT NOT NULL DEFAULT '',
  "updated_at"	TEXT NOT NULL DEFAULT ''
);

COMMIT;