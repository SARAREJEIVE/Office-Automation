using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Product : System.Web.UI.Page
{
    static int eid, prdctn_id, stock,stk,rmid,rid;
    static string Sn_A, Sn_B;
    string Sn_C, Sn_D, Sn_E;
    string [] rawmaterials;
    cls_imi obj = new cls_imi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
            gridfill();
            


        }
    }
    public void gridfill()
    {
        string sel = "select * from tb_ProductBooking";
        obj.FillGridView(sel, GridView1);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        eid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "vm")
        {
            Session["pb_id"] = Convert.ToInt32(eid);
            MultiView1.ActiveViewIndex = 1;
            string sel = "select * from tb_ProductBookingDetail P,tb_Productions R where R.Production_id=P.Production_id and Product_Booking_id=" + eid + "";
            obj.FillGridView(sel, GridView2);
        }
    }

    public void xxxxx()
    {
        string sel_count = @"select case when LEN(ISNULL(max(Product_id),0))=1 then (CONVERT(nvarchar,'0000')+convert(nvarchar,ISNULL(max(Product_id),0)+1))
	 when LEN(ISNULL(max(Product_id),0))=2 then (CONVERT(nvarchar,'000')+convert(nvarchar,max(Product_id)+1))
	  when LEN(ISNULL(max(Product_id),0))=3 then (CONVERT(nvarchar,'00')+convert(nvarchar,max(Product_id)+1))
	   when LEN(ISNULL(max(Product_id),0))=4 then (CONVERT(nvarchar,'0')+convert(nvarchar,max(Product_id)+1))
	    else convert(nvarchar,max(Product_id)+1) end  as Row_Count  from tb_Product";
        DataTable dt_count = obj.GetDataTable(sel_count);
        if (dt_count.Rows.Count > 0)
        {
            Sn_A = dt_count.Rows[0]["Row_Count"].ToString();
        }


        string sel_countyear = "select DATEDIFF(week,'2016-01-01','2016-07-01') as bill_wk,YEAR('" + DateTime.Now.ToShortDateString() + "') as cunt_year from tb_Product where datepart(yyyy,Manufacturing_Date)='2016'";
        DataTable dt_countyear = obj.GetDataTable(sel_countyear);
        if (dt_countyear.Rows.Count > 0)
        {
            Sn_B = dt_countyear.Rows[0]["bill_wk"].ToString();
            Sn_C = dt_countyear.Rows[0]["cunt_year"].ToString();
        }

        string sel_cnt_per_yr = @"select Case when LEN(a.Count_per_year)=1 then CONVERT(nvarchar,'000')+convert(nvarchar,a.Count_per_year+1)
	     when LEN(a.Count_per_year)=2 then CONVERT(nvarchar,'00')+convert(nvarchar,a.Count_per_year+1)
	      when LEN(a.Count_per_year)=3 then CONVERT(nvarchar,'0')+convert(nvarchar,a.Count_per_year+1)
	       else convert(nvarchar,a.Count_per_year+1) end  as count_per_yr from (select top 1 * from tb_Product
	        order by Product_id desc) a,tb_Product b where a.Product_id=b.Product_id";


        DataTable dt_cnt_per_yr = obj.GetDataTable(sel_cnt_per_yr);
        if (dt_cnt_per_yr.Rows.Count > 0)
        {
            Sn_D = dt_cnt_per_yr.Rows[0]["count_per_yr"].ToString();

        }
        else
        {
            Sn_D = "0001";
        }

        Session["serial_num"] = Sn_A + " " + Sn_D + " " + prdctn_id + " " + Sn_B + " " + Sn_C;

    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "rawname")
        {
             rid=Convert.ToInt32(e.CommandArgument);
            string sel = "select * from tb_ProductionRawMaterial a,tb_RawMaterial r where r.Raw_id=a.Raw_id and a.Production_id=" + rid + "";
            obj.FillGridView(sel, GridView4);
           
        //    string sel1 = "select * from tb_ProductionRawMaterial a,tb_RawMaterial r where r.Raw_id=a.Raw_id and a.Production_id=" + rid + " ";
        //    DataTable dt = obj.GetDataTable(sel1);
        //int length = dt.Rows.Count;
        //int i = 0;
        //while (length > 0)
        //{
        //    stock = Convert.ToInt32(dt.Rows[i]["Raw_quantity"]);
        //    stk = Convert.ToInt32(dt.Rows[i]["Raw_Stock"]);
        //    rmid = Convert.ToInt32(dt.Rows[i]["Raw_id"]);
           
        //    string ups = "update tb_RawMaterial set Raw_Stock=Raw_stock-" + stock + " where Raw_id=" + rmid + "";
        //    obj.ExecuteCommand(ups);

        //    i++;
        //    length--;
        //}


      


        }
       
        if (e.CommandName == "gen")
        {
            eid = Convert.ToInt32(e.CommandArgument);
            string sel = "select * from tb_ProductBookingDetail where PBD_id=" + eid + " and status=0";
            DataTable dt = obj.GetDataTable(sel);
            if (dt.Rows.Count > 0)
            {
                prdctn_id = Convert.ToInt32(dt.Rows[0]["Production_id"]);

                int prdctn_qty = Convert.ToInt32(dt.Rows[0]["Quantity"]);
                int i;
                for (i = 0; i < prdctn_qty; i++)
                {

                    xxxxx();
                    int no_of_prdt_per_yr;

                    string prdt_crnt_yr = "select top 1 * from tb_Product order by Product_id desc";
                    DataTable dt_yr = obj.GetDataTable(prdt_crnt_yr);
                    if (dt_yr.Rows.Count > 0)
                    {

                        //year check cheiyanam.............
                        no_of_prdt_per_yr = Convert.ToInt32(dt_yr.Rows[0]["Count_per_year"]);
                    }
                    else
                    {
                        no_of_prdt_per_yr = 0;
                    }
                    no_of_prdt_per_yr++;
                    string ins_prdct = "insert into tb_Product(production_id,Product_SerialNumber,Product_Booking_id,Manufacturing_Date,Count_per_year) values(" + prdctn_id + ",'" + Session["serial_num"] + "'," + Session["pb_id"] + ",'" + DateTime.Now.ToShortDateString() + "','" + no_of_prdt_per_yr + "')";
                    obj.ExecuteCommand(ins_prdct);


                }
                string uppbd = "update tb_ProductBookingDetail set status=1 where PBD_id=" + eid + "";
                obj.ExecuteCommand(uppbd);

                complete();
            }

            else
            {
                Response.Write("<script>alert('Current item already generated...')</script>");
            }
          
            fill();
            MultiView1.ActiveViewIndex = 2;
        }
    }
    public void complete()
    {
        string sel1 = "select * from tb_ProductionRawMaterial a,tb_RawMaterial r where r.Raw_id=a.Raw_id and a.Production_id=" + rid + " ";
            DataTable dt = obj.GetDataTable(sel1);
        int length = dt.Rows.Count;
        int i = 0;
        while (length > 0)
        {
            stock = Convert.ToInt32(dt.Rows[i]["Raw_quantity"]);
            stk = Convert.ToInt32(dt.Rows[i]["Raw_Stock"]);
            rmid = Convert.ToInt32(dt.Rows[i]["Raw_id"]);

            string ups = "update tb_RawMaterial set Raw_Stock=Raw_stock-" + stock + " where Raw_id=" + rmid + "";
            obj.ExecuteCommand(ups);

            i++;
            length--;
        }
    }
    public void fill()
    {
        string sel = "select * from tb_product where Product_Booking_id=" + Session["pb_id"] + "";
        obj.FillGridView(sel, GridView3);
    }



}