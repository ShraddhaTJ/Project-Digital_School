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
    public partial class selling : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("DELETE FROM Books1 WHERE CurrentDt < GETDATE()- 10	", con);
            com.ExecuteNonQuery();
            con.Close();

            ShowGrid();


        }
        public void ShowGrid()
        {
            int forId;
            forId = Convert.ToInt32(Session["Id"]);
            //  cmd = new SqlCommand("select * from Customer",cn);
            //  da = new SqlDataAdapter(cmd);
            // or 

            da = new SqlDataAdapter("select B_id,B_name,B_price,B_author from Books1 where stud_id=" + forId, cn);
            ds = new DataSet();
            da.Fill(ds, "Books1");
            GridView1.DataSource = ds.Tables[0];
            // or GridView1.DataSource=ds.Tables["Customer"];
            GridView1.DataBind();

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            int forId;
            forId = Convert.ToInt32(Session["Id"]);
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Books1(stud_id,B_name,B_author,B_price,Name,Contact) values(@stud_id,@Bname,@Bauthor,@Bprice,@Name,@Contact)", con);
            com.Parameters.AddWithValue("@stud_id", forId);
            //  com.Parameters.AddWithValue("@Bid", TextBox6.Text);
            com.Parameters.AddWithValue("@Bname", TxtBname.Text);
            com.Parameters.AddWithValue("@Bauthor", TxtAuth.Text);
            com.Parameters.AddWithValue("@Bprice", TxtBprice.Text);
            com.Parameters.AddWithValue("@Name", TxtYname.Text);
            com.Parameters.AddWithValue("@Contact", TxtContact.Text);
            //  com.Parameters.AddWithValue("@Quantity", TxtQty.Text);
            Response.Write("SUCCESSFULLY INSERTED!");

            com.ExecuteNonQuery();
            con.Close();
            TxtBname.Text = "";
            TxtAuth.Text = "";
            TxtBprice.Text = "";
            TxtYname.Text = "";
            TxtContact.Text = "";
            //    TxtQty.Text = "";

            //Label6.Text = "Successfully Inserted";

            ShowGrid();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("buying.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            cmd = new SqlCommand("Delete from Books1 where B_name=@bname and B_id=@bid", cn);
            cmd.Parameters.AddWithValue("@bname", TxtNameDel.Text);
            cmd.Parameters.Add("@bid", SqlDbType.Int).Value = Convert.ToInt32(TxtBidDel.Text);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "Books1");
            ds.AcceptChanges();
            Response.Write("Successfully Deleted");
            TxtNameDel.Text = "";
            TxtBidDel.Text = "";
            ShowGrid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            ShowGrid();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
    //    protected void Page_Load(object sender, EventArgs e)
    //    {

    //    }

    //    protected void Button5_Click(object sender, EventArgs e)
    //    {

    //    }
    //}
}