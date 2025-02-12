USE [Esercizio1]
GO
/****** Object:  Table [dbo].[Cantiere]    Script Date: 05/02/2024 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantiere](
	[IdCantiere] [int] IDENTITY(1,1) NOT NULL,
	[DenominazioneCantiere] [nvarchar](100) NOT NULL,
	[Indirizzo] [nvarchar](50) NOT NULL,
	[Cittá] [nvarchar](50) NOT NULL,
	[CAP] [char](5) NOT NULL,
	[PersonaRiferimento] [nvarchar](50) NULL,
	[DataInizioLavori] [date] NOT NULL,
	[DataFineLavori] [date] NULL,
	[LvaoriTerminati_SI_NO] [bit] NOT NULL,
 CONSTRAINT [PK_Cantiere] PRIMARY KEY CLUSTERED 
(
	[IdCantiere] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/02/2024 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](20) NOT NULL,
	[Cognome] [nvarchar](20) NOT NULL,
	[DataNascita] [date] NOT NULL,
	[Sesso] [char](1) NULL,
	[CF] [nvarchar](16) NULL,
	[P_IVA] [nvarchar](11) NULL,
	[Attivo] [bit] NOT NULL,
	[Saldo] [decimal](14, 2) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operaio]    Script Date: 05/02/2024 14:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operaio](
	[IdDipendente] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](20) NOT NULL,
	[Cognome] [nchar](10) NOT NULL,
	[DataNascita] [date] NOT NULL,
	[Sesso] [char](1) NOT NULL,
	[CF] [nvarchar](16) NOT NULL,
	[FigliAcarico] [int] NOT NULL,
	[Sposato] [bit] NOT NULL,
	[LivelloLavorativo] [nvarchar](10) NOT NULL,
	[DescrizioneMansione] [nvarchar](50) NOT NULL,
	[Salario] [decimal](7, 2) NOT NULL,
 CONSTRAINT [PK_Operaio] PRIMARY KEY CLUSTERED 
(
	[IdDipendente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
