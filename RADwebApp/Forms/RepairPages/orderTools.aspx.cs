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
            string inpCustFirst = Convert.ToString(txtCustFirst.Text);
            string inpCustLast = Convert.ToString(txtCustLast.Text);
            string inpEmpFirst = Convert.ToString(txtEmpFirst.Text);
            string inpEmpLast = Convert.ToString(txtEmpLast.Text);
            string inpEqpMod = Convert.ToString(txtEqpMod.Text);
            string inpEqpSerial = Convert.ToString(txtEqpSerial.Text);
            string inpEqpType = Convert.ToString(txtEqpType.Text);
            string inpOrdDate = Convert.ToString(txtOrdDate.Text);
            string inpOrdNo = Convert.ToString(txtOrdNo.Text);
            bool inpPaid = Convert.ToBoolean(txtPaid.Text);


            try
            {
                
                
                
            }catch(Exception ex)
            {
                
            }
        }

        protected void btnNewOrder_Click(object sender, EventArgs e)
        {
            panelInsert.Visible = true;
            btnNewOrder.Visible = false;

        }
    }
}