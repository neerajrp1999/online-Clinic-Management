using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class FirstPageLogin : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String  pass;
        
        pass = TextBox2.Text.ToString().Trim();
        if (TextBox2.Text.ToString().Trim().Equals("admin") && TextBox1.Text.ToString().Trim().Equals("admin")) 
        { Response.Redirect("status_for_doctor.aspx"); }
        String s;
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["doctor"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        da = new SqlDataAdapter("select password from login_Detail where mobileNo = '" + TextBox1.Text.ToString().Trim()+ "'", con);
        da.Fill(dt);
        try
        {
            dr = dt.Rows[0];
            s = Convert.ToString(dr[0]).Trim();
            if (pass == s)
            {
                HttpCookie userInfo = new HttpCookie("userInfo");
                userInfo["Mobile"] = TextBox1.Text.ToString().Trim();
                userInfo.Expires.Add(new TimeSpan(0, 1, 0));
                Response.Cookies.Add(userInfo);  
                Response.Redirect("as_patient.aspx"); 
            }
            else
            {
                string script1 = "alert(\"Invalid Password!!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
            }
        }
        catch {
            string script1 = "alert(\"Invalid Mobile no!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
        }
        con.Close();
        }
    }
