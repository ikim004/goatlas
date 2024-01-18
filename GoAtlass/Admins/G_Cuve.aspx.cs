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
    public partial class G_Cuve : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetInfo();
            }
        }
        private void GetInfo()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("select * from Gestion_Cuve ", cnx);
                cnx.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["IdCuve"] = GridView1.SelectedRow.Cells[0].Text;
            Session["Num_cuve"] = GridView1.SelectedRow.Cells[1].Text;
            Session["Nom_cuve"] = GridView1.SelectedRow.Cells[2].Text;

            Session["CapacityCu"] = GridView1.SelectedRow.Cells[3].Text;
            Session["ProduitCuv"] = GridView1.SelectedRow.Cells[4].Text;
            Session["Stock_initial"] = GridView1.SelectedRow.Cells[5].Text;
            Session["StockFinale"] = GridView1.SelectedRow.Cells[6].Text;
       

            Response.Redirect("~/Admins/modifierCuve.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admins/insertCuve.aspx");
        
        }
    }
}