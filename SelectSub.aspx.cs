using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace home
{
    public partial class SelectSub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedIndex == 0)
            {
                Response.Redirect("online.Aspx");
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                Response.Redirect("online.Aspx");
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                Response.Redirect("online.Aspx");
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                Response.Redirect("online.Aspx");
            }
            else
            {
                Response.Redirect("online.Aspx");
            }
        }
    }
}