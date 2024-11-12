USE [eICU Collaborative Research Database]
GO
/****** Object:  Table [dbo].[AdmissionDx]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmissionDx](
	[AdmissionDxID] [int] NOT NULL,
	[PatientUnitStayID] [int] NOT NULL,
	[AdmitDxEnteredOffset] [int] NOT NULL,
	[AdmitDxName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdmissionDxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allergy]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allergy](
	[AllergyID] [int] NOT NULL,
	[PatientUnitStayID] [int] NOT NULL,
	[AllergyType] [varchar](255) NULL,
	[AllergyName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AllergyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApacheApsVar]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApacheApsVar](
	[ApacheApsVarID] [int] NOT NULL,
	[PatientUnitStayID] [int] NULL,
	[Intubated] [smallint] NULL,
	[Vent] [smallint] NULL,
	[RespiratoryRate] [float] NULL,
	[paO2] [float] NULL,
	[FiO2] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ApacheApsVarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnosis]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosis](
	[DiagnosisID] [int] NOT NULL,
	[PatientUnitStayID] [int] NOT NULL,
	[DiagnosisString] [varchar](200) NOT NULL,
	[DiagnosisPriority] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DiagnosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[HospitalID] [int] NOT NULL,
	[Region] [varchar](64) NULL,
PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medication]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medication](
	[MedicationID] [int] NOT NULL,
	[PatientUnitStayID] [int] NOT NULL,
	[DrugName] [varchar](220) NULL,
	[Dosage] [varchar](60) NULL,
	[RouteAdmin] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientUnitStayID] [int] NOT NULL,
	[PatientHealthSystemStayID] [int] NULL,
	[Gender] [varchar](25) NULL,
	[Age] [varchar](10) NULL,
	[Ethnicity] [varchar](50) NULL,
	[HospitalID] [int] NULL,
	[WardID] [int] NULL,
	[ApacheAdmissionDx] [varchar](1000) NULL,
	[AdmissionHeight] [numeric](10, 2) NULL,
	[HospitalAdmitTime24] [varchar](8) NULL,
	[HospitalAdmitOffset] [int] NULL,
	[HospitalAdmitSource] [varchar](30) NULL,
	[HospitalDischargeYear] [smallint] NULL,
	[HospitalDischargeTime24] [varchar](8) NULL,
	[HospitalDischargeOffset] [int] NULL,
	[HospitalDischargeLocation] [varchar](100) NULL,
	[HospitalDischargeStatus] [varchar](10) NULL,
	[UnitType] [varchar](50) NULL,
	[UnitAdmitTime24] [varchar](8) NULL,
	[UnitAdmitSource] [varchar](100) NULL,
	[UnitVisitNumber] [int] NULL,
	[UnitStayType] [varchar](15) NULL,
	[AdmissionWeight] [numeric](10, 2) NULL,
	[DischargeWeight] [numeric](10, 2) NULL,
	[UnitDischargeTime24] [varchar](8) NULL,
	[UnitDischargeOffset] [int] NULL,
	[UnitDischargeLocation] [varchar](100) NULL,
	[UnitDischargeStatus] [varchar](10) NULL,
	[UniquePID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientUnitStayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespiratoryCare]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespiratoryCare](
	[RespCareID] [int] NOT NULL,
	[PatientUnitStayID] [int] NULL,
	[VentStartOffset] [int] NULL,
	[VentEndOffset] [int] NULL,
	[LowExhMVLimit] [numeric](11, 4) NULL,
	[HiExhMVLimit] [numeric](11, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[RespCareID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespiratoryCharting]    Script Date: 12/11/2024 12:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespiratoryCharting](
	[RespChartID] [int] NOT NULL,
	[PatientUnitStayID] [int] NULL,
	[RespChartValueLabel] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RespChartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmissionDx]  WITH NOCHECK ADD  CONSTRAINT [AdmissionDx_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[AdmissionDx] CHECK CONSTRAINT [AdmissionDx_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Allergy]  WITH NOCHECK ADD  CONSTRAINT [Allergy_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[Allergy] CHECK CONSTRAINT [Allergy_fk_ptunit_id]
GO
ALTER TABLE [dbo].[ApacheApsVar]  WITH NOCHECK ADD  CONSTRAINT [ApacheApsVar_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[ApacheApsVar] CHECK CONSTRAINT [ApacheApsVar_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Diagnosis]  WITH NOCHECK ADD  CONSTRAINT [Diagnosis_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[Diagnosis] CHECK CONSTRAINT [Diagnosis_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Medication]  WITH NOCHECK ADD  CONSTRAINT [Medication_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[Medication] CHECK CONSTRAINT [Medication_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Patient]  WITH NOCHECK ADD  CONSTRAINT [Patient_fk_hospital_id] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [Patient_fk_hospital_id]
GO
ALTER TABLE [dbo].[RespiratoryCare]  WITH NOCHECK ADD  CONSTRAINT [RespiratoryCare_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[RespiratoryCare] CHECK CONSTRAINT [RespiratoryCare_fk_ptunit_id]
GO
ALTER TABLE [dbo].[RespiratoryCharting]  WITH NOCHECK ADD  CONSTRAINT [RespiratoryCharting_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[Patient] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[RespiratoryCharting] CHECK CONSTRAINT [RespiratoryCharting_fk_ptunit_id]
GO
