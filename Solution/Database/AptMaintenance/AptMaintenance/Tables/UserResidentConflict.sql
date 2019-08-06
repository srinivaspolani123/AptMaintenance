CREATE TABLE [dbo].[UserResidentConflict](
	[UserResidentConflictId] [int] IDENTITY(1,1) NOT NULL,
	[UserInfoId] [int] NULL,
	[ResidenceInfoId] [int] NULL,
	[IniatedDate] [datetime] NULL,
	[ResolvedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_UserResidentConflict] PRIMARY KEY CLUSTERED 
(
	[UserResidentConflictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserResidentConflict]  WITH CHECK ADD  CONSTRAINT [FK_UserResidentConflict_ResidenceInfo] FOREIGN KEY([ResidenceInfoId])
REFERENCES [dbo].[ResidenceInfo] ([ResidenceInfoId])
GO

ALTER TABLE [dbo].[UserResidentConflict] CHECK CONSTRAINT [FK_UserResidentConflict_ResidenceInfo]
GO

ALTER TABLE [dbo].[UserResidentConflict]  WITH CHECK ADD  CONSTRAINT [FK_UserResidentConflict_UserResidentConflict] FOREIGN KEY([UserResidentConflictId])
REFERENCES [dbo].[UserResidentConflict] ([UserResidentConflictId])
GO

ALTER TABLE [dbo].[UserResidentConflict] CHECK CONSTRAINT [FK_UserResidentConflict_UserResidentConflict]
GO