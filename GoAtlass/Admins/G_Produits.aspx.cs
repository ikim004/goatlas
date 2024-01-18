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
    public partial class G_Produits : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select * from Produit ", cnx);
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

        }
    }
}