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
using System.Data.OleDb;

namespace GoAtlass.Admins
{
    public partial class InsertStation : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Remplir();
                Remplir2();


            }

        }
        private void Remplir()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                string cmd = "select  DISTINCT nomVille  from ville";
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
                string cmd1 = "select  DISTINCT nomGerant  from Gerant";
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
            }

            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("Addstations", cnx); // dik spinsert hiya semya d procedure 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nom", nom.Text.Trim());
                cmd.Parameters.AddWithValue("@adress", address.Text.Trim());
                cmd.Parameters.AddWithValue("@PrixG", Convert.ToDecimal(Prixg.Text.Trim()));
                cmd.Parameters.AddWithValue("@prixlimpio", Convert.ToDouble(Prixlmp.Text.Trim()));
                cmd.Parameters.AddWithValue("@prixSSP", Convert.ToDouble(PrixSsp.Text.Trim()));
                cmd.Parameters.AddWithValue("@posNum", Convert.ToInt32(Pos.Text.Trim()));
                cmd.Parameters.AddWithValue("@ippublic", Ippub.Text.Trim());
                cmd.Parameters.AddWithValue("@ipPrive", Ipp.Text.Trim());
                cmd.Parameters.AddWithValue("@idGerant", DropDownList2.Text.Trim());
                cmd.Parameters.AddWithValue("@nomVille", DropDownList1.SelectedValue.Trim());
                cmd.Parameters.AddWithValue("@Active", Convert.ToBoolean(bReturn));
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