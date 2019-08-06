CREATE TABLE [dbo].[ConflictHistory](
	[ConflictHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[UserResidentConflictId] [int] NULL,
	[ContactResidentUserInfoId] [int] NULL,
	[Communication] [varchar](max) NULL,
	[IsAdmin] [int] NULL,
	[AdminId] [int] NULL,
	[IsSent] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_ConflictHistory] PRIMARY KEY CLUSTERED 
(
	[ConflictHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[ConflictHistory]  WITH CHECK ADD  CONSTRAINT [FK_ConflictHistory_UserInfo] FOREIGN KEY([ContactResidentUserInfoId])
REFERENCES [dbo].[UserInfo] ([UserInfoId])
GO

ALTER TABLE [dbo].[ConflictHistory] CHECK CONSTRAINT [FK_ConflictHistory_UserInfo]
GO

ALTER TABLE [dbo].[ConflictHistory]  WITH CHECK ADD  CONSTRAINT [FK_ConflictHistory_UserResidentConflict] FOREIGN KEY([UserResidentConflictId])
REFERENCES [dbo].[UserResidentConflict] ([UserResidentConflictId])
GO

ALTER TABLE [dbo].[ConflictHistory] CHECK CONSTRAINT [FK_ConflictHistory_UserResidentConflict]
GO