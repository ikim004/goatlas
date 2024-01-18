using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GoAtlass.Gerants
{
    public partial class gerant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["email"] != null)
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