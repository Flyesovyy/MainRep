using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RADwebApp.Forms.Employees
{
    public partial class EmployeeServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            int id = Convert.ToInt32(Request.QueryString["id"]);

            if (Request.QueryString["role"] == "1") //Sales ID = 1 / Tech = 2
                this.panelSales.Visible = true;
            else if (Request.QueryString["role"] == "2")
                this.panelRepairs.Visible = true;
            else
                this.panelNone.Visible = true;
        }
    }
}