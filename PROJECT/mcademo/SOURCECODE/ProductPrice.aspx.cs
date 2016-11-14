using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductPrice : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack) 
        {
            gridfill();
           // fill_drop();
            obj.FillDrop(ddcat, "pdt_cat_name", "pdt_cat_id", "tb_ProductionCategory");
          
            }

    }
    protected void btSave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update  tb_prdt_price set  production_id='" + ddname.SelectedValue + "',pdt_range_from='" + txtRange1.Text + "',pdt_range_to='" + txtRange2.Text + "',pdt_price='" + txtRate.Text + "' pdt_price_id=" + id + "";
            //SqlCommand cmd = new SqlCommand(up, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(up);
            Response.Write("<script>alert('Saved successfully')</script>");
            gridfill();
            f = 0;

        }
        else
        {
            string ins = "insert into tb_prdt_price(production_id,pdt_range_from,pdt_range_to,pdt_price)Values('" + ddname.SelectedValue + "','" + txtRange1.Text + "','" + txtRange2.Text + "','" + txtRate.Text + "')";
            //SqlCommand cmd = new SqlCommand(ins, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(ins);
            Response.Write("<script>alert('Saved successfully')</script>");
            gridfill();
        }
    }
    public void gridfill()
    {
        string sel = "select * from tb_prdt_price P,tb_Productions R where R.production_id=P.production_id";
        //DataTable dt = new DataTable();
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //adp.Fill(dt);
        //grid.DataSource=dt;
        //grid.DataBind();
        obj.FillGridView(sel, grid);
        clear();

    }
    //public void fill_drop()
    //{
    //    string sel = "select * from tb_ProductionCategory";
    //    //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
    //    //DataTable dt = new DataTable();
    //    //adp.Fill(dt);
    //    DataTable dt = obj.GetDataTable(sel);
    //    if (dt.Rows.Count > 0)
    //    {
    //        ddcat.DataSource = dt;
    //        ddcat.DataTextField = "pdt_cat_name";
    //        ddcat.DataValueField = "pdt_cat_id";
    //        ddcat.DataBind();
    //        ddcat.Items.Insert(0, "--select--");

    //    }
    //}
    protected void ddcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string sel = "select * from tb_SubCategory where pdt_cat_id="+ddcat.SelectedValue+"";
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //if (dt.Rows.Count > 0)
        //{
        //    ddsubcat.DataSource = dt;
        //    ddsubcat.DataTextField = "sub_cat_name";
        //    ddsubcat.DataValueField = "sub_cat_id";
        //    ddsubcat.DataBind();
        //    ddsubcat.Items.Insert(0, "--select--");

        //}
        obj.FillDrop(ddsubcat, "sub_cat_name", "sub_cat_id", "tb_SubCategory", "pdt_cat_id=" + ddcat.SelectedValue + "");
        
    }

    
    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {

       id = Convert.ToInt32(e.CommandArgument);
       if (e.CommandName == "ed")
       {

           string sel = "select * from tb_prdt_price P,tb_Productions R,tb_SubCategory S,tb_ProductionCategory C where C.pdt_cat_id=S.pdt_cat_id and S.sub_cat_id=R.sub_cat_id and R.production_id=P.production_id and pdt_price_id=" + id + "";
           //DataTable dt = new DataTable();
           //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
           //adp.Fill(dt);
           DataTable dt = obj.GetDataTable(sel);
           if (dt.Rows.Count > 0)
           {

               ddcat.SelectedValue= dt.Rows[0]["pdt_cat_id"].ToString();
               obj.FillDrop(ddsubcat, "sub_cat_name", "sub_cat_id", "tb_SubCategory", "pdt_cat_id=" + ddcat.SelectedValue + "");
               ddsubcat.SelectedValue = dt.Rows[0]["sub_cat_id"].ToString();
               obj.FillDrop(ddname, "Product_Name", "production_id", "tb_Productions", "sub_cat_id=" + ddsubcat.SelectedValue + "");
               ddname.SelectedValue = dt.Rows[0]["production_id"].ToString();
                 txtRange1.Text = dt.Rows[0]["pdt_range_from"].ToString();
               txtRange2.Text = dt.Rows[0]["pdt_range_to"].ToString();
               txtRate.Text = dt.Rows[0]["pdt_price"].ToString();
               gridfill();
               f = 1;

           }
       }
       if (e.CommandName == "del")
       {
           string del = "delete from tb_prdt_price where pdt_price_id=" + id + "";
           //SqlCommand cmd = new SqlCommand(del, con);
           //cmd.ExecuteNonQuery();
           obj.ExecuteCommand(del);
           gridfill();
          

       }
    }


    public void clear()
    {
        ddcat.ClearSelection();
        ddsubcat.ClearSelection();
        ddname.ClearSelection();
        txtRange1.Text = "";
        txtRange2.Text = "";
        txtRate.Text = "";
    }
    protected void ddsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string sel = "select * from tb_Productions where sub_cat_id=" + ddsubcat.SelectedValue + "";
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //DataTable dt = new DataTable();
        //adp.Fill(dt);
        //if (dt.Rows.Count > 0)
        //{
        //    ddname.DataSource = dt;
        //    ddname.DataTextField = "Product_Name";
        //    ddname.DataValueField = "production_id";
        //    ddname.DataBind();
        //    ddname.Items.Insert(0, "--select--");

        //}
        obj.FillDrop(ddname, "Product_Name", "production_id", "tb_Productions", "sub_cat_id=" + ddsubcat.SelectedValue + "");
        
    }
   
    protected void txtRange2_TextChanged(object sender, EventArgs e)
    {
        string sel = "select * from tb_ProductionCategory pc,tb_SubCategory s, tb_Productions p,tb_prdt_price pp where p.sub_cat_id=s.sub_cat_id and pp.production_id=p.production_id and p.production_id='" + ddname.SelectedValue + "' and s.pdt_cat_id='" + ddcat.SelectedValue + "' and s.sub_cat_id='" + ddsubcat.SelectedValue + "' and pp.pdt_range_from='" + txtRange1.Text + "' and pp.pdt_range_to='" + txtRange2.Text + "'";
        
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            ddcat.ClearSelection();
            ddsubcat.ClearSelection();
            ddname.ClearSelection();
            txtRange1.Text = "";
            txtRange2.Text = "";
            Response.Write("<script>alert('Current item already Entered...')</script>");
        }
    }
}

