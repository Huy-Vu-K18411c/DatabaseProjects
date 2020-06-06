using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBase_FinalProjects.View
{
    public partial class ProductManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] dropDownItems =
            {
                "Giá tăng dần", "Giá giảm dần", "Tên từ A-Z", "Tên từ Z-A"
            };
            for(int i = 0; i< dropDownItems.Length; i++)
            {
                ddlFilter.Items.Insert(i, dropDownItems[i]);
            }
        }
    }
}