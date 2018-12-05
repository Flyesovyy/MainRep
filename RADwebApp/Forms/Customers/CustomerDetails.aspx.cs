using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Customers
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            dvEditCustomer.EnableDynamicData(typeof(Customer));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            int id = Convert.ToInt32(Request.QueryString["id"]);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Customers/Customers.aspx");
        }

        protected void dvEditCustomer_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            Response.Redirect("~/Forms/Customers/Customers.aspx");
        }

        protected void dvEditCustomer_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            dvEditCustomer.DefaultMode = DetailsViewMode.ReadOnly;
        }
    }
}