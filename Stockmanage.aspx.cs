using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class dell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataShow();

        }
    }
    

    public void DataShow()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
            con.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand("Select * from Stock");
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
    }

    
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        using (SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
            string a,  b;

            a = Class1.GetRandomPassword(10).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "./Pics/" + a + f1.FileName.ToString());
            b = "Pics/" + a + f1.FileName.ToString();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter sda = new SqlDataAdapter();
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            Con.Open();
            dt = new DataTable();
            cmd.CommandText = "Insert into Stock (Prod_name,Prod_Qty,Price,Prod_category,Images)values ('" + txtprod_name.Text.ToString() + "','" + txtprod_qty.Text.ToString() + "','" + txtprice.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','"+b.ToString()+"')";
            cmd.Connection = Con;
            cmd.ExecuteNonQuery();
            DataShow();

        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
            
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("Update Stock set Price='" + txtprice.Text.ToString() + "', Prod_category = '" + DropDownList1.Text.ToString() + "',Prod_Qty='" + txtprod_qty.Text.ToString() + "' where Prod_name='" + txtprod_name.Text.ToString()+ "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
           
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(" Delete from Stock where Prod_name  = '" + txtprod_name.Text.ToString() + "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Prod_name,Prod_Qty,Prod_category,price from Stock where Prod_name=@Prod_name", con);
            cmd.Parameters.AddWithValue("Prod_name", txtprod_name.Text);
            SqlDataReader reader1;
            reader1 = cmd.ExecuteReader();
            if (reader1.Read())
            {
                txtprod_qty.Text = reader1["Prod_Qty"].ToString();
                txtprice.Text = reader1["price"].ToString();
                DropDownList1.Text = reader1["Prod_category"].ToString();
            }
            else
            {
                Response.Write("<script>alert('DATA NOT FOUND'); </script>");
            }
            
           
            con.Close();
        }
    }
    
}


