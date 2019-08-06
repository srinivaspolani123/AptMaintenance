CREATE TABLE [dbo].[AssociationRoles](
	[AssociationRolesId] [int] NOT NULL,
	[RoleName] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](500) NULL,
 CONSTRAINT [PK_AssociationRoles] PRIMARY KEY CLUSTERED 
(
	[AssociationRolesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]