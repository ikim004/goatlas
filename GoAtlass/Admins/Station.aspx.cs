using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoAtlass.Admins
{
    public partial class Station : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from Stations ", cnx);
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
            Response.Redirect("~/Admins/InsertStation.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = GridView1.SelectedRow.Cells[0].Text;
            Session["nom"] = GridView1.SelectedRow.Cells[1].Text;
            Session["address"] = GridView1.SelectedRow.Cells[2].Text;
            Session["Ip_Prive"] = GridView1.SelectedRow.Cells[3].Text;
            Session["Pos_Num"] = GridView1.SelectedRow.Cells[4].Text;
            Session["Prix_G"] = GridView1.SelectedRow.Cells[5].Text;
            Session["Prix_Limpio"] = GridView1.SelectedRow.Cells[6].Text;
            Session["Prix_SSP"] = GridView1.SelectedRow.Cells[7].Text;
            Session["Ip_Public"] = GridView1.SelectedRow.Cells[8].Text;
            Session["Nom_Ville"] = GridView1.SelectedRow.Cells[9].Text;
            Session["Id_Gerant"] = GridView1.SelectedRow.Cells[10].Text;
            Session["Status"] = GridView1.SelectedRow.Cells[11].Text;

            


            Response.Redirect("~/Admins/modifierStation.aspx");

        }
    }
}