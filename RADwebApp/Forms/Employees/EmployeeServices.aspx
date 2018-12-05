<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeServices.aspx.cs" Inherits="RADwebApp.Forms.Employees.EmployeeServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2><%=Request.QueryString["first"] + " " + Request.QueryString["last"] + "'s Services" %></h2>        
        <div>
            <asp:Panel runat="server" ID="panelRepairs" Visible="False">
                <h3>Repairs</h3>
                <asp:GridView ID="gvEmployeeRepairs" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsEmployeeRepairs">
                    <Columns>
                        <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                        <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="custName" HeaderText="Customer" ReadOnly="True" SortExpression="custName" />
                        <asp:BoundField DataField="eqtType" HeaderText="Equipment" SortExpression="eqtType" />
                        <asp:BoundField DataField="serPrice" HeaderText="Price" SortExpression="serPrice" DataFormatString="{0:C}" />
                    </Columns>
                    <EmptyDataTemplate>
                        This employee has no repairs services.
                    </EmptyDataTemplate>
                </asp:GridView>
            </asp:Panel>            
            <asp:Panel runat="server" ID="panelSales" Visible="False">
                <h3>Sales</h3>
                <asp:GridView ID="gvEmployeeSales" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsEmployeeSales">
                    <Columns>
                        <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                        <asp:BoundField DataField="ordDate" HeaderText="Date" SortExpression="ordDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="custName" HeaderText="Customer" ReadOnly="True" SortExpression="custName" />
                        <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                        <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
                        <asp:BoundField DataField="orlPrice" HeaderText="Price" SortExpression="orlPrice" DataFormatString="{0:C}" />
                    </Columns>
                    <EmptyDataTemplate>
                        This employee has no sales services.
                    </EmptyDataTemplate>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel runat="server" ID="panelNone" Visible="False">
                <p>This employee is not directly related to any Sales or Repairs services.</p>
            </asp:Panel>
        </div>
        <asp:ObjectDataSource ID="dsEmployeeRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.employeeRepairsTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsEmployeeSales" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.employeeSalesTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>