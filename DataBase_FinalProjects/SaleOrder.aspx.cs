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
            string data = "";
            DataTable dttb = DanhSachHienThi();
            if (dttb.Rows.Count>0)
            {
                for (int i = 0; i <= 5; i++)
                {
                    data = dttb.Rows[i]["ProductName"].ToString();
                    display += "<div><h2>" + data + "</h2></div>";
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
            DataTable table = Libs.Database.Data.ExcuteToDataTable("PRODUCT_DisplayProduct",CommandType.StoredProcedure);
            return table;
        }
    }
}