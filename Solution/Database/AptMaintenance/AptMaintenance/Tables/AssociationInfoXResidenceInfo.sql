CREATE TABLE [dbo].[AssociationInfoXResidenceInfo](
	[AssociationInfoXResidenceInfoId] [int] IDENTITY(1,1) NOT NULL,
	[AssociationInfoId] [int] NULL,
	[ResidenceInfoId] [int] NULL,
	[IsOwnerPay] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_AssociationInfoXResidenceInfo] PRIMARY KEY CLUSTERED 
(
	[AssociationInfoXResidenceInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
