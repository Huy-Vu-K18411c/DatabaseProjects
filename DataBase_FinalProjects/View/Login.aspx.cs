using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using DataBase_FinalProjects.Libs;


namespace DataBase_FinalProjects.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Contains("@") == false)
            {
                lblWarning.Text = "Email is incorrect format";
                lblWarning.ForeColor = System.Drawing.Color.Red;
                lblWarning.Visible = true;
            }
            else
            {
                SqlParameter[] sqlParams =
                {
                    new SqlParameter("@email", txtEmail.Text),
                    new SqlParameter("@password", Libs.Database.Data.HashBytesSHA1(txtPassword.Text.Trim()))
                };
                DataTable table = new DataTable();
                try
                {
                    table = Libs.Database.Data.ExcuteToDataTable("STAFF_CHECKLOGIN", CommandType.StoredProcedure, sqlParams);
                    if(table.Rows.Count>0)
                    {
                        string username = table.Rows[0]["Email"].ToString();
                        string password = table.Rows[0]["Password"].ToString();
                        Username user = new Username();
                        user.username = username;
                        Session["User"] = user;
                        Response.Redirect("/View/Home.aspx");
                    }
                    else
                    {
                        lblWarning.Text = "Failed attempt to login";
                        lblWarning.ForeColor = System.Drawing.Color.Red;
                        lblWarning.Visible = true;
                    }
                }
                catch
                {
                    lblWarning.Text = "Email or Password is incorrect";
                    lblWarning.ForeColor = System.Drawing.Color.Red;
                    lblWarning.Visible = true;
                }
            }
            
        }
    }
}