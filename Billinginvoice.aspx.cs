using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Configuration;


public partial class Billinginvoice: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Request.QueryString["orderid"];
        Panel1.Visible = true;
        Label4.Text = Label3.Text;
        findorderdate(Label5.Text);
        findaddress(Label6.Text);
        showgrid(Label4.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        exportpdf();
    }
    private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content - disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDOc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDOc);
        PdfWriter.GetInstance(pdfDOc, Response.OutputStream);
        pdfDOc.Open();
        htmlparser.Parse(sr);
        pdfDOc.Close();
        Response.Write(pdfDOc);
        Response.End();
    }
    private void findorderdate(String Orderid)
    {
        String myquery = "Select * from Shipping where ID  = '" + Orderid + "'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label5.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();
        }
        con.Close();
    }
    private void findaddress(String Orderid)
    {
        String myquery = "Select * from Shipping where Id = '" + Orderid + "'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label6.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
        con.Close();
    }
    private void showgrid(String Orderid)
    {
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("sno");
        dt.Columns.Add("Prod_ID");
        dt.Columns.Add("Prod_name");
        dt.Columns.Add("Prod_Qty");
        dt.Columns.Add("Price");
        dt.Columns.Add("totalprice");

        String myquery = "Select * from OrderDetails where orderid = '" + Orderid + "'";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FINS"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int totalrows = ds.Tables[0].Rows.Count;
        int i = 0;
        int grandtotal = 0;
        while (i < totalrows)
        {
            dr = dt.NewRow();
            
            dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
            dr["Prod_ID"] = ds.Tables[0].Rows[i]["Prod_ID"].ToString();
            dr["Prod_name"] = ds.Tables[0].Rows[i]["Prod_name"].ToString();
            dr["Prod_Qty"] = ds.Tables[0].Rows[i]["Prod_Qty"].ToString();
            dr["Price"] = ds.Tables[0].Rows[i]["Price"].ToString();
            int Price = Convert.ToInt16(ds.Tables[0].Rows[i]["Price"].ToString());
            int Prod_Qty = Convert.ToInt16(ds.Tables[0].Rows[i]["Prod_Qty"].ToString());
            int totalprice = Price * Prod_Qty;
            dr["totalprice"] = totalprice;
            grandtotal = grandtotal + totalprice;
            dt.Rows.Add(dr);
            i = i = 1;
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label8.Text = grandtotal.ToString();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* verifies that control is renderred*/
    }
}
