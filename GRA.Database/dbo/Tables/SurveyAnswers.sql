﻿CREATE TABLE [dbo].[SurveyAnswers] (
    [SAID]              INT            IDENTITY (1, 1) NOT NULL,
    [SRID]              INT            NOT NULL,
    [TenID]             INT            NULL,
    [PID]               INT            NULL,
    [SID]               INT            NULL,
    [QID]               INT            NULL,
    [SQMLID]            INT            NULL,
    [DateAnswered]      DATETIME       NULL,
    [QType]             INT            NULL,
    [FreeFormAnswer]    TEXT           NULL,
    [ClarificationText] TEXT           NULL,
    [ChoiceAnswerIDs]   VARCHAR (2000) NULL,
    [ChoiceAnswerText]  TEXT           NULL,
    [FldInt1]           INT            NULL,
    [FldInt2]           INT            NULL,
    [FldInt3]           INT            NULL,
    [FldBit1]           BIT            NULL,
    [FldBit2]           BIT            NULL,
    [FldBit3]           BIT            NULL,
    [FldText1]          TEXT           NULL,
    [FldText2]          TEXT           NULL,
    [FldText3]          TEXT           NULL,
    CONSTRAINT [PK_SurveyAnswers] PRIMARY KEY CLUSTERED ([SAID] ASC)
);
