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
    public partial class CustomerManagement : System.Web.UI.Page
    {
        DataTable table;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadDropDownList();
                LoadAllData(gvCustomerData);
                LoadDataAscAge(gvFilter);
                for (int i = 0; i<table.Rows.Count; i++)
                {
                    gvCustomerData.Rows[i].Cells[7].Text = "None Data Found";
                    if(gvCustomerData.Rows[i].Cells[8].Text=="0")
                    {
                        gvCustomerData.Rows[i].Cells[8].Text = "Male";
                    }
                    else
                    {
                        gvCustomerData.Rows[i].Cells[8].Text = "Female";
                    }
                    if (gvCustomerData.Rows[i].Cells[10].Text == "0")
                    {
                        gvCustomerData.Rows[i].Cells[10].Text = "Still buying";
                    }
                    else
                    {
                        gvCustomerData.Rows[i].Cells[10].Text = "Stop buying";
                    }
                }
            }
        }
        private void LoadDropDownList()
        {
            string[] dropDownArr = { "Sort by asending age", "Incoming Birthday" };
            ddlFilter.DataSource = dropDownArr;
            ddlFilter.DataBind();
            string[] dropDownSex = { "Male", "Female"};
            ddlSex.DataSource = dropDownSex;
            ddlSex.DataBind();
        }

        private int MaleOrFemale()
        {
            int gender = 0;
            if(ddlSex.Text.Trim() == "Female")
            {
                gender = 1;
            }
            return gender;
        }

        private void LoadAllData(GridView gv)
        {
            try
            {
                if (table == null || table.Rows.Count < 1)
                {
                    table = Libs.Database.Data.ExcuteToDataTable("CUSTOMER_SELECTALL", CommandType.StoredProcedure);
                    gv.DataSource = table;
                    gv.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void LoadDataAscAge(GridView gv)
        {
            try
            {
                if (table == null || table.Rows.Count < 1)
                {
                    table = Libs.Database.Data.ExcuteToDataTable("CUSTOMER_AGE_ASC", CommandType.StoredProcedure);
                    gv.DataSource = table;
                    gv.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private void LoadCurrentDOB(GridView gv)
        {
            try
            {
                if (table == null || table.Rows.Count < 1)
                {
                    table = Libs.Database.Data.ExcuteToDataTable("CUSTOMER_LIST_CURRENTDOB", CommandType.StoredProcedure);
                    gv.DataSource = table;
                    gv.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void ddlFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlFilter.SelectedIndex == 0)
            {
                LoadAllData(gvFilter);
            }
            else if(ddlFilter.SelectedIndex == 1)
            {
                LoadDataAscAge(gvFilter);
            }
            else if (ddlFilter.SelectedIndex == 2)
            {
                LoadCurrentDOB(gvFilter);
            }
        }

        protected void ddlFilter_TextChanged(object sender, EventArgs e)
        {
            if (ddlFilter.Text == "Sort by asending age")
            {
                LoadDataAscAge(gvFilter);
            }
            else if (ddlFilter.Text == "Incoming Birthday") 
            {
                LoadCurrentDOB(gvFilter);
            }
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            SqlParameter[] sqlParams =
            {
                new SqlParameter("@CustomerId", txtCustomerId.Text),
                new SqlParameter("@CustomerSurname",txtCustomerSurname.Text.Trim()),
                new SqlParameter("@CustomerName",txtCustomerName.Text.Trim()),
                new SqlParameter("@Phone",txtPhone.Text.Trim()),
                new SqlParameter("@Email",txtEmail.Text.Trim()),
                new SqlParameter("@CusAddress",txtAddress.Text.Trim()),
                new SqlParameter("@Avatar", null),
                new SqlParameter("@Sex", MaleOrFemale()),
                new SqlParameter("@DOB", DateTime.Parse(txtDOB.Text.Trim()))
            };
            try
            {
                Libs.Database.Data.ExecuteNonQuery("CUSTOMER_INSERT", CommandType.StoredProcedure, sqlParams);
                lblWarning.Text = "Successfully created a new customer!";
                lblWarning.ForeColor = System.Drawing.Color.Red;
            }
            catch (Exception ex)
            {
                lblWarning.Visible = true;
                lblWarning.Text = ex.ToString();
            }
            Libs.Database.Data.con.Close();
            LoadAllData(gvCustomerData);
        }

        private void DeleteCustomer()
        {
            SqlParameter []sqlParam = { new SqlParameter("@id", txtCustomerId.Text.Trim())};
            try
            {
                Libs.Database.Data.ExecuteNonQuery("CUSTOMER_DELETE", CommandType.StoredProcedure, sqlParam);
                lblWarning.Text = "Successfully delete a new customer!";
                lblWarning.ForeColor = System.Drawing.Color.Red;
            }
            catch(Exception ex)
            {
                lblWarning.Visible = true;
                lblWarning.Text = "Cannot do this action right now";
            }
            LoadAllData(gvCustomerData);
        }

        private void UpdateCusInfo()
        {
            SqlParameter[] sqlParams =
            {
                new SqlParameter("@CustomerId", txtCustomerId.Text),
                new SqlParameter("@CustomerSurname",txtCustomerSurname.Text.Trim()),
                new SqlParameter("@CustomerName",txtCustomerName.Text.Trim()),
                new SqlParameter("@Phone",txtPhone.Text.Trim()),
                new SqlParameter("@Email",txtEmail.Text.Trim()),
                new SqlParameter("@CusAddress",txtAddress.Text.Trim()),
                new SqlParameter("@Avatar", null),
                new SqlParameter("@Sex", MaleOrFemale()),
                new SqlParameter("@DOB", DateTime.Parse(txtDOB.Text.Trim()))
            };
            try
            {
                Libs.Database.Data.ExecuteNonQuery("CUSTOMER_UPDATE_ALL", CommandType.StoredProcedure, sqlParams);
                lblWarning.Text = "Successfully update a new customer!";
                lblWarning.ForeColor = System.Drawing.Color.Red;
            }
            catch(Exception ex)
            {
                lblWarning.Visible = true;
                lblWarning.Text = "Cannot do this action right now";
                throw ex;
            }
            Libs.Database.Data.con.Close();
            LoadAllData(gvCustomerData);
        }

        protected void cldDOB_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = cldDOB.SelectedDate.ToShortDateString();
            cldDOB.Visible = false;
        }

        protected void btnimgCalendar_Click(object sender, ImageClickEventArgs e)
        {
            cldDOB.Visible = true;
        }

        protected void gvCustomerData_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCustomerId.Text = gvCustomerData.SelectedRow.Cells[1].Text;
            txtCustomerName.Text = gvCustomerData.SelectedRow.Cells[3].Text;
            txtCustomerSurname.Text = gvCustomerData.SelectedRow.Cells[2].Text;
            txtPhone.Text = gvCustomerData.SelectedRow.Cells[4].Text;
            txtEmail.Text = gvCustomerData.SelectedRow.Cells[5].Text;
            txtAddress.Text = gvCustomerData.SelectedRow.Cells[6].Text;
            ddlSex.Text = gvCustomerData.SelectedRow.Cells[8].Text;
            txtDOB.Text = gvCustomerData.SelectedRow.Cells[9].Text;
            txtStatus.Text = gvCustomerData.SelectedRow.Cells[10].Text;
            txtLink.Text = gvCustomerData.SelectedRow.Cells[7].Text;
            txtLastModified.Text = gvCustomerData.SelectedRow.Cells[11].Text;
        }

        protected void btnDeleteCustomer_Click(object sender, EventArgs e)
        {
            DeleteCustomer();
        }

        protected void btnFixCustomer_Click(object sender, EventArgs e)
        {
            UpdateCusInfo();
        }
    }
}