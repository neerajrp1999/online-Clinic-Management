using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class as_patient : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string m = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            m = reqCookies["Mobile"].ToString().Trim();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["doctor"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            da = new SqlDataAdapter("select name from login_Detail where mobileNo = '" + m + "'", con);
            da.Fill(dt);
            dr = dt.Rows[0];
            String s = Convert.ToString(dr[0]);
            DateTime now = DateTime.Now;
            
            SqlCommand cmd = new SqlCommand("INSERT INTO appointment(name,mobileno,timeToFA ) VALUES('" + s + "','" + m + "','"+now.ToString("yyyy-MM-dd HH:mm:ss")+"')", con);
            cmd.ExecuteNonQuery();
            string script1 = "alert(\"Appointment Fixed!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
            con.Close();
        }
        catch
        {
            string script1 = "alert(\"Appointment Already Fixed!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            string m = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            m = reqCookies["Mobile"].ToString().Trim();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["doctor"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM  appointment where mobileNo = '" + m + "'", con);
            cmd.ExecuteNonQuery();
            string script1 = "alert(\"Appointment Deleted!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
            con.Close();
        }
        catch
        {
            string script1 = "alert(\"Appointment Already Deleted!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
        }
    }
}