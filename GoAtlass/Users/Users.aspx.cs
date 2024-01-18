using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoAtlass.Users
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["urls"] = Request.Url.AbsoluteUri; 

                if (Session["email"] != null)
                {
                    Label1.Text = " ";


                }
                else
                {
                    Response.Redirect("~/LoginPage.aspx");
                }

            }
            //CheckAndRedirect();


        }
        private void CheckAndRedirect()
        {
            if (Session["urls"] != null && !Session["urls"].ToString().Equals(Request.Url.AbsoluteUri, StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect(Session["urls"].ToString());
            }
        }

    }
}