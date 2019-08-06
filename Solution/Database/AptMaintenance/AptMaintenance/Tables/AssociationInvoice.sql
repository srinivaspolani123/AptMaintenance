CREATE TABLE [dbo].[AssociationInvoice](
	[AssociationInvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[AssociationInfoId] [int] NULL,
	[ResidenceInfoId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[InvoiceDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModfiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_AssociationInvoice] PRIMARY KEY CLUSTERED 
(
	[AssociationInvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



ALTER TABLE [dbo].[AssociationInvoice]  WITH CHECK ADD  CONSTRAINT [FK_AssociationInvoice_AssociationInfo] FOREIGN KEY([AssociationInfoId])
REFERENCES [dbo].[AssociationInfo] ([AssociationInfoId])
GO

ALTER TABLE [dbo].[AssociationInvoice] CHECK CONSTRAINT [FK_AssociationInvoice_AssociationInfo]
GO

ALTER TABLE [dbo].[AssociationInvoice]  WITH CHECK ADD  CONSTRAINT [FK_AssociationInvoice_ResidenceInfo] FOREIGN KEY([ResidenceInfoId])
REFERENCES [dbo].[ResidenceInfo] ([ResidenceInfoId])
GO

ALTER TABLE [dbo].[AssociationInvoice] CHECK CONSTRAINT [FK_AssociationInvoice_ResidenceInfo]
GO