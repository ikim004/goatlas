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
    public partial class insertUser : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertVille_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("AddUser", cnx); // dik spinsert hiya semya d procedure 

                cmd.CommandType = CommandType.StoredProcedure;
            
                cmd.Parameters.AddWithValue("@nomUts", nomUts.Text.Trim());
                cmd.Parameters.AddWithValue("@prenom", prenom.Text.Trim());
                cmd.Parameters.AddWithValue("@emailUs", emailUs.Text.Trim());
                cmd.Parameters.AddWithValue("@passwordUs", passwordUs.Text.Trim());
                cmd.Parameters.AddWithValue("@TypeUs", DropDownList1.Text.Trim());
                  
                if (cnx.State.Equals(ConnectionState.Closed))
                {
                    cnx.Open(); // Open the connection
                }
                cmd.ExecuteNonQuery(); // Execute the command

                cnx.Close(); // Close the connection


                Response.Redirect("~/Admins/Utulisateur.aspx");
            }

        }

        protected void passwordUs_TextChanged(object sender, EventArgs e)
        {

        }
    }
}