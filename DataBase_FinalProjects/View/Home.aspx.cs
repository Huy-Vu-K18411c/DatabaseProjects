using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataBase_FinalProjects.Libs;

namespace DataBase_FinalProjects.View
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Username user = (Libs.Username)Session["User"];
            lblWelcome.Text = user.username;
        }
    }
}