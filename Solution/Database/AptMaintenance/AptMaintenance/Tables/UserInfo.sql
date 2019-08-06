CREATE TABLE [dbo].[UserInfo](
	[UserInfoId] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [varchar](500) NULL,
	[UserPassword] [varchar](500) NULL,
	[EmailAddress] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]