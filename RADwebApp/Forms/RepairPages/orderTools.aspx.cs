using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using aLibrary.EmmasDataSetTableAdapters;

namespace RADwebApp.Forms.RepairPages
{
    public partial class OrderTools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            panelInsert.Visible = false;
            btnNewOrder.Visible = true;
        }

        protected void btnNewOrder_Click(object sender, EventArgs e)
        {
            panelInsert.Visible = true;
            btnNewOrder.Visible = false;

        }
    }
}