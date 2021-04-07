<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MainPage.Master" AutoEventWireup="true" CodeBehind="Emp_Add.aspx.cs" Inherits="EmployeeSalaryASPProject.WebPages.Emp_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#ContentPlaceHolder1_txtJoinDate").datepicker();
            $("#ContentPlaceHolder1_txtEmpDOB").datepicker();
        });
    </script>
     <style type="text/css">
         .auto-style1 {
             text-align: left;
             height: 30px;
         }
         .auto-style2 {
             text-align: left;
         }
         .auto-style3 {
             margin-left: 120px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <section style="padding: 25px 15px 15px 15px">
       <%-- <nav>
            <asp:HyperLink ID="obj" NavigateUrl="ObjectDataForDetailsView.aspx" runat="server">ObjDetailsView</asp:HyperLink>
            <asp:HyperLink ID="DataList" NavigateUrl="DataList.aspx" runat="server">DataList</asp:HyperLink>
            <asp:HyperLink ID="Form" NavigateUrl="FormView.aspx" runat="server">FormView</asp:HyperLink>
            <asp:HyperLink ID="Add" NavigateUrl="Emp_Add.aspx" runat="server">Employee_Adding</asp:HyperLink>
        </nav>--%>
    <div>
        <h1 style="padding: 5px 6px 15px 5px; font-family: Algerian; color: #000080; font-size: x-large; border-bottom-style: solid; height: 50px; width: 1179px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color: #800000; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><strong style="padding: 5px 5px 5px 5px; font-family: Georgia; font-size: xx-large;">Casting Employee Information</strong></h1>
    </div>
    <fieldset ID="UpdatePanel1" runat="server">
        <div class="panel panel-group">
        <div class="form-horizontal" style="font-family: Georgia; width: 1187px;">
            <asp:HiddenField ID="txtEmp_ID" runat="server" />
            <br />
            <br />
            <div class="auto-style2">
                 <asp:HiddenField ID="HiddenCustomerId" runat="server" />
                 <div>
                     <p style="margin-left: 40px">
                <label runat="server" for="txtEmp_Name" style="margin-left: 80px">Name</label>
                <asp:TextBox ID="txtEmp_Name" runat="server" CssClass="form-control-static input-sm" Enabled="true" style="margin-left: 218px" Width="400px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Must be Input This" style="text-align: right" ControlToValidate="txtEmp_Name" ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                <br />
                     </p>
                 </div>
            </div>
            <div id="row">
                <p style="margin-left: 40px">
                <label runat="server" for="txtEmp_Address" style="margin-left: 80px">Address</label>
                <asp:TextBox ID="txtEmp_Address" runat="server" CssClass="form-control-static input-sm" Enabled="true" style="margin-left: 202px" Width="399px"></asp:TextBox>
                
                    <br />
                
                <br />
                </p>
            </div>
            <div>
                <p style="margin-left: 40px">
                <label runat="server" for="txtEmp_Contact" style="margin-left: 80px">Phone Number</label>
                <asp:TextBox ID="txtEmp_Contact" runat="server" CssClass="form-control-static input-sm" Enabled="true" style="margin-left: 152px" Width="402px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Must be Input This" style="text-align: right" ControlToValidate="txtEmp_Contact" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                <br />
                </p>
            </div>
            <div>
                <p style="margin-left: 40px">
                <label runat="server" for="txtEmp_Email" style="margin-left: 80px">Email Address</label>
                <asp:TextBox ID="txtEmp_Email" runat="server" CssClass="form-control-static input-sm" Enabled="true" style="margin-left: 154px" Width="400px"></asp:TextBox>
                    <br />
                <br />
                </p>
            </div>
            <div>
                <p style="margin-left: 40px">
                <label runat="server" for="txtEmpDOB" style="margin-left: 80px">Date Of Birth</label>
                <asp:TextBox ID="txtEmpDOB" runat="server" AutoCompleteType="Disabled" CssClass="form-control-static input-sm" Enabled="true" style="margin-left: 161px" Width="396px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <br />
                <br />
                </p>
            </div>
            <div class="auto-style2">
                 <div>
                     <p class="auto-style3">
                 Upload Your Photo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control-static input-sm"  style="margin-left: 76px" Width="400px" />
                 <br class="auto-style3" />
                 <br />
                     </p>
                 </div>
            <div class="form-group" style="text-align: center; height: 35px;">
                 <div class="auto-style1">
                     <div>
                         <p style="margin-left: 40px">
                             <label runat="server" for="DropDLEmp_Gender" style="text-align: left; margin-left: 80px;">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:DropDownList ID="DropDLEmp_Gender" runat="server" Height="26px" Width="397px"  style="margin-left: 48px" DataSourceID="SqlDataSourceGender" DataTextField="Gender_Name" DataValueField="Gender_Name"></asp:DropDownList>
                 
                         </p>
                     </div>
                 
                     <asp:SqlDataSource ID="SqlDataSourceGender" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_SalaryDBConnectionString %>" SelectCommand="SELECT [Gender_Name] FROM [Gender]"></asp:SqlDataSource>
                 
                 </div>
                 
           </div>
         </div>

           
             <div class="form-group" style="text-align: center; color: #800080;">
                 <p style="font-weight: 700; color: #FF0000;">Employee Personal Information Inserted....!!!!</p>
                 <p style="font-weight: 700; color: #FF0000;">Now.... Input Employee Professional Information...!!!!</p>
                 <p style="font-weight: 700; color: #FF0000;">Thank You..</p> 
                 </div>


            <div class="form-group" style="text-align: center">
                 <div class="auto-style2">
                     <p style="margin-left: 40px">
                 <label runat="server" for="DropDLEmp_Department" style="margin-left: 80px">Department</label>
                <asp:DropDownList ID="DropDLEmp_Department" runat="server" DataSourceID="SqlDataSourceDepartment" DataTextField="Department_Name" DataValueField="Department_Name" Height="25px" style="margin-left: 169px" Width="388px" ></asp:DropDownList>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                     </p>
                 </div>
                  <asp:SqlDataSource ID="SqlDataSourceDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_SalaryDBConnectionString %>" SelectCommand="SELECT [Department_Name] FROM [Department]"></asp:SqlDataSource>
                 <div class="auto-style2">
                 </div>
            </div> 

            <div class="form-group" style="text-align: center">
                 <div class="auto-style2">
                     <p style="margin-left: 40px">
                 <label runat="server" for="DropDLEmp_Designation" style="margin-left: 80px">Designation</label>
                <asp:DropDownList ID="DropDLEmp_Designation" runat="server" DataSourceID="SqlDataSourceDesignation" DataTextField="Designation_Name" DataValueField="Designation_Name" style="margin-left: 174px" Width="386px" Height="21px"  ></asp:DropDownList>
                      </p>
                 </div>
                      <asp:SqlDataSource ID="SqlDataSourceDesignation" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_SalaryDBConnectionString %>" SelectCommand="SELECT [Designation_Name] FROM [Designation]"></asp:SqlDataSource>
                </div>

             <div>
                 <p style="margin-left: 40px">
                <label runat="server" for="txtEmp_Basic_Salary" style="margin-left: 80px">Basic Salery</label>
                <asp:TextBox ID="txtEmp_Basic_Salary" runat="server" CssClass="form-control-static input-sm" Enabled="true" style="margin-left: 170px" Width="382px"></asp:TextBox>
                     <br />
                 <br />
                 </p>
            </div>

             <div>
                 <p style="margin-left: 40px">
                <label runat="server" for="txtJoinDate" style="margin-left: 80px">Joining Date</label>
                <asp:TextBox ID="txtJoinDate" runat="server" AutoCompleteType="Disabled" CssClass="form-control-static input-sm" style="margin-left: 167px" Width="400px"></asp:TextBox>
                 <br />
                 </p>
            </div>


            <div style="font-size: medium; font-weight: lighter; font-style: oblique; vertical-align: middle; color: #FF0000">
              <asp:Label ID="LabelMessage" runat="server"></asp:Label>
            </div>
            <div class="form-group" style="text-align: center">
                <label runat="server" class="col-md-2 control-label" style="left: 106px; top: 18px">
                </label>


                <div class="col-md-10">
                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save" Width="170px" OnClick="btnSave_Click1" BackColor="#3366CC" BorderColor="#660066" BorderStyle="Double" ForeColor="White" />
                    <%--<asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Text="Update" Width="170px" OnClick="btnUpdate_Click" BackColor="#3366CC" BorderColor="#660066" BorderStyle="Double" ForeColor="White"/>--%>
                    <asp:Button ID="btnReset" runat="server" CssClass="btn btn-success" Text="Reset" Width="170px" BackColor="#3366CC" BorderColor="#660066" BorderStyle="Double" ForeColor="White"/>
                </div>
            </div>
        </div>
            <div style="text-align:center">
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
         <asp:Label ID="loggedUser" ForeColor="Green" runat="server" />
    </fieldset>
         <div>
        <h1 class="text-center" style="padding: 5px 6px 15px 5px; font-family: Algerian; color: #000080; font-size: xx-large; border-bottom-style: solid; height: 50px; width: 1179px; border-left-color: #800000; border-right-color: #800000; border-top-color: #800000; border-bottom-color: #800000; text-align: center; float: none; vertical-align: middle; right: auto; top: auto; bottom: auto; left: auto;"><span style="padding: 5px 5px 5px 5px; font-family: Georgia;"><strong>Casting Employee Grid View List</strong></span></h1>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emp_ID" DataSourceID="SqlDataSourceGV" Width="1006px" AllowPaging="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" InsertVisible="False" ReadOnly="True" SortExpression="Emp_ID" />
                <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" SortExpression="Emp_Name" />
                <asp:BoundField DataField="Emp_Gender" HeaderText="Emp_Gender" SortExpression="Emp_Gender" />
                <asp:BoundField DataField="Emp_DOB" HeaderText="Emp_DOB" SortExpression="Emp_DOB" />
                <asp:BoundField DataField="Emp_Address" HeaderText="Emp_Address" SortExpression="Emp_Address" />
                <asp:BoundField DataField="Emp_Email" HeaderText="Emp_Email" SortExpression="Emp_Email" />
                <asp:BoundField DataField="Emp_Contact" HeaderText="Emp_Contact" SortExpression="Emp_Contact" />
                <asp:BoundField DataField="Emp_Pic" HeaderText="Emp_Pic" SortExpression="Emp_Pic" />
                <asp:BoundField DataField="Emp_Basic_Salary" HeaderText="Emp_Basic_Salary" SortExpression="Emp_Basic_Salary" />
                <asp:BoundField DataField="Emp_Joining" HeaderText="Emp_Joining" SortExpression="Emp_Joining" />
                <asp:BoundField DataField="Designation_Name" HeaderText="Designation_Name" SortExpression="Designation_Name" />
                <asp:BoundField DataField="Department_Name" HeaderText="Department_Name" SortExpression="Department_Name" />
                <asp:BoundField DataField="Gender_Name" HeaderText="Gender_Name" SortExpression="Gender_Name" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update" />
                <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit" ShowHeader="True" Text="Edit" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceGV" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_SalaryDBConnectionString %>" DeleteCommand="DELETE FROM [Employee_Details] WHERE [Emp_ID] = @Emp_ID" InsertCommand="INSERT INTO [Employee_Details] ([Emp_Name], [Emp_Gender], [Emp_DOB], [Emp_Address], [Emp_Email], [Emp_Contact], [Emp_Pic], [Emp_Basic_Salary], [Emp_Joining], [Designation_Name], [Department_Name], [Gender_Name]) VALUES (@Emp_Name, @Emp_Gender, @Emp_DOB, @Emp_Address, @Emp_Email, @Emp_Contact, @Emp_Pic, @Emp_Basic_Salary, @Emp_Joining, @Designation_Name, @Department_Name, @Gender_Name)" SelectCommand="SELECT * FROM [Employee_Details]" UpdateCommand="UPDATE [Employee_Details] SET [Emp_Name] = @Emp_Name, [Emp_Gender] = @Emp_Gender, [Emp_DOB] = @Emp_DOB, [Emp_Address] = @Emp_Address, [Emp_Email] = @Emp_Email, [Emp_Contact] = @Emp_Contact, [Emp_Pic] = @Emp_Pic, [Emp_Basic_Salary] = @Emp_Basic_Salary, [Emp_Joining] = @Emp_Joining, [Designation_Name] = @Designation_Name, [Department_Name] = @Department_Name, [Gender_Name] = @Gender_Name WHERE [Emp_ID] = @Emp_ID">
            <DeleteParameters>
                <asp:Parameter Name="Emp_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Emp_Name" Type="String" />
                <asp:Parameter Name="Emp_Gender" Type="String" />
                <asp:Parameter Name="Emp_DOB" Type="DateTime" />
                <asp:Parameter Name="Emp_Address" Type="String" />
                <asp:Parameter Name="Emp_Email" Type="String" />
                <asp:Parameter Name="Emp_Contact" Type="Int32" />
                <asp:Parameter Name="Emp_Pic" Type="String" />
                <asp:Parameter Name="Emp_Basic_Salary" Type="Int32" />
                <asp:Parameter Name="Emp_Joining" Type="DateTime" />
                <asp:Parameter Name="Designation_Name" Type="String" />
                <asp:Parameter Name="Department_Name" Type="String" />
                <asp:Parameter Name="Gender_Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Emp_Name" Type="String" />
                <asp:Parameter Name="Emp_Gender" Type="String" />
                <asp:Parameter Name="Emp_DOB" Type="DateTime" />
                <asp:Parameter Name="Emp_Address" Type="String" />
                <asp:Parameter Name="Emp_Email" Type="String" />
                <asp:Parameter Name="Emp_Contact" Type="Int32" />
                <asp:Parameter Name="Emp_Pic" Type="String" />
                <asp:Parameter Name="Emp_Basic_Salary" Type="Int32" />
                <asp:Parameter Name="Emp_Joining" Type="DateTime" />
                <asp:Parameter Name="Designation_Name" Type="String" />
                <asp:Parameter Name="Department_Name" Type="String" />
                <asp:Parameter Name="Gender_Name" Type="String" />
                <asp:Parameter Name="Emp_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       </section>
</asp:Content>
