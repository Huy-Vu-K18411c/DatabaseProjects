using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DataBase_FinalProjects.Libs;


namespace DataBase_FinalProjects.View
{
    public partial class SaleOrder : System.Web.UI.Page
    {
        string[] cartArr;
        DataTable dttb;
        protected void Page_Load(object sender, EventArgs e)
        {
            string display = "";
            DataTable dttb = DanhSachHienThi();
            if (dttb.Rows.Count>0)
            {
                lblNameProduct.Text = dttb.Rows[0]["ProductName"].ToString();
                lblPriceProductA.Text = dttb.Rows[0]["OutputPrice"].ToString();
                lblproa.Text = dttb.Rows[1]["ProductName"].ToString();
                Label1.Text = dttb.Rows[1]["OutputPrice"].ToString();
                lblprob.Text = dttb.Rows[2]["ProductName"].ToString();
                Label2.Text = dttb.Rows[2]["OutputPrice"].ToString();
                lblproc.Text = dttb.Rows[3]["ProductName"].ToString();
                Label3.Text = dttb.Rows[3]["OutputPrice"].ToString();
                lblprod.Text = dttb.Rows[4]["ProductName"].ToString();
                Label4.Text = dttb.Rows[4]["OutputPrice"].ToString();
                lblproe.Text = dttb.Rows[5]["ProductName"].ToString();
                Label5.Text = dttb.Rows[5]["OutputPrice"].ToString();
                lblprof.Text = dttb.Rows[6]["ProductName"].ToString();
                Label6.Text = dttb.Rows[6]["OutputPrice"].ToString();
                //dynamicDiv.InnerHtml = display;
            }
            else
            {
                display = "Error";
                dynamicDiv.InnerHtml = display;
            }
        }
        List<product> Cart; 
        private void addToCard(string id)
        {
            
        }

        private DataTable DanhSachHienThi()
        {
            DataTable table = Libs.Database.Data.ExcuteToDataTable("STATISTIC_PRODUCT_7_TOP", CommandType.StoredProcedure);
            return table;
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            addToCard(dttb.Rows[0]["ProductId"].ToString());
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            addToCard(dttb.Rows[1]["ProductId"].ToString());
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            addToCard(dttb.Rows[2]["ProductId"].ToString());
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            addToCard(dttb.Rows[3]["ProductId"].ToString());
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            addToCard(dttb.Rows[4]["ProductId"].ToString());
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            addToCard(dttb.Rows[5]["ProductId"].ToString());
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            addToCard(dttb.Rows[6]["ProductId"].ToString());
        }
    }
}