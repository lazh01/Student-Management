using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student_Management.Models
{
    public class Department
    {
        public required int Id { get; set; }
        public required string Name { get; set; }
        public required int Budget { get; set; }
        public DateOnly StartDate { get; set; }
        public int? DepartmentHead { get; set; }
    }
}
