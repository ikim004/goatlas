using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace GoAtlass.Admins
{
    public partial class Utulisateur : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { GetInfo(); }
        }


        private void GetInfo()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("select * from Utilisateur ", cnx);
                cnx.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Admins/insertUser.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["idUsr"] = GridView1.SelectedRow.Cells[1].Text;
            Session["NomUsr"] = GridView1.SelectedRow.Cells[2].Text;
            Session["prenomUsr"] = GridView1.SelectedRow.Cells[3].Text;
            Session["EmailUsr"] = GridView1.SelectedRow.Cells[4].Text;
            Session["passwordUser"]= GridView1.SelectedRow.Cells[5].Text;
            Session["TypeUsr"] = GridView1.SelectedRow.Cells[6].Text;

            Response.Redirect("~/Admins/ModifieUsr.aspx");
        }
        static string Encrypte(string s)
        {
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider()) { 
             UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data =md5.ComputeHash(utf8.GetBytes(s));
                return Convert.ToBase64String(data);

            }
        }
        

    }
}