namespace EmployeeSalaryASPProject.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Employee_Details> Employee_Details { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Emp_Name)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Emp_Gender)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Emp_Address)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Emp_Email)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Emp_Pic)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Designation_Name)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Department_Name)
                .IsUnicode(false);

            modelBuilder.Entity<Employee_Details>()
                .Property(e => e.Gender_Name)
                .IsUnicode(false);
        }
    }
}
