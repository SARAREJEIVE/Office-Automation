using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RawMaterialDetails : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            gridfill();
           
            obj.FillDrop(ddid, "Raw_Name", "Raw_id", "tb_RawMaterial");
        }
    }
    protected void btSave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {
            string sel = "upadte tb_RawMaterialDetails set Raw_id='" + ddid.SelectedValue + "',Date='" + txtdate.Text + "',Quantity='" + txtQuantity.Text + "' ";
            //SqlCommand cmd = new SqlCommand(sel, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(sel);
            f = 0;
            gridfill();
        }
        else
        {
            string ins = "insert into tb_RawMaterialDetails(Raw_id,Date,Quantity)Values('" + ddid.SelectedValue + "','" + txtdate.Text + "','" + txtQuantity.Text + "')";
            obj.ExecuteCommand(ins);
            gridfill();
          
            string up = "update  tb_RawMaterial set Raw_Stock =Raw_Stock+'" + txtQuantity.Text + "' where Raw_id='" + ddid.SelectedValue + "' ";
            obj.ExecuteCommand(up);
            gridfill();
            clear();
            
        }
    }
    public void gridfill()
    {
        string sel = "select * from tb_RawMaterial R,tb_RawMaterialDetails RD where RD.Raw_id=R.Raw_id";
        //DataTable dt = new DataTable();
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //adp.Fill(dt);
        //grid.DataSource = dt;
        //grid.DataBind();
        obj.FillGridView(sel, grid);
    }
    //public void fill_drop()
    //{
    //    string sel = "select * from tb_RawMaterial";
    //    DataTable dt = new DataTable();
    //    SqlDataAdapter adp = new SqlDataAdapter(sel, con);
    //    adp.Fill(dt);
    //    if (dt.Rows.Count > 0)
    //    {
    //        ddid.DataSource = dt;
    //        ddid.DataTextField = "Raw_Name";
    //        ddid.DataValueField = "Raw_id";
    //        ddid.DataBind();
    //        ddid.Items.Insert(0, "--select--");
    //    }
    //   
    //}
    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ed")
        {
            string sel = "select * from tb_RawMaterialDetails where Rmd_id="+id+"";
            //DataTable dt = new DataTable();
            //SqlDataAdapter adp=new SqlDataAdapter(sel,con);
            //adp.Fill(dt);
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                ddid.SelectedValue = dt.Rows[0]["Raw_id"].ToString();
                txtdate.Text = dt.Rows[0]["Date"].ToString();
                txtQuantity.Text = dt.Rows[0]["Quantity"].ToString();
                gridfill();
                
            }
        }
        if (e.CommandName == "del")
        {
            string del = "delete from tb_RawMaterialDetails where Rmd_id="+id+"";
            obj.ExecuteCommand(del);
            gridfill();

        }

    }
    public void clear()
    {
        ddid.ClearSelection();
        txtdate.Text = "";
        txtQuantity.Text = "";

    }
}