﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buttonlogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
            Con.Open();
            SqlCommand cmd = new SqlCommand("select * from admin where Username=@Username and password=@Password", Con);
            cmd.Parameters.AddWithValue("@Username", Txtuname.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["Username"].Value = Txtuname.Text;
                    Response.Cookies["Password"].Value = txtpassword.Text;

                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {

                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["Username"] = Txtuname.Text;
                Response.Redirect("Category.aspx");
            }
            else
            {
                Label3.Text= "Invalid username and password";
            }

            //Response.Write("<script> alert('Login success');</script>");
            clr();
            Con.Close();
            //LBLMSG.Text = "REGISTRATION SUCCESSFULLY DONE";
            //LBLMSG.ForeColor = System.Drawing.Color.Green;
            }
         }
    
   private void clr()
   {
        Txtuname.Text = string.Empty;
        txtpassword.Text = string.Empty;
        txtpassword.Focus();
        Txtuname.Focus();

   }
}
