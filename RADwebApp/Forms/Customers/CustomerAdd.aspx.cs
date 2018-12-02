using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp
{
    public partial class CustomerAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dvAddCustomer_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            Response.Redirect("~/Forms/Customers/Customers.aspx");
        }
    }
}