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
    public partial class ModifieUsr : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                nomUts.Text= Session["NomUsr"] .ToString();
                prenom.Text=Session["prenomUsr"] .ToString ();
                emailUs.Text=Session["EmailUsr"].ToString ();
                passwordUs.Text= Session["passwordUser"].ToString();
                DropDownList1.SelectedValue= Session["TypeUsr"].ToString () ;

            }

        }

        protected void updateUser_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("update Utilisateur set nomUts=@nomUts,prenom=@prenom,emailUs=@emailUs,passwordUs=@passwordUs,TypeUs=@TypeUs  where idUs=@id; \r\n", cnx); // dik spinsert hiya semya d procedure 
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["idUsr"].ToString()));
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
    }
}