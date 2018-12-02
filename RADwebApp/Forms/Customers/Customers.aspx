<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="RADwebApp.Forms.CustomerPages.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnNewCustomer" runat="server" OnClick="btnNewCustomer_Click" Text="Add New" />
            <br />
            <br />
            <asp:GridView ID="gvCustomers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsCustomers" OnRowCommand="gvCustomers_RowCommand" OnSelectedIndexChanged="gvCustomers_SelectedIndexChanged">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="id, custFirst, custLast"
                    DataNavigateUrlFormatString="CustomerOrders.aspx?id={0}&first={1}&last={2}"
                      Text="View Orders" />
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Details"></asp:CommandField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button Text="View Orders" runat="server" CommandName="Orders" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="custName" HeaderText="Name" ReadOnly="True" SortExpression="custName"></asp:BoundField>
                    <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone"></asp:BoundField>
                    <asp:BoundField DataField="custEmail" HeaderText="Email" SortExpression="custEmail"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
        <asp:SqlDataSource ID="dsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT id, custFirst, custLast, custFirst + ' ' + custLast AS custName, custPhone, custEmail FROM customer ORDER BY custFirst, custLast">
        </asp:SqlDataSource>
    </form>
</body>
</html>
