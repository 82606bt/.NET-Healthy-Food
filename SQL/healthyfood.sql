USE [HealthyFood]
GO
/****** Object:  Table [dbo].[BAIVIET]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIVIET](
	[MaBV] [int] IDENTITY(1,1) NOT NULL,
	[author] [nvarchar](100) NULL,
	[NgayViet] [date] NULL,
	[TheLoai] [nvarchar](100) NULL,
	[Tag] [nvarchar](100) NULL,
	[MaKH] [int] NOT NULL,
	[Anh] [nvarchar](100) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[DacTrung] [bit] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Avatar] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONTHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONTACT]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTACT](
	[MaPH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Comment] [nvarchar](200) NULL,
 CONSTRAINT [PK_CONTACT] PRIMARY KEY CLUSTERED 
(
	[MaPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[MaKH] [int] NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](100) NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GIAMGIA]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAMGIA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Sale] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Loai__730A57597A97A602] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[MaNCC] [int] NULL,
	[DaXoa] [bit] NULL,
	[DacTrung] [bit] NULL,
	[Review] [int] NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[GiaoHang] [nvarchar](100) NULL,
	[TrongLuong] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 16/07/2022 6:44:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](100) NULL,
	[Tieusu] [nvarchar](max) NULL,
	[Dienthoai] [varchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BAIVIET] ON 

INSERT [dbo].[BAIVIET] ([MaBV], [author], [NgayViet], [TheLoai], [Tag], [MaKH], [Anh], [TieuDe], [DacTrung], [NoiDung], [Description], [Avatar]) VALUES (3, N'Nhật Trần', CAST(N'2022-06-22' AS Date), NULL, NULL, 1, N'/img/blog/post1.png', N'Chế độ ăn healthy là gì? Có công dụng gì cho sức khỏe?', 1, N'Chế độ ăn healthy hay còn được biết đến là chế độ ăn lành mạnh. Đây là một chế độ ăn cân bằng, hoàn chỉnh bao gồm đa dạng các loại thực phẩm lành mạnh giúp duy trì vóc dáng và cải thiện sức khỏe.Chế độ ăn healthy bao gồm đa dạng các loại thực phẩm lành mạnh.Chế độ ăn healthy đảm bảo những quy tắc là: Hoàn chỉnh: Bởi vì nó chứa tất cả các nhóm thực phẩm, kết hợp với nhau, cung cấp tất cả các chất dinh dưỡng cần thiết.Cân bằng: Vì nó kết hợp lượng thức ăn thích hợp nhưng không dư thừa.Đủ: Vì nó đáp ứng nhu cầu của cơ thể cho phép tăng trưởng và phát triển ở trẻ em và duy trì trọng lượng cơ thể trong giới hạn khuyến cáo cho người lớn.Đa dạng: Bởi vì nó cung cấp sự đóng góp cần thiết của vitamin và khoáng chất, bằng cách bao gồm các nhóm thực phẩm khác nhau.Chế độ ăn healthy là Hoàn chỉnh - Cân bằng - Đủ - Đa dạng.Theo tổ chức Y tế Thế giới (WHO), một chế độ ăn healthy sẽ bao gồm:Tăng lượng rau, củ, trái cây, ngũ cốc lúa mạch và các sản phẩm từ sữa hạt.Bổ sung protein có trong các loại thịt, cá, đậu, trứng và các loại hạt.Hạn chế chất béo bão hòa và chất béo chuyển hóa, đường, natri và kiểm soát khẩu phần ăn hợp lý.Khoáng chất như canxi, magie…', N'Chế độ ăn healthy đang rất phổ biến và được yêu thích bởi với các bạn trẻ quan tâm đến sức khỏe.', N'/img/blog/details/author.jpg')
INSERT [dbo].[BAIVIET] ([MaBV], [author], [NgayViet], [TheLoai], [Tag], [MaKH], [Anh], [TieuDe], [DacTrung], [NoiDung], [Description], [Avatar]) VALUES (5, N'Nhật Trần', CAST(N'2022-06-22' AS Date), NULL, NULL, 1, N'/img/blog/post2.png', N'Lợi ích của chế độ ăn healthy', 1, N'Đây là một chế độ ăn uống giúp duy trì và cải thiện sức khỏe tổng quát. Một chế độ ăn uống lành mạnh cung cấp cho cơ thể những chất dinh dưỡng thiết yếu và lượng calo đầy đủ.
Chế độ ăn healthy cung cấp cho cơ thể những chất dinh dưỡng thiết yếu
Giảm cân và duy trì vóc dáng
Ăn healthy hỗ trợ giảm đi lượng calo nạp vào hàng ngày
Chất xơ trong rau, củ, quả và ngũ cốc nguyên hạt đem lại cảm giác no nhanh hơn, nên việc sử dụng chúng để thay thế cho thực phẩm chứa nhiều chất béo sẽ giúp bạn giảm đi lượng calo nạp vào hàng ngày.
Điều hòa lượng đường trong máu
Chế độ ăn lành mạnh giúp điều hòa lượng đường huyết
Các thực phẩm như nước ngọt, kem, bánh mì mà bạn tiêu thụ hàng ngày rất dễ làm tăng lượng đường trong máu dễ dẫn đến căn bệnh Tiểu đường loại 2.
Lúc này, những loại bánh mì ngũ cốc nguyên hạt, yến mạch và gạo lứt sẽ làm chậm lại dòng chảy của đường tới máu, giúp điều hòa lượng đường huyết
Giảm nguy cơ mắc bệnh tim và ung thư
Ăn healthy làm giảm nguy cơ mắc bệnh tim mạch và ung thư
Chất béo trong dầu oliu, bơ, cá và các loại hạt sẽ là lựa chọn hàng đầu giúp bảo vệ sức khỏe tim mạch. Hơn thế nữa, rau quả chứa các chất chống oxy hóa, giúp tìm kiếm đồng thời phát hiện những tế bào gây ra ung thư.
', N'Đây là một chế độ ăn uống giúp duy trì và cải thiện sức khỏe tổng quát. Một chế độ ăn uống lành mạnh cung cấp cho cơ thể', N'/img/blog/details/author.jpg')
INSERT [dbo].[BAIVIET] ([MaBV], [author], [NgayViet], [TheLoai], [Tag], [MaKH], [Anh], [TieuDe], [DacTrung], [NoiDung], [Description], [Avatar]) VALUES (6, N'Nhật Trần', CAST(N'2022-06-22' AS Date), NULL, NULL, 1, N'/img/blog/post3.png', N'Chế độ ăn diet là gì?', 1, N'Ăn “diet” hay ăn kiêng là tiến hành ăn thực phẩm một cách có quy định và có kiểm soát để giảm, duy trì hoặc tăng cân. Nói cách khác, đây là sự kiểm soát hoặc hạn chế có ý thức đối với thực phẩm. Chế độ ăn kiêng thường được áp dụng cho những người thừa cân hoặc béo phì, đôi khi kết hợp với tập thể dục để giảm cân. Một số người theo chế độ ăn kiêng để tăng cân (thường ở dạng cơ bắp). Chế độ ăn kiêng cũng có thể được áp dụng để duy trì cân nặng ổn định và cải thiện sức khỏe tổng thể. Đặc biệt, có thể áp dụng chế độ ăn kiêng để ngăn ngừa hoặc điều trị bệnh tiểu đường.

Chế độ ăn diet hay ăn kiêng nhấn mạnh việc hạn chế calo để giảm cân, đặc biệt là giảm cân nhanh chóng. Trên lý thuyết, chế độ ăn kiêng có thể bao gồm cách tiếp cận cân bằng đối với thực phẩm và dinh dưỡng đảm bảo lượng calo, chế độ ăn kiêng thường tập trung vào giảm cân. Trong chế độ ăn kiêng, chủ yếu mọi người cố gắng loại bỏ tất cả các loại thực phẩm gây ảnh hưởng cân nặng (ví dụ: không có protein, không có carbohydrate hoặc chất béo).
', N'Ăn “diet” hay ăn kiêng là tiến hành ăn thực phẩm một cách có quy định và có kiểm soát để giảm, duy trì hoặc tăng cân.', N'/img/blog/details/author.jpg')
INSERT [dbo].[BAIVIET] ([MaBV], [author], [NgayViet], [TheLoai], [Tag], [MaKH], [Anh], [TieuDe], [DacTrung], [NoiDung], [Description], [Avatar]) VALUES (7, N'Nhật Trần', CAST(N'2022-06-22' AS Date), NULL, NULL, 1, N'/img/blog/post4.png', N'Chế độ eat clean là gì?', 1, N'“Eat clean” hiểu nôm na là ăn thực phẩm sạch, là một khái niệm ăn kiêng trong đó một người tránh thực phẩm đã qua chế biến và tinh chế cũng như những thực phẩm có thành phần nhân tạo, chẳng hạn như một số chất bảo quản và phụ gia. Thay vào đó, mục tiêu là ăn toàn bộ thực phẩm tự nhiên.

Cũng giống như có nhiều mức độ ăn chay khác nhau, chẳng hạn như ăn chay thuần chay, ăn chay theo đường lacto và ăn chay lacto-ovo, một người ăn theo chế độ ăn eat clean có thể có những ý tưởng khác nhau về những loại thực phẩm trong thực đơn eat clean của họ.
Ví dụ, một số người theo chế độ ăn eat clean - ăn sạch có thể từ chối ăn thực phẩm đã được xử lý bằng kháng sinh và thuốc trừ sâu, trong khi một người khác có thể chọn không ăn thực phẩm đóng gói trong hộp hoặc chế biến sẵn.
Các tạp chí và sách về ăn uống eat clean thường cho rằng một chế độ ăn uống sạch sẽ giúp một người hưởng nhiều lợi ích về sức khỏe, gồm tăng cường năng lượng, cho làn da sáng và giảm cân.
Hầu hết những người ăn theo chế độ eat clean đang cố gắng ăn một nguồn thức ăn lành mạnh mà không có chất phụ gia nhân tạo. Lựa chọn thực phẩm lành mạnh và ăn những món có chứa ít chất bảo quản, chỉ thêm đường và muối được xem là các bước có trong cách ăn eat clean.
', N'“Eat clean” hiểu nôm na là ăn thực phẩm sạch, là một khái niệm ăn kiêng trong đó một người tránh thực phẩm', N'/img/blog/details/author.jpg')
INSERT [dbo].[BAIVIET] ([MaBV], [author], [NgayViet], [TheLoai], [Tag], [MaKH], [Anh], [TieuDe], [DacTrung], [NoiDung], [Description], [Avatar]) VALUES (8, N'Nhật Trần', CAST(N'2022-06-22' AS Date), NULL, NULL, 1, N'/img/blog/post5.png', N'Chế độ ăn thô là gì?', 1, N'Một chế độ ăn uống thực phẩm thô bao gồm việc ăn chủ yếu là thực phẩm nguyên chất chưa qua chế biến, có nguồn gốc từ thực vật và tốt nhất là thực phẩm hữu cơ. Hầu hết những người ăn thô đều nhận định rằng khi theo chế độ ăn này, thực phẩm thô chiếm 3/4 khẩu phần ăn của họ.

Những người theo chế độ ăn thực phẩm sống (rau, quả, củ, …) tin rằng ăn thực phẩm sống có thể cải thiện sức khỏe, hạnh phúc và có thể giảm nguy cơ mắc các bệnh lý.
Giảm cân thường không phải là mục đích chính của chế độ ăn thực phẩm thô, nhưng khi bạn chuyển sang chế độ ăn thực phẩm thô có thể dẫn đến giảm cân. Hầu hết những người theo chế độ ăn uống thực phẩm thô chỉ ăn thực phẩm có nguồn gốc từ thực vật như rau củ, trái cây, biến nó trở thành một loại chế độ ăn thuần chay. Tuy nhiên, một số người cũng ăn thêm các sản phẩm tươi sống (cá hồi, hải sản, …) hoặc thịt khô.
Có ba loại chế độ ăn uống thực phẩm thô:
- Một chế độ ăn thuần chay thô loại trừ tất cả các sản phẩm động vật, chỉ tập trung vào thực phẩm có nguồn gốc thực vật
- Một chế độ ăn chay thô bao gồm các thực phẩm có nguồn gốc thực vật cộng với trứng sống và các sản phẩm từ sữa chưa qua chế biến
- Một chế độ ăn tạp sống bao gồm thực phẩm có nguồn gốc thực vật, sản phẩm động vật sống và thịt sống hoặc khô.
Hãy đảm bảo dù ở chế độ nào, bạn cũng nên ăn đa dạng các loại thực phẩm khác nhau và cung cấp đủ calo tối thiểu cho cơ thể hoạt động. Chọn khẩu phần ăn phù hợp và ăn trái cây, rau quả với đủ màu sắc của cầu vồng để nhận được các chất dinh dưỡng cần thiết cho cơ thể. Bổ sung đạm bằng thịt từ động vật và tránh lối sống thiếu lành mạnh. Cố gắng tập thể dục trong 60 phút ít nhất là 3 ngày trong tuần. Bằng cách thực hiện những thay đổi lành mạnh này vì dù bằng chế độ ăn như thế nào đi chăng nữa, việc bạn cần nhất chính là duy trì một cơ thể khỏe mạnh, không phải sao?
', N'Một chế độ ăn uống thực phẩm thô bao gồm việc ăn chủ yếu là thực phẩm nguyên chất chưa qua chế biến, có nguồn gốc từ thực vật và tốt nhất là thực phẩm hữu cơ.', N'/img/blog/details/author.jpg')
INSERT [dbo].[BAIVIET] ([MaBV], [author], [NgayViet], [TheLoai], [Tag], [MaKH], [Anh], [TieuDe], [DacTrung], [NoiDung], [Description], [Avatar]) VALUES (9, N'Nhật Trần', CAST(N'2022-06-22' AS Date), NULL, NULL, 1, N'/img/blog/post6.png', N'Các món ăn ngon từ ức gà', 1, N'Với chế độ giảm cân nhưng đảm bảo đầy đủ chất dinh dưỡng thịt ức gà là một món ăn luôn được ưu tiên. Với cách chế biến đơn giản chỉ cần lột hết phần da gà, nêm gia vị là có được món ức gà nướng hấp dẫn thơm ngon.
Phần gà nướng vàng đẹp, thấm vị, vẫn còn giữ được độ ngọt. Phần ức cung cấp được chất dinh dưỡng vừa đủ, hỗ trợ quá trình giảm cân rất hiệu quả.
Món ức gà áp chảo sẽ là một món áp chảo lạ miệng, phần thịt gà vàng óng, bên ngoài giòn, phần thịt bên trong mềm vẫn giữ được độ ngọt tự nhiên, hứa hẹn đây là một món ăn hấp dẫn trong những món giảm cân của bạn.
Phần ức gà chứa ít calo sẽ là món lựa chọn phù hợp cho bạn trong quá trình giảm cân.
Cách làm ức gà áp chảo giảm cân ngon mê ly, ăn mãi chẳng ngán
Đây là một món ăn nhẹ nhàng, giúp thanh lọc cơ thể, giải cảm nhưng cách thực hiện lại vô cùng đơn giản. Phần thịt gà xé nhỏ được nấu cùng cà rốt, súp lơ sẽ giúp món ăn thêm phần ngon miệng mà vẫn giảm thiểu tối đa lượng calo không cần thiết.
Vào bếp trổ tài nấu súp gà nấm rơm bổ dưỡng
Ức gà có thể kết hợp cùng với nhiều món ăn hấp dẫn hơn, trong đó có nấm. Vì nấm là loại thực phẩm giàu chất đạm nhưng lượng chất béo, tinh bột cực thấp. Do đó, khi kết hợp với ức gà sẽ giúp bạn tăng cơ, chắc khỏe mà lại hạn chế lên mỡ tối đa.
Phần nấm khi xào vẫn còn giữ được độ giòn và ngọt tự nhiên hòa cùng vị gà ngọt, mềm tạo nên một món ăn hấp dẫn và bắt mắt.
', N'Với chế độ giảm cân nhưng đảm bảo đầy đủ chất dinh dưỡng thịt ức gà là một món ăn luôn được ưu tiên.', N'/img/blog/details/author.jpg')
SET IDENTITY_INSERT [dbo].[BAIVIET] OFF
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1, 17, 1, CAST(55000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (2, 4, 1, CAST(22000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (3, 11, 2, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (4, 8, 2, CAST(48000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (4, 17, 3, CAST(135000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (4, 18, 1, CAST(375000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Thịt')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'thịt')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Sữa')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Rau')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[CONTACT] ON 

INSERT [dbo].[CONTACT] ([MaPH], [HoTen], [Email], [Comment]) VALUES (1, N'Vongphachanh Phoutthasin', N'vongphachanh@gmail.com', N'Shop chăm sóc khách hàng tốt')
INSERT [dbo].[CONTACT] ([MaPH], [HoTen], [Email], [Comment]) VALUES (2, N'Trần Hồng Nhật', N'tranhongnhat@gmail.com', N'Shop Beauty')
INSERT [dbo].[CONTACT] ([MaPH], [HoTen], [Email], [Comment]) VALUES (3, N'Trần Minh Nhật', N'minhnhatran@gmail.com', N'Beauty Web')
INSERT [dbo].[CONTACT] ([MaPH], [HoTen], [Email], [Comment]) VALUES (4, N'Doãn Văn Long', N'doanlong266@gmail.com', N'Nhiều sản phẩm')
SET IDENTITY_INSERT [dbo].[CONTACT] OFF
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Ngaydat], [MaKH], [HoTen], [DiaChi], [DienThoai], [ThanhTien], [Description]) VALUES (1, CAST(N'2022-07-16 07:22:25.863' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Ngaydat], [MaKH], [HoTen], [DiaChi], [DienThoai], [ThanhTien], [Description]) VALUES (2, CAST(N'2022-07-16 07:33:47.597' AS DateTime), NULL, N'Hồng Nhật', NULL, N'0328332192', CAST(0 AS Decimal(18, 0)), N'Giao giờ hành chính')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Ngaydat], [MaKH], [HoTen], [DiaChi], [DienThoai], [ThanhTien], [Description]) VALUES (3, CAST(N'2022-07-16 07:45:07.623' AS DateTime), NULL, N'Phoutthasin', N'Trảng Dài', N'0328332199', CAST(100000 AS Decimal(18, 0)), N'Giao giờ hành chính')
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Ngaydat], [MaKH], [HoTen], [DiaChi], [DienThoai], [ThanhTien], [Description]) VALUES (4, CAST(N'2022-07-16 11:18:37.887' AS DateTime), NULL, N'Hồng Nhật', N'Tổ 11/Kp4c/P.Trảng Dài/Tp.Biên Hòa/ Đồng Nai', N'0328332192', CAST(558000 AS Decimal(18, 0)), N'Vui lòng cẩn thận!')
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[GIAMGIA] ON 

INSERT [dbo].[GIAMGIA] ([id], [Code], [Sale]) VALUES (2, N'20k', 20000)
INSERT [dbo].[GIAMGIA] ([id], [Code], [Sale]) VALUES (3, N'30k', 30000)
INSERT [dbo].[GIAMGIA] ([id], [Code], [Sale]) VALUES (4, N'40k', 40000)
SET IDENTITY_INSERT [dbo].[GIAMGIA] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Nhật Trần', N'nhatran58', N'123123', CAST(N'2000-08-05 00:00:00.000' AS DateTime), N'Trảng Bom, Đồng Nai', N'tranhongnhat580@gmail.com', N'0354752196')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (2, N'Trần Minh Nhật', N'nhanminh28', N'8e1c562d792f58b831209a3cc878f83e', NULL, NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (3, N'Vongphachanh Phoutthasin', N'longlao123', N'f5bb0c8de146c67b44babbf4e6584cc0', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (1, N'Thịt', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (2, N'Rau Củ', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (3, N'Đồ ăn Nhanh', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (4, N'Hải sản', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (5, N'Ngũ cốc', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (6, N'Quả hạt', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (7, N'Sữa', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (8, N'Trái Cây', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (9, N'Đồ ăn nhanh', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (1, N'Cá Ngừ', CAST(250000 AS Decimal(18, 0)), NULL, N'/img/product/cangu.jpg', NULL, 20, 1, 4, NULL, 1, NULL, N'Còn hàng', N'1h', N'1kg')
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (2, N'Cá Mòi', CAST(20000 AS Decimal(18, 0)), NULL, N'/img/product/camoi.jpg', NULL, 20, 1, 4, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (3, N'Thăn Bò', CAST(392000 AS Decimal(18, 0)), N'Thịt bò nạc là một trong những nguồn cung cấp protein tốt nhất khi được tiêu thụ vừa phải và chứa nhiều chất sắt có giá trị sinh học cao .', N'/img/product/Leanbeef.jpg', NULL, 20, 1, 1, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (4, N'Trứng', CAST(22000 AS Decimal(18, 0)), N'Trứng là một trong những thực phẩm bổ dưỡng nhất trên hành tinh.Trước đây chúng từng bị coi là có hàm lượng cholesterol cao , nhưng các nghiên cứu mới cho thấy chúng hoàn toàn an toàn và lành mạnh', N'/img/product/Eggs.jpg', NULL, 20, 1, 1, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (5, N'Dưa Leo', CAST(12000 AS Decimal(18, 0)), NULL, N'/img/product/duleo.jpg', NULL, 20, 4, 2, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (6, N'Đậu Ve', CAST(12000 AS Decimal(18, 0)), NULL, N'/img/product/bean.jpg', NULL, 20, 4, 2, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (7, N'Cải Xoăn', CAST(20000 AS Decimal(18, 0)), NULL, N'/img/product/caixoan.jpg', NULL, 20, 4, 2, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (8, N'Cà Rốt', CAST(24000 AS Decimal(18, 0)), NULL, N'/img/product/Carrots.jpg', NULL, 20, 4, 2, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (9, N'Chuối', CAST(25000 AS Decimal(18, 0)), N'Chuối là một trong những nguồn cung cấp kali tốt nhất thế giới. Chúng cũng chứa nhiều vitamin B6 và chất xơ, rất tiện lợi và dễ di chuyển', N'/img/product/chuoi.jpg', NULL, 20, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (10, N'Cam', CAST(40000 AS Decimal(18, 0)), N'Cam nổi tiếng với hàm lượng vitamin C. Hơn nữa, chúng giàu chất xơ và chất chống oxy hóa.', N'/img/product/orange.jpg', NULL, 20, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (11, N'Bơ', CAST(50000 AS Decimal(18, 0)), N'Trái bơ khác với hầu hết các loại trái cây khác vì chúng chứa nhiều chất béo lành mạnh thay vì carbs. Chúng không chỉ có kem và ngon mà còn giàu chất xơ, kali và vitamin C.', N'/img/product/bo.jpg', NULL, 20, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (12, N'Việt Quất', CAST(60000 AS Decimal(18, 0)), N'Quả việt quất không chỉ ngon mà còn là một trong những nguồn cung cấp chất chống oxy hóa mạnh nhất trên thế giới.', N'/img/product/Blueberries.jpg', NULL, 20, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (13, N'Táo', CAST(35000 AS Decimal(18, 0)), N'Táo có nhiều chất xơ, vitamin C và nhiều chất chống oxy hóa. Chúng rất no và là món ăn nhẹ hoàn hảo nếu bạn thấy đói giữa các bữa ăn.', N'/img/product/tao.jpg', NULL, 20, NULL, 8, NULL, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (14, N'Sữa Tươi NuVi ', CAST(342720 AS Decimal(18, 0)), NULL, N'/img/latest-product/milk.jpg', NULL, NULL, 3, 7, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (15, N'Sữa Chua Nuvi', CAST(342720 AS Decimal(18, 0)), NULL, N'/img/latest-product/yorgut.jpg', NULL, NULL, 3, 7, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (16, N'Dâu tây', CAST(85000 AS Decimal(18, 0)), N'Dâu tây có giá trị dinh dưỡng cao và ít carbs và calo. Chúng chứa nhiều vitamin C, chất xơ và mangan và được cho là một trong những loại thực phẩm ngon nhất tồn tại.', N'/img/product/dau.jpg', NULL, 20, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (17, N'Ức Gà', CAST(55000 AS Decimal(18, 0)), N'Ức gà ít chất béo và calo nhưng lại cực kỳ giàu protein . Đó là một nguồn tuyệt vời của nhiều chất dinh dưỡng. Một lần nữa, hãy thoải mái ăn những miếng thịt gà béo hơn nếu bạn không ăn nhiều carbs.', N'/img/product/ga.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (18, N'Thịt Cừu ', CAST(375000 AS Decimal(18, 0)), N'Thịt cừu thường được cho ăn cỏ và thịt của chúng có xu hướng chứa nhiều axit béo omega-3.', N'/img/product/Lamb.jpg', NULL, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (19, N'Hạnh Nhân', CAST(245000 AS Decimal(18, 0)), N'Hạnh nhân là một loại hạt phổ biến chứa nhiều vitamin E, chất chống oxy hóa, magiê và chất xơ. Các nghiên cứu cho thấy hạnh nhân có thể góp phần giảm cân và cải thiện sức khỏe trao đổi chất', N'/img/product/hanhnhan.jpg', NULL, NULL, 2, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (20, N'Hạt Chia', CAST(180000 AS Decimal(18, 0)), N'Hạt Chia là một trong những thực phẩm giàu chất dinh dưỡng nhất trên hành tinh. Một ounce (28 gam) chứa 11 gam chất xơ và một lượng đáng kể magiê, mangan, canxi và nhiều chất dinh dưỡng khác.', N'/img/product/hatchia.jpg', NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (21, N'Dừa', CAST(65000 AS Decimal(18, 0)), N'Dừa chứa nhiều chất xơ và axit béo mạnh được gọi là chất béo trung tính chuỗi trung bình (MCTs).', N'/img/product/dua.jpg', NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (22, N'Hạt Mắc Ca', CAST(96000 AS Decimal(18, 0)), N'Hạt mắc ca rất ngon. Chúng chứa nhiều chất béo không bão hòa đơn và axit béo omega-6 thấp hơn nhiều so với hầu hết các loại hạt khác.', N'/img/product/hatmacca.jpg', NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (23, N'Hạt Óc Chó', CAST(125000 AS Decimal(18, 0)), N'Quả óc chó có giá trị dinh dưỡng cao và chứa nhiều chất xơ cũng như các loại vitamin và khoáng chất khác nhau.', N'/img/product/occho.jpg', NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (30, N'Chuối', CAST(25000 AS Decimal(18, 0)), N'Chuối là một trong những nguồn cung cấp kali tốt nhất thế giới. Chúng cũng chứa nhiều vitamin B6 và chất xơ, rất tiện lợi và dễ di chuyển', N'/img/product/chuoi.jpg', NULL, 20, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (31, N'test', CAST(25000 AS Decimal(18, 0)), N'test', N'/img/product/caixoan.jpg', NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (32, N'test', CAST(25000 AS Decimal(18, 0)), N'test', N'/img/product/brazilnut.jpg', NULL, 20, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (33, N'test', CAST(250000 AS Decimal(18, 0)), N'test', N'/img/product/caixoan.jpg', NULL, 20, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (34, N'test', CAST(25000 AS Decimal(18, 0)), N'test', N'/img/product/Carrots.jpg', NULL, 20, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa], [DacTrung], [Review], [TinhTrang], [GiaoHang], [TrongLuong]) VALUES (35, N'test', CAST(24000 AS Decimal(18, 0)), N'test', N'/img/product/caixoan.jpg', NULL, 20, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[BAIVIET]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SACH] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SACH]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Chude] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Chude]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_NhaXB] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_NhaXB]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__4316F928] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__4316F928]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD CHECK  (([Giaban]>=(0)))
GO
