using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace KongPosh_ShoppingCart
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["items"];
            if (dt != null)
            {
                lblItems.Text = "No. Of Items In Your Cart Is  " +dt.Rows.Count.ToString();
            }
            else
            {
                lblItems.Text = "There Are No Items In Your Cart!!";
            }
        }

       

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddToCartBtn")
            {
                DropDownList ddl = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("Cart.aspx?id="+e.CommandArgument.ToString() + "&quantity=" + ddl.SelectedItem.ToString());
            }
        }
    }
}