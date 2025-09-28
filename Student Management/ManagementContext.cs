using Microsoft.EntityFrameworkCore;
using Student_Management.Models;

namespace Student_Management
{
    public class ManagementContext : DbContext
    {
        public DbSet<Student> Students { get; set; }
        public DbSet<Course> Courses { get; set; }
        public DbSet<Enrollment> Enrollments { get; set; }
        public DbSet<Instructor> Instructors { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlite("Data Source=School.db");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //student primary key
            modelBuilder.Entity<Student>()
                .HasKey(s => s.Id);
            //course primary key
            modelBuilder.Entity<Course>()
                .HasKey(c => c.Id);
            //enrollment primary key and relationships
            modelBuilder.Entity<Enrollment>()
                .HasKey(e => e.Id);

            modelBuilder.Entity<Enrollment>()
                .HasOne<Student>()
                .WithMany()
                .HasForeignKey(e => e.StudentId);

            modelBuilder.Entity<Enrollment>()
                .HasOne<Course>()
                .WithMany()
                .HasForeignKey(e => e.CourseId);

            //instructor primary key
            modelBuilder.Entity<Instructor>()
                .HasKey(i => i.Id);
            //course instructor relationship
            modelBuilder.Entity<Course>()
                .HasOne<Instructor>()
                .WithMany()
                .HasForeignKey(c => c.InstructorId);
        }
    }
}
