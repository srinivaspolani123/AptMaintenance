CREATE TABLE [dbo].[UserMobiles](
	[UserMobilesId] [int] IDENTITY(1,1) NOT NULL,
	[UserInfoId] [int] NULL,
	[MobileNumber] [varchar](50) NULL,
	[IsDefault] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_UserMobiles] PRIMARY KEY CLUSTERED 
(
	[UserMobilesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[UserMobiles]  WITH CHECK ADD  CONSTRAINT [FK_UserMobiles_UserInfo] FOREIGN KEY([UserInfoId])
REFERENCES [dbo].[UserInfo] ([UserInfoId])
GO

ALTER TABLE [dbo].[UserMobiles] CHECK CONSTRAINT [FK_UserMobiles_UserInfo]
GO
