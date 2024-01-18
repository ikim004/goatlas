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
    public partial class AddJourney : System.Web.UI.Page
    {
        string dbs = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetInfo();
                GetInfo2();
            }
        }
        private void GetInfo()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("select * from Gestion_Cuve ", cnx);
                cnx.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                grid1.DataSource = dt;
                grid1.DataBind();
            }

        }
        private void GetInfo2()
        {
            using (SqlConnection cnx = new SqlConnection(dbs))
            {
                SqlCommand cmd = new SqlCommand("select * from Produit ", cnx);
                cnx.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }

        }

        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    foreach (GridViewRow row in grid1.Rows)
        //    {
        //        int databaseValue = Convert.ToInt32(DataBinder.Eval(row.DataItem, "Stock_initial"));

        //        TextBox txtUserEnteredValue = (TextBox)row.FindControl("TextBox1");
        //        Label lblCalculatedValue = (Label)row.FindControl("lblCalculatedValue");

        //        // Get the data source of the GridView
        //        DataTable dt = (DataTable)grid1.DataSource;

        //        // Get the current row's index
        //        int rowIndex = row.RowIndex;

        //        // Retrieve the value from the data source using the current row index
        //        int userEnteredValue;
        //        if (int.TryParse(txtUserEnteredValue.Text, out userEnteredValue))
        //        {
        //            if (userEnteredValue > databaseValue)
        //            {
        //                int calculatedValue = userEnteredValue - databaseValue;
        //                lblCalculatedValue.Text = calculatedValue.ToString();
        //            }
        //            else
        //            {
        //                lblCalculatedValue.Text = "User input must be greater than database value";
        //            }
        //        }
        //        else
        //        {
        //            lblCalculatedValue.Text = "Invalid Input";
        //        }
        //    }
        //}
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //DataTable dt = (DataTable)grid1.DataSource;

            //foreach (GridViewRow row in grid1.Rows)
            //{
            //    int databaseValue = Convert.ToInt32(dt.Rows[row.RowIndex]["Stock_initial"]);

            //    TextBox txtUserEnteredValue = (TextBox)row.FindControl("TextBox1");
            //    Label lblCalculatedValue = (Label)row.FindControl("lblCalculatedValue");

            //    if (int.TryParse(txtUserEnteredValue.Text, out int userEnteredValue))
            //    {
            //        int calculatedValue = userEnteredValue - databaseValue;
            //        lblCalculatedValue.Text = calculatedValue.ToString();
            //    }
            //    else
            //    {
            //        lblCalculatedValue.Text = "Invalid Input";
            //    }
            //}
            foreach (GridViewRow row in grid1.Rows)
            {
                // Assuming the cells at index 3 and 4 contain integers
                int cell3Value = int.TryParse(row.Cells[3].Text, out int parsedCell3) ? parsedCell3 : 0;
                int cell4Value = int.TryParse(row.Cells[4].Text, out int parsedCell4) ? parsedCell4 : 0;

                // Perform the calculation and set the result in the 6th cell (index 5)
                row.Cells[5].Text = (cell3Value - cell4Value).ToString();
            }

        }


    }
}
