using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace home
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //if (Page.IsValid)
            //{
            //    Response.Redirect("HomePage.aspx?Username=" + TextBox1.Text);
            //}


            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from login_student where Username=@uname and Password=@pass", con);
            com.Parameters.AddWithValue("@uname", TextBox1.Text);
            com.Parameters.AddWithValue("@pass", TextBox2.Text);

            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {

                Session["Id"] = dr[0];
                Response.Redirect("home1.aspx");
            }


            else
            {
                con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
                con.Open();
                com = new SqlCommand("select * from login_teacher where username=@uname and password=@pass", con);
                com.Parameters.AddWithValue("@uname", TextBox1.Text);
                com.Parameters.AddWithValue("@pass", TextBox2.Text);

                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    Response.Redirect("home1.aspx");
                }
                else
                {
                    Label1.Text = "Invalid username or password";
                }

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}