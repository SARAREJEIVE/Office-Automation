using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RawMaterial1 : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f, id;
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
            string up = "update tb_RawMaterial set Raw_Name='" + txtName.Text + "', Raw_Stock='" + txtStock.Text + "',Raw_Price='" + txtPrice.Text + "',eff_Rate='" + txtEffRate.Text + "' Raw_id=" + id + "  where Raw_id=" + id + " ";
            //SqlCommand cmd = new SqlCommand(up, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(up);
            f = 0;
            gridfill();

        }

        else
        {
            string ins = "insert into tb_RawMaterial(Raw_Name,Raw_Stock,Raw_Price,eff_Rate)Values('" + txtName.Text + "','" + txtStock.Text + "','" + txtPrice.Text + "','" + txtEffRate.Text + "')";
            //SqlCommand cmd = new SqlCommand(ins, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(ins);
            gridfill();
            clear();
        }
    }
    public void gridfill()
    {
        string sel = "select * from tb_RawMaterial";
        //DataTable dt = new DataTable();
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //adp.Fill(dt);
        //grid.DataSource = dt;
        //grid.DataBind();
        obj.FillGridView(sel, grid);


    }

    protected void grid_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ed")
        {

            string sel = "select * from tb_RawMaterial where Raw_id=" + id + "";
            // DataTable dt = new DataTable();
            //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            //adp.Fill(dt);
            DataTable dt = obj.GetDataTable(sel);

            if (dt.Rows.Count > 0)
            {
                txtName.Text = dt.Rows[0]["Raw_Name"].ToString();
                txtStock.Text = dt.Rows[0]["Raw_Stock"].ToString();
                txtPrice.Text = dt.Rows[0]["Raw_Price"].ToString();
                txtEffRate.Text = dt.Rows[0]["eff_Rate"].ToString();
              
            }
             
        }
        if (e.CommandName == "del")
        {
            string dt = "delete from tb_RawMaterial where Raw_id=" + id + " ";
            //SqlCommand cmd = new SqlCommand(dt, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(dt);
            gridfill();
        }
    }

    public void clear()
    {
       txtName.Text="";
       txtStock.Text = "";
       txtPrice.Text = "";
       txtEffRate.Text = "";
        
    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {

        string sel = "select * from tb_RawMaterial where Raw_Name='" + txtName.Text + "'";
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            txtName.Text = "";
            Response.Write("<script>alert('Current item already Entered...')</script>");
        }
    }

}