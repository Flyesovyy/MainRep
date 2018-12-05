<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="RADwebApp.Forms.CustomerPages.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <% if(flag == false) { %>
               <h2>Customers</h2>
        <% } else { %>
               <h2>Add New Customer</h2>
        <% } %>
        <div>
            <asp:Button ID="btnNewCustomer" runat="server" OnClick="btnNewCustomer_Click" Text="Add New" />
            <br />
            <asp:DetailsView ID="dvCustomerNew" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsCustomer" DefaultMode="Insert" Height="50px" OnItemCommand="dvCustomerNew_ItemCommand" Visible="False" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:DynamicField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:DynamicField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:DynamicField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:DynamicField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:DynamicField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:DynamicField DataField="custPostal" HeaderText="Postal Code" SortExpression="custPostal" />
                    <asp:DynamicField DataField="custEmail" HeaderText="E-mail" SortExpression="custEmail" />
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
            <br />
            <asp:Panel ID="panelFilters" runat="server">
                <asp:Label ID="lblFilterCity" runat="server" Text="Filter by City:"></asp:Label>
                <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="dsCity" DataTextField="custCity" DataValueField="custCity" EnableViewState="False">
                    <asp:ListItem Selected="True">All</asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>               
            <br />
            <asp:GridView ID="gvCustomers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsSearchCustomer" OnSelectedIndexChanged="gvCustomers_SelectedIndexChanged" EnableViewState="False">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Details"></asp:CommandField>
                    <asp:BoundField DataField="custName" HeaderText="Name" ReadOnly="True" SortExpression="custName"></asp:BoundField>
                    <asp:BoundField DataField="custCity" HeaderText="City" ReadOnly="True" SortExpression="custCity"></asp:BoundField>
                    <asp:BoundField DataField="custEmail" HeaderText="E-mail" SortExpression="custEmail"></asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="id, custFirst, custLast"
                    DataNavigateUrlFormatString="CustomerOrders.aspx?id={0}&first={1}&last={2}"
                      Text="View Orders" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
        <asp:ObjectDataSource ID="dsSearchCustomer" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.searchCustomerTableAdapter">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCity" DefaultValue="All" Name="Param1" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsCity" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerCityTableAdapter"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="dsCustomer" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="aLibrary.EmmasDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_custFirst" Type="String" />
                <asp:Parameter Name="Original_custLast" Type="String" />
                <asp:Parameter Name="Original_custPhone" Type="String" />
                <asp:Parameter Name="Original_custAddress" Type="String" />
                <asp:Parameter Name="Original_custCity" Type="String" />
                <asp:Parameter Name="Original_custPostal" Type="String" />
                <asp:Parameter Name="Original_custEmail" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
                <asp:Parameter Name="Original_custFirst" Type="String" />
                <asp:Parameter Name="Original_custLast" Type="String" />
                <asp:Parameter Name="Original_custPhone" Type="String" />
                <asp:Parameter Name="Original_custAddress" Type="String" />
                <asp:Parameter Name="Original_custCity" Type="String" />
                <asp:Parameter Name="Original_custPostal" Type="String" />
                <asp:Parameter Name="Original_custEmail" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>