using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace DataBase_FinalProjects.View
{
    public partial class WarehouseManagement : System.Web.UI.Page
    {
        DataTable table;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadDropDownList();
                LoadDataGridView(DateTime.Today, DateTime.Today);
                for(int i = 0; i<table.Rows.Count;i++)
                {
                    if(gvDataWareHouse.Rows[i].Cells[6].Text != "1")
                    {
                        gvDataWareHouse.Rows[i].Cells[6].Text = "In progress";
                    }
                    else
                    {
                        gvDataWareHouse.Rows[i].Cells[6].Text = "Done";
                    }
                }
            }
        }

        private void LoadDataGridView(DateTime a, DateTime b)
        {
            SqlParameter[] sqlParams =
            {
                new SqlParameter("@a", a),
                new SqlParameter("@b", b)
            };
            try
            {
                if (table == null || table.Rows.Count < 1)
                {
                    table = Libs.Database.Data.ExcuteToDataTable("ORDERS_LISTFROM_A_TO_B", CommandType.StoredProcedure, sqlParams);
                    gvDataWareHouse.DataSource = table;
                    gvDataWareHouse.DataBind();
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        private void LoadOrder(string a)
        {
            DataTable tbOrder = new DataTable();
            SqlParameter[] id = { new SqlParameter("@id", a) };
            try
            {
                tbOrder = Libs.Database.Data.ExcuteToDataTable("ORDERS_PRODUCT_IN_ORDER_A", CommandType.StoredProcedure, id);
                gvOrderDetail.DataSource = tbOrder;
                gvOrderDetail.DataBind();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        private void LoadDropDownList()
        {
            string[] filterArr = { "Today", "Yesterday", "This week", "Last week", "This month", "3 months ago", "A year ago", "All the times" };
            ddlFilter.DataSource = filterArr;
            ddlFilter.DataBind();
        }

        protected void ddlFilter_TextChanged(object sender, EventArgs e)
        {
            if(ddlFilter.Text =="Today")
            {
                LoadDataGridView(DateTime.Today, DateTime.Today);
            }
            else if(ddlFilter.Text =="Yesterday")
            {
                LoadDataGridView(DateTime.Today.AddDays(-1), DateTime.Today);
            }
            else if(ddlFilter.Text == "Recent Week")
            {
                LoadDataGridView(DateTime.Today.AddDays(-7), DateTime.Today);
            }
            else if (ddlFilter.Text == "Last week")
            {
                LoadDataGridView(DateTime.Today.AddDays(-14), DateTime.Today.AddDays(-7));
            }
            else if (ddlFilter.Text == "3 months ago")
            {
                LoadDataGridView(DateTime.Today.AddDays(-90), DateTime.Today);
            }
            else if (ddlFilter.Text == "A year ago")
            {
                LoadDataGridView(DateTime.Today.AddDays(-365), DateTime.Today);
            }
        }

        protected void ddlFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlFilter.SelectedIndex==0)
            {
                LoadDataGridView(DateTime.Today, DateTime.Today);
            }
            else if (ddlFilter.SelectedIndex == 1)
            {
                LoadDataGridView(DateTime.Today.AddDays(-1), DateTime.Today);
            }
            else if (ddlFilter.SelectedIndex == 2)
            {
                LoadDataGridView(DateTime.Today.AddDays(-7), DateTime.Today);
            }
            else if (ddlFilter.SelectedIndex == 3)
            {
                LoadDataGridView(DateTime.Today.AddDays(-14), DateTime.Today.AddDays(-7));
            }
            else if (ddlFilter.SelectedIndex == 4)
            {
                LoadDataGridView(DateTime.Today.AddDays(-30), DateTime.Today);
            }
            else if (ddlFilter.SelectedIndex == 5)
            {
                LoadDataGridView(DateTime.Today.AddDays(-90), DateTime.Today);
            }
            else if (ddlFilter.SelectedIndex == 6)
            {
                LoadDataGridView(DateTime.Today.AddDays(-365), DateTime.Today);
            }
            else if (ddlFilter.SelectedIndex==7)
            {
                LoadDataGridView(DateTime.Today.AddYears(-5),DateTime.Today);
            }
        }

        protected void gvDataWareHouse_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtOrderId.Text = gvDataWareHouse.SelectedRow.Cells[1].Text;
            txtCustomerSurname.Text = gvDataWareHouse.SelectedRow.Cells[2].Text;
            txtCustomerName.Text = gvDataWareHouse.SelectedRow.Cells[3].Text;
            txtCreateDate.Text = gvDataWareHouse.SelectedRow.Cells[4].Text;
            txtTotalValue.Text = gvDataWareHouse.SelectedRow.Cells[5].Text;
            txtStatus.Text = gvDataWareHouse.SelectedRow.Cells[6].Text;
            LoadOrder(txtOrderId.Text);
        }

        protected void txtOrderId_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}