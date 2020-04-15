using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["doctor"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(" Update login set password='" + TextBox3.Text.ToString().Trim() + "' where mobileNo='"+TextBox1.Text.ToString().Trim()+"'", con);
            cmd.ExecuteNonQuery();
            string script1 = "alert(\"password updated!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
            con.Close();
        }
        catch
        {
            string script = "alert(\"Invalid no!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        con.Close();
    }
}