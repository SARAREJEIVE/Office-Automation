using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductionCategory : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            gridfill();
        }
    }
    protected void btSave_Click(object sender, EventArgs e)
    {

        if (f == 1)
        {
            string up = "update tb_ProductionCategory set pdt_cat_name= '" + txtpcn.Text + "' where pdt_cat_id=" + id + " ";
            obj.ExecuteCommand(up);
            f = 1;
            gridfill();
        }
        else
        {
            string ins = "insert into tb_ProductionCategory(pdt_cat_name)Values('" + txtpcn.Text + "')";
            obj.ExecuteCommand(ins);
          
            gridfill();
            clear();
        }

    }
    public void gridfill()
    {
        string sel = "select * from tb_ProductionCategory";
        obj.FillGridView(sel, grid);

    }
    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ed")
        {
            string sel = "select * from tb_ProductionCategory where pdt_cat_id=" + id + "";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                txtpcn.Text = dt.Rows[0]["pdt_cat_name"].ToString();
                f = 1;
             }
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tb_ProductionCategory where pdt_cat_id=" + id + " ";
            obj.ExecuteCommand(del);
            gridfill();

        }
    }
    public void clear()
    {
        txtpcn.Text = "";
    }
    protected void txtpcn_TextChanged(object sender, EventArgs e)
    {
        string sel = "select * from tb_ProductionCategory where pdt_cat_name='" + txtpcn.Text + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            txtpcn.Text = "";
            Response.Write("<script>alert('Current item already Entered...')</script>");
        }
    }
}