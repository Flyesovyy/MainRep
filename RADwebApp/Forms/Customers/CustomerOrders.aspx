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
        </div>
        <asp:SqlDataSource ID="dsCustomerOrders" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT customer.custFirst, customer.custLast, receipt.ordNumber, receipt.ordDate, payment.payType, employee.empFirst + ' ' + employee.empLast AS empName, order_line.orlPrice, product.prodName, receipt.custID FROM employee INNER JOIN receipt ON employee.id = receipt.empID INNER JOIN payment ON receipt.paymentID = payment.id INNER JOIN order_line ON receipt.id = order_line.receiptID INNER JOIN inventory ON order_line.inventoryID = inventory.id INNER JOIN product ON inventory.productID = product.id INNER JOIN customer ON receipt.custID = customer.id WHERE (receipt.custID = @Param1) ORDER BY receipt.ordNumber">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="Param1" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
