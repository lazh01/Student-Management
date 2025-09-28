BEGIN TRANSACTION;
CREATE TABLE "ef_temp_Students" (
    "Id" INTEGER NOT NULL CONSTRAINT "PK_Students" PRIMARY KEY AUTOINCREMENT,
    "Email" TEXT NOT NULL,
    "EnrollmentDate" TEXT NOT NULL,
    "FirstName" TEXT NOT NULL,
    "LastName" TEXT NOT NULL,
    "MiddleName" TEXT NULL
);

INSERT INTO "ef_temp_Students" ("Id", "Email", "EnrollmentDate", "FirstName", "LastName", "MiddleName")
SELECT "Id", "Email", "EnrollmentDate", "FirstName", "LastName", "MiddleName"
FROM "Students";

COMMIT;

PRAGMA foreign_keys = 0;

BEGIN TRANSACTION;
DROP TABLE "Students";

ALTER TABLE "ef_temp_Students" RENAME TO "Students";

COMMIT;

PRAGMA foreign_keys = 1;

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20250928114217_student_middle_name', '9.0.9');

