<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="FormViewN.aspx.cs" Inherits="EmployeeSalaryASPProject.WebPages.FormView1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server">
        <div>
              <div>
        <h1 style="padding: 5px 6px 15px 5px; font-family: Algerian; color: #000080; font-size: x-large; border-bottom-style: solid; height: 50px; width: 1179px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color: #800000; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><strong style="padding: 5px 5px 5px 5px; font-family: Georgia; font-size: xx-large;">Employee Information By Form View</strong></h1>
    </div>
            <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UserId" DataSourceID="SqlDataSourceFormView" GridLines="Both" Width="258px" Height="155px" style="margin-left: 449px">
                <EditItemTemplate>
                    UserId:
                    <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    FullName:
                    <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                    <br />
                    Mobile:
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    UserName:
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    FullName:
                    <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                    <br />
                    Mobile:
                    <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    UserName:
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UserId:
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    FullName:
                    <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
                    <br />
                    Mobile:
                    <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
                    <br />
                    UserName:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSourceFormView" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_SalaryDBConnectionString %>" SelectCommand="SELECT [UserId], [Address], [Email], [FullName], [Mobile], [UserName] FROM [UserInfo]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
