﻿CREATE TABLE [dbo].[Award] (
    [AID]         INT           IDENTITY (1, 1) NOT NULL,
    [AwardName]   VARCHAR (80)  NULL,
    [BadgeID]     INT           CONSTRAINT [DF_Award_BadgeID] DEFAULT ((0)) NULL,
    [NumPoints]   INT           CONSTRAINT [DF_Award_NumPoints] DEFAULT ((0)) NULL,
    [BranchID]    INT           CONSTRAINT [DF_Award_BranchID] DEFAULT ((0)) NULL,
    [ProgramID]   INT           CONSTRAINT [DF_Award_ProgramID] DEFAULT ((0)) NULL,
    [District]    VARCHAR (50)  CONSTRAINT [DF_Award_District] DEFAULT ('') NULL,
    [SchoolName]  VARCHAR (50)  CONSTRAINT [DF_Award_SchoolName] DEFAULT ('') NULL,
    [BadgeList]   VARCHAR (500) CONSTRAINT [DF_Award_BadgeList] DEFAULT ('') NULL,
    [LastModDate] DATETIME      CONSTRAINT [DF_Award_LastModDate] DEFAULT (getdate()) NULL,
    [LastModUser] VARCHAR (50)  CONSTRAINT [DF_Award_LastModUser] DEFAULT ('N/A') NULL,
    [AddedDate]   DATETIME      CONSTRAINT [DF_Award_AddedDate] DEFAULT (getdate()) NULL,
    [AddedUser]   VARCHAR (50)  CONSTRAINT [DF_Award_AddedUser] DEFAULT ('N/A') NULL,
    [TenID]       INT           NULL,
    [FldInt1]     INT           NULL,
    [FldInt2]     INT           NULL,
    [FldInt3]     INT           NULL,
    [FldBit1]     BIT           NULL,
    [FldBit2]     BIT           NULL,
    [FldBit3]     BIT           NULL,
    [FldText1]    TEXT          NULL,
    [FldText2]    TEXT          NULL,
    [FldText3]    TEXT          NULL,
    CONSTRAINT [PK_Award] PRIMARY KEY CLUSTERED ([AID] ASC)
);

