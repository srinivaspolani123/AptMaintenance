CREATE TABLE [dbo].[Districts](
	[DistrictsId] [int] NOT NULL,
	[StateInfoId] [int] NOT NULL,
	[DistrictName] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
 CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED 
(
	[DistrictsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_Districts_StateInfo] FOREIGN KEY([StateInfoId])
REFERENCES [dbo].[StateInfo] ([StateInfoId])
GO

ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_StateInfo]
GO