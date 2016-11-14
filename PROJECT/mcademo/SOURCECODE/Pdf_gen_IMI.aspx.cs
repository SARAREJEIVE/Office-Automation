using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

public partial class Admin_Pdf_gen_IMI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPDF_Click1(object sender, EventArgs e)
    {
        Document MyDocumnet = new Document(PageSize.A4, 30, 30, 30, 30);
        System.IO.MemoryStream MyReport = new System.IO.MemoryStream();

        PdfWriter writer = PdfWriter.GetInstance(MyDocumnet, MyReport);
        MyDocumnet.AddAuthor("Report");
        MyDocumnet.AddSubject("My Firsr Pdf");
        MyDocumnet.Open();

        #region Header
        iTextSharp.text.Table tblHeader = new iTextSharp.text.Table(4);
        tblHeader.Width = 100;
        tblHeader.Padding = 2;
        tblHeader.Spacing = 1;
        tblHeader.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tblWidths = { 25, 15, 20, 20 };
        tblHeader.SetWidths(tblWidths);


        Cell cellHeader = new Cell(new Phrase("Roche Professional Services", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellHeader.HorizontalAlignment = Element.ALIGN_LEFT;
        cellHeader.VerticalAlignment = Element.ALIGN_TOP;
        cellHeader.Leading = 8;
        cellHeader.Colspan = 1;
        cellHeader.Border = Rectangle.NO_BORDER;
        tblHeader.AddCell(cellHeader);

        cellHeader = new Cell(new Phrase(" Clarify case id:", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellHeader.HorizontalAlignment = Element.ALIGN_RIGHT;
        cellHeader.VerticalAlignment = Element.ALIGN_BOTTOM;
        cellHeader.Leading = 8;
        cellHeader.Colspan = 1;
        cellHeader.Border = Rectangle.NO_BORDER;
        tblHeader.AddCell(cellHeader);

        cellHeader = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellHeader.HorizontalAlignment = Element.ALIGN_RIGHT;
        cellHeader.VerticalAlignment = Element.ALIGN_BOTTOM;
        cellHeader.Leading = 8;
        cellHeader.Colspan = 1;
        cellHeader.Border = Rectangle.BOTTOM_BORDER;
        tblHeader.AddCell(cellHeader);

        iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(Server.MapPath("Intel_logo.png"));
        img.ScaleAbsolute(30, 15);

        cellHeader = new Cell(img);
        cellHeader.HorizontalAlignment = Element.ALIGN_RIGHT;
        cellHeader.VerticalAlignment = Element.ALIGN_TOP;
        cellHeader.Leading = 8;
        cellHeader.Colspan = 1;
        cellHeader.Border = Rectangle.NO_BORDER;
        tblHeader.AddCell(cellHeader);

        cellHeader = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellHeader.HorizontalAlignment = Element.ALIGN_RIGHT;
        cellHeader.VerticalAlignment = Element.ALIGN_BOTTOM;
        cellHeader.Leading = 8;
        cellHeader.Colspan = 2;
        cellHeader.Border = Rectangle.NO_BORDER;
        tblHeader.AddCell(cellHeader);

        MyDocumnet.Add(tblHeader);

        #endregion

        #region table1
        iTextSharp.text.Table tbl1 = new iTextSharp.text.Table(3);
        tbl1.Width = 100;
        tbl1.Padding = 3;
        tbl1.Spacing = 1;
        tbl1.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl1Widths = { 10, 30, 30 };
        tbl1.SetWidths(tbl1Widths);

        Cell cellTbl1 = new Cell(new Phrase("Report No.", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 1;
        cellTbl1.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl1.Border = Rectangle.BOX;
        tbl1.AddCell(cellTbl1);

        cellTbl1 = new Cell(new Phrase("Instrument Serial No.", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 1;
        cellTbl1.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl1.Border = Rectangle.BOX;
        tbl1.AddCell(cellTbl1);

        cellTbl1 = new Cell(new Phrase("Visit Date", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 1;
        cellTbl1.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl1.Border = Rectangle.BOX;
        tbl1.AddCell(cellTbl1);

        cellTbl1 = new Cell(new Phrase("02154", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 1;
        cellTbl1.Border = Rectangle.BOX;
        tbl1.AddCell(cellTbl1);

        cellTbl1 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 1;
        cellTbl1.Border = Rectangle.BOX;
        tbl1.AddCell(cellTbl1);

        cellTbl1 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 1;
        cellTbl1.Border = Rectangle.BOX;
        tbl1.AddCell(cellTbl1);

        cellTbl1 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl1.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl1.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl1.Leading = 8;
        cellTbl1.Colspan = 3;
        cellTbl1.Border = Rectangle.NO_BORDER;
        tbl1.AddCell(cellTbl1);

        MyDocumnet.Add(tbl1);
        #endregion

        #region table2
        iTextSharp.text.Table tbl2 = new iTextSharp.text.Table(4);
        tbl2.Width = 100;
        tbl2.Padding = 3;
        tbl2.Spacing = 1;
        tbl2.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl2Widths = { 10, 10, 10, 20 };
        tbl2.SetWidths(tbl2Widths);

        Cell cellTbl2 = new Cell(new Phrase("Charge Type:", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl2.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl2.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl2.Leading = 8;
        cellTbl2.Colspan = 4;
        cellTbl2.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl2.Border = Rectangle.BOX;
        tbl2.AddCell(cellTbl2);

        cellTbl2 = new Cell(new Phrase("[ ] Service Contract", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl2.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl2.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl2.Leading = 8;
        cellTbl2.Colspan = 1;
        cellTbl2.Border = Rectangle.BOX;
        tbl2.AddCell(cellTbl2);

        cellTbl2 = new Cell(new Phrase("[ ] Ad-hoc", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl2.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl2.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl2.Leading = 8;
        cellTbl2.Colspan = 1;
        cellTbl2.Border = Rectangle.BOX;
        tbl2.AddCell(cellTbl2);

        cellTbl2 = new Cell(new Phrase("[ ] Placement/Rental", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl2.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl2.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl2.Leading = 8;
        cellTbl2.Colspan = 1;
        cellTbl2.Border = Rectangle.BOX;
        tbl2.AddCell(cellTbl2);

        cellTbl2 = new Cell(new Phrase("[ ] Other(Pls specify):", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl2.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl2.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl2.Leading = 8;
        cellTbl2.Colspan = 1;
        cellTbl2.Border = Rectangle.BOX;
        tbl2.AddCell(cellTbl2);


        cellTbl2 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl2.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl2.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl2.Leading = 8;
        cellTbl2.Colspan = 4;
        cellTbl2.Border = Rectangle.NO_BORDER;
        tbl2.AddCell(cellTbl2);

        MyDocumnet.Add(tbl2);
        #endregion


        #region table3
        iTextSharp.text.Table tbl3 = new iTextSharp.text.Table(5);
        tbl3.Width = 100;
        tbl3.Padding = 3;
        tbl3.Spacing = 1;
        tbl3.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl3Widths = { 10, 10, 10, 10, 10 };
        tbl3.SetWidths(tbl3Widths);

        Cell cellTbl3 = new Cell(new Phrase("Call Details:", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 5;
        cellTbl3.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase("Call Received Date :", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase("Call Attended Dates :", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase("Travel Hours ", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Rowspan = 2;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);


        //2nd Row
      

        cellTbl3 = new Cell(new Phrase("Time :", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase("Time :", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

        cellTbl3 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.NORMAL, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 1;
        cellTbl3.Border = Rectangle.BOX;
        tbl3.AddCell(cellTbl3);

       

        //2nd row end------------


        cellTbl3 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl3.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl3.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl3.Leading = 8;
        cellTbl3.Colspan = 4;
        cellTbl3.Border = Rectangle.NO_BORDER;
        tbl3.AddCell(cellTbl3);

        MyDocumnet.Add(tbl3);
        #endregion
        //-----------------------------------------------------------------------------------------------------------------------------------------------------------------
        #region table4

        iTextSharp.text.Table tbl4 = new iTextSharp.text.Table(1);
        tbl4.Width = 100;
        tbl4.Padding = 3;
        tbl4.Spacing = 1;
        tbl4.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl4Widths = { 50 };
        tbl4.SetWidths(tbl4Widths);
        
          

        Cell cellTbl4 = new Cell(new Phrase("Problem Description : \n \n\n\n\n\n", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl4.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl4.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl4.Leading = 8;
        cellTbl4.Colspan = 1;
        //cellTbl4.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl4.Border = Rectangle.BOX;
        tbl4.AddCell(cellTbl4);

        cellTbl4 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl4.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl4.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl4.Leading = 8;
        cellTbl4.Colspan = 1;
        cellTbl4.Border = Rectangle.NO_BORDER;
        tbl4.AddCell(cellTbl4);

        MyDocumnet.Add(tbl4);
        #endregion
        //-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        iTextSharp.text.Table tbl5 = new iTextSharp.text.Table(1);
        tbl5.Width = 100;
        tbl5.Padding = 3;
        tbl5.Spacing = 1;
        tbl5.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl5Widths = { 50 };
        tbl5.SetWidths(tbl5Widths);


        Cell cellTbl5 = new Cell(new Phrase("Action Summary : \n \n\n\n\n\n", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl5.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl5.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl5.Leading = 8;
        cellTbl5.Colspan = 1;
        //cellTbl4.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl5.Border = Rectangle.BOX;
        tbl5.AddCell(cellTbl5);

        cellTbl5 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl5.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl5.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl5.Leading = 8;
        cellTbl5.Colspan = 1;
        cellTbl5.Border = Rectangle.NO_BORDER;
        tbl5.AddCell(cellTbl5);

        MyDocumnet.Add(tbl5);
        
        //-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        iTextSharp.text.Table tbl6 = new iTextSharp.text.Table(1);
        tbl6.Width = 100;
        tbl6.Padding = 3;
        tbl6.Spacing = 1;
        tbl6.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl6Widths = { 50 };
        tbl6.SetWidths(tbl6Widths);


        Cell cellTbl6 = new Cell(new Phrase("Service Eng remark : \n \n\n\n\n\n", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl6.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl6.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl6.Leading = 8;
        cellTbl6.Colspan = 1;
        //cellTbl4.BackgroundColor = iTextSharp.text.Color.LIGHT_GRAY;
        cellTbl6.Border = Rectangle.BOX;
        tbl6.AddCell(cellTbl6);

        cellTbl6 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl6.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl6.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl6.Leading = 8;
        cellTbl6.Colspan = 1;
        cellTbl6.Border = Rectangle.NO_BORDER;
        tbl6.AddCell(cellTbl6);
        MyDocumnet.Add(tbl6);

        //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        //Other tables

        #region table11

        iTextSharp.text.Table tbl11 = new iTextSharp.text.Table(5);
        tbl11.Width = 100;
        tbl11.Padding = 3;
        tbl11.Spacing = 1;
        tbl11.Border = iTextSharp.text.Rectangle.NO_BORDER;

        int[] tbl11Widths = { 40, 1, 30, 1, 40 };
        tbl11.SetWidths(tbl11Widths);

        Cell cellTbl11 = new Cell(new Phrase("Service Engineer/Application Specialist Name:", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase("3 SP Address Seal", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase("Customer's/Users Name:", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        ///Row 2
        cellTbl11 = new Cell(new Phrase(" \n", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" \n", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Rowspan = 4;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" \n", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        //Row
        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 2;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 10, Font.BOLD, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 2;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        //Row
        cellTbl11 = new Cell(new Phrase("Service Engineer/Application Specialist Name:", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase("Customer's/Users Name:", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" \n", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" ", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_LEFT;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.NO_BORDER;
        tbl11.AddCell(cellTbl11);

        cellTbl11 = new Cell(new Phrase(" \n", FontFactory.GetFont("Arial Narrow", 8, Font.NORMAL, Color.BLACK)));
        cellTbl11.HorizontalAlignment = Element.ALIGN_CENTER;
        cellTbl11.VerticalAlignment = Element.ALIGN_MIDDLE;
        cellTbl11.Leading = 8;
        cellTbl11.Colspan = 1;
        cellTbl11.Border = Rectangle.BOX;
        tbl11.AddCell(cellTbl11);

        MyDocumnet.Add(tbl11);
        #endregion

        MyDocumnet.Close();
        Response.Clear();

        Response.AddHeader("content-disposition", "attachment;filename=Q5533.pdf");
        Response.ContentType = "application/pdf";
        Response.BinaryWrite(MyReport.ToArray());
        Response.End(); 

    }
}