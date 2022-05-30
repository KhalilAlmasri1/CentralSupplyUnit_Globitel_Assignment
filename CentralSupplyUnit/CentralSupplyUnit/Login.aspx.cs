using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

namespace CentralSupplyUnit
{
    public partial class Login : System.Web.UI.Page
    {

        string connectionstring = "Data Source=localhost;Initial Catalog=CentralSupplyUnit;Integrated Security=True";
        SqlCommand _sqlcommand = new SqlCommand();
        SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter();
        SqlConnection _sqlconnection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void Login1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string password = txtLoginPassword.Text.ToString();
                

                if (ValidateUser(txtLoginUserName.Text.ToString(), password))
                {
                    FormsAuthentication.RedirectFromLoginPage(txtLoginUserName.Text, chkRememberMe.Checked);
                    if (Session["Type"].ToString()=="Manager")
                    {
                        Response.Redirect("ListOfWarehouses.aspx");
                    }
                    else if(Session["Type"].ToString() == "Employee")
                        Response.Redirect("ListOfSupplyDocuments.aspx");
                    else
                    {
                        Response.Redirect("RegisterPage.aspx");
                    }
                }
                else
                    Errormsg.Text = "Wrong UserName or Password";

            }
        }
        private bool ValidateUser(string username, string password)
        {

           
            if ((username == null) || (username.Length == 0))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of username faild");
                return false;
            }
            if ((password == null) || (password.Length == 0))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of password faild");
                return false;
            }
            using (_sqlconnection = new SqlConnection(connectionstring))
            {
                string hashpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "MD5");
                _sqlconnection.Open();
                _sqlcommand = new SqlCommand("Login", _sqlconnection);
                _sqlcommand.Parameters.AddWithValue("@uname", username);
                _sqlcommand.Parameters.AddWithValue("@password", hashpassword);
                _sqlcommand.CommandType = System.Data.CommandType.StoredProcedure;
                
               
                SqlDataReader reader = _sqlcommand.ExecuteReader();
                if (!reader.HasRows)
                {
                    return false;
                }
                else
                {
                    reader.Read();
                   Session["Type"] = reader.GetValue(4).ToString();
                    Session["ID"] = reader.GetValue(0).ToString();
                    return true;
                }
            }
        }




        
    }   
}