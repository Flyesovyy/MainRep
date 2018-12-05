<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchSales.aspx.cs" Inherits="RADwebApp.Forms.Sales.searchSales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99px;
        }
        .auto-style2 {
            width: 143px;
        }
        .auto-style3 {
            width: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            SALES<br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Search:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Order #:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtOrderNum" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Customer:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCustName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Employee:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Date Between:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDateStart" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">AND</td>
                    <td>
                        <asp:TextBox ID="txtDateEnd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsSearchSales" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ordNumber" HeaderText="Order #" SortExpression="ordNumber" />
                <asp:BoundField DataField="ordDate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="ordDate" />
                <asp:CheckBoxField DataField="ordPaid" HeaderText="Paid?" SortExpression="ordPaid" />
                <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
                <asp:BoundField DataField="orlPrice" DataFormatString="{0:C}" HeaderText="Price" SortExpression="orlPrice" />
                <asp:BoundField DataField="orlQuantity" HeaderText="Quantity" SortExpression="orlQuantity" />
                <asp:BoundField DataField="custFull" HeaderText="Customer" ReadOnly="True" SortExpression="custFull" />
                <asp:BoundField DataField="empFull" HeaderText="Employee" SortExpression="empFull" ReadOnly="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="dsSearchSales" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.searchSalesTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDateStart" DefaultValue="01/01/0001" Name="dateStart" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDateEnd" DefaultValue="01/01/3000" Name="dateEnd" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtCustName" ConvertEmptyStringToNull="False" Name="custName" PropertyName="Text" Type="String" DefaultValue="" />
                <asp:ControlParameter ControlID="txtEmpName" ConvertEmptyStringToNull="False" Name="empName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtOrderNum" DefaultValue="" Name="orderNum" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
