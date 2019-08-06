CREATE TABLE [dbo].[CountryInfo](
	[CountryInfoId] [int] NOT NULL,
	[CountryName] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
 CONSTRAINT [PK_CountryInfo] PRIMARY KEY CLUSTERED 
(
	[CountryInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]