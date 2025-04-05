USE [Custom_DB]
GO

/****** Object:  Table [dbo].[secFilings]    Script Date: 4/5/2025 10:16:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[secFilings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[formType] [varchar](10) NOT NULL,
	[filingDate] [date] NOT NULL,
	[reportDate] [date] NOT NULL,
	[companyTicker] [varchar](10) NOT NULL,
	[companyName] [varchar](255) NOT NULL,
	[cik] [varchar](10) NOT NULL,
	[accessionNumber] [varchar](20) NOT NULL,
	[fileNumber] [varchar](15) NULL,
	[filmNumber] [varchar](15) NULL,
	[filingUrl] [text] NOT NULL,
	[isSynced] [bit] NULL,
	[createdAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[accessionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[secFilings] ADD  DEFAULT ((0)) FOR [isSynced]
GO

ALTER TABLE [dbo].[secFilings] ADD  DEFAULT (getdate()) FOR [createdAt]
GO


