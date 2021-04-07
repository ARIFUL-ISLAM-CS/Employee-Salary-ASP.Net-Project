namespace EmployeeSalaryASPProject.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Employee_Details
    {
        [Key]
        public int Emp_ID { get; set; }

        [StringLength(25)]
        public string Emp_Name { get; set; }

        [StringLength(25)]
        public string Emp_Gender { get; set; }

        public DateTime? Emp_DOB { get; set; }

        [StringLength(40)]
        public string Emp_Address { get; set; }

        [StringLength(25)]
        public string Emp_Email { get; set; }

        public int? Emp_Contact { get; set; }

        [StringLength(250)]
        public string Emp_Pic { get; set; }

        public int? Emp_Basic_Salary { get; set; }

        public DateTime? Emp_Joining { get; set; }

        [StringLength(20)]
        public string Designation_Name { get; set; }

        [StringLength(20)]
        public string Department_Name { get; set; }

        [StringLength(20)]
        public string Gender_Name { get; set; }
    }
}
