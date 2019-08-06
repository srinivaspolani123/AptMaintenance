CREATE TABLE [dbo].[AssociationInfo](
	[AssociationInfoId] [int] IDENTITY(1,1) NOT NULL,
	[AssociationName] [varchar](500) NULL,
	[AssociationCreatedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
	[IsAssociationWillPay] [bit] NULL,
	[IsDismissed] [bit] NULL,
	[IsDeactivated] [bit] NULL,
 CONSTRAINT [PK_AssociationInfo] PRIMARY KEY CLUSTERED 
(
	[AssociationInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
