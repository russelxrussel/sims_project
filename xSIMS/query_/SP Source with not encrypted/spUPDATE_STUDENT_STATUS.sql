USE [dbSIMS]
GO

-- =============================================
-- Author:		RUSSEL VASQUEZ
-- Create date: 06/04/2016
-- Description:	SIMS- UPDATE STUDENT STATUS
-- COMMAND: UPDATE
-- =============================================

CREATE PROC [dbo].[spUPDATE_STUDENT_STATUS]
@STATUS BIT,
@STUDNUM nvarchar(7),
@USERID nvarchar(25)

WITH ENCRYPTION
AS
BEGIN


UPDATE Registration.Student_Info_MF
SET Status=@STATUS, DateUpdate=GETDATE(),UserID=@USERID
WHERE StudNum=@STUDNUM



END