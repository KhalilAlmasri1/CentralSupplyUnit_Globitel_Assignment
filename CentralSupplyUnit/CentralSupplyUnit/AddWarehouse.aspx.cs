using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralSupplyUnit
{
    public partial class AddWarehouse : System.Web.UI.Page
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
                    txtCreatedDateAndTime.ReadOnly = true;
                    string date = DateTime.Now.ToString();
                    txtCreatedDateAndTime.Text = date;
                    txtCreatedBy.Text = Session["ID"].ToString();
                    txtCreatedBy.ReadOnly = true;
                }
            }
        }
        protected void AddWarehouse_Click(object sender, EventArgs e)
        {
            CreateWarehouse();
        }
        protected void CreateWarehouse()
        {
            string Name = txtName.Text;
            string description = txtDescription.Text;
            int CreatedBy = Convert.ToInt32(txtCreatedBy.Text);
            DateTime dateTime = Convert.ToDateTime(txtCreatedDateAndTime.Text);
            string itemname = txtItemName.Text;
            string Itemdescription = txtItemDescription.Text;
            int quantity = Convert.ToInt32(txtItemQuantity.Text);
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("CreateWarehouse", _sqlconnection);
            _sqlcommand.Parameters.AddWithValue("@Name", Name);
            _sqlcommand.Parameters.AddWithValue("@description", description);
            _sqlcommand.Parameters.AddWithValue("@dateTime", dateTime);
            _sqlcommand.Parameters.AddWithValue("@itemname", itemname);
            _sqlcommand.Parameters.AddWithValue("@Itemdescription", Itemdescription);
            _sqlcommand.Parameters.AddWithValue("@quantity", quantity);
            _sqlcommand.Parameters.AddWithValue("@CreatedBy", CreatedBy);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlconnection.Open();
            _sqlcommand.ExecuteNonQuery();
            _sqlconnection.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}