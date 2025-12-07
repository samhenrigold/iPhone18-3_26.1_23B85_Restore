@interface MobileCalDAVNotificationCalendar
- (BOOL)_handleInviteNotification:(id)notification withResource:(id)resource uid:(id)uid;
- (BOOL)_handleInviteReply:(id)reply withResource:(id)resource owningNotification:(id)notification uid:(id)uid;
- (BOOL)_handleResourceChanged:(id)changed withResource:(id)resource uid:(id)uid;
- (BOOL)_removeCalendarItemWithURL:(id)l;
- (BOOL)setEtag:(id)etag forItemAtURL:(id)l;
- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l;
- (BOOL)setURL:(id)l forResourceWithUUID:(id)d;
- (BOOL)updateResourcesFromServer:(id)server;
- (MobileCalDAVAccount)daAccount;
- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)l list:(id)list principal:(id)principal title:(id)title;
- (id)_accountLoggingDescription;
- (id)_changedAttributesFromCalendarChanges:(id)changes;
- (id)_copyNotificationWithExternalID:(id)d;
- (id)_copyNotificationWithUniqueIdentifier:(id)identifier;
- (id)_notifications;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)ls;
- (void)clearEventChanges;
- (void)prepareSyncActionsWithCompletionBlock:(id)block;
@end

@implementation MobileCalDAVNotificationCalendar

- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)l list:(id)list principal:(id)principal title:(id)title
{
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  listCopy = list;
  principalCopy = principal;
  v28.receiver = self;
  v28.super_class = MobileCalDAVNotificationCalendar;
  v13 = [(MobileCalDAVCalendar *)&v28 initWithCalendarURL:lCopy list:listCopy principal:principalCopy title:title];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = DALoggingwithCategory();
  v15 = MEMORY[0x277CF3AF0];
  v16 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v14, v16))
  {
    objectID = [listCopy objectID];
    account = [principalCopy account];
    accountDescription = [account accountDescription];
    *buf = 138412802;
    v30 = lCopy;
    v31 = 2114;
    v32 = objectID;
    v33 = 2112;
    v34 = accountDescription;
    _os_log_impl(&dword_242490000, v14, v16, "CalDAVNotificationCalendar: Initializing a notif calendar for {url: %@, list: %{public}@, account: %@}.", buf, 0x20u);
  }

  if (([listCopy daIsNotificationsCollection] & 1) == 0 && ((v27 = 0, v20 = -[MobileCalDAVCalendar rem_setListPropertiesWithBlock:error:](v13, "rem_setListPropertiesWithBlock:error:", &__block_literal_global_2, &v27), v21 = v27, v22 = v21, !v20) || v21))
  {
    v25 = DALoggingwithCategory();
    v26 = *(v15 + 3);
    if (os_log_type_enabled(v25, v26))
    {
      *buf = 138412546;
      v30 = lCopy;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_242490000, v25, v26, "CalDAVNotificationCalendar: Failed to set this notification calendar list as daIsNotificationsCollection=YES, bailing (url: %@, error: %{public}@).", buf, 0x16u);
    }

    v23 = 0;
  }

  else
  {
LABEL_7:
    v23 = v13;
  }

  return v23;
}

- (MobileCalDAVAccount)daAccount
{
  daPrincipal = [(MobileCalDAVNotificationCalendar *)self daPrincipal];
  account = [daPrincipal account];

  return account;
}

- (id)_notifications
{
  v15 = *MEMORY[0x277D85DE8];
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v4 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    calDAVNotificationContext = [rem_getCalCalendar calDAVNotificationContext];
    calDAVNotifications = [calDAVNotificationContext calDAVNotifications];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = _accountLoggingDescription;
      _os_log_impl(&dword_242490000, v7, v8, "CalDAVNotificationCalendar: Could not find an REMList for the notification calendar (%@, account: %@)", &v11, 0x16u);
    }

    calDAVNotifications = 0;
  }

  return calDAVNotifications;
}

- (id)allItemURLs
{
  v3 = objc_opt_new();
  _notifications = [(MobileCalDAVNotificationCalendar *)self _notifications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MobileCalDAVNotificationCalendar_allItemURLs__block_invoke;
  v9[3] = &unk_278D4F888;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [_notifications enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __47__MobileCalDAVNotificationCalendar_allItemURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 externalIdentifier];
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 32) calendarURL];
    v5 = [v6 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v4];

    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }

    v3 = v6;
  }
}

- (id)etagsForItemURLs:(id)ls
{
  v36 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v21 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    calDAVNotificationContext = [rem_getCalCalendar calDAVNotificationContext];
    oslog = [calDAVNotificationContext calDAVNotifications];

    v6 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = lsCopy;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v7)
    {
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v12 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v32 = __Block_byref_object_copy__0;
          v33 = __Block_byref_object_dispose__0;
          v34 = 0;
          uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
          v14 = [uRLToEtagMap objectForKeyedSubscript:v12];
          v15 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v14;

          v16 = *(*&buf[8] + 40);
          if (v16 || (v24[0] = MEMORY[0x277D85DD0], v24[1] = 3221225472, v24[2] = __53__MobileCalDAVNotificationCalendar_etagsForItemURLs___block_invoke, v24[3] = &unk_278D4F8B0, v25 = v12, v26 = buf, [oslog enumerateObjectsUsingBlock:v24], v25, (v16 = *(*&buf[8] + 40)) != 0))
          {
            [v6 setObject:v16 forKeyedSubscript:v10];
          }

          _Block_object_dispose(buf, 8);
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v7);
    }
  }

  else
  {
    oslog = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(oslog, v17))
    {
      _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = _accountLoggingDescription;
      _os_log_impl(&dword_242490000, oslog, v17, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -etagsForItemURLs: (%@, account: %@)", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

void __53__MobileCalDAVNotificationCalendar_etagsForItemURLs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 externalIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 externalModificationTag];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (id)_copyNotificationWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  _notifications = [(MobileCalDAVNotificationCalendar *)self _notifications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__MobileCalDAVNotificationCalendar__copyNotificationWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_278D4F8B0;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [_notifications enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __74__MobileCalDAVNotificationCalendar__copyNotificationWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uuidString];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_copyNotificationWithExternalID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  _notifications = [(MobileCalDAVNotificationCalendar *)self _notifications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MobileCalDAVNotificationCalendar__copyNotificationWithExternalID___block_invoke;
  v9[3] = &unk_278D4F8B0;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [_notifications enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __68__MobileCalDAVNotificationCalendar__copyNotificationWithExternalID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 externalIdentifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)setEtag:(id)etag forItemAtURL:(id)l
{
  v38 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  lCopy = l;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v9 = DALoggingwithCategory();
  v10 = v9;
  if (rem_getCalCalendar)
  {
    v11 = MEMORY[0x277CF3AF0];
    v12 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v9, v12))
    {
      _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138543874;
      selfCopy = etagCopy;
      v34 = 2112;
      v35 = lCopy;
      v36 = 2112;
      v37 = _accountLoggingDescription;
      _os_log_impl(&dword_242490000, v10, v12, "CalDAVNotificationCalendar: Setting etag (%{public}@) for item at {url: %@, account: %@}.", buf, 0x20u);
    }

    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    v10 = [(MobileCalDAVNotificationCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

    v15 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v10];
    v16 = v15;
    if (v15)
    {
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __57__MobileCalDAVNotificationCalendar_setEtag_forItemAtURL___block_invoke;
      v29 = &unk_278D4F900;
      v30 = v15;
      v17 = etagCopy;
      v31 = v17;
      v18 = [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:&v26 error:0];
      if (v18)
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1, v26, v27, v28, v29, v30];
      }

      if (!v10)
      {
        goto LABEL_18;
      }

      uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
      v20 = uRLToEtagMap;
      if (v17)
      {
        [uRLToEtagMap setObject:v17 forKeyedSubscript:v10];
      }

      else
      {
        [uRLToEtagMap removeObjectForKey:v10];
      }
    }

    else
    {
      v20 = DALoggingwithCategory();
      v23 = *(v11 + 4);
      if (os_log_type_enabled(v20, v23))
      {
        _accountLoggingDescription2 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        selfCopy = lCopy;
        v34 = 2112;
        v35 = _accountLoggingDescription2;
        _os_log_impl(&dword_242490000, v20, v23, "CalDAVNotificationCalendar: Couldn't set etag for the item at %@ because it doesn't exist in our database for account %@", buf, 0x16u);
      }

      LOBYTE(v18) = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v21 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v9, v21))
  {
    _accountLoggingDescription3 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412546;
    selfCopy = self;
    v34 = 2112;
    v35 = _accountLoggingDescription3;
    _os_log_impl(&dword_242490000, v10, v21, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -setEtag:forItemAtURL: (%@, account: %@)", buf, 0x16u);
  }

  LOBYTE(v18) = 0;
LABEL_19:

  return v18;
}

void __57__MobileCalDAVNotificationCalendar_setEtag_forItemAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 calDAVNotificationContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__MobileCalDAVNotificationCalendar_setEtag_forItemAtURL___block_invoke_2;
  v5[3] = &unk_278D4F8D8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 updateCalDAVNotification:v4 withBlock:v5];
}

- (BOOL)setURL:(id)l forResourceWithUUID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  if (lCopy)
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v9 = DALoggingwithCategory();
    v10 = v9;
    if (rem_getCalCalendar)
    {
      v11 = MEMORY[0x277CF3AF0];
      v12 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v9, v12))
      {
        _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412802;
        selfCopy = lCopy;
        v31 = 2114;
        v32 = dCopy;
        v33 = 2112;
        v34 = _accountLoggingDescription;
        _os_log_impl(&dword_242490000, v10, v12, "CalDAVNotificationCalendar: Setting url (%@) for item with {uuid: %{public}@, account: %@}.", buf, 0x20u);
      }

      v10 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithUniqueIdentifier:dCopy];
      if (v10)
      {
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v15 = [(MobileCalDAVNotificationCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __63__MobileCalDAVNotificationCalendar_setURL_forResourceWithUUID___block_invoke;
        v26 = &unk_278D4F900;
        v27 = v10;
        v28 = v15;
        v16 = v15;
        v17 = [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:&v23 error:0];
        if (v17)
        {
          [(MobileCalDAVCalendar *)self setIsDirty:1, v23, v24, v25, v26, v27, v28];
        }
      }

      else
      {
        v16 = DALoggingwithCategory();
        v20 = *(v11 + 4);
        if (os_log_type_enabled(v16, v20))
        {
          _accountLoggingDescription2 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          *buf = 138543618;
          selfCopy = dCopy;
          v31 = 2112;
          v32 = _accountLoggingDescription2;
          _os_log_impl(&dword_242490000, v16, v20, "CalDAVNotificationCalendar: Couldn't set url for the item %{public}@ because it doesn't exist in our database for account %@", buf, 0x16u);
        }

        LOBYTE(v17) = 0;
      }
    }

    else
    {
      v18 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v9, v18))
      {
        _accountLoggingDescription3 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        selfCopy = self;
        v31 = 2112;
        v32 = _accountLoggingDescription3;
        _os_log_impl(&dword_242490000, v10, v18, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -setURL:forResourceWithUUID: (%@, account: %@)", buf, 0x16u);
      }

      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

void __63__MobileCalDAVNotificationCalendar_setURL_forResourceWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 calDAVNotificationContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MobileCalDAVNotificationCalendar_setURL_forResourceWithUUID___block_invoke_2;
  v5[3] = &unk_278D4F8D8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 updateCalDAVNotification:v4 withBlock:v5];
}

- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MobileCalDAVNotificationCalendar.m" lineNumber:361 description:@"Woah buddy- we shouldn't be setting a schedule tag on a notification item!"];

  return 0;
}

- (BOOL)updateResourcesFromServer:(id)server
{
  v52 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if ([serverCopy count])
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v6 = rem_getCalCalendar;
    v7 = rem_getCalCalendar != 0;
    if (rem_getCalCalendar)
    {
      v35 = rem_getCalCalendar;
      v36 = rem_getCalCalendar != 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v37 = serverCopy;
      obj = serverCopy;
      v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v42)
      {
        v41 = *v44;
        v40 = *MEMORY[0x277CFDE90];
        v39 = *MEMORY[0x277CF7080];
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v44 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v43 + 1) + 8 * i);
            dataPayload = [v9 dataPayload];
            v11 = objc_alloc(MEMORY[0x277CFDCA8]);
            v12 = objc_opt_class();
            principal = [(MobileCalDAVCalendar *)self principal];
            calendarHomeURL = [principal calendarHomeURL];
            v15 = [v11 initWithRootElementNameSpace:v40 name:v39 parseClass:v12 baseURL:calendarHomeURL];

            [v15 processData:dataPayload forTask:0];
            [v15 processData:0 forTask:0];
            rootElement = [v15 rootElement];
            serverID = [v9 serverID];
            lastPathComponent = [serverID lastPathComponent];

            content = [rootElement content];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            content2 = [rootElement content];
            v22 = content2;
            if (isKindOfClass)
            {
              v23 = [content2 uid];
              payloadAsString = [v23 payloadAsString];

              content3 = [rootElement content];
              [(MobileCalDAVNotificationCalendar *)self _handleInviteNotification:content3 withResource:v9 uid:payloadAsString];
              lastPathComponent = payloadAsString;
            }

            else
            {
              objc_opt_class();
              v26 = objc_opt_isKindOfClass();

              content3 = [rootElement content];
              if (v26)
              {
                [(MobileCalDAVNotificationCalendar *)self _handleInviteReply:content3 withResource:v9 owningNotification:rootElement uid:lastPathComponent];
              }

              else
              {
                objc_opt_class();
                v27 = objc_opt_isKindOfClass();

                if ((v27 & 1) == 0)
                {
                  goto LABEL_15;
                }

                content3 = [rootElement content];
                [(MobileCalDAVNotificationCalendar *)self _handleResourceChanged:content3 withResource:v9 uid:lastPathComponent];
              }
            }

LABEL_15:
            serverID2 = [v9 serverID];
            [(MobileCalDAVNotificationCalendar *)self setURL:serverID2 forResourceWithUUID:lastPathComponent];

            syncKey = [v9 syncKey];
            serverID3 = [v9 serverID];
            [(MobileCalDAVNotificationCalendar *)self setEtag:syncKey forItemAtURL:serverID3];

            [(MobileCalDAVCalendar *)self setIsDirty:1];
          }

          v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v42);
      }

      serverCopy = v37;
      v7 = v36;
      v6 = v35;
      if ([obj count])
      {
        [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
      }
    }

    else
    {
      v31 = DALoggingwithCategory();
      v32 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v31, v32))
      {
        _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        selfCopy = self;
        v50 = 2112;
        v51 = _accountLoggingDescription;
        _os_log_impl(&dword_242490000, v31, v32, "CalDAVNotificationCalendar: Could not find a REMList of this notification calendar to perform -updateResourcesFromServer: (%@, account: %@)", buf, 0x16u);
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
  v67 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v7 = DALoggingwithCategory();
  v8 = v7;
  if (rem_getCalCalendar)
  {
    v9 = MEMORY[0x277CF3AF0];
    v10 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v7, v10))
    {
      _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138412546;
      selfCopy = lCopy;
      v61 = 2112;
      v62 = _accountLoggingDescription;
      _os_log_impl(&dword_242490000, v8, v10, "CalDAVNotificationCalendar: Removing notification item with url %@ {account: %@}", buf, 0x16u);
    }

    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    v8 = [(MobileCalDAVNotificationCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

    v13 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v8];
    v14 = v13 != 0;
    if (!v13)
    {
      v30 = DALoggingwithCategory();
      v31 = *(v9 + 4);
      if (os_log_type_enabled(v30, v31))
      {
        _accountLoggingDescription2 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        selfCopy = lCopy;
        v61 = 2112;
        v62 = _accountLoggingDescription2;
        _os_log_impl(&dword_242490000, v30, v31, "CalDAVNotificationCalendar: Couldn't get the calendar notification item to remove with {url: %@, account: %@}", buf, 0x16u);
      }

      goto LABEL_35;
    }

    v50 = a2;
    daAccount = [(MobileCalDAVNotificationCalendar *)self daAccount];
    rem_saveRequest = [daAccount rem_saveRequest];

    hostURL = [v13 hostURL];
    v55 = rem_getCalCalendar;
    if (!hostURL)
    {
LABEL_24:

      v35 = [rem_saveRequest updateList:rem_getCalCalendar];
      calDAVNotificationContext = [v35 calDAVNotificationContext];
      if (!calDAVNotificationContext)
      {
        [(MobileCalDAVNotificationCalendar *)v50 _removeCalendarItemWithURL:?];
      }

      [calDAVNotificationContext removeCalDAVNotication:v13];
      v57 = 0;
      v37 = [rem_saveRequest saveSynchronouslyWithError:&v57];
      v38 = v57;
      v39 = v38;
      if (!v37 || v38)
      {
        v43 = DALoggingwithCategory();
        v44 = *(v9 + 3);
        if (os_log_type_enabled(v43, v44))
        {
          [v13 hostURL];
          v45 = v54 = lCopy;
          _accountLoggingDescription3 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          *buf = 138412802;
          selfCopy = v45;
          v61 = 2112;
          v62 = v13;
          v63 = 2112;
          v64 = _accountLoggingDescription3;
          _os_log_impl(&dword_242490000, v43, v44, "CalDAVNotificationCalendar: ERROR: Remove host REMList and notification item failed when trying to -_removeCalendarItemWithURL: {hostURL: %@, notifItem: %@, account: %@}", buf, 0x20u);

          lCopy = v54;
        }
      }

      else
      {
        v40 = DALoggingwithCategory();
        if (os_log_type_enabled(v40, v10))
        {
          hostURL2 = [v13 hostURL];
          [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          v42 = v53 = lCopy;
          *buf = 138412802;
          selfCopy = hostURL2;
          v61 = 2112;
          v62 = v13;
          v63 = 2112;
          v64 = v42;
          _os_log_impl(&dword_242490000, v40, v10, "CalDAVNotificationCalendar: Successfully performed -_removeCalendarItemWithURL: to remove invitation REMList and notification item {hostURL: %@, notifItem: %@, account: %@}", buf, 0x20u);

          lCopy = v53;
        }

        [(MobileCalDAVCalendar *)self rem_reloadCalCalendar];
      }

      [(MobileCalDAVCalendar *)self setIsDirty:1];
      [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];

      rem_getCalCalendar = v55;
      v30 = rem_saveRequest;
      v14 = v13 != 0;
LABEL_35:

      goto LABEL_36;
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    calendarHomeURL = [principal calendarHomeURL];
    v19 = [hostURL da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
    da_appendSlashIfNeeded = [v19 da_appendSlashIfNeeded];

    rem_account = [(MobileCalDAVCalendar *)self rem_account];
    v58 = 0;
    v52 = da_appendSlashIfNeeded;
    v51 = [rem_account fetchListIncludingSpecialContainerWithExternalIdentifier:da_appendSlashIfNeeded error:&v58];
    v22 = v58;

    if (v22 && [v22 code] != -3000)
    {
      v24 = DALoggingwithCategory();
      v9 = MEMORY[0x277CF3AF0];
      LOBYTE(v33) = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v24, v33))
      {
        _accountLoggingDescription4 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412802;
        selfCopy = v52;
        v61 = 2112;
        v62 = v13;
        v63 = 2112;
        v64 = _accountLoggingDescription4;
        v34 = "CalDAVNotificationCalendar: ERROR: Failed to fetch invitation REMList with url %@ when trying to -_removeCalendarItemWithURL: {notifItem: %@, account: %@}";
LABEL_21:
        _os_log_impl(&dword_242490000, v24, v33, v34, buf, 0x20u);
      }
    }

    else
    {
      v23 = DALoggingwithCategory();
      v24 = v23;
      v9 = MEMORY[0x277CF3AF0];
      v25 = v51;
      if (v51)
      {
        if (os_log_type_enabled(v23, v10))
        {
          objectID = [v51 objectID];
          _accountLoggingDescription5 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          *buf = 138413058;
          selfCopy = v52;
          v61 = 2114;
          v62 = objectID;
          v63 = 2112;
          v64 = v13;
          v65 = 2112;
          v66 = _accountLoggingDescription5;
          v27 = _accountLoggingDescription5;
          _os_log_impl(&dword_242490000, v24, v10, "CalDAVNotificationCalendar: _removeCalendarItemWithURL: Now removing the invitation REMList with url %@ {listID: %{public}@, notifItem: %@, account: %@}", buf, 0x2Au);

          v25 = v51;
        }

        v24 = [rem_saveRequest updateList:v25];
        [v24 removeFromParent];
        goto LABEL_23;
      }

      v33 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v23, *(MEMORY[0x277CF3AF0] + 4)))
      {
        _accountLoggingDescription4 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412802;
        selfCopy = v52;
        v61 = 2112;
        v62 = v13;
        v63 = 2112;
        v64 = _accountLoggingDescription4;
        v34 = "CalDAVNotificationCalendar: Could not find the invitation REMList with url %@ when trying to -_removeCalendarItemWithURL: {notifItem: %@, account: %@}";
        goto LABEL_21;
      }
    }

    v25 = v51;
LABEL_23:

    rem_getCalCalendar = v55;
    goto LABEL_24;
  }

  v28 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v7, v28))
  {
    _accountLoggingDescription6 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412546;
    selfCopy = self;
    v61 = 2112;
    v62 = _accountLoggingDescription6;
    _os_log_impl(&dword_242490000, v8, v28, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -removeCalendarItemWithURL: (%@, account: %@)", buf, 0x16u);
  }

  v14 = 0;
LABEL_36:

  return v14;
}

- (void)clearEventChanges
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v3, v4, "CalDAVNotificationCalendar: Clearing notification changes", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = MobileCalDAVNotificationCalendar;
  [(MobileCalDAVCalendar *)&v5 clearEventChanges];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v33 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412546;
    selfCopy2 = self;
    v45 = 2112;
    v46 = _accountLoggingDescription;
    _os_log_impl(&dword_242490000, v5, v6, "CalDAVNotificationCalendar: Preparing sync actions for notification calendar {calendar: %@, account: %@}.", buf, 0x16u);
  }

  daPrincipal = [(MobileCalDAVNotificationCalendar *)self daPrincipal];
  rem_changeTracking = [daPrincipal rem_changeTracking];

  v30 = rem_changeTracking;
  [rem_changeTracking changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v14 = REMCheckedDynamicCast();
        if (v14)
        {
          calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
          v16 = [v14 hasPrefix:calendarURLString];

          if (v16)
          {
            [v4 addObject:v14];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v11);
  }

  v17 = DALoggingwithCategory();
  if (os_log_type_enabled(v17, v6))
  {
    _accountLoggingDescription2 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412802;
    selfCopy2 = self;
    v45 = 2112;
    v46 = _accountLoggingDescription2;
    v47 = 2112;
    v48 = v4;
    _os_log_impl(&dword_242490000, v17, v6, "CalDAVNotificationCalendar: Collected DELETED notification items for for this notification calendar {calendar: %@, account: %@, extIDs: %@}.", buf, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = v4;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * j);
        v25 = DALoggingwithCategory();
        if (os_log_type_enabled(v25, v6))
        {
          *buf = 138412290;
          selfCopy2 = v24;
          _os_log_impl(&dword_242490000, v25, v6, "CalDAVNotificationCalendar: Sending up a delete for the notification at URL %@", buf, 0xCu);
        }

        v26 = objc_alloc(MEMORY[0x277CFDB90]);
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v28 = [(MobileCalDAVNotificationCalendar *)v24 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];
        v29 = [v26 initWithAction:2 context:v28];

        [v33 addObject:v29];
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v21);
  }

  [(MobileCalDAVCalendar *)self setSyncActions:v33];
  blockCopy[2](blockCopy, self);
}

- (BOOL)_handleInviteNotification:(id)notification withResource:(id)resource uid:(id)uid
{
  v146 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  resourceCopy = resource;
  uidCopy = uid;
  rem_account = [(MobileCalDAVCalendar *)self rem_account];
  store = [rem_account store];
  if (store)
  {
    serverID = [resourceCopy serverID];
    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    v122 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    if (!rem_getCalCalendar)
    {
      oslog = DALoggingwithCategory();
      v16 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(oslog, v16))
      {
        _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = _accountLoggingDescription;
        _os_log_impl(&dword_242490000, oslog, v16, "CalDAVNotificationCalendar: _handleInviteNotification: Could not get an REMList of this notification calendar to perform -_handleInviteNotification:withResource:uid: (cal: %@, account: %@)", buf, 0x16u);
      }

      v15 = 0;
      goto LABEL_85;
    }

    inviteStatus = [notificationCopy inviteStatus];
    oslog = [inviteStatus name];

    v113 = [oslog isEqualToString:*MEMORY[0x277CF7078]];
    if (v113)
    {
      v107 = 0;
      v111 = 0;
    }

    else
    {
      if (([oslog isEqualToString:*MEMORY[0x277CF7068]]& 1) != 0)
      {
        v18 = 1;
        v107 = 1;
      }

      else if (([oslog isEqualToString:*MEMORY[0x277CF7058]]& 1) != 0)
      {
        v107 = 0;
        v18 = 2;
      }

      else
      {
        [oslog isEqualToString:*MEMORY[0x277CF7060]];
        v107 = 0;
        v18 = 3;
      }

      v111 = v18;
    }

    hostURL = [notificationCopy hostURL];
    href = [hostURL href];
    payloadAsFullURL = [href payloadAsFullURL];

    principal = [(MobileCalDAVCalendar *)self principal];
    calendarHomeURL = [principal calendarHomeURL];
    v23 = [payloadAsFullURL da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
    da_appendSlashIfNeeded = [v23 da_appendSlashIfNeeded];

    v24 = DALoggingwithCategory();
    type = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v24, type))
    {
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v111];
      _accountLoggingDescription2 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138544386;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v122;
      *&buf[22] = 2114;
      v144 = uidCopy;
      *v145 = 2112;
      *&v145[2] = da_appendSlashIfNeeded;
      *&v145[10] = 2112;
      *&v145[12] = _accountLoggingDescription2;
      _os_log_impl(&dword_242490000, v24, type, "CalDAVNotificationCalendar: _handleInviteNotification: Handling CalDAVCalendarServerInviteNotificationItem for {inviteStatus: %{public}@, extID: %@, uid: %{public}@, url: %@, account: %@}.", buf, 0x34u);
    }

    if (payloadAsFullURL)
    {
      v134 = 0;
      v119 = [rem_account fetchListIncludingSpecialContainerWithExternalIdentifier:da_appendSlashIfNeeded error:&v134];
      v27 = v134;
      v28 = v27;
      if (v27 && [v27 code] != -3000)
      {
        v29 = DALoggingwithCategory();
        v30 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v29, v30))
        {
          _accountLoggingDescription3 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          localizedDescription = [v28 localizedDescription];
          *buf = 138412802;
          *&buf[4] = da_appendSlashIfNeeded;
          *&buf[12] = 2112;
          *&buf[14] = _accountLoggingDescription3;
          *&buf[22] = 2114;
          v144 = localizedDescription;
          _os_log_impl(&dword_242490000, v29, v30, "CalDAVNotificationCalendar: ERROR: _handleInviteNotification: Could not fetch list with url {url: %@, account: %@, error: %{public}@}.", buf, 0x20u);
        }
      }

      objectID = [v119 objectID];

      if ((v113 & 1) == 0)
      {
        if (!v119)
        {
          v119 = 0;
          goto LABEL_55;
        }

        daAccount = [(MobileCalDAVNotificationCalendar *)self daAccount];
        rem_saveRequest = [daAccount rem_saveRequest];

        rem_saveRequest2 = [rem_saveRequest updateList:v119];
        [rem_saveRequest2 removeFromParent];
        v132 = 0;
        v35 = [rem_saveRequest saveSynchronouslyWithError:&v132];
        v105 = v132;
        if (v105)
        {
          v35 = 0;
        }

        v36 = DALoggingwithCategory();
        v37 = v36;
        if (v35)
        {
          if (os_log_type_enabled(v36, type))
          {
            objectID2 = [v119 objectID];
            _accountLoggingDescription4 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *buf = 138412802;
            *&buf[4] = payloadAsFullURL;
            *&buf[12] = 2114;
            *&buf[14] = objectID2;
            *&buf[22] = 2112;
            v144 = _accountLoggingDescription4;
            _os_log_impl(&dword_242490000, v37, type, "CalDAVNotificationCalendar: SUCCESS:_handleInviteNotification: Deleted shared invite-pending calendar of {hostURL: %@, objectID: %{public}@, account: %@}", buf, 0x20u);
          }
        }

        else
        {
          v52 = *(MEMORY[0x277CF3AF0] + 3);
          if (os_log_type_enabled(v36, v52))
          {
            _accountLoggingDescription5 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            localizedDescription2 = [v105 localizedDescription];
            *buf = 138412802;
            *&buf[4] = payloadAsFullURL;
            *&buf[12] = 2112;
            *&buf[14] = _accountLoggingDescription5;
            *&buf[22] = 2112;
            v144 = localizedDescription2;
            _os_log_impl(&dword_242490000, v37, v52, "CalDAVNotificationCalendar: ERROR: _handleInviteNotification: Failed to save delete of the shared invite-pending calendar {hostURL: %@, account: %@, error: %@}", buf, 0x20u);
          }
        }

        goto LABEL_54;
      }
    }

    else
    {
      v40 = DALoggingwithCategory();
      v41 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v40, v41))
      {
        _accountLoggingDescription6 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138543874;
        *&buf[4] = uidCopy;
        *&buf[12] = 2112;
        *&buf[14] = v122;
        *&buf[22] = 2112;
        v144 = _accountLoggingDescription6;
        _os_log_impl(&dword_242490000, v40, v41, "CalDAVNotificationCalendar: LOOKATME: _handleInviteNotification: We don't have a hostURL for this invitation {uid: %{public}@, extID: %@, account: %@}", buf, 0x20u);
      }

      v119 = 0;
      objectID = 0;
      if (!v113)
      {
LABEL_55:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v144 = __Block_byref_object_copy__0;
        *v145 = __Block_byref_object_dispose__0;
        *&v145[8] = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v122];
        v70 = *(*&buf[8] + 40);
        v15 = v70 == 0;
        if (v70)
        {
LABEL_83:
          _Block_object_dispose(buf, 8);

LABEL_84:
LABEL_85:

          goto LABEL_86;
        }

        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = __79__MobileCalDAVNotificationCalendar__handleInviteNotification_withResource_uid___block_invoke;
        v126[3] = &unk_278D4F928;
        v131 = buf;
        v71 = uidCopy;
        v127 = v71;
        v128 = payloadAsFullURL;
        v110 = v122;
        v129 = v110;
        v130 = resourceCopy;
        v125 = 0;
        v72 = [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v126 error:&v125];
        v106 = v125;
        if (v106)
        {
          v73 = 0;
        }

        else
        {
          v73 = v72;
        }

        if (v73)
        {
          v74 = DALoggingwithCategory();
          if (os_log_type_enabled(v74, type))
          {
            objectID3 = [*(*&buf[8] + 40) objectID];
            v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v111];
            _accountLoggingDescription7 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *v135 = 138544130;
            v136 = objectID3;
            v137 = 2114;
            v138 = v75;
            v139 = 2114;
            selfCopy = v71;
            v141 = 2112;
            v142 = _accountLoggingDescription7;
            _os_log_impl(&dword_242490000, v74, type, "CalDAVNotificationCalendar: _handleInviteNotification: Successfully added an REMCalDAVNotification (%{public}@) (inviteStatus: %{public}@, uid: %{public}@, account: %@).", v135, 0x2Au);
          }
        }

        else
        {
          v74 = DALoggingwithCategory();
          v77 = *(MEMORY[0x277CF3AF0] + 3);
          if (os_log_type_enabled(v74, v77))
          {
            _accountLoggingDescription8 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *v135 = 138544130;
            v136 = v71;
            v137 = 2112;
            v138 = v110;
            v139 = 2112;
            selfCopy = self;
            v141 = 2112;
            v142 = _accountLoggingDescription8;
            _os_log_impl(&dword_242490000, v74, v77, "CalDAVNotificationCalendar: _handleInviteNotification: Failed to create and save notification object when -_handleInviteNotification:withResource:uid: {uid: %{public}@, extID: %@, cal: %@, account: %@}", v135, 0x2Au);
          }
        }

        mEMORY[0x277CF3AA8] = [MEMORY[0x277CF3AA8] sharedManager];
        rem_userNotificationPresentingProvider = [mEMORY[0x277CF3AA8] rem_userNotificationPresentingProvider];
        typea = [rem_userNotificationPresentingProvider rem_notificationPresentingForDataAccess];

        if (objectID)
        {
          v80 = [store fetchListIncludingSpecialContainerWithObjectID:objectID error:0];

          v81 = v80;
        }

        else
        {
          v81 = v119;
        }

        v119 = v81;
        if (v81)
        {
          v82 = [typea calDAVSharedListNotificationContentWithList:?];
        }

        else
        {
          v83 = DALoggingwithCategory();
          v84 = *(MEMORY[0x277CF3AF0] + 3);
          if (os_log_type_enabled(v83, v84))
          {
            _accountLoggingDescription9 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *v135 = 138543874;
            v136 = objectID;
            v137 = 2112;
            v138 = v110;
            v139 = 2112;
            selfCopy = _accountLoggingDescription9;
            _os_log_impl(&dword_242490000, v83, v84, "CalDAVNotificationCalendar: _handleInviteNotification: Failed to fetch the invitation REMList object: {listID: %{public}@, extID: %@, account: %@}", v135, 0x20u);
          }

          v82 = 0;
        }

        if (v113)
        {
          summary = [notificationCopy summary];
          payloadAsString = [summary payloadAsString];

          v108 = _REMGetLocalizedString();
          organizer = [notificationCopy organizer];
          commonName = [organizer commonName];
          payloadAsString2 = [commonName payloadAsString];

          if (payloadAsString2)
          {
            resourceSpecifier = payloadAsString2;
          }

          else
          {
            organizer2 = [notificationCopy organizer];
            href2 = [organizer2 href];
            payloadAsFullURL2 = [href2 payloadAsFullURL];
            resourceSpecifier = [payloadAsFullURL2 resourceSpecifier];
          }

          v94 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v108, resourceSpecifier];
          [v82 setTitle:payloadAsString];
          [v82 setBody:v94];
        }

        else
        {
          if (!v107)
          {
LABEL_80:
            if (v82)
            {
              [typea showNotificationWithIdentifier:v110 content:v82 completion:0];
            }

            goto LABEL_83;
          }

          summary2 = [notificationCopy summary];
          payloadAsString = [summary2 payloadAsString];

          v108 = _REMGetLocalizedString();
          payloadAsString2 = [MEMORY[0x277CCACA8] localizedStringWithFormat:payloadAsString];
          [v82 setTitle:payloadAsString];
          [v82 setBody:payloadAsString2];
        }

        goto LABEL_80;
      }
    }

    supportedCalendarComponentSet = [notificationCopy supportedCalendarComponentSet];
    rem_saveRequest = [supportedCalendarComponentSet componentsAsString];

    if (![rem_saveRequest length])
    {
      goto LABEL_41;
    }

    v44 = [MEMORY[0x277CF7048] allowedCalendars:rem_saveRequest contains:@"VEVENT"];
    v45 = [MEMORY[0x277CF7048] allowedCalendars:rem_saveRequest contains:@"VTODO"];
    v46 = v45;
    if (v44 == v45)
    {
      v47 = DALoggingwithCategory();
      v48 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v47, v48))
      {
        *buf = 138543618;
        *&buf[4] = rem_saveRequest;
        *&buf[12] = 2114;
        *&buf[14] = uidCopy;
        _os_log_impl(&dword_242490000, v47, v48, "CalDAVNotificationCalendar: LOOKATME: _handleInviteNotification: The shared calendar should only be either VTODO or VEVENT {supportedComponentString: %{public}@, uid: %{public}@}.", buf, 0x16u);
      }
    }

    if ((v46 & 1) == 0)
    {
LABEL_41:
      v50 = DALoggingwithCategory();
      if (os_log_type_enabled(v50, type))
      {
        _accountLoggingDescription10 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138544130;
        *&buf[4] = uidCopy;
        *&buf[12] = 2112;
        *&buf[14] = v122;
        *&buf[22] = 2112;
        v144 = payloadAsFullURL;
        *v145 = 2112;
        *&v145[2] = _accountLoggingDescription10;
        _os_log_impl(&dword_242490000, v50, type, "CalDAVNotificationCalendar: _handleInviteNotification: Does not seems to be an invitation for VTODO/Reminders, so we stop handling this {uid: %{public}@, extID: %@, hostURL: %@, account: %@}.", buf, 0x2Au);
      }

      v15 = 0;
      goto LABEL_84;
    }

    daAccount2 = [(MobileCalDAVNotificationCalendar *)self daAccount];
    rem_saveRequest2 = [daAccount2 rem_saveRequest];

    v105 = [rem_saveRequest2 updateAccount:rem_account];
    if (v119)
    {
      v37 = [rem_saveRequest2 updateList:?];
    }

    else
    {
      v37 = [rem_saveRequest2 addListWithName:@"__untitled_shared__" toAccountChangeItem:v105];
      [v37 setExternalIdentifier:da_appendSlashIfNeeded];
      objectID4 = [v37 objectID];

      objectID = objectID4;
    }

    [v37 setSharingStatus:3];
    [v37 setDaIsImmutable:1];
    [v37 setDaIsReadOnly:1];
    organizer3 = [notificationCopy organizer];
    commonName2 = [organizer3 commonName];
    payloadAsString3 = [commonName2 payloadAsString];

    organizer4 = [notificationCopy organizer];
    href3 = [organizer4 href];
    payloadAsFullURL3 = [href3 payloadAsFullURL];

    [v37 setSharedOwnerName:payloadAsString3];
    absoluteString = [payloadAsFullURL3 absoluteString];
    [v37 setSharedOwnerAddress:absoluteString];

    summary3 = [notificationCopy summary];
    payloadAsString4 = [summary3 payloadAsString];
    [v37 setName:payloadAsString4];

    v63 = [notificationCopy uid];
    payloadAsString5 = [v63 payloadAsString];
    [v37 setDaExternalIdentificationTag:payloadAsString5];

    [v37 setDaIsEventOnlyContainer:0];
    v133 = 0;
    LODWORD(v63) = [rem_saveRequest2 saveSynchronouslyWithError:&v133];
    v100 = v133;
    v65 = DALoggingwithCategory();
    v66 = v65;
    if (v63)
    {
      if (os_log_type_enabled(v65, type))
      {
        v67 = [MEMORY[0x277CCABB0] numberWithBool:v119 == 0];
        objectID5 = [v37 objectID];
        _accountLoggingDescription11 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138544130;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = payloadAsFullURL;
        *&buf[22] = 2114;
        v144 = objectID5;
        *v145 = 2112;
        *&v145[2] = _accountLoggingDescription11;
        _os_log_impl(&dword_242490000, v66, type, "CalDAVNotificationCalendar: SUCCESS: _handleInviteNotification: Created or updated shared invite-pending list {isCreate: %{public}@, hostURL: %@, objectID: %{public}@, account: %@}.", buf, 0x2Au);
      }
    }

    else
    {
      v69 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v65, *(MEMORY[0x277CF3AF0] + 3)))
      {
        v96 = [MEMORY[0x277CCABB0] numberWithBool:v119 == 0];
        _accountLoggingDescription12 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        localizedDescription3 = [v100 localizedDescription];
        *buf = 138544130;
        *&buf[4] = v96;
        *&buf[12] = 2112;
        *&buf[14] = payloadAsFullURL;
        *&buf[22] = 2112;
        v144 = _accountLoggingDescription12;
        *v145 = 2114;
        *&v145[2] = localizedDescription3;
        _os_log_impl(&dword_242490000, v66, v69, "CalDAVNotificationCalendar: ERROR: _handleInviteNotification: Failed to create or updated shared list for {isCreate: %{public}@, hostURL: %@, account: %@, error: %{public}@}", buf, 0x2Au);
      }
    }

LABEL_54:
    goto LABEL_55;
  }

  v15 = 0;
LABEL_86:

  return v15;
}

void __79__MobileCalDAVNotificationCalendar__handleInviteNotification_withResource_uid___block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 calDAVNotificationContext];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) syncKey];
  v7 = [v10 addCalDAVNotificationWithUUIDString:v3 hostURL:v4 externalIdentifier:v5 externalModificationTag:v6];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (BOOL)_handleInviteReply:(id)reply withResource:(id)resource owningNotification:(id)notification uid:(id)uid
{
  v71 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  uidCopy = uid;
  serverID = [resource serverID];
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v13 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v14, v15))
  {
    inviteStatus = [replyCopy inviteStatus];
    name = [inviteStatus name];
    v18 = [replyCopy debugDescription];
    *buf = 138413314;
    v62 = name;
    v63 = 2112;
    v64 = v13;
    v65 = 2114;
    v66 = uidCopy;
    v67 = 2112;
    selfCopy = self;
    v69 = 2112;
    v70 = v18;
    _os_log_impl(&dword_242490000, v14, v15, "CalDAVNotificationCalendar: _handleInviteReply: Received CalDAVCalendarServerInviteReplyItem for {replyString: %@, extID: %@, uid: %{public}@, calendar: %@, replyItem: %@}.", buf, 0x34u);
  }

  inviteStatus2 = [replyCopy inviteStatus];
  name2 = [inviteStatus2 name];

  v60 = v13;
  if ([name2 isEqualToString:*MEMORY[0x277CF7058]] & 1) != 0 || (objc_msgSend(name2, "isEqualToString:", *MEMORY[0x277CF7060]))
  {
    v21 = _REMGetLocalizedString();
  }

  else
  {
    [name2 isEqualToString:*MEMORY[0x277CF7068]];
    v21 = 0;
  }

  hostURL = [replyCopy hostURL];
  href = [hostURL href];
  payloadAsFullURL = [href payloadAsFullURL];

  daPrincipal = [(MobileCalDAVNotificationCalendar *)self daPrincipal];
  calendarHomeURL = [daPrincipal calendarHomeURL];

  v27 = [payloadAsFullURL da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
  da_appendSlashIfNeeded = [v27 da_appendSlashIfNeeded];

  rem_account = [(MobileCalDAVCalendar *)self rem_account];
  v59 = da_appendSlashIfNeeded;
  v30 = [rem_account fetchListIncludingSpecialContainerWithExternalIdentifier:da_appendSlashIfNeeded error:0];
  v31 = v30;
  if (v21 && v30)
  {
    v53 = v30;
    v54 = calendarHomeURL;
    v57 = uidCopy;
    v58 = rem_account;
    v55 = v21;
    v56 = name2;
    v32 = DALoggingwithCategory();
    if (os_log_type_enabled(v32, v15))
    {
      acceptedURL = [replyCopy acceptedURL];
      resourceSpecifier = [acceptedURL resourceSpecifier];
      href2 = [replyCopy href];
      payloadAsFullURL2 = [href2 payloadAsFullURL];
      resourceSpecifier2 = [payloadAsFullURL2 resourceSpecifier];
      *buf = 138412802;
      v62 = v59;
      v63 = 2112;
      v64 = resourceSpecifier;
      v65 = 2112;
      v66 = resourceSpecifier2;
      _os_log_impl(&dword_242490000, v32, v15, "CalDAVNotificationCalendar: _handleInviteReply: Showing user notification for {extID: %@, acceptedURL: %@, address: %@}", buf, 0x20u);
    }

    mEMORY[0x277CF3AA8] = [MEMORY[0x277CF3AA8] sharedManager];
    rem_userNotificationPresentingProvider = [mEMORY[0x277CF3AA8] rem_userNotificationPresentingProvider];
    rem_notificationPresentingForDataAccess = [rem_userNotificationPresentingProvider rem_notificationPresentingForDataAccess];

    summary = [replyCopy summary];
    payloadAsString = [summary payloadAsString];

    v43 = _REMGetLocalizedString();
    v44 = MEMORY[0x277CCACA8];
    href3 = [replyCopy href];
    payloadAsFullURL3 = [href3 payloadAsFullURL];
    resourceSpecifier3 = [payloadAsFullURL3 resourceSpecifier];
    v48 = [v44 localizedStringWithFormat:v43, resourceSpecifier3, v55];

    v31 = v53;
    v49 = [rem_notificationPresentingForDataAccess calDAVSharedListNotificationContentWithList:v53];
    [v49 setTitle:payloadAsString];
    [v49 setBody:v48];
    [rem_notificationPresentingForDataAccess showNotificationWithIdentifier:v60 content:v49 completion:0];

    v21 = v55;
    name2 = v56;
    uidCopy = v57;
    calendarHomeURL = v54;
LABEL_12:

    rem_account = v58;
    goto LABEL_13;
  }

  if (v21 && !v30)
  {
    v58 = rem_account;
    mEMORY[0x277CF3AA8] = DALoggingwithCategory();
    v51 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(mEMORY[0x277CF3AA8], v51))
    {
      _accountLoggingDescription = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138412546;
      v62 = v59;
      v63 = 2112;
      v64 = _accountLoggingDescription;
      _os_log_impl(&dword_242490000, mEMORY[0x277CF3AA8], v51, "CalDAVNotificationCalendar: _handleInviteReply: Failed to fetch the host REMList object: {extID: %@, account: %@}", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:

  return 0;
}

- (id)_changedAttributesFromCalendarChanges:(id)changes
{
  v55 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = changesCopy;
  v32 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v32)
  {
    v31 = *v49;
    do
    {
      v4 = 0;
      do
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v4;
        v5 = *(*(&v48 + 1) + 8 * v4);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        recurrences = [v5 recurrences];
        v36 = [recurrences countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v36)
        {
          v35 = *v45;
          do
          {
            v6 = 0;
            do
            {
              if (*v45 != v35)
              {
                objc_enumerationMutation(recurrences);
              }

              v39 = v6;
              v7 = *(*(&v44 + 1) + 8 * v6);
              recurrenceID = [v7 recurrenceID];
              if (recurrenceID)
              {
                recurrenceID2 = [v7 recurrenceID];
                payloadAsString = [recurrenceID2 payloadAsString];
              }

              else
              {
                payloadAsString = @"master";
              }

              v11 = [dictionary objectForKeyedSubscript:payloadAsString];
              if (!v11)
              {
                v11 = objc_opt_new();
                [dictionary setObject:v11 forKeyedSubscript:payloadAsString];
              }

              v38 = payloadAsString;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              changes = [v7 changes];
              changedProperties = [changes changedProperties];

              v14 = [changedProperties countByEnumeratingWithState:&v40 objects:v52 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v41;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v41 != v16)
                    {
                      objc_enumerationMutation(changedProperties);
                    }

                    v18 = *(*(&v40 + 1) + 8 * i);
                    nameAttribute = [v18 nameAttribute];

                    if (nameAttribute)
                    {
                      nameAttribute2 = [v18 nameAttribute];
                      v21 = [nameAttribute2 caseInsensitiveCompare:@"dtstart"];

                      if (v21)
                      {
                        goto LABEL_23;
                      }

                      typeAttribute = [v18 typeAttribute];
                      v24 = [typeAttribute caseInsensitiveCompare:@"time"];

                      if (v24)
                      {
                        typeAttribute2 = [v18 typeAttribute];
                        v26 = [typeAttribute2 caseInsensitiveCompare:@"date"];

                        if (v26)
                        {
LABEL_23:
                          nameAttribute3 = [v18 nameAttribute];
                          [v11 addObject:nameAttribute3];

                          continue;
                        }

                        v27 = v11;
                        v28 = @"DateChanged";
                      }

                      else
                      {
                        v27 = v11;
                        v28 = @"TimeChanged";
                      }

                      [v27 addObject:v28];
                    }
                  }

                  v15 = [changedProperties countByEnumeratingWithState:&v40 objects:v52 count:16];
                }

                while (v15);
              }

              v6 = v39 + 1;
            }

            while (v39 + 1 != v36);
            v36 = [recurrences countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v36);
        }

        v4 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v32);
  }

  return dictionary;
}

- (BOOL)_handleResourceChanged:(id)changed withResource:(id)resource uid:(id)uid
{
  v88 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  uidCopy = uid;
  serverID = [resource serverID];
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v11 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138412802;
    v83 = v11;
    v84 = 2114;
    v85 = uidCopy;
    v86 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_242490000, v12, v13, "CalDAVNotificationCalendar: LOOKATME! (Should this be Events only?!)LOOKATME! (Should this be Events only?!) Handling CalDAVCalendarServerResourceChangedItem for {extID: %@, uid: %{public}@, calendar: %@}.", buf, 0x20u);
  }

  v55 = v11;

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  created = [changedCopy created];
  v15 = [created countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v74;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v74 != v17)
        {
          objc_enumerationMutation(created);
        }

        v19 = *(*(&v73 + 1) + 8 * i);
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v13))
        {
          v21 = [v19 debugDescription];
          *buf = 138543618;
          v83 = uidCopy;
          v84 = 2112;
          v85 = v21;
          _os_log_impl(&dword_242490000, v20, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, createdItem: %@}.", buf, 0x16u);
        }
      }

      v16 = [created countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v16);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  updated = [changedCopy updated];
  v23 = [updated countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v70;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v70 != v25)
        {
          objc_enumerationMutation(updated);
        }

        v27 = *(*(&v69 + 1) + 8 * j);
        v28 = DALoggingwithCategory();
        if (os_log_type_enabled(v28, v13))
        {
          v29 = [v27 debugDescription];
          *buf = 138543618;
          v83 = uidCopy;
          v84 = 2112;
          v85 = v29;
          _os_log_impl(&dword_242490000, v28, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, updatedItem: %@}.", buf, 0x16u);
        }
      }

      v24 = [updated countByEnumeratingWithState:&v69 objects:v80 count:16];
    }

    while (v24);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  deleted = [changedCopy deleted];
  v31 = [deleted countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v66;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v66 != v33)
        {
          objc_enumerationMutation(deleted);
        }

        v35 = *(*(&v65 + 1) + 8 * k);
        v36 = DALoggingwithCategory();
        if (os_log_type_enabled(v36, v13))
        {
          v37 = [v35 debugDescription];
          *buf = 138543618;
          v83 = uidCopy;
          v84 = 2112;
          v85 = v37;
          _os_log_impl(&dword_242490000, v36, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, deletedItem: %@}.", buf, 0x16u);
        }
      }

      v32 = [deleted countByEnumeratingWithState:&v65 objects:v79 count:16];
    }

    while (v32);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  collectionChanges = [changedCopy collectionChanges];
  v39 = [collectionChanges countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v62;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(collectionChanges);
        }

        v43 = *(*(&v61 + 1) + 8 * m);
        v44 = DALoggingwithCategory();
        if (os_log_type_enabled(v44, v13))
        {
          v45 = [v43 debugDescription];
          *buf = 138543618;
          v83 = uidCopy;
          v84 = 2112;
          v85 = v45;
          _os_log_impl(&dword_242490000, v44, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, collectionChanges: %@}.", buf, 0x16u);
        }
      }

      v40 = [collectionChanges countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v40);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  collectionUpdates = [changedCopy collectionUpdates];
  v47 = [collectionUpdates countByEnumeratingWithState:&v57 objects:v77 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v58;
    do
    {
      for (n = 0; n != v48; ++n)
      {
        if (*v58 != v49)
        {
          objc_enumerationMutation(collectionUpdates);
        }

        v51 = *(*(&v57 + 1) + 8 * n);
        v52 = DALoggingwithCategory();
        if (os_log_type_enabled(v52, v13))
        {
          v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v51, "state")}];
          *buf = 138543618;
          v83 = uidCopy;
          v84 = 2112;
          v85 = v53;
          _os_log_impl(&dword_242490000, v52, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, collectionUpdates: %@}.", buf, 0x16u);
        }
      }

      v48 = [collectionUpdates countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v48);
  }

  return 0;
}

- (id)_accountLoggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  daAccount = [(MobileCalDAVNotificationCalendar *)self daAccount];
  accountDescription = [daAccount accountDescription];
  daAccount2 = [(MobileCalDAVNotificationCalendar *)self daAccount];
  accountID = [daAccount2 accountID];
  v8 = [v3 stringWithFormat:@"%@:<%@>", accountDescription, accountID];

  return v8;
}

- (void)_removeCalendarItemWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVNotificationCalendar.m" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"notificationContext"}];
}

@end