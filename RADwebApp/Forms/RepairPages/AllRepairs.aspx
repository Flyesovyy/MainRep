<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllRepairs.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.AllRepairs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>All Repairs</strong></span><br />
            <br />
            <asp:HyperLink ID="hlAllHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlAllOrder" runat="server" NavigateUrl="~/Forms/RepairPages/OrderTools.aspx">Order Tools</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlAllWarranty" runat="server" NavigateUrl="~/Forms/RepairPages/Warranty.aspx">Warranty</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="gvAllRepairs" runat="server" AutoGenerateColumns="False" DataSourceID="dsAllRepairs">
                <Columns>
                    <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
                    <asp:BoundField DataField="Employee" HeaderText="Employee" SortExpression="Employee" />
                    <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
                    <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                    <asp:BoundField DataField="Date IN" HeaderText="Date IN" SortExpression="Date IN" />
                    <asp:BoundField DataField="Date OUT" HeaderText="Date OUT" SortExpression="Date OUT" />
                    <asp:BoundField DataField="Issue description" HeaderText="Issue description" SortExpression="Issue description" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:ObjectDataSource ID="dsAllRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.AllRepairsTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
