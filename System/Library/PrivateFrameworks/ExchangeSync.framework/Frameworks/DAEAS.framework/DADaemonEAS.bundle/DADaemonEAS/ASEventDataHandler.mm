@interface ASEventDataHandler
- (BOOL)closeDBAndSave:(BOOL)save;
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (id)copyOfAllLocalObjectsInContainer;
- (id)getTombstoneEndTimeForEvent:(id)event;
- (void)copyLocalObjectFromId:(int)id;
- (void)drainContainer;
- (void)openDB;
@end

@implementation ASEventDataHandler

- (void)copyLocalObjectFromId:(int)id
{
  v4 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  [v4 calDatabaseForAccountID:accountID];
  v6 = CalDatabaseCopyCalendarItemWithRowID();

  return v6;
}

- (BOOL)saveContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  v5 = [v3 calSaveDatabaseForAccountID:accountID];

  return v5;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v2 = CalCalendarCopyEvents();
  if (v2)
  {
    v3 = objc_opt_new();
    if ([v2 count])
    {
      v4 = 0;
      v5 = kCalDateInvalid;
      do
      {
        v6 = [v2 objectAtIndexedSubscript:v4];

        CalEventGetOriginalStartDate();
        if (v7 == v5)
        {
          [v3 addObject:v6];
        }

        ++v4;
      }

      while (v4 < [v2 count]);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)wipeServerIds
{
  if (![(ASEventDataHandler *)self _containerHasItems])
  {
    return 0;
  }

  v2 = CalCalendarCopyEvents();
  v3 = 0;
  if ([v2 count])
  {
    v4 = 0;
    do
    {
      [v2 objectAtIndexedSubscript:v4];

      v5 = CalCalendarItemCopyExternalID();
      if (v5)
      {
        v6 = v5;
        CalCalendarItemSetExternalID();
        CFRelease(v6);
        v3 = 1;
      }

      ++v4;
    }

    while (v4 < [v2 count]);
  }

  return v3;
}

- (void)drainContainer
{
  v3 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  [v3 calDatabaseForAccountID:accountID];

  if ([(ASEventDataHandler *)self _containerHasItems])
  {
    cf = CalCalendarCopyTitle();
    HIDWORD(v15) = CalCalendarIsReadOnly();
    LODWORD(v15) = CalCalendarIsHidden();
    v5 = CalCalendarCopyType();
    ColorString = CalCalendarGetColorString();
    v7 = ColorString;
    if (ColorString)
    {
      CFRetain(ColorString);
    }

    v8 = CalCalendarCopyExternalID();
    v9 = CalCalendarCopyExternalIdentificationTag();
    v10 = CalCalendarCopyExternalModificationTag();
    v11 = CalCalendarCopyExternalRepresentation();
    v12 = CalCalendarCopyStore();
    CalRemoveCalendar();
    [(ASEventDataHandler *)self _newCalendarEntityType];
    CalendarForEntityType = CalDatabaseCreateCalendarForEntityType();
    CalCalendarSetTitle();
    CalCalendarSetReadOnly();
    CalCalendarSetHidden();
    CalCalendarSetType();
    if (v7)
    {
      CalCalendarSetColorString();
      CFRelease(v7);
    }

    CalCalendarSetExternalID();
    CalCalendarSetExternalIdentificationTag();
    CalCalendarSetExternalModificationTag();
    CalCalendarSetExternalRepresentation();
    CalStoreAddCalendar();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    CFRelease(CalendarForEntityType);
    CFRelease(v12);
    cfa = +[ASLocalDBHelper sharedInstance];
    accountID2 = [(ASEventDataHandler *)self accountID];
    [cfa calSaveDatabaseForAccountID:accountID2];
  }
}

- (id)getTombstoneEndTimeForEvent:(id)event
{
  [event calEvent];
  CalCalendarItemGetRowID();
  v4 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  [v4 calDatabaseForAccountID:accountID];

  CalDatabaseCopyRecurrenceChangesInCalendar();

  return 0;
}

- (void)openDB
{
  v5 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  changeTrackingID = [(ASEventDataHandler *)self changeTrackingID];
  [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];
}

- (BOOL)closeDBAndSave:(BOOL)save
{
  saveCopy = save;
  v5 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASEventDataHandler *)self accountID];
  LOBYTE(saveCopy) = [v5 calCloseDatabaseForAccountID:accountID save:saveCopy];

  return saveCopy;
}

@end