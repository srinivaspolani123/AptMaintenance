CREATE TABLE [dbo].[AssociationPayHistory](
	[AssociationPayHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[AssociationInfoId] [int] NULL,
	[ResidenceInfoId] [int] NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[PaidDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
 CONSTRAINT [PK_AssociationPayHistory] PRIMARY KEY CLUSTERED 
(
	[AssociationPayHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AssociationPayHistory]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPayHistory_AssociationInfo] FOREIGN KEY([AssociationInfoId])
REFERENCES [dbo].[AssociationInfo] ([AssociationInfoId])
GO

ALTER TABLE [dbo].[AssociationPayHistory] CHECK CONSTRAINT [FK_AssociationPayHistory_AssociationInfo]
GO

ALTER TABLE [dbo].[AssociationPayHistory]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPayHistory_ResidenceInfo] FOREIGN KEY([ResidenceInfoId])
REFERENCES [dbo].[ResidenceInfo] ([ResidenceInfoId])
GO

ALTER TABLE [dbo].[AssociationPayHistory] CHECK CONSTRAINT [FK_AssociationPayHistory_ResidenceInfo]
GO
