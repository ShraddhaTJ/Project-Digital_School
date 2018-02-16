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
    public partial class home11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
                Button1.Enabled = false;
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                Label2.Visible = false;
                Label3.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
                Label1.Text = "Successfully logged in";
            }
            else
            {
                Button1.Enabled = true;
                TextBox1.Enabled = true;
                TextBox2.Enabled = true;
                Label2.Visible = true;
                Label3.Visible = true;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Button1.Visible = true;

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=SHRADDHA\sqlexpress;Initial Catalog=shraddha;Integrated Security=True");
            //con.Open();
            //SqlCommand com = new SqlCommand("select * from login_student where Username=@uname and Password=@pass", con);
            //com.Parameters.AddWithValue("@uname", TextBox1.Text);
            //com.Parameters.AddWithValue("@pass", TextBox2.Text);

            //SqlDataReader dr = com.ExecuteReader();
            //if (dr.Read())
            //{

            //    Session["Id"] = dr[0];
            //  //  Response.Redirect("home1.aspx");
               
            //    Session["uname"] = TextBox1.Text;
            //    Response.Redirect("home1.aspx");
            //    Label1.Text = "Successfully logged in";
                
            //}


            //else
            //{
            //    con = new SqlConnection(@"Data Source=SHRADDHA\sqlexpress;Initial Catalog=shraddha;Integrated Security=True");
            //    con.Open();
            //    com = new SqlCommand("select * from login_teacher where username=@uname and password=@pass", con);
            //    com.Parameters.AddWithValue("@uname", TextBox1.Text);
            //    com.Parameters.AddWithValue("@pass", TextBox2.Text);

            //    dr = com.ExecuteReader();
            //    if (dr.Read())
            //    {
            //       // Response.Redirect("home1.aspx");
            //        Label1.Text = "Successfully logged in";
            //        Session["uname"] = TextBox1.Text;
            //        Response.Redirect("home1.aspx");
                    
            //    }
            //    else
            //    {
            //        Label1.Text = "Invalid username or password";
            //    }

            //}
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from login_student where Username=@uname and Password=@pass", con);
            com.Parameters.AddWithValue("@uname", TextBox1.Text);
            com.Parameters.AddWithValue("@pass", TextBox2.Text);

            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {

                Session["Id"] = dr[0];
                //  Response.Redirect("home1.aspx");

                Session["uname"] = TextBox1.Text;
                Response.Redirect("home1.aspx");
                Label1.Text = "Successfully logged in";

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
                    // Response.Redirect("home1.aspx");
                    Label1.Text = "Successfully logged in";
                    Session["uname"] = TextBox1.Text;
                    Response.Redirect("home1.aspx");

                }
                else
                {
                    Label1.Text = "Invalid username or password";
                }

            }

        }
    }
}