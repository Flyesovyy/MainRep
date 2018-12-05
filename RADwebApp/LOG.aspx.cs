using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp
{
    public partial class LOG : System.Web.UI.Page
    {
       

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Welcome.aspx");
        }

        protected void txtPass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtUser_TextChanged(object sender, EventArgs e)
        {

        }
    }
}