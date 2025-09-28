IF DB_ID('StudentManagementDB') IS NULL
    CREATE DATABASE StudentManagementDB;
GO

use StudentManagementDB;


Create Table Students (
	Id int Primary Key Identity(1,1),
	FirstName nvarchar(50) Not Null,
	MiddleName nvarchar(50),
	LastName nvarchar(50) Not Null,
	Email nvarchar(100) Unique Not Null,
	DateOfBirth Date
);

Create Table Courses (
	Id int Primary Key Identity(1,1),
	Title nvarchar(100) Not Null,
	Credits int Not Null
);

Create Table Enrollments (
	Id int Primary Key Identity(1,1),
	StudentId int Not Null Foreign Key References Students(Id) On Delete Cascade,
	CourseId int Not Null Foreign Key References Courses(Id) On Delete Cascade,
	Grade float Null
);