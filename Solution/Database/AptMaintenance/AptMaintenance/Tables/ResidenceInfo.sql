CREATE TABLE [dbo].[ResidenceInfo](
	[ResidenceInfoId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingName] [varchar](500) NULL,
	[AptNo] [varchar](50) NULL,
	[StreetName] [varchar](500) NULL,
	[OtherInfo] [varchar](500) NULL,
	[City] [varchar](500) NULL,
	[Town] [varchar](500) NULL,
	[Village] [varchar](500) NULL,
	[DistrictsId] [int] NOT NULL,
	[ZipCode] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
	[LocationId] [int] NULL,
	[IsDismissed] [bit] NULL,
	[IsDeactivated] [bit] NULL,
 CONSTRAINT [PK_ResidenceInfo] PRIMARY KEY CLUSTERED 
(
	[ResidenceInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[ResidenceInfo]  WITH CHECK ADD  CONSTRAINT [FK_ResidenceInfo_Districts] FOREIGN KEY([DistrictsId])
REFERENCES [dbo].[Districts] ([DistrictsId])
GO

ALTER TABLE [dbo].[ResidenceInfo] CHECK CONSTRAINT [FK_ResidenceInfo_Districts]
GO

ALTER TABLE [dbo].[ResidenceInfo]  WITH CHECK ADD  CONSTRAINT [FK_ResidenceInfo_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO

ALTER TABLE [dbo].[ResidenceInfo] CHECK CONSTRAINT [FK_ResidenceInfo_Location]
GO