<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerAdd.aspx.cs" Inherits="RADwebApp.CustomerAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="dvAddCustomer" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="dsCustomer" DefaultMode="Insert" Height="50px" OnItemCommand="dvAddCustomer_ItemCommand" Width="150px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="custFirst" HeaderText="First Name" SortExpression="custFirst" />
                    <asp:BoundField DataField="custLast" HeaderText="Last Name" SortExpression="custLast" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone" SortExpression="custPhone" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="custCity" HeaderText="City" SortExpression="custCity" />
                    <asp:BoundField DataField="custPostal" HeaderText="Postal Code" SortExpression="custPostal" />
                    <asp:BoundField DataField="custEmail" HeaderText="E-mail" SortExpression="custEmail" />
                    <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                </Fields>
            </asp:DetailsView>
        </div>
        <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" InsertCommand="INSERT INTO [customer] ([custFirst], [custLast], [custPhone], [custAddress], [custCity], [custPostal], [custEmail]) VALUES (@custFirst, @custLast, @custPhone, @custAddress, @custCity, @custPostal, @custEmail)" SelectCommand="SELECT * FROM [customer]">
            <InsertParameters>
                <asp:Parameter Name="custFirst" Type="String" />
                <asp:Parameter Name="custLast" Type="String" />
                <asp:Parameter Name="custPhone" Type="String" />
                <asp:Parameter Name="custAddress" Type="String" />
                <asp:Parameter Name="custCity" Type="String" />
                <asp:Parameter Name="custPostal" Type="String" />
                <asp:Parameter Name="custEmail" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
