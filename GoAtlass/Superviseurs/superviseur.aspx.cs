using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoAtlass.Superviseurs
{
    public partial class superviseur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["email"] != null && (Session["typeUts"].ToString()=="superviseur" || Session["typeUts"].ToString() == "admin") )
                {
                    Label1.Text = " ";

                }
                else
                {
                    Response.Redirect("~/LoginPage.aspx");
                }

            }
        }
    }
}