using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addtocart:System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("Prod_ID");
            dt.Columns.Add("Prod_name");
            dt.Columns.Add("Prod_Qty");
            dt.Columns.Add("Price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("Images");
            if (Request.QueryString["Prod_ID"] != null)
            {
                if (Session["buyitems"] == null)
                {
                    dr = dt.NewRow();
                    SqlConnection con = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString);
                    con.Open();
                    String myquery = "select * from Stock where Prod_ID=" + Request.QueryString["Prod_ID"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;


                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["Prod_ID"] = ds.Tables[0].Rows[0]["Prod_ID"].ToString();
                    dr["Prod_name"] = ds.Tables[0].Rows[0]["Prod_name"].ToString();
                    dr["Prod_Qty"] = ds.Tables[0].Rows[0]["Prod_Qty"].ToString();
                    dr["Price"] = Request.QueryString["Price"];
                    dr["Images"] = ds.Tables[0].Rows[0]["Images"].ToString();
                    int Price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                    int Prod_Qty = Convert.ToInt16(Request.QueryString["Prod_Qty"].ToString());
                    int totalprice = Price * Prod_Qty;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("Addtocart.aspx");
                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    SqlConnection con = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString);
                    con.Open();
                    String myquery = "select * from Stock where Prod_ID=" + Request.QueryString["Prod_ID"];
                    SqlCommand cmd = new SqlCommand();


                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["Prod_ID"] = ds.Tables[0].Rows[0]["Prod_ID"].ToString();
                    dr["Prod_name"] = ds.Tables[0].Rows[0]["Prod_name"].ToString();
                    dr["Prod_Qty"] = ds.Tables[0].Rows[0]["Prod_Qty"].ToString();
                    dr["Price"] = Request.QueryString["Price"];
                    dr["Images"] = ds.Tables[0].Rows[0]["Images"].ToString();
                    int Price = Convert.ToInt16(ds.Tables[0].Rows[0]["Price"].ToString());
                    int Prod_Qty = Convert.ToInt16(Request.QueryString["Prod_Qty"].ToString());
                    int totalprice = Price * Prod_Qty;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";

                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");
                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                }
            }
            Label1.Text = GridView1.Rows.Count.ToString();
        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
            i = i + 1;
        }
        return gtotal;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int srl;
            string qdata;
            string dtdata;

            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            srl = Convert.ToInt32(qdata);
            if (sr == srl)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                Label1.Text = "iTem deleted from cart";
                break;
            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("AddToCart.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Shipping.aspx");
    }
}