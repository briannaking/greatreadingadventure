﻿CREATE TABLE [dbo].[Programs] (
    [PID]                 INT           IDENTITY (1, 1) NOT NULL,
    [AdminName]           VARCHAR (50)  NULL,
    [Title]               VARCHAR (50)  NULL,
    [TabName]             VARCHAR (20)  NULL,
    [POrder]              INT           NULL,
    [IsActive]            BIT           CONSTRAINT [DF_Programs_IsActive] DEFAULT ((0)) NULL,
    [IsHidden]            BIT           CONSTRAINT [DF_Programs_IsHidden] DEFAULT ((0)) NULL,
    [StartDate]           DATETIME      NULL,
    [EndDate]             DATETIME      NULL,
    [MaxAge]              INT           NULL,
    [MaxGrade]            INT           NULL,
    [LoggingStart]        DATETIME      NULL,
    [LoggingEnd]          DATETIME      NULL,
    [ParentalConsentFlag] BIT           CONSTRAINT [DF_Programs_ParentalConsentFlag] DEFAULT ((0)) NULL,
    [ParentalConsentText] TEXT          NULL,
    [PatronReviewFlag]    BIT           NULL,
    [LogoutURL]           VARCHAR (150) NULL,
    [ProgramGameID]       INT           NULL,
    [HTML1]               TEXT          NULL,
    [HTML2]               TEXT          NULL,
    [HTML3]               TEXT          NULL,
    [HTML4]               TEXT          NULL,
    [HTML5]               TEXT          NULL,
    [HTML6]               TEXT          NULL,
    [BannerImage]         VARCHAR (150) NULL,
    [RegistrationBadgeID] INT           NULL,
    [CompletionPoints]    INT           CONSTRAINT [DF_Programs_CompletionPoints] DEFAULT ((0)) NULL,
    [LastModUser]         VARCHAR (50)  CONSTRAINT [DF_Programs_LastModUser] DEFAULT ('N/A') NULL,
    [AddedDate]           DATETIME      CONSTRAINT [DF_Programs_AddedDate] DEFAULT (getdate()) NULL,
    [AddedUser]           VARCHAR (50)  CONSTRAINT [DF_Programs_AddedUser] DEFAULT ('N/A') NULL,
    [LastModDate]         DATETIME      CONSTRAINT [DF_Programs_LastModDate] DEFAULT (getdate()) NULL,
    [TenID]               INT           NULL,
    [FldInt1]             INT           NULL,
    [FldInt2]             INT           NULL,
    [FldInt3]             INT           NULL,
    [FldBit1]             BIT           NULL,
    [FldBit2]             BIT           NULL,
    [FldBit3]             BIT           NULL,
    [FldText1]            TEXT          NULL,
    [FldText2]            TEXT          NULL,
    [FldText3]            TEXT          NULL,
    [PreTestID]           INT           NULL,
    [PostTestID]          INT           NULL,
    [PreTestMandatory]    BIT           NULL,
    [PretestEndDate]      DATETIME      NULL,
    [PostTestStartDate]   DATETIME      NULL,
    CONSTRAINT [PK_Programs] PRIMARY KEY CLUSTERED ([PID] ASC)
);

