using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Prod_ID,Prod_name,Prod_Qty,price from Stock where Prod_name=@Prod_name", con);
            cmd.Parameters.AddWithValue("Prod_name", TextBox2.Text);
            SqlDataReader reader1;
            reader1 = cmd.ExecuteReader();
            if (reader1.Read())
            {
                DropDownList1.Text = reader1["Prod_Qty"].ToString();
                TextBox3.Text = reader1["price"].ToString();
                TextBox1.Text = reader1["Prod_ID"].ToString();
            }
            else
            {
                Response.Write("<script>alert('DATA NOT FOUND'); </script>");
            }


            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString);
        con.Open();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        DataRow dr;
        dr = dt.NewRow();
        int Price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
        int Prod_Qty = Convert.ToInt16(Request.QueryString["Prod_Qty"].ToString());
        int totalprice = Price * Prod_Qty;
        dr["totalprice"] = totalprice;

    }
    
}