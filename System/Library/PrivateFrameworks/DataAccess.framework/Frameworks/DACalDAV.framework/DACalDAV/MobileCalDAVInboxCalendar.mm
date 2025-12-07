@interface MobileCalDAVInboxCalendar
- (BOOL)_removeInvitationWithURL:(id)l;
- (BOOL)deleteResourcesAtURLs:(id)ls;
- (BOOL)updateResourcesFromServer:(id)server;
- (CalDiagInboxCollectionSync)inboxCollectionSyncDiagnostics;
- (MobileCalDAVInboxCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)ls;
- (void)_copyEventActionWithURL:(id)l forCalItemWithUniqueIdentifier:(id)identifier;
- (void)recordDiagnosticsForAccountSync:(id)sync;
- (void)setETag:(id)tag forInvitationAtURL:(id)l uniqueIdentifier:(id)identifier;
@end

@implementation MobileCalDAVInboxCalendar

- (MobileCalDAVInboxCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title
{
  if (!title)
  {
    title = @"Inbox";
  }

  v7.receiver = self;
  v7.super_class = MobileCalDAVInboxCalendar;
  return [(MobileCalDAVCalendar *)&v7 initWithCalendarURL:l calendar:calendar principal:principal title:title];
}

- (CalDiagInboxCollectionSync)inboxCollectionSyncDiagnostics
{
  if (!self->_inboxCollectionSyncDiagnostics && RecordCalendarDiagnostics(self, a2))
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    inboxCollectionSyncDiagnostics = self->_inboxCollectionSyncDiagnostics;
    self->_inboxCollectionSyncDiagnostics = v3;
  }

  v5 = self->_inboxCollectionSyncDiagnostics;

  return v5;
}

- (id)allItemURLs
{
  v19.receiver = self;
  v19.super_class = MobileCalDAVInboxCalendar;
  allItemURLs = [(MobileCalDAVCalendar *)&v19 allItemURLs];
  v4 = [allItemURLs mutableCopy];

  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v11 = CalDatabaseCopyOfAllEventActionsInStore();
  if ([v11 count])
  {
    v12 = 0;
    do
    {
      v13 = [v11 objectAtIndexedSubscript:v12];
      v14 = CalEventActionCopyExternalID();

      if (v14)
      {
        principal2 = [(MobileCalDAVCalendar *)self principal];
        inboxURL = [principal2 inboxURL];
        v17 = [v14 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:inboxURL];

        if (v17)
        {
          [v4 addObject:v17];
        }
      }

      ++v12;
    }

    while (v12 < [v11 count]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

- (void)_copyEventActionWithURL:(id)l forCalItemWithUniqueIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (lCopy && (-[MobileCalDAVCalendar principal](self, "principal"), v8 = objc_claimAutoreleasedReturnValue(), [v8 account], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "dbHelper"), v10 = objc_claimAutoreleasedReturnValue(), -[MobileCalDAVCalendar accountID](self, "accountID"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "calDatabaseForAccountID:", v11), v11, v10, v9, v8, -[MobileCalDAVCalendar accountID](self, "accountID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = CalDatabaseCopyStoreWithExternalID(), v12, v13))
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    inboxURL = [principal inboxURL];
    v16 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

    v17 = CalDatabaseCopyAllEventActionsWithExternalIDInStore();
    if (v17)
    {
      v18 = v17;
      v29 = v16;
      Count = CFArrayGetCount(v17);
      if (Count >= 1)
      {
        v20 = Count;
        for (i = 0; i != v20; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
          v23 = CalEventActionCopyOwningEvent();
          if (v23)
          {
            v24 = v23;
            v25 = CalEventCopyUniqueIdentifier();
            if (v25 && (v26 = v25, v27 = [identifierCopy isEqualToString:v25], CFRelease(v26), (v27 & 1) != 0))
            {
              CFRelease(v24);
              if (ValueAtIndex)
              {
                goto LABEL_14;
              }
            }

            else
            {
              CFRelease(v24);
            }
          }
        }
      }

      ValueAtIndex = 0;
LABEL_14:
      CFRelease(v18);
      v16 = v29;
    }

    else
    {
      ValueAtIndex = 0;
    }

    CFRelease(v13);

    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  return ValueAtIndex;
}

- (void)setETag:(id)tag forInvitationAtURL:(id)l uniqueIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  lCopy = l;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }

LABEL_18:
    [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
    if (tagCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
  if (!lCopy)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (tagCopy)
  {
    goto LABEL_4;
  }

LABEL_19:
  [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
LABEL_4:
  v12 = [(MobileCalDAVInboxCalendar *)self _copyEventActionWithURL:lCopy forCalItemWithUniqueIdentifier:identifierCopy];
  if (v12)
  {
    EventAction = v12;
LABEL_6:
    principal = [(MobileCalDAVCalendar *)self principal];
    inboxURL = [principal inboxURL];
    v16 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

    CalEventActionSetExternalID();
    CalEventActionSetExternalModTag();
    CFRelease(EventAction);

    goto LABEL_16;
  }

  principal2 = [(MobileCalDAVCalendar *)self principal];
  account = [principal2 account];
  dbHelper = [account dbHelper];

  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v22 = CalDatabaseCopyStoreWithExternalID();

  v23 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:identifierCopy inCalendar:0 orStore:v22];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    accountID3 = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID3];
    EventAction = CalDatabaseCreateEventAction();

    CalEventAddEventAction();
    CFRelease(v23);

    if (EventAction)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v25 = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = 138412290;
    v28 = lCopy;
    _os_log_impl(&dword_2484B2000, v25, v26, "Couldn't set an etag for the event action with url %@", &v27, 0xCu);
  }

LABEL_16:
}

- (id)etagsForItemURLs:(id)ls
{
  v30 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v23 = objc_opt_new();
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = lsCopy;
  v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        principal2 = [(MobileCalDAVCalendar *)self principal];
        inboxURL = [principal2 inboxURL];
        v18 = [v15 da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

        v19 = CalDatabaseCopyEventActionWithExternalIDInStore();
        if (v19)
        {
          v20 = v19;
          v21 = CalEventActionCopyExternalModTag();
          CFRelease(v20);
          if (v21)
          {
            [v23 setObject:v21 forKeyedSubscript:v15];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v23;
}

- (BOOL)updateResourcesFromServer:(id)server
{
  v83 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v58 = RecordCalendarDiagnostics(serverCopy, v5);
  selfCopy = self;
  if (v58)
  {
    v56 = DAWeakLinkClass();
  }

  else
  {
    v56 = 0;
  }

  v55 = objc_opt_new();
  v62 = [MEMORY[0x277CBEB58] set];
  v61 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = serverCopy;
  v7 = [v6 countByEnumeratingWithState:&v75 objects:v82 count:16];
  v59 = v6;
  if (v7)
  {
    v8 = v7;
    v64 = *v76;
    type = *(MEMORY[0x277D03988] + 6);
    v9 = 0x277CF7000uLL;
    v60 = *(MEMORY[0x277D03988] + 5);
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v76 != v64)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v75 + 1) + 8 * i);
        v12 = *(v9 + 56);
        scheduleChanges = [v11 scheduleChanges];
        v14 = [v12 propertyWithItem:scheduleChanges];

        v15 = objc_alloc(MEMORY[0x277CF7550]);
        dataPayload = [v11 dataPayload];
        filename = [v11 filename];
        v18 = [v15 initWithData:dataPayload filename:filename scheduleChanges:v14];

        event = [v18 event];
        v20 = [event uid];
        v21 = DALoggingwithCategory();
        filename3 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, type))
          {
            filename2 = [v11 filename];
            *buf = 138412290;
            v81 = filename2;
            _os_log_impl(&dword_2484B2000, filename3, type, "Handling iTIP message at %@", buf, 0xCu);

            v6 = v59;
          }

          [v62 addObject:v18];
          filename3 = [v11 filename];
          [v61 setObject:v11 forKeyedSubscript:filename3];
        }

        else
        {
          if (os_log_type_enabled(v21, v60))
          {
            filename4 = [v11 filename];
            *buf = 138412290;
            v81 = filename4;
            _os_log_impl(&dword_2484B2000, filename3, v60, "The invite at %@ doesn't have a UID. Ignoring it, but we'll download it again later.", buf, 0xCu);
          }

          v9 = 0x277CF7000;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v8);
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __55__MobileCalDAVInboxCalendar_updateResourcesFromServer___block_invoke;
  v69[3] = &unk_278F17E58;
  v25 = v61;
  v70 = v25;
  v71 = selfCopy;
  v74 = v58;
  v73 = v56;
  v26 = v55;
  v72 = v26;
  v27 = MEMORY[0x24C1D0520](v69);
  principal = [(MobileCalDAVCalendar *)selfCopy principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)selfCopy accountID];
  v32 = [dbHelper calDatabaseForAccountID:accountID];

  principal2 = [(MobileCalDAVCalendar *)selfCopy principal];
  account2 = [principal2 account];

  [account2 accountID];
  v35 = CalDatabaseCopyStoreWithExternalID();
  if (v35)
  {
    v36 = v35;
    [MEMORY[0x277CF7548] processMessages:v62 withDatabase:v32 calStore:v35 accountInfo:account2 handledEventCallback:v27 cancellationToken:0 options:0];
    CFRelease(v36);
  }

  else
  {
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v37, v38))
    {
      accountID2 = [account2 accountID];
      *buf = 138543362;
      v81 = accountID2;
      _os_log_impl(&dword_2484B2000, v37, v38, "Could not find a store in the database with uid %{public}@", buf, 0xCu);
    }
  }

  v40 = v59;
  if ([v59 count])
  {
    principal3 = [(MobileCalDAVCalendar *)selfCopy principal];
    account3 = [principal3 account];
    dbHelper2 = [account3 dbHelper];
    accountID3 = [(MobileCalDAVCalendar *)selfCopy accountID];
    v45 = [dbHelper2 calSaveDatabaseAndFlushCachesForAccountID:accountID3];

    if (v58 && v45)
    {
      inboxCollectionSyncDiagnostics = [(MobileCalDAVInboxCalendar *)selfCopy inboxCollectionSyncDiagnostics];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v47 = v26;
      v48 = [v47 countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v66;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v66 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [inboxCollectionSyncDiagnostics addCalendarItemSync:*(*(&v65 + 1) + 8 * j)];
          }

          v49 = [v47 countByEnumeratingWithState:&v65 objects:v79 count:16];
        }

        while (v49);
      }
    }

    uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)selfCopy uniqueIdentifierToRecordIDMap];
    [uniqueIdentifierToRecordIDMap removeAllObjects];

    uRLToRecordIDMap = [(MobileCalDAVCalendar *)selfCopy URLToRecordIDMap];
    [uRLToRecordIDMap removeAllObjects];

    v40 = v59;
    -[MobileCalDAVCalendar setNumDownloadedElements:](selfCopy, "setNumDownloadedElements:", -[MobileCalDAVCalendar numDownloadedElements](selfCopy, "numDownloadedElements") + [v59 count]);
  }

  return 1;
}

void __55__MobileCalDAVInboxCalendar_updateResourcesFromServer___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [a2 filename];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = [v11 syncKey];
    v15 = [v11 serverID];
    v24 = 138412802;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2484B2000, v12, v13, "Setting Etag %@ for ServerID %@ and inviteUID %@", &v24, 0x20u);
  }

  v16 = *(a1 + 40);
  v17 = [v11 syncKey];
  v18 = [v11 serverID];
  [v16 setETag:v17 forInvitationAtURL:v18 uniqueIdentifier:v7];

  if (*(a1 + 64) == 1)
  {
    v19 = objc_opt_new();
    [v19 setUid:v7];
    v20 = [v8 summary];
    [v19 setTitle:v20];

    v21 = [v11 scheduleTag];
    [v19 setScheduleTag:v21];

    v22 = [v11 syncKey];
    [v19 setSyncKey:v22];

    [v19 setDirection:0];
    v23 = [v11 dataPayload];
    [v19 setDownloadedData:v23];

    [*(a1 + 48) addObject:v19];
  }
}

- (BOOL)_removeInvitationWithURL:(id)l
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    accountID2 = [(MobileCalDAVCalendar *)self accountID];
    v10 = CalDatabaseCopyStoreWithExternalID();

    if (v10)
    {
      v11 = DALoggingwithCategory();
      v12 = MEMORY[0x277D03988];
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v13))
      {
        *buf = 138412290;
        v33 = lCopy;
        _os_log_impl(&dword_2484B2000, v11, v13, "Removing item action with url %@", buf, 0xCu);
      }

      principal2 = [(MobileCalDAVCalendar *)self principal];
      inboxURL = [principal2 inboxURL];
      v16 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

      v17 = CalDatabaseCopyAllEventActionsWithExternalIDInStore();
      if (v17)
      {
        v18 = v17;
        v31 = v16;
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          v20 = Count;
          for (i = 0; i != v20; ++i)
          {
            CFArrayGetValueAtIndex(v18, i);
            v22 = CalEventActionCopyOwningEvent();
            if (v22)
            {
              v23 = v22;
              CalEventRemoveEventAction();
              v24 = CalEventCopyEventActions();
              v25 = [v24 count];
              v26 = CalEventNeedsResponse();
              if (!v25)
              {
                v27 = v26;
                CalEventSetInvitationChangedProperties();
                if ((v27 & 1) == 0)
                {
                  CalEventSetNeedsNotification();
                }
              }

              CFRelease(v23);
            }

            else
            {
              CalEventActionRemove();
            }
          }
        }

        [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
        CFRelease(v18);
        v16 = v31;
      }

      else
      {
        v28 = DALoggingwithCategory();
        v29 = *(v12 + 4);
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 138412290;
          v33 = lCopy;
          _os_log_impl(&dword_2484B2000, v28, v29, "Couldn't get a calendar action item to remove with url %@", buf, 0xCu);
        }
      }

      CFRelease(v10);
    }
  }

  return 0;
}

- (BOOL)deleteResourcesAtURLs:(id)ls
{
  v19 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [lsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(lsCopy);
        }

        [(MobileCalDAVInboxCalendar *)self _removeInvitationWithURL:*(*(&v14 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [lsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([lsCopy count])
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID];
  }

  return 1;
}

- (void)recordDiagnosticsForAccountSync:(id)sync
{
  syncCopy = sync;
  inboxCollectionSyncDiagnostics = [(MobileCalDAVInboxCalendar *)self inboxCollectionSyncDiagnostics];
  [syncCopy setInboxCollectionSync:inboxCollectionSyncDiagnostics];
}

- (void)setETag:(uint64_t)a1 forInvitationAtURL:(uint64_t)a2 uniqueIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVInboxCalendar.m" lineNumber:127 description:@"Cannot set etag for an invitation without a unique identifier"];
}

- (void)setETag:(uint64_t)a1 forInvitationAtURL:(uint64_t)a2 uniqueIdentifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVInboxCalendar.m" lineNumber:128 description:@"Cannot insert a nil url to the invitation etag cache"];
}

- (void)setETag:(uint64_t)a1 forInvitationAtURL:(uint64_t)a2 uniqueIdentifier:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVInboxCalendar.m" lineNumber:129 description:@"Cannot insert a nil etag to the invitation etag cache"];
}

@end