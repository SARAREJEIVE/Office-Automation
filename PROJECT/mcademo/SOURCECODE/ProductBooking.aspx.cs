using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RawPurchaseDatails : System.Web.UI.Page
{
    cls_imi obj = new cls_imi();
    static double total;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            temp_tbl();
           
            ddtype2.Visible = false;
            txttype.Visible = false;
            lbldatetime.Text = DateTime.Now.ToShortDateString();
            obj.FillDrop(ddl_cat, "pdt_cat_name", "pdt_cat_id", "tb_ProductionCategory");
        }
    }
  

    public void temp_tbl()
    {
        DataTable dt = new DataTable();
        DataColumn clm = new DataColumn("id", typeof(int));
        dt.Columns.Add(clm);
        clm = new DataColumn("item", typeof(string));
        dt.Columns.Add(clm);
        clm = new DataColumn("itemid", typeof(int));
        dt.Columns.Add(clm);
        clm = new DataColumn("qty", typeof(double));
        dt.Columns.Add(clm);
        clm = new DataColumn("unitprice", typeof(double));
        dt.Columns.Add(clm);
        clm = new DataColumn("total", typeof(double));
        dt.Columns.Add(clm);

        dt.AcceptChanges();
        Session["tem_dt"] = dt;
        Session["temp_id"] = 1;



    }

    protected void ddl_cat_SelectedIndexChanged1(object sender, EventArgs e)
    {
        obj.FillDrop(ddl_subcat, "sub_cat_name", "sub_cat_id", "tb_SubCategory", "pdt_cat_id=" + ddl_cat.SelectedValue + "");
    }

    protected void ddtype1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddtype1.SelectedValue == "Distributor")
        {
            ddtype2.Visible = true;
            txttype.Visible = false;

        }
        else
        {
            ddtype2.Visible = false;
            txttype.Visible = true;
        }
    }

    protected void ddl_subcat0_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        obj.FillDrop(ddl_product, "Product_Name", "sub_cat_id", "tb_Productions","production_id=" + ddl_subcat.SelectedValue + "");
       
    }

    protected void btn_next_Click(object sender, EventArgs e)
    {
        gridtemp.Visible = true;
        DataTable dt = (DataTable)Session["tem_dt"];
        DataRow dr = dt.NewRow();
        dr["id"] = Convert.ToInt32(Session["temp_id"]);
        dr["item"] = ddl_product.SelectedItem.Text;
        dr["itemid"] = ddl_product.SelectedValue;
        dr["qty"] = Convert.ToInt32(txt_quantity.Text);
        dr["unitprice"] = Convert.ToDouble(lbl_unit_price.Text);
        dr["total"] = Convert.ToDouble(lbl_total.Text);

        dt.Rows.Add(dr);
        dt.AcceptChanges();
        Session["tem_dt"] = dt;
        int i = Convert.ToInt32(Session["temp_id"]);
        i++;
        Session["temp_id"] = i;


        gridtemp.DataSource = dt;
        gridtemp.DataBind();
        clear();
        Double y = 0;
        foreach (DataRow dra in dt.Rows)
        {
            Double x = Convert.ToDouble(dra["total"]);
            y = x + y;
            gtotal.Text = y.ToString();
        }

      
    }

    public void clear()
    {
        ddl_cat.ClearSelection();
        ddl_subcat.ClearSelection();
        ddl_product.ClearSelection();
        txt_quantity.Text = "";
        lbl_unit_price.Text = "";
        lbl_total.Text = "";
    }
    protected void ddl_subcat_SelectedIndexChanged(object sender, EventArgs e)
    {
      
        obj.FillDrop(ddl_product, "Product_Name", "production_id", "tb_Productions"," sub_cat_id = " + ddl_subcat.SelectedValue + "");
    }
    protected void ddl_product_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void txt_quantity_TextChanged(object sender, EventArgs e)
    {
        string sel = "select * from tb_Productions p,tb_prdt_price pp where p.production_id=pp.production_id and p.production_id=" + ddl_product.SelectedValue + " and  pp.pdt_range_from <=" + txt_quantity.Text + " and pp.pdt_range_to >=" + txt_quantity.Text + "";
       
        DataTable dt = obj.GetDataTable(sel);
        if (dt.Rows.Count > 0)
        {
            lbl_unit_price.Text = dt.Rows[0]["pdt_price"].ToString();

            int a = Convert.ToInt32(dt.Rows[0]["pdt_price"].ToString());
            int b = Convert.ToInt32(txt_quantity.Text);
            int c = Convert.ToInt32(a * b);
            lbl_total.Text = c.ToString();
        }

    }
    protected void btn_complete_Click(object sender, EventArgs e)
    {
        string strIsb = GetISB();
        if (ddtype1.SelectedValue == "Distributor")
        {
            string ins = "insert into tb_ProductBooking(buyer_type,buyer_name,Booking_Date,Grand_total,Invoice_no,Status)Values('" + ddtype1.SelectedValue + "','" + ddtype2.SelectedValue + "','" + lbldatetime.Text + "','" + gtotal.Text + "','" + strIsb + "',0)";
            obj.ExecuteCommand(ins);


            string sel = "select max(ProductBooking_id) as p_id from tb_ProductBooking";
            DataTable dtMax = obj.GetDataTable(sel);

            Session["max_id"] = dtMax.Rows[0]["p_id"];

            DataTable dt = (DataTable)Session["tem_dt"];

            foreach (DataRow dr in dt.Rows)
            {

                string insPur = "insert into tb_ProductBookingDetail (Product_Booking_id,Production_id,Quantity,Unit_price,total)values(" + Session["max_id"] + "," + Convert.ToInt32(dr["itemid"]) + "," + Convert.ToInt32(dr["qty"]) + ",'" + Convert.ToDouble(dr["unitprice"]) + "'," + Convert.ToDouble(dr["total"]) + ")";
                obj.ExecuteCommand(insPur);
            }
        }
        else
        {
            string ins = "insert into tb_ProductBooking(buyer_type,buyer_name,Booking_Date,Grand_total)Values('" + ddtype1.SelectedValue + "','" + txttype.Text + "','" + lbldatetime.Text + "','" + gtotal.Text + "')";
            obj.ExecuteCommand(ins);


            string sel = "select max(ProductBooking_id) as p_id from tb_ProductBooking";
            DataTable dtMax = obj.GetDataTable(sel);

            Session["max_id"] = dtMax.Rows[0]["p_id"];

            DataTable dt = (DataTable)Session["tem_dt"];
            foreach (DataRow dr in dt.Rows)
            {

                string insPur = "insert into tb_ProductBookingDetail (Product_Booking_id,Production_id,Quantity,Unit_price,total)values(" + Session["max_id"] + "," + Convert.ToInt32(dr["itemid"]) + "," + Convert.ToInt32(dr["qty"]) + ",'" + Convert.ToDouble(dr["unitprice"]) + "'," + Convert.ToDouble(dr["total"]) + ")";
                obj.ExecuteCommand(insPur);
            }
        }
        temp_tbl();
        ddtype1.ClearSelection();
        ddtype2.ClearSelection();
        txttype.Text = "";
        gtotal.Text = "";
        temp_tbl();
        gridtemp.Visible = false;
        
    }
    private string GetISB()
    {
        string allowedChars = "";

        // allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string passwordString = "";

        string temp = "";

        Random rand = new Random();
        for (int i = 0; i < 4; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordString += temp;
        }
        return ("M-" + passwordString);

    }

}



   

  