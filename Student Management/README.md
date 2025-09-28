Change Based:

- feat/initial-schema-ef:  
    Defined data models for Entity Framework  
    Defined relationships between entities in the DbContext  
    Created migration InitialCreate and made sql file V1__InitialCreate.sql  

- feat/student-middle-name:  
    Added MiddleName property to Student entity  
    Chose to make MiddleName nullable to accommodate students without a middle name, and migration of old data  
    Created migration student_middle_name and made sql file V2__StudentMiddleName.sql  

- feat/student-birthdate:  
    Added BirthDate property to Student entity  
    Chose to make BirthDate nullable to accommodate students who may not want to disclose their birth date, and migration of old data  
    Created migration student_date_of_birth and made sql file V3__StudentDateOfBirth.sql  

- feat/add-instructor:  
    Added Instructor entity and changed Course  
    Established one-to-many relationship between Instructor and Course entities  
    Created migration add_instructor and made sql file V4__Instructor.sql  

- feat/rename-grade:  
    Renamed Grade to FinalGrade  
    Created migration rename_grade and made sql file V5__FinalGrade.sql  
    When renaming the field the migration detected that the column was being renamed, and as such the old data would be preserved  
    Resulting in a non-destructive migration  

- feat/add-department:  
    Added Department entity and defined foreign key to departmenthead/instructor  
    Created migration add-department and made sql file V6__Department.sql  

- feat/modify-course-credits:  
    Modified course credits to be decimal(5,2)  
    Created migration modify-course-credits and made sql file V7__CourseCreditsDecimal.sql  
    Previously this was int so any number greater than 999.99 would be lost  
    Since decimal(5,2) fits most real life scenarios for course credits, it is assumed that this is a non-destructive migration  
    And if it is not then it will be picked up when trying to migrate, and it can be fixed then  
    A good addition to this schema could be a constraint that more concretely bounds the values of course credits, to make the schema more transparent and robust
State Based:
- feat/initial-schema-state:  
    Implemented schema for student, course, enrollment
    state definition script in V1__InitialCreate.sql
- feat/student-middle-name-state:  
    Added MiddleName column to Student table
    state definition script in V2__StudentMiddleName.sql
- feat/student-birthdate-state:  
    Added BirthDate column to Student table
    state definition script in V3__StudentDateOfBirth.sql
- feat/add-instructor-state:  
    Created Instructor table and added foreign key to Course table
    state definition script in V4__Instructor.sql