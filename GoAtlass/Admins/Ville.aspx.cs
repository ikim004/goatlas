using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoAtlass.Admins
{

    public partial class Ville : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { GetInfo(); }
        }
        private void GetInfo()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("select * from ville ", cnx);
                cnx.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admins/InsertVille.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["idV"]= GridView1.SelectedRow.Cells[1].Text;
            Session["NomVille"] = GridView1.SelectedRow.Cells[2].Text;
            Session["Def"] = GridView1.SelectedRow.Cells[3].Text;
      

            Response.Redirect("~/Admins/ModifieVille.aspx");
        }
    }
}