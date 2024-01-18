using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Antlr.Runtime.Misc;

namespace GoAtlass.Admins
{
    public partial class ModifieVille : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) {

                
                differentiel.Text= Session["Def"].ToString();
                nomv.Text= Session["NomVille"].ToString();

            }

        }

        protected void insertVille_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("update ville set nomVille=@nomVille,differentiel=@differentiel,active=@active  where idVille=@id; \r\n", cnx); // dik spinsert hiya semya d procedure 
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["idV"].ToString()));
                cmd.Parameters.AddWithValue("@nomVille", nomv.Text.Trim());
                cmd.Parameters.AddWithValue("@differentiel", Convert.ToDecimal( differentiel.Text.Trim()));
               
          
                if (cnx.State.Equals(ConnectionState.Closed))
                {
                    cnx.Open(); // Open the connection
                }
                cmd.ExecuteNonQuery(); // Execute the command

                cnx.Close(); // Close the connection


                Response.Redirect("~/Admins/Ville.aspx");
            }
        }
    }
}