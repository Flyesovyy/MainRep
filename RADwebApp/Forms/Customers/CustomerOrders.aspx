<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrders.aspx.cs" Inherits="RADwebApp.CustomerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2><%=Request.QueryString["first"] + " " + Request.QueryString["last"] + "'s Orders" %></h2>
        <div>
            <asp:GridView ID="gvCustomerOrders" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsCustomerOrders">
                <Columns>
                    <asp:BoundField DataField="ordDate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="ordDate" />
                    <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                    <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                    <asp:BoundField DataField="orlPrice" DataFormatString="{0:C}" HeaderText="Total" SortExpression="orlPrice" />
                    <asp:BoundField DataField="payType" HeaderText="Payment Type" SortExpression="payType" />
                    <asp:BoundField DataField="empName" HeaderText="Employee" ReadOnly="True" SortExpression="empName" />
                </Columns>
                <EmptyDataTemplate>
                    This customer does not have any orders yet.
                </EmptyDataTemplate>
            </asp:GridView>
            <br />
            <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
        </div>
        <asp:ObjectDataSource ID="dsCustomerOrders" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerOrdersTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>