@interface MobileCalDAVNotificationCalendar
- (BOOL)_removeCalendarItemWithURL:(id)l;
- (BOOL)setEtag:(id)etag forItemAtURL:(id)l;
- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l;
- (BOOL)setURL:(id)l forResourceWithUUID:(id)d;
- (BOOL)updateResourcesFromServer:(id)server;
- (CalDiagNotificationCollectionSync)notificationCollectionSyncDiagnostics;
- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)ls;
- (void)_copyNotificationWithExternalID:(id)d;
- (void)_copyNotificationWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store;
- (void)clearEventChanges;
- (void)prepareSyncActionsWithCompletionBlock:(id)block;
- (void)recordDiagnosticsForAccountSync:(id)sync;
@end

@implementation MobileCalDAVNotificationCalendar

- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title
{
  v7.receiver = self;
  v7.super_class = MobileCalDAVNotificationCalendar;
  return [(MobileCalDAVCalendar *)&v7 initWithCalendarURL:l calendar:calendar principal:principal title:title];
}

- (CalDiagNotificationCollectionSync)notificationCollectionSyncDiagnostics
{
  if (!self->_notificationCollectionSyncDiagnostics && RecordCalendarDiagnostics(self, a2))
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    notificationCollectionSyncDiagnostics = self->_notificationCollectionSyncDiagnostics;
    self->_notificationCollectionSyncDiagnostics = v3;
  }

  v5 = self->_notificationCollectionSyncDiagnostics;

  return v5;
}

- (id)allItemURLs
{
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self getCalCalendar];
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v8 = CalDatabaseCopyNotificationsWithCalendar();
  if ([v8 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = CalNotificationCopyExternalID();

      if (v11)
      {
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v13 = [v11 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      ++v9;
    }

    while (v9 < [v8 count]);
  }

  return v3;
}

- (id)etagsForItemURLs:(id)ls
{
  v36 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v5 = objc_opt_new();
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    accountID2 = [(MobileCalDAVCalendar *)self accountID];
    cf = CalDatabaseCopyStoreWithExternalID();

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = lsCopy;
    v11 = lsCopy;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        v15 = 0;
        do
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * v15);
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v18 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

          uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
          v20 = [uRLToEtagMap objectForKeyedSubscript:v18];

          if (v20 || (v21 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore()) != 0 && (v22 = v21, v20 = CalNotificationCopyExternalModTag(), CFRelease(v22), v20))
          {
            [v5 setObject:v20 forKeyedSubscript:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v23 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v13 = v23;
      }

      while (v23);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    lsCopy = v28;
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar that matched %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_copyNotificationWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store
{
  identifierCopy = identifier;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if (![(MobileCalDAVCalendar *)self recordIDForUniqueIdentifier:identifierCopy]|| (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    v11 = CalDatabaseCopyNotificationWithUniqueIdentifierInCalendarOrStore();
    if (v11)
    {
      v12 = CalEntityCopyRecordID();
      if (v12)
      {
        v13 = v12;
        [(MobileCalDAVCalendar *)self setUniqueIdentifier:identifierCopy forRecordID:v12];
        CFRelease(v13);
      }
    }
  }

  return v11;
}

- (void)_copyNotificationWithExternalID:(id)d
{
  dCopy = d;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  v10 = [uRLToRecordIDMap objectForKeyedSubscript:dCopy];

  if (!v10 || (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      v11 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)setEtag:(id)etag forItemAtURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  lCopy = l;
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v10 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v9];
  if (v10)
  {
    CalNotificationSetExternalModTag();
    if (v9)
    {
      uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
      v12 = uRLToEtagMap;
      if (etagCopy)
      {
        [uRLToEtagMap setObject:etagCopy forKeyedSubscript:v9];
      }

      else
      {
        [uRLToEtagMap removeObjectForKey:v9];
      }
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
    CFRelease(v10);
  }

  else
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v13, v14))
    {
      v16 = 138412290;
      v17 = lCopy;
      _os_log_impl(&dword_2484B2000, v13, v14, "Couldn't set etag for the item at %@ because it doesn't exist in our database", &v16, 0xCu);
    }
  }

  return v10 != 0;
}

- (BOOL)setURL:(id)l forResourceWithUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  if (!lCopy)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (!getCalCalendar)
  {
    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v18))
    {
      v22 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v17, v18, "Could not find a calendar that matched %@", &v22, 0xCu);
    }

    goto LABEL_13;
  }

  v9 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithUniqueIdentifier:dCopy inCalendar:getCalCalendar orStore:0];
  if (!v9)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v19, v20))
    {
      v22 = 138412290;
      selfCopy = dCopy;
      _os_log_impl(&dword_2484B2000, v19, v20, "Couldn't set url for the event %@ because it doesn't exist in our database", &v22, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = v9;
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v12 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  CalNotificationSetExternalID();
  [(MobileCalDAVCalendar *)self setIsDirty:1];
  v13 = CalEntityCopyRecordID();
  if (v13)
  {
    v14 = v13;
    uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
    [uRLToRecordIDMap setObject:v14 forKeyedSubscript:v12];
  }

  CFRelease(v10);

  v16 = 1;
LABEL_14:

  return v16;
}

- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MobileCalDAVNotificationCalendar.m" lineNumber:245 description:@"Woah buddy- we shouldn't be setting a schedule tag on a notification item!"];

  return 0;
}

- (BOOL)updateResourcesFromServer:(id)server
{
  v68 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if ([serverCopy count])
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    v7 = getCalCalendar != 0;
    if (getCalCalendar)
    {
      v51 = RecordCalendarDiagnostics(getCalCalendar, v6);
      v45 = v7;
      if (v51)
      {
        DAWeakLinkClass();
      }

      v47 = objc_opt_new();
      principal = [(MobileCalDAVCalendar *)self principal];
      account = [principal account];
      dbHelper = [account dbHelper];
      accountID = [(MobileCalDAVCalendar *)self accountID];
      v14 = [dbHelper calDatabaseForAccountID:accountID];

      accountID2 = [(MobileCalDAVCalendar *)self accountID];
      v50 = v14;
      v16 = CalDatabaseCopyStoreWithExternalID();

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v46 = serverCopy;
      obj = serverCopy;
      v52 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v52)
      {
        v49 = *v61;
        v55 = v16;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v61 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v60 + 1) + 8 * i);
            v54 = MEMORY[0x277CF7508];
            dataPayload = [v18 dataPayload];
            serverID = [v18 serverID];
            syncKey = [v18 syncKey];
            getCalCalendar2 = [(MobileCalDAVCalendar *)self getCalCalendar];
            principal2 = [(MobileCalDAVCalendar *)self principal];
            calendarHomeURL = [principal2 calendarHomeURL];
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            defaultProvider = [MEMORY[0x277CF7790] defaultProvider];
            [v54 processNotificationWithData:dataPayload serverURL:serverID syncKey:syncKey database:v50 notificationCalendar:getCalCalendar2 store:v55 calendarHomeURL:calendarHomeURL notificationCalendarURL:calendarURL contactsProvider:defaultProvider recordIDMap:self];

            syncKey2 = [v18 syncKey];
            serverID2 = [v18 serverID];
            [(MobileCalDAVNotificationCalendar *)self setEtag:syncKey2 forItemAtURL:serverID2];

            [(MobileCalDAVCalendar *)self setIsDirty:1];
            if (v51)
            {
              v28 = objc_opt_new();
              serverID3 = [v18 serverID];
              [v28 setUrl:serverID3];

              dataPayload2 = [v18 dataPayload];
              [v28 setDownloadedData:dataPayload2];

              [v28 setDirection:0];
              [v47 addObject:v28];
            }

            v16 = v55;
          }

          v52 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v52);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if ([obj count])
      {
        principal3 = [(MobileCalDAVCalendar *)self principal];
        account2 = [principal3 account];
        dbHelper2 = [account2 dbHelper];
        accountID3 = [(MobileCalDAVCalendar *)self accountID];
        v35 = [dbHelper2 calSaveDatabaseAndFlushCachesForAccountID:accountID3];

        v8 = v47;
        if ((v51 & v35) == 1)
        {
          notificationCollectionSyncDiagnostics = [(MobileCalDAVNotificationCalendar *)self notificationCollectionSyncDiagnostics];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v37 = v47;
          v38 = [v37 countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v57;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v57 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                [notificationCollectionSyncDiagnostics addNotificationSync:*(*(&v56 + 1) + 8 * j)];
              }

              v39 = [v37 countByEnumeratingWithState:&v56 objects:v64 count:16];
            }

            while (v39);
          }
        }

        uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
        [uniqueIdentifierToRecordIDMap removeAllObjects];

        uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
        [uRLToRecordIDMap removeAllObjects];

        [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
        serverCopy = v46;
        v7 = v45;
      }

      else
      {
        serverCopy = v46;
        v7 = v45;
        v8 = v47;
      }
    }

    else
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2484B2000, v8, v9, "Could not find a calendar that matched %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_removeCalendarItemWithURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v10 = DALoggingwithCategory();
  v11 = v10;
  if (!getCalCalendar)
  {
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v27))
    {
      v31 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v11, v27, "Could not find a calendar that matched %@", &v31, 0xCu);
    }

    goto LABEL_19;
  }

  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v13))
  {
    v31 = 138412290;
    selfCopy = lCopy;
    _os_log_impl(&dword_2484B2000, v11, v13, "Removing notification item with url %@", &v31, 0xCu);
  }

  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v11 = [(MobileCalDAVNotificationCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v15 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore();
  if (!v15)
  {
    v28 = DALoggingwithCategory();
    v29 = *(v12 + 4);
    if (os_log_type_enabled(v28, v29))
    {
      v31 = 138412290;
      selfCopy = lCopy;
      _os_log_impl(&dword_2484B2000, v28, v29, "Couldn't get a calendar notification to remove with url %@", &v31, 0xCu);
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v16 = v15;
  if (CalEntityGetType() == 102)
  {
    v17 = CalNotificationCopyHostURL();
    if (v17)
    {
      principal2 = [(MobileCalDAVCalendar *)self principal];
      calendarHomeURL = [principal2 calendarHomeURL];
      v20 = [v17 da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
      da_appendSlashIfNeeded = [v20 da_appendSlashIfNeeded];

      accountID2 = [(MobileCalDAVCalendar *)self accountID];
      v23 = CalDatabaseCopyStoreWithExternalID();

      v24 = CalDatabaseCopyCalendarWithExternalIDInStore();
      if (v24)
      {
        v25 = v24;
        CalRemoveCalendar();
        CFRelease(v25);
      }

      if (v23)
      {
        CFRelease(v23);
      }
    }
  }

  CalRemoveNotification();
  v26 = 1;
  [(MobileCalDAVCalendar *)self setIsDirty:1];
  CFRelease(v16);
  [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
LABEL_20:

  return v26;
}

- (void)clearEventChanges
{
  [(MobileCalDAVCalendar *)self clearChangesForEntityType:17];
  v3.receiver = self;
  v3.super_class = MobileCalDAVNotificationCalendar;
  [(MobileCalDAVCalendar *)&v3 clearEventChanges];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  selfCopy = self;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    theDict = 0;
    CalDatabaseCopyNotificationChangesInCalendar();
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 134217984;
      selfCopy2 = 0;
      _os_log_impl(&dword_2484B2000, v13, v14, "Gathering deleted notifications. Found %lu", buf, 0xCu);
    }

    v26 = blockCopy;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = DALoggingwithCategory();
          if (os_log_type_enabled(v21, v14))
          {
            *buf = 138412290;
            selfCopy2 = v20;
            _os_log_impl(&dword_2484B2000, v21, v14, "Sending up a delete for the notification at URL %@", buf, 0xCu);
          }

          v22 = objc_alloc(MEMORY[0x277CFDB90]);
          calendarURL = [(MobileCalDAVCalendar *)selfCopy calendarURL];
          v24 = [(MobileCalDAVNotificationCalendar *)v20 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];
          v25 = [v22 initWithAction:2 context:v24];

          [v9 addObject:v25];
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v17);
    }

    [(MobileCalDAVCalendar *)selfCopy setSyncActions:v9];
    blockCopy = v26;
    v26[2](v26, selfCopy);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar that matched %@", buf, 0xCu);
    }

    blockCopy[2](blockCopy, self);
  }
}

- (void)recordDiagnosticsForAccountSync:(id)sync
{
  syncCopy = sync;
  notificationCollectionSyncDiagnostics = [(MobileCalDAVNotificationCalendar *)self notificationCollectionSyncDiagnostics];
  [syncCopy setNotificationCollectionSync:notificationCollectionSyncDiagnostics];
}

@end