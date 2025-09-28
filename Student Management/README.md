Change Based:
    feat/initial-schema-ef:
        Defined data models for Entity Framework
        Defined relationships between entities in the DbContext
        Created migration InitialCreate and made sqkl file V1__InitialCreate.sql
    feat/student-middle-name:
        Added MiddleName property to Student entity
        Chose to make MiddleName nullable to accommodate students without a middle name, and migration of old data
        Created migration student_middle_name and made sql file V2__StudentMiddleName.sql