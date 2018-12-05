<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="RADwebApp.Forms.Employees.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <% if(flag == false) { %>
               <h2>Employees</h2>
         <% } else { %>
               <h2>Add New Employee</h2>
         <% } %>
        <div>
            <asp:Button ID="btnNewEmployee" runat="server" OnClick="btnNewEmployee_Click" Text="Add New" />
            <br />
            <asp:DetailsView ID="dvEmployeeNew" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsEmployee" DefaultMode="Insert" Height="50px" OnItemCommand="dvEmployeeNew_ItemCommand" Visible="False" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:DynamicField DataField="empFirst" HeaderText="First Name" />
                    <asp:DynamicField DataField="empLast" HeaderText="Last Name" />
                    <asp:TemplateField HeaderText="Position" SortExpression="posID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("posID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlPositionAdd" runat="server" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id" SelectedValue='<%# Bind("posID") %>'>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("posID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:Button ID="btnIsert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnNew" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following:" />
            <asp:Panel ID="panelFilters" runat="server">
                <asp:Label ID="lblFilterPosition" runat="server" Text="Filter by Position:"></asp:Label>
                <asp:DropDownList ID="ddlPosition" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsPosition" DataTextField="posName" DataValueField="id">
                    <asp:ListItem Selected="True" Value="0">All</asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>               
            <br />
            <asp:GridView ID="gvEmployees" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsSearchEmployee" OnSelectedIndexChanged="gvEmployees_SelectedIndexChanged1" EnableViewState="False">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Details" />
                    <asp:BoundField DataField="empName" HeaderText="Name" ReadOnly="True" SortExpression="empName" />
                    <asp:BoundField DataField="posName" HeaderText="Position" SortExpression="posName" />
                    <asp:HyperLinkField DataNavigateUrlFields="id, empFirst, empLast, posID"
                    DataNavigateUrlFormatString="EmployeeServices.aspx?id={0}&first={1}&last={2}&role={3}"
                      Text="View Services" />
                </Columns>
            </asp:GridView>
        </div>
         <asp:ObjectDataSource ID="dsSearchEmployee" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.searchEmployeeTableAdapter">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlPosition" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
         </asp:ObjectDataSource>
         <asp:ObjectDataSource ID="dsEmployee" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.employeeTableAdapter" UpdateMethod="Update">
             <DeleteParameters>
                 <asp:Parameter Name="Original_id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="empFirst" Type="String" />
                 <asp:Parameter Name="empLast" Type="String" />
                 <asp:Parameter Name="posID" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="empFirst" Type="String" />
                 <asp:Parameter Name="empLast" Type="String" />
                 <asp:Parameter Name="posID" Type="Int32" />
                 <asp:Parameter Name="Original_id" Type="Int32" />
             </UpdateParameters>
         </asp:ObjectDataSource>
         <asp:ObjectDataSource ID="dsPosition" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.employeePositionTableAdapter"></asp:ObjectDataSource>
        <br />
    </form>
</body>
</html>