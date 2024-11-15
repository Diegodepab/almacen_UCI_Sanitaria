USE [eICU Collaborative Research Database]
GO
/****** Object:  Table [dbo].[AdmissionDx]    Script Date: 14/11/2024 14:15:07 ******/
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
/****** Object:  Table [dbo].[Allergy]    Script Date: 14/11/2024 14:15:07 ******/
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
/****** Object:  Table [dbo].[ApacheApsVar]    Script Date: 14/11/2024 14:15:07 ******/
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
/****** Object:  Table [dbo].[Diagnosis]    Script Date: 14/11/2024 14:15:07 ******/
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
/****** Object:  Table [dbo].[Hospital]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[HospitalID] [int] NOT NULL,
	[Region] [varchar](64) NULL,
 CONSTRAINT [PK__Hospital__38C2E58F67C8AD6C] PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Label]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Label](
	[restChartValueLabelID] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Label] PRIMARY KEY CLUSTERED 
(
	[restChartValueLabelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medication]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medication](
	[MedicationID] [int] NOT NULL,
	[PatientUnitStayID] [int] NOT NULL,
	[DrugName] [varchar](220) NULL,
	[Dosage] [varchar](60) NULL,
	[RouteAdmin] [varchar](120) NOT NULL,
 CONSTRAINT [PK__Medicati__62EC1ADA5177B24B] PRIMARY KEY CLUSTERED 
(
	[MedicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteIngresado]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteIngresado](
	[PatientUnitStayID] [int] NOT NULL,
	[PatientHealthSystemStayID] [int] NULL,
	[Gender] [varchar](25) NULL,
	[Age] [varchar](10) NULL,
	[Ethnicity] [varchar](50) NULL,
	[HospitalID] [int] NULL,
	[UniquePID] [varchar](10) NULL,
	[TiempoID] [int] NOT NULL,
 CONSTRAINT [PK__Patient__F770D456EA0EADE8] PRIMARY KEY CLUSTERED 
(
	[PatientUnitStayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[PriorityID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[PriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[regionID] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[regionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespiratoryCare]    Script Date: 14/11/2024 14:15:07 ******/
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
/****** Object:  Table [dbo].[RespiratoryCharting]    Script Date: 14/11/2024 14:15:07 ******/
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
/****** Object:  Table [dbo].[RouteAdmin]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteAdmin](
	[RouteAdminID] [varchar](120) NOT NULL,
 CONSTRAINT [PK_RouteAdmin] PRIMARY KEY CLUSTERED 
(
	[RouteAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tiempo]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiempo](
	[TiempoID] [int] NOT NULL,
	[HospitalAdmitTime24] [varchar](8) NULL,
	[HospitalDischargeYear] [smallint] NULL,
 CONSTRAINT [PK_Tiempo] PRIMARY KEY CLUSTERED 
(
	[TiempoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 14/11/2024 14:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[TipoID] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[TipoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmissionDx]  WITH NOCHECK ADD  CONSTRAINT [AdmissionDx_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[AdmissionDx] CHECK CONSTRAINT [AdmissionDx_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Allergy]  WITH NOCHECK ADD  CONSTRAINT [Allergy_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[Allergy] CHECK CONSTRAINT [Allergy_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Allergy]  WITH CHECK ADD  CONSTRAINT [FK_Allergy_Tipo] FOREIGN KEY([AllergyType])
REFERENCES [dbo].[Tipo] ([TipoID])
GO
ALTER TABLE [dbo].[Allergy] CHECK CONSTRAINT [FK_Allergy_Tipo]
GO
ALTER TABLE [dbo].[ApacheApsVar]  WITH NOCHECK ADD  CONSTRAINT [ApacheApsVar_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[ApacheApsVar] CHECK CONSTRAINT [ApacheApsVar_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Diagnosis]  WITH NOCHECK ADD  CONSTRAINT [Diagnosis_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[Diagnosis] CHECK CONSTRAINT [Diagnosis_fk_ptunit_id]
GO
ALTER TABLE [dbo].[Hospital]  WITH CHECK ADD  CONSTRAINT [FK_Hospital_Region] FOREIGN KEY([Region])
REFERENCES [dbo].[Region] ([regionID])
GO
ALTER TABLE [dbo].[Hospital] CHECK CONSTRAINT [FK_Hospital_Region]
GO
ALTER TABLE [dbo].[Medication]  WITH CHECK ADD  CONSTRAINT [FK_Medication_RouteAdmin] FOREIGN KEY([RouteAdmin])
REFERENCES [dbo].[RouteAdmin] ([RouteAdminID])
GO
ALTER TABLE [dbo].[Medication] CHECK CONSTRAINT [FK_Medication_RouteAdmin]
GO
ALTER TABLE [dbo].[Medication]  WITH NOCHECK ADD  CONSTRAINT [Medication_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[Medication] CHECK CONSTRAINT [Medication_fk_ptunit_id]
GO
ALTER TABLE [dbo].[PacienteIngresado]  WITH CHECK ADD  CONSTRAINT [FK_PacienteIngresado_Tiempo] FOREIGN KEY([TiempoID])
REFERENCES [dbo].[Tiempo] ([TiempoID])
GO
ALTER TABLE [dbo].[PacienteIngresado] CHECK CONSTRAINT [FK_PacienteIngresado_Tiempo]
GO
ALTER TABLE [dbo].[PacienteIngresado]  WITH NOCHECK ADD  CONSTRAINT [Patient_fk_hospital_id] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[PacienteIngresado] CHECK CONSTRAINT [Patient_fk_hospital_id]
GO
ALTER TABLE [dbo].[RespiratoryCare]  WITH NOCHECK ADD  CONSTRAINT [RespiratoryCare_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[RespiratoryCare] CHECK CONSTRAINT [RespiratoryCare_fk_ptunit_id]
GO
ALTER TABLE [dbo].[RespiratoryCharting]  WITH CHECK ADD  CONSTRAINT [FK_RespiratoryCharting_Label] FOREIGN KEY([RespChartValueLabel])
REFERENCES [dbo].[Label] ([restChartValueLabelID])
GO
ALTER TABLE [dbo].[RespiratoryCharting] CHECK CONSTRAINT [FK_RespiratoryCharting_Label]
GO
ALTER TABLE [dbo].[RespiratoryCharting]  WITH NOCHECK ADD  CONSTRAINT [RespiratoryCharting_fk_ptunit_id] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[PacienteIngresado] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[RespiratoryCharting] CHECK CONSTRAINT [RespiratoryCharting_fk_ptunit_id]
GO
