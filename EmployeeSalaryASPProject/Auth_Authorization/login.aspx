<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/login.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EmployeeSalaryASPProject.Auth_Authorization.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 109px;
        }
    .auto-style2 {
        text-align: center;
    }
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>

<body>
    <div  runat="server">  
        <h3 class="auto-style2" style="font-family: 'Times New Roman'; color: #800080; border-bottom-style: none">&nbsp;</h3>
        <h3 class="auto-style2" style="font-family: 'Times New Roman'; color: #800080; border-bottom-style: none">Login Your User ID</h3>  
        <table align="center" style="font-family: 'Times New Roman'; font-size: 14px; font-style: normal; color: #800080; border-style: hidden; border-color: #800080; table-layout: auto; height: 138px; width: 509px;">  
            <tr>  
                <td>UserName:</td>  
                <td><asp:TextBox ID="txtUserName" runat="server" /></td>  
                <td class="auto-style1"><asp:Label ID="txtUserNameMsg" ForeColor="red" runat="server" /></td>  
            </tr>  
            <tr>  
                <td>Password:</td>  
                <td><asp:TextBox ID="txtUserPass" TextMode="Password" runat="server" /></td>  
                <td class="auto-style1"><asp:Label ID="txtUserPassMsg" ForeColor="red" runat="server" /></td>  
            </tr>
            <tr>  
                <td>Don't have an account?</td>  
                <td><a href="register.aspx">Register</a></td>  
            </tr>
        </table>  
        <br />
        <br />
        <asp:Button ID="btnLogin" Text="Log In" runat="server" OnClick="btnLogin_Click" BackColor="#3366CC" BorderColor="Purple" BorderStyle="Double" CssClass="auto-style1" Font-Size="Medium" ForeColor="White" style="text-align: center; margin-left: 444px" Width="109px" />  
        <p> <asp:Label ID="errorMsg" ForeColor="red" runat="server" /></p>  
    </div>
</body>
</html>
</asp:Content>

