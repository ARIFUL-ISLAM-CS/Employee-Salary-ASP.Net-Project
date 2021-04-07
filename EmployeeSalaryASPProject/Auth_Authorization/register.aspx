<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/login.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="EmployeeSalaryASPProject.Auth_Authorization.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 286px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<body>
    <div  runat="server">  
        <h3 style="text-align: center; color: #800080;">&nbsp;</h3>
        <h3 style="text-align: center; color: #800080;">Registration Your Information</h3>
        <p style="text-align: center; color: #800080;">&nbsp;</p>  
        <table style="border-style: none; border-color: #800000; width: 581px; margin-left: 250px; font-family: Arial; color: #800080;"> 
            <tr>  
                <td>Full Name:</td>  
                <td class="auto-style1"><asp:TextBox ID="txtFullName" runat="server" MaxLength="100" /></td>  
                <td><asp:Label ID="txtFullNameMsg" ForeColor="red" runat="server" /></td>  
            </tr>
            <tr>  
                <td>Email:</td>  
                <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" MaxLength="50" TextMode="Email" /></td>  
                <td><asp:Label ID="txtEmailMsg" ForeColor="red" runat="server" /></td>  
            </tr>
            <tr>  
                <td>Mobile:</td>  
                <td class="auto-style1"><asp:TextBox ID="txtMobile" runat="server" MaxLength="15" /></td>  
                <td><asp:Label ID="txtMobileMsg" ForeColor="red" runat="server" /></td>  
            </tr>
            <tr>  
                <td>UserName:</td>  
                <td class="auto-style1"><asp:TextBox ID="txtUserName" runat="server" MaxLength="20" /></td>  
                <td><asp:Label ID="txtUserNameMsg" ForeColor="red" runat="server" /></td>  
            </tr>  
            <tr>  
                <td>Password:</td>  
                <td class="auto-style1"><asp:TextBox ID="txtUserPass" TextMode="Password" runat="server" MaxLength="50" /></td>  
                <td><asp:Label ID="txtUserPassMsg" ForeColor="red" runat="server" /></td>  
            </tr> 
            <tr>  
                <td>Address:</td>  
                <td class="auto-style1"><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" MaxLength="512" /></td>  
                <td><asp:Label ID="txtAddressMsg" ForeColor="red" runat="server" /></td>  
            </tr>
            <tr>  
                <td>Go to login page</td>  
                <td class="auto-style1"><a href="login.aspx" style="text-align: center">Login</a></td>  
            </tr>
        </table>  
        <br />
        <br />
        <asp:Button ID="btnRegister" Text="Submit" runat="server" OnClick="btnRegister_Click" style="margin-left: 464px" Width="152px" BackColor="#3366CC" Font-Bold="True" Font-Overline="False" Font-Size="12pt" ForeColor="White" />  
        <p style="height: 23px; text-align: center"><asp:Label ID="errorMsg" ForeColor="red" runat="server" style="text-align: center" /></p>
        <p>&nbsp;</p>  
    </div>
</body>
</html>

</asp:Content>
