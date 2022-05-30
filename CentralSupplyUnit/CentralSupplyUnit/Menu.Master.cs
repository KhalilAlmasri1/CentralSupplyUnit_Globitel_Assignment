using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralSupplyUnit
{
    public partial class Menu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                M_Logout.Visible = true;
                if (Session["Type"].Equals("Administrator"))
                {
                    M_AdDNewEmployee.Visible = true;
                }
                else if (Session["Type"].Equals("Employee"))
                {
                    M_AddSupplyDocuments.Visible = true;
                    M_ListOfSupplyDocuments.Visible = true;
                }
                else
                {
                    M_Warehouse.Visible = true;
                    M_ListOfWarehouses.Visible = true;
                    M_MgrListOfSupplyDocuments.Visible = true;
                }
            
        }
    }
}
