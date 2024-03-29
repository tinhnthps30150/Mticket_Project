USE [MTICKET]
GO
/****** Object:  Table [dbo].[ChiTietVe]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVe](
	[idChiTietVe] [int] IDENTITY(1,1) NOT NULL,
	[maVe] [varchar](20) NOT NULL,
	[thucAn] [varchar](20) NULL,
	[giaThucAn] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietVe] PRIMARY KEY CLUSTERED 
(
	[idChiTietVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[maLichChieu] [int] IDENTITY(1,1) NOT NULL,
	[maPhim] [varchar](20) NOT NULL,
	[maPhong] [varchar](20) NOT NULL,
	[maSuat] [int] NOT NULL,
	[ngayChieu] [date] NOT NULL,
 CONSTRAINT [PK__LichChie__6ADC2032D41D622A] PRIMARY KEY CLUSTERED 
(
	[maLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiGhe]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiGhe](
	[maLoaiGhe] [varchar](20) NOT NULL,
	[giaTriGiaTang] [float] NOT NULL,
 CONSTRAINT [PK__Ghe__2720CB59EB5CA24F] PRIMARY KEY CLUSTERED 
(
	[maLoaiGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](20) NOT NULL,
	[taiKhoan] [varchar](255) NOT NULL,
	[matKhau] [nvarchar](255) NOT NULL,
	[vaiTro] [bit] NOT NULL,
	[tenNhanVien] [nvarchar](255) NOT NULL,
	[Cccd] [nvarchar](20) NOT NULL,
	[hinhAnh] [varchar](255) NOT NULL,
	[gioiTinh] [bit] NULL,
 CONSTRAINT [PK__NhanVien__BDDEF20DADA8090F] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[maPhim] [varchar](20) NOT NULL,
	[hinhAnh] [varchar](100) NOT NULL,
	[tenPhim] [nvarchar](255) NOT NULL,
	[theLoai] [nvarchar](50) NOT NULL,
	[daoDien] [nvarchar](255) NOT NULL,
	[thoiLuong] [nvarchar](50) NOT NULL,
	[thongTinChiTiet] [nvarchar](max) NULL,
	[ngayCongChieu] [date] NOT NULL,
	[giaPhim] [float] NOT NULL,
	[dienVien] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Phim__9F38F630E0555ED0] PRIMARY KEY CLUSTERED 
(
	[maPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[maPhong] [varchar](20) NOT NULL,
	[tenPhong] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Phong__20BD5E5B8D09619C] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuatChieu]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[maSuat] [int] IDENTITY(1,1) NOT NULL,
	[thoiGian] [varchar](50) NOT NULL,
 CONSTRAINT [PK__SuatChie__D4930BB6C06EDC4F] PRIMARY KEY CLUSTERED 
(
	[maSuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThucAn]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucAn](
	[maThucAn] [varchar](20) NOT NULL,
	[hinhThucAn] [varchar](255) NOT NULL,
	[tenThucAn] [nvarchar](255) NOT NULL,
	[giaThucAn] [float] NOT NULL,
	[moTa] [nvarchar](max) NULL,
 CONSTRAINT [PK__ThucAn__907E5C5BEA12CB7A] PRIMARY KEY CLUSTERED 
(
	[maThucAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[maVe] [varchar](20) NOT NULL,
	[maNhanVien] [varchar](20) NULL,
	[maLichChieu] [int] NULL,
	[maLoaiGhe] [varchar](20) NOT NULL,
	[soGhe] [varchar](50) NOT NULL,
	[giaPhim] [float] NOT NULL,
	[giaLoaiGhe] [float] NOT NULL,
	[ngayDatVe] [date] NOT NULL,
 CONSTRAINT [PK__Ve__7A22727663FC0F7F] PRIMARY KEY CLUSTERED 
(
	[maVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietVe] ON 

INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (6, N'MT034', N'CB001', 199000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (7, N'MT034', N'CB002', 490000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (8, N'MT035', N'CB017', 539000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (9, N'MT040', N'CB025', 87000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (10, N'MT036', N'CB026', 113000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (11, N'MT024', N'CB024', 127000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (13, N'MT025', N'CB016', 379000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (14, N'MT032', N'CB012', 379000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (15, N'MT035', N'CB021', 279000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (16, N'MT035', N'CB026', 113000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (17, N'MT029', N'CB013', 539000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (18, N'MT030', N'CB012', 379000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (20, N'MT041', N'CB005', 333000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (21, N'MT042', N'CB017', 539000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (22, N'MT043', N'CB025', 87000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (23, N'MT044', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (25, N'MT040', N'CB013', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (26, N'MT035', N'CB026', 113000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (27, N'MT023', N'CB019', 199000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (28, N'MT024', N'CB008', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (29, N'MT025', N'CB002', 490000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (30, N'MT026', N'CB013', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (31, N'MT029', N'CB016', 379000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (32, N'MT044', N'CB017', 539000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (33, N'MT042', N'CB010', 379000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (34, N'MT043', N'CB025', 87000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (36, N'MT044', N'CB026', 113000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (37, N'MT045', N'CB006', 195000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (39, N'MT045', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (40, N'MT047', N'CB005', 333000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (41, N'MT048', N'CB014', 239000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (42, N'MT046', N'CB022', 299000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (43, N'MT049', N'CB004', 392000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (44, N'MT050', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (45, N'MT051', N'CB009', 199000, 4)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (46, N'MT052', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (47, N'MT054', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (48, N'MT055', N'CB014', 239000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (49, N'MT056', N'CB008', 490000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (50, N'MT057', N'CB018', 169000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (51, N'MT058', N'CB022', 299000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (53, N'MT055', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (54, N'MT059', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (55, N'MT062', N'CB017', 539000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (56, N'MT042', N'CB010', 379000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (57, N'MT043', N'CB025', 87000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (58, N'MT044', N'CB026', 113000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (59, N'MT045', N'CB006', 195000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (60, N'MT059', N'CB022', 299000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (61, N'MT060', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (62, N'MT061', N'CB009', 199000, 4)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (63, N'MT062', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (64, N'MT063', N'CB022', 299000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (65, N'MT064', N'CB005', 333000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (66, N'MT064', N'CB022', 299000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (67, N'MT067', N'CB025', 87000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (68, N'MT067', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (69, N'MT068', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (70, N'MT075', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (71, N'MT076', N'CB018', 169000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (72, N'MT077', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (73, N'MT078', N'CB022', 299000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (74, N'MT012', N'CB014', 239000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (75, N'MT013', N'CB008', 490000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (76, N'MT017', N'CB017', 539000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (77, N'MT018', N'CB007', 362000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (78, N'MT085', N'CB001', 199000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (79, N'MT086', N'CB017', 539000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (80, N'MT081', N'CB006', 195000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (81, N'MT089', N'CB006', 195000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (82, N'MT089', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (83, N'MT089', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (84, N'MT091', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (85, N'MT091', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (86, N'MT091', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (87, N'MT093', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (88, N'MT093', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (89, N'MT093', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (90, N'MT093', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (91, N'MT095', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (92, N'MT095', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (93, N'MT097', N'CB006', 195000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (94, N'MT097', N'CB003', 225000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (95, N'MT097', N'CB004', 392000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (96, N'MT097', N'CB001', 199000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (97, N'MT097', N'CB002', 490000, 4)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (98, N'MT119', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (99, N'MT119', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (100, N'MT121', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (101, N'MT121', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (102, N'MT121', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (103, N'MT123', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (104, N'MT123', N'CB001', 199000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (105, N'MT125', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (106, N'MT125', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (107, N'MT125', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (108, N'MT127', N'CB005', 333000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (109, N'MT127', N'CB006', 195000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (110, N'MT127', N'CB003', 225000, 1)
GO
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (111, N'MT127', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (112, N'MT129', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (113, N'MT129', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (114, N'MT129', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (115, N'MT129', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (116, N'MT131', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (117, N'MT131', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (118, N'MT131', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (119, N'MT131', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (120, N'MT133', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (121, N'MT133', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (122, N'MT133', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (123, N'MT133', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (124, N'MT135', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (125, N'MT135', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (126, N'MT135', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (127, N'MT135', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (128, N'MT137', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (129, N'MT137', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (130, N'MT137', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (131, N'MT137', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (132, N'MT139', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (133, N'MT139', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (134, N'MT139', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (135, N'MT139', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (136, N'MT141', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (137, N'MT141', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (138, N'MT141', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (139, N'MT141', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (140, N'MT143', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (141, N'MT143', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (142, N'MT143', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (143, N'MT143', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (144, N'MT144', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (145, N'MT144', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (146, N'MT144', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (147, N'MT144', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (148, N'MT146', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (149, N'MT146', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (150, N'MT146', N'CB001', 199000, 3)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (151, N'MT146', N'CB002', 490000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (152, N'MT148', N'CB020', 249000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (153, N'MT148', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (154, N'MT148', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (155, N'MT148', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (156, N'MT150', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (157, N'MT150', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (158, N'MT150', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (159, N'MT150', N'CB002', 490000, 2)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (160, N'MT152', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (161, N'MT152', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (162, N'MT152', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (163, N'MT152', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (164, N'MT155', N'CB007', 362000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (165, N'MT155', N'CB005', 333000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (166, N'MT155', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (167, N'MT155', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (168, N'MT155', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (169, N'MT155', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (170, N'MT158', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (171, N'MT158', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (172, N'MT160', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (173, N'MT160', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (174, N'MT160', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (175, N'MT160', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (176, N'MT162', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (177, N'MT162', N'CB004', 392000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (178, N'MT162', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (179, N'MT162', N'CB002', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (180, N'MT166', N'CB031', 239000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (181, N'MT166', N'CB003', 225000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (182, N'MT166', N'CB001', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (183, N'MT166', N'CB032', 279000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (184, N'MT173', N'CB009', 199000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (185, N'MT173', N'CB007', 362000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (186, N'MT173', N'CB008', 490000, 1)
INSERT [dbo].[ChiTietVe] ([idChiTietVe], [maVe], [thucAn], [giaThucAn], [soLuong]) VALUES (187, N'MT173', N'CB010', 379000, 1)
SET IDENTITY_INSERT [dbo].[ChiTietVe] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieu] ON 

INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (1, N'MV001', N'MP001', 1, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (2, N'MV005', N'MP002', 1, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (3, N'MV002', N'MP003', 1, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (4, N'MV004', N'MP004', 1, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (5, N'MV003', N'MP005', 1, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (6, N'MV003', N'MP006', 1, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (7, N'MV012', N'MP001', 2, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (8, N'MV004', N'MP002', 2, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (9, N'MV005', N'MP003', 2, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (10, N'MV005', N'MP004', 2, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (11, N'MV006', N'MP005', 2, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (12, N'MV006', N'MP006', 2, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (13, N'MV007', N'MP001', 3, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (14, N'MV007', N'MP002', 3, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (15, N'MV001', N'MP003', 3, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (16, N'MV001', N'MP004', 3, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (17, N'MV002', N'MP005', 3, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (18, N'MV002', N'MP006', 3, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (19, N'MV003', N'MP001', 4, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (21, N'MV004', N'MP003', 4, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (22, N'MV004', N'MP004', 4, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (23, N'MV005', N'MP005', 4, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (24, N'MV005', N'MP006', 4, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (25, N'MV006', N'MP001', 5, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (26, N'MV006', N'MP002', 5, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (27, N'MV007', N'MP003', 5, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (28, N'MV007', N'MP004', 5, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (29, N'MV001', N'MP005', 5, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (30, N'MV001', N'MP006', 5, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (31, N'MV002', N'MP001', 6, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (32, N'MV002', N'MP002', 6, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (33, N'MV003', N'MP003', 6, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (34, N'MV003', N'MP004', 6, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (35, N'MV004', N'MP005', 6, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (36, N'MV004', N'MP006', 6, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (37, N'MV001', N'MP001', 2, CAST(N'2023-11-20' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (41, N'MV005', N'MP001', 1, CAST(N'2023-11-18' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (44, N'MV008', N'MP003', 1, CAST(N'2023-11-20' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (45, N'MV003', N'MP002', 4, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (46, N'MV001', N'MP001', 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (47, N'MV002', N'MP001', 2, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (48, N'MV003', N'MP001', 3, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (49, N'MV004', N'MP001', 4, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (50, N'MV005', N'MP001', 5, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (51, N'MV006', N'MP001', 6, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (52, N'MV007', N'MP002', 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (53, N'MV008', N'MP002', 2, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (54, N'MV009', N'MP002', 3, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (55, N'MV010', N'MP002', 4, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (56, N'MV011', N'MP002', 5, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (57, N'MV012', N'MP002', 6, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (58, N'MV013', N'MP003', 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (59, N'MV014', N'MP003', 2, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (60, N'MV015', N'MP003', 3, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (61, N'MV016', N'MP003', 4, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (62, N'MV017', N'MP003', 5, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (70, N'MV016', N'MP004', 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (71, N'MV027', N'MP004', 2, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (72, N'MV028', N'MP004', 3, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (73, N'MV029', N'MP004', 4, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (74, N'MV030', N'MP004', 5, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (75, N'MV035', N'MP004', 6, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (76, N'MV011', N'MP005', 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (77, N'MV009', N'MP005', 2, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (78, N'MV012', N'MP005', 3, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (79, N'MV010', N'MP005', 4, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (80, N'MV013', N'MP005', 5, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (81, N'MV014', N'MP005', 6, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (82, N'MV001', N'MP001', 1, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (83, N'MV002', N'MP001', 2, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (84, N'MV003', N'MP001', 3, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (85, N'MV004', N'MP001', 4, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (86, N'MV005', N'MP001', 5, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (87, N'MV006', N'MP001', 6, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (88, N'MV001', N'MP002', 1, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (89, N'MV002', N'MP002', 2, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (90, N'MV007', N'MP002', 3, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (91, N'MV008', N'MP002', 4, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (92, N'MV009', N'MP002', 5, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (93, N'MV010', N'MP002', 6, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (94, N'MV003', N'MP003', 1, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (95, N'MV004', N'MP003', 2, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (96, N'MV011', N'MP003', 3, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (97, N'MV012', N'MP003', 4, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (98, N'MV013', N'MP003', 5, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (99, N'MV014', N'MP003', 6, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (100, N'MV005', N'MP004', 1, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (101, N'MV006', N'MP004', 2, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (102, N'MV015', N'MP004', 3, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (103, N'MV016', N'MP004', 4, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (104, N'MV017', N'MP004', 5, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (105, N'MV027', N'MP004', 6, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (106, N'MV008', N'MP005', 5, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (107, N'MV009', N'MP005', 6, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (108, N'MV028', N'MP005', 1, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (109, N'MV029', N'MP005', 2, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (110, N'MV030', N'MP005', 3, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (111, N'MV031', N'MP005', 4, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (112, N'MV032', N'MP006', 4, CAST(N'2023-12-08' AS Date))
GO
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (113, N'MV033', N'MP006', 2, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (114, N'MV035', N'MP006', 5, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (115, N'MV034', N'MP006', 1, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (116, N'MV028', N'MP006', 3, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[LichChieu] ([maLichChieu], [maPhim], [maPhong], [maSuat], [ngayChieu]) VALUES (117, N'MV016', N'MP006', 6, CAST(N'2023-12-08' AS Date))
SET IDENTITY_INSERT [dbo].[LichChieu] OFF
GO
INSERT [dbo].[loaiGhe] ([maLoaiGhe], [giaTriGiaTang]) VALUES (N'LG001', 0.5)
INSERT [dbo].[loaiGhe] ([maLoaiGhe], [giaTriGiaTang]) VALUES (N'LG002', 0.75)
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV002', N'tinhnth@gmail.com', N'123', 1, N'Huy Tính', N'123456789', N'staff_1.jpg', 1)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV003', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_3.jpg', 0)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV004', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_4.jpg', 1)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV005', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_5.jpg', 1)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV006', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_6.jpg', 0)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV007', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_7.jpg', 1)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV008', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_8.jpg', 0)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV009', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_9.jpg', 1)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV010', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_10.jpg', 1)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV011', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_11.jpg', 0)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV012', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_12.jpg', 0)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV013', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_13.jpg', 0)
INSERT [dbo].[NhanVien] ([maNhanVien], [taiKhoan], [matKhau], [vaiTro], [tenNhanVien], [Cccd], [hinhAnh], [gioiTinh]) VALUES (N'NV014', N'longnt@gmail.com', N'123', 0, N'Trọng Long', N'123456789', N'staff_14.jpg', 0)
GO
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV001', N'nguoi-vo-cuoi-cung.jpg', N'NGƯỜI VỢ CUỐI CÙNG', N'Tâm Lý, Tình Cảm', N'Victor Vũ', N'2 giờ 12 phút', N'Lấy cảm hứng từ tiểu thuyết Hồ Oán Hận, của nhà văn Hồng Thái, Người Vợ Cuối Cùng là một bộ phim tâm lý cổ trang, lấy bối cảnh Việt Nam vào triều Nguyễn. LINH - Người vợ bất đắc dĩ của một viên quan tri huyện, xuất thân là con của một gia đình nông dân nghèo khó, vì không thể hoàn thành nghĩa vụ sinh con nối dõi nên đã chịu sự chèn ép của những người vợ lớn trong gia đình. Sự gặp gỡ tình cờ của cô và người yêu thời thanh mai trúc mã của mình - NH N đã dẫn đến nhiều câu chuyện bất ngờ xảy ra khiến cuộc sống cô hoàn toàn thay đổi.', CAST(N'2023-11-12' AS Date), 129000, N'Kaity Nguyễn - Thuận Nguyễn - NSƯT Quang Thắng - NSƯT Kim Oanh - Đinh Ngọc Diệp - Anh Dũng - Quốc Huy - Bé Lưu Ly')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV002', N'TAYLOR.jpg', N'NHỮNG KỶ NGUYÊN CỦA TAYLOR SWIFT', N'Phim Tài Liệu', N'Sam Wrench', N'2 giờ 50 phút', N'Hiện tượng văn hóa tiếp tục trên màn ảnh lớn! Đắm chìm trong trải nghiệm xem phim hòa nhạc độc nhất vô nhị với góc nhìn ngoạn mục, đậm chất điện ảnh về chuyến lưu diễn mang tính lịch sử. Khuyến khích khán giả đeo vòng tay tình bạn và mặc trang phục Taylor Swift Eras Tour!', CAST(N'2023-03-11' AS Date), 145000, N'Sam Wrench')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV003', N'5-dem-kinh-hoang.jpg', N'NĂM ĐÊM KINH HOÀNG', N'Kinh Dị - 2D', N'Emma Tammi', N'1 giờ 50 phút', N'Nhân viên bảo vệ Mike bắt đầu làm việc tại Freddy Fazbear''s Pizza. Trong đêm làm việc đầu tiên, anh nhận ra mình sẽ không dễ gì vượt qua được ca đêm ở đây. Chẳng mấy chốc, anh sẽ vén màn sự thật đã xảy ra tại Freddy''s.', CAST(N'2023-10-27' AS Date), 119000, N'Josh Hutcherson, Joseph Poliquin, Christian Stokes, David Lind, Kat Conner, Sterling Mary, Stuart Masterson')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV004', N'am-hon-do-thi.jpg', N'ÂM HỒN ĐÔ THỊ', N'Kinh Dị - 2D', N'Sang-hoon Ahn, Eun-kyung Yoon, Yong-gyun Kim', N'1 giờ 30 phút', N'Âm Hồn Đô Thị bao gồm 5 câu chuyện kinh dị: Ding-dong Challenge: Xoay quanh 3 người bạn Bora, Haeyul và Youngbi. Mỗi người đều có một mong muốn riêng và quyết định tham gia vào một cuộc thi nguy hiểm, chấp nhận thử thách thực hiện những vũ đạo trên một ứng dụng tên Ding-dong để biến ước mơ của mình thành sự thật. Jackpot: Câu chuyện về Jin-ho - anh chàng bất ngờ trúng số độc đắc khi chơi pachinko. Tưởng đây là điều may mắn nhất đời, nhưng Jin-ho bắt đầu trải qua những điều khủng khiếp cùng tài xế bí ẩn kể từ lúc anh bước lên chiếc taxi với một túi đầy tiền. Gold Tooth: Xoay quanh một người chăm sóc tử thi tại nhà tang lễ, vì lòng tham cá nhân nên anh ta đã lén nhổ những chiếc răng vàng để bán trục lợi. Mọi chuyện không thể kéo dài được mãi, bởi các oan hồn dần hiện về và đòi anh trả đủ những chiếc răng vàng của họ. Gluttony: Từ một buổi phát sóng trực tiếp biến thành một cuộc thi mukbang khắc nghiệt, những điều bất thường, kỳ lạ đã liên tiếp xảy ra khiến người xem không thể rời mắt khỏi màn hình. Resident-only Fitness Center: Tại một phòng tập thể dục sang trọng ở khu Gangnam bỗng xảy ra những sự kiện kỳ quái, mà phía sau đó là câu chuyện xúc động về Ji-yeon - cô gái chết oan muốn trả thù kẻ làm nhục mình.', CAST(N'2023-10-27' AS Date), 169000, N'Jang Kwang, Jo Jae Yoon, Kim Tae Hoon, Yoon Da Kyung, Yoon Hyun-Min')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV005', N'wufoo.jpg', N'WOLFOO VÀ HÒN ĐẢO KỲ BÍ (Lồng Tiếng)', N'Hoạt Hình, Phiêu Lưu - 2D', N'Phan Thị Thơ', N'1 giờ 40 phút', N'Wolfoo and The Mysterious Island (Wolfoo và hòn đảo kỳ bí) - câu chuyện xoanh quanh nhân vật chính là chú sói nhỏ Wolfoo 8 tuổi - một chú bé vui vẻ, tốt bụng và yêu thích sự khám phá. Đồng hành cùng Wolfoo chính là cô em gái Lucy 6 tuổi tinh nghịch, hay làm nũng nhưng vô cùng yêu thương anh trai. Câu chuyện bắt đầu khi hai anh em Wolfoo và Lucy bị hút vào một chiếc dây chuyền và đến với Linh Giới - một thế giới vô cùng kỳ diệu. Tại Linh Giới, một sự cố bất ngờ đã khiến hai anh em bị chia tách. Trong hành trình tìm em gái, Wolfoo đã vô tình bị cuốn vào cuộc đấu tranh khốc liệt chống lại binh đoàn quỷ dữ - đứng đầu là Chúa Quỷ Bane - đang cai trị Đảo Thần Bí. Không chỉ là câu chuyện phiêu lưu thuần túy, bộ phim còn mang trong mình những bài học quý giá về sự sáng tạo, sự can đảm và cả tình yêu thương. Tất cả những điều đó đã tạo nên một bộ phim thỏa mãn sự giải trí nhưng cũng đầy tính giáo dục.', CAST(N'2023-10-23' AS Date), 99000, N'Sony Minh Hiếu, Đạt Phi, Như Ý')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV006', N'dat-rung-phuong-nam-2.jpg', N'ĐẤT RỪNG PHƯƠNG NAM', N'Kịch Tính, Tâm Lý - 2D', N'Nguyễn Quang Dũng', N'1 giờ 50 phút', N'Sau bao ngày chờ đợi, dự án điện ảnh gợi ký ức tuổi thơ của nhiều thế hệ người Việt chính thức tung hình ảnh đầu tiên đầy cảm xúc. First look poster khắc họa hình ảnh đối lập: bé An đang ôm chặt mẹ giữa một khung cảnh chạy giặc loạn lạc. Cùng chờ đợi và theo dõi thêm hành trình bé An đi tìm cha khắp nam kỳ lục tỉnh cùng các người bạn đồng hành nhé!', CAST(N'2023-10-20' AS Date), 59000, N'Hồng Ánh, Huỳnh Hạo Khang, Mai Tài Phến, Công Ninh, Hứa Vĩ Văn, Tuyền Mập, Tuấn Trần.')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV007', N'quy-mon-quan.jpg', N'QUỶ MÔN QUAN: GỌI HỒN', N'Kinh Dị - 2D', N'Nate Ki', N'1 giờ 30 phút', N'Từ nhỏ, Hướng Vinh (Giang Diệp Sinh) đã có khả năng nhìn thấy ma quỷ. Bởi vì anh là người sở hữu “đôi mắt âm dương”. Để tránh rắc rối, Hướng Vinh thường vờ như chúng không tồn tại và anh quyết định rời Hong Kong và chuyển tới Canada. Một phần là bởi anh muốn quên đi thời thơ ấu đầy khốn khổ. Một ngày nọ, Hướng Vinh nghe tin người mẹ đang rơi vào hôn mê sau khi tử tự bất thành. Điều này buộc anh phải quay trở về quê nhà Hong Kong. Khi trở lại ngôi nhà cũ, mọi thứ dường như trở nên xa lạ. Nhưng điều đáng sợ nhất là, hàng loạt chuỗi tự sát của hàng xóm cùng sự xuất hiện trở lại của các hồn ma trước mắt Hướng Vinh. Mọi chuyện trở nên tồi tệ ngoài sức tưởng tượng của chàng trai trẻ…', CAST(N'2023-10-27' AS Date), 89000, N'Anson Kong, Bai Ling, Helen Tam Yuk-Ying')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV008', N'OAN-HON-TU-DIA.jpg', N'OÁN HỒN TỪ ĐỊA', N'Kinh Dị - 2D', N'Walongkorn Jubjai', N'1 giờ 28 phút', N'Thanathip tới thăm và qua đêm tại một dinh thự được cho là bị ma ám. Cậu muốn điều tra tại sao lại có một bóng ma theo sau mình. Vào đêm trăng khuyết sẽ là lúc Thanathip có câu trả lời, tuy nhiên, một sự cố xảy ra khiến con ma tức giận và giết hết tất cả.', CAST(N'2023-10-30' AS Date), 79000, N'Sornsutha Klunmalee, Phuang Keawprasert')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV009', N'co-giao-em-la-so-1.jpg', N'CÔ GIÁO EM LÀ SỐ 1', N'Hài - 2D', N'Park Jin-pyo', N'1 giờ 30 phút', N'Si-min (do Shin Hae-sun thủ vai) là một võ sĩ quyền anh đầy triển vọng nhưng đã từ bỏ quyền thi đấu tại kỳ Thế vận hội Olympic để lấy tiền trả nợ cho cha. Từ đó, Si-min cũng nhận ra rằng, cuộc sống vốn không công bằng và “công lý không thể mài ra cơm”. Si-min gạt phăng giấc mơ trở thành võ sĩ quyền anh và quyết tâm trở thành giáo viên, với mong muốn về một cuộc sống ổn định hơn. Cô trở thành giáo viên hợp đồng của một trường trung học có tiếng cùng mục tiêu trở thành giáo viên chính thức ở đây. Để có thể nhanh chóng hoàn thành nguyện vọng, cô đã nỗ lực kìm nén cái tôi xuống đáy, luôn mỉm cười cho qua, bất chấp mọi tình huống trớ trêu xảy đến với mình. Tuy nhiên, Su-gang (do Lee Jun-young thủ vai) - kẻ cầm đầu của một băng đảng quậy phá, chuyên đi bắt nạt và hành hạ người yếu thế đã phá vỡ quy tắc của Si-min. Không thể chịu đựng được những hành vi bạo lực học đường của Su-gang, Si-min đeo lên một chiếc mặt nạ mèo và dạy cho tên côn đồ một bài học đáng nhớ. Nhận thấy quyền lực của mình bị đe dọa, Su-gang điên cuồng tìm kiếm người đeo mặt nạ mèo, Si-min đứng trước nguy cơ bị bại lộ danh tính và phải đối mặt với sự lựa chọn giữa “CÔNG LÝ hay CÔNG VIỆC.”', CAST(N'2023-11-03' AS Date), 119000, N'Shin Hae Sun, Lee Jun Young, Cha Chung-Hwa')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV010', N'trolls.jpg', N'QUỶ LÙN TINH NGHỊCH: ĐỒNG TÂM HIỆP NHẠC', N'Hoạt Hình - 2D', N'Walt Dohrn, Tim Heitz', N'1 giờ 30 phút', N'Sự xuất hiện đột ngột của John Dory, anh trai thất lạc đã lâu của Branch mở ra quá khứ bí mật được che giấu bấy lâu nay của Branch. Đó là quá khứ về một ban nhạc có tên BroZone từng rất nổi tiếng nhưng đã tan rã. Hành trình đi tìm lại các thành viên để làm một ban nhạc như xưa trở thành chuyến phiêu lưu âm nhạc đầy cảm xúc, tràn trề hi vọng về một cuộc sum họp gia đình tuyệt với nhất.', CAST(N'2023-11-13' AS Date), 156000, N'Walt Dohrn, Tim Heitz')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV011', N'chiem-doat.jpg', N'CHIẾM ĐOẠT', N'Kịch Tính, Tâm Lý - 2D', N'Thắng Vũ', N'1 giờ 30 phút', N'Kể về người vợ của một gia đình thượng lưu thuê cô bảo mẫu “trong mơ” để chăm sóc con trai mình. Nhưng cô không ngờ rằng, phía sau sự trong sáng, tinh khiết kia, cô bảo mẫu luôn che giấu âm mưu nhằm phá hoại hạnh phúc gia đình và khiến cuộc sống của cô thay đổi mãi mãi.', CAST(N'2023-11-14' AS Date), 145000, N'Miu Lê, Lãnh Thanh, Karik, Phương Anh Đào,...')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV012', N'WISH.jpg', N'ĐIỀU ƯỚC', N'Hoạt Hình, Phiêu Lưu - 2D', N'Chris Buck (Frozen & Frozen 2), Fawn Veerasunthorn', N'1 giờ 30 phút', N'“Wish” là bộ phim hoạt hình kỷ niệm 100 năm thành lập của Walt Disney Studios (sự kiện toàn cầu D100). \"Điều Ước\" lấy bối cảnh tại một vương quốc diệu kỳ tên Rosas. Ở đây, Asha - một cô gái thông minh và mơ mộng đã ước một điều ước quá sức mạnh mẽ, đến nỗi một thế lực ngoài vũ trụ với sức mạnh vô hạn tên Star đã đáp lại cô. Asha và Star cùng nhau đối mặt với người cầm quyền của Rosas - quốc vương Magnifico, để cứu lấy mọi người và chứng minh rằng ý chí gan dạ của con người kết hợp với phép màu của những vì sao sẽ giúp những điều kỳ diệu xảy ra.', CAST(N'2023-11-07' AS Date), 115000, N'Ariana DeBose, Chris Pine, Alan Tudyk,....')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV013', N'nhavitdicu.png', N'NHÀ VỊT DI CƯ', N'Hoạt Hình, Phiêu Lưu', N'Benjamin Renner', N'1 giờ 30 phút', N'Nhà Vịt Di Cư là chuyến phiêu lưu đầy thú vị và nhiều sắc màu của đàn vịt trời. Cùng theo chân một gia đình vịt trời gồm vịt bố, vịt mẹ, cậu con trai tuổi teen Dax và vịt út Gwen, trong lần đầu tiên trải nghiệm chuyến di cư tiến về phía nam để trú đông. Với khung cảnh rực rỡ sắc trời thu tại một chiếc ao ở New England – địa bàn hoạt động từ lâu của gia đình vịt. Cái ao bình thường vốn vắng vẻ nhưng nay lại đông đúc lạ thường bởi sự “ghé thăm” của một đàn vịt trời từ nơi khác bay tới. Đàn vịt lạ hạ cánh nghỉ chân và mang đến những câu chuyện ly kỳ về nơi xa xôi ngoài kia. Lần gặp gỡ này đã khơi lên khao khát muốn đưa các con đi khám phá thế giới rộng lớn của vịt mẹ, trong khi vịt bố lại bằng lòng với việ loanh quanh ở chiếc ao nhỏ này, để giữ cho gia đình được an toàn. Nhưng gác lại nỗi sợ, vịt bố đã bị thuyết phục và chấp cùng gia đình “di cư”. Thế nhưng, niềm vui vẻ sự háo hức kéo dài không bao lâu, gia đình vịt nhận ra, họ đang bay ngược chiều với tất cả các đàn vịt khác. Không kịp quay đầu, họ bất ngờ gặp phải loạt “chướng ngại vật” là những tòa nhà cao tầng của thành phố hiện đại. Liên tiếp sau đó là những thước phim đầy kịch tính nhưng vô cùng hài hước của nhà vịt trong quá trình khám phá đô thị mới. Từ dạo quanh sân vườn cho đến chơi cầu trượt tại công viên nước, hay trải nghiệm cả tình huống nguy hiểm “cá lớn nuốt vịt bé”. Nhận ra sự thật rằng nhà vịt đã lạc lối quá xa, liệu gia đình vịt có thể cùng nhau tìm được đường tới vùng nhiệt đới Jamaica như ý định ban đầu?', CAST(N'2023-12-29' AS Date), 110000, N'Kumail Nanjiani, Elizabeth Banks, Caspar Jennings, Tresi Gazal, Awkwafina,…')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV014', N'aquaman2.jpg', N'AQUAMAN VÀ VƯƠNG QUỐC THẤT LẠC', N'Siêu Anh Hùng - 2D', N'James Wan', N'1 giờ 30 phút', N'Đạo diễn James Wan và Jason Momoa trong vai Aquaman—cùng với Patrick Wilson, Amber Heard, Yahya Abdul-Mateen II và Nicole Kidman sẽ trở lại trong phần tiếp theo của bộ phim DC có doanh thu cao nhất mọi thời đại “Aquaman Và Vương Quốc Thất Lạc (tựa gốc: Aquaman and the Lost Kingdom)”.', CAST(N'2023-12-22' AS Date), 150000, N'Jason Momoa, Ben Affleck, Patrick Wilson,...')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV015', N'yeu-lai-vo-ngau.jpg', N'YÊU LẠI VỢ NGẦU (T16)', N'Hài, Tình Cảm - 2D', N'Nam Dea Jung', N' 2 giờ 0 phút', N'Cặp vợ chồng trẻ No Jung Yeol (Kang Ha-neul) và Hong Na Ra (Jung So-min) từ cuộc sống hôn nhân màu hồng dần “hiện nguyên hình” trở thành cái gai trong mắt đối phương với vô vàn thói hư, tật xấu. Không thể đi đến tiếng nói chung, Jung Yeol và Na Ra quyết định ra toà ly dị. Tuy nhiên, họ phải chờ 30 ngày cho đến khi mọi thủ tục chính thức được hoàn tất. Trong khoảng thời gian này, một vụ tai nạn xảy ra khiến cả hai mất đi ký ức và không nhớ người kia là ai. 30 ngày chờ đợi để được “đường ai nấy đi” nhưng nhiều tình huống trớ trêu khiến cả hai bắt đầu nảy sinh tình cảm trở lại. Liệu khi nhớ ra mọi thứ, họ vẫn sẽ ký tên vào tờ giấy ly hôn?', CAST(N'2023-11-10' AS Date), 80000, N'Kang Ha-neul, Jung So-min')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV016', N'dau-truong-sinh-tu.jpg', N'ĐẤU TRƯỜNG SINH TỬ: KHÚC HÁT CỦA CHIM CA VÀ RẮN ĐỘC (T16)', N'Hành Động, Phiêu Lưu - 2D', N'Francis Lawrence', N'2 giờ 37 phút', N'Đấu Trường Sinh Tử: Khúc Hát Của Chim Ca Và Rắn Độc là phần tiền truyện của mạch truyện chính, lấy bối cảnh 64 năm trước phần phim đầu tiên. Mạch phim theo chân Coriolanus Snow trẻ tuổi, chính là vị Tổng thống Snow trong loạt phim sau này. Lúc này Coriolanus là niềm hy vọng cuối cùng cho dòng dõi Snow đang dần lụi tàn. Được chỉ định trở thành cố vấn cho trò chơi, vai trò của anh là trợ giúp vật tế trong đấu trường và anh sẽ là cố vấn của Lucy Gray Baird - một cô gái đặc biệt đến từ Quận 12.', CAST(N'2023-11-17' AS Date), 150000, N' Rachel Zegler, Hunter Schafer, Tom Blyth, Jason Schwartzman…')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV017', N'the-marvels.jpg', N'THE MARVELS (T13)', N'Siêu Anh Hùng - 2D', N'Nia DaCosta', N'1 giờ 44 phút', N'Phần tiếp theo của Captain Marvel (2019)', CAST(N'2023-11-10' AS Date), 79000, N'Brie Larson, Samuel L. Jackson, Zawe Ashton')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV027', N'tuoi-moi-tap-iu.jpg', N'TUỔI MỚI TẬP IU', N'Hài - 2D', N'NARUEBORDEE WECHAKU', N'1 giờ 54 phút', N'Gặp lại mối tình đầu sau nhiều năm, bộ đôi hoàn cảnh Gib - Tor vô tình trở thành "bảo mẫu" cho đám nhóc 14 tuổi. Như được hồi xuân, cặp gà bông Gib - Tor nhớ về năm tháng tuổi 14 cùng nhau, và một lần nữa, họ được đắm chìm trong những "gia vị" ngọt ngào nhất của tuổi mới lớn.', CAST(N'2023-12-01' AS Date), 109000, N'Nuttanicha Dungwattanawanich; Nat Kitcharit; Pupa Inthanon Seangsiripaisarn; Fairy Kirana Pipityakorn; Monet Parita Rirermkul;...')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV028', N'ban-khong-than.jpg', N'BẠN KHÔNG THÂN (T13)', N'Hài - 2D', N'Atta Hemwadee', N'2 giờ 8 phút', N'Bắt đầu với niềm đam mê làm phim bất diệt cùng những ý tưởng lớn, nhóm học sinh trung học của “Bạn Không Thân” chính là hội bạn trong “hoạn nạn” lại cần tới nhau tại một cuộc thi làm phim ngắn dựa trên câu chuyện về cuộc đời của người bạn cùng lớp mà họ yêu quý. Bằng vốn hiểu biết có giới hạn về người bạn quá cố, cả nhóm với sự nỗ lực 200% đã dần khám phá ra những bí mật ẩn giấu gây bất ngờ tới mức có thể thay đổi quan điểm về niềm đam mê của hội thanh thiếu niên này mãi mãi.', CAST(N'2023-12-01' AS Date), 99000, N'Anthony Buisseret, Pisitpol Ekaphongpisit, Thitiya Jirapornsilp')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV029', N'am-hon-siam.jpg', N'ÂM HỒN SIAM (T18)', N'Kinh Dị - 2D', N'Jetniphut Sa-Shing', N'1 giờ 30 phút', N'Bộ phim kể về mối tình tay ba của hai người bạn thân cùng phải lòng một chàng trai, nhưng cuối cùng chuyện tình này lại động chạm đến ma thuật hắc ám. Điều này đã dẫn đến một thảm kịch khi cuộc trả thù kinh hoàng kéo dài và liên lụy đến đời sau.', CAST(N'2023-12-01' AS Date), 79000, N'Ying Ariya Buakong, Lura Chansri, Chutiya Jiarakul')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV030', N'cau-hon.jpg', N'CẦU HỒN (T16)', N'Kinh Dị - 2D', N'Lester Hsi', N'1 giờ 41 phút', N'Cầu Hồn bắt đầu trong bối cảnh kỳ lạ của những câu chuyện siêu nhiên được lưu hành trong trường. Các địa điểm chính của trường bao gồm thư viện, phòng tập nhảy và thang máy đều toát lên sự kinh dị về những điềm báo đen tối sẽ diễn ra. Điểm đặc biệt của phim là cách lồng ghép khéo léo 3 nghi thức tâm linh vào 1 trò chơi thực tế ảo: Trò chơi 4 góc; Trò chơi trốn tìm 1 người; và Trò chơi thang máy. Bộ phim là sự trỗi dậy của TRUYỀN THUYẾT KINH HOÀNG CÂY CẦU MA NỮ TẠI ĐÀI LOAN.', CAST(N'2023-11-24' AS Date), 89000, N'Ning Chang, J.C Lin, Summer Meng')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV031', N'ke-an-hon.jpg', N'KẺ ĂN HỒN', N'Kinh Dị - 2D', N'Trần Hữu Tấn', N'1 giờ 30 phút', N'Phim về hàng loạt cái chết bí ẩn ở Làng Địa Ngục, nơi có ma thuật cổ xưa: 5 mạng đổi bình Rượu Sọ Người. Thập Nương - cô gái áo đỏ là kẻ nắm giữ bí thuật luyện nên loại rượu mạnh nhất!', CAST(N'2023-12-08' AS Date), 149000, N'Hoàng Hà, Võ Điền Gia Huy, Huỳnh Thanh Trực, NSƯT Chiều Xuân, Nghệ sĩ Viết Liên, NSND Ngọc Thư, Nguyễn Hữu Tiến, Nguyễn Phước Lộc, Nghinh Lộc, Lý Hồng Ân, Vũ Đức Ngọc…')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV032', N'thieu-nien.jpg', N'THIẾU NIÊN VÀ CHIM DIỆC', N'Hoạt Hình - 2D', N'Miyazaki Hayao', N'1 giờ 30 phút', N'Đến từ Studio Ghibli và đạo diễn Miyazaki Hayao, bộ phim là câu chuyện về hành trình kỳ diệu của cậu thiếu niên Mahito trong một thế giới hoàn toàn mới lạ. Trải qua nỗi đau mất mẹ cùng mối quan hệ chẳng mấy vui vẻ với gia đình cũng như bạn học, Mahito dần cô lập bản thân... cho đến khi cậu gặp một chú chim diệc biết nói kỳ lạ. Mahito cùng chim diệc bước vào một tòa tháp bí ẩn, nơi một thế giới thần kỳ mở ra, đưa cậu gặp gỡ những người mình yêu thương... trong một nhân dạng hoàn toàn khác.', CAST(N'2023-12-15' AS Date), 109000, N'Santoki Soma, Suda Masaki, Shibasaki Ko, Aimyon, Kimura Yoshino, Kimura Takuya, Kobayashi Karou')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV033', N'quy-cau.jpg', N'QUỶ CẨU', N'Kinh Dị - 2D', N'Lưu Thành Luân', N'1 giờ 30 phút', N'Nam về quê để lo đám tang cho bố sau cái chết kinh hoàng của ông, trong khi phải che giấu bạn gái đang mang thai. Nam mơ thấy gia đình bị giết sau khi mai táng bố, và Mít – con chó trắng của gia đình có biểu hiện kì lạ. Ông Quyết, bà Thúy, và bà Liễu thì tin vào thầy cúng, còn Nam nghi ngờ về lò mổ chó truyền thống của gia đình và phải điều tra để giải quyết sự kiện kỳ lạ đang diễn ra.', CAST(N'2023-12-29' AS Date), 69000, N'Quang Tuấn, NSND Kim Xuân, Vân Dung, Quốc Quân, Nam Thư, Mie….')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV034', N'ng-mat-troi.jpg', N'NGƯỜI MẶT TRỜI (T18)', N'Kinh Dị - 2D', N'Timothy Linh Bui', N'2 giờ 0 phút', N'400 năm qua, loài Ma Cà Rồng đã bí mật sống giữa loài người trong hòa bình, nhưng hiểm họa bỗng ập đến khi một cô gái loài người phát hiện được thân phận của hai anh em Ma Cà Rồng. Người anh khát máu quyết săn lùng cô để bảo vệ bí mật giống loài, trong khi người còn lại chạy đua với thời gian để bảo vệ cô bằng mọi giá.', CAST(N'2023-12-08' AS Date), 99000, N'Chi Pu, Thuận Nguyễn, Trần Ngọc Vàng, Trịnh Thảo')
INSERT [dbo].[Phim] ([maPhim], [hinhAnh], [tenPhim], [theLoai], [daoDien], [thoiLuong], [thongTinChiTiet], [ngayCongChieu], [giaPhim], [dienVien]) VALUES (N'MV035', N'wonka.jpg', N'WONKA - Lồng Tiếng (K)', N'Phiêu Lưu - 2D', N'Paul King', N'1 giờ 56 phút', N'Dựa trên nhân vật từ quyến sách gối đầu giường của các em nhỏ trên toàn thế giới "Charlie và Nhà Máy Sôcôla" và phiên bản phim điện ảnh cùng tên vào năm 2005, WONKA kể câu chuyện kỳ diệu về hành trình của nhà phát minh, ảo thuật gia và nhà sản xuất sôcôla vĩ đại nhất thế giới trở thành WILLY WONKA đáng yêu mà chúng ta biết ngày nay. Từ đạo diễn loạt phim Paddington và nhà sản xuất loạt phim chuyển thể đình đám Harry Potter, WONKA hứa hẹn sẽ là một bộ phim đầy vui nhộn và màu sắc cho khán giả dịp Lễ Giáng Sinh năm nay.', CAST(N'2023-12-08' AS Date), 119000, N'Timothée Chalamet, Hugh Grant, Rowan Atkinson, Matt Lucas, Mathew Baynton.')
GO
INSERT [dbo].[Phong] ([maPhong], [tenPhong]) VALUES (N'MP001', N'A')
INSERT [dbo].[Phong] ([maPhong], [tenPhong]) VALUES (N'MP002', N'B')
INSERT [dbo].[Phong] ([maPhong], [tenPhong]) VALUES (N'MP003', N'C')
INSERT [dbo].[Phong] ([maPhong], [tenPhong]) VALUES (N'MP004', N'D')
INSERT [dbo].[Phong] ([maPhong], [tenPhong]) VALUES (N'MP005', N'E')
INSERT [dbo].[Phong] ([maPhong], [tenPhong]) VALUES (N'MP006', N'F')
GO
SET IDENTITY_INSERT [dbo].[SuatChieu] ON 

INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (1, N'(6h - 9h)')
INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (2, N'(9h - 12h)')
INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (3, N'(12h - 15h)')
INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (4, N'(15h - 18h)')
INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (5, N'(18h -  21h)')
INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (6, N'(21h - 24h)')
INSERT [dbo].[SuatChieu] ([maSuat], [thoiGian]) VALUES (8, N'(24h - 26h)')
SET IDENTITY_INSERT [dbo].[SuatChieu] OFF
GO
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB001', N'PEANUTSSINGLECOMBO2023.png', N'PEANUTS SINGLE COMBO 2023', 199000, N'1 ly nhân vật Peanuts (kèm nước).
* Nhận ngay trong ngày xong phim.
** Thêm 39k nhận ngay 1 bắp ngọt lớn.
*** Mẫu ly phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB002', N'JUNGLEBROWNCOUPLECOMBO.png', N'JUNGLE BROWN COUPLE COMBO', 490000, N'2 bình Jungle Brown + 2 nước siêu lớn + 1 bắp ngọt lớn
* Nhận trong ngày xem phim.
** Mẫu ly phụ thuộc vào số lượng hàng tại rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB003', N'KAKAOFRIENDMYCOMBO.png', N'KAKAO FRIEND MY COMBO', 225000, N'1 ly Kakao Friend (kèm nước) + 1 bắp lớn tùy chọn vị
* Nhận trong ngày xem phim.
** Mẫu ly phụ thuộc vào số lượng hàng tại rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB004', N'KAKAOFRIENDCOUPLECOMBO.png', N'KAKAO FRIEND COUPLE COMBO', 392000, N'2 ly Kakao Friend (kèm nước) + 1 bắp lớn tùy chọn vị
* Nhận trong ngày xem phim.
** Mẫu bình phụ thuộc vào số lượng hàng tại rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB005', N'TRANSFORMERS7LEDBUCKETCOMBO.png', N'TRANSFORMERS 7 LED BUCKET COMBO', 333000, N'1 hộp bắp Transformers (kèm bắp) + 1 nước siêu lớn.
* Miễn phí đổi vị bắp Phô mai, Caramel.
** Mix từ 2 vị trờ lên chỉ với 19K.
*** Nhận trong ngày xem phim.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB006', N'BABYSHARKSINGLECOMBO.png', N'BABY SHARK SINGLE COMBO', 195000, N'1 ly Baby Shark + 1 nước siêu lớn.
* Mua thêm một bắp ngọt lớn chỉ 29k.
** Nhận trong ngày xem phim.
*** Mẫu ly phụ thuộc vào số lượng từng rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB007', N'BABYSHARKCOUPLECOMBO.png', N'BABY SHARK COUPLE COMBO', 362000, N'2 ly Baby Shark + 2 nước siêu lớn
.
* Mua thêm một bắp ngọt lớn chỉ 29k.
** Nhận trong ngày xem phim.
*** Mẫu ly phụ thuộc vào số lượng từng rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB008', N'BABYSHARKFAMILYCOMBO.png', N'BABY SHARK FAMILY COMBO', 490000, N'3 ly Baby Shark + 3 nước siêu lớn.
* Mua thêm một bắp ngọt lớn chỉ 29k.
** Nhận trong ngày xem phim.
*** Mẫu ly phụ thuộc vào số lượng từng rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB009', N'BLUEBEETLESCARABWINGCOMBO.png', N'BLUE BEETLE SCARAB WING COMBO', 199000, N'1 ly Blue Beetle nắp cánh + 1 nước ngọt siêu lớn + 1 bắp lớn.
* Nhận trong ngày xem phim.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB010', N'BLUEBEETLESETCOMBO.png', N'BLUE BEETLE SET COMBO', 379000, N'2 mẫu ly Blue Beetle + 1 bắp ngọt lớn+ 2 nước ngọt siêu lớn.
* Nhận trong ngày xem phim.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB011', N'BLUEBEETLEDOMELIDCOMBO.png', N'BLUE BEETLE DOME LID COMBO', 199000, N'1 ly Blue Beetle nắp cầu + 1 nước ngọt siêu lớn + 1 bắp lớn.
* Nhận trong ngày xem phim.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB012', N'PEANUTSCOUPLECOMBO2023.png', N'PEANUTS COUPLE COMBO 2023', 379000, N'2 ly nhân vật Peanuts (kèm nước).
* Nhận ngay trong ngày xem phim.
** Thêm 39k nhận ngay 1 bắp ngọt.
*** Mẫu ly phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB013', N'PEANUTSTRIPPLECOMBO2023.png', N'PEANUTS TRIPPLE COMBO 2023', 539000, N'3 ly nhân vật Peanuts (kèm nước) + 1 bắp hai vị.
* Nhận ngay trong ngày xem phim.
** Mẫu ly phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB014', N'WOLFOOPLUSHCOMBO.png', N'WOLFOO PLUSH COMBO', 239000, N'1 gấu bông Wolfoo/Lucy + 1 nước siêu lớn + 1 bắp ngọt lớn.
* Bắp nước nhận trong ngày xem phim.
** Mẫu gấu bông phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB015', N'GARFIELDSINGLECOMBO2023.png', N'GARFIELD SINGLE COMBO 2023', 199000, N'1 ly nhân vật Garfield (kèm nước).
* Nhận ngay trong ngày xong phim.
** Thêm 39k nhận ngay 1 bắp ngọt lớn.
*** Mẫu ly phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB016', N'GARFIELDDOUBLECOMBO2023.png', N'GARFIELD DOUBLE COMBO 2023', 379000, N'2 ly nhân vật Garfield (kèm nước).
* Nhận ngay trong ngày xem phim.
** Thêm 39k nhận ngay 1 bắp ngọt.
*** Mẫu ly phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB017', N'GARFIELDTRIPPLECOMBO2023.png', N'GARFIELD TRIPPLE COMBO 2023', 539000, N'3 ly nhân vật Garfield (kèm nước) + 1 bắp hai vị.
* Nhận ngay trong ngày xem phim.
** Mẫu ly phụ thuộc vào số lượng của rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB018', N'HUNGERGAMESMYCOMBO.png', N'HUNGER GAMES MY COMBO', 169000, N'1 ly Hunger Games (kèm nước) + 1 bắp ngọt lớn.
* Nhận trong ngày xem phim.
** Đổi vị caramel và phô mai miễn phí.
*** Thêm 19k nhận ngay 1 nước ngọt siêu lớn.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB019', N'TROLLS3BUCKETCOMBO.png', N'TROLLS 3 BUCKET COMBO', 199000, N'1 Trolls 3 Popcorn Bucket (với bỏng ngô) + 1 Jumbo Coke.
* Miễn phí nâng cấp hương vị cho phô mai, caramel.
** Nâng cấp lên 2 hương chỉ với 19k.
*** Đổi vào ngày hiển thị
.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB020', N'TRIDENTMYCOMBO.png', N'TRIDENT MY COMBO', 249000, N'1 ly Aquaman Trident + 1 nước ngọt siêu lớn + 1 bắp lớn tùy chọn vị.
* Nhận trong ngày xem phim.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB021', N'SJORAMDCOMBO.png', N'SJORA MD COMBO', 279000, N'2 ly nước xoài đào 24oz + 1 ly nhân vật bắt kì + 1 bắp ngọt lớn.
* Nhận trong ngày xem phim.
** Mẫu ly nhân vật phụ thuộc vào số lượng tại rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB022', N'FAMILYSJORACOMBO.png', N'FAMILY SJORA COMBO', 299000, N'4 ly nước xoài đào 24oz + 02 bắp hai vị.
* Nhận trong ngày xem phim.
** Mẫu ly nhân vật phụ thuộc vào số lượng tại rạp.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB023', N'PREMIUMMYCOMBO2023.png', N'PREMIUM MY COMBO 2023', 107000, N'1 bắp Lớn + 1 Nước Siêu Lớn + 1 Snack (tùy chọn: thanh ngũ cốc, cơm cháy hoặc bánh que).
* Nhận trong ngày xem phim.
** Miễn phí đổi vị bắp Caramel.
*** Đổi vị phô mai phụ thu thêm tiền.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB024', N'PREMIUMCGVCOMBO2023.png', N'PREMIUM CGV COMBO 2023', 127000, N'1 bắp Lớn + 2 Nước Siêu Lớn + 1 Snack (tùy chọn snack: thanh ngũ cốc, cơm cháy hoặc bánh que).
* Nhận trong ngày xem phim.
** Miễn phí đổi vị bắp Caramel.
*** Đổi vị phô mai phụ thu thêm tiền.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB025', N'MYCOMBO.png', N'MY COMBO', 87000, N'1 bắp lớn + 1 nước siêu lớn. Nhận trong ngày xem phim.
* Miễn phí đổi vị bắp Caramel.
** Đổi vị phô mai phụ thu thêm tiền.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB026', N'CGVCOMBO.png', N'CGV COMBO', 113000, N'1 bắp Lớn + 2 Nước Siêu Lớn. Nhận trong ngày xem phim.
* Miễn phí đổi vị bắp Caramel.
** Đổi vị phô mai phụ thu thêm tiền.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB027', N'SPECIALDRINKFAMILYCOMBO.png', N'SPECIAL DRINK FAMILY COMBO', 239000, N'04 nước giải khát 16oz (xoài Sjora, đào / đường nâu, trà sữa/ vải thiều, trà hoa nhài / Milo) + 02 bắp rang bơ ngọt.
* Đổi vào ngày hiển thị.
** Nâng cấp dirnk lớn chỉ với 5k.
*** Thiết kế phụ thuộc vào tính khả dụng của trang web.
**** Số lượng quà tặng có hạn.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB028', N'SPECIALDRINKMDCOMBO.png', N'SPECIAL DRINK MD COMBO', 219000, N'01 cốc xem phim + 02 nước giải khát 16oz (xoài sjora, đào/đường nâu, trà sữa/vải thiều, trà nhài) + 01 bỏng ngô ngọt.
* Đổi vào ngày hiển thị.
** Thiết kế phụ thuộc vào tính khả dụng của trang web.
*** Số lượng quà tặng có hạn.
**** Không áp dụng cho hàng hóa mới phát hành.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB029', N'WONKACOMBO.png', N'WONKA COMBO', 179000, N'1 cốc Wonka (có đồ uống) + 1 bỏng ngô ngọt.
* Đổi vào ngày hiển thị.
** Miễn phí thay đổi hương vị bỏng ngô.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB030', N'MILOCOMBO2023.png', N'MILO COMBO 2023', 99000, N'1 cốc Milo 22oz 1 bỏng ngô lớn + 1 đồ uống jumbo.
* Đổi vào ngày hiển thị.
** Miễn phí nâng cấp hương vị cho Caramel.
*** Phụ thu khi nâng hạng bỏng ngô phô mai.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB031', N'MINIHAIBARAPLUSHCOMBO.png', N'MINI HAIBARA PLUSH COMBO', 239000, N'1 thú bông Haibara size S + 2 nước siêu lớn + 1 bắp ngọt lớn.
* Thêm 35,000 nhận ngay ấn phẩm truyện đặc biệt (áp dụng khu vực HN và HCM).
** Bắp nước nhận ngay trong ngày đã mua.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB032', N'HAIBARAPLUSHCOMBO.png', N'HAIBARA PLUSH COMBO', 279000, N'1 thú bông Haibara size M + 2 nước siêu lớn + 1 bắp ngọt lớn.
* Thêm 35,000 nhận ngay ấn phẩm truyện đặc biệt (áp dụng khu vực HN và HCM).
** Bắp nước nhận ngay trong ngày đã mua.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB033', N'MISSIONIMPOSSIBLECOMBO2023.png', N'MISSION IMPOSSIBLE COMBO 2023', 299000, N'1 bình Mission Impossible + 1 nước ngọt siêu lớn + 1 bắp ngọt lớn
*Nhận trong ngày xem phim.
**Mẫu bình có thể đo được nhiệt độ nước.')
INSERT [dbo].[ThucAn] ([maThucAn], [hinhThucAn], [tenThucAn], [giaThucAn], [moTa]) VALUES (N'CB034', N'TOPOKKIFRIEDCOMBO.png', N'TOPOKKI FRIED COMBO', 68000, N'1 phần bánh gạo chiên phô mai + 1 nước lớn.
*Nhận trong ngày xem phim.')
GO
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT001', N'NV004', 1, N'LG001', N'A1', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT002', N'NV004', 1, N'LG001', N'A2', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT003', N'NV004', 1, N'LG001', N'B3', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT004', N'NV004', 1, N'LG001', N'C5', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT005', N'NV004', 1, N'LG001', N'D5', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT006', N'NV004', 1, N'LG001', N'F8', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT007', N'NV004', 1, N'LG001', N'E3', 129000, 284000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT008', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT009', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT010', N'NV004', 17, N'LG001', N'D6', 145000, 174000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT011', N'NV004', 17, N'LG001', N'C8', 145000, 174000, CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT012', N'NV004', 1, N'LG001', N'A2', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT013', N'NV004', 1, N'LG001', N'B3', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT014', N'NV004', 1, N'LG001', N'C5', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT015', N'NV004', 1, N'LG001', N'D5', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT016', N'NV004', 1, N'LG001', N'F8', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT017', N'NV004', 1, N'LG001', N'E3', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT018', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT019', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT020', N'NV004', 17, N'LG001', N'D6', 145000, 174000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT021', N'NV004', 17, N'LG001', N'C8', 145000, 174000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT022', N'NV004', 1, N'LG001', N'A1', 129000, 284000, CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT023', N'NV004', 1, N'LG001', N'A1', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT024', N'NV004', 1, N'LG001', N'A2', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT025', N'NV004', 1, N'LG001', N'B3', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT026', N'NV004', 1, N'LG001', N'C5', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT027', N'NV004', 1, N'LG001', N'D5', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT028', N'NV004', 1, N'LG001', N'F8', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT029', N'NV004', 1, N'LG001', N'E3', 129000, 284000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT030', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT031', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT032', N'NV004', 17, N'LG001', N'D6', 145000, 174000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT033', N'NV004', 17, N'LG001', N'C8', 145000, 174000, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT034', N'NV004', 8, N'LG001', N'A1', 129000, 284000, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT035', N'NV004', 8, N'LG001', N'A2', 129000, 284000, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT036', N'NV004', 8, N'LG001', N'B3', 129000, 284000, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT037', N'NV004', 3, N'LG001', N'C5', 129000, 284000, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT038', N'NV004', 3, N'LG001', N'D5', 129000, 284000, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT040', N'NV004', 1, N'LG001', N'F8', 129000, 284000, CAST(N'2023-01-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT041', N'NV004', 1, N'LG001', N'A1', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT042', N'NV004', 1, N'LG001', N'A2', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT043', N'NV004', 1, N'LG001', N'B3', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT044', N'NV004', 1, N'LG001', N'C5', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT045', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT046', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT047', N'NV004', 17, N'LG001', N'D6', 145000, 174000, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT048', N'NV004', 17, N'LG001', N'C8', 145000, 174000, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT049', N'NV004', 1, N'LG001', N'D5', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT050', N'NV004', 1, N'LG001', N'F8', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT051', N'NV004', 1, N'LG001', N'E3', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT052', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT053', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT054', N'NV004', 9, N'LG001', N'D5', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT055', N'NV004', 9, N'LG001', N'F8', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT056', N'NV004', 9, N'LG001', N'E3', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT057', N'NV004', 9, N'LG001', N'F10', 119000, 142800, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT058', N'NV004', 9, N'LG001', N'D9', 119000, 142800, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT059', N'NV004', 1, N'LG001', N'A1', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT060', N'NV004', 1, N'LG001', N'A2', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT061', N'NV004', 1, N'LG001', N'B3', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT062', N'NV004', 10, N'LG001', N'C5', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT063', N'NV004', 10, N'LG001', N'D5', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT064', N'NV004', 10, N'LG001', N'F8', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT065', N'NV004', 14, N'LG001', N'E3', 129000, 284000, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT067', N'NV004', 1, N'LG001', N'F8', 129000, 284000, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT068', N'NV004', 1, N'LG001', N'E3', 129000, 284000, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT069', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT070', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT071', N'NV004', 17, N'LG001', N'D6', 145000, 174000, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT072', N'NV004', 17, N'LG001', N'C8', 145000, 174000, CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT073', N'NV004', 13, N'LG001', N'A1', 129000, 284000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT074', N'NV004', 13, N'LG001', N'A2', 129000, 284000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT075', N'NV004', 13, N'LG001', N'B3', 129000, 284000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT076', N'NV004', 5, N'LG001', N'F10', 119000, 142800, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT077', N'NV004', 5, N'LG001', N'D9', 119000, 142800, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT078', N'NV004', 17, N'LG001', N'D6', 145000, 174000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT079', N'NV004', 17, N'LG001', N'C8', 145000, 174000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT080', N'NV004', 28, N'LG001', N'F7', 89000, 44500, CAST(N'2023-11-20' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT081', N'NV004', 28, N'LG001', N'F8', 89000, 44500, CAST(N'2023-11-20' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT082', N'NV004', 28, N'LG001', N'F9', 89000, 44500, CAST(N'2023-11-20' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT083', N'NV004', 7, N'LG001', N'B7', 169000, 84500, CAST(N'2023-11-21' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT084', N'NV004', 13, N'LG001', N'C3', 89000, 44500, CAST(N'2023-11-21' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT085', N'NV004', 13, N'LG001', N'D4', 89000, 44500, CAST(N'2023-11-21' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT086', N'NV004', 13, N'LG001', N'C4', 89000, 44500, CAST(N'2023-11-21' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT087', N'NV004', 13, N'LG001', N'C5', 89000, 44500, CAST(N'2023-11-21' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT088', N'NV004', 13, N'LG001', N'D3', 89000, 44500, CAST(N'2023-11-21' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT089', N'NV004', 2, N'LG001', N'D6', 145000, 72500, CAST(N'2023-11-27' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT090', N'NV004', 2, N'LG001', N'D7', 145000, 72500, CAST(N'2023-11-27' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT091', N'NV004', 2, N'LG001', N'C7', 145000, 72500, CAST(N'2023-11-28' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT092', N'NV004', 2, N'LG001', N'C8', 145000, 72500, CAST(N'2023-11-28' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT093', N'NV004', 1, N'LG001', N'D7', 129000, 64500, CAST(N'2023-11-28' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT094', N'NV004', 1, N'LG001', N'D8', 129000, 64500, CAST(N'2023-11-28' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT095', N'NV004', 3, N'LG001', N'C7', 145000, 72500, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT096', N'NV004', 3, N'LG001', N'C8', 145000, 72500, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT097', N'NV004', 3, N'LG001', N'E6', 145000, 72500, CAST(N'2023-12-01' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT098', N'NV004', 3, N'LG001', N'E7', 145000, 72500, CAST(N'2023-12-01' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT099', N'NV004', 3, N'LG001', N'E8', 145000, 72500, CAST(N'2023-12-01' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT100', N'NV004', 8, N'LG001', N'A1', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT101', N'NV004', 12, N'LG001', N'A2', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT102', N'NV004', 12, N'LG001', N'B3', 129000, 284000, CAST(N'2023-03-19' AS Date))
GO
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT103', N'NV004', 8, N'LG001', N'C5', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT104', N'NV004', 8, N'LG001', N'C5', 129000, 284000, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT105', N'NV004', 23, N'LG001', N'A1', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT106', N'NV004', 23, N'LG001', N'A2', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT107', N'NV004', 45, N'LG001', N'B3', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT108', N'NV004', 45, N'LG001', N'C5', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT109', N'NV004', 45, N'LG001', N'C5', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT110', N'NV004', 26, N'LG001', N'A1', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT111', N'NV004', 26, N'LG001', N'A2', 129000, 284000, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT112', N'NV004', 47, N'LG001', N'B3', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT113', N'NV004', 47, N'LG001', N'C5', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT114', N'NV004', 47, N'LG001', N'C5', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT115', N'NV004', 47, N'LG001', N'A2', 129000, 284000, CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT116', N'NV004', 77, N'LG001', N'B3', 129000, 284000, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT117', N'NV004', 77, N'LG001', N'C5', 129000, 284000, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT118', N'NV004', 77, N'LG001', N'C5', 129000, 284000, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT119', N'NV004', 3, N'LG001', N'F9', 145000, 72500, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT120', N'NV004', 3, N'LG001', N'F10', 145000, 72500, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT121', N'NV004', 4, N'LG001', N'C7', 169000, 84500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT122', N'NV004', 4, N'LG001', N'C8', 169000, 84500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT123', N'NV004', 5, N'LG001', N'C3', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT124', N'NV004', 5, N'LG001', N'C4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT125', N'NV004', 3, N'LG001', N'E5', 145000, 72500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT126', N'NV004', 3, N'LG001', N'E6', 145000, 72500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT127', N'NV004', 2, N'LG001', N'D5', 99000, 49500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT128', N'NV004', 2, N'LG001', N'C6', 99000, 49500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT129', N'NV004', 5, N'LG001', N'C4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT130', N'NV004', 5, N'LG001', N'C5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT131', N'NV004', 4, N'LG001', N'B4', 169000, 84500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT132', N'NV004', 4, N'LG001', N'B5', 169000, 84500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT133', N'NV004', 5, N'LG001', N'C4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT134', N'NV004', 5, N'LG001', N'C5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT135', N'NV004', 4, N'LG001', N'C3', 169000, 84500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT136', N'NV004', 4, N'LG001', N'C4', 169000, 84500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT137', N'NV004', 5, N'LG001', N'C4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT138', N'NV004', 5, N'LG001', N'C5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT139', N'NV004', 5, N'LG001', N'D4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT140', N'NV004', 5, N'LG001', N'D5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT141', N'NV004', 5, N'LG001', N'D6', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT142', N'NV004', 5, N'LG001', N'D7', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT143', N'NV004', 5, N'LG001', N'E2', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT144', N'NV004', 5, N'LG001', N'E5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT145', N'NV004', 5, N'LG001', N'E4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT146', N'NV004', 13, N'LG001', N'E2', 89000, 44500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT147', N'NV004', 13, N'LG001', N'E3', 89000, 44500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT148', N'NV004', 5, N'LG001', N'C5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT149', N'NV004', 5, N'LG001', N'C6', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT150', N'NV004', 5, N'LG001', N'D4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT151', N'NV004', 5, N'LG001', N'D3', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT152', N'NV004', 5, N'LG001', N'D4', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT153', N'NV004', 5, N'LG001', N'D5', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT154', N'NV004', 5, N'LG001', N'D3', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT155', N'NV004', 5, N'LG001', N'E1', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT156', N'NV004', 5, N'LG001', N'E2', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT157', N'NV004', 5, N'LG001', N'E3', 119000, 59500, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT158', N'NV004', 3, N'LG001', N'D5', 145000, 72500, CAST(N'2023-12-07' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT159', N'NV004', 3, N'LG001', N'D6', 145000, 72500, CAST(N'2023-12-07' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT160', N'NV004', 3, N'LG001', N'D5', 145000, 72500, CAST(N'2023-12-07' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT161', N'NV004', 3, N'LG001', N'D6', 145000, 72500, CAST(N'2023-12-07' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT162', N'NV004', 2, N'LG001', N'F9', 129000, 64500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT163', N'NV004', 2, N'LG001', N'F10', 129000, 64500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT164', N'NV004', 2, N'LG001', N'G10', 129000, 96750, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT165', N'NV004', 2, N'LG001', N'G5', 129000, 96750, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT166', N'NV004', 29, N'LG001', N'D8', 79000, 39500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT167', N'NV004', 29, N'LG001', N'C8', 79000, 39500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT168', N'NV004', 32, N'LG001', N'C6', 156000, 78000, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT169', N'NV004', 32, N'LG001', N'B7', 156000, 78000, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT170', N'NV004', 94, N'LG001', N'F9', 119000, 59500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT171', N'NV004', 94, N'LG001', N'E10', 119000, 59500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT172', N'NV004', 94, N'LG001', N'G10', 119000, 89250, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT173', N'NV004', 83, N'LG001', N'F6', 145000, 72500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT174', N'NV004', 83, N'LG001', N'F7', 145000, 72500, CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Ve] ([maVe], [maNhanVien], [maLichChieu], [maLoaiGhe], [soGhe], [giaPhim], [giaLoaiGhe], [ngayDatVe]) VALUES (N'MT175', N'NV004', 83, N'LG001', N'G9', 145000, 108750, CAST(N'2023-12-08' AS Date))
GO
ALTER TABLE [dbo].[Ve] ADD  CONSTRAINT [DF_Ve_ngayDatVe]  DEFAULT (getdate()) FOR [ngayDatVe]
GO
ALTER TABLE [dbo].[ChiTietVe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietVe_ThucAn1] FOREIGN KEY([thucAn])
REFERENCES [dbo].[ThucAn] ([maThucAn])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[ChiTietVe] CHECK CONSTRAINT [FK_ChiTietVe_ThucAn1]
GO
ALTER TABLE [dbo].[ChiTietVe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietVe_Ve] FOREIGN KEY([maVe])
REFERENCES [dbo].[Ve] ([maVe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietVe] CHECK CONSTRAINT [FK_ChiTietVe_Ve]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK__LichChieu__maPhi__5070F446] FOREIGN KEY([maPhim])
REFERENCES [dbo].[Phim] ([maPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK__LichChieu__maPhi__5070F446]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phong]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_SuatChieu] FOREIGN KEY([maSuat])
REFERENCES [dbo].[SuatChieu] ([maSuat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_SuatChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK__Ve__maNhanVien__59FA5E80] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK__Ve__maNhanVien__59FA5E80]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Ghe] FOREIGN KEY([maLoaiGhe])
REFERENCES [dbo].[loaiGhe] ([maLoaiGhe])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Ghe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([maLichChieu])
REFERENCES [dbo].[LichChieu] ([maLichChieu])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmount]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectAmount]
as	begin
select month(ngayDatVe) as 'thangSo' ,dateName(month, ngayDatVe ) as 'thangChu', Sum(giaPhim + giaLoaiGhe)  as 'doanhThuPhim',
ISNULL((select Sum(cTV.giaThucAn * cTV.soLuong) as 'doanhThuThucAn' from Ve v
left join ChiTietVe cTV on v.maVe = cTV.maVe
group by month(v.ngayDatVe) ,dateName(month, v.ngayDatVe )
having dateName(month, v.ngayDatVe ) like dateName(month, Ve.ngayDatVe )),0) as 'doanhThuThucAn',
 (Sum(giaPhim + giaLoaiGhe)  +
ISNULL((select Sum(cTV.giaThucAn * cTV.soLuong) as 'doanhThuThucAn' from Ve v
left join ChiTietVe cTV on v.maVe = cTV.maVe
group by month(v.ngayDatVe) ,dateName(month, v.ngayDatVe )
having dateName(month, v.ngayDatVe ) like dateName(month, Ve.ngayDatVe )),0)) as 'tongDoanhThu'
from Ve
group by dateName(month, ngayDatVe ), month(ngayDatVe)
order by month(ngayDatVe) asc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmountFoodByIdAdDate]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_SelectAmountFoodByIdAdDate](@idThucAn varchar(20), @date varchar(20))
as begin
select Sum(giaThucAn * soLuong)  as 'doanhThuThucAn' from ChiTietVe cTV
inner join Ve v on cTV.maVe = v.maVe
where cTV.thucAn like @idThucAn and ngayDatVe like @date
group by ngayDatVe
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmountFoodByIdAdMonth]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_SelectAmountFoodByIdAdMonth](@idFood varchar(20), @month varchar(20))
	as begin
select Sum(giaThucAn * soLuong)  as 'doanhThuThucAn' from Ve v
inner join ChiTietVe cTV on cTV.maVe = v.maVe
where cTV.thucAn like @idFood  and dateName(month, ngayDatVe) like @month
group by dateName(month, ngayDatVe)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmountMovieByIdAdDate]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_SelectAmountMovieByIdAdDate](@idMovie varchar(20), @date varchar(20))
as begin
select Sum(giaPhim + giaLoaiGhe)  as 'doanhThuPhim' from Ve v
inner join LichChieu lC on lC.maLichChieu = v.maLichChieu
where lC.maPhim like @idMovie and ngayDatVe like @date
group by ngayDatVe
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmountMovieByIdAdMonth]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_SelectAmountMovieByIdAdMonth](@idMovie varchar(20), @month varchar(20))
	as begin
select Sum(giaPhim + giaLoaiGhe)  as 'doanhThuPhim' from Ve v
inner join LichChieu lC on lC.maLichChieu = v.maLichChieu
where lC.maPhim like @idMovie and dateName(month, ngayDatVe) like @month
group by dateName(month, ngayDatVe)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmountTopThreeFoodInMonth]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_SelectAmountTopThreeFoodInMonth](@month varchar(20))
	as begin
		select top 3 cTV.thucAn , Sum(cTV.giaThucAn * cTV.soLuong) as 'doanhThu' ,
		CAST(Sum(cTV.giaThucAn * cTV.soLuong)/(select Sum(cTV.giaThucAn * cTV.soLuong) from ChiTietVe cTV 
		inner join Ve v on v.maVe = cTV.maVe
		where datename(month,v.ngayDatVe) like @month) * 100 AS DECIMAL(10, 2))  as 'phanTramDoanhThu' from Ve v
		inner join ChiTietVe cTV on v.maVe = cTV.maVe
		where datename(month,v.ngayDatVe) like @month
		group by cTV.thucAn order by Sum(cTV.giaThucAn * cTV.soLuong) desc
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectAmountTopThreeMovieInMonth]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_SelectAmountTopThreeMovieInMonth](@month varchar(20))
	as begin
		select top 3 lC.maPhim , Sum(v.giaPhim + v.giaLoaiGhe) as 'doanhThu',
		CAST(Sum(v.giaPhim + v.giaLoaiGhe)/(select sum(v.giaPhim+v.giaLoaiGhe) from ve v
		where datename(month,v.ngayDatVe) like @month) * 100 AS DECIMAL(10, 2))  as 'phanTramDoanhThu' from Ve v
		inner join LichChieu lC on v.maLichChieu = lC.maLichChieu 
		where datename(month,v.ngayDatVe) like @month
		group by lC.maPhim order by Sum(v.giaPhim + v.giaLoaiGhe) desc
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectIdMovieHotInMonth]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_SelectIdMovieHotInMonth](@month varchar(20))
  as begin
  select top 1 p.maPhim as 'maPhim' from Ve v 
  inner join LichChieu lC on v.maLichChieu = lC.maLichChieu
  inner join phim p on p.maPhim = lC.maPhim
  where datename(month,v.ngayDatVe) like @month
  group by p.maPhim order by count(p.maPhim) desc
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMovieByDate]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_SelectMovieByDate] (@ngayChieu date)
	as begin
	select distinct p.* from Phim p 
	inner join LichChieu lC on p.maPhim = lC.maPhim
  	where lC.ngayChieu like @ngayChieu
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMovieByIDMovieSchedule]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectMovieByIDMovieSchedule] (@maLichChieu int)
as begin
select p.tenPhim, pH.tenPhong, sC.thoiGian from LichChieu lC
inner join Phim p on p.maPhim = lC.maPhim
inner join SuatChieu sC on sC.maSuat = lC.maSuat
inner join Phong pH on pH.maPhong = lC.maPhong
where maLichChieu = @maLichChieu;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMovieByMovieSchedule]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_SelectMovieByMovieSchedule] (@ngayChieu date, @tenPhong varchar(5), @thoiGian varchar(20))
	as begin
	 select p.* from LichChieu lC
  inner join Phong pH on pH.maPhong = lC.maPhong 
  inner join SuatChieu sC on  sC.maSuat = lC.maSuat
  inner join Phim p on p.maPhim = lC.maPhim
  where lC.ngayChieu like @ngayChieu and pH.tenPhong like @tenPhong and sC.thoiGian like @thoiGian
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMovieSchedule]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		create proc [dbo].[sp_SelectMovieSchedule](@maPhim Varchar(20), @tenPhong varchar(5), @ngayChieu varchar(20))
	as begin
		select lC.* from Phim p 
  		inner join LichChieu lC on p.maPhim = lC.maPhim
  		inner join Phong pH on lC.maPhong = pH.maPhong
		where p.maPhim like @maPhim and pH.tenPhong like @tenPhong and lC.ngayChieu like @ngayChieu
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectMovieScheduleByIdMovie]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectMovieScheduleByIdMovie] (@maPhim Varchar(20))
	as begin
  select lC.ngayChieu, sC.thoiGian, pH.tenPhong from Phim p 
  inner join LichChieu lC on p.maPhim = lC.maPhim
  inner join SuatChieu sC on lC.maSuat = sC.maSuat
  inner join Phong pH on lC.maPhong = pH.maPhong
  where p.maPhim like @maPhim
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectRoomByMovieIDAndShowTimeAndDate]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SelectRoomByMovieIDAndShowTimeAndDate] (@idMovie varchar(20), @maSuat int, @ngayChieu varchar(50))
	as begin
select  lC.maPhong, p.tenPhong from LichChieu lC inner join
	Phong p on
	lC.maPhong = p.maPhong
	where maPhim like @idMovie and lC.maSuat = @maSuat and ngayChieu like @ngayChieu order by lC.maPhong asc
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_SelectShowTimeByMovieIDAndDate]    Script Date: 12/11/2023 9:07:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[sp_SelectShowTimeByMovieIDAndDate] (@idMovie varchar(20), @ngayChieu date)
  as begin
	select distinct lC.maSuat, sC.thoiGian from LichChieu lC 
	inner join SuatChieu sC on lC.maSuat = sC.maSuat
	where maPhim like @idMovie and lC.ngayChieu like @ngayChieu;
end
GO
