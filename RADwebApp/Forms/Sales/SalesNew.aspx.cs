﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using aLibrary;
using aLibrary.EmmasDataSetTableAdapters;

namespace RADwebApp.Forms.Sales
{
    public partial class SalesNew : System.Web.UI.Page
    {
        private static EmmasDataSet dsAddSale;

        public int orderNum;
        public DateTime date;
        public int payTypeID;
        public int custID;
        public int empID;
        public int prodID;
        public decimal price;
        public Boolean orderReq;

        static SalesNew()
        {
            dsAddSale = new EmmasDataSet();
            receiptTableAdapter daReceipt = new receiptTableAdapter();
            orderLineTableAdapter daOrderLine = new orderLineTableAdapter();
            try
            {
                daReceipt.Fill(dsAddSale.receipt);
                daOrderLine.Fill(dsAddSale.orderLine);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            date = DateTime.Now; // Get Date Now.
            DataView receiptID = (DataView)dsReceiptID.Select();
            orderNum = Convert.ToInt32(receiptID[0][0]); //Get new Order #

            txtOrderNumber.Text = Convert.ToString(orderNum);
            txtOrderDate.Text = date.ToString("MM/dd/yyyy");
            txtQuantity.Text = Convert.ToString(1);
        }


        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            payTypeID = Convert.ToInt32(this.ddlPaymentType.SelectedValue);
            custID = Convert.ToInt32(this.ddlCustomer.SelectedValue);
            empID = Convert.ToInt32(this.ddlEmployee.SelectedValue);
            prodID = Convert.ToInt32(this.ddlProduct.SelectedValue);
            orderReq = Convert.ToBoolean(this.rblOrderReq.SelectedValue);
            price = Convert.ToDecimal(20.00); // NOT WORKING !!!!!

            try
            {
                DataRow r = dsAddSale.receipt.NewRow();
                r[1] = this.txtOrderNumber.Text;
                r[2] = this.txtOrderDate.Text;
                r[4] = payTypeID;
                r[5] = custID;
                r[6] = empID;
                dsAddSale.receipt.Rows.Add(r);

                DataRow o = dsAddSale.orderLine.NewRow();
                o[0] = price;
                o[1] = this.txtQuantity.Text;
                o[2] = orderReq;
                o[3] = this.txtOrderNote.Text;
                o[4] = prodID;
                o[5] = this.txtOrderNumber.Text;
                dsAddSale.orderLine.Rows.Add(o);

                Save();
            }
            catch
            {
                this.lblSave.Text = "Unable to update - Invalid Input";
            }
        }

        private void Save()
        {
            receiptTableAdapter daReceipt = new receiptTableAdapter();
            orderLineTableAdapter daOrderLine = new orderLineTableAdapter();
            try
            {
                daReceipt.Update(dsAddSale.receipt);
                daOrderLine.Update(dsAddSale.orderLine);
                dsAddSale.AcceptChanges();
                this.lblSave.Text = "Data Saved";
            }
            catch
            {
                dsAddSale.RejectChanges();
                this.lblSave.Text = "Unable to update";
            }
            
        }
    }
}