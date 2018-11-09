using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingProject
{
    public partial class Elsctronics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="addtocart")
            {
                Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString());
            }
            if(!IsPostBack)
            {
                
            }
        }
    }
}