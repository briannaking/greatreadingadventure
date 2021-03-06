﻿
CREATE PROCEDURE [dbo].[app_Badge_Update] (
	@BID INT,
	@AdminName VARCHAR(50),
	@UserName VARCHAR(50),
	@GenNotificationFlag BIT,
	@NotificationSubject VARCHAR(150),
	@NotificationBody TEXT,
	@CustomEarnedMessage TEXT,
	@IncludesPhysicalPrizeFlag BIT,
	@PhysicalPrizeName VARCHAR(50),
	@AssignProgramPrizeCode BIT,
	@PCNotificationSubject VARCHAR(150),
	@PCNotificationBody TEXT,
	@LastModDate DATETIME,
	@LastModUser VARCHAR(50),
	@AddedDate DATETIME,
	@AddedUser VARCHAR(50),
	@TenID INT = 0,
	@FldInt1 INT = 0,
	@FldInt2 INT = 0,
	@FldInt3 INT = 0,
	@FldBit1 BIT = 0,
	@FldBit2 BIT = 0,
	@FldBit3 BIT = 0,
	@FldText1 TEXT = '',
	@FldText2 TEXT = '',
	@FldText3 TEXT = ''
	)
AS
UPDATE Badge
SET AdminName = @AdminName,
	UserName = @UserName,
	GenNotificationFlag = @GenNotificationFlag,
	NotificationSubject = @NotificationSubject,
	NotificationBody = @NotificationBody,
	CustomEarnedMessage = @CustomEarnedMessage,
	IncludesPhysicalPrizeFlag = @IncludesPhysicalPrizeFlag,
	PhysicalPrizeName = @PhysicalPrizeName,
	AssignProgramPrizeCode = @AssignProgramPrizeCode,
	PCNotificationSubject = @PCNotificationSubject,
	PCNotificationBody = @PCNotificationBody,
	LastModDate = @LastModDate,
	LastModUser = @LastModUser,
	AddedDate = @AddedDate,
	AddedUser = @AddedUser,
	TenID = @TenID,
	FldInt1 = @FldInt1,
	FldInt2 = @FldInt2,
	FldInt3 = @FldInt3,
	FldBit1 = @FldBit1,
	FldBit2 = @FldBit2,
	FldBit3 = @FldBit3,
	FldText1 = @FldText1,
	FldText2 = @FldText2,
	FldText3 = @FldText3
WHERE BID = @BID
	AND TenID = @TenID
