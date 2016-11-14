using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_stockDetails : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static int f, id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gridfill();
            low_stock();

        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblist.SelectedItem.Text == "Stock")
        {
            string sel = "select * from tb_RawMaterial order by Raw_Stock";
            obj.FillGridView(sel, grid);
        }
        else if (rblist.SelectedItem.Text == "Price")
        {
            string sel = "select * from tb_RawMaterial order by Raw_Price";
            obj.FillGridView(sel, grid);
        }
        else
        {
            string sel = "select * from tb_RawMaterial";
            obj.FillGridView(sel, grid);
        }
    }
    public void gridfill()
    {
        string sel = "select * from tb_RawMaterial";
        obj.FillGridView(sel, grid);
    }
    public void low_stock()
    {
        string sel = "select * from tb_RawMaterial where Raw_Stock<=89";
        obj.FillGridView(sel, GridView1); 


    }
}