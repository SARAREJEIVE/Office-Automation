using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SubCategory : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f = 0, id;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  con.Open();
        if (!IsPostBack)
        {
            gridFill();
            obj.FillDrop(ddcat, "pdt_cat_name", "pdt_cat_id", "tb_ProductionCategory");
        }
    }
    protected void btsave_Click(object sender, EventArgs e)
    {

        if (f == 1)
        {
            string up = "update tb_SubCategory set pdt_cat_id='" + ddcat.SelectedValue + "', sub_cat_name='" + txtname.Text + "'  where sub_cat_id=" + id + "";
            //SqlCommand cmd = new SqlCommand(up, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(up);
            f = 0;
            gridFill();

        }
        else
        {
            string ins = "insert into tb_SubCategory(pdt_cat_id,sub_cat_name)Values('" + ddcat.SelectedValue + "','" + txtname.Text + "')";
            //SqlCommand cmd = new SqlCommand(ins, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(ins);
            gridFill();

        }
        clear();
    }
    //public void fill_drop()
    //{
    //    string sel = "select * from tb_ProductionCategory";
    //    SqlDataAdapter adp = new SqlDataAdapter(sel, con);
    //    DataTable dt = new DataTable();
    //    adp.Fill(dt);
    //    if (dt.Rows.Count > 0)
    //    {
    //        ddcat.DataSource = dt;
    //        ddcat.DataTextField = "pdt_cat_name";
    //        ddcat.DataValueField = "pdt_cat_id";
    //        ddcat.DataBind();
    //        ddcat.Items.Insert(0, "--select--");


    //    }
    //}
    public void gridFill()
    {
        string sel = "select * from tb_SubCategory s,tb_ProductionCategory c where s.pdt_cat_id=c.pdt_cat_id ";
        //DataTable dt = new DataTable();
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //adp.Fill(dt);
        //grid.DataSource = dt;
        //grid.DataBind();
        obj.FillGridView(sel, grid);
    }



    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ed")
        {
            string sel = "select * from tb_SubCategory where sub_cat_id=" + id + " ";
            //DataTable dt = new DataTable();
            //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            //adp.Fill(dt);
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                ddcat.SelectedValue = dt.Rows[0]["pdt_cat_id"].ToString();
                txtname.Text = dt.Rows[0]["sub_cat_name"].ToString();
              
                f = 1;
            }
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tb_SubCategory where sub_cat_id=" + id + " ";
            //SqlCommand cmd = new SqlCommand(del, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(del);
            gridFill();
        }
    }
    public void clear()
    {
        ddcat.ClearSelection();
        txtname.Text = "";
        
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        string sel = "select * from tb_SubCategory where sub_cat_name='" + txtname.Text + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            txtname.Text = "";
            Response.Write("<script>alert('Current item already Entered...')</script>");

        }
            
    }
}