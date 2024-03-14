using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Shipping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void buttonpayment_Click(object sender, EventArgs e)
    {
         using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Shipping (Username,Address,Landmark,State,Pincode,Phonenumber) values('" + Txtuname.Text + "', '" + Txtadd.Text + "','" + Txtlandmark.Text + "', '" + TxtState.Text + "','" + Txtpin.Text + "','" + Txtphone.Text + "')", con);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Shipping address saved successfully ,Continue Payment'); </script>");
               
                con.Close();
               
            }
         Response.Redirect("Payment.aspx");
    }
}