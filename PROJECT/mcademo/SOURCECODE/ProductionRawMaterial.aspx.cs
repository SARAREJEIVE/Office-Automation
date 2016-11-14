using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductionRawMaterial : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    // SqlConnection con = new SqlConnection("Data Source=ADMIN;Initial Catalog=db_IMI;Integrated Security=True");
    static int f, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        //con.Open();
        if (!IsPostBack)
        {
            gridfill();
            obj.FillDrop(ddpid, "Product_Name", "production_id", "tb_Productions");

            fill_rawmaterials();

        }
    }
    protected void btSave_Click(object sender, EventArgs e)
    {
        if (f == 1)
        {

        }
        else
        {

            foreach (DataListItem dr in DataList1.Items)
            {
                CheckBox ch = (CheckBox)dr.FindControl("CheckBox1");
                HiddenField h = (HiddenField)dr.FindControl("HiddenField1");
                TextBox tx = (TextBox)dr.FindControl("TextBox1");
                if (ch.Checked == true)
                {
                    string ins = "insert into tb_ProductionRawMaterial(Production_id,Raw_id,Raw_quantity)Values('" + ddpid.SelectedValue + "','" + h.Value + "','" + tx.Text + "')";
                    obj.ExecuteCommand(ins);
                    //SqlCommand cmd = new SqlCommand(ins, con);
                    //cmd.ExecuteNonQuery();
                }


            }
        }
    }
    public void gridfill()
    {
        string sel = "select * from tb_ProductionRawMaterial pr,tb_Productions p,tb_RawMaterial r where pr.Production_id=p.production_id and pr.Raw_id=r.Raw_id";
        DataTable dt = obj.GetDataTable(sel);
        //DataTable dt = new DataTable();
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            grid.DataSource = dt;
            grid.DataBind();
        }
    }



   

    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ed")
        {
            string sel = "select * from tb_ProductionRawMaterial where Production_RawMaterial_id=" + id + "";
            DataTable dt = obj.GetDataTable(sel);
            //DataTable dt = new DataTable();
            //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            //adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ddpid.SelectedValue = dt.Rows[0]["Production_id"].ToString();
                obj.FillDrop(ddpid, "Product_Name", "production_id", "tb_Productions");

                f = 1;
                gridfill();

            }

        }
        if (e.CommandName == "del")
        {
            string del = "delete from tb_ProductionRawMaterial where Production_RawMaterial_id=" + id + "";
            //SqlCommand cmd = new SqlCommand(del, con);
            //cmd.ExecuteNonQuery();
            obj.ExecuteCommand(del);
            gridfill();
        }
    }



    public void fill_rawmaterials()
    {
        string sel = "select * from tb_RawMaterial";
        obj.FillDataList(sel, DataList1);
        //SqlDataAdapter adp = new SqlDataAdapter(sel, con);
        //adp.Fill(dt);
        //if (dt.Rows.Count > 0)
        //{
        //    DataList1.DataSource = dt;
        //    DataList1.DataBind();
        //    gridfill();

    }
    protected void ddpid_SelectedIndexChanged(object sender, EventArgs e)
    {
        
string sel="select * from tb_Productions where Product_Name='"+ddpid.SelectedValue+"'";
DataTable dt = obj.GetDataTable(sel);
if (dt.Rows.Count > 0)
{
    ddpid.ClearSelection();
    Response.Write("<script>alert('Current item already Entered...')</script>");
}

    }
}