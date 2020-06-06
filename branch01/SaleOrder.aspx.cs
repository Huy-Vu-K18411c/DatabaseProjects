using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace DataBase_FinalProjects.View
{
    public partial class SaleOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string display = "";
            string dataName = "";
            string dataPrice = "";
            DataTable dttb = DanhSachHienThi();
            if (dttb.Rows.Count>0)
            {
                lblNameProduct.Text = dttb.Rows[0]["ProductName"].ToString();
                lblPriceProductA.Text = dttb.Rows[0]["OutputPrice"].ToString();
                for (int i = 1; i <= 6; i++)
                {
                    dataName = dttb.Rows[i]["ProductName"].ToString();
                    dataPrice = dttb.Rows[i]["OutputPrice"].ToString();
                    display += "<div><h2>" + dataName + "</h2><p>Price:</p>" + dataPrice;
                }
                dynamicDiv.InnerHtml = display;
            }
            else
            {
                display = "Error";
                dynamicDiv.InnerHtml = display;
            }
            

        }
        private DataTable DanhSachHienThi()
        {
            DataTable table = Libs.Database.Data.ExcuteToDataTable("STATISTIC_PRODUCT_7_TOP", CommandType.StoredProcedure);
            return table;
        }
    }
}