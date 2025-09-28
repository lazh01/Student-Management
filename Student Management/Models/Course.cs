using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student_Management.Models
{
    public class Course
    {
        public required int Id { get; set; }
        public required string Title { get; set; } = "";
        public int Credits { get; set; } = 0;
    }
}
