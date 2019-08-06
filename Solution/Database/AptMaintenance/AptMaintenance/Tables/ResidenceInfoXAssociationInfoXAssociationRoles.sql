CREATE TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles](
	[ResidenceInfoXAssociationInfoXAssociationRolesId] [int] IDENTITY(1,1) NOT NULL,
	[AssociationRolesId] [int] NULL,
	[AssociationInfoId] [int] NULL,
	[ResidenceInfoId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](500) NULL,
 CONSTRAINT [PK_ResidenceInfoXAssociationInfoXAssociationRoles] PRIMARY KEY CLUSTERED 
(
	[ResidenceInfoXAssociationInfoXAssociationRolesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles]  WITH CHECK ADD  CONSTRAINT [FK_ResidenceInfoXAssociationInfoXAssociationRoles_AssociationInfo] FOREIGN KEY([AssociationInfoId])
REFERENCES [dbo].[AssociationInfo] ([AssociationInfoId])
GO

ALTER TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles] CHECK CONSTRAINT [FK_ResidenceInfoXAssociationInfoXAssociationRoles_AssociationInfo]
GO

ALTER TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles]  WITH CHECK ADD  CONSTRAINT [FK_ResidenceInfoXAssociationInfoXAssociationRoles_AssociationRoles] FOREIGN KEY([AssociationRolesId])
REFERENCES [dbo].[AssociationRoles] ([AssociationRolesId])
GO

ALTER TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles] CHECK CONSTRAINT [FK_ResidenceInfoXAssociationInfoXAssociationRoles_AssociationRoles]
GO

ALTER TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles]  WITH CHECK ADD  CONSTRAINT [FK_ResidenceInfoXAssociationInfoXAssociationRoles_ResidenceInfo] FOREIGN KEY([ResidenceInfoId])
REFERENCES [dbo].[ResidenceInfo] ([ResidenceInfoId])
GO

ALTER TABLE [dbo].[ResidenceInfoXAssociationInfoXAssociationRoles] CHECK CONSTRAINT [FK_ResidenceInfoXAssociationInfoXAssociationRoles_ResidenceInfo]
GO