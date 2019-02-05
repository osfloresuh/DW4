using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DW4
{
    public partial class DW4Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string connectionStr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "spSearchFileCabinets";
                cmd.CommandType = CommandType.StoredProcedure;

                if(inputSubject.Value.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@Subject", inputSubject.Value);
                    cmd.Parameters.Add(param);
                }
                con.Open();
                SqlDataReader rdr =cmd.ExecuteReader();
                gvSearchResults.DataSource = rdr;
                gvSearchResults.DataBind();
            }
        }

        protected void gvSearchResults_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}