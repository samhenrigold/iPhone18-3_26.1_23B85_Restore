@interface CalDAVCalendarServerUserItem(ShareeConversion)
- (uint64_t)createCalShareeInDatabase:()ShareeConversion andCalendar:;
- (uint64_t)initWithCalSharee:()ShareeConversion;
- (uint64_t)updateCalSharee:()ShareeConversion;
@end

@implementation CalDAVCalendarServerUserItem(ShareeConversion)

- (uint64_t)initWithCalSharee:()ShareeConversion
{
  v4 = CalShareeCopyAddress();
  v5 = CalShareeCopyDisplayName();
  Status = CalShareeGetStatus();
  if (Status - 1 >= 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = Status;
  }

  AccessLevel = CalShareeGetAccessLevel();
  if (AccessLevel - 1 >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = AccessLevel;
  }

  v10 = [self initWithHREF:v4 commonName:v5 inviteStatus:v7 access:v9];

  return v10;
}

- (uint64_t)createCalShareeInDatabase:()ShareeConversion andCalendar:
{
  Sharee = CalDatabaseCreateSharee();
  CalShareeSetOwner();
  acceptedURL = [self acceptedURL];

  if (acceptedURL)
  {
    acceptedURL2 = [self acceptedURL];
  }

  else
  {
    acceptedURL2 = [self href];
    [acceptedURL2 payloadAsFullURL];
  }

  CalShareeSetAddress();

  firstName = [self firstName];
  if (firstName && (v9 = firstName, [self lastName], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    firstName2 = [self firstName];
    CalShareeSetFirstName();

    lastName = [self lastName];
    CalShareeSetLastName();
  }

  else
  {
    lastName = [self commonName];
    [lastName payloadAsString];
    CalShareeSetDisplayName();
  }

  inviteStatus = [self inviteStatus];
  name = [inviteStatus name];
  _calDAVCalendarServerInviteStatusFromString(name);
  CalShareeSetStatus();

  access = [self access];
  accessLevel = [access accessLevel];
  name2 = [accessLevel name];
  _calDAVCalendarServerAccessLevelFromString(name2);
  CalShareeSetAccessLevel();

  return Sharee;
}

- (uint64_t)updateCalSharee:()ShareeConversion
{
  commonName = [self commonName];
  payloadAsString = [commonName payloadAsString];

  v6 = CalShareeCopyDisplayName();
  Name = CalShareeCopyFirstName();
  v8 = CalShareeCopyLastName();
  if ([payloadAsString length] && (objc_msgSend(payloadAsString, "isEqualToString:", v6) & 1) == 0)
  {
    CalShareeSetDisplayName();
    v13 = 1;
    goto LABEL_14;
  }

  firstName = [self firstName];
  if ([firstName length])
  {
    lastName = [self lastName];
    if ([lastName length])
    {
      firstName2 = [self firstName];
      if ([firstName2 isEqualToString:Name])
      {
        lastName2 = [self lastName];
        v27 = [lastName2 isEqualToString:v8];

        if (v27)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      firstName3 = [self firstName];
      CalShareeSetFirstName();

      firstName = [self lastName];
      CalShareeSetLastName();
    }

    else
    {
    }
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  inviteStatus = [self inviteStatus];
  name = [inviteStatus name];
  v17 = _calDAVCalendarServerInviteStatusFromString(name);

  Status = CalShareeGetStatus();
  if ((Status - 1) >= 5)
  {
    v19 = 0;
  }

  else
  {
    v19 = Status;
  }

  if (v19 != v17)
  {
    CalShareeSetStatus();
    v13 = 1;
  }

  access = [self access];
  accessLevel = [access accessLevel];
  name2 = [accessLevel name];
  v23 = _calDAVCalendarServerAccessLevelFromString(name2);

  AccessLevel = CalShareeGetAccessLevel();
  if ((AccessLevel - 1) >= 3)
  {
    v25 = 0;
  }

  else
  {
    v25 = AccessLevel;
  }

  if (v23 != v25)
  {
    CalShareeSetAccessLevel();
    v13 = 1;
  }

  return v13;
}

@end