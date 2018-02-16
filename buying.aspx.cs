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
    public partial class buying : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
            }
        }

        public void ShowGrid()
        {
            SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select B_id,B_name,B_price,B_author,Contact from Books1 order by B_id desc", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Books");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("selling.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ShowGrid();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-G11OB3NS;Initial Catalog=shraddha;Integrated Security=True");
            string a;
            a = TxtSearch.Text;
            SqlCommand cmd = new SqlCommand("select B_id,B_name,B_price,B_author,Contact from Books1 where B_name like '%" + a + "%'", cn);
            //cmd.Parameters.AddWithValue("@search", TxtSearch.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Books");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("newhome.aspx");
        }
    }
   
}
