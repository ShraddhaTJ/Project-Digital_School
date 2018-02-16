using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace home
{
    public partial class careerRecResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int forId;
            forId = Convert.ToInt32(Session["Id"]);
            double a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0, a7 = 0, b1 = 0, b2 = 0, b3 = 0, b4 = 0;
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            SqlCommand com = new SqlCommand("select yr2010.Science, yr2011.Science, yr2012.Science, yr2013.Science, yr2014.Science from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id;", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a1 = u;
                Label1.Text = u.ToString();
                Session["Science"] = u;
            }

            con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            com = new SqlCommand(" select yr2010.Maths, yr2011.Maths, yr2012.Maths, yr2013.Maths, yr2014.Maths from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id;", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a2 = u;
                Label1.Text = u.ToString();
                Session["Maths"] = u;
            }



            con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            com = new SqlCommand("select yr2010.English, yr2011.English, yr2012.English, yr2013.English, yr2014.English from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id; ", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a3 = u;
                Label1.Text = u.ToString();
                Session["English"] = u;
            }

            con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            com = new SqlCommand("select yr2010.Social_Science, yr2011.Social_Science, yr2012.Social_Science, yr2013.Social_Science, yr2014.Social_Science from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id;", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a4 = u;
                Label1.Text = u.ToString();
                Session["Social_Science"] = u;
            }


            con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            com = new SqlCommand("select yr2010.Computer, yr2011.Computer, yr2012.Computer, yr2013.Computer, yr2014.Computer from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id;", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a5 = u;
                Label1.Text = u.ToString();
                Session["Computer"] = u;
            }


            con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            com = new SqlCommand("select yr2010.Sports, yr2011.Sports, yr2012.Sports, yr2013.Sports, yr2014.Sports from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id;", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a6 = u;
                Label1.Text = u.ToString();
                Session["Sports"] = u;
            }



            con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();

            com = new SqlCommand("select yr2010.Culturals, yr2011.Culturals, yr2012.Culturals, yr2013.Culturals, yr2014.Culturals from yr2010 INNER JOIN yr2011 ON yr2010.stud_id=yr2011.stud_id INNER JOIN yr2012 ON yr2010.stud_id=yr2012.stud_id INNER JOIN yr2013 ON yr2010.stud_id=yr2013.stud_id INNER JOIN yr2014 ON yr2010.stud_id=yr2014.stud_id where yr2010.stud_id=@stud_id;", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                double p, q, r, s, t, u;
                //p = dr.GetFloat(1);
                //q = dr.GetFloat(2);
                //r = dr.GetFloat(3);
                //s = dr.GetFloat(4);
                //t = dr.GetFloat(5);
                p = dr.GetDouble(0);
                q = dr.GetDouble(1);
                r = dr.GetDouble(2);
                s = dr.GetDouble(3);
                t = dr.GetDouble(4);

                u = (p + q + r + s + t) / 5;
                a7 = u;
                Label1.Text = u.ToString();
                Session["Culturals"] = u;
            }

            Label1.Enabled = false;
            //Label2.Text = Session["Science"].ToString();
            //Label3.Text = Session["Maths"].ToString();
            //Label4.Text = Session["English"].ToString();
            //Label5.Text = Session["Social_Science"].ToString();
            //Label6.Text = Session["Computer"].ToString();
            //Label7.Text = Session["Sports"].ToString();
            //Label8.Text = Session["Culturals"].ToString();

            //  a1=(float)Session["Science"];
            //a2 = (float)Session["Maths"];
            //a4= (float)Session["Social_Science"];
            // a3= (float)Session["English"];
            //a5= (float)Session["Computer"];
            // a6 = (float)Session["Sports"];
            //a7 = (float)Session["Culturals"];

            b1 = (a1 + a2) / 2;
            b2 = a2;
            b3 = (a3 + a4 + a7) / 3;
            b4 = (a1 + a2 + a5) / 3;

            if (b1 > b2 && b1 > b3 && b1 > b4)
            {
                Label1.Text = "We recommend you to opt for Science as your career path";
                //Response.Redirect("science.aspx");
            }

            else if (b2 > b1 && b2 > b3 && b2 > b4)
            {
                Label1.Text = "We recommend you to opt for Commerce as your career path";
                //Response.Redirect("commerce.aspx");
            }

            else if (b3 > b1 && b3 > b2 && b3 > b4)
            {
                Label1.Text = "We recommend you to opt for Arts as your career path";
                //Response.Redirect("arts.aspx");
            }

            else if (b4 > b1 && b4 > b2 && b4 > b3)
            {
                Label1.Text = "We recommend you to opt for Diploma as your career path";
                //Response.Redirect("diploma.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("diploma.aspx");
        }
    }
}