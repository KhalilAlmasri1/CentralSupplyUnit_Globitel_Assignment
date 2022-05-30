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
    public partial class AddSupplyDocuments : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=CentralSupplyUnit;Integrated Security=True";
        SqlCommand _sqlcommand = new SqlCommand();
        SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter();
        SqlConnection _sqlconnection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"].ToString() == "Employee")
            {
                if (!IsPostBack)
                {
                    DocumentWarehouseddl.SelectedItem.Text = "Choose Warehouse";
                    txtDocumentCreatedBy.Text = Session["ID"].ToString();
                    txtDocumentCreatedBy.ReadOnly = true;
                    txtDocumentCreatedDateAndTime.ReadOnly = true;
                    string date = DateTime.Now.ToString();
                    txtDocumentCreatedDateAndTime.Text = date;
                    _sqlconnection = new SqlConnection(connectionstring);
                    _sqlcommand = new SqlCommand("Warehouseddl", _sqlconnection);

                    _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                    _sqlconnection.Open();
                    DocumentWarehouseddl.DataSource = _sqlcommand.ExecuteReader();
                    DocumentWarehouseddl.DataTextField = "WarehouseName";
                    DocumentWarehouseddl.DataValueField = "ID";
                    DocumentWarehouseddl.DataBind();
                    
                }
                else
                {
                    int id = Convert.ToInt32(DocumentWarehouseddl.SelectedValue);
                    DocumentWarehouseddl.SelectedValue = id.ToString();
                }
            }
        }
        protected void CreateSupplyDocument()
        {
            string Name = txtDocumentName.Text;
            string subject = txtDocumentSubject.Text;
            int CreatedBy = Convert.ToInt32(txtDocumentCreatedBy.Text);
            DateTime dateTime = Convert.ToDateTime(txtDocumentCreatedDateAndTime.Text);
            int warehouseid =Convert.ToInt32(DocumentWarehouseddl.SelectedValue);
            int itemid = Convert.ToInt32(DocumentItemddl.SelectedValue);
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("CreateSupplyDocument", _sqlconnection);
            _sqlcommand.Parameters.AddWithValue("@name", Name);
            _sqlcommand.Parameters.AddWithValue("@sub", subject);
            _sqlcommand.Parameters.AddWithValue("@datetime", dateTime);
            _sqlcommand.Parameters.AddWithValue("@wrid", warehouseid);
            _sqlcommand.Parameters.AddWithValue("@itemid", itemid);
            _sqlcommand.Parameters.AddWithValue("@CB", CreatedBy);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlconnection.Open();
            _sqlcommand.ExecuteNonQuery();
            _sqlconnection.Close();
            Response.Redirect(Request.RawUrl);

        }
        protected void CreateSupplyDocument_Click(object sender, EventArgs e)
        {
            CreateSupplyDocument();    
        }

        protected void Documentitemddl(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(DocumentWarehouseddl.SelectedValue);
            DocumentItemddl.Items.Clear();
            _sqlconnection = new SqlConnection(connectionstring);
            _sqlcommand = new SqlCommand("Itemsddl", _sqlconnection);
            _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlcommand.Parameters.AddWithValue("@id",id);
            _sqlconnection.Open();
            DocumentItemddl.DataSource = _sqlcommand.ExecuteReader();
            DocumentItemddl.DataTextField = "ItemsName";
            DocumentItemddl.DataValueField = "ID";
            DocumentItemddl.DataBind();

        }
    }
}