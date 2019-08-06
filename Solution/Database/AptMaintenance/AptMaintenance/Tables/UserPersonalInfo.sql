CREATE TABLE [dbo].[UserPersonalInfo](
	[UserPersonalInfoId] [int] IDENTITY(1,1) NOT NULL,
	[UserInfoId] [int] NULL,
	[FirstName] [varchar](500) NULL,
	[LastName] [varchar](500) NULL,
	[DOB] [date] NULL,
	[Sex] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_UserPersonalInfo] PRIMARY KEY CLUSTERED 
(
	[UserPersonalInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserPersonalInfo_UserInfo] FOREIGN KEY([UserInfoId])
REFERENCES [dbo].[UserInfo] ([UserInfoId])
GO

ALTER TABLE [dbo].[UserPersonalInfo] CHECK CONSTRAINT [FK_UserPersonalInfo_UserInfo]
GO