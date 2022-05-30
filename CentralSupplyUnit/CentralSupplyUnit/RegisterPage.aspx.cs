using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;

namespace CentralSupplyUnit
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=CentralSupplyUnit;Integrated Security=True";
        SqlCommand _sqlcommand = new SqlCommand();
        SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter();
        SqlConnection _sqlconnection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Type"].ToString() =="Administrator")
            { }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void Signup_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                string password = (txtPassword.Text);
                string confirmpassword = txtConfirmPassword.Text;
                string fullname = txtFullName.Text;
                string username = txtUserName.Text;
                string type = Typeddl.SelectedItem.Text;
                if ((username == null) || (username.Length == 0))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of username faild");

                }
                if ((password == null) || (password.Length == 0))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of password faild");

                }
                if ((fullname == null) || (fullname.Length == 0))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of fullname faild");

                }
                if ((type == null) || (type.Length == 0))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of type faild");

                }
                if ((confirmpassword == null) || (confirmpassword.Length == 0))
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of confirmpassword faild");

                }
                if (password == confirmpassword)
                {
                    string hashpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");
                    _sqlconnection = new SqlConnection(connectionstring);
                    _sqlcommand = new SqlCommand("Regester", _sqlconnection);
                    _sqlcommand.Parameters.AddWithValue("@fullname", fullname);
                    _sqlcommand.Parameters.AddWithValue("@username", username);
                    _sqlcommand.Parameters.AddWithValue("@password", hashpassword);
                    _sqlcommand.Parameters.AddWithValue("@type", type);
                    _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                    _sqlconnection.Open();
                    int returnValue = (int)_sqlcommand.ExecuteScalar();
                    if (returnValue == -1)
                    {
                        Errormsg.Text = "The Employee Has Account";

                    }
                    else
                    {
                        Errormsg.Text = "The Account Has Been Created Successfully";
                    }

                }
                else
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of confirmpassword faild");

                }
            }
            
        }
    }

   
}