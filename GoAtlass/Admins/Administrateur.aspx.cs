using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoAtlass.Admins
{
    public partial class Administrateur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["email"] != null && Session["typeUts"].ToString() == "admin")
                {
                    Label1.Text = Session["NomComplete"].ToString();

                }
                else
                {
                    Response.Redirect("~/LoginPage.aspx");

                }

            }

        }
    }
}