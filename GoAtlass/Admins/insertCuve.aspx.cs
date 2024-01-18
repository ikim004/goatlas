using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;
using System.Net;

namespace GoAtlass.Admins
{
    public partial class insertCuve : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
      


        protected void insertVille_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("AddCuve", cnx); // dik spinsert hiya semya d procedure 
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@idCuve", idCuve.Text.Trim());
                cmd.Parameters.AddWithValue("@Capacity", Convert.ToInt32(Capacity.Text.Trim()));
                cmd.Parameters.AddWithValue("@Nom_cuve", nomCuve.Text.Trim());
                cmd.Parameters.AddWithValue("@Num_cuve", Convert.ToInt16(numCuve.Text.Trim()));
         
                cmd.Parameters.AddWithValue("@Prod",DropDownList1.SelectedValue.Trim());
                cmd.Parameters.AddWithValue("@stock_initial",Convert.ToDouble(stock_initial.Text.Trim()));
                cmd.Parameters.AddWithValue("@stock_finale", Convert.ToDouble(stockFinal.Text.Trim()));
                //cmd.Parameters.AddWithValue("@sortie", Convert.ToDouble(stock_initial.Text.Trim()) - Convert.ToDouble(stockFinal.Text.Trim()));
                //Session["montant"] = Convert.ToDouble(stock_initial.Text.Trim()) - Convert.ToDouble(stockFinal.Text.Trim());
                //cmd.Parameters.AddWithValue("@Montant",Convert.ToDouble(Session["montant"])*11.8);
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
