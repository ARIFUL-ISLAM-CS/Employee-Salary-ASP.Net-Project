
using EmployeeSalaryASPProject.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeSalaryASPProject.WebPages
{
    public partial class Emp_Add : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserInfo"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                var oUserInfo = Session["UserInfo"] == null ? new UserInfo() : (UserInfo)Session["UserInfo"];
                loggedUser.Text = oUserInfo.FullName;
            }
            btnUpdate.Visible = true;
            

        }

   
        protected void btnSave_Click1(object sender, EventArgs e)
        {
            string picPath = "~/Images/images.jpg";
            if (FileUpload1.HasFile)
            {
                var extension = Path.GetExtension(FileUpload1.FileName);
                var newFileName = DateTime.Now.ToString("yyyyMMddHHmmssfff") + extension;
                picPath = "~/Images/" + newFileName;
                if (File.Exists(Server.MapPath(FileUpload1.FileName)))
                {
                    File.Delete(Server.MapPath(FileUpload1.FileName));
                }

                FileUpload1.SaveAs(Server.MapPath("~/Images//" + newFileName));
                Label1.Text = "Successfully insert Your Information....!!!! Thank You";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;
                
            }
            else
            {
                Label1.Text = "Please Select your file";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            var ctx = new Model1();
            var oSalesForce = new Employee_Details();
            oSalesForce.Emp_Name = txtEmp_Name.Text.Trim();
            oSalesForce.Emp_Address = txtEmp_Address.Text.Trim();
            oSalesForce.Emp_Contact = Convert.ToInt32(txtEmp_Contact.Text.Trim());
            oSalesForce.Emp_Basic_Salary = Convert.ToInt32(txtEmp_Basic_Salary.Text.Trim());
            oSalesForce.Emp_Joining = Convert.ToDateTime(txtJoinDate.Text.Trim());
            oSalesForce.Emp_DOB = Convert.ToDateTime(txtEmpDOB.Text.Trim());
            oSalesForce.Emp_Pic = picPath;
            oSalesForce.Gender_Name = Convert.ToString(DropDLEmp_Gender.Text);
            oSalesForce.Department_Name = Convert.ToString(DropDLEmp_Department.Text);
            oSalesForce.Designation_Name = Convert.ToString(DropDLEmp_Designation.Text);
            ctx.Employee_Details.Add(oSalesForce);
            ctx.SaveChanges();
           

            //Response.Redirect("SalesForceList.aspx");
        }

        private void Reset()
        {
            txtEmp_Name.Text = "";
            txtEmp_Address.Text = "";
            txtEmp_Email.Text = "";
            DropDLEmp_Gender.Text = "";
            DropDLEmp_Designation.Text = "";
            DropDLEmp_Department.Text = "";
            txtJoinDate.Text = "";
            txtEmpDOB.Text = "";
            txtEmp_Contact.Text = "";
            txtEmp_Basic_Salary.Text = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;
            GridView1.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GridViewRow row = GridView1.SelectedRow;
            ////Label ID = (Label)row.FindControl("Emp_ID");
            //Label Name = (Label)row.FindControl("Emp_Name");
            //Label Gender = (Label)row.FindControl("Gender_Name");
            //Label DateOfBirth = (Label)row.FindControl("Emp_DOB");
            //Label Address = (Label)row.FindControl("Emp_Address");
            //Label Email = (Label)row.FindControl("Emp_Email");
            //Label BasicSalery = (Label)row.FindControl("Emp_Basic_Salary");
            //Label Emp_Joining = (Label)row.FindControl("Emp_Joining");
            //Label Department = (Label)row.FindControl("Department_Name");
            //Label Designation = (Label)row.FindControl("Designation_Name");
            //System.Web.UI.WebControls.Image lpicture = (System.Web.UI.WebControls.Image)row.FindControl("Emp_Pic");

           
            //txtEmp_Name.Text = Name.Text;
            //DropDLEmp_Gender.Text = Gender.Text;
            //txtEmpDOB.Text = DateOfBirth.Text;
            //txtEmp_Address.Text = Address.Text;
            //txtEmp_Email.Text = Email.Text;
            //txtEmp_Basic_Salary.Text = BasicSalery.Text;
            //txtJoinDate.Text = Emp_Joining.Text;
            //DropDLEmp_Department.Text = Department.Text;
            //DropDLEmp_Designation.Text = Designation.Text;
            //FileUpload1.ImageUrl = lpicture.ImageUrl;
            //GetImage.Visible = true;
        }
    }
}