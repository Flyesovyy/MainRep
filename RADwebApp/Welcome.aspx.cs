using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using aLibrary;

namespace Logintesting
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (User.Identity.IsAuthenticated)
            //    pnlContent.Visible = true;
            //else
            //    Response.Redirect("~/LogIn.aspx");
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/CustomerMain.aspx");
        }

        protected void btnEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/EmployeeTools.aspx");
        }

        protected void btnRepair_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Repairs.aspx");
        }

        protected void btnPolicies_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Policies.aspx");
        }

        protected void btnSearchCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Customers/Customers.aspx");
        }

        protected void btnEditCustomerton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Customers/Customers.aspx");
        }

        protected void btnNewCustomer_Click(object sender, EventArgs e)
        {
            string add = "addNew";
            Response.Redirect("~/Forms/Customers/Customers.aspx?mode=" + add);
        }

        protected void btnDeleteCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Customers/Customers.aspx");
        }

        protected void btnSearchEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Employees/Employees.aspx");
        }

        protected void btnEditEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Employees/Employees.aspx");
        }

        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            string add = "addNew";
            Response.Redirect("~/Forms/Employees/Employees.aspx?mode=" + add);
        }

        protected void btnDeleteEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Employees/Employees.aspx");
        }
    }
}