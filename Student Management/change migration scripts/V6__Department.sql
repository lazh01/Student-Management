BEGIN TRANSACTION;
CREATE TABLE "Departments" (
    "Id" INTEGER NOT NULL CONSTRAINT "PK_Departments" PRIMARY KEY AUTOINCREMENT,
    "Name" TEXT NOT NULL,
    "Budget" INTEGER NOT NULL,
    "StartDate" TEXT NOT NULL,
    "DepartmentHead" INTEGER NULL,
    CONSTRAINT "FK_Departments_Instructors_DepartmentHead" FOREIGN KEY ("DepartmentHead") REFERENCES "Instructors" ("Id")
);

CREATE INDEX "IX_Departments_DepartmentHead" ON "Departments" ("DepartmentHead");

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20250928124454_add-department', '9.0.9');

COMMIT;

