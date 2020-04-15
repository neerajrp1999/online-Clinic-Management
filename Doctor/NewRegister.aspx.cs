using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
public partial class NewRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String name1, mobile_no, pass1, address, gender,age1;
        name1 = name.Text;
        mobile_no = Mobile_no.Text;
        pass1 = password.Text;
        address = addr.Text;
        age1  = age.Text;
        gender = "";
        if (male.Checked == true) {
            gender = "Male";
        }
        else if (female.Checked == true) {
            gender = "Female";
        }else {
            gender = "Other";
            }

        if (mobile_no.Length<10) {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('mobile no invalid')", true);
            return;
        }
        if (pass1.Length < 6) {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('password length is must be greater than 6')", true);
            return;
        }
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["doctor"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO login_Detail VALUES('" + name1 + "','" + mobile_no + "','" +
            pass1 + "','" + address + "','" + gender+ "','" + age1 + "')", con);
       // cmd.CommandType = CommandType.Text;

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();

            con.Close();
            string script1 = "alert(\"Registation Done!!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script1, true);
            Response.Redirect("FirstPageLogin.aspx");

        }

        catch (Exception ex)
        {

            addr.Text = ex.Message;

        }

    }
}