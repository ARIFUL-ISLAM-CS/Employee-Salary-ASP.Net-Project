<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="ObjectDataForDetailsView.aspx.cs" Inherits="EmployeeSalaryASPProject.WebPages.ObjectDataForListView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            border: medium double #000080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
        <h1 style="padding: 5px 6px 15px 5px; font-family: Algerian; color: #000080; font-size: x-large; border-bottom-style: solid; height: 50px; width: 1179px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color: #800000; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><strong style="padding: 5px 5px 5px 5px; font-family: Georgia; font-size: xx-large;">Object Data Source By Details View For Employee Information</strong></h1>
    </div>
        <div style="text-align: center">
           
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="267px" AllowPaging="True" CssClass="newStyle1" style="text-align: center; margin-left: 383px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetEmployeeDetails" TypeName="EmployeeSalaryASPProject.Content.ObjectDSListClass"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
