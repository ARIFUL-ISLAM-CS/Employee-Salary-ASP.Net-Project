using EmployeeSalaryASPProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSalaryASPProject.Auth_Authorization
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "")
            {
                txtUserNameMsg.Text = "Username cannot be empty.";
            }
            if (txtUserPass.Text.Trim() == "")
            {
                txtUserPassMsg.Text = "Password cannot be empty.";
            }
            if (txtFullName.Text.Trim() == "")
            {
                txtFullNameMsg.Text = "Name cannot be empty.";
            }
            if (txtMobile.Text.Trim() == "")
            {
                txtMobileMsg.Text = "Mobile cannot be empty.";
            }
            if (txtEmail.Text.Trim() == "")
            {
                txtEmailMsg.Text = "Email cannot be empty.";
            }

            if (txtUserName.Text.Trim() != "" && txtUserPass.Text.Trim() != ""
                && txtFullName.Text.Trim() != "" && txtMobile.Text.Trim() != ""
                && txtEmail.Text.Trim() != "")
            {
                var ctx = new Model2();
                var oUserInfoExist = (from u in ctx.UserInfoes
                                      where u.UserName == txtUserName.Text.Trim()
                                      select u)
                    .FirstOrDefault();
                if (oUserInfoExist != null)
                {
                    errorMsg.ForeColor = System.Drawing.Color.Red;
                    errorMsg.Text = "Username already exist.";
                }
                else
                {
                    var oUserInfo = new UserInfo();
                    oUserInfo.Address = txtAddress.Text.Trim();
                    oUserInfo.Email = txtEmail.Text.Trim();
                    oUserInfo.FullName = txtFullName.Text.Trim();
                    oUserInfo.Mobile = txtMobile.Text.Trim();
                    oUserInfo.Password = txtUserPass.Text.Trim();
                    oUserInfo.UserName = txtUserName.Text.Trim();
                    ctx.UserInfoes.Add(oUserInfo);
                    ctx.SaveChangesAsync();

                    errorMsg.ForeColor = System.Drawing.Color.Green;
                    errorMsg.Text = "User has been registered successfully.";
                }
            }
        }

    }
}