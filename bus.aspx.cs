using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace home
{
    public partial class bus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int forId;
            forId = Convert.ToInt32(Session["Id"]);
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select bus_no from bus1 where stud_id=@sid;", con);
            com.Parameters.AddWithValue("@sid", forId);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr[0].ToString();
            }

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("changeAddress.aspx");
        }
    }
}


