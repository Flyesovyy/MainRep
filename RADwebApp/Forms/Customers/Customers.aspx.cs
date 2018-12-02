using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.CustomerPages
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Customers/CustomerAdd.aspx");
        }

        protected void gvCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = gvCustomers.SelectedRow.RowIndex;
            string id = gvCustomers.DataKeys[index][0].ToString();
            Response.Redirect("~/Forms/Customers/CustomerEdit.aspx?id=" + id);
        }

        protected void gvCustomers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Orders")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string id = gvCustomers.DataKeys[index][0].ToString();
                Response.Redirect("~/Forms/Customers/CustomerOrders.aspx?id=" + id);                
            }
        }
    }
}