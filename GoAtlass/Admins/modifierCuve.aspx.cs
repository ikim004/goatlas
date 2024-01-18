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
    public partial class modifierCuve : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Capacity.Text = Session["CapacityCu"].ToString();
                nomCuve.Text = Session["Nom_cuve"].ToString();
                numCuve.Text = Session["Num_cuve"].ToString();
                stock_initial.Text = Session["Stock_initial"].ToString();
                stockFinal.Text = Session["StockFinale"].ToString();
                DropDownList1.Text = Session["ProduitCuv"].ToString();
                Remplir();
            }
        }
        private void Remplir()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                string cmd = "select  DISTINCT nomProduit from Produit";
                SqlDataAdapter dt = new SqlDataAdapter(cmd, dbs);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                DropDownList1.DataTextField = "nomProduit";
                DropDownList1.DataValueField = "nomProduit";
                DropDownList1.DataSource = ds;
                DropDownList1.DataBind();
            }
        }

      
        protected void insertCuve_Click1(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("update Gestion_Cuve set Capacity=@Capacity,Nom_cuve=@Nom_cuve,Num_cuve=@Num_cuve,Produit=@Produit ,Stock_initial=@Stock_initial , StockFinale=@StockFinale   where IdCuve=@id; \r\n", cnx); // dik spinsert hiya semya d procedure 
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["IdCuve"].ToString()));
                cmd.Parameters.AddWithValue("@Capacity", Convert.ToInt16(Capacity.Text.Trim()));
                cmd.Parameters.AddWithValue("@Nom_cuve", nomCuve.Text.Trim());
                cmd.Parameters.AddWithValue("@Num_cuve", Convert.ToInt64(numCuve.Text.Trim()));
                cmd.Parameters.AddWithValue("@Produit", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@Stock_initial", Convert.ToInt64(stock_initial.Text.Trim()));
                cmd.Parameters.AddWithValue("@StockFinale", Convert.ToInt64(stockFinal.Text.Trim()));

                if (cnx.State.Equals(ConnectionState.Closed))
                {
                    cnx.Open(); // Open the connection
                }
                cmd.ExecuteNonQuery(); // Execute the command

                cnx.Close(); // Close the connection


                Response.Redirect("~/Admins/G_Cuve.aspx");
            }
        }
    }
}