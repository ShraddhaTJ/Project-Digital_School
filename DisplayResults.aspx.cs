using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace home
{
    public partial class DisplayResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["x"].ToString() + "out of 10";
            int gnrl = (int)Session["x"];
            int per = gnrl * 100 / 10;
            Label2.Text = "Percentage for student:" + per;
        

           
        }

        protected void BtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("newhome.aspx");
        }
    }
}