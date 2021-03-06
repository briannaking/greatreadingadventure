﻿
CREATE PROCEDURE [dbo].[app_SurveyResults_GetQFreeForm] @SID INT = NULL,
	@QID INT = NULL,
	@SQMLID INT = 0,
	@SourceType VARCHAR(250) = NULL,
	@SourceID INT = NULL
AS
SELECT FreeFormAnswer
FROM SurveyAnswers a
INNER JOIN SurveyResults r ON r.SRID = a.SRID
	AND (
		r.Source = @SourceType
		OR @SourceType IS NULL
		)
	AND (
		r.SourceID = @SourceID
		OR @SourceID IS NULL
		)
WHERE a.SID = @SID
	AND QID = @QID
	AND SQMLID = @SQMLID
	AND convert(VARCHAR(8000), FreeFormAnswer) <> ''
