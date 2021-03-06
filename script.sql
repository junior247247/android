USE [master]
GO
/****** Object:  Database [PUNTO_DE_ALQUILER]    Script Date: 16/04/2022 0:37:41 ******/
CREATE DATABASE [PUNTO_DE_ALQUILER]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PUNTO_DE_ALQUILER', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PUNTO_DE_ALQUILER.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PUNTO_DE_ALQUILER_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PUNTO_DE_ALQUILER_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PUNTO_DE_ALQUILER].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET ARITHABORT OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET  MULTI_USER 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PUNTO_DE_ALQUILER]
GO
/****** Object:  Table [dbo].[db_caja_abierta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_caja_abierta](
	[id_hora] [int] IDENTITY(1,1) NOT NULL,
	[caja_abierta] [varchar](50) NULL,
	[cierre] [varchar](50) NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [PK_db_caja_abierta] PRIMARY KEY CLUSTERED 
(
	[id_hora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_caja_diaria]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_caja_diaria](
	[id_cajadiaria] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Hora] [varchar](10) NULL,
	[Tipo_de_movimiento] [varchar](50) NULL,
	[Tipo_Operacion] [varchar](50) NULL,
	[Importe] [decimal](18, 2) NULL,
	[Medio_de_pago] [varchar](50) NULL,
	[Tipo_Moneda] [varchar](50) NULL,
	[Valor_de_Cambio] [decimal](18, 2) NULL,
	[idcajero] [int] NULL,
	[Terminal] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[ganancia] [decimal](18, 2) NULL,
	[id_venta] [int] NULL,
	[cierre] [varchar](50) NULL,
 CONSTRAINT [PK_db_caja_diaria] PRIMARY KEY CLUSTERED 
(
	[id_cajadiaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_categorias]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_db_categorias] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_cierre_de_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_cierre_de_caja](
	[id_cierre_daja] [int] IDENTITY(1,1) NOT NULL,
	[caja_abierta] [varchar](50) NULL,
	[caja_cerrada] [varchar](50) NULL,
	[fecha] [date] NULL,
	[fondo] [decimal](18, 2) NULL,
	[turno] [varchar](50) NULL,
	[usuario] [varchar](50) NULL,
	[dinero_en_caja] [decimal](18, 2) NULL,
	[restante] [varchar](50) NULL,
	[devoluciones] [int] NULL,
	[venta_del_dia] [decimal](18, 2) NULL,
	[hora] [varchar](50) NULL,
	[dinero_contado] [decimal](18, 2) NULL,
 CONSTRAINT [PK_db_cierre_de_caja] PRIMARY KEY CLUSTERED 
(
	[id_cierre_daja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_clientes]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_y_apellido] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[celular] [varchar](50) NULL,
	[direccion] [varchar](200) NULL,
	[dni] [varchar](50) NULL,
 CONSTRAINT [PK_db_clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_comprobante_B01]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_comprobante_B01](
	[id_comprobante_] [int] IDENTITY(1,1) NOT NULL,
	[comprobante] [int] NULL,
 CONSTRAINT [PK_db_comprobante_B01] PRIMARY KEY CLUSTERED 
(
	[id_comprobante_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_comprobantes_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_comprobantes_b02](
	[id_comprobante_b02] [int] IDENTITY(1,1) NOT NULL,
	[comprobante_b02] [int] NULL,
 CONSTRAINT [PK_db_comprobantes_b02] PRIMARY KEY CLUSTERED 
(
	[id_comprobante_b02] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_detalle_de_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_detalle_de_venta](
	[id_detalle_de_venta] [int] IDENTITY(1,1) NOT NULL,
	[id_venta] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [decimal](18, 2) NULL,
	[itbis] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
	[precio] [decimal](18, 2) NULL,
	[ganancia] [decimal](18, 2) NULL,
	[estado] [varchar](50) NULL,
	[descuento] [decimal](18, 2) NULL,
	[categoria] [varchar](50) NULL,
 CONSTRAINT [PK_db_detalle_de_venta] PRIMARY KEY CLUSTERED 
(
	[id_detalle_de_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_dinero_en_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_dinero_en_caja](
	[id_dinero_en_caja] [int] IDENTITY(1,1) NOT NULL,
	[dinero_en_caja] [decimal](18, 2) NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [PK_db_dinero_en_caja] PRIMARY KEY CLUSTERED 
(
	[id_dinero_en_caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_fondo]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_fondo](
	[id_fondo] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NULL,
	[fondo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_db_fondo] PRIMARY KEY CLUSTERED 
(
	[id_fondo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_gastos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_gastos](
	[id_gasto] [int] IDENTITY(1,1) NOT NULL,
	[total] [decimal](18, 2) NULL,
	[total_sin_itbis] [decimal](18, 2) NULL,
	[ibtis] [decimal](18, 2) NULL,
	[motivo] [varchar](200) NULL,
	[fecha] [date] NULL,
	[comprobante] [varchar](50) NULL,
 CONSTRAINT [PK_db_gastos] PRIMARY KEY CLUSTERED 
(
	[id_gasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_producto](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](200) NULL,
	[precio_de_compra] [decimal](18, 2) NULL,
	[existencia] [decimal](18, 2) NULL,
	[precio_de_venta] [decimal](18, 2) NULL,
	[punto_de_reorden] [int] NULL,
	[fecha_de_vencimiento] [varchar](50) NULL,
	[imagen] [image] NULL,
	[se_vende_por] [varchar](50) NULL,
	[categoria] [varchar](50) NULL,
	[itbis] [decimal](18, 2) NULL,
	[ganancia] [decimal](18, 2) NULL,
 CONSTRAINT [PK_db_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_total]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_total](
	[id_total] [int] IDENTITY(1,1) NOT NULL,
	[id_venta] [int] NULL,
	[sub_total] [decimal](18, 2) NULL,
	[total] [decimal](18, 2) NULL,
	[cliente] [varchar](50) NULL,
	[descuento] [decimal](18, 2) NULL,
	[recibido] [decimal](18, 2) NULL,
	[cambio] [decimal](18, 2) NULL,
	[total_de_articulos] [int] NULL,
	[le_atendio] [varchar](50) NULL,
	[hora] [varchar](50) NULL,
	[fecha] [date] NULL,
	[turno] [varchar](50) NULL,
	[rnc_cliente] [varchar](50) NULL,
	[ncf] [varchar](50) NULL,
	[nombre_o_empresa] [varchar](50) NULL,
	[pendiente] [decimal](18, 2) NULL,
	[pagado] [decimal](18, 2) NULL,
	[tipo] [varchar](50) NULL,
	[transporte] [decimal](18, 2) NULL,
	[fecha_de_entrega] [varchar](50) NULL,
	[fecha_de_retiro] [varchar](50) NULL,
	[id_cliente] [int] NULL,
	[fecha_entre] [date] NULL,
	[telefono] [varchar](50) NULL,
	[total_itbis] [decimal](18, 0) NULL,
	[direccion] [varchar](200) NULL,
	[cedula] [varchar](50) NULL,
 CONSTRAINT [PK_db_total] PRIMARY KEY CLUSTERED 
(
	[id_total] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_total_gastos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_total_gastos](
	[id_total_gasto] [int] IDENTITY(1,1) NOT NULL,
	[total] [decimal](18, 2) NULL,
	[total_sin_itbis] [decimal](18, 2) NULL,
	[itbis] [decimal](18, 2) NULL,
	[comprobante] [varchar](50) NULL,
	[fecha1] [date] NULL,
	[fecha2] [date] NULL,
 CONSTRAINT [PK_db_total_gastos] PRIMARY KEY CLUSTERED 
(
	[id_total_gasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_ultimo_comprobante_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ultimo_comprobante_b02](
	[id_ultimo_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[ultimo_comprobante_b02] [int] NULL,
 CONSTRAINT [PK_db_ultimo_comprobante_b02] PRIMARY KEY CLUSTERED 
(
	[id_ultimo_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_ultimo_disponible_B01]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ultimo_disponible_B01](
	[id_ultimo_disponible] [int] IDENTITY(1,1) NOT NULL,
	[ultimo_disponible] [int] NULL,
 CONSTRAINT [PK_db_ultimo_disponible_B01] PRIMARY KEY CLUSTERED 
(
	[id_ultimo_disponible] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_usuario]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[nombre_de_usuario] [varchar](50) NULL,
	[turno] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[permiso] [varchar](50) NULL,
	[imagen] [image] NULL,
	[apellido] [varchar](50) NULL,
 CONSTRAINT [PK_db_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_venta](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_db_venta] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_venta_final]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_venta_final](
	[id_venta_final] [int] IDENTITY(1,1) NOT NULL,
	[cliente] [varchar](50) NULL,
	[articulos] [int] NULL,
	[importe] [decimal](18, 2) NULL,
	[documento] [varchar](50) NULL,
	[descuento] [decimal](18, 2) NULL,
	[condicion] [varchar](50) NULL,
	[fecha] [date] NULL,
	[id_venta] [int] NULL,
	[pendiente] [decimal](18, 2) NULL,
	[pagado] [decimal](18, 2) NULL,
	[tipo] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[categoria] [varchar](50) NULL,
 CONSTRAINT [PK_db_venta_final] PRIMARY KEY CLUSTERED 
(
	[id_venta_final] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[actualizar_campo_en_db_detalle_de_venta_a_vendido]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_campo_en_db_detalle_de_venta_a_vendido]
@id_venta int
as
update db_detalle_de_venta set estado='VENDIDO' where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[actualizar_dinero_en_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_dinero_en_caja]
@id_usuaro int,
@dinero decimal(18,2)
as
update db_dinero_en_caja set dinero_en_caja=dinero_en_caja+@dinero where id_usuario=@id_usuaro










GO
/****** Object:  StoredProcedure [dbo].[actualizar_estados_articulos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_estados_articulos]
@id_venta int
as
update db_detalle_de_venta set estado='VENDIDO' where id_venta=@id_venta 










GO
/****** Object:  StoredProcedure [dbo].[actualizar_estados_articulos_a_servicios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_estados_articulos_a_servicios]
@id_venta int
as
update db_detalle_de_venta set estado='EN ESPERA' where id_venta=@id_venta








GO
/****** Object:  StoredProcedure [dbo].[actualizar_fondo_de_la_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_fondo_de_la_caja]
@fondo decimal(18,2),
@id_usuario int
as
update db_fondo set fondo=@fondo where id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAR_MONTO_EN_PENDIENTE]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ACTUALIZAR_MONTO_EN_PENDIENTE]
@id_venta int,
@monto decimal(18,2),
@pendiente decimal(18,2)
as
update db_venta_final set pendiente=@pendiente,pagado=pagado+@monto where id_venta=@id_venta




GO
/****** Object:  StoredProcedure [dbo].[actualizar_monto_si_exite_el_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_monto_si_exite_el_producto]
@id_producto int,
@id_venta int,
@total decimal(18,2),
@itbis decimal(18,2),
@cantidad decimal(18,2),
@ganancia decimal(18,2)
as
update db_detalle_de_venta set cantidad=cantidad+@cantidad,total=total+@total,itbis=itbis+@itbis,ganancia=ganancia+@ganancia where id_producto=@id_producto and id_venta=@id_venta










GO
/****** Object:  StoredProcedure [dbo].[actualizar_montos_en_db_total]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[actualizar_montos_en_db_total]
@id_venta int,
@monto decimal(18,2),
@recibido decimal(18,2),
@cambio decimal(18,2),
@fecha date,
@pendiente decimal(18,2)
as
update db_total set pendiente=@pendiente,pagado=pagado+@monto,cambio=@cambio,recibido=@recibido,fecha=@fecha where id_venta=@id_venta





GO
/****** Object:  StoredProcedure [dbo].[actualizar_pendiente_en_total]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_pendiente_en_total]
@id_venta int,
@pendiente decimal(18,2),
@pagado decimal(18,2)
as
update db_total set pendiente=@pendiente,pagado=pagado+@pagado where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[actualizar_ultimo_comprobante_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_ultimo_comprobante_b02]
@id_ultimo_comprobante int,
@ultimo_comprobante int
as
update db_ultimo_comprobante_b02 set ultimo_comprobante_b02=@ultimo_comprobante where id_ultimo_comprobante=@id_ultimo_comprobante










GO
/****** Object:  StoredProcedure [dbo].[actualizar_ultimo_disponible]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[actualizar_ultimo_disponible]
@id_ultimo_disponible int,
@ultimo_disponible int
as
update db_ultimo_disponible_B01 set ultimo_disponible=@ultimo_disponible where id_ultimo_disponible=@id_ultimo_disponible










GO
/****** Object:  StoredProcedure [dbo].[AGARRA_LOS_ARTICULOS]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AGARRA_LOS_ARTICULOS]
@id_venta int
as
select id_producto,cantidad from db_detalle_de_venta where id_venta=@id_venta


GO
/****** Object:  StoredProcedure [dbo].[anular_en_caja_diaria]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[anular_en_caja_diaria]
@id_venta int,
@importe decimal(18,2),
@ganancia decimal(18,2),
@id_usuario int
as
update db_caja_diaria set Estado='ANULADO',Tipo_de_movimiento='SALIDA', Importe=Importe-@importe,ganancia=ganancia-@ganancia where id_cajadiaria=@id_venta and idcajero=@id_usuario




GO
/****** Object:  StoredProcedure [dbo].[anular_venta_reservacion]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[anular_venta_reservacion]
@id_venta int,
@monto decimal(18,2)

as
update db_venta_final set pagado=pagado-@monto,pendiente=pendiente+@monto where id_venta=@id_venta




GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aumentar_stock]
@id_producto int,
@cantidad decimal(18,2)
as
update db_producto set existencia=existencia+@cantidad where id_producto=@id_producto










GO
/****** Object:  StoredProcedure [dbo].[aumentar_tabla_db_total]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aumentar_tabla_db_total]
@id_venta int,
@pendiente decimal(18,2),
@pagado decimal(18,2)
as
update db_total set pendiente=pendiente+@pendiente,pagado=pagado-@pagado where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[aumentar_tabla_db_venta_final]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aumentar_tabla_db_venta_final]
@id_venta int,
@pendiente decimal(18,2),
@pagado decimal(18,2)
as
update db_venta_final set pendiente=pendiente+@pendiente,pagado=pagado-@pagado where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[borrar_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[borrar_producto]
@id_producto int
as
delete from db_producto where id_producto=@id_producto











GO
/****** Object:  StoredProcedure [dbo].[buscar_a_entrar_hoy]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_a_entrar_hoy]
@filtro varchar(200)
as
select dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta WHERE dbo.db_venta_final.categoria='SERVICIO' and dbo.db_venta_final.tipo='SALIDA' and day(dbo.db_total.fecha_entre)= day(GETDATE()) and MONTH(dbo.db_total.fecha_entre)= MONTH(GETDATE()) and year(dbo.db_total.fecha_entre)=year(GETDATE()) and dbo.db_venta_final.cliente like @filtro +'%' order by dbo.db_venta_final.id_venta desc



GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscar_cliente]
@filtro varchar(200)
as
select id_cliente,nombre_y_apellido as Nombre,dni as Dni,telefono as Telefono,celular as Celular,direccion as Direccion from db_clientes where nombre_y_apellido like @filtro + '%' order by id_cliente desc










GO
/****** Object:  StoredProcedure [dbo].[buscar_facturas_vencidas_por_fechas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_facturas_vencidas_por_fechas]
@filtro varchar(200)
as
select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final   inner join dbo.db_total on dbo.db_venta_final.id_venta=dbo.db_total.id_venta  WHERE dbo.db_venta_final.condicion='RESERVACION' and DATEDIFF(DAY,CONVERT(date, dbo.db_total.fecha_entre, 103), CONVERT(date, GETDATE(), 103))<=0 and dbo.db_venta_final.cliente like @filtro +'%' order by dbo.db_venta_final.id_venta desc




GO
/****** Object:  StoredProcedure [dbo].[buscar_gastos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscar_gastos]
@comprobante varchar(50),
@fecha1 date,
@fecha2 date
as
select id_gasto AS ID,fecha AS FECHA,motivo AS MOTIVO,comprobante as COMPROBANTE,total as TOTAL,total_sin_itbis as TOTAL_SIN_ITBIS,ibtis as ITBIS from db_gastos where fecha between @fecha1 and @fecha2  and comprobante like @comprobante +'%' order by id_gasto desc






GO
/****** Object:  StoredProcedure [dbo].[buscar_por_fecha_reservaciones]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_por_fecha_reservaciones]
@fecha1 date,
@fecha2 date
as
 select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final   inner join dbo.db_total on dbo.db_venta_final.id_venta=dbo.db_total.id_venta  WHERE dbo.db_venta_final.condicion='RESERVACION'  and dbo.db_venta_final.fecha between @fecha1 and @fecha2 order by dbo.db_venta_final.id_venta desc






GO
/****** Object:  StoredProcedure [dbo].[buscar_por_fechas_resrvaciones_vencidas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_por_fechas_resrvaciones_vencidas]
@fecha1 date,
@fecha2 date
as
select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final   inner join dbo.db_total on dbo.db_venta_final.id_venta=dbo.db_total.id_venta  WHERE dbo.db_venta_final.condicion='RESERVACION'  and DATEDIFF(DAY,CONVERT(date, dbo.db_total.fecha_entre, 103), CONVERT(date, GETDATE(), 103))<=0 and dbo.db_total.fecha_entre between @fecha1 and @fecha2 order by dbo.db_venta_final.id_venta desc









GO
/****** Object:  StoredProcedure [dbo].[buscar_por_nombre_reservaciones]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_por_nombre_reservaciones]
@filtro varchar(200)
as
select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final   inner join dbo.db_total on dbo.db_venta_final.id_venta=dbo.db_total.id_venta  WHERE dbo.db_venta_final.condicion='RESERVACION' and dbo.db_venta_final.cliente like @filtro +'%' order by dbo.db_venta_final.id_venta desc








GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_POR_VENTA_ID]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUSCAR_POR_VENTA_ID]
@filtro varchar(200)
as
select id_venta as ID_FACTURA,fecha AS FECHA,cliente as CLIENTE, telefono as Telefono,importe as IMPORTE,descuento as Descuento,documento as TIPO_DE_FACTURA,condicion as CONDICION,pendiente as Pendiente,pagado as Pagado from db_venta_final where condicion='CONTADO' AND id_venta like @filtro +'%' order by id_venta_final desc











GO
/****** Object:  StoredProcedure [dbo].[buscar_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_producto]
@filtro varchar(200)
as
select id_producto,description as Description ,precio_de_compra as Precio_de_compra,precio_de_venta as Precio_de_venta,existencia as Existencia,punto_de_reorden as Punto_de_reorden,fecha_de_vencimiento as Fecha_de_vencimiento,se_vende_por as Se_vende_por,imagen,categoria as Categoria from db_producto where description  like @filtro + '%' order by id_producto desc






GO
/****** Object:  StoredProcedure [dbo].[buscar_productos_EN_VENTANA]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_productos_EN_VENTANA]
@filtro varchar(200)
as
select id_producto,description as Description ,precio_de_venta as Precio,existencia as Existencia,se_vende_por,categoria ,fecha_de_vencimiento as Fecha_de_vencimiento,itbis,ganancia from db_producto where description like @filtro +'%' order by id_producto desc










GO
/****** Object:  StoredProcedure [dbo].[buscar_productos_para_vender]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_productos_para_vender]
@filtro varchar(200)
as
select description,id_producto,precio_de_venta,existencia,fecha_de_vencimiento,se_vende_por,categoria,itbis,ganancia from db_producto where description like @filtro +'%' order by id_producto desc










GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_SALIDAS]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUSCAR_SALIDAS]
@filtro varchar(200)
AS
select dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta  WHERE dbo.db_venta_final.categoria='SERVICIO' and dbo.db_venta_final.tipo='SALIDA' and dbo.db_venta_final.cliente like @filtro +'%'  order by dbo.db_venta_final.id_venta desc




GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_SALIDAS_por_fecha]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUSCAR_SALIDAS_por_fecha]
@fecha1 date,
@fecha2 date
AS
select dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta  WHERE dbo.db_venta_final.categoria='SERVICIO' and dbo.db_venta_final.tipo='SALIDA' and dbo.db_venta_final.fecha between @fecha1 and @fecha2 order by dbo.db_venta_final.id_venta desc



GO
/****** Object:  StoredProcedure [dbo].[buscar_usuarios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_usuarios] 
@filtro varchar(200)
as
select id_usuario,nombre_de_usuario as NOMBRE ,apellido as APELLIDO,usuario AS USUARIO,turno as TURNO, password as PASSWORD, permiso as PERMISO,imagen  from db_usuario where nombre_de_usuario like @filtro +'%' order by id_usuario desc




GO
/****** Object:  StoredProcedure [dbo].[buscar_venta_final]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_venta_final]
@filtro varchar(200)
as
select id_venta as ID_FACTURA,fecha AS FECHA,cliente as CLIENTE,telefono as Telefono, importe as IMPORTE,descuento as Descuento,documento as TIPO_DE_FACTURA,condicion as CONDICION,pendiente as Pendiente,pagado as Pagado from db_venta_final where condicion='CONTADO' AND cliente like @filtro +'%' order by id_venta_final desc











GO
/****** Object:  StoredProcedure [dbo].[darle_entrada]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[darle_entrada]
@id_venta int
as
update db_venta_final set tipo='ENTRADA' where id_venta=@id_venta








GO
/****** Object:  StoredProcedure [dbo].[darle_permisos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[darle_permisos]
@id_usuario int
as
select permiso from db_usuario where id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[darle_salida]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[darle_salida]
@id_venta int
as
update db_venta_final set tipo='SALIDA' where id_venta=@id_venta








GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[disminuir_stock]
@id_proucto int,
@cantidad decimal(18,2)
as
update db_producto set existencia=existencia-@cantidad where id_producto=@id_proucto











GO
/****** Object:  StoredProcedure [dbo].[editar_cliente]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_cliente]
@id_cliente int,
@nombre_y_apellido varchar(50),
@telefono varchar(50),
@celular varchar(50),
@direccion varchar(200),
@dni varchar(50)
as
update  db_clientes set nombre_y_apellido=@nombre_y_apellido,telefono=@telefono,celular=@celular,direccion=@direccion,dni=@dni where id_cliente=@id_cliente










GO
/****** Object:  StoredProcedure [dbo].[editar_gasto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_gasto]
@id_gasto int,
@total decimal(18,2),
@total_sin_itbis decimal(18,2),
@itbis decimal(18,2),
@motivo varchar(200),
@comprobante varchar(50)
as
update db_gastos set total=@total,total_sin_itbis=@total_sin_itbis,ibtis=@itbis,motivo=@motivo,comprobante=@comprobante where id_gasto=@id_gasto





GO
/****** Object:  StoredProcedure [dbo].[editar_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_producto]
@id_producto int,
@description varchar(200),
@precio_de_compra decimal(18,2),
@existencia decimal(18,2),
@precio_de_venta decimal(18,2),
@punto_de_reorden int,
@fecha_de_vencimiento varchar(50),
@imagen image,
@se_vende_por varchar(50),
@categoria varchar(50),
@itbis decimal(18,2),
@ganancia decimal(18,2)
as
update db_producto set ganancia=@ganancia,itbis=@itbis,description=@description,precio_de_compra=@precio_de_compra,existencia=@existencia,precio_de_venta=@precio_de_venta,punto_de_reorden=@punto_de_reorden,fecha_de_vencimiento=@fecha_de_vencimiento,imagen=@imagen,categoria=@categoria where id_producto=@id_producto











GO
/****** Object:  StoredProcedure [dbo].[editar_usuarios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_usuarios] 
@id_usaurio int,
@nombre_usaurio varchar(50),
@usuario varchar(50),
@turno varchar(50),
@permiso varchar(50),
@imagen image,
@password varchar(50),
@apellido varchar(50)
as
update db_usuario set apellido=@apellido,nombre_de_usuario=@nombre_usaurio,usuario=@usuario,turno=@turno,permiso=@permiso,imagen=@imagen,password=@password where id_usuario=@id_usaurio




GO
/****** Object:  StoredProcedure [dbo].[eliminar_articulos_de_la_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_articulos_de_la_venta]
@id_venta int
as
delete from db_detalle_de_venta where id_venta=@id_venta









GO
/****** Object:  StoredProcedure [dbo].[eliminar_cliente]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_cliente]
@id_cliente int
as
delete from db_clientes where id_cliente=@id_cliente










GO
/****** Object:  StoredProcedure [dbo].[eliminar_comprobante_b01_usado]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_comprobante_b01_usado]
@comprobante int
as
delete from db_comprobante_B01 where comprobante=@comprobante










GO
/****** Object:  StoredProcedure [dbo].[eliminar_comprobante_b02_usado]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_comprobante_b02_usado]
@comprobante int
as
delete from db_comprobantes_b02 where comprobante_b02=@comprobante










GO
/****** Object:  StoredProcedure [dbo].[eliminar_detalle]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_detalle]
@id_venta int
as
delete from db_detalle_de_venta where id_venta=@id_venta





GO
/****** Object:  StoredProcedure [dbo].[eliminar_productos_detalle_de_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_productos_detalle_de_venta]
@id_venta int,
@id_detalle_de_venta int
as
delete from db_detalle_de_venta where id_venta=@id_venta and id_detalle_de_venta=@id_detalle_de_venta




GO
/****** Object:  StoredProcedure [dbo].[eliminar_todos_los_articulos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_todos_los_articulos] 
@id_venta int
as
delete from db_detalle_de_venta where id_venta=@id_venta










GO
/****** Object:  StoredProcedure [dbo].[eliminar_total]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_total]
@id_venta int
as
delete from db_total where id_venta=@id_venta





GO
/****** Object:  StoredProcedure [dbo].[eliminar_usuario]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_usuario] 
@id_usuario int
as
delete from db_usuario where id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[eliminar_venta] 
@id_venta int
as
delete from db_venta_final where id_venta=@id_venta





GO
/****** Object:  StoredProcedure [dbo].[elimnar_gasto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[elimnar_gasto]
@id_gasto int
as
delete from db_gastos where id_gasto=@id_gasto



GO
/****** Object:  StoredProcedure [dbo].[facturas_emitidas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[facturas_emitidas]
as
select * from db_venta_final order by id_venta DESC





GO
/****** Object:  StoredProcedure [dbo].[gastos_por_fechas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[gastos_por_fechas]
@fecha1 date,
@fecha2 date
as
select sum(total) as gasto from db_gastos where fecha between @fecha1 and @fecha2



GO
/****** Object:  StoredProcedure [dbo].[iniciar_sesion]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[iniciar_sesion]
@usuario varchar(50)
as
select id_usuario,usuario,nombre_de_usuario,password,permiso,imagen,apellido,turno from db_usuario where usuario=@usuario



GO
/****** Object:  StoredProcedure [dbo].[INSERTA_VENTA_TOTAL_CON_RNC]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTA_VENTA_TOTAL_CON_RNC]
@id_venta int,
@sub_total decimal(18,2),
@total decimal(18,2),
@cliente varchar(50),
@descuento decimal(18,2),
@recibido decimal(18,2),
@total_articulos int,
@le_atendio varchar(50),
@hora varchar(50),
@fecha date,
@turno varchar(50),
@rnc_cliente varchar(50),
@ncf varchar(50),
@nombre_o_empresa varchar(50),
@pendiente decimal(18,2),
@pagado decimal(18,2),
@tipo varchar(50),
@transporte decimal(18,2),
@fecha_de_entrega varchar(50),
@fecha_de_retiro varchar(50),
@cambio decimal(18,2),
@id_cliente int,
@fecha_entr date,
@telefono varchar(50),
@total_itbis decimal(18,2),
@cedula varchar(50),
@direccion varchar(200)
as
insert into db_total(id_venta,sub_total,total,cliente,descuento,recibido,total_de_articulos,le_atendio,hora,fecha,rnc_cliente,ncf,nombre_o_empresa,pendiente,pagado,tipo,transporte,fecha_de_entrega,fecha_de_retiro,cambio,turno,id_cliente,fecha_entre,telefono,total_itbis,cedula,direccion)values(@id_venta,@sub_total,@total,@cliente,@descuento,@recibido,@total_articulos,@le_atendio,@hora,@fecha,@rnc_cliente,@ncf,@nombre_o_empresa,@pendiente,@pagado,@tipo,@transporte,@fecha_de_entrega,@fecha_de_retiro,@cambio,@turno,@id_cliente,@fecha_entr,@telefono,@total_itbis,@cedula,@direccion)





GO
/****** Object:  StoredProcedure [dbo].[insertar_caja_diaria]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_caja_diaria]
@fecha date,
@hora varchar(10),
@tipo_de_movimiento varchar(50),
@tipo_operacion varchar(50),
@importe decimal(18,2),
@tipo_de_moneda varchar(50),
@valor_del_cambio decimal(18,2),
@id_cajero int,
@terminal varchar(50),
@estado varchar(50),
@ganancia decimal(18,2),
@id_venta int,
@medio_de_pago varchar(50)
as
insert into db_caja_diaria(Fecha,Hora,Tipo_de_movimiento,Tipo_Operacion,Importe,Medio_de_pago,Tipo_Moneda,Valor_de_Cambio,idcajero,Terminal,Estado,ganancia,id_venta,cierre)values(@Fecha,@Hora,@Tipo_de_movimiento,@Tipo_Operacion,@Importe,@medio_de_pago,@tipo_de_moneda,@valor_del_cambio,@id_cajero,@terminal,@estado,@ganancia,@id_venta,'SIN CIERRE')










GO
/****** Object:  StoredProcedure [dbo].[insertar_categoria]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_categoria]
@nombre varchar(50)
as
insert into db_categorias(nombre)values(@nombre)










GO
/****** Object:  StoredProcedure [dbo].[insertar_cierre_de_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_cierre_de_caja]
@caja_abierta varchar(50),
@caja_cerrada varchar(50),
@fecha date,
@fondo decimal(18,2),
@turno varchar(50),
@usuario varchar(50),
@restante varchar(50),
@devoluciones int,
@venta_del_dia decimal(18,2),
@hora varchar(50),
@dinero_de_la_caja decimal(18,2),
@dinero_contado decimal(18,2)
as
insert into db_cierre_de_caja(caja_abierta,caja_cerrada,fecha,fondo,turno,usuario,restante,devoluciones,venta_del_dia,hora,dinero_en_caja,dinero_contado)values(@caja_abierta,@caja_cerrada,@fecha,@fondo,@turno,@usuario,@restante,@devoluciones,@venta_del_dia,@hora,@dinero_de_la_caja,@dinero_contado)



GO
/****** Object:  StoredProcedure [dbo].[insertar_cliente]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_cliente]
@nombre_y_apellido varchar(50),
@telefono varchar(50),
@celular varchar(50),
@direccion varchar(200),
@dni varchar(50)
as
insert into db_clientes(nombre_y_apellido,telefono,celular,direccion,dni)values(@nombre_y_apellido,@telefono,@celular,@direccion,@dni)










GO
/****** Object:  StoredProcedure [dbo].[insertar_comprobante_B01]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_comprobante_B01]
@comprobante_numero int
as
insert into db_comprobante_B01(comprobante)values(@comprobante_numero)










GO
/****** Object:  StoredProcedure [dbo].[insertar_comprobantes_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_comprobantes_b02]
@comprobante int
as
insert into db_comprobantes_b02(comprobante_b02)values(@comprobante)










GO
/****** Object:  StoredProcedure [dbo].[insertar_detalle_e_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_detalle_e_venta]
@id_venta int,
@id_producto int,
@cantidad decimal(18,2),
@itbis decimal(18,2),
@total decimal(18,2),
@precio decimal(18,2),
@estado varchar(50),
@categoria varchar(50),
@ganancia decimal(18,2)
as
insert into db_detalle_de_venta(id_venta,id_producto,cantidad,itbis,total,precio,ganancia,estado,categoria)values(@id_venta,@id_producto,@cantidad,@itbis,@total,@precio,@ganancia,@estado,@categoria)










GO
/****** Object:  StoredProcedure [dbo].[insertar_dinero_en_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_dinero_en_caja]
@id_usuario int,
@dinero_en_caja decimal(18,2)
as
insert into db_dinero_en_caja(id_usuario,dinero_en_caja)values(@id_usuario,@dinero_en_caja)










GO
/****** Object:  StoredProcedure [dbo].[insertar_fondo_de_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_fondo_de_caja]
@id_usuario int,
@fondo_de_la_caja decimal(18,2)
as
insert into db_fondo(id_usuario,fondo)values(@id_usuario,@fondo_de_la_caja)










GO
/****** Object:  StoredProcedure [dbo].[insertar_fondo_de_usuario]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_fondo_de_usuario]
@id_usuario int,
@fondo decimal(18,2)
as
insert into db_fondo(id_usuario,fondo)values(@id_usuario,@fondo)



GO
/****** Object:  StoredProcedure [dbo].[insertar_gastos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_gastos]
@total decimal(18,2),
@total_sin_itbis decimal(18,2),
@itbis decimal(18,2),
@motivo varchar(200),
@fecha date,
@comprobante varchar(50)
as
insert into db_gastos(total,total_sin_itbis,ibtis,motivo,fecha,comprobante)values(@total,@total_sin_itbis,@itbis,@motivo,@fecha,@comprobante)






GO
/****** Object:  StoredProcedure [dbo].[insertar_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_producto] 
@description varchar(200),
@precio_de_compra decimal(18,2),
@existencia decimal(18,2),
@precio_de_venta decimal(18,2),
@punto_de_reorden int,
@fecha_de_vencimiento varchar(50),
@imagen image,
@se_vende_por varchar(50),
@categoria varchar(50),
@itbis decimal(18,2),
@ganancia decimal(18,2)
as
insert into db_producto(description,precio_de_compra,existencia,precio_de_venta,punto_de_reorden,fecha_de_vencimiento,imagen,se_vende_por,categoria,itbis,ganancia)values(@description,@precio_de_compra,@existencia,@precio_de_venta,@punto_de_reorden,@fecha_de_vencimiento,@imagen,@se_vende_por,@categoria,@itbis,@ganancia)











GO
/****** Object:  StoredProcedure [dbo].[insertar_total_gastos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_total_gastos]
@comprobante varchar(50),
@total decimal(18,2),
@total_sin_itbis decimal(18,2),
@itbis decimal(18,2),
@fecha1 date,
@fecha2 date
as
insert into db_total_gastos(total,total_sin_itbis,itbis,comprobante,fecha1,fecha2) values(@total,@total_sin_itbis,@itbis,@comprobante,@fecha1,@fecha2)





GO
/****** Object:  StoredProcedure [dbo].[insertar_ultimo_comprobante_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_ultimo_comprobante_b02]
@ultimo_comprobante int
as
insert into db_ultimo_comprobante_b02(ultimo_comprobante_b02)values(@ultimo_comprobante)










GO
/****** Object:  StoredProcedure [dbo].[insertar_ultimo_disponible_b01]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_ultimo_disponible_b01]
@ultimo_disponible int
as
insert into db_ultimo_disponible_B01(ultimo_disponible)values(@ultimo_disponible)










GO
/****** Object:  StoredProcedure [dbo].[insertar_usuario]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_usuario]
@usuario varchar(50),
@nombre_de_usuario varchar(50),
@turno varchar(50),
@permiso varchar(50),
@imagen image,
@password varchar(50),
@apellido varchar(50)
as
insert into db_usuario(usuario,nombre_de_usuario,turno,password,permiso,imagen,apellido)values(@usuario,@nombre_de_usuario,@turno,@password,@permiso,@imagen,@apellido)




GO
/****** Object:  StoredProcedure [dbo].[insertar_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertar_venta]
@fecha date
as
insert into db_venta(fecha)values(@fecha)











GO
/****** Object:  StoredProcedure [dbo].[insertar_venta_final]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_venta_final]
@id_venta int,
@importe decimal(18,2),
@documento varchar(50),
@descuento decimal(18,2),
@condicion varchar(50),
@fecha date,
@pendiente decimal(18,2),
@pagado decimal(18,2),
@cliente varchar(50),
@tipo varchar(50),
@telefono varchar(50),
@categoria varchar(50)
as
insert into db_venta_final(id_venta,importe,documento,descuento,condicion,fecha,pendiente,pagado,cliente,tipo,telefono,categoria)values(@id_venta,@importe,@documento,@descuento,@condicion,@fecha,@pendiente,@pagado,@cliente,@tipo,@telefono,@categoria)



GO
/****** Object:  StoredProcedure [dbo].[insetar_hora_caja_abierta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insetar_hora_caja_abierta]
@id_usuario int,
@caja_abierta varchar(50)
as
insert into db_caja_abierta(id_usuario,caja_abierta,cierre)values(@id_usuario,@caja_abierta,'SIN CIERRE')



GO
/****** Object:  StoredProcedure [dbo].[mostrar_categorias]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_categorias]
as
select id_categoria as ID,nombre as Nombre from db_categorias order by id_categoria desc










GO
/****** Object:  StoredProcedure [dbo].[mostrar_clientes]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_clientes]
as
select id_cliente,nombre_y_apellido as Nombre,dni as Dni,telefono as Telefono,celular as Celular,direccion as Direccion from db_clientes order by id_cliente desc










GO
/****** Object:  StoredProcedure [dbo].[mostrar_datos_del_cliente]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_datos_del_cliente]
@id_venta int
as
select direccion,cliente,telefono from db_total where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[mostrar_detalle_articulos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_detalle_articulos]
@id_venta int
as
select dbo.db_detalle_de_venta.id_producto,dbo.db_detalle_de_venta.id_venta,dbo.db_detalle_de_venta.id_detalle_de_venta,dbo.db_producto.description as Descripcion,dbo.db_detalle_de_venta.precio as Precio,dbo.db_detalle_de_venta.cantidad as Cantidad,dbo.db_detalle_de_venta.total as Total,dbo.db_detalle_de_venta.ganancia,dbo.db_detalle_de_venta.categoria,dbo.db_detalle_de_venta.itbis from db_producto inner join dbo.db_detalle_de_venta on dbo.db_producto.id_producto=dbo.db_detalle_de_venta.id_producto where dbo.db_detalle_de_venta.id_venta=@id_venta





GO
/****** Object:  StoredProcedure [dbo].[mostrar_dinero_de_la_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_dinero_de_la_caja]
@id_usuario int
as
select dinero_en_caja from db_dinero_en_caja where id_usuario=@id_usuario




GO
/****** Object:  StoredProcedure [dbo].[mostrar_gatos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_gatos]
as
select id_gasto AS ID,fecha AS FECHA,motivo AS MOTIVO,comprobante as COMPROBANTE,total as TOTAL,total_sin_itbis as TOTAL_SIN_ITBIS,ibtis as ITBIS from db_gastos order by id_gasto desc






GO
/****** Object:  StoredProcedure [dbo].[mostrar_id_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_id_venta]
as
select  id_venta from db_venta 











GO
/****** Object:  StoredProcedure [dbo].[mostrar_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_producto]
as
select id_producto,description as Description ,precio_de_compra as Precio_de_compra,precio_de_venta as Precio_de_venta,existencia as Existencia,punto_de_reorden as Punto_de_reorden,fecha_de_vencimiento as Fecha_de_vencimiento,se_vende_por as Se_vende_por,imagen,categoria as Categoria from db_producto order by id_producto desc











GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_para_vender]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_para_vender]
as
select id_producto,description as Description ,precio_de_venta as Precio,existencia as Existencia,se_vende_por,categoria ,fecha_de_vencimiento as Fecha_de_vencimiento,itbis,ganancia from db_producto order by id_producto desc










GO
/****** Object:  StoredProcedure [dbo].[mostrar_reporte_cierre_de_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_reporte_cierre_de_caja]
@id_cierre int
as
select id_cierre_daja,caja_abierta,caja_cerrada,fecha,fondo,turno,usuario,dinero_en_caja,restante,devoluciones,venta_del_dia,hora,dinero_contado from db_cierre_de_caja where id_cierre_daja=@id_cierre



GO
/****** Object:  StoredProcedure [dbo].[mostrar_reporte_gastos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_reporte_gastos]
@comprobante varchar(50),
@id_gasto_total int
as
select dbo.db_total_gastos.comprobante,dbo.db_total_gastos.fecha1,dbo.db_total_gastos.fecha2,dbo.db_total_gastos.itbis as itbis_total ,dbo.db_total_gastos.total,dbo.db_total_gastos.total_sin_itbis,dbo.db_gastos.fecha,dbo.db_gastos.ibtis,dbo.db_gastos.motivo,dbo.db_gastos.total as Total_parcial,dbo.db_gastos.ibtis as itbi_parcial, dbo.db_gastos.total_sin_itbis as total_sin_itbis_pacrial from dbo.db_gastos inner join dbo.db_total_gastos on dbo.db_total_gastos.id_total_gasto=@id_gasto_total where dbo.db_gastos.comprobante=@comprobante






GO
/****** Object:  StoredProcedure [dbo].[mostrar_reporte_ventas_y_servicios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_reporte_ventas_y_servicios]
@id_venta int
as
select dbo.db_total.pendiente,dbo.db_total.pagado,dbo.db_total.tipo,dbo.db_total.cedula,dbo.db_total.direccion,dbo.db_total.le_atendio,dbo.db_total.recibido,dbo.db_total.total_itbis,dbo.db_total.total_de_articulos,dbo.db_total.transporte,dbo.db_total.hora,dbo.db_total.id_venta,dbo.db_total.fecha,dbo.db_producto.description,dbo.db_detalle_de_venta.cantidad,dbo.db_detalle_de_venta.precio,dbo.db_detalle_de_venta.total as total_parcial,dbo.db_detalle_de_venta.itbis,dbo.db_total.cambio,dbo.db_total.cliente,dbo.db_total.descuento,dbo.db_total.fecha_de_entrega,dbo.db_total.fecha_de_retiro,dbo.db_total.ncf,dbo.db_total.rnc_cliente,dbo.db_total.nombre_o_empresa,dbo.db_total.sub_total,dbo.db_total.total,dbo.db_total.turno from db_detalle_de_venta inner join dbo.db_producto on dbo.db_producto.id_producto=dbo.db_detalle_de_venta.id_producto inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_detalle_de_venta.id_venta where dbo.db_detalle_de_venta.id_venta=@id_venta







GO
/****** Object:  StoredProcedure [dbo].[mostrar_reservaciones]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_reservaciones]
as
select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final
inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta  WHERE  dbo.db_venta_final.condicion='RESERVACION' order by dbo.db_venta_final.id_venta desc




GO
/****** Object:  StoredProcedure [dbo].[mostrar_reservaciones_vencidas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_reservaciones_vencidas]
as
select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final  inner join dbo.db_total on dbo.db_venta_final.id_venta=dbo.db_total.id_venta  WHERE dbo.db_venta_final.condicion='RESERVACION' and DATEDIFF(DAY,CONVERT(date, dbo.db_total.fecha_entre, 103), CONVERT(date, GETDATE(), 103)) <=0 order by dbo.db_venta_final.id_venta desc






GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_SALIDAS]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_SALIDAS]
AS
select dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta WHERE  dbo.db_venta_final.id_venta=dbo.db_total.id_venta and dbo.db_venta_final.categoria='SERVICIO' and dbo.db_venta_final.tipo='SALIDA' order by dbo.db_venta_final.id_venta desc



GO
/****** Object:  StoredProcedure [dbo].[mostrar_salidas_que_les_tocas_entregar_hoy]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_salidas_que_les_tocas_entregar_hoy]
as
select dbo.db_venta_final.id_venta,dbo.db_venta_final.cliente from db_venta_final inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta where dbo.db_venta_final.categoria='SERVICIO' and dbo.db_total.id_venta=dbo.db_venta_final.id_venta and dbo.db_venta_final.tipo='SALIDA' and day(fecha_entre) = day(GETDATE()) and MONTH(fecha_entre)= MONTH(GETDATE()) and YEAR(fecha_entre)=YEAR(GETDATE()) order by dbo.db_venta_final.id_venta desc



GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuarios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_usuarios] 
as
select id_usuario,nombre_de_usuario as NOMBRE ,apellido as APELLIDO,usuario AS USUARIO,turno as TURNO, password as PASSWORD, permiso as PERMISO,imagen from db_usuario order by id_usuario desc




GO
/****** Object:  StoredProcedure [dbo].[mostrar_venta_del_dia]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_venta_del_dia]
@id_usaurio int
as
select Fecha,Hora,Tipo_de_movimiento,Tipo_Operacion,Medio_de_pago,Importe,Estado,Terminal from db_caja_diaria where idcajero=@id_usaurio and cierre='SIN CIERRE'










GO
/****** Object:  StoredProcedure [dbo].[mostrar_venta_final]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_venta_final]
as
select id_venta as ID_FACTURA,fecha AS FECHA,cliente as CLIENTE,telefono as Telefono, importe as IMPORTE,descuento as Descuento,documento as TIPO_DE_FACTURA,condicion as CONDICION,pendiente as Pendiente,pagado as Pagado from db_venta_final where condicion='CONTADO' order by id_venta_final desc











GO
/****** Object:  StoredProcedure [dbo].[mstrar_ticket_anular]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mstrar_ticket_anular]
@id_venta int,
@id_cajero int
as
select id_cajadiaria,id_venta as No_ticket,Fecha as FECHA,Hora as HORA,Importe as IMPORTE,Estado as ESTADO,Terminal as TERMINAL,ganancia from db_caja_diaria where cierre='SIN CIERRE' and id_venta=@id_venta and idcajero=@id_cajero




GO
/****** Object:  StoredProcedure [dbo].[poner_al_contado_los_reservas_sin_balance]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[poner_al_contado_los_reservas_sin_balance]
as
update db_venta_final set condicion='CONTADO' where pendiente <=0








GO
/****** Object:  StoredProcedure [dbo].[poner_en_cierre_caja_diaria]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[poner_en_cierre_caja_diaria]
@id_usuario int
as
update db_caja_diaria set cierre='CIRRE DE CAJA' where cierre='SIN CIERRE' and idcajero=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[poner_en_cierre_hora_caja_abierta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[poner_en_cierre_hora_caja_abierta]
@id_usuario int
as
update db_caja_abierta set cierre='CIRRE DE CAJA' where cierre='SIN CIERRE' and id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[poner_en_reservas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[poner_en_reservas]
@id_venta int
as
update db_venta_final set condicion='RESERVACION' where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[reservaciones_casi_vencidas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[reservaciones_casi_vencidas]
as
select  dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final inner join dbo.db_detalle_de_venta on dbo.db_detalle_de_venta.categoria='SERVICIO'  inner join dbo.db_total on dbo.db_venta_final.id_venta=dbo.db_total.id_venta  WHERE dbo.db_detalle_de_venta.id_venta=dbo.db_venta_final.id_venta and dbo.db_venta_final.tipo='EN ESPERA DE SALIDA' and DATEDIFF(DAY,CONVERT(date, dbo.db_total.fecha_entre, 103), CONVERT(date, GETDATE(), 103))>20 and DATEDIFF(DAY,CONVERT(date, dbo.db_total.fecha_entre, 103), CONVERT(date, GETDATE(), 103)) < 25  order by dbo.db_venta_final.id_venta desc






GO
/****** Object:  StoredProcedure [dbo].[saber_si_el_usuario_tiene_fondo]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[saber_si_el_usuario_tiene_fondo]
@id_usuario int
as
select * from db_fondo where id_usuario=@id_usuario and fondo>0



GO
/****** Object:  StoredProcedure [dbo].[saber_si_esta_en_cero_pendiente]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[saber_si_esta_en_cero_pendiente]
@id_venta int
as
select pendiente from db_venta_final where id_venta=@id_venta and pendiente=0








GO
/****** Object:  StoredProcedure [dbo].[sacar_dinero_de_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sacar_dinero_de_caja]
@id_usuario int,
@dinero decimal(18,2)
as
update db_dinero_en_caja set dinero_en_caja=dinero_en_caja-@dinero where id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[sacar_dinero_de_la_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sacar_dinero_de_la_caja]
@id_usuario int,
@monto decimal(18,2)
as
update db_dinero_en_caja set dinero_en_caja=dinero_en_caja-@monto where id_usuario=@id_usuario




GO
/****** Object:  StoredProcedure [dbo].[sacar_fondos_de_la_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sacar_fondos_de_la_caja]
@id_usuario int
as
update db_fondo set fondo=0 where id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[salidar_a_entrar_hoy]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[salidar_a_entrar_hoy]
as
select dbo.db_venta_final.id_venta as ID_FACTURA,dbo.db_venta_final.fecha as FECHA,dbo.db_venta_final.cliente as CLIENTE,dbo.db_venta_final.telefono as Telefono,dbo.db_venta_final.tipo as ESTADO,dbo.db_venta_final.importe as IMPORTE,dbo.db_venta_final.condicion as CONDICION,dbo.db_venta_final.pendiente as PENDIENTE,dbo.db_venta_final.pagado as PAGADO,dbo.db_total.fecha_de_retiro as FECHA_DE_RETIRO,dbo.db_total.fecha_de_entrega as FECHA_DE_ENTREGA from db_venta_final inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_venta_final.id_venta WHERE dbo.db_venta_final.categoria='SERVICIO' and dbo.db_venta_final.tipo='SALIDA' and day(dbo.db_total.fecha_entre)= day(GETDATE()) and MONTH(dbo.db_total.fecha_entre)= MONTH(GETDATE()) and year(dbo.db_total.fecha_entre)=year(GETDATE()) order by dbo.db_venta_final.id_venta desc




GO
/****** Object:  StoredProcedure [dbo].[seleccionar_comprobantes_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[seleccionar_comprobantes_b02]
as
select * from db_comprobantes_b02 order by id_comprobante_b02 desc




GO
/****** Object:  StoredProcedure [dbo].[seleccionar_ultimo_disponible_B01]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[seleccionar_ultimo_disponible_B01]
as
select * from db_ultimo_disponible_B01









GO
/****** Object:  StoredProcedure [dbo].[selecionar_datos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[selecionar_datos]
@id_venta int
as
select dbo.db_total.telefono,db_total.direccion,db_total.fecha_de_entrega,db_total.fecha_de_retiro,dbo.db_total.cliente,db_total.direccion,dbo.db_venta_final.pendiente,dbo.db_venta_final.pagado,dbo.db_venta_final.importe from db_total inner join dbo.db_venta_final on dbo.db_venta_final.id_venta=dbo.db_total.id_venta where dbo.db_total.id_venta=@id_venta




GO
/****** Object:  StoredProcedure [dbo].[SELECIONAR_DIRECCION]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECIONAR_DIRECCION]
@id_venta int
as
select direccion,telefono from db_total where id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[selecionar_hora_caja_abierta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selecionar_hora_caja_abierta]
@id_usuario int
as
select caja_abierta from db_caja_abierta where cierre='SIN CIERRE' and id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[selecionar_id_cierre]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selecionar_id_cierre]
as
select id_cierre_daja from db_cierre_de_caja



GO
/****** Object:  StoredProcedure [dbo].[selecionar_los_articulos]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selecionar_los_articulos]
@id_venta int
as
select dbo.db_detalle_de_venta.id_producto,dbo.db_detalle_de_venta.cantidad,estado from db_detalle_de_venta  where id_venta=@id_venta




GO
/****** Object:  StoredProcedure [dbo].[selecionar_numeros_de_comprobantes_b01]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selecionar_numeros_de_comprobantes_b01]
as
select * from db_comprobante_B01










GO
/****** Object:  StoredProcedure [dbo].[selecionar_productos_a_eliinar]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selecionar_productos_a_eliinar]
@id_venta int,
@id_detalle_de_venta int
as
select id_producto,cantidad from db_detalle_de_venta where id_venta	=@id_venta and id_detalle_de_venta=@id_detalle_de_venta




GO
/****** Object:  StoredProcedure [dbo].[selecionarProductoAbarrote]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selecionarProductoAbarrote]
@idVENTA INT
as
select * from db_detalle_de_venta where id_venta=@idVENTA

GO
/****** Object:  StoredProcedure [dbo].[selecioonar_id_total_report_gasto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[selecioonar_id_total_report_gasto]
as
select id_total_gasto from db_total_gastos





GO
/****** Object:  StoredProcedure [dbo].[sumar_abarrotes]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sumar_abarrotes]
as
select SUM(dbo.db_detalle_de_venta.total) as total,sum(dbo.db_total.descuento) as descuentos,sum(ganancia) as ganancias from db_detalle_de_venta inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_detalle_de_venta.id_venta inner join dbo.db_venta_final on dbo.db_venta_final.id_venta=dbo.db_detalle_de_venta.id_venta where dbo.db_detalle_de_venta.id_venta=dbo.db_total.id_venta and dbo.db_detalle_de_venta.id_venta=dbo.db_venta_final.id_venta and dbo.db_detalle_de_venta.categoria='ABARROTE' and dbo.db_venta_final.condicion='CONTADO' and DATEDIFF(DAY,CONVERT(date, dbo.db_venta_final.fecha, 103), CONVERT(date, GETDATE(), 103)) <=30




GO
/****** Object:  StoredProcedure [dbo].[sumar_gastos_del_mes]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sumar_gastos_del_mes]
as
select sum(total) as gastos_de_mes from db_gastos where DATEDIFF(DAY,CONVERT(date, fecha, 103), CONVERT(date, GETDATE(), 103)) <=30


GO
/****** Object:  StoredProcedure [dbo].[sumar_servicios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sumar_servicios]
as
select sum(dbo.db_detalle_de_venta.total) as servicios ,sum(dbo.db_total.descuento) as descuento from db_total inner join dbo.db_detalle_de_venta on dbo.db_detalle_de_venta.categoria='SERVICIO' inner join dbo.db_venta_final on dbo.db_venta_final.id_venta=dbo.db_detalle_de_venta.id_venta where dbo.db_venta_final.id_venta=dbo.db_detalle_de_venta.id_venta and dbo.db_detalle_de_venta.id_venta = dbo.db_total.id_venta and dbo.db_venta_final.condicion='CONTADO' and DATEDIFF(DAY,CONVERT(date,dbo.db_venta_final. fecha, 103), CONVERT(date, GETDATE(), 103)) <=30 



GO
/****** Object:  StoredProcedure [dbo].[SUMAR_SERVICIOS_POR_FECHA]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SUMAR_SERVICIOS_POR_FECHA]
@fecha1 date,
@fecha2 date
as
select SUM(dbo.db_detalle_de_venta.total) as total,sum(dbo.db_total.descuento) as descuentos,sum(ganancia) as ganancias from db_detalle_de_venta inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_detalle_de_venta.id_venta inner join dbo.db_venta_final on dbo.db_venta_final.id_venta=dbo.db_detalle_de_venta.id_venta where dbo.db_detalle_de_venta.id_venta=dbo.db_total.id_venta and dbo.db_detalle_de_venta.id_venta=dbo.db_venta_final.id_venta and dbo.db_detalle_de_venta.categoria='SERVICIO' and dbo.db_venta_final.condicion='CONTADO' and dbo.db_venta_final.fecha between @fecha1 and @fecha2
 



GO
/****** Object:  StoredProcedure [dbo].[sumar_ventas_del_dia_del_usaurio]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sumar_ventas_del_dia_del_usaurio]
@id_usaurio int
as
select sum(Importe) as total from db_caja_diaria where cierre='SIN CIERRE' and Estado='VALIDO' and idcajero=@id_usaurio




GO
/****** Object:  StoredProcedure [dbo].[sumar_ventas_por_fechas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sumar_ventas_por_fechas]
@fecha1 date,
@fecha2 date
as
select SUM(dbo.db_detalle_de_venta.total) as total,sum(dbo.db_total.descuento) as descuentos,sum(ganancia) as ganancias from db_detalle_de_venta inner join dbo.db_total on dbo.db_total.id_venta=dbo.db_detalle_de_venta.id_venta inner join dbo.db_venta_final on dbo.db_venta_final.id_venta=dbo.db_detalle_de_venta.id_venta where dbo.db_detalle_de_venta.id_venta=dbo.db_total.id_venta and dbo.db_detalle_de_venta.id_venta=dbo.db_venta_final.id_venta and dbo.db_detalle_de_venta.categoria='ABARROTE' and dbo.db_venta_final.condicion='CONTADO' and dbo.db_venta_final.fecha between @fecha1 and @fecha2



GO
/****** Object:  StoredProcedure [dbo].[ventas_anuladas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ventas_anuladas]
@id_usuario int
as
select count(*) as anuladas from db_caja_diaria where cierre='SIN CIERRE' and Estado='ANULADO' and Tipo_de_movimiento='SALIDA' and idcajero=@id_usuario




GO
/****** Object:  StoredProcedure [dbo].[ver_existencia]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ver_existencia]
@id_producto int
as
select existencia from db_producto where id_producto=@id_producto











GO
/****** Object:  StoredProcedure [dbo].[ver_fondo_de_la_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ver_fondo_de_la_caja] 
@id_usuario int
as
select fondo from db_fondo where id_usuario=@id_usuario




GO
/****** Object:  StoredProcedure [dbo].[verifiacar_si_son_servicios_y_ventas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verifiacar_si_son_servicios_y_ventas]
@id_venta int
as
select * from db_detalle_de_venta where categoria='ABARROTE' and categoria='SERVICIO' and id_venta=@id_venta







GO
/****** Object:  StoredProcedure [dbo].[verifiacr_si_hay_articulos_sin_vender]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verifiacr_si_hay_articulos_sin_vender]
as
select id_venta from db_detalle_de_venta  where estado='SIN VENDER'










GO
/****** Object:  StoredProcedure [dbo].[verificar_existencia_disponible]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_existencia_disponible]
@id_producto int
as
select description,id_producto,existencia from db_producto where id_producto=@id_producto


GO
/****** Object:  StoredProcedure [dbo].[verificar_servicios_sin_salir]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_servicios_sin_salir]
@id_venta int
as
select * from db_detalle_de_venta where categoria='SERVICIO' and estado='SIN VENDER'









GO
/****** Object:  StoredProcedure [dbo].[verificar_si_el_producto_existe]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_el_producto_existe]
@id_venta int,
@id_producto int
as
select * from db_detalle_de_venta where id_venta=@id_venta and id_producto=@id_producto










GO
/****** Object:  StoredProcedure [dbo].[verificar_si_el_usuario_tiene_caja_abierta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_el_usuario_tiene_caja_abierta]
@id_usuario int
as
select * from db_caja_abierta where cierre='SIN CIERRE' and id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[verificar_si_el_usuario_tiene_dinero_en_caja]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_el_usuario_tiene_dinero_en_caja]
@id_usuario int
as
select * from db_dinero_en_caja where id_usuario=@id_usuario










GO
/****** Object:  StoredProcedure [dbo].[verificar_si_hay_ultimo_comprobante_b02]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_hay_ultimo_comprobante_b02]
as
select * from db_ultimo_comprobante_b02










GO
/****** Object:  StoredProcedure [dbo].[verificar_si_hay_un_usaurio_en_fondo]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_hay_un_usaurio_en_fondo]
@id_usuario int
as
select * from db_fondo where id_usuario=@id_usuario



GO
/****** Object:  StoredProcedure [dbo].[verificar_si_la_factura_es_con_rnc]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_si_la_factura_es_con_rnc]
@id_venta int
as
select * from db_total where rnc_cliente !='' and id_venta=@id_venta






GO
/****** Object:  StoredProcedure [dbo].[verificar_si_la_venta_tiene_abarrote]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_la_venta_tiene_abarrote]
@id_venta int
as
select  id_producto,cantidad  from db_detalle_de_venta where categoria='ABARROTE' and id_venta=@id_venta


GO
/****** Object:  StoredProcedure [dbo].[verificar_si_no_se_a_cerrado_la_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_si_no_se_a_cerrado_la_venta]
@id_venta int
as
select id_producto,cantidad from db_detalle_de_venta where id_venta=@id_venta and estado='SIN VENDER'










GO
/****** Object:  StoredProcedure [dbo].[verificar_si_salieron_del_inventario_los_producto]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_salieron_del_inventario_los_producto]
@id_venta int
as
select id_venta,id_producto,cantidad from db_detalle_de_venta where estado='VENDIDO' and id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[verificar_si_son_reservaciones]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_son_reservaciones]
@id_venta int
as
select * from db_total where tipo='RESERVACION' and id_venta=@id_venta



GO
/****** Object:  StoredProcedure [dbo].[verificar_si_son_salidas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_son_salidas]
@id_venta int
as
select pendiente,pagado from db_venta_final where tipo='salida' and id_venta=@id_venta




GO
/****** Object:  StoredProcedure [dbo].[verificar_si_son_servicios]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_si_son_servicios]
@id_venta int

as
select * from db_detalle_de_venta where id_venta=@id_venta and categoria='SERVICIO'










GO
/****** Object:  StoredProcedure [dbo].[verificar_si_son_servicios_la_venta]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_si_son_servicios_la_venta]
@id_venta int
as
select * from db_detalle_de_venta where categoria='SERVICIO' and id_venta=@id_venta







GO
/****** Object:  StoredProcedure [dbo].[verificar_si_son_ventas]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_si_son_ventas]
@id_venta int

as
select * from db_detalle_de_venta where id_venta=@id_venta and categoria='ABARROTE'










GO
/****** Object:  StoredProcedure [dbo].[verificar_si_ya_esta_en_rango_de_dias]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[verificar_si_ya_esta_en_rango_de_dias]
as
select dbo.db_venta_final.tipo,dbo.db_total.id_venta from db_total inner join dbo.db_venta_final on dbo.db_venta_final.id_venta=dbo.db_total.id_venta inner join dbo.db_detalle_de_venta on dbo.db_detalle_de_venta.categoria='SERVICIO' where  dbo.db_total.id_venta=db_venta_final.id_venta  AND dbo.db_detalle_de_venta.id_venta=dbo.db_total.id_venta and dbo.db_venta_final.tipo='EN ESPERA DE SALIDA' and dbo.db_venta_final.id_venta=dbo.db_total.id_venta and DATEDIFF(DAY,CONVERT(date, dbo.db_total.fecha_entre, 103), CONVERT(date, GETDATE(), 103)) =-2   and dbo.db_detalle_de_venta.estado='EN ESPERA'


GO
/****** Object:  StoredProcedure [dbo].[verificar_sin_reservaciones_para_anular]    Script Date: 16/04/2022 0:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[verificar_sin_reservaciones_para_anular]
@id_venta int
as
select pendiente,pagado from db_venta_final where tipo='EN ESPERA DE SALIDA' and id_venta=@id_venta




GO
USE [master]
GO
ALTER DATABASE [PUNTO_DE_ALQUILER] SET  READ_WRITE 
GO
