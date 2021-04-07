using EmployeeSalaryASPProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSalaryASPProject.MasterPage
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            
                Session["UserInfo"] = null;
                Response.Redirect("~/Auth_Authorization/login.aspx");
            

        }
    }
}