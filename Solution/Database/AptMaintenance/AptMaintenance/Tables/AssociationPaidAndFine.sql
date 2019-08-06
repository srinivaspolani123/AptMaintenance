CREATE TABLE [dbo].[AssociationPaidAndFine](
	[AssociationPaidAndFineId] [int] IDENTITY(1,1) NOT NULL,
	[AssociationInvoiceId] [int] NULL,
	[FineAmount] [decimal](18, 2) NULL,
	[FineAmountOn] [decimal](18, 2) NULL,
	[PercentageFine] [decimal](18, 2) NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[FineDate] [datetime] NULL,
	[PaidDate] [datetime] NULL,
	[Balance] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_AssociationPaidAndFine] PRIMARY KEY CLUSTERED 
(
	[AssociationPaidAndFineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


ALTER TABLE [dbo].[AssociationPaidAndFine]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPaidAndFine_AssociationInvoice] FOREIGN KEY([AssociationInvoiceId])
REFERENCES [dbo].[AssociationInvoice] ([AssociationInvoiceId])
GO

ALTER TABLE [dbo].[AssociationPaidAndFine] CHECK CONSTRAINT [FK_AssociationPaidAndFine_AssociationInvoice]
GO
