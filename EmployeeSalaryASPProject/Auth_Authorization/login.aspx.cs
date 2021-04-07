using EmployeeSalaryASPProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSalaryASPProject.Auth_Authorization
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "")
            {
                txtUserNameMsg.Text = "Username cannot be empty.";
            }
            if (txtUserPass.Text.Trim() == "")
            {
                txtUserPassMsg.Text = "Password cannot be empty.";
            }

            if (txtUserName.Text.Trim() != "" && txtUserPass.Text.Trim() != "")
            {
                var ctx = new Model2();
                var oUserInfo = (from u in ctx.UserInfoes
                                 where u.UserName == txtUserName.Text.Trim() && u.Password == txtUserPass.Text.Trim()
                                 select u)
                    .FirstOrDefault();

                if (oUserInfo == null)
                {

                    errorMsg.Text = "Username or Password cannot matched.";
                }
                else
                {
                    Session["UserInfo"] = oUserInfo;
                    Response.Redirect("~/WebPages/Emp_Add.aspx");
                }
            }
        }

    }
}
