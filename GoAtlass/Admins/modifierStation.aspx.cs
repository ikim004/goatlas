using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace GoAtlass.Admins
{
    public partial class modifierStation : System.Web.UI.Page
    {
      
    string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) {
                nom.Text = Session["nom"].ToString();
                address.Text = Session["address"].ToString();
                Ipp.Text = Session["Ip_Prive"].ToString();
                Pos.Text = Session["Pos_Num"].ToString();
                Prixg.Text = Session["Prix_G"].ToString() ;
                Prixlmp.Text = Session["Prix_Limpio"].ToString(); 
                PrixSsp.Text = Session["Prix_SSP"].ToString();
                Ippub.Text = Session["Ip_Public"].ToString();
                //DropDownList2.Text = Session["Id_Gerant"].ToString();
                DropDownList2.SelectedValue = Session["Id_Gerant"].ToString();
                DropDownList1.SelectedValue = Session["Nom_Ville"].ToString();




                Remplir();
                Remplir2();

            }  
        }
        private void Remplir()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                string cmd = "select distinct nomVille from Stations";
                SqlDataAdapter dt = new SqlDataAdapter(cmd, dbs);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                DropDownList1.DataTextField = "nomVille";
                DropDownList1.DataValueField = "nomVille";
                DropDownList1.DataSource = ds;
                DropDownList1.DataBind();
            }
        }
        private void Remplir2()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                string cmd1 = "select  distinct nomGerant,prenomGerant from gerant";
                SqlDataAdapter dt1 = new SqlDataAdapter(cmd1, dbs);
                DataSet ds1 = new DataSet();
                dt1.Fill(ds1);
                DropDownList2.DataTextField = "nomGerant";
                DropDownList2.DataValueField = "nomGerant";
                DropDownList2.DataSource = ds1;
                DropDownList2.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool bReturn = false;
            if (RadioButton1.Checked)
            {
                bReturn = true;
                Session["true"]= true;
            }
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("update Stations set nomStation=@nomStation,adresse=@adresse,ipPrive=@ipPrive,posNum=@posNum,PrixG=@PrixG,prixlimpio=@prixlimpio,prixSSP=@prixSSP,ippublic=@ippublic,nomVille=@nomVille,idGerant=@idGerant , Active=@Active where idStation=@id; \r\n", cnx); // dik spinsert hiya semya d procedure 
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["id"].ToString()));
                cmd.Parameters.AddWithValue("@nomStation", nom.Text.Trim());
                cmd.Parameters.AddWithValue("@adresse", address.Text.Trim());
                cmd.Parameters.AddWithValue("@ipPrive", Ipp.Text.Trim());
                cmd.Parameters.AddWithValue("@posNum", Pos.Text.Trim());
                cmd.Parameters.AddWithValue("@PrixG", Prixg.Text.Trim());
                cmd.Parameters.AddWithValue("@prixlimpio", Prixlmp.Text.Trim());
                cmd.Parameters.AddWithValue("@prixSSP", PrixSsp.Text.Trim());
                cmd.Parameters.AddWithValue("@ippublic", Ippub.Text.Trim());
                cmd.Parameters.AddWithValue("@nomVille", DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@idGerant", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@Active",Convert.ToBoolean(bReturn));            
                if (cnx.State.Equals(ConnectionState.Closed))
                {
                    cnx.Open(); // Open the connection
                }
                cmd.ExecuteNonQuery(); // Execute the command

                cnx.Close(); // Close the connection


                Response.Redirect("~/Admins/Station.aspx");
            }
        }

 
    }
}