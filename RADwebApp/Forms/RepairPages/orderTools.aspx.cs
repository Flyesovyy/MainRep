using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using aLibrary.EmmasDataSetTableAdapters;

namespace RADwebApp.Forms.RepairPages
{
    public partial class OrderTools : System.Web.UI.Page
    {

        private static aLibrary.EmmasDataSet dsEmmas = new aLibrary.EmmasDataSet();
        

        static OrderTools()
        {
            orderToolsSelectTableAdapter daOrderTools = new orderToolsSelectTableAdapter();
            try
            {
                daOrderTools.Fill(dsEmmas.orderToolsSelect);

            }
            catch { }
        }
        



        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack) return;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
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
                this.Validate();
                DataRow drNew = dsEmmas.orderToolsSelect.NewRow();
                drNew.ItemArray[0] = inpCustFirst;
                drNew.ItemArray[1] = inpCustLast;
                drNew.ItemArray[2] = inpEmpFirst;
                drNew.ItemArray[3] = inpEmpLast;
                drNew.ItemArray[4] = inpEqpMod;
                drNew.ItemArray[5] = inpEqpSerial;
                drNew.ItemArray[6] = inpEqpType;
                drNew.ItemArray[7] = inpOrdDate;
                drNew.ItemArray[8] = inpOrdNo;
                drNew.ItemArray[9] = inpPaid;
                dsEmmas.orderToolsSelect.Rows.Add(drNew);
            }
            catch{   }

            panelInsert.Visible = false;
            btnNewOrder.Visible = true;
            gvToolOrders.Visible = true;
        }

        protected void btnNewOrder_Click(object sender, EventArgs e)
        {
            panelInsert.Visible = true;
            btnNewOrder.Visible = false;
            gvToolOrders.Visible = false;

        }
    }
}