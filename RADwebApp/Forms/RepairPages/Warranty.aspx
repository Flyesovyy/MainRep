<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Warranty.aspx.cs" Inherits="RADwebApp.Forms.RepairPages.Warranty" %>

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
            <strong><span class="auto-style1">Warranty</span><br class="auto-style1" />
            </strong>
            <br />
            <asp:HyperLink ID="hlWarrantyHome" runat="server" NavigateUrl="~/Welcome.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlWarrantyAllRepairs" runat="server" NavigateUrl="~/Forms/RepairPages/AllRepairs.aspx">All Repairs</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlWarrantyOrder" runat="server" NavigateUrl="~/Forms/RepairPages/OrderTools.aspx">Order Tools</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:Button ID="btnNewWarranty" runat="server" OnClick="btnNewWarranty_Click" Text="Add New Warranty" />
            <br />
            <br />
            <asp:GridView ID="gvWarranty" runat="server" AutoGenerateColumns="False" DataSourceID="dbWarranty">
                <Columns>
                    <asp:BoundField DataField="Customer" HeaderText="Customer" ReadOnly="True" SortExpression="Customer" />
                    <asp:CheckBoxField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" Text="Yes" />
                    <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:DetailsView ID="dvNewWarranty" runat="server" AutoGenerateRows="False" DataSourceID="dbWarranty" DefaultMode="Insert" DeleteMethod="warrantyTableAdapter.Fill();" Height="50px" Visible="False" Width="125px">
                <Fields>
                    <asp:TemplateField HeaderText="Customer" SortExpression="Customer">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Customer") %>'></asp:Label>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Customer") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Customer") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Warranty" SortExpression="Warranty">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Warranty") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Warranty") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Warranty") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Service" SortExpression="Service">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Service") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Service") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Service") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Visible="False" />
            <br />
            <br />
            <br />
            <asp:ObjectDataSource ID="dbWarranty" runat="server" InsertMethod="Fill" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.WarrantyTableAdapter">
                <InsertParameters>
                    <asp:Parameter Name="dataTable" Type="Object" />
                    <asp:Parameter Name="Param1" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="True" Name="Param1" Type="Boolean" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
