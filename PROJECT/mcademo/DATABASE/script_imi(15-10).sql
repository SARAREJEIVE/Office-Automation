USE [db_IMI]
GO
/****** Object:  Table [dbo].[tb_SubCategory]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SubCategory](
	[sub_cat_id] [int] IDENTITY(1,1) NOT NULL,
	[pdt_cat_id] [nvarchar](max) NULL,
	[sub_cat_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_SubCategory] PRIMARY KEY CLUSTERED 
(
	[sub_cat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_SubCategory] ON
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (1, N'6', N'mix')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (7, N'2', N'Thermit mini')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (11, N'6', N'Mixit')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (12, N'6', N'Mixit Mini')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (13, N'7', N'Charit')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (14, N'8', N'Thermit Elisa')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (15, N'9', N'AME 51')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (16, N'9', N'AMV 32')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (17, N'9', N'AMV 32 Mini')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (19, N'9', N'GSM Modem')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (26, N'9', N'DAC Board')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (27, N'9', N'RTC Board')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (28, N'9', N'Stepper Motor Control')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (29, N'9', N'USB - RS232 Converter')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (42, N'2', N'Thermit 37')
INSERT [dbo].[tb_SubCategory] ([sub_cat_id], [pdt_cat_id], [sub_cat_name]) VALUES (43, N'2', N'u-Thermit')
SET IDENTITY_INSERT [dbo].[tb_SubCategory] OFF
/****** Object:  Table [dbo].[tb_RawPurchaseHeader]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_RawPurchaseHeader](
	[RPH_id] [int] IDENTITY(1,1) NOT NULL,
	[Raw_id] [int] NULL,
	[Date] [date] NULL,
	[Grand_total] [float] NULL,
	[Invoice_no] [int] NULL,
 CONSTRAINT [PK_tb_RawPurchaseHeader] PRIMARY KEY CLUSTERED 
(
	[RPH_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_RawMaterialDetails]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_RawMaterialDetails](
	[Rmd_id] [int] IDENTITY(1,1) NOT NULL,
	[Raw_id] [int] NULL,
	[Date] [date] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_tb_RawMaterialDetails] PRIMARY KEY CLUSTERED 
(
	[Rmd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_RawMaterialDetails] ON
INSERT [dbo].[tb_RawMaterialDetails] ([Rmd_id], [Raw_id], [Date], [Quantity]) VALUES (35, 2, CAST(0xAB3B0B00 AS Date), 100)
INSERT [dbo].[tb_RawMaterialDetails] ([Rmd_id], [Raw_id], [Date], [Quantity]) VALUES (37, 1, CAST(0xAB3B0B00 AS Date), 10)
INSERT [dbo].[tb_RawMaterialDetails] ([Rmd_id], [Raw_id], [Date], [Quantity]) VALUES (38, 1, CAST(0xAB3B0B00 AS Date), 11)
INSERT [dbo].[tb_RawMaterialDetails] ([Rmd_id], [Raw_id], [Date], [Quantity]) VALUES (39, 1, CAST(0xAC3B0B00 AS Date), 100)
INSERT [dbo].[tb_RawMaterialDetails] ([Rmd_id], [Raw_id], [Date], [Quantity]) VALUES (40, 26, CAST(0xBF3B0B00 AS Date), 100)
SET IDENTITY_INSERT [dbo].[tb_RawMaterialDetails] OFF
/****** Object:  Table [dbo].[tb_RawMaterial]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_RawMaterial](
	[Raw_id] [int] IDENTITY(1,1) NOT NULL,
	[Raw_Name] [nvarchar](max) NULL,
	[Raw_Stock] [int] NULL,
	[Raw_Price] [float] NULL,
	[eff_Rate] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_RawMaterial] PRIMARY KEY CLUSTERED 
(
	[Raw_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_RawMaterial] ON
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (1, N'Aluminium Bar', 187, 42, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (2, N'Bearing 6mm', 295, 12, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (6, N'Bridge Rectifier', 507, 64, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (13, N'Cabinet Charit', 89, 34, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (14, N'Cabinet Mixit', 100, 21, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (15, N'Cabinet Mixit Mini', 99, 32, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (16, N'Cabinet Thermit 37', 100, 43, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (17, N'Cabinet Thermit Mini', 100, 54, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (18, N'Cabinet U-Thermit', 100, 65, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (19, N'Capacitor 0.01uF', 100, 64, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (20, N'Capacitor 0.22uF', 100, 34, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (21, N'Capacitor 1000uF', 100, 42, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (22, N'Capacitor 10uF', 100, 69, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (23, N'Capacitor 2.2uF Box', 100, 35, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (24, N'Capacitor 470uF', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (25, N'Carton Incubator', 100, 98, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (26, N'Carton Master Incubator', 200, 13, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (27, N'Carton Master Mixit Mini', 100, 32, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (28, N'Carton Mixit', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (29, N'Carton Mixit Mini', 100, 43, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (30, N'Carton U Thermit', 100, 45, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (31, N'Ceramic Resistor 1K 10W', 100, 3, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (32, N'Ceramic Resistor 1K 5W', 100, 42, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (33, N'Ceramic Resistor 22E 5W', 100, 54, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (34, N'Connector 2 Pin PCB XY126', 100, 56, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (35, N'Connector 3Pin PCB XY128', 100, 76, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (36, N'Connector 4Pin', 100, 42, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (37, N'Connector Burgstrip 40pin', 100, 41, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (38, N'Connector CPU HVC03', 100, 60, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (39, N'Connector CPU HVC06', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (40, N'Connector Terminal', 100, 67, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (41, N'Connector USB', 100, 43, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (42, N'Crystal 11.0592MHz', 100, 24, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (43, N'DIP SWITCH', 100, 12, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (44, N'Display CA', 100, 65, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (45, N'Display LCD 16 x 2', 100, 89, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (46, N'Flex Wire', 100, 12, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (47, N'Fuse 100mA', 100, 54, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (48, N'Fuse 250mA', 100, 12, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (49, N'Fuse 2.5A', 100, 41, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (50, N'Fuse Holder', 67, 24, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (51, N'Gluestick', 97, 67, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (52, N'Groomet 12MM', 94, 32, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (53, N'Helical Coupling', 82, 34, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (54, N'IC 7805', 76, 12, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (55, N'IC AT Mega 32', 70, 12, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (56, N'IC AT MEGA 8', 100, 32, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (57, N'IC Base 16 Pin', 100, 54, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (58, N'IC Base 28 Pin', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (59, N'IC Base 40 Pin', 100, 87, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (60, N'IC Base 6 Pin', 100, 98, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (61, N'IC L293', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (62, N'LED 3mm Green', 100, 57, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (63, N'LED 3mm Red', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (64, N'LED 3mm Yellow', 100, 43, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (65, N'Magnet 6mm', 100, 23, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (66, N'Mains Chord 3 Pin', 100, 23, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (67, N'MOC 3010', 100, 65, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (68, N'MOV 275V', 100, 43, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (69, N'PCB AVR Kit', 100, 65, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (70, N'PCB Heater Thermit', 100, 43, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (71, N'PCB Heater Thermit Mini', 100, 34, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (72, N'PCB Heater UThermit', 100, 76, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (73, N'PCB Main Thermit', 100, 76, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (74, N'PCB Main U Thermit', 100, 32, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (75, N'PCB Mixit', 100, 45, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (76, N'PI Tube 3mm', 100, 56, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (77, N'PI Tube 8mm', 100, 76, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (78, N'Relay 6V', 100, 98, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (79, N'Resistor CFR 5%', 86, 45, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (80, N'Resistor MFR 1%', 82, 21, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (81, N'Resistor MFR 5%', 100, 34, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (82, N'Screw M3 6mm', 100, 54, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (83, N'Screw M4 6mm', 100, 34, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (84, N'Screw M3 15mm', 100, 87, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (85, N'Screw Self Thread 6mm', 100, 45, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (86, N'Silica Gell', 100, 34, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (87, N'Solder 22SWG 500mg', 100, 76, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (88, N'Solder Bit', 100, 34, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (89, N'Stepper Motor Nema 17', 100, 34, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (90, N'Switch-Micro', 100, 43, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (91, N'Switch RSF11', 100, 65, N'5')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (92, N'Tag TH36/RR4', 100, 45, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (93, N'Thermistor 10KNTC', 100, 87, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (94, N'Transformer 14V/ 1A', 100, 64, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (95, N'Transformer 8V/ 350ma', 100, 28, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (96, N'Transformer Charit', 100, 45, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (97, N'Transformer Pulse', 100, 68, N'4')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (98, N'Transistor 2N2222', 100, 25, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (100, N'Transistor ST13003', 100, 44, N'2')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (101, N'Triac BT136', 100, 52, N'3')
INSERT [dbo].[tb_RawMaterial] ([Raw_id], [Raw_Name], [Raw_Stock], [Raw_Price], [eff_Rate]) VALUES (102, N'Trimpot 2K', 100, 32, N'4')
SET IDENTITY_INSERT [dbo].[tb_RawMaterial] OFF
/****** Object:  Table [dbo].[tb_PurchaseDetailsHeader]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_PurchaseDetailsHeader](
	[RPD_id] [int] IDENTITY(1,1) NOT NULL,
	[RPH_id] [int] NULL,
	[Raw_id] [int] NULL,
	[Raw_quantity] [int] NULL,
	[Raw_Price] [float] NULL,
	[Total_Amount] [float] NULL,
 CONSTRAINT [PK_tb_PurchaseDetailsHeader] PRIMARY KEY CLUSTERED 
(
	[RPD_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductService]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductService](
	[ProductService_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Serial_No] [nvarchar](50) NULL,
	[Service_Date] [date] NULL,
	[Problem_Description] [nvarchar](max) NULL,
	[Action_Summary] [nvarchar](max) NULL,
	[spare_Description] [nvarchar](max) NULL,
	[warranty_Status] [nvarchar](max) NULL,
	[Service_cost] [numeric](18, 2) NULL,
 CONSTRAINT [PK_tb_ProductService] PRIMARY KEY CLUSTERED 
(
	[ProductService_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductService] ON
INSERT [dbo].[tb_ProductService] ([ProductService_id], [Product_Serial_No], [Service_Date], [Problem_Description], [Action_Summary], [spare_Description], [warranty_Status], [Service_cost]) VALUES (2, NULL, CAST(0xCE3B0B00 AS Date), N'not working properly', N'change parts', N'aluminium bar', N'On Warranty...!!!', NULL)
INSERT [dbo].[tb_ProductService] ([ProductService_id], [Product_Serial_No], [Service_Date], [Problem_Description], [Action_Summary], [spare_Description], [warranty_Status], [Service_cost]) VALUES (3, NULL, CAST(0xCE3B0B00 AS Date), N'not working properly', N'change parts', N'aluminium bar', N'On Warranty...!!!', NULL)
INSERT [dbo].[tb_ProductService] ([ProductService_id], [Product_Serial_No], [Service_Date], [Problem_Description], [Action_Summary], [spare_Description], [warranty_Status], [Service_cost]) VALUES (4, NULL, CAST(0xCE3B0B00 AS Date), N'not working properly', N'change parts', N'aluminiunm bar', N'On Warranty...!!!', NULL)
INSERT [dbo].[tb_ProductService] ([ProductService_id], [Product_Serial_No], [Service_Date], [Problem_Description], [Action_Summary], [spare_Description], [warranty_Status], [Service_cost]) VALUES (5, N'00089 0002 51 26 2016', CAST(0xCE3B0B00 AS Date), N'had a beep sound..
low battery.', N'change componenets', N'change capacitor ', N'On Warranty...!!!', NULL)
INSERT [dbo].[tb_ProductService] ([ProductService_id], [Product_Serial_No], [Service_Date], [Problem_Description], [Action_Summary], [spare_Description], [warranty_Status], [Service_cost]) VALUES (6, N'', CAST(0xCE3B0B00 AS Date), N'', N'', N'', N'On Warranty...!!!', NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductService] OFF
/****** Object:  Table [dbo].[tb_Productions]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Productions](
	[production_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_cat_id] [nvarchar](50) NULL,
	[Product_Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Tax] [int] NULL,
	[product_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Productions] PRIMARY KEY CLUSTERED 
(
	[production_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Productions] ON
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (51, N'7', N'8 sq + 8 rd', NULL, 5, N'05')
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (52, N'37', N'16 round', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (53, N'11', N'Mixit', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (54, N'12', N'Mixit Mini', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (55, N'13', N'Charit', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (56, N'14', N'3x96 Well Plate', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (57, N'15', N'AME 51', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (58, N'16', N'AMV 32', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (59, N'17', N'AMV 32 Mini', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (60, N'19', N'GSM Modem', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (61, N'26', N'DAC Board', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (62, N'27', N'RTC Board', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (63, N'28', N'Stepper Motor Control', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (64, N'29', N'USB - RS232 Converter', NULL, 5, NULL)
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (71, N'42', N'32 round', N'', 5, N'01')
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (72, N'42', N'16 sq + 16 rd', N'', 5, N'03')
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (73, N'42', N'32 square', N'', 5, N'02')
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (74, N'43', N'16 round', N'', 5, N'08')
INSERT [dbo].[tb_Productions] ([production_id], [sub_cat_id], [Product_Name], [Description], [Tax], [product_code]) VALUES (75, N'7', N'16 round', N'', 5, N'04')
SET IDENTITY_INSERT [dbo].[tb_Productions] OFF
/****** Object:  Table [dbo].[tb_ProductionRawMaterial]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductionRawMaterial](
	[Production_RawMaterial_id] [int] IDENTITY(1,1) NOT NULL,
	[Production_id] [nvarchar](max) NULL,
	[Raw_id] [nvarchar](max) NULL,
	[Raw_quantity] [int] NULL,
 CONSTRAINT [PK_tb_ProductionRawMaterial] PRIMARY KEY CLUSTERED 
(
	[Production_RawMaterial_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductionRawMaterial] ON
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (66, N'48', N'1', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (67, N'48', N'2', 2)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (68, N'48', N'6', 3)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (69, N'48', N'13', 4)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (70, N'48', N'14', 5)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (71, N'48', N'15', 6)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (72, N'48', N'16', 7)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (73, N'48', N'17', 8)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (74, N'48', N'18', 10)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (75, N'52', N'1', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (76, N'52', N'2', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (77, N'52', N'6', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (78, N'52', N'13', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (79, N'52', N'14', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (80, N'52', N'15', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (81, N'54', N'1', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (82, N'54', N'6', 3)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (83, N'54', N'13', 3)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (84, N'54', N'14', 4)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (89, N'55', N'50', 11)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (90, N'55', N'51', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (91, N'55', N'52', 2)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (92, N'55', N'53', 6)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (93, N'55', N'54', 8)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (94, N'55', N'55', 10)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (95, N'56', N'79', 7)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (96, N'56', N'80', 9)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (98, N'54', N'1', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (99, N'54', N'44', 2)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (100, N'54', N'47', 3)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (101, N'53', N'1', 10)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (102, N'53', N'13', 11)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (103, N'53', N'15', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (104, N'57', N'1', 2)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (105, N'57', N'2', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (106, N'57', N'6', 3)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (107, N'52', N'6', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (108, N'52', N'13', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (109, N'52', N'6', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (110, N'52', N'13', 0)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (111, N'62', N'1', 1)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (112, N'62', N'2', 2)
INSERT [dbo].[tb_ProductionRawMaterial] ([Production_RawMaterial_id], [Production_id], [Raw_id], [Raw_quantity]) VALUES (113, N'62', N'41', 3)
SET IDENTITY_INSERT [dbo].[tb_ProductionRawMaterial] OFF
/****** Object:  Table [dbo].[tb_ProductionCategory]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductionCategory](
	[pdt_cat_id] [int] IDENTITY(1,1) NOT NULL,
	[pdt_cat_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_ProductionCategory] PRIMARY KEY CLUSTERED 
(
	[pdt_cat_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductionCategory] ON
INSERT [dbo].[tb_ProductionCategory] ([pdt_cat_id], [pdt_cat_name]) VALUES (2, N'Dry Block Incubator')
INSERT [dbo].[tb_ProductionCategory] ([pdt_cat_id], [pdt_cat_name]) VALUES (6, N'Hematology Mixer')
INSERT [dbo].[tb_ProductionCategory] ([pdt_cat_id], [pdt_cat_name]) VALUES (7, N'Syringe Distroyer with Needle Burner')
INSERT [dbo].[tb_ProductionCategory] ([pdt_cat_id], [pdt_cat_name]) VALUES (8, N'3 Plate Digital Elisa Incubator')
INSERT [dbo].[tb_ProductionCategory] ([pdt_cat_id], [pdt_cat_name]) VALUES (9, N'Academic Kits')
SET IDENTITY_INSERT [dbo].[tb_ProductionCategory] OFF
/****** Object:  Table [dbo].[tb_ProductBookingDetail]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductBookingDetail](
	[PBD_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Booking_id] [int] NULL,
	[Production_id] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Unit_price] [nvarchar](max) NULL,
	[total] [nvarchar](max) NULL,
	[status] [int] NULL,
	[genarate_status] [int] NULL,
 CONSTRAINT [PK_tb_ProductBookingDetail] PRIMARY KEY CLUSTERED 
(
	[PBD_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductBookingDetail] ON
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (26, 9, N'55', N'34', N'1800', N'61200', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (27, 9, N'56', N'56', N'11900', N'666400', 0, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (28, 9, N'53', N'30', N'4390', N'131700', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (29, 9, N'53', N'12', N'4620', N'55440', 0, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (30, 12, N'53', N'11', N'4620', N'50820', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (32, 13, N'56', N'4', N'13200', N'52800', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (35, 14, N'56', N'9', N'12400', N'111600', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (36, 15, N'51', N'12', N'3850', N'46200', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (37, 15, N'72', N'10', N'6467', N'64670', 0, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (38, 16, N'57', N'11', N'2900', N'31900', 1, 0)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (39, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (40, 17, N'53', N'10', N'4620', N'46200', NULL, NULL)
INSERT [dbo].[tb_ProductBookingDetail] ([PBD_id], [Product_Booking_id], [Production_id], [Quantity], [Unit_price], [total], [status], [genarate_status]) VALUES (41, 17, N'57', N'10', N'2900', N'29000', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductBookingDetail] OFF
/****** Object:  Table [dbo].[tb_ProductBooking]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductBooking](
	[ProductBooking_id] [int] IDENTITY(1,1) NOT NULL,
	[buyer_type] [nvarchar](max) NULL,
	[buyer_name] [nvarchar](max) NULL,
	[Booking_Date] [nvarchar](max) NULL,
	[Grand_total] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Invoice_no] [nvarchar](50) NULL,
	[Devry_date] [date] NULL,
 CONSTRAINT [PK_tb_ProductBooking] PRIMARY KEY CLUSTERED 
(
	[ProductBooking_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductBooking] ON
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (9, N'Distributor', N'Rony Electronics', N'8/31/2016', N'960940', N'0', N'M-4488', NULL)
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (12, N'Distributor', N'Mirach Electronic and products', N'8/31/2016', N'89320', N'0', N'M-7385', NULL)
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (13, N'Distributor', N'Mirach Electronic and products', N'8/31/2016', N'62296', N'0', N'M-6870', NULL)
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (14, N'Distributor', N'KK Agencies Ltd', N'8/31/2016', N'429750', N'0', N'M-4463', NULL)
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (15, N'Customer', N'Sherin', N'9/6/2016', N'110870', NULL, NULL, NULL)
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (16, N'Distributor', N'Mirach Electronic and products', N'9/7/2016', N'31900', N'0', N'M-4519', NULL)
INSERT [dbo].[tb_ProductBooking] ([ProductBooking_id], [buyer_type], [buyer_name], [Booking_Date], [Grand_total], [Status], [Invoice_no], [Devry_date]) VALUES (17, N'Customer', N'Annu', N'9/20/2016', N'75200', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_ProductBooking] OFF
/****** Object:  Table [dbo].[tb_Product]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[production_id] [int] NULL,
	[Product_SerialNumber] [nvarchar](max) NULL,
	[Product_Booking_id] [int] NULL,
	[Manufacturing_Date] [date] NULL,
	[Count_per_year] [int] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (88, 51, N'00001 0001 51  ', 9, CAST(0xCE3B0B00 AS Date), 1)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (89, 51, N'00089 0002 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 2)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (90, 51, N'00090 0003 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 3)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (91, 51, N'00091 0004 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 4)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (92, 51, N'00092 0005 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 5)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (93, 51, N'00093 0006 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 6)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (94, 51, N'00094 0007 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 7)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (95, 51, N'00095 0008 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 8)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (96, 51, N'00096 0009 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 9)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (97, 51, N'00097 0010 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 10)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (98, 51, N'00098 0011 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 11)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (99, 51, N'00099 0012 51 26 2016', 9, CAST(0xCE3B0B00 AS Date), 12)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (100, 51, N'000100 0013 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 13)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (101, 51, N'00101 0014 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 14)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (102, 51, N'00102 0015 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 15)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (103, 51, N'00103 0016 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 16)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (104, 51, N'00104 0017 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 17)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (105, 51, N'00105 0018 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 18)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (106, 51, N'00106 0019 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 19)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (107, 51, N'00107 0020 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 20)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (108, 51, N'00108 0021 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 21)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (109, 51, N'00109 0022 51 26 2016', 12, CAST(0xD33B0B00 AS Date), 22)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (110, 53, N'00110 0023 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 23)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (111, 53, N'00111 0024 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 24)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (112, 53, N'00112 0025 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 25)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (113, 53, N'00113 0026 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 26)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (114, 53, N'00114 0027 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 27)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (115, 53, N'00115 0028 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 28)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (116, 53, N'00116 0029 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 29)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (117, 53, N'00117 0030 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 30)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (118, 53, N'00118 0031 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 31)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (119, 53, N'00119 0032 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 32)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (120, 53, N'00120 0033 53 26 2016', 12, CAST(0xD33B0B00 AS Date), 33)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (121, 53, N'00121 0034 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 34)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (122, 53, N'00122 0035 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 35)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (123, 53, N'00123 0036 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 36)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (124, 53, N'00124 0037 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 37)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (125, 53, N'00125 0038 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 38)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (126, 53, N'00126 0039 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 39)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (127, 53, N'00127 0040 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 40)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (128, 53, N'00128 0041 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 41)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (129, 53, N'00129 0042 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 42)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (130, 53, N'00130 0043 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 43)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (131, 53, N'00131 0044 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 44)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (132, 53, N'00132 0045 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 45)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (133, 53, N'00133 0046 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 46)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (134, 53, N'00134 0047 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 47)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (135, 53, N'00135 0048 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 48)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (136, 53, N'00136 0049 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 49)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (137, 53, N'00137 0050 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 50)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (138, 53, N'00138 0051 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 51)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (139, 53, N'00139 0052 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 52)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (140, 53, N'00140 0053 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 53)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (141, 53, N'00141 0054 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 54)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (142, 53, N'00142 0055 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 55)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (143, 53, N'00143 0056 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 56)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (144, 53, N'00144 0057 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 57)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (145, 53, N'00145 0058 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 58)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (146, 53, N'00146 0059 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 59)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (147, 53, N'00147 0060 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 60)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (148, 53, N'00148 0061 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 61)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (149, 53, N'00149 0062 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 62)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (150, 53, N'00150 0063 53 26 2016', 9, CAST(0xD33B0B00 AS Date), 63)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (151, 56, N'00151 0064 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 64)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (152, 56, N'00152 0065 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 65)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (153, 56, N'00153 0066 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 66)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (154, 56, N'00154 0067 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 67)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (155, 56, N'00155 0068 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 68)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (156, 56, N'00156 0069 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 69)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (157, 56, N'00157 0070 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 70)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (158, 56, N'00158 0071 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 71)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (159, 56, N'00159 0072 56 26 2016', 14, CAST(0xD33B0B00 AS Date), 72)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (160, 51, N'00160 0073 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 73)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (161, 51, N'00161 0074 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 74)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (162, 51, N'00162 0075 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 75)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (163, 51, N'00163 0076 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 76)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (164, 51, N'00164 0077 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 77)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (165, 51, N'00165 0078 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 78)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (166, 51, N'00166 0079 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 79)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (167, 51, N'00167 0080 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 80)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (168, 51, N'00168 0081 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 81)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (169, 51, N'00169 0082 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 82)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (170, 51, N'00170 0083 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 83)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (171, 51, N'00171 0084 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 84)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (172, 51, N'00172 0085 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 85)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (173, 51, N'00173 0086 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 86)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (174, 51, N'00174 0087 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 87)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (175, 51, N'00175 0088 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 88)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (176, 51, N'00176 0089 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 89)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (177, 51, N'00177 0090 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 90)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (178, 51, N'00178 0091 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 91)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (179, 51, N'00179 0092 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 92)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (180, 51, N'00180 0093 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 93)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (181, 51, N'00181 0094 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 94)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (182, 51, N'00182 0095 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 95)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (183, 51, N'00183 0096 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 96)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (184, 51, N'00184 0097 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 97)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (185, 51, N'00185 0098 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 98)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (186, 51, N'00186 0099 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 99)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (187, 51, N'00187 00100 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 100)
GO
print 'Processed 100 total records'
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (188, 51, N'00188 0101 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 101)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (189, 51, N'00189 0102 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 102)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (190, 51, N'00190 0103 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 103)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (191, 51, N'00191 0104 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 104)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (192, 51, N'00192 0105 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 105)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (193, 51, N'00193 0106 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 106)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (194, 51, N'00194 0107 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 107)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (195, 51, N'00195 0108 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 108)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (196, 51, N'00196 0109 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 109)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (197, 51, N'00197 0110 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 110)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (198, 51, N'00198 0111 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 111)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (199, 51, N'00199 0112 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 112)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (200, 51, N'00200 0113 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 113)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (201, 51, N'00201 0114 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 114)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (202, 51, N'00202 0115 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 115)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (203, 51, N'00203 0116 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 116)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (204, 51, N'00204 0117 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 117)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (205, 51, N'00205 0118 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 118)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (206, 51, N'00206 0119 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 119)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (207, 51, N'00207 0120 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 120)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (208, 51, N'00208 0121 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 121)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (209, 51, N'00209 0122 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 122)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (210, 51, N'00210 0123 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 123)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (211, 51, N'00211 0124 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 124)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (212, 51, N'00212 0125 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 125)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (213, 51, N'00213 0126 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 126)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (214, 51, N'00214 0127 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 127)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (215, 51, N'00215 0128 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 128)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (216, 51, N'00216 0129 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 129)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (217, 51, N'00217 0130 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 130)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (218, 51, N'00218 0131 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 131)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (219, 51, N'00219 0132 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 132)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (220, 51, N'00220 0133 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 133)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (221, 51, N'00221 0134 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 134)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (222, 51, N'00222 0135 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 135)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (223, 51, N'00223 0136 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 136)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (224, 51, N'00224 0137 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 137)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (225, 51, N'00225 0138 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 138)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (226, 51, N'00226 0139 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 139)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (227, 51, N'00227 0140 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 140)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (228, 51, N'00228 0141 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 141)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (229, 51, N'00229 0142 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 142)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (230, 51, N'00230 0143 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 143)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (231, 51, N'00231 0144 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 144)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (232, 51, N'00232 0145 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 145)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (233, 51, N'00233 0146 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 146)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (234, 51, N'00234 0147 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 147)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (235, 51, N'00235 0148 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 148)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (236, 51, N'00236 0149 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 149)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (237, 51, N'00237 0150 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 150)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (238, 51, N'00238 0151 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 151)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (239, 51, N'00239 0152 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 152)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (240, 51, N'00240 0153 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 153)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (241, 51, N'00241 0154 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 154)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (242, 51, N'00242 0155 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 155)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (243, 51, N'00243 0156 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 156)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (244, 51, N'00244 0157 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 157)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (245, 51, N'00245 0158 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 158)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (246, 51, N'00246 0159 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 159)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (247, 51, N'00247 0160 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 160)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (248, 51, N'00248 0161 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 161)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (249, 51, N'00249 0162 51 26 2016', 14, CAST(0xD33B0B00 AS Date), 162)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (250, 51, N'00250 0163 51 26 2016', 13, CAST(0xD33B0B00 AS Date), 163)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (251, 51, N'00251 0164 51 26 2016', 13, CAST(0xD33B0B00 AS Date), 164)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (252, 56, N'00252 0165 56 26 2016', 13, CAST(0xD33B0B00 AS Date), 165)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (253, 56, N'00253 0166 56 26 2016', 13, CAST(0xD33B0B00 AS Date), 166)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (254, 56, N'00254 0167 56 26 2016', 13, CAST(0xD33B0B00 AS Date), 167)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (255, 56, N'00255 0168 56 26 2016', 13, CAST(0xD33B0B00 AS Date), 168)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (256, 55, N'00256 0169 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 169)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (257, 55, N'00257 0170 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 170)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (258, 55, N'00258 0171 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 171)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (259, 55, N'00259 0172 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 172)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (260, 55, N'00260 0173 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 173)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (261, 55, N'00261 0174 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 174)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (262, 55, N'00262 0175 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 175)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (263, 55, N'00263 0176 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 176)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (264, 55, N'00264 0177 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 177)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (265, 55, N'00265 0178 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 178)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (266, 55, N'00266 0179 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 179)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (267, 55, N'00267 0180 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 180)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (268, 55, N'00268 0181 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 181)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (269, 55, N'00269 0182 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 182)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (270, 55, N'00270 0183 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 183)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (271, 55, N'00271 0184 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 184)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (272, 55, N'00272 0185 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 185)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (273, 55, N'00273 0186 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 186)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (274, 55, N'00274 0187 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 187)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (275, 55, N'00275 0188 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 188)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (276, 55, N'00276 0189 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 189)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (277, 55, N'00277 0190 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 190)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (278, 55, N'00278 0191 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 191)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (279, 55, N'00279 0192 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 192)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (280, 55, N'00280 0193 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 193)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (281, 55, N'00281 0194 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 194)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (282, 55, N'00282 0195 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 195)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (283, 55, N'00283 0196 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 196)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (284, 55, N'00284 0197 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 197)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (285, 55, N'00285 0198 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 198)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (286, 55, N'00286 0199 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 199)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (287, 55, N'00287 0200 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 200)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (288, 55, N'00288 0201 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 201)
GO
print 'Processed 200 total records'
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (289, 55, N'00289 0202 55 26 2016', 9, CAST(0xD33B0B00 AS Date), 202)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (290, 57, N'00290 0203 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 203)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (291, 57, N'00291 0204 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 204)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (292, 57, N'00292 0205 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 205)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (293, 57, N'00293 0206 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 206)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (294, 57, N'00294 0207 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 207)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (295, 57, N'00295 0208 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 208)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (296, 57, N'00296 0209 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 209)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (297, 57, N'00297 0210 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 210)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (298, 57, N'00298 0211 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 211)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (299, 57, N'00299 0212 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 212)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (300, 57, N'00300 0213 57 26 2016', 16, CAST(0xD63B0B00 AS Date), 213)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (301, 51, N'00301 0214 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 214)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (302, 51, N'00302 0215 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 215)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (303, 51, N'00303 0216 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 216)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (304, 51, N'00304 0217 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 217)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (305, 51, N'00305 0218 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 218)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (306, 51, N'00306 0219 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 219)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (307, 51, N'00307 0220 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 220)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (308, 51, N'00308 0221 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 221)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (309, 51, N'00309 0222 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 222)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (310, 51, N'00310 0223 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 223)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (311, 51, N'00311 0224 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 224)
INSERT [dbo].[tb_Product] ([Product_id], [production_id], [Product_SerialNumber], [Product_Booking_id], [Manufacturing_Date], [Count_per_year]) VALUES (312, 51, N'00312 0225 51 26 2016', 15, CAST(0xE23B0B00 AS Date), 225)
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
/****** Object:  Table [dbo].[tb_prdt_price]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_prdt_price](
	[pdt_price_id] [int] IDENTITY(1,1) NOT NULL,
	[production_id] [int] NULL,
	[pdt_range_from] [nvarchar](max) NULL,
	[pdt_range_to] [nvarchar](max) NULL,
	[pdt_price] [int] NULL,
 CONSTRAINT [PK_tb_prdt_price] PRIMARY KEY CLUSTERED 
(
	[pdt_price_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_prdt_price] ON
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (20, 71, N'1', N'4', 6570)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (21, 71, N'10', N'19', 5256)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (22, 71, N'20', N'49', 4965)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (23, 71, N'50', N'1000', 4675)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (24, 72, N'1', N'4', 7200)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (25, 72, N'5', N'9', 6467)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (26, 72, N'20', N'49', 5665)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (29, 72, N'50', N'1000', 4800)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (30, 72, N'10', N'19', 6467)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (31, 73, N'1', N'4', 7740)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (32, 73, N'5', N'9', 7067)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (33, 73, N'10', N'19', 7067)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (34, 73, N'20', N'49', 6256)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (35, 73, N'50', N'1000', 5800)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (36, 51, N'1', N'4', 4748)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (37, 51, N'5', N'9', 4165)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (38, 51, N'10', N'19', 3850)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (39, 51, N'20', N'49', 3640)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (40, 51, N'50', N'1000', 3535)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (41, 75, N'1', N'4', 5378)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (42, 75, N'5', N'9', 4865)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (43, 75, N'10', N'19', 4550)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (44, 75, N'20', N'49', 3640)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (45, 75, N'50', N'1000', 3535)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (46, 74, N'5', N'9', 3100)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (47, 74, N'10', N'19', 2900)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (48, 74, N'20', N'49', 2750)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (49, 74, N'50', N'1000', 2500)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (50, 53, N'1', N'1', 5315)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (51, 53, N'2', N'7', 4788)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (52, 53, N'8', N'15', 4620)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (53, 53, N'16', N'19', 4500)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (54, 53, N'20', N'1000', 4390)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (55, 54, N'1', N'1', 3500)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (56, 54, N'2', N'7', 3200)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (57, 54, N'8', N'15', 3000)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (58, 54, N'16', N'19', 2750)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (59, 54, N'20', N'1000', 2500)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (60, 55, N'1', N'4', 2500)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (61, 55, N'5', N'1000', 1800)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (63, 56, N'1', N'1', 14200)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (64, 56, N'2', N'4', 13200)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (65, 56, N'5', N'9', 12400)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (66, 56, N'10', N'19', 12000)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (67, 56, N'20', N'1000', 11900)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (68, 57, N'1', N'1', 4000)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (69, 57, N'2', N'5', 3500)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (70, 57, N'6', N'9', 3050)
INSERT [dbo].[tb_prdt_price] ([pdt_price_id], [production_id], [pdt_range_from], [pdt_range_to], [pdt_price]) VALUES (71, 57, N'10', N'19', 2900)
SET IDENTITY_INSERT [dbo].[tb_prdt_price] OFF
/****** Object:  Table [dbo].[tb_login]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_login](
	[login_id] [int] IDENTITY(5000,1) NOT NULL,
	[login_name] [nvarchar](max) NULL,
	[login_Password] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Admin] PRIMARY KEY CLUSTERED 
(
	[login_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_login] ON
INSERT [dbo].[tb_login] ([login_id], [login_name], [login_Password], [email], [type]) VALUES (5000, N'imi_issac', N'issac', N'sherinsararejeive@gmail.com', N'IMI')
INSERT [dbo].[tb_login] ([login_id], [login_name], [login_Password], [email], [type]) VALUES (5001, N'imi_serish', N'serish', N'serish@gmail.com', N'IMI')
INSERT [dbo].[tb_login] ([login_id], [login_name], [login_Password], [email], [type]) VALUES (5002, N'roche', N'roche', N'roche@gmail.com', N'ROCHE')
SET IDENTITY_INSERT [dbo].[tb_login] OFF
/****** Object:  Table [dbo].[tb_imi_service]    Script Date: 10/16/2016 14:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_imi_service](
	[imi_service_id] [int] IDENTITY(1,1) NOT NULL,
	[serial_no] [int] NULL,
	[problem_descrptn] [nvarchar](max) NULL,
	[Action_summary] [nvarchar](max) NULL,
	[service_bk_date] [date] NULL,
	[Spare_descrptn] [nvarchar](max) NULL,
	[warranty_status] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_imi_service] PRIMARY KEY CLUSTERED 
(
	[imi_service_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
