<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderTools.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.OrderTools" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>Order Tools</strong></span><br />
            <br />
            <asp:HyperLink ID="hlOrderHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlOrderAllRepairs" runat="server" NavigateUrl="~/Forms/RepairPages/AllRepairs.aspx">All Repairs</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlOrderWarranty" runat="server" NavigateUrl="~/Forms/RepairPages/Warranty.aspx">Warranty</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:GridView ID="gvToolOrders" runat="server" AutoGenerateColumns="False" DataSourceID="dbOrderTools">
                <Columns>
                    <asp:BoundField DataField="Customer First Name" HeaderText="Customer First Name" SortExpression="Customer First Name" />
                    <asp:BoundField DataField="Customer Last Name" HeaderText="Customer Last Name" SortExpression="Customer Last Name" />
                    <asp:BoundField DataField="Employee First Name" HeaderText="Employee First Name" SortExpression="Employee First Name" />
                    <asp:BoundField DataField="Employee Last Name" HeaderText="Employee Last Name" SortExpression="Employee Last Name" />
                    <asp:BoundField DataField="Equipment Model" HeaderText="Equipment Model" SortExpression="Equipment Model" />
                    <asp:BoundField DataField="Equipment Serial No_" HeaderText="Equipment Serial No_" SortExpression="Equipment Serial No_" />
                    <asp:BoundField DataField="Equipment Type" HeaderText="Equipment Type" SortExpression="Equipment Type" />
                    <asp:BoundField DataField="Order Number" HeaderText="Order Number" SortExpression="Order Number" />
                    <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
                    <asp:CheckBoxField DataField="Paid?" HeaderText="Paid?" SortExpression="Paid?" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="btnNewOrder" runat="server" OnClick="btnNewOrder_Click" Text="New Order" />
            <br />
            <br />
            <br />
            <br />
            <div id="insertPanel" class="insertPanel">          
            <asp:Panel ID="panelInsert" runat="server" Height="296px" Visible="False" Width="286px">
                <asp:Label ID="lblCustFirst" runat="server" Text="Customer First Name:"></asp:Label>
                <asp:TextBox ID="txtCustFirst" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblCustLast" runat="server" Text="Customer Last Name:"></asp:Label>
                <asp:TextBox ID="txtCustLast" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmpFirst" runat="server" Text="Employee First Name:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmpLast" runat="server" Text="Employee Last Name:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEqpMod" runat="server" Text="Equipment Model:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEqpSer" runat="server" Text="Equipment Serial No.:"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblEqpType" runat="server" Text="Equipment Type:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblOrdNum" runat="server" Text="Order Number:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblOrdDate" runat="server" Text="Order Date:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblPaid" runat="server" Text="Paid(true or false):"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </asp:Panel>
                </div>
            <br />
            <br />
            <asp:ObjectDataSource ID="dbOrderTools" runat="server" DataObjectTypeName="aLibrary.EmmasDataSet+sp_orderToolsSelectDataTable" InsertMethod="Fill" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.sp_orderToolsSelectTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
