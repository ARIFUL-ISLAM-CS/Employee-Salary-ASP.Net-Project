<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="DataListN.aspx.cs" Inherits="EmployeeSalaryASPProject.WebPages.DataList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div runat="server">
        <div>
      <div>
        <h1 style="padding: 5px 6px 15px 5px; font-family: Algerian; color: #000080; font-size: x-large; border-bottom-style: solid; height: 50px; width: 1179px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color: #800000; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><strong style="padding: 5px 5px 5px 5px; font-family: Georgia; font-size: xx-large;">Employee Information By Data List</strong></h1>
    </div>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="Department_Name" DataSourceID="SqlDataSourceDataList" GridLines="Horizontal" Width="463px" style="text-align: center; margin-left: 375px; margin-right: 0px">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    Department_ID:
                    <asp:Label ID="Department_IDLabel" runat="server" Text='<%# Eval("Department_ID") %>' />
                    <br />
                    Department_Name:
                    <asp:Label ID="Department_NameLabel" runat="server" Text='<%# Eval("Department_Name") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSourceDataList" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_SalaryDBConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [Department_Name] = @Department_Name" InsertCommand="INSERT INTO [Department] ([Department_Name]) VALUES (@Department_Name)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [Department_ID] = @Department_ID WHERE [Department_Name] = @Department_Name">
                <DeleteParameters>
                    <asp:Parameter Name="Department_Name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Department_Name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Department_ID" Type="Int32" />
                    <asp:Parameter Name="Department_Name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
