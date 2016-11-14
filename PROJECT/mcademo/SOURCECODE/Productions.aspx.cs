using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Productions : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f, id;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            gridFill();
            obj.FillDrop(ddl_cat, "pdt_cat_name", "pdt_cat_id", "tb_ProductionCategory");
           
        }
    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string up = "update tb_Productions set sub_cat_id='" + ddl_subcat.SelectedValue + "', Product_Name='" + txtPNam.Text + "', Description='" + txtDescription.Text + "','" + txtTax.Text + "'  where production_id=" + id + "";
            obj.ExecuteCommand(up);
            f = 0;
            gridFill();

        }
        else
        {
            string ins = "insert into tb_Productions(sub_cat_id,Product_Name,Description,Tax)Values('" + ddl_subcat.SelectedValue + "','" + txtPNam.Text + "','" + txtDescription.Text + "','" + txtTax.Text + "')";
            obj.ExecuteCommand(ins);
            gridFill();

        }
        gridFill();
        clear();
    }
    public void gridFill()
    {
        string sel = "select * from tb_Productions p,tb_SubCategory c where c.sub_cat_id=p.sub_cat_id ";
        obj.FillGridView(sel, grid);
    }
    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ed")
        {
            string sel = "select * from tb_Productions p,tb_SubCategory c where c.sub_cat_id=p.sub_cat_id and production_id=" + id + "";
            DataTable dt = obj.GetDataTable(sel);

            if (dt.Rows.Count > 0)
            {
               
                obj.FillDrop(ddl_cat, "pdt_cat_name", "pdt_cat_id", "tb_ProductionCategory");
                ddl_cat.SelectedValue = dt.Rows[0]["pdt_cat_id"].ToString();

                obj.FillDrop(ddl_subcat, "sub_cat_name", "sub_cat_id", "tb_SubCategory", "pdt_cat_id=" + ddl_cat.SelectedValue + "");
                ddl_subcat.SelectedValue = dt.Rows[0]["sub_cat_id"].ToString();
                txtPNam.Text = dt.Rows[0]["Product_Name"].ToString();
                txtDescription.Text = dt.Rows[0]["Description"].ToString();
                txtTax.Text = dt.Rows[0]["Tax"].ToString();
                f = 1;
            }
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tb_Productions where production_id=" + id + "";
            obj.ExecuteCommand(del);
            gridFill();
        }
    }

    protected void ddl_cat_SelectedIndexChanged1(object sender, EventArgs e)
    {
        obj.FillDrop(ddl_subcat, "sub_cat_name", "sub_cat_id", "tb_SubCategory","pdt_cat_id=" + ddl_cat.SelectedValue + "");
    }
    public void clear()
    {
        ddl_cat.ClearSelection();
        ddl_subcat.ClearSelection();
        txtDescription.Text = "";
        txtPNam.Text = "";
        txtTax.Text = "";

    }

    protected void txtPNam_TextChanged(object sender, EventArgs e)
    {
      string sel= "select * from tb_ProductionCategory P,tb_SubCategory R, tb_Productions S where S.sub_cat_id=R.sub_cat_id and R.pdt_cat_id=P.pdt_cat_id and S.Product_Name='" + txtPNam.Text + "' and P.pdt_cat_id='" + ddl_cat.SelectedValue + "' and R.sub_cat_id='"+ddl_subcat.SelectedValue+"'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            ddl_cat.ClearSelection();
           ddl_subcat.ClearSelection();
            txtPNam.Text = "";
              Response.Write("<script>alert('Current item already Entered...')</script>");
        }
    }
}