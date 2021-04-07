using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace EmployeeSalaryASPProject.Content
{
    public class ObjectDSListClass
    {
        public DataSet GetEmployeeDetails()
        {
            string constring = $"Data Source=desktop-n7pu9bj;Initial Catalog=Emp_SalaryDB;Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(constring);
            string query = "select * from Employee_Details";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = query;
            sqlcmd.Connection = sqlcon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}