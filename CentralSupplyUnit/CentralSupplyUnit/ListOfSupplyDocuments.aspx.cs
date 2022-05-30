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
    public partial class ListOfSupplyDocuments : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=CentralSupplyUnit;Integrated Security=True";
        SqlDataAdapter _SqlDataAdapter = new SqlDataAdapter();
        SqlCommand _sqlcommand = new SqlCommand();
        SqlConnection _sqlconnection = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"].ToString() == "Employee")
            {
                if (!IsPostBack)
                {
                    ShowData();
                    DeleteWH.Attributes.Add("onclick", "javascript:return DeleteConfirm()");
                    AddWH.PostBackUrl = "~/AddSupplyDocuments.aspx";
                }
            }
        }
        protected void ShowData()
        {
            using (_sqlconnection = new SqlConnection(connectionstring))
            {
                _sqlconnection.Open();
                _sqlcommand = new SqlCommand("SupplyDocument_ShowData", _sqlconnection);
                _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                _SqlDataAdapter.SelectCommand = _sqlcommand;
                DataTable _datatable = new DataTable();
                _SqlDataAdapter.Fill(_datatable);
                ListOfSupplyDocuments_GV.DataSource = _datatable;
                ListOfSupplyDocuments_GV.DataBind();
            }
        }
        protected void DeleteRecord(int id)
        {
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("Delete_SupplyDocument", _sqlconnection);
            _sqlcommand.Parameters.AddWithValue("@id", id);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlconnection.Open();
            _sqlcommand.ExecuteNonQuery();
            ShowData();
            _sqlconnection.Close();
        }
        protected void DeleteSP_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow grow in ListOfSupplyDocuments_GV.Rows)
            {

                CheckBox chkdel = (CheckBox)grow.FindControl("ListOfSupplyDocumentsCheckBox");

                if (chkdel.Checked)
                {
                    
                    int id = Convert.ToInt32(chkdel.Attributes["value"]);
                    DeleteRecord(id);
                }
            }
        }

        
    }
}
