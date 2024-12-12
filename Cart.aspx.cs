using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace KongPosh_ShoppingCart
{
    public partial class Cart : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                DataTable dt = new DataTable();
                dt.Columns.Add("sno");
                dt.Columns.Add("ProductID");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("Price");
                dt.Columns.Add("ProductImage");
                dt.Columns.Add("TotalPrice");



                if (Request.QueryString["id"] != null)
                {
                    if (Session["items"] == null)
                    {
                        DataRow dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(cs);
                        SqlCommand cmd = new SqlCommand("Select * from tblProducts where ProductID=" + Request.QueryString["id"], con);
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        ViewState["cost"] = dr["Price"].ToString();

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                        Session["items"] = dt;
                        //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        //GridView1.FooterRow.Cells[6].Text = getTotal().ToString();
                        //Response.Redirect("Cart.aspx");



                    }
                    else
                    {
                        dt = (DataTable)Session["items"];
                        int sr = dt.Rows.Count;
                        DataRow dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(cs);
                        SqlCommand cmd = new SqlCommand("Select * from tblProducts where ProductID=" + Request.QueryString["id"], con);
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        ViewState["cost"] = dr["Price"].ToString();
                        //int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"]);
                        //dr["Quantity"] = Request.QueryString["quantity"].ToString();
                        //int quantity = Convert.ToInt32(dr[Request.QueryString["quantity"]]);
                        //int totPrice = price * quantity;
                        //dr["TotalPrice"] = totPrice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                        Session["items"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        //    GridView1.FooterRow.Cells[6].Text = getTotal().ToString();
                        // Response.Redirect("Cart.aspx");


                    }
                }
                else
                {
                    dt = (DataTable)Session["items"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        //                        GridView1.FooterRow.Cells[6].Text = getTotal().ToString();

                    }
                }
            }

        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = new DataTable();
            dt = (DataTable)Session["items"];
            dt.Rows[index].Delete();
            Session["items"] = dt;
            Response.Redirect("Cart.aspx");




        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Button btn = (Button)e.Row.FindControl("btnCart");
                Label lbl1 = (Label)e.Row.FindControl("lblQty");
                lbl1.Text = Request.QueryString["quantity"];
                //    Label lbl2 = (Label)e.Row.FindControl("lblCost");
                //    lbl2.Text = (Convert.ToInt32(ViewState["cost"]) * Convert.ToInt32(lbl1.Text)).ToString();


                }
            }

       
    }
}