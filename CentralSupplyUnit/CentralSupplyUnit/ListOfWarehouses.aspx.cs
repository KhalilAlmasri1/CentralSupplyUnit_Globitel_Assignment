using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CentralSupplyUnit
{
    
    public partial class ListOfWarehouses : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=CentralSupplyUnit;Integrated Security=True";
        
        SqlCommand _sqlcommand = new SqlCommand();
        SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter();
        SqlConnection _sqlconnection = new SqlConnection();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"].ToString() == "Manager")
            {
            if (!IsPostBack)
            {
                ShowData();
                DeleteWH.Attributes.Add("onclick", "javascript:return DeleteConfirm()");
                AddWH.PostBackUrl = "~/AddWarehouse.aspx";
            }

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ShowData()
        {
            using ( _sqlconnection = new SqlConnection(connectionstring))
            {
                _sqlconnection.Open();
               
                 _sqlcommand = new SqlCommand("ShowData", _sqlconnection);
                _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                _sqlDataAdapter.SelectCommand = _sqlcommand;
                DataTable _datatable = new DataTable();
                _sqlDataAdapter.Fill(_datatable);
                ListOfWarehouses_GV.DataSource = _datatable;
                ListOfWarehouses_GV.DataBind();
                _sqlconnection.Close();
            }
        }
        protected void DeleteRecord(int warehouseid)
        {
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("WarehouseDelete", _sqlconnection);
            _sqlcommand.Parameters.AddWithValue("@warehouseid", warehouseid);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlconnection.Open();
            _sqlcommand.ExecuteNonQuery();
            ShowData();
            _sqlconnection.Close();
        }
        protected void DeleteRecord_Click(object sender, EventArgs e)
        {
            
            foreach (GridViewRow grow in ListOfWarehouses_GV.Rows)
            {

                CheckBox chkdel = (CheckBox)grow.FindControl("WareouseCheckBox");

                if (chkdel.Checked)
                {

                    
                    int id = Convert.ToInt32(chkdel.Attributes["value"]);
                    DeleteRecord(id);
                }
            }
        }

        protected void Viewbtn_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as Button).CommandArgument);
            Items_View(id);
            menu.Visible = true;
        }

        protected void Items_View(int id)
        {
            using (_sqlconnection = new SqlConnection(connectionstring))
            {
                _sqlconnection.Open();
                 _sqlcommand = new SqlCommand("Get_Items", _sqlconnection);
                _sqlcommand.Parameters.AddWithValue("@warehouseid",id);
                _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                _sqlDataAdapter.SelectCommand = _sqlcommand;
                DataTable _datatable = new DataTable();
                _sqlDataAdapter.Fill(_datatable);
                Items_GV.DataSource = _datatable;
                Items_GV.DataBind();
                _sqlconnection.Close();
            }
        }
    }
}