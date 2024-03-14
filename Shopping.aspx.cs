using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Shopping : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            Response.Redirect("art.aspx?Prod_name=" + e.CommandArgument);
        }
    }


    protected void addtocart_Click(object sender, ImageClickEventArgs e)
    {

    }
}

   
    



