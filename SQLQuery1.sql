USE [journey_junction]
GO
/****** Object:  StoredProcedure [journey_junction].[sp_fetch_all_groups]    Script Date: 21-02-2024 18:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************
* Store Procedure : medium.sp_fetch_all_blogs
* Author      : Anjala
* Date        :  10/23/2023
* Description     : Script to fetch categories
* Test Code      : EXEC journey_junction.sp_fetch_all_groups
* Revision      : 
******************************/
ALTER PROCEDURE [journey_junction].[sp_fetch_all_groups]
AS
BEGIN
	SELECT t.trip_name,t.place,t.description
	FROM journey_junction.groups g
	INNER JOIN dbo.users u
	ON g.user_id = u.id
	INNER JOIN journey_junction.trip t
	ON g.trip_id = t.id
END