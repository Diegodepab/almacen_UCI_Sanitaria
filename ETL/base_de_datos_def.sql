USE [prueba]
GO
/****** Object:  Table [dbo].[AdmissionDx]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmissionDx](
	[PatientUnitStayID] [int] NOT NULL,
	[AdmitDxEnteredOffset] [int] NOT NULL,
	[AdmitDxName] [varchar](255) NULL,
	[AdmissionDxID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdmissionDxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Allergy]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allergy](
	[AllergyType] [int] NULL,
	[AllergyName] [varchar](255) NULL,
	[AllergyID] [int] IDENTITY(1,1) NOT NULL,
	[patientID_og] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AllergyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApacheApsVar]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApacheApsVar](
	[PatientUnitStayID] [int] NULL,
	[Intubated] [smallint] NULL,
	[Vent] [smallint] NULL,
	[RespiratoryRate] [float] NULL,
	[paO2] [float] NULL,
	[FiO2] [float] NULL,
	[ApacheApsVarID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ApacheApsVarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnosis]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosis](
	[DiagnosisString] [varchar](200) NOT NULL,
	[priorityID] [int] NOT NULL,
	[DiagnosisID] [int] IDENTITY(1,1) NOT NULL,
	[patientID_og] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiagnosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ethnicity]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ethnicity](
	[ethnicityString] [varchar](50) NULL,
	[ethnicityID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ethnicityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_ethnicityString] UNIQUE NONCLUSTERED 
(
	[ethnicityString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[genderString] [varchar](25) NULL,
	[genderID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[genderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[regionID] [int] NULL,
	[HospitalID] [int] IDENTITY(1,1) NOT NULL,
	[hospitalID_og] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngresoUCI]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngresoUCI](
	[PatientHealthSystemStayID] [int] NULL,
	[hospitalDischargeOffset] [int] NULL,
	[HospitalID] [int] NULL,
	[UniquePID] [int] NULL,
	[TiempoID] [int] NOT NULL,
	[PatientUnitStayID] [int] IDENTITY(1,1) NOT NULL,
	[patientUnitStayID_og] [int] NULL,
	[age] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientUnitStayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medication]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medication](
	[DrugName] [varchar](220) NULL,
	[Dosage] [varchar](60) NULL,
	[routeAdminID] [int] NOT NULL,
	[MedicationID] [int] IDENTITY(1,1) NOT NULL,
	[patientID_og] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[genderID] [int] NULL,
	[ethnicityID] [int] NULL,
	[uniquePID] [int] IDENTITY(1,1) NOT NULL,
	[uniquePID_og] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[uniquePID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[priorityString] [varchar](10) NULL,
	[priorityID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[priorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[regionString] [varchar](64) NULL,
	[regionID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[regionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RespiratoryCare]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RespiratoryCare](
	[PatientUnitStayID] [int] NULL,
	[VentStartOffset] [int] NULL,
	[VentEndOffset] [int] NULL,
	[LowExhMVLimit] [numeric](11, 4) NULL,
	[HiExhMVLimit] [numeric](11, 4) NULL,
	[RespCareID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RespCareID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteAdmin]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteAdmin](
	[routeAdminString] [varchar](120) NULL,
	[routeAdminID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[routeAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tiempo]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiempo](
	[HospitalDischargeTime24] [varchar](8) NULL,
	[HospitalDischargeYear] [smallint] NULL,
	[TiempoID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TiempoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[tipoString] [varchar](255) NULL,
	[TipoID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCI_Alergia]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCI_Alergia](
	[PatientUnitStayID] [int] NOT NULL,
	[AllergyID] [int] NOT NULL,
 CONSTRAINT [PK_UCI_Alergia] PRIMARY KEY CLUSTERED 
(
	[PatientUnitStayID] ASC,
	[AllergyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCI_Diagnosis]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCI_Diagnosis](
	[PatientUnitStayID] [int] NOT NULL,
	[DiagnosisID] [int] NOT NULL,
 CONSTRAINT [PK_UCI_Diagnosis] PRIMARY KEY CLUSTERED 
(
	[PatientUnitStayID] ASC,
	[DiagnosisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UCI_Medicacion]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCI_Medicacion](
	[MedicationID] [int] NOT NULL,
	[PatientUnitStayID] [int] NOT NULL,
 CONSTRAINT [PK_UCI_Medicacion] PRIMARY KEY CLUSTERED 
(
	[MedicationID] ASC,
	[PatientUnitStayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmissionDx]  WITH NOCHECK ADD  CONSTRAINT [FK_AdmissionDx_IngresoUCI] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[IngresoUCI] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[AdmissionDx] CHECK CONSTRAINT [FK_AdmissionDx_IngresoUCI]
GO
ALTER TABLE [dbo].[Allergy]  WITH NOCHECK ADD  CONSTRAINT [FK_Allergy_Tipo] FOREIGN KEY([AllergyType])
REFERENCES [dbo].[Tipo] ([TipoID])
GO
ALTER TABLE [dbo].[Allergy] CHECK CONSTRAINT [FK_Allergy_Tipo]
GO
ALTER TABLE [dbo].[ApacheApsVar]  WITH NOCHECK ADD  CONSTRAINT [FK_ApacheApsVar_IngresoUCI] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[IngresoUCI] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[ApacheApsVar] CHECK CONSTRAINT [FK_ApacheApsVar_IngresoUCI]
GO
ALTER TABLE [dbo].[Diagnosis]  WITH NOCHECK ADD  CONSTRAINT [FK_Diagnosis_Priority] FOREIGN KEY([priorityID])
REFERENCES [dbo].[Priority] ([priorityID])
GO
ALTER TABLE [dbo].[Diagnosis] CHECK CONSTRAINT [FK_Diagnosis_Priority]
GO
ALTER TABLE [dbo].[Hospital]  WITH NOCHECK ADD  CONSTRAINT [FK_Hospital_Region] FOREIGN KEY([regionID])
REFERENCES [dbo].[Region] ([regionID])
GO
ALTER TABLE [dbo].[Hospital] CHECK CONSTRAINT [FK_Hospital_Region]
GO
ALTER TABLE [dbo].[IngresoUCI]  WITH NOCHECK ADD  CONSTRAINT [FK_IngresoUCI_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[IngresoUCI] CHECK CONSTRAINT [FK_IngresoUCI_Hospital]
GO
ALTER TABLE [dbo].[IngresoUCI]  WITH NOCHECK ADD  CONSTRAINT [FK_IngresoUCI_Paciente] FOREIGN KEY([UniquePID])
REFERENCES [dbo].[Paciente] ([uniquePID])
GO
ALTER TABLE [dbo].[IngresoUCI] CHECK CONSTRAINT [FK_IngresoUCI_Paciente]
GO
ALTER TABLE [dbo].[IngresoUCI]  WITH NOCHECK ADD  CONSTRAINT [FK_IngresoUCI_Tiempo] FOREIGN KEY([TiempoID])
REFERENCES [dbo].[Tiempo] ([TiempoID])
GO
ALTER TABLE [dbo].[IngresoUCI] CHECK CONSTRAINT [FK_IngresoUCI_Tiempo]
GO
ALTER TABLE [dbo].[Medication]  WITH NOCHECK ADD  CONSTRAINT [FK_Medication_RouteAdmin] FOREIGN KEY([routeAdminID])
REFERENCES [dbo].[RouteAdmin] ([routeAdminID])
GO
ALTER TABLE [dbo].[Medication] CHECK CONSTRAINT [FK_Medication_RouteAdmin]
GO
ALTER TABLE [dbo].[Paciente]  WITH NOCHECK ADD  CONSTRAINT [FK_Paciente_Ethnicity] FOREIGN KEY([ethnicityID])
REFERENCES [dbo].[Ethnicity] ([ethnicityID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Ethnicity]
GO
ALTER TABLE [dbo].[Paciente]  WITH NOCHECK ADD  CONSTRAINT [FK_Paciente_Gender] FOREIGN KEY([genderID])
REFERENCES [dbo].[Gender] ([genderID])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Gender]
GO
ALTER TABLE [dbo].[RespiratoryCare]  WITH NOCHECK ADD  CONSTRAINT [FK_RespiratoryCare_IngresoUCI] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[IngresoUCI] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[RespiratoryCare] CHECK CONSTRAINT [FK_RespiratoryCare_IngresoUCI]
GO
ALTER TABLE [dbo].[UCI_Alergia]  WITH NOCHECK ADD  CONSTRAINT [FK_UCI_Alergia_Allergy] FOREIGN KEY([AllergyID])
REFERENCES [dbo].[Allergy] ([AllergyID])
GO
ALTER TABLE [dbo].[UCI_Alergia] CHECK CONSTRAINT [FK_UCI_Alergia_Allergy]
GO
ALTER TABLE [dbo].[UCI_Alergia]  WITH NOCHECK ADD  CONSTRAINT [FK_UCI_Alergia_IngresoUCI] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[IngresoUCI] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[UCI_Alergia] CHECK CONSTRAINT [FK_UCI_Alergia_IngresoUCI]
GO
ALTER TABLE [dbo].[UCI_Diagnosis]  WITH NOCHECK ADD  CONSTRAINT [FK_UCI_Diagnosis_Diagnosis] FOREIGN KEY([DiagnosisID])
REFERENCES [dbo].[Diagnosis] ([DiagnosisID])
GO
ALTER TABLE [dbo].[UCI_Diagnosis] CHECK CONSTRAINT [FK_UCI_Diagnosis_Diagnosis]
GO
ALTER TABLE [dbo].[UCI_Diagnosis]  WITH NOCHECK ADD  CONSTRAINT [FK_UCI_Diagnosis_IngresoUCI] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[IngresoUCI] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[UCI_Diagnosis] CHECK CONSTRAINT [FK_UCI_Diagnosis_IngresoUCI]
GO
ALTER TABLE [dbo].[UCI_Medicacion]  WITH NOCHECK ADD  CONSTRAINT [FK_UCI_Medicacion_IngresoUCI] FOREIGN KEY([PatientUnitStayID])
REFERENCES [dbo].[IngresoUCI] ([PatientUnitStayID])
GO
ALTER TABLE [dbo].[UCI_Medicacion] CHECK CONSTRAINT [FK_UCI_Medicacion_IngresoUCI]
GO
ALTER TABLE [dbo].[UCI_Medicacion]  WITH NOCHECK ADD  CONSTRAINT [FK_UCI_Medicacion_Medication] FOREIGN KEY([MedicationID])
REFERENCES [dbo].[Medication] ([MedicationID])
GO
ALTER TABLE [dbo].[UCI_Medicacion] CHECK CONSTRAINT [FK_UCI_Medicacion_Medication]
GO
/****** Object:  StoredProcedure [dbo].[BorrarAlmacenUCI]    Script Date: 23/12/2024 11:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarAlmacenUCI]
AS
BEGIN
    -- Deshabilitar las restricciones de claves foráneas
    EXEC sp_MSforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT ALL"
    
    -- Eliminar los registros de las tablas
    DELETE FROM UCI_Alergia;
    DELETE FROM UCI_Diagnosis;
    DELETE FROM UCI_Medicacion;
    DELETE FROM Gender;
    DELETE FROM Ethnicity;
    DELETE FROM Region;
    DELETE FROM IngresoUCI;
    DELETE FROM Hospital;
    DELETE FROM RouteAdmin;
    DELETE FROM Medication;
    DELETE FROM Priority;
    DELETE FROM Diagnosis;
    DELETE FROM Tipo;
    DELETE FROM Tiempo;
    DELETE FROM AdmissionDx;
    DELETE FROM Allergy;
    DELETE FROM ApacheApsVar;
    DELETE FROM Paciente;
    DELETE FROM RespiratoryCare;

    -- Habilitar nuevamente las restricciones de claves foráneas
    EXEC sp_MSforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL"
END
GO
