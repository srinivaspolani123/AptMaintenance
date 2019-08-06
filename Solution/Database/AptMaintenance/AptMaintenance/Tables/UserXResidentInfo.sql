CREATE TABLE [dbo].[UserXResidentInfo](
	[UserXResidentInfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserInfoId] [int] NULL,
	[ResidentInfoId] [int] NULL,
	[OwnershipTypeId] [int] NULL,
	[LeaseStartDate] [datetime] NULL,
	[LeaseEndDate] [datetime] NULL,
	[RUStayingHere] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
 CONSTRAINT [PK_UserXResidentInfo] PRIMARY KEY CLUSTERED 
(
	[UserXResidentInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserXResidentInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserXResidentInfo_OwnershipType] FOREIGN KEY([OwnershipTypeId])
REFERENCES [dbo].[OwnershipType] ([OwnershipTypeId])
GO

ALTER TABLE [dbo].[UserXResidentInfo] CHECK CONSTRAINT [FK_UserXResidentInfo_OwnershipType]
GO

ALTER TABLE [dbo].[UserXResidentInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserXResidentInfo_ResidenceInfo] FOREIGN KEY([ResidentInfoId])
REFERENCES [dbo].[ResidenceInfo] ([ResidenceInfoId])
GO

ALTER TABLE [dbo].[UserXResidentInfo] CHECK CONSTRAINT [FK_UserXResidentInfo_ResidenceInfo]
GO

ALTER TABLE [dbo].[UserXResidentInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserXResidentInfo_UserXResidentInfo] FOREIGN KEY([UserXResidentInfoId])
REFERENCES [dbo].[UserInfo] ([UserInfoId])
GO

ALTER TABLE [dbo].[UserXResidentInfo] CHECK CONSTRAINT [FK_UserXResidentInfo_UserXResidentInfo]
GO