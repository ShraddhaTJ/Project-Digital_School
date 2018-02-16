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
    public partial class changeAddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (IsPostBack)
            {
                try
                {
                    DropDownList1.Items.Clear();
                    String pincode = DropDownList2.Text;


                    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select distinct sub_area from bus1 where pincode=@pincode", con);
                    cmd.Parameters.AddWithValue("@pincode", pincode);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        DropDownList1.Items.Add(dr[0].ToString());
                    }
                }
                catch { }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct bus_no from bus1 where pincode=@pincode and sub_area=@subarea", con);
            cmd.Parameters.AddWithValue("@pincode", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@subarea", DropDownList1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Visible = true;
                Label1.Text = "For this address,you will be allocated bus number:" + dr[0].ToString();
            }

        }
    }
}
       