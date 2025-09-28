using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student_Management.Models
{
    public class Course
    {
        public required int Id { get; set; }
        public required string Title { get; set; } = "";
        [Column(TypeName = "decimal(5,2)")]
        public double Credits { get; set; } = 0;
        public int InstructorId { get; set; }
    }
}
