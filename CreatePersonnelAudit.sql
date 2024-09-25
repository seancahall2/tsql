USE [LawSchool]
GO

/****** Object:  Table [dbo].[PersonnelAudit]    Script Date: 5/24/2024 12:11:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PersonnelAudit](
[PersonnelAuditID] [int] IDENTITY(1000,1) NOT NULL,
[PersonnelID] [int] NULL,
[FirstName] [varchar](50) NULL,
[MiddleName] [varchar](50) NULL,
[LastName] [varchar](50) NULL,
[PreferredName] [varchar](50) NULL,
[UwempNo] [int] NULL,
[UwnetId] [varchar](50) NULL,
[Title] [varchar](150) NULL,
[PersonStartDate] [datetime] NULL,
[PersonEmail] [varchar](50) NULL,
[CreationUser] [varchar](50) NULL,
[CreationDate] [datetime] NULL,
[CreationApp] [varchar](50) NULL,
[MaintenanceUser] [varchar](50) NULL,
[MaintenanceDate] [datetime] NULL,
[MaintenanceApp] [varchar](50) NULL,
[AuditTimeStamp] [datetime] NULL,
[PersonPronouns] [varchar](50) NULL,
[PersonPhone] [varchar](50) NULL,
 CONSTRAINT [PK_PersonnelAudit] PRIMARY KEY CLUSTERED
(
[PersonnelAuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonnelAudit] ADD  CONSTRAINT [DF_PersonnelAudit]  DEFAULT (getdate()) FOR [AuditTimeStamp]
GO