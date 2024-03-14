using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void buttonsuccess_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Signup (Username,Email_ID,Address,Phone_No,Password) values('" + Txtuname.Text + "', '" + Txtemail.Text + "','" + Txtadd.Text + "', '" + txtno.Text + "','" + Txtpassword.Text + "')", con);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('REGISTRATION SUCCESSFULLY DONE'); </script>");
                clr();
                con.Close();
                LBLMSG.Text = "REGISTRATION SUCCESSFULLY DONE";
                LBLMSG.ForeColor =System.Drawing. Color.Green;
                

            }
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Write("<script>alert('REGISTRATION FAILED'); </script>");
            LBLMSG.Text = "ALL FIELDS ARE MANDATORY";
            LBLMSG.ForeColor = System.Drawing.Color.Red;
        }
    }
    private bool isformvalid()
    {
        if (Txtuname.Text ==" ")
        {
            Response.Write("<script> alert('enter valid email_ID'); </script>");
            Txtuname.Focus();
            return false;
        }
        else if (Txtpassword.Text == "")
        {
            Response.Write("<script> alert('password not valid'); </script>");
            Txtpassword.Focus();
            return false;
        }
        else if (Txtpassword.Text != txtconpassword.Text)
        {
            Response.Write("<script> alert('password does not match'); </script>");
            txtconpassword.Focus();
            return false;
        }
        return true;
    }
    private void clr()
    {
        Txtuname.Text = string.Empty;
        Txtemail.Text = string.Empty;
        Txtadd.Text = string.Empty;
        Txtpassword.Text = string.Empty;
        txtconpassword.Text = string.Empty;
    }

}