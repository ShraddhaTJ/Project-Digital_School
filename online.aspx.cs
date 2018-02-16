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
    public partial class online : System.Web.UI.Page
    {

        // string[] arr = new string[100];
        public static int incvar = 1, x = 0;
        public static int lo = 0;
        static int i = 19;
        static int j = 2;

        // public void show();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (incvar == 1)
            {
                Button1.Enabled = false;
                // Button1.Visible = false;
            }


            loadfromdb();

        }






        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;

            // Button1.Visible = true;

            lo++;
            if (RadioButton2.Checked)
            {
                ListBox1.Items.Add(RadioButton2.Text);
                // arr[incvar] = RadioButton2.Text;


            }
            else if (RadioButton3.Checked)
            {
                ListBox1.Items.Add(RadioButton3.Text);
                // arr[incvar] = RadioButton2.Text;

            }
            else if (RadioButton4.Checked)
            {
                ListBox1.Items.Add(RadioButton4.Text);
                //arr[incvar] = RadioButton2.Text;

            }
            else if (RadioButton5.Checked)
            {
                ListBox1.Items.Add(RadioButton5.Text);
                //arr[incvar] = RadioButton2.Text;

            }
            else
            {
                ListBox1.Items.Add("aaa");
            }
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;

            incvar++;

            loadfromdb();
            int forcnt = ListBox2.Items.Count;
            try
            {
                if (RadioButton2.Text == ListBox2.Items[forcnt - 1].ToString())
                {
                    RadioButton2.Checked = true;
                }
                else if (RadioButton3.Text == ListBox2.Items[forcnt - 1].ToString())
                {
                    RadioButton3.Checked = true;
                }
                else if (RadioButton4.Text == ListBox2.Items[forcnt - 1].ToString())
                {
                    RadioButton4.Checked = true;
                }
                else if (RadioButton5.Text == ListBox2.Items[forcnt - 1].ToString())
                {
                    RadioButton5.Checked = true;
                }
                else
                {
                    //RadioButton2.Checked = true;
                }

                ListBox2.Items.RemoveAt(forcnt - 1);

            }
            catch
            {
            }




        }

        public void loadfromdb()
        {
            if (incvar >= 10)
            {
                Button2.Enabled = false;
            }
            else
            {
                Button2.Enabled = true;
            }
            if (incvar >= 11)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Button2.Enabled = false;
                Button1.Enabled = false;
                //Button2.Visible = false;
                //Button1.Visible = false;
                RadioButton2.Visible = false;
                RadioButton3.Visible = false;
                RadioButton4.Visible = false;
                RadioButton5.Visible = false;
                Label4.Text = "Click On Finish Button To get your results";
            }
            else
            {
                Label2.Text = "Question " + incvar + ":";
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
                con.Open();

                SqlCommand com = new SqlCommand("select ans1 from online where SrNo=@SrNo", con);
                com.Parameters.AddWithValue("SrNo", incvar);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    RadioButton2.Text = dr[0].ToString();
                }
                con.Close();

                con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
                con.Open();
                com = new SqlCommand("select question from online where SrNo=@SrNo", con);
                com.Parameters.AddWithValue("SrNo", incvar);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    Label1.Text = dr[0].ToString();
                }
                con.Close();

                con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
                con.Open();
                com = new SqlCommand("select ans2 from online where SrNo=@SrNo", con);
                com.Parameters.AddWithValue("SrNo", incvar);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    RadioButton3.Text = dr[0].ToString();
                }
                con.Close();

                con.Open();
                com = new SqlCommand("select ans3 from online where SrNo=@SrNo", con);
                com.Parameters.AddWithValue("SrNo", incvar);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    RadioButton4.Text = dr[0].ToString();
                }
                con.Close();

                con.Open();
                com = new SqlCommand("select ans4 from online where SrNo=@SrNo", con);
                com.Parameters.AddWithValue("SrNo", incvar);
                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    RadioButton5.Text = dr[0].ToString();
                }
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lo--;
            if (RadioButton2.Checked)
            {
                ListBox2.Items.Add(RadioButton2.Text);
                // arr[incvar] = RadioButton2.Text;


            }
            else if (RadioButton3.Checked)
            {
                ListBox2.Items.Add(RadioButton3.Text);
                // arr[incvar] = RadioButton2.Text;

            }
            else if (RadioButton4.Checked)
            {
                ListBox2.Items.Add(RadioButton4.Text);
                //arr[incvar] = RadioButton2.Text;

            }
            else if (RadioButton5.Checked)
            {
                ListBox2.Items.Add(RadioButton5.Text);
                //arr[incvar] = RadioButton2.Text;

            }
            else
            {
                ListBox2.Items.Add("aaa");
            }
            // int y = incvar - 2;

            // ListBox1.Items.RemoveAt(incvar-2);
            //            ListBox1.Items.
            //  ListBox2.Items.Add(ListBox1.Items[incvar - 1].ToString());
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            incvar--;

            loadfromdb();
            if (RadioButton2.Text == ListBox1.Items[incvar - 1].ToString())
            {
                RadioButton2.Checked = true;
            }
            else if (RadioButton3.Text == ListBox1.Items[incvar - 1].ToString())
            {
                RadioButton3.Checked = true;
            }
            else if (RadioButton4.Text == ListBox1.Items[incvar - 1].ToString())
            {
                RadioButton4.Checked = true;
            }
            else if (RadioButton5.Text == ListBox1.Items[incvar - 1].ToString())
            {
                RadioButton5.Checked = true;
            }
            else
            {
                //RadioButton2.Checked = true;
            }

            ListBox1.Items.RemoveAt(incvar - 1);

            if (incvar == 1)
            {
                Button1.Enabled = false;
                //Button1.Visible = false;
            }

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        public void onFinish()
        {
            if (RadioButton2.Checked)
            {
                ListBox1.Items.Add(RadioButton2.Text);
                lo++;
            }
            else if (RadioButton3.Checked)
            {
                ListBox1.Items.Add(RadioButton3.Text);
                lo++;
            }
            else if (RadioButton4.Checked)
            {
                ListBox1.Items.Add(RadioButton4.Text);
                lo++;
            }
            else if (RadioButton5.Checked)
            {
                ListBox1.Items.Add(RadioButton5.Text);
                lo++;
            }
            else
            {
                ListBox1.Items.Add("aaaa");
                lo++;
            }

            int x = 0;
            string tocmp = "";
            string tocmp2 = "";
            for (int loopvar = 1; loopvar <= lo; loopvar++)
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
                con.Open();
                SqlCommand com = new SqlCommand("select correct from online where SrNo=@SrNo", con);
                com.Parameters.AddWithValue("SrNo", loopvar);
                SqlDataReader dr = com.ExecuteReader();

                if (dr.Read())
                {
                    tocmp = dr.GetString(dr.GetOrdinal("correct"));
                }
                tocmp2 = ListBox1.Items[loopvar - 1].ToString();
                //while (dr.Read())
                //{
                con.Close();
                if (String.Equals(tocmp.ToString(), tocmp2.ToString()))
                {
                    //x++;
                    ++x;
                }
                else
                {
                }
            }
            Label1.Visible = false;
            Label2.Visible = false;
            Label4.Visible = false;
            RadioButton2.Visible = false;
            RadioButton3.Visible = false;
            RadioButton4.Visible = false;
            RadioButton5.Visible = false;

            Label3.Text = "Score is:" + x.ToString() + "/10";
            incvar = 1;
            Session["x"] = x;
            Button1.Enabled = false;
            Button2.Enabled = false;
            Button3.Enabled = false;
            // Button1.Visible = false;
            // Button2.Visible = false;
            // Button3.Visible = false;
            Button4.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            onFinish();
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayResults.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (j == 0 && i == 0)
            {
                onFinish();
                Response.Redirect("DisplayResults.aspx");
            }

            if (i == 0)
            {
                j--;
                i = 59;
            }

            if (i >= 10)
                Label5.Text = Convert.ToString(j) + ":" + Convert.ToString(i--);
            else
                Label5.Text = Convert.ToString(j) + ":0" + Convert.ToString(i--);
        }


    }
}
