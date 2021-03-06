USE [Training]
GO
/****** Object:  Table [dbo].[jb_department_tbl]    Script Date: 4/22/2022 11:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jb_department_tbl](
	[jb_dep_id] [int] IDENTITY(1,1) NOT NULL,
	[jb_dep_title] [varchar](100) NULL,
 CONSTRAINT [PK_jb_department_tbl] PRIMARY KEY CLUSTERED 
(
	[jb_dep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jb_JobDtl_tbl]    Script Date: 4/22/2022 11:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jb_JobDtl_tbl](
	[Jb_JobDtl_ID] [int] IDENTITY(1,1) NOT NULL,
	[jb_JobDtl_Code] [varchar](10) NULL,
	[jb_JobDtl_Location] [varchar](30) NULL,
	[jb_JobDtl_Department] [varchar](30) NULL,
	[jb_JobDtl_PostedDate] [datetime] NULL,
 CONSTRAINT [PK_jb_JobDtl_tbl] PRIMARY KEY CLUSTERED 
(
	[Jb_JobDtl_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jb_location_tbl]    Script Date: 4/22/2022 11:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jb_location_tbl](
	[jb_location_id] [int] IDENTITY(1,1) NOT NULL,
	[jb_location_title] [varchar](50) NULL,
	[jb_location_city] [varchar](50) NULL,
	[jb_location_state] [varchar](50) NULL,
	[jb_location_country] [varchar](50) NULL,
	[jb_location_zipcode] [varchar](50) NULL,
	[jb_location_locID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JO_Job_tbl]    Script Date: 4/22/2022 11:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JO_Job_tbl](
	[JO_ID] [int] IDENTITY(1,1) NOT NULL,
	[JO_Title] [varchar](30) NULL,
	[JO_Description] [varchar](50) NULL,
	[JO_LocationID] [varchar](10) NULL,
	[JO_DepartmentID] [varchar](5) NULL,
	[JO_ClosingDate] [varchar](50) NULL,
 CONSTRAINT [PK_JO_Job_tbl] PRIMARY KEY CLUSTERED 
(
	[JO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[jb_department_tbl] ([jb_dep_id], [jb_dep_title]) VALUES (2085, N'software developer')
GO
SET IDENTITY_INSERT [dbo].[Jb_JobDtl_tbl] ON 

INSERT [dbo].[Jb_JobDtl_tbl] ([Jb_JobDtl_ID], [jb_JobDtl_Code], [jb_JobDtl_Location], [jb_JobDtl_Department], [jb_JobDtl_PostedDate]) VALUES (1, N'JOB-01', N'US Office', N'Project Management', CAST(N'2022-12-10T18:43:31.877' AS DateTime))
INSERT [dbo].[Jb_JobDtl_tbl] ([Jb_JobDtl_ID], [jb_JobDtl_Code], [jb_JobDtl_Location], [jb_JobDtl_Department], [jb_JobDtl_PostedDate]) VALUES (2, N'JOB-02', N'India Office', N'Software Developer', CAST(N'2022-12-10T18:43:31.877' AS DateTime))
SET IDENTITY_INSERT [dbo].[Jb_JobDtl_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[jb_location_tbl] ON 

INSERT [dbo].[jb_location_tbl] ([jb_location_id], [jb_location_title], [jb_location_city], [jb_location_state], [jb_location_country], [jb_location_zipcode], [jb_location_locID]) VALUES (1, N'US head office', N'Baltimore', N'MD', N'United states', N'212020', N'10030')
INSERT [dbo].[jb_location_tbl] ([jb_location_id], [jb_location_title], [jb_location_city], [jb_location_state], [jb_location_country], [jb_location_zipcode], [jb_location_locID]) VALUES (2, N'Mapusa Head Office', N'mapusa', N'Goa', N'GA', N'403507', N'10029')
SET IDENTITY_INSERT [dbo].[jb_location_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[JO_Job_tbl] ON 

INSERT [dbo].[JO_Job_tbl] ([JO_ID], [JO_Title], [JO_Description], [JO_LocationID], [JO_DepartmentID], [JO_ClosingDate]) VALUES (1, N'Software Developer', N'Job Description here ..', N'10030', N'2085', N'2022-12-10T18:43:31.877Z')
INSERT [dbo].[JO_Job_tbl] ([JO_ID], [JO_Title], [JO_Description], [JO_LocationID], [JO_DepartmentID], [JO_ClosingDate]) VALUES (2, N'.NET Developer', N'DESC here ..', N'10029', N'2087', N'2022-12-10T18:43:31.877Z')
INSERT [dbo].[JO_Job_tbl] ([JO_ID], [JO_Title], [JO_Description], [JO_LocationID], [JO_DepartmentID], [JO_ClosingDate]) VALUES (3, N'Developer', N'DEscription here ..', N'10031', N'2086', N'2022-15-12T18:43:31.877Z')
INSERT [dbo].[JO_Job_tbl] ([JO_ID], [JO_Title], [JO_Description], [JO_LocationID], [JO_DepartmentID], [JO_ClosingDate]) VALUES (4, N'Manager', N'Manager..', N'301', N'402', N'2022-11-04T18:43:31.877Z')
SET IDENTITY_INSERT [dbo].[JO_Job_tbl] OFF
GO
/****** Object:  StoredProcedure [dbo].[USP_GET_JOBSDETAILS]    Script Date: 4/22/2022 11:53:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_GET_JOBSDETAILS]
	-- Add the parameters for the stored procedure here
	@LocationId INT
	,@DepartmentId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT JB.JO_ID,JD.jb_JobDtl_Code,JB.JO_Title,LT.jb_location_title,DT.jb_dep_title,JD.jb_JobDtl_PostedDate,JB.JO_ClosingDate
FROM  [JO_Job_tbl] JB
INNER JOIN [Jb_JobDtl_tbl] JD ON JD.Jb_JobDtl_ID = JB.JO_ID
INNER JOIN [jb_location_tbl] LT ON LT.[jb_location_locID] = JB.JO_LocationID
inner join [jb_department_tbl] DT ON DT.[jb_dep_id] = JB.JO_DepartmentID
WHERE JO_LocationID = @locationID AND JO_DepartmentID = @departmentID
	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_JOBSDETAILS]    Script Date: 4/22/2022 11:53:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_INS_JOBSDETAILS]
	-- Add the parameters for the stored procedure here
	@ID INT,
	@Title varchar(30),
	@Description varchar(50),
	@LocationID varchar(10),
	@DepartmentID varchar(5),
	@ClosingDate varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF EXISTS (SELECT JO_ID FROM JO_Job_tbl WHERE JO_ID = @ID)
	BEGIN
	UPDATE JO_Job_tbl 
	SET JO_Title = @Title,
	JO_Description = @Description,
	JO_LocationID = @LocationID,
	JO_DepartmentID = @DepartmentID,
	JO_ClosingDate = @ClosingDate
	WHERE JO_ID = @ID
	END
	ELSE
	BEGIN
	INSERT INTO JO_Job_tbl(JO_Title,JO_Description,JO_LocationID,JO_DepartmentID,JO_ClosingDate)
			VALUES(@Title,@Description,@LocationID,@DepartmentID,@ClosingDate)
	END

    -- Insert statements for procedure here
	--[SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
END
GO
