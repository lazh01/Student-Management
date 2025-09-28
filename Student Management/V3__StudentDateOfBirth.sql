BEGIN TRANSACTION;
ALTER TABLE "Students" ADD "DateOfBirth" TEXT NULL;

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20250928115305_student_date_of_birth', '9.0.9');

COMMIT;

