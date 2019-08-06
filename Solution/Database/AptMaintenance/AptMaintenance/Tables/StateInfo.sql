CREATE TABLE [dbo].[StateInfo](
	[StateInfoId] [int] NOT NULL,
	[CountryInfoId] [int] NULL,
	[StateName] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
 CONSTRAINT [PK_StateInfo] PRIMARY KEY CLUSTERED 
(
	[StateInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[StateInfo]  WITH CHECK ADD  CONSTRAINT [FK_StateInfo_CountryInfo] FOREIGN KEY([StateInfoId])
REFERENCES [dbo].[CountryInfo] ([CountryInfoId])
GO

ALTER TABLE [dbo].[StateInfo] CHECK CONSTRAINT [FK_StateInfo_CountryInfo]
GO
