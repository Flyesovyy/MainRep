<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Logintesting.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's | Welcome Page</title>
    <style type="text/css">
        .nav {
            padding-bottom: 20px;
        }

        .nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333333;
        }

        .nav li {
            float: left;
        }

        .nav li a {
            display: block;
            color: white;
            text-align: center;
            padding: 16px;
            text-decoration: none;
        }

        .nav li a:hover {
            background-color: #111111;
        }

        body {
            margin: auto;
            font-size: 16px;
            font-family: Arial;
        }

        .content {
            padding-left: 20px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-gap: 20px;
            padding: 20px;
        }

        .menuItem {
            background-color: #C0C0C0;
            text-align: center;
            padding:20px 0;
            font-size: 24px;
        }

        .menuItem a {
            text-decoration: none;
            color: black;
        }

        .menuItem a:hover {
            cursor: pointer;
        }

        .icon {
            padding: 20px;
        }

        .button {
            background-color: #333333;
            border: none;
            color: white;
            width: 130px;
            height: 55px;
            padding: 16px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;            
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .edit {
            background-color: #4682B4;
            color: white;
            border: 2px solid #4682B4;
        }

        .new {
            background-color: #419A1C;
            color: white;
            border: 2px solid #419A1C;
        }

        .delete {
            background-color: #f44336;
            color: white;
            border: 2px solid #f44336;
        }

        .container-submenu {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 5px;
            padding: 5px;
        }

    </style>
</head>
<body style="width: 100%">
    <form id="form2" runat="server">
        <div class="nav">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#customers">Customers</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#employees">Employees</a></li>
                <li><a href="#inventory">Inventory</a></li>
                <li><a href="#reports">Reports</a></li>
                <li><a href="#contact">Contact</a></li>            
                <li style="float: right;"><asp:LinkButton  runat="server" Visible="True" OnClick="lnkLogout_Click">Logout</asp:LinkButton></li>
            </ul>
        </div>
        <div class="content">
            <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label><%//=Request.QueryString["User"] %>
        </div>        
        <div class="grid-container">
            <div class="menuItem">   
                <a href="Forms/Customers/Customers.aspx"><strong>CUSTOMERS</strong><br /></a>
                <a href="Forms/Customers/Customers.aspx"><asp:Image src="Images/customers-icon.png" Alt="Customers-icon" ID="imgCustomer" runat="server" CssClass="icon" /></a><br />
                <asp:Button ID="btnSearchCustomer" Text="Search" runat="server" CssClass="button" OnClick="btnSearchCustomer_Click" />
                <asp:Button ID="btnEditCustomerton2" Text="Edit" runat="server" CssClass="button edit" OnClick="btnEditCustomerton2_Click" />
                <asp:Button ID="btnNewCustomer" Text="Add New" runat="server" CssClass="button new" OnClick="btnNewCustomer_Click" />
                <asp:Button ID="btnDeleteCustomer" Text="Delete" runat="server" CssClass="button delete" OnClick="btnDeleteCustomer_Click" />
              </div>
            <div class="menuItem">
                <strong>SERVICES</strong><br />
                <asp:Image src="Images/services-icon.png" Alt="Services-icon" ID="imgServices" runat="server" CssClass="icon" />
                <div class="container-submenu">
                    <div class="submenu-item">
                        Repairs<br />
                        <asp:Button ID="btnRepairs" Text="Search" runat="server" CssClass="button" />
                        <asp:Button ID="btnNewRepair" Text="New" runat="server" CssClass="button new" />
                    </div>
                    <div class="submenu-item">
                        Sales<br />
                        <asp:Button ID="btnSales" Text="Search" runat="server" CssClass="button" />
                        <asp:Button ID="btnNewSale" Text="New" runat="server" CssClass="button new" />
                    </div>
                </div>
              </div>
            <div class="menuItem">
                <strong>EMPLOYEES</strong><br />
                <asp:Image src="Images/employees-icon.png" Alt="Employees-icon" ID="imgEmployees" runat="server" CssClass="icon" /><br />
                <asp:Button ID="btnSearchEmployee" Text="Search" runat="server" CssClass="button" OnClick="btnSearchEmployee_Click" />
                <asp:Button ID="btnEditEmployee" Text="Edit" runat="server" CssClass="button edit" OnClick="btnEditEmployee_Click" />
                <asp:Button ID="btnAddEmployee" Text="Add New" runat="server" CssClass="button new" OnClick="btnAddEmployee_Click" />
                <asp:Button ID="btnDeleteEmployee" Text="Delete" runat="server" CssClass="button delete" OnClick="btnDeleteEmployee_Click" />
              </div>
            <div class="menuItem">
                <strong>INVENTORY</strong><br />
                <asp:Image src="Images/inventory-icon.png" Alt="Inventory-icon" ID="imgInventory" runat="server" CssClass="icon" /><br />
                <div class="container-submenu">
                    <div class="submenu-item">
                        Products<br />
                        <asp:Button ID="btnSearchItem" Text="Search" runat="server" CssClass="button" />
                    </div>
                    <div class="submenu-item">
                        Orders<br />
                        <asp:Button ID="btnSearchOrder" Text="Search" runat="server" CssClass="button" />
                        <asp:Button ID="btnNewOrder" Text="New" runat="server" CssClass="button new" />
                    </div>
                </div>
              </div>
            <div class="menuItem">
                <strong>DOCUMENTS</strong><br />
                <asp:Image src="Images/reports-icon.png" Alt="Reports-icon" ID="imgReports" runat="server" CssClass="icon" /><br />
                <asp:Button ID="btnReports" Text="Reports" runat="server" CssClass="button" />
                <asp:Button ID="btnEmmasRep" Text="Emma's" runat="server" CssClass="button" />
                <asp:Button ID="btnPolicy" Text="Policies" runat="server" CssClass="button" />
            </div>
        </div>
    </form>
</body>
</html>