using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoAtlass
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Connexion_Click(object sender, EventArgs e)
        {
  

                Getinfo(TextEmail.Text, Textpwd.Text);

                string x = Session["typeUts"].ToString();


                if (x == "user")
                {
                    Response.Redirect("~/Users/Users.aspx");
                }
                if (x == "admin")
                {
                    Response.Redirect("~/Admins/Administrateur.aspx");
                }
                if (x == "gerant")
                {
                    Response.Redirect("~/Gerants/gerant.aspx");
                }
                if (x == "superviseur")
                {
                    Response.Redirect("~/Superviseurs/superviseur.aspx");
                }
                else
                {
                    Response.Write("Verifie Votre Donnee");
                }




            }
            void Getinfo(string emailUs, string passwordUs)
            {
                string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
                using (SqlConnection con = new SqlConnection(dbs))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "select * from utilisateur where emailUs=@emailUs and passwordUs=@passwordUs  ";
                    cmd.Parameters.AddWithValue("@emailUs", emailUs);
                    cmd.Parameters.AddWithValue("@passwordUs", passwordUs);

                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {

                        Session["email"] = emailUs;
                        Session["password"] = passwordUs;
                        Session["typeUts"] = dr[5].ToString();
                        Session["NomComplete"] = "BienVenue  " + "  " + dr[2].ToString() + " " + dr[1].ToString();

                }
                    else
                    {
                        Session["verifie"] = "0";
                    }

                }

            }
        
        }
    }
