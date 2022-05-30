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
    public partial class Mgr_ListOfSupplyDocuments : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=CentralSupplyUnit;Integrated Security=True";
        SqlCommand _sqlcommand = new SqlCommand();
        SqlConnection _sqlconnection = new SqlConnection();
        SqlDataAdapter _SqlDataAdapter = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"].ToString() == "Manager")
            {
                if (!IsPostBack)
                {
                    ShowData();
                }
            }

        }
        protected void ShowData()
        {
            using (_sqlconnection = new SqlConnection(connectionstring))
            {
                _sqlconnection.Open();
                _sqlcommand = new SqlCommand("RequestShowData", _sqlconnection);
                _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                _SqlDataAdapter.SelectCommand = _sqlcommand;
                DataTable _datatable = new DataTable();
                _SqlDataAdapter.Fill(_datatable);
                MgrListOfSupplyDocuments_GV.DataSource = _datatable;
                MgrListOfSupplyDocuments_GV.DataBind();
            }
        }

        protected void DeclineRequest(int id)
        {
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("DeclineRequest", _sqlconnection);
            _sqlcommand.Parameters.AddWithValue("@id", id);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlconnection.Open();
            _sqlcommand.ExecuteNonQuery();
            ShowData();
            _sqlconnection.Close();
        }
        protected void Decline_Click(object sender, EventArgs e)
        {
            
            int id = Convert.ToInt32((sender as Button).CommandArgument);
            
            DeclineRequest(id);
        }

        protected void ApproveRequest(int id)
        {
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("Approve", _sqlconnection);
            _sqlcommand.Parameters.AddWithValue("@id", id);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlconnection.Open();
            _sqlcommand.ExecuteNonQuery();
            ShowData();
            _sqlconnection.Close();
        }



        protected void ApproveButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as Button).CommandArgument);


            ApproveRequest(id);


        }           

        
    }

}