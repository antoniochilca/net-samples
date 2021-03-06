USE [master]
GO
/****** Object:  Database [Restaurante]    Script Date: 09/05/2013 16:01:43 ******/
CREATE DATABASE [Restaurante] 
GO
ALTER DATABASE [Restaurante] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Restaurante] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Restaurante] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Restaurante] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Restaurante] SET ARITHABORT OFF
GO
ALTER DATABASE [Restaurante] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Restaurante] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Restaurante] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Restaurante] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Restaurante] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Restaurante] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Restaurante] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Restaurante] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Restaurante] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Restaurante] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Restaurante] SET  ENABLE_BROKER
GO
ALTER DATABASE [Restaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Restaurante] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Restaurante] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Restaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Restaurante] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Restaurante] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Restaurante] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Restaurante] SET  READ_WRITE
GO
ALTER DATABASE [Restaurante] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Restaurante] SET  MULTI_USER
GO
ALTER DATABASE [Restaurante] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Restaurante] SET DB_CHAINING OFF
GO
USE [Restaurante]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/05/2013 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Rol] [int] NOT NULL,
	[Email] [varchar](100) NULL,
	[IdCliente] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([IdUsuario], [Username], [Password], [Rol], [Email], [IdCliente]) VALUES (1, N'admin', N'1234', 1, N'admin@outlook.com', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [Username], [Password], [Rol], [Email], [IdCliente]) VALUES (2, N'claudiacaipo', N'1234', 1, N'claudiacaipo@outlook.com', 2)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/05/2013 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [varchar](11) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON
INSERT [dbo].[Cliente] ([IdCliente], [Documento], [Nombre]) VALUES (1, N'45514541', N'Claudia Caipo')
INSERT [dbo].[Cliente] ([IdCliente], [Documento], [Nombre]) VALUES (2, N'44916267', N'felix lopez b')
INSERT [dbo].[Cliente] ([IdCliente], [Documento], [Nombre]) VALUES (4, N'44919437', N'kaiser mejia')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  Table [dbo].[Categoria]    Script Date: 09/05/2013 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Imagen] [varchar](100) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (1, N'Entradas', N'/Archivos/')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (3, N'Carnes', N'/Archivos/')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (4, N'Postres', N'/Archivos/')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (5, N'Categoria ajax', N'asdfasd')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (6, N'categoria ajax 2', N'aaaa')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (8, N'ajax4', N'fffff')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (9, N'ajax6', N'http://imagen.algo/asdf.jpg')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (10, N'ajax6', N'hhhh')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (13, N'demo ajax1', N'aaa')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (16, N'categoria AJAX', N'demo')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (17, N'categoria AJAX', N'demo modifi')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (18, N'Ajax categoria', N'url..')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (19, N'Ajax categoria', N'url..')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (20, N'Categoria AJAX2', N'url..')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (21, N'aa', N'a')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (22, N'categodemo', N'aaa.')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (24, N'nuevo cat ajax ', N'url.dfd')
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Imagen]) VALUES (25, N'felix', N'url.fdf')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
/****** Object:  Table [dbo].[Local]    Script Date: 09/05/2013 16:01:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Local](
	[IdLocal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Distrito] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[IdLocal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Local] ON
INSERT [dbo].[Local] ([IdLocal], [Nombre], [Distrito], [Direccion], [Telefono]) VALUES (1, N'Local Principal', N'Jesús María', N'Huamachuco 1340', N'423-5124')
INSERT [dbo].[Local] ([IdLocal], [Nombre], [Distrito], [Direccion], [Telefono]) VALUES (3, N'local 1', N'SFD', N'SDF', N'4545')
INSERT [dbo].[Local] ([IdLocal], [Nombre], [Distrito], [Direccion], [Telefono]) VALUES (5, N'Local JM', N'Jesus María', N'asdf', N'12')
SET IDENTITY_INSERT [dbo].[Local] OFF
/****** Object:  StoredProcedure [dbo].[usp_Search_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Search_Producto]      
(      
   @FilasPagina int,      
   @Fila int,      
   @Cantidad int,      
   @ColumnaOrden varchar(20),      
   @DireccionOrden varchar(5),      
   @FiltrosAdicionales varchar(100) = NULL    
)      
AS      
BEGIN      
      
   SET NOCOUNT ON      
      
   DECLARE @OrdenInverso nvarchar(1024)        
   DECLARE @SentenciaSQL nvarchar(3072)        
   DECLARE @ParametroSQL nvarchar(512)        
   DECLARE @Orden sysname        
   DECLARE @Filas int      
       
   SELECT @Filas = @Cantidad      
      
   SET @Orden = @ColumnaOrden + ' ' + @DireccionOrden      
   SET @OrdenInverso = @ColumnaOrden + ' ' + CASE WHEN @DireccionOrden = 'DESC' THEN 'ASC' ELSE 'DESC' END        
      
   SET @SentenciaSQL =        
     'DECLARE @Residuo int ' +        
         'SET @Residuo = @Filas % @FilasPagina ' +        
         'SELECT * ' +        
         'FROM (' +        
             'SELECT TOP (CASE WHEN @Residuo = 0 ' +        
                 'OR @Filas / @FilasPagina > @Fila / @FilasPagina ' +        
                 'THEN @FilasPagina ELSE @Residuo END) * ' +        
             'FROM (' +        
                 'SELECT TOP (@FilasPagina + @Fila) IdProducto, ' +    
                 'p.Nombre, ' +    
                 'p.Descripcion, '+  
                 'p.Imagen, '+  
                 'c.Nombre as NombreCategoria, '+  
                 'p.Precio '+                        
                 'FROM Producto p inner join Categoria c on p.IdCategoria = c.IdCategoria ' +       
         
     CASE WHEN ISNULL(@FiltrosAdicionales, '')<> '' THEN ' WHERE ' + @FiltrosAdicionales ELSE ' ' END +      
                 'ORDER BY ' + @Orden +        
                 ') t ' +        
              'ORDER BY ' + @OrdenInverso +        
   ') t ' +        
   'ORDER BY ' + @Orden        
   SET @ParametroSQL = '@FilasPagina int, ' +        
                       '@Fila int, ' +        
                       '@Filas int'        
   EXECUTE sp_executesql @stmt              = @SentenciaSQL,        
                         @params            = @ParametroSQL,        
                         @FilasPagina       = @FilasPagina,        
                         @Fila              = @Fila,        
                         @Filas             = @Filas        
      
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Search_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Search_Categoria]  
(  
   @FilasPagina int,  
   @Fila int,  
   @Cantidad int,  
   @ColumnaOrden varchar(20),  
   @DireccionOrden varchar(5),  
   @FiltrosAdicionales varchar(100) = NULL
)  
AS  
BEGIN  
  
   SET NOCOUNT ON  
  
   DECLARE @OrdenInverso nvarchar(1024)    
   DECLARE @SentenciaSQL nvarchar(3072)    
   DECLARE @ParametroSQL nvarchar(512)    
   DECLARE @Orden sysname    
   DECLARE @Filas int  
   
   SELECT @Filas = @Cantidad  
  
   SET @Orden = @ColumnaOrden + ' ' + @DireccionOrden  
   SET @OrdenInverso = @ColumnaOrden + ' ' + CASE WHEN @DireccionOrden = 'DESC' THEN 'ASC' ELSE 'DESC' END    
  
   SET @SentenciaSQL =    
     'DECLARE @Residuo int ' +    
         'SET @Residuo = @Filas % @FilasPagina ' +    
         'SELECT * ' +    
         'FROM (' +    
             'SELECT TOP (CASE WHEN @Residuo = 0 ' +    
                 'OR @Filas / @FilasPagina > @Fila / @FilasPagina ' +    
                 'THEN @FilasPagina ELSE @Residuo END) * ' +    
             'FROM (' +    
                 'SELECT TOP (@FilasPagina + @Fila) IdCategoria, ' +
                 'Nombre, ' +
                 'Imagen '+                    
                 'FROM Categoria ' +   
     
     CASE WHEN ISNULL(@FiltrosAdicionales, '')<> '' THEN ' WHERE ' + @FiltrosAdicionales ELSE ' ' END +  
                 'ORDER BY ' + @Orden +    
                 ') t ' +    
              'ORDER BY ' + @OrdenInverso +    
   ') t ' +    
   'ORDER BY ' + @Orden    
   SET @ParametroSQL = '@FilasPagina int, ' +    
                       '@Fila int, ' +    
                       '@Filas int'    
   EXECUTE sp_executesql @stmt              = @SentenciaSQL,    
                         @params            = @ParametroSQL,    
                         @FilasPagina       = @FilasPagina,    
                         @Fila              = @Fila,    
                         @Filas             = @Filas    
  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Listar_Locales_Paginado]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Listar_Locales_Paginado]
(
	@SordColumn varchar(100),  
	@SordDirection varchar(5),  
	@RowsCount int,  
	@Page int,  
	@Count int,
	@Where varchar(100)
)
AS
BEGIN  
  
 SET NOCOUNT ON  
  
   DECLARE @OrdenInverso nvarchar(1024)    
   DECLARE @SentenciaSQL nvarchar(3072)    
   DECLARE @ParametroSQL nvarchar(512)    
   DECLARE @Orden sysname    
   
   SET @Orden = @SordColumn + ' ' + @SordDirection  
   SET @OrdenInverso = @SordColumn + ' ' + CASE WHEN @SordDirection = 'DESC' THEN 'ASC' ELSE 'DESC' END    
  
   SET @SentenciaSQL =    
		'DECLARE @Residuo int ' +    
        'SET @Residuo = @Filas % @FilasPagina ' +    
        'SELECT * ' +    
        'FROM (' +    
            'SELECT TOP (CASE WHEN @Residuo = 0 ' +    
                 'OR @Filas / @FilasPagina > @Fila / @FilasPagina ' +    
                 'THEN @FilasPagina ELSE @Residuo END) * ' +    
            'FROM (' +    
                 'SELECT TOP (@FilasPagina + @Fila) ' +  
                 'IdLocal,' +   
                 'Nombre,' +           
                 'Direccion, ' +  
                 'Distrito, ' +     
                 'Telefono ' +                   
                 'FROM Local ' +  
                 (CASE 
					WHEN ISNULL(@Where, '') = '' THEN ' '
					ELSE 'WHERE ' + @Where + ' ' 
                 END) + 
                 'ORDER BY ' + @Orden + ') t ' +    
            'ORDER BY ' + @OrdenInverso + ') t ' +    
		'ORDER BY ' + @Orden    
  
   SET @ParametroSQL =  '@FilasPagina int, ' +    
                        '@Fila int, ' +    
                        '@Filas int ' 
                                         
   EXECUTE sp_executesql @stmt          = @SentenciaSQL,    
                         @params        = @ParametroSQL,    
                         @FilasPagina   = @RowsCount,    
                         @Fila          = @Page,    
                         @Filas         = @Count
      
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Count_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Count_Producto]      
(      
   @FiltrosAdicionales varchar(100) = NULL     
)      
AS      
BEGIN      
      
   SET NOCOUNT ON      
      
   DECLARE @SentenciaSQL nvarchar(3072)       
      
   SET @SentenciaSQL = 'SELECT COUNT(*) AS Cantidad FROM Producto p ' +    
       
      CASE WHEN ISNULL(@FiltrosAdicionales, '')<> '' THEN ' WHERE ' + @FiltrosAdicionales ELSE ' ' END        
      
   EXECUTE sp_executesql @stmt = @SentenciaSQL      
      
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Count_Local]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Count_Local]
(
	@Where varchar(100)
)
AS
BEGIN

 SET NOCOUNT ON  
     
   DECLARE @SentenciaSQL nvarchar(3072)     
   
   IF ISNULL(@Where,'') = ''
   BEGIN
		SET @SentenciaSQL = 'SELECT COUNT(*) AS Cantidad FROM Local'   
   END
   ELSE
   BEGIN
		SET @SentenciaSQL = 'SELECT COUNT(*) AS Cantidad FROM Local WHERE ' + @Where   
   END
                                         
   EXECUTE sp_executesql @stmt = @SentenciaSQL

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Count_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Count_Categoria]  
(  
   @FiltrosAdicionales varchar(100) = NULL 
)  
AS  
BEGIN  
  
   SET NOCOUNT ON  
  
   DECLARE @SentenciaSQL nvarchar(3072)   
  
   SET @SentenciaSQL = 'SELECT COUNT(*) AS Cantidad FROM Categoria ' +
   
      CASE WHEN ISNULL(@FiltrosAdicionales, '')<> '' THEN ' WHERE ' + @FiltrosAdicionales ELSE ' ' END    
  
   EXECUTE sp_executesql @stmt = @SentenciaSQL  
  
END
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Imagen] [varchar](150) NULL,
	[IdCategoria] [int] NULL,
	[Precio] [decimal](14, 2) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio]) VALUES (2, N'Sopa de Pollo', N'Sopa casera de pollo y verduras', N'/Archivos/sopa-de-pollo.jpg', 1, CAST(2.50 AS Decimal(14, 2)))
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio]) VALUES (3, N'Arroz con pollo', N'menu', N'/Archivos/sopa-de-pollo - copia.jpg', 3, CAST(0.00 AS Decimal(14, 2)))
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio]) VALUES (4, N'Arroz Chaufa', N'Comida a base de pollo', N'/Archivos/arroz-chaufa.jpg', 3, CAST(15.00 AS Decimal(14, 2)))
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio]) VALUES (13, N'arroz tapadoz', N'descriopcion', N'/Archivos/arroz-tapado.jpg', 1, CAST(56.00 AS Decimal(14, 2)))
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio]) VALUES (14, N'popcorn', N'entrada', N'/Archivos/arroz-tapado.jpg', 1, CAST(45.00 AS Decimal(14, 2)))
INSERT [dbo].[Producto] ([IdProducto], [Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio]) VALUES (60, N'causa', N'causa', N'/Archivos/icon.jpg', 4, CAST(4.00 AS Decimal(14, 2)))
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  Table [dbo].[Pedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdLocal] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[TipoPedido] [int] NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pedido] ON
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (1, 1, 1, CAST(0x0000A19F00000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (2, 1, 1, CAST(0x0000A19F00000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (3, 1, 1, CAST(0x0000A19F00000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (4, 1, 5, CAST(0x0000A1B000000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (5, 1, 3, CAST(0x0000A19B00000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (6, 1, 1, CAST(0x0000A19F00000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (7, 1, 1, CAST(0x0000A19300000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (8, 2, 1, CAST(0x0000A1B500000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (9, 1, 1, CAST(0x0000A1B800000000 AS DateTime), 0)
INSERT [dbo].[Pedido] ([IdPedido], [IdCliente], [IdLocal], [Fecha], [TipoPedido]) VALUES (10, 1, 1, CAST(0x0000A1BD00000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Pedido] OFF
/****** Object:  StoredProcedure [dbo].[usp_Insert_Local]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insert_Local]  
(  
 @IdLocal int OUT,  
 @Nombre varchar(50),  
 @Distrito varchar(50),  
 @Direccion varchar(50) = null,  
 @Telefono varchar(50) = null  
)  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 INSERT INTO [Local] ([Nombre], [Distrito], [Direccion], [Telefono])   
 VALUES (@Nombre, @Distrito, @Direccion, @Telefono)  
  
 SET @IdLocal = SCOPE_IDENTITY()  
  
 SET NOCOUNT OFF  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Cliente]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Delete_Cliente]
(
	@IdCliente int
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [Cliente]
	WHERE [IdCliente] = @IdCliente

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Delete_Categoria]
(
	@IdCategoria int
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [Categoria]
	WHERE [IdCategoria] = @IdCategoria

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Local]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Delete_Local]
(
	@IdLocal int
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [Local]
	WHERE [IdLocal] = @IdLocal

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Insert_Cliente]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insert_Cliente]
(
	@IdCliente int OUT,
	@Documento varchar(11),
	@Nombre varchar(150)
)
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [Cliente] ([Documento], [Nombre]) 
	VALUES (@Documento, @Nombre)

	SET @IdCliente = SCOPE_IDENTITY()

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Insert_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insert_Categoria]  
(  
 @IdCategoria int out,  
 @Nombre varchar(50),  
 @Imagen varchar(100)  
)  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 INSERT INTO [Categoria] ( [Nombre], [Imagen])   
 VALUES ( @Nombre, @Imagen)  
  set @IdCategoria = @@IDENTITY
  
 SET NOCOUNT OFF  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectAll_Local]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SelectAll_Local]

AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IdLocal],
	[Nombre],
	[Distrito],
	[Direccion],
	[Telefono]
	FROM [Local]

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectAll_Cliente]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SelectAll_Cliente]

AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IdCliente],
	[Documento],
	[Nombre]
	FROM [Cliente]

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectAll_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SelectAll_Categoria]

AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IdCategoria],
	[Nombre],
	[Imagen]
	FROM [Categoria]

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_Local]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Update_Local]
(
	@IdLocal int,
	@Nombre varchar(50),
	@Distrito varchar(50),
	@Direccion varchar(50),
	@Telefono varchar(50)
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [Local]
	SET [Nombre] = @Nombre, 
		[Distrito] = @Distrito, 
		[Direccion] = @Direccion, 
		[Telefono] = @Telefono
	WHERE [IdLocal] = @IdLocal

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_Cliente]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Update_Cliente]
(
	@IdCliente int,
	@Documento varchar(11),
	@Nombre varchar(150)
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [Cliente]
	SET [Documento] = @Documento, 
		[Nombre] = @Nombre
	WHERE [IdCliente] = @IdCliente

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Update_Categoria]
(
	@IdCategoria int,
	@Nombre varchar(50),
	@Imagen varchar(100)
)
AS
BEGIN
	SET NOCOUNT ON

	UPDATE [Categoria]
	SET [Nombre] = @Nombre, 
		[Imagen] = @Imagen
	WHERE [IdCategoria] = @IdCategoria

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ObtenerUsuarioLogin]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_ObtenerUsuarioLogin]
@Username varchar(100),
@Password varchar(100)
as
begin
select * from Usuario where Username = @Username and [Password]= @Password
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Select_Local]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Select_Local]
(
	@IdLocal int
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IdLocal],
	[Nombre],
	[Distrito],
	[Direccion],
	[Telefono]
	FROM [Local]
	WHERE [IdLocal] = @IdLocal

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Select_Cliente]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Select_Cliente]
(
	@IdCliente int
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IdCliente],
	[Documento],
	[Nombre]
	FROM [Cliente]
	WHERE [IdCliente] = @IdCliente

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Select_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Select_Categoria]
(
	@IdCategoria int
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT
	[IdCategoria],
	[Nombre],
	[Imagen]
	FROM [Categoria]
	WHERE [IdCategoria] = @IdCategoria

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Update_Producto]  
(  
 @IdProducto int,  
 @Nombre varchar(50),  
 @Descripcion varchar(500),  
 @Imagen varchar(150),  
 @IdCategoria int,  
 @Precio decimal(14, 2)  
)  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 UPDATE [Producto]  
 SET [Nombre] = @Nombre,   
  [Descripcion] = @Descripcion,   
  [Imagen] = @Imagen,   
  [IdCategoria] = @IdCategoria,   
  [Precio] = @Precio  
 WHERE [IdProducto] = @IdProducto  
  
 SET NOCOUNT OFF  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Update_Pedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Update_Pedido]    
(    
 @IdPedido int,    
 @IdCliente int,    
 @IdLocal int,    
 @Fecha datetime,    
 @TipoPedido int  
)    
AS    
BEGIN    
 SET NOCOUNT ON    
    
 UPDATE Pedido 
 SET
	IdCliente = @IdCliente,
	IdLocal = @IdLocal,
	Fecha = @Fecha,
	TipoPedido = @TipoPedido
	
	WHERE IdPedido = @IdPedido
    
 SET NOCOUNT OFF    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectAll_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SelectAll_Producto]  
  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 SELECT  
 p.[IdProducto],  
 p.[Nombre],  
 p.[Descripcion],  
 p.[Imagen],  
 p.[IdCategoria],  
 p.[Precio],
 c.Nombre as NombreCategoria  
 FROM [Producto]  p
 inner join Categoria c on c.IdCategoria = p.IdCategoria
  
 SET NOCOUNT OFF  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectAll_Pedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SelectAll_Pedido]       
AS    
BEGIN    
 SET NOCOUNT ON    
    
 SELECT p.IdPedido, p.IdCliente,p.IdLocal,p.IdLocal,p.TipoPedido
 ,c.Nombre as Cliente, l.Nombre as [Local]
  FROM Pedido p 
  INNER JOIN Cliente c on c.IdCliente = p.IdCliente
  INNER JOIN [Local] l on l.IdLocal = p.IdLocal
 SET NOCOUNT OFF    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Select_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Select_Producto]  
(  
 @IdProducto int  
)  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 SELECT  
 p.[IdProducto],  
 p.[Nombre],  
 p.[Descripcion],  
 p.[Imagen],  
 p.[IdCategoria],  
 p.[Precio]  ,
 c.Nombre as NombreCategoria
 FROM [Producto]  p
 inner join Categoria c on c.IdCategoria = p.IdCategoria
 WHERE [IdProducto] = @IdProducto  
  
 SET NOCOUNT OFF  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Select_Pedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Select_Pedido] 
@IdPedido int      
AS    
BEGIN    
 SET NOCOUNT ON    
    
 SELECT p.IdPedido, p.IdCliente,p.IdLocal,p.IdLocal,p.TipoPedido
 ,c.Nombre as Cliente, l.Nombre as [Local]
  FROM Pedido p 
  INNER JOIN Cliente c on c.IdCliente = p.IdCliente
  INNER JOIN [Local] l on l.IdLocal = p.IdLocal
  WHERE IdPedido = @IdPedido
 SET NOCOUNT OFF    
END
GO
/****** Object:  Table [dbo].[DetallePedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePedido](
	[IdPedido] [int] NOT NULL,
	[IdItem] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [numeric](14, 2) NOT NULL,
 CONSTRAINT [PK_DetallePedido] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC,
	[IdItem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (1, 1, 2, 1, CAST(130.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (2, 1, 2, 1, CAST(130.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (4, 1, 4, 6, CAST(10.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (4, 2, 13, 10, CAST(15.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (7, 1, 2, 0, CAST(0.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (7, 2, 2, 6, CAST(8.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (8, 1, 3, 5, CAST(8.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (8, 2, 2, 2, CAST(9.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (9, 1, 4, 3, CAST(5.00 AS Numeric(14, 2)))
INSERT [dbo].[DetallePedido] ([IdPedido], [IdItem], [IdProducto], [Cantidad], [Precio]) VALUES (10, 1, 3, 7, CAST(9.00 AS Numeric(14, 2)))
/****** Object:  StoredProcedure [dbo].[usp_Delete_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Delete_Producto]
(
	@IdProducto int
)
AS
BEGIN
	SET NOCOUNT ON

	DELETE FROM [Producto]
	WHERE [IdProducto] = @IdProducto

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Insert_Producto]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insert_Producto]  
(  
 @IdProducto int OUT,  
 @Nombre varchar(50),  
 @Descripcion varchar(500),  
 @Imagen varchar(150),  
 @IdCategoria int,  
 @Precio decimal(14, 2)  
)  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 INSERT INTO [Producto] ([Nombre], [Descripcion], [Imagen], [IdCategoria], [Precio])   
 VALUES (@Nombre, @Descripcion, @Imagen, @IdCategoria, @Precio)  
  
 SET @IdProducto = SCOPE_IDENTITY()  
  
 SET NOCOUNT OFF  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Insert_Pedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insert_Pedido]    
(    
 @IdPedido int OUT,    
 @IdCliente int,    
 @IdLocal int,    
 @Fecha datetime,    
 @TipoPedido int  
)    
AS    
BEGIN    
 SET NOCOUNT ON    
    
 INSERT INTO Pedido (IdCliente,IdLocal,Fecha,TipoPedido)
 values(@IdCliente,@IdLocal,@Fecha,@TipoPedido) 
    
 SET @IdPedido = SCOPE_IDENTITY()    
    
 SET NOCOUNT OFF    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Reporte_ProductosFechaVenta]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Reporte_ProductosFechaVenta]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT convert(varchar(10),p.Fecha,120) as Fecha, COUNT(dp.IdProducto) as 'Cantidad'
			FROM Pedido p inner join DetallePedido dp on p.IdPedido    = dp.IdPedido
						 -- inner join Producto pd      on pd.IdProducto = dp.IdProducto	
					 
			group by /*dp.IdProducto, */p.Fecha;		
			
			
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Reporte_ProductosDemanda]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Reporte_ProductosDemanda]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT /*dp.IdProducto as IdProducto,*/pd.Nombre, COUNT(dp.IdProducto) as 'Cantidad'
			FROM Pedido p inner join DetallePedido dp on p.IdPedido    = dp.IdPedido
						  inner join Producto pd      on pd.IdProducto = dp.IdProducto	
					 
			group by /*dp.IdProducto, */pd.Nombre;		
			
			
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Reporte_PedidosDiarios]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Reporte_PedidosDiarios]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CONVERT(VARCHAR(10),p.Fecha,120) as Fecha , SUM(ISNULL(dp.Precio,0)) as 'Monto'
			FROM Pedido p inner join DetallePedido dp
					on p.IdPedido = dp.IdPedido
			group by Fecha
			order by Fecha;
			
			
			
			
			
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Insert_DetallePedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Insert_DetallePedido] 
@IdPedido int,
@IdItem int,
@IdProducto int,
@Cantidad int,
@Precio int      
AS    
BEGIN    
 SET NOCOUNT ON    
 
	INSERT INTO DetallePedido(IdPedido,IdItem,IdProducto,Cantidad,Precio)
	VALUES( @IdPedido, @IdItem,@IdProducto,@Cantidad,@Precio )

 SET NOCOUNT OFF    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_Pedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Delete_Pedido] 
@IdPedido int      
AS    
BEGIN    
 SET NOCOUNT ON    
    
 DELETE FROM DetallePedido where IdPedido = @IdPedido
 DELETE FROM Pedido where IdPedido = @IdPedido
 
 SET NOCOUNT OFF    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Delete_DetallePedido_ByIdPedido]    Script Date: 09/05/2013 16:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Delete_DetallePedido_ByIdPedido] 
@IdPedido int      
AS    
BEGIN    
 SET NOCOUNT ON    
    
 DELETE FROM DetallePedido where IdPedido = @IdPedido
 
 SET NOCOUNT OFF    
END
GO
/****** Object:  ForeignKey [FK_Producto_Categoria]    Script Date: 09/05/2013 16:01:50 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
/****** Object:  ForeignKey [FK_Pedido_Cliente]    Script Date: 09/05/2013 16:01:50 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
/****** Object:  ForeignKey [FK_Pedido_Local]    Script Date: 09/05/2013 16:01:50 ******/
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Local] FOREIGN KEY([IdLocal])
REFERENCES [dbo].[Local] ([IdLocal])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Local]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Pedido]    Script Date: 09/05/2013 16:01:50 ******/
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Pedido] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[Pedido] ([IdPedido])
GO
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Pedido]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Producto]    Script Date: 09/05/2013 16:01:50 ******/
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
GO
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Producto]
GO
