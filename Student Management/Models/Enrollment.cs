using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student_Management.Models
{
    public class Enrollment
    {
        public required int Id { get; set; }
        public required int StudentId { get; set; }
        public required int CourseId { get; set; }
        public double Grade { get; set; }

    }
}
