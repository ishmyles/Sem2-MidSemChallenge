CREATE TABLE [dbo].[Modules]
(
	[macAddress] NVARCHAR(50) NOT NULL,
	[dateAssigned] DATE NULL,
	[studentAssigned] NVARCHAR(12) NULL,
	CONSTRAINT PK_MODULES PRIMARY KEY (macAddress),
	CONSTRAINT FK_STUDENT_MODULES FOREIGN KEY (studentAssigned) REFERENCES Student(studentID)
)
