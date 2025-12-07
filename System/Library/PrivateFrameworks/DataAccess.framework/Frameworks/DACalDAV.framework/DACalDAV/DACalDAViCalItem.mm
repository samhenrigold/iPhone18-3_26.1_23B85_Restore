@interface DACalDAViCalItem
+ (BOOL)_checkOccurrencesForEvent:(id)event fromDate:(id)date toDate:(id)toDate;
+ (BOOL)_shouldApplyEvent:(id)event instanceWithStartDate:(id)date startRange:(id)range endRange:(id)endRange;
+ (BOOL)_shouldApplyEventFromSyncReport:(id)report startDate:(id)date endDate:(id)endDate;
- (BOOL)_addOrModifyEvent:(id)event inICSCalendar:(id)calendar withContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties inMobileCalendar:(id)mobileCalendar;
- (BOOL)deleteFromContainer:(void *)container;
- (BOOL)loadLocalItemWithAccount:(id)account;
- (BOOL)saveToContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account mobileCalendar:(id)calendar outRecurrenceSets:(id *)sets;
- (BOOL)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (DACalDAViCalItem)initWithCalRecord:(void *)record inContainer:(id)container accountID:(id)d;
- (DACalDAViCalItem)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider;
- (NSData)dataPayload;
- (NSMutableDictionary)originatingChangeItems;
- (NSString)description;
- (NSString)filename;
- (NSString)scheduleTag;
- (NSString)syncKey;
- (NSString)uniqueIdentifier;
- (id)_getDetachedEventUniqueIdentifiersAndCleanupDuplicatesForCalEvent:(void *)event;
- (id)documentParsedCalendar:(id)calendar;
- (id)recurrenceSetsForICSCalendar:(id)calendar;
- (void)_fixUpCalendarForServer:(id)server;
- (void)_removeCalEvent:(void *)event fromUniqueIdentifiersSet:(id)set;
- (void)_removeDetachedEventsWithUniqueIdentifiers:(id)identifiers fromEvent:(void *)event withContainer:(void *)container inMobileCalendar:(id)calendar;
- (void)_setModificationInfoOnItem:(void *)item;
- (void)addChangeOfType:(id)type forChangeRowid:(int)rowid;
- (void)cacheDataPayload;
- (void)dealloc;
- (void)setDataPayload:(id)payload;
- (void)setLocalItem:(void *)item;
- (void)setOriginatingChangeItems:(id)items;
- (void)setScheduleTag:(id)tag;
- (void)setSyncKey:(id)key;
@end

@implementation DACalDAViCalItem

- (DACalDAViCalItem)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider
{
  lCopy = l;
  tagCopy = tag;
  payloadCopy = payload;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = DACalDAViCalItem;
  v15 = [(DACalDAViCalItem *)&v28 init];
  v16 = v15;
  if (v15)
  {
    [(DACalDAViCalItem *)v15 setServerID:lCopy];
    [(DACalDAViCalItem *)v16 setSyncKey:tagCopy];
    [(DACalDAViCalItem *)v16 setDataPayload:payloadCopy];
    accountID = [providerCopy accountID];
    [(DACalDAViCalItem *)v16 setAccountID:accountID];

    if (objc_opt_respondsToSelector())
    {
      contextDictionary = [providerCopy contextDictionary];
      v19 = [contextDictionary objectForKeyedSubscript:@"kDACalDAVContextDictionaryKey_DBHelper"];
      dbHelperForLoadLocalItemWithAccount = v16->_dbHelperForLoadLocalItemWithAccount;
      v16->_dbHelperForLoadLocalItemWithAccount = v19;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = DALoggingwithCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          [DACalDAViCalItem initWithURL:v21 eTag:? dataPayload:? inContainerWithURL:? withAccountInfoProvider:?];
        }

        v22 = +[CalDAVDBHelper sharedInstance];
        v23 = v16->_dbHelperForLoadLocalItemWithAccount;
        v16->_dbHelperForLoadLocalItemWithAccount = v22;
      }
    }

    if (!v16->_dbHelperForLoadLocalItemWithAccount)
    {
      v24 = DALoggingwithCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [DACalDAViCalItem initWithURL:v24 eTag:? dataPayload:? inContainerWithURL:? withAccountInfoProvider:?];
      }

      v25 = +[CalDAVDBHelper sharedInstance];
      v26 = v16->_dbHelperForLoadLocalItemWithAccount;
      v16->_dbHelperForLoadLocalItemWithAccount = v25;
    }
  }

  return v16;
}

- (DACalDAViCalItem)initWithCalRecord:(void *)record inContainer:(id)container accountID:(id)d
{
  containerCopy = container;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = DACalDAViCalItem;
  v10 = [(DACalDAViCalItem *)&v16 init];
  v11 = v10;
  if (v10)
  {
    [(DACalDAViCalItem *)v10 setLocalItem:record];
    v12 = CalCalendarItemCopyExternalID();
    v13 = v12;
    if (v12)
    {
      v14 = [v12 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:containerCopy];
      [(DACalDAViCalItem *)v11 setServerID:v14];
    }

    [(DACalDAViCalItem *)v11 setAccountID:dCopy];
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DACalDAViCalItem;
  v4 = [(DACalDAViCalItem *)&v8 description];
  serverID = [(DACalDAViCalItem *)self serverID];
  v6 = [v3 stringWithFormat:@"%@ - (path: %@)", v4, serverID];

  return v6;
}

- (void)dealloc
{
  calItem = self->_calItem;
  if (calItem)
  {
    CFRelease(calItem);
    self->_calItem = 0;
  }

  v4.receiver = self;
  v4.super_class = DACalDAViCalItem;
  [(DACalDAViCalItem *)&v4 dealloc];
}

- (NSString)uniqueIdentifier
{
  da_newGUID = CalCalendarItemCopyUniqueIdentifier();
  if (!da_newGUID)
  {
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    CalCalendarItemSetUniqueIdentifier();
  }

  return da_newGUID;
}

- (NSString)filename
{
  serverID = [(DACalDAViCalItem *)self serverID];

  if (serverID)
  {
    serverID2 = [(DACalDAViCalItem *)self serverID];
    absoluteString = [serverID2 absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];
  }

  else
  {
    if (!self->_calItem)
    {
      [(DACalDAViCalItem *)self loadLocalItemWithAccount:0];
    }

    uniqueIdentifier = [(DACalDAViCalItem *)self uniqueIdentifier];
    absoluteString = CalGetRealUIDFromRecurrenceUID();

    v8 = [absoluteString stringByAppendingPathExtension:@"ics"];
    v9 = [v8 stringByAddingPercentEscapesUsingEncoding:4];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"/" withString:@"%2F"];

    lastPathComponent = v10;
    serverID2 = lastPathComponent;
  }

  v11 = lastPathComponent;

  return v11;
}

- (void)setSyncKey:(id)key
{
  keyCopy = key;
  syncKey = self->_syncKey;
  p_syncKey = &self->_syncKey;
  if (syncKey != keyCopy)
  {
    v8 = keyCopy;
    objc_storeStrong(p_syncKey, key);
    keyCopy = v8;
  }
}

- (NSString)syncKey
{
  v3 = self->_syncKey;
  if (self->_calItem)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v3 = CalCalendarItemCopyExternalModificationTag();
  }

  return v3;
}

- (NSString)scheduleTag
{
  scheduleTag = self->_scheduleTag;
  if (!scheduleTag)
  {
    if (self->_calItem || ([(DACalDAViCalItem *)self loadLocalItemWithAccount:0], self->_calItem))
    {
      v4 = CalCalendarItemCopyExternalScheduleID();
      v5 = self->_scheduleTag;
      self->_scheduleTag = v4;
    }

    scheduleTag = self->_scheduleTag;
  }

  v6 = scheduleTag;

  return v6;
}

- (void)setScheduleTag:(id)tag
{
  tagCopy = tag;
  if (self->_scheduleTag != tagCopy)
  {
    objc_storeStrong(&self->_scheduleTag, tag);
  }

  if (self->_calItem || ([(DACalDAViCalItem *)self loadLocalItemWithAccount:0], self->_calItem))
  {
    CalCalendarItemSetExternalScheduleID();
  }
}

- (void)setOriginatingChangeItems:(id)items
{
  if (self->_originatingChangeItems != items)
  {
    self->_originatingChangeItems = [items mutableCopy];

    MEMORY[0x2821F96F8]();
  }
}

- (NSMutableDictionary)originatingChangeItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_originatingChangeItems)
  {
    v3 = objc_opt_new();
    originatingChangeItems = selfCopy->_originatingChangeItems;
    selfCopy->_originatingChangeItems = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_originatingChangeItems;

  return v5;
}

- (void)addChangeOfType:(id)type forChangeRowid:(int)rowid
{
  v4 = *&rowid;
  typeCopy = type;
  originatingChangeItems = [(DACalDAViCalItem *)self originatingChangeItems];
  v7 = [originatingChangeItems objectForKeyedSubscript:typeCopy];

  if (!v7)
  {
    v7 = objc_opt_new();
    originatingChangeItems2 = [(DACalDAViCalItem *)self originatingChangeItems];
    [originatingChangeItems2 setObject:v7 forKeyedSubscript:typeCopy];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [v7 addObject:v9];
}

- (void)_setModificationInfoOnItem:(void *)item
{
  createdBy = self->_createdBy;
  if (createdBy)
  {
    displayName = [(CalDAVUpdateOwnerItem *)createdBy displayName];
    CalCalendarItemSetCreatedByDisplayName();

    firstName = [(CalDAVUpdateOwnerItem *)self->_createdBy firstName];
    CalCalendarItemSetCreatedByFirstName();

    lastName = [(CalDAVUpdateOwnerItem *)self->_createdBy lastName];
    CalCalendarItemSetCreatedByLastName();

    address = [(CalDAVUpdateOwnerItem *)self->_createdBy address];
    CalCalendarItemSetCreatedByAddress();
  }

  else
  {
    CalCalendarItemSetCreatedByDisplayName();
    CalCalendarItemSetCreatedByFirstName();
    CalCalendarItemSetCreatedByLastName();
    CalCalendarItemSetCreatedByAddress();
  }

  dtstamp = [(CalDAVUpdateOwnerItem *)self->_createdBy dtstamp];
  if (dtstamp)
  {
    v10 = objc_alloc(MEMORY[0x277D7F0E8]);
    dtstamp2 = [(CalDAVUpdateOwnerItem *)self->_createdBy dtstamp];
    v12 = [v10 initWithValue:dtstamp2];
  }

  else
  {
    v12 = 0;
  }

  CalDateFromICSDateAsUTC();
  v14 = *MEMORY[0x277CF78F0];
  if (v13 == *MEMORY[0x277CF78F0])
  {
    CalCalendarItemSetCreatedDate();
    CalCalendarItemSetCreatedTimezone();
  }

  else
  {
    v15 = CFDateCreate(0, v13);
    CalCalendarItemSetCreatedDate();
    [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    CalCalendarItemSetCreatedTimezone();
    if (v15)
    {
      CFRelease(v15);
    }
  }

  updatedBy = self->_updatedBy;
  if (updatedBy)
  {
    displayName2 = [(CalDAVUpdateOwnerItem *)updatedBy displayName];
    CalCalendarItemSetModifiedByDisplayName();

    firstName2 = [(CalDAVUpdateOwnerItem *)self->_updatedBy firstName];
    CalCalendarItemSetModifiedByFirstName();

    lastName2 = [(CalDAVUpdateOwnerItem *)self->_updatedBy lastName];
    CalCalendarItemSetModifiedByLastName();

    address2 = [(CalDAVUpdateOwnerItem *)self->_updatedBy address];
    CalCalendarItemSetModifiedByAddress();
  }

  else
  {
    CalCalendarItemSetModifiedByDisplayName();
    CalCalendarItemSetModifiedByFirstName();
    CalCalendarItemSetModifiedByLastName();
    CalCalendarItemSetModifiedByAddress();
  }

  dtstamp3 = [(CalDAVUpdateOwnerItem *)self->_updatedBy dtstamp];
  if (dtstamp3)
  {
    v22 = objc_alloc(MEMORY[0x277D7F0E8]);
    dtstamp4 = [(CalDAVUpdateOwnerItem *)self->_updatedBy dtstamp];
    v26 = [v22 initWithValue:dtstamp4];

    v12 = dtstamp4;
  }

  else
  {
    v26 = 0;
  }

  CalDateFromICSDateAsUTC();
  if (v24 == v14)
  {
    CalCalendarItemSetModifiedDate();
    CalCalendarItemSetModifiedTimezone();
  }

  else
  {
    v25 = CFDateCreate(0, v24);
    CalCalendarItemSetModifiedDate();
    [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    CalCalendarItemSetModifiedTimezone();
    if (v25)
    {
      CFRelease(v25);
    }
  }
}

- (id)_getDetachedEventUniqueIdentifiersAndCleanupDuplicatesForCalEvent:(void *)event
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = CalEventCopyDetachedEvents();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count)
    {
      v6 = Count;
      v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:Count];
      v8 = 0;
      v9 = *(MEMORY[0x277D03988] + 3);
      do
      {
        CFArrayGetValueAtIndex(v4, v8);
        v10 = CalEventCopyUniqueIdentifier();
        if ([v7 containsObject:v10])
        {
          v11 = DALoggingwithCategory();
          if (os_log_type_enabled(v11, v9))
          {
            RowID = CalCalendarItemGetRowID();
            *buf = 67109378;
            v15 = RowID;
            v16 = 2114;
            v17 = v10;
            _os_log_impl(&dword_2484B2000, v11, v9, "Removing detachment (ROWID = %d) with duplicate UID (%{public}@)", buf, 0x12u);
          }

          CalEventRemoveDetachedEvent();
        }

        else
        {
          [v7 addObject:v10];
        }

        ++v8;
      }

      while (v6 != v8);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeCalEvent:(void *)event fromUniqueIdentifiersSet:(id)set
{
  setCopy = set;
  v4 = CalEventCopyUniqueIdentifier();
  if ([setCopy containsObject:v4])
  {
    [setCopy removeObject:v4];
  }
}

- (void)_removeDetachedEventsWithUniqueIdentifiers:(id)identifiers fromEvent:(void *)event withContainer:(void *)container inMobileCalendar:(id)calendar
{
  v35 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  calendarCopy = calendar;
  principal = [calendarCopy principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  v23 = calendarCopy;
  accountID = [calendarCopy accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = identifiersCopy;
  v13 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = CalDatabaseCopyAllEventsWithUniqueIdentifierInCalendar();
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v26;
          do
          {
            v22 = 0;
            do
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v18);
              }

              CalEventRemoveDetachedEvent();
              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v20);
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }
}

- (BOOL)_addOrModifyEvent:(id)event inICSCalendar:(id)calendar withContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties inMobileCalendar:(id)mobileCalendar
{
  v99 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  calendarCopy = calendar;
  mobileCalendarCopy = mobileCalendar;
  principal = [mobileCalendarCopy principal];
  refreshContext = [principal refreshContext];
  localItems = [refreshContext localItems];

  v14 = MEMORY[0x277D03988];
  if (!localItems)
  {
    v15 = DALoggingwithCategory();
    v16 = *(v14 + 6);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v15, v16, "There were no local items for this first time sync, so we're not going to match anything locally", buf, 2u);
    }
  }

  v17 = DALoggingwithCategory();
  type = *(v14 + 6);
  if (os_log_type_enabled(v17, type))
  {
    v18 = [eventCopy uid];
    *buf = 138412290;
    *v94 = v18;
    _os_log_impl(&dword_2484B2000, v17, type, "Adding or modifying event with guid %@\n", buf, 0xCu);
  }

  principal2 = [mobileCalendarCopy principal];
  account = [principal2 account];
  dbHelper = [account dbHelper];
  accountID = [mobileCalendarCopy accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  containerCopy2 = container;
  if (container)
  {
    principal3 = [mobileCalendarCopy principal];
    account2 = [principal3 account];

    v92 = 0;
    v80 = account2;
    v26 = CalDatabaseCopyUpdatedCalEventFromICSEventWithOptions();
    v27 = v26 != 0;
    if (v26)
    {
      v28 = v26;
      v29 = [(DACalDAViCalItem *)self _getDetachedEventUniqueIdentifiersAndCleanupDuplicatesForCalEvent:v26];
      principal4 = [mobileCalendarCopy principal];
      account3 = [principal4 account];
      CalCalendarItemSetupOrganizerAndSelfAttendeeForImportedItem();

      CalEventNotifyInvitationIfNeededWithOptions();
      [(DACalDAViCalItem *)self _setModificationInfoOnItem:v28];
      if (localProperties)
      {
        *localProperties = 1;
      }

      v86 = v28;
      v32 = CalEntityCopyRecordID();
      v33 = [eventCopy uid];
      [mobileCalendarCopy setUniqueIdentifier:v33 forRecordID:v32];

      v34 = v80;
      if (v32)
      {
        CFRelease(v32);
      }

      v79 = v29;
      v77 = v27;
      CalCalendarItemSetExternalScheduleID();
      v35 = DALoggingwithCategory();
      if (os_log_type_enabled(v35, type))
      {
        v36 = [eventCopy uid];
        v37 = [calendarCopy componentOccurrencesForKey:v36];
        v38 = [v37 count];
        *buf = 134217984;
        *v94 = v38;
        _os_log_impl(&dword_2484B2000, v35, type, "ICSEvent has %lu detached events", buf, 0xCu);
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v39 = [eventCopy uid];
      v40 = [calendarCopy componentOccurrencesForKey:v39];

      v41 = [v40 countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v89;
        do
        {
          v44 = 0;
          v84 = v42;
          do
          {
            if (*v89 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v88 + 1) + 8 * v44);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = objc_autoreleasePoolPush();
              v92 = 0;
              v47 = CalDatabaseCopyUpdatedCalEventFromICSEventWithOptions();
              if (v47)
              {
                v48 = v47;
                v49 = mobileCalendarCopy;
                v50 = CalEventCopyOriginalEvent();
                v51 = DALoggingwithCategory();
                v52 = os_log_type_enabled(v51, type);
                if (v50 == v86)
                {
                  if (v52)
                  {
                    RowID = CalCalendarItemGetRowID();
                    v62 = CalCalendarItemGetRowID();
                    *buf = 67109376;
                    *v94 = RowID;
                    *&v94[4] = 1024;
                    *&v94[6] = v62;
                    _os_log_impl(&dword_2484B2000, v51, type, "%d is already the original event for %d", buf, 0xEu);
                  }

                  if (v50)
                  {
LABEL_26:
                    CFRelease(v50);
                  }
                }

                else
                {
                  if (v52)
                  {
                    v53 = CalCalendarItemGetRowID();
                    v54 = CalCalendarItemGetRowID();
                    *buf = 67109376;
                    *v94 = v53;
                    *&v94[4] = 1024;
                    *&v94[6] = v54;
                    _os_log_impl(&dword_2484B2000, v51, type, "Setting %d as the original event for %d", buf, 0xEu);
                  }

                  CalEventAddDetachedEvent();
                  if (v50)
                  {
                    goto LABEL_26;
                  }
                }

                if (v92 == 1)
                {
                  CalEventGetLocationPredictionState();
                  CalEventSetLocationPredictionState();
                }

                mobileCalendarCopy = v49;
                principal5 = [v49 principal];
                account4 = [principal5 account];
                containerCopy2 = container;
                CalCalendarItemSetupOrganizerAndSelfAttendeeForImportedItem();

                CalEventNotifyInvitationIfNeededWithOptions();
                [(DACalDAViCalItem *)self _setModificationInfoOnItem:v48];
                if (localProperties && (v92 & 0x100) == 0)
                {
                  *localProperties = 1;
                }

                v57 = CalEntityCopyRecordID();
                v58 = [v45 uid];
                [mobileCalendarCopy setUniqueIdentifier:v58 forRecordID:v57];

                if (v57)
                {
                  CFRelease(v57);
                }

                CalCalendarItemSetExternalScheduleID();
                [(DACalDAViCalItem *)self _removeCalEvent:v48 fromUniqueIdentifiersSet:v79];
                CFRelease(v48);
                v34 = v80;
              }

              objc_autoreleasePoolPop(v46);
              v42 = v84;
              goto LABEL_39;
            }

            v59 = DALoggingwithCategory();
            if (os_log_type_enabled(v59, type))
            {
              v60 = [eventCopy uid];
              *buf = 138412290;
              *v94 = v60;
              _os_log_impl(&dword_2484B2000, v59, type, "Encountered an unknown ICSComponent in the subcomponents for: %@", buf, 0xCu);
            }

LABEL_39:
            ++v44;
          }

          while (v42 != v44);
          v63 = [v40 countByEnumeratingWithState:&v88 objects:v98 count:16];
          v42 = v63;
        }

        while (v63);
      }

      v64 = v79;
      [(DACalDAViCalItem *)self _removeDetachedEventsWithUniqueIdentifiers:v79 fromEvent:v86 withContainer:containerCopy2 inMobileCalendar:mobileCalendarCopy];
      CalParticipantPropagateUUIDsFromMainEventToDetachments();
      CFRelease(v86);
      v27 = v77;
    }

    else
    {
      v64 = DALoggingwithCategory();
      v75 = *(v14 + 3);
      if (os_log_type_enabled(v64, v75))
      {
        *buf = 138412290;
        *v94 = eventCopy;
        _os_log_impl(&dword_2484B2000, v64, v75, "Could not create CalEvent for %@.", buf, 0xCu);
      }

      v34 = v80;
    }
  }

  else
  {
    v65 = DALoggingwithCategory();
    v66 = *(v14 + 3);
    v34 = v65;
    if (os_log_type_enabled(v65, v66))
    {
      title = [mobileCalendarCopy title];
      principal6 = [mobileCalendarCopy principal];
      account5 = [principal6 account];
      [account5 accountDescription];
      v71 = v70 = v34;
      principal7 = [mobileCalendarCopy principal];
      account6 = [principal7 account];
      publicDescription = [account6 publicDescription];
      *buf = 138412802;
      *v94 = title;
      *&v94[8] = 2112;
      v95 = v71;
      v96 = 2114;
      v97 = publicDescription;
      _os_log_impl(&dword_2484B2000, v70, v66, "Could not find local CalDAV calendar %@ for the account %@ (%{public}@). Refusing to add event.", buf, 0x20u);

      v34 = v70;
    }

    v27 = 0;
  }

  return v27;
}

+ (BOOL)_shouldApplyEvent:(id)event instanceWithStartDate:(id)date startRange:(id)range endRange:(id)endRange
{
  eventCopy = event;
  dateCopy = date;
  rangeCopy = range;
  endRangeCopy = endRange;
  dtend = [eventCopy dtend];

  if (dtend)
  {
    if (_shouldApplyEvent_instanceWithStartDate_startRange_endRange__onceToken != -1)
    {
      +[DACalDAViCalItem _shouldApplyEvent:instanceWithStartDate:startRange:endRange:];
    }

    dtend2 = [eventCopy dtend];
    components = [dtend2 components];

    [components setCalendar:_shouldApplyEvent_instanceWithStartDate_startRange_endRange__sCalendar];
    v16 = MEMORY[0x277CBEBB0];
    dtend3 = [eventCopy dtend];
    tzid = [dtend3 tzid];
    v19 = [v16 timeZoneWithName:tzid];
    [components setTimeZone:v19];

    date = [components date];
    dtstart = [eventCopy dtstart];
    components2 = [dtstart components];

    [components2 setCalendar:_shouldApplyEvent_instanceWithStartDate_startRange_endRange__sCalendar];
    v23 = MEMORY[0x277CBEBB0];
    dtstart2 = [eventCopy dtstart];
    tzid2 = [dtstart2 tzid];
    v26 = [v23 timeZoneWithName:tzid2];
    [components2 setTimeZone:v26];

    date2 = [components2 date];
    [date timeIntervalSinceDate:date2];
    v28 = [dateCopy dateByAddingTimeInterval:?];
    v29 = [rangeCopy compare:v28] == -1 && objc_msgSend(endRangeCopy, "compare:", dateCopy) == 1;

    goto LABEL_12;
  }

  duration = [eventCopy duration];

  if (duration)
  {
    duration2 = [eventCopy duration];
    [duration2 timeInterval];
    v33 = v32;

    if (v33 > 0.0)
    {
      components = [eventCopy duration];
      [components timeInterval];
      date = [dateCopy dateByAddingTimeInterval:?];
      v29 = [rangeCopy compare:date] == -1 && objc_msgSend(endRangeCopy, "compare:", dateCopy) == 1;
LABEL_12:

LABEL_13:
      goto LABEL_14;
    }
  }

  else
  {
    dtstart3 = [eventCopy dtstart];
    hasTimeComponent = [dtstart3 hasTimeComponent];

    if (!hasTimeComponent)
    {
      components = [dateCopy dateByAddingTimeInterval:86400.0];
      v29 = [rangeCopy compare:components] == -1 && objc_msgSend(endRangeCopy, "compare:", dateCopy) == 1;
      goto LABEL_13;
    }
  }

  v29 = [rangeCopy compare:dateCopy] != 1 && objc_msgSend(endRangeCopy, "compare:", dateCopy) == 1;
LABEL_14:

  return v29;
}

uint64_t __80__DACalDAViCalItem__shouldApplyEvent_instanceWithStartDate_startRange_endRange___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  _shouldApplyEvent_instanceWithStartDate_startRange_endRange__sCalendar = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_checkOccurrencesForEvent:(id)event fromDate:(id)date toDate:(id)toDate
{
  v49 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dateCopy = date;
  toDateCopy = toDate;
  if (_checkOccurrencesForEvent_fromDate_toDate__onceToken != -1)
  {
    +[DACalDAViCalItem _checkOccurrencesForEvent:fromDate:toDate:];
  }

  v9 = MEMORY[0x277CBEBB0];
  dtstart = [eventCopy dtstart];
  tzid = [dtstart tzid];
  v12 = [v9 timeZoneWithName:tzid];

  dtstart2 = [eventCopy dtstart];
  components = [dtstart2 components];

  v41 = v12;
  [components setTimeZone:v12];
  v15 = [_checkOccurrencesForEvent_fromDate_toDate__sCalendar dateFromComponents:components];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [eventCopy rrule];
  v16 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v38 = components;
    v39 = eventCopy;
    v18 = *v45;
    v40 = *MEMORY[0x277CBE650];
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        until = [v20 until];

        if (until)
        {
          until2 = [v20 until];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v24 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v40];
            v25 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
            [v24 setTimeZone:v25];

            until3 = [v20 until];
            components2 = [until3 components];
            v28 = [v24 dateFromComponents:components2];
          }

          else
          {
            until4 = [v20 until];
            components3 = [until4 components];

            [components3 setTimeZone:v41];
            v28 = [_checkOccurrencesForEvent_fromDate_toDate__sCalendar dateFromComponents:components3];
          }
        }

        else
        {
          v28 = [v20 count];

          if (!v28)
          {
            goto LABEL_34;
          }

          v29 = [v20 count];
          intValue = [v29 intValue];
          interval = [v20 interval];
          intValue2 = [interval intValue];

          if ([v20 freq] == 7)
          {
            v33 = 4;
          }

          else if ([v20 freq] == 6)
          {
            v33 = 8;
          }

          else if ([v20 freq] == 5)
          {
            v33 = 0x2000;
          }

          else if ([v20 freq] == 4)
          {
            v33 = 16;
          }

          else if ([v20 freq] == 3)
          {
            v33 = 32;
          }

          else if ([v20 freq] == 2)
          {
            v33 = 64;
          }

          else if ([v20 freq] == 1)
          {
            v33 = 128;
          }

          else
          {
            v33 = 16;
          }

          v28 = [_checkOccurrencesForEvent_fromDate_toDate__sCalendar dateByAddingUnit:v33 value:intValue2 * (intValue - 1) toDate:v15 options:0];
        }

        if ([dateCopy compare:v28] == -1 && objc_msgSend(toDateCopy, "compare:", v15) == 1)
        {
LABEL_34:

          v36 = 1;
          goto LABEL_35;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v36 = 0;
LABEL_35:
    components = v38;
    eventCopy = v39;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

uint64_t __62__DACalDAViCalItem__checkOccurrencesForEvent_fromDate_toDate___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  _checkOccurrencesForEvent_fromDate_toDate__sCalendar = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_shouldApplyEventFromSyncReport:(id)report startDate:(id)date endDate:(id)endDate
{
  reportCopy = report;
  dateCopy = date;
  endDateCopy = endDate;
  if (_shouldApplyEventFromSyncReport_startDate_endDate__onceToken != -1)
  {
    +[DACalDAViCalItem _shouldApplyEventFromSyncReport:startDate:endDate:];
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = 1;
    goto LABEL_14;
  }

  if (!dateCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  [dateCopy setCalendar:_shouldApplyEventFromSyncReport_startDate_endDate__sCalendar];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [dateCopy setTimeZone:localTimeZone];

  date = [dateCopy date];
  [endDateCopy setCalendar:_shouldApplyEventFromSyncReport_startDate_endDate__sCalendar];
  localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
  [endDateCopy setTimeZone:localTimeZone2];

  if (endDateCopy)
  {
    [endDateCopy date];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v14 = ;
  dtstart = [reportCopy dtstart];
  components = [dtstart components];

  [components setCalendar:_shouldApplyEventFromSyncReport_startDate_endDate__sCalendar];
  v17 = MEMORY[0x277CBEBB0];
  dtstart2 = [reportCopy dtstart];
  tzid = [dtstart2 tzid];
  v20 = [v17 timeZoneWithName:tzid];
  [components setTimeZone:v20];

  date2 = [components date];
  if ([self _shouldApplyEvent:reportCopy instanceWithStartDate:date2 startRange:date endRange:v14])
  {
    v22 = 1;
  }

  else
  {
    rrule = [reportCopy rrule];

    if (rrule)
    {
      v22 = [self _checkOccurrencesForEvent:reportCopy fromDate:date toDate:v14];
    }

    else
    {
      v22 = 0;
    }
  }

LABEL_14:
  return v22;
}

uint64_t __70__DACalDAViCalItem__shouldApplyEventFromSyncReport_startDate_endDate___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  _shouldApplyEventFromSyncReport_startDate_endDate__sCalendar = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)saveToContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account mobileCalendar:(id)calendar outRecurrenceSets:(id *)sets
{
  propertiesCopy = properties;
  v154 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  calendarCopy = calendar;
  v11 = objc_alloc(MEMORY[0x277D7F108]);
  dataPayload = [(DACalDAViCalItem *)self dataPayload];
  v144 = 0;
  v13 = [v11 initWithData:dataPayload encoding:4 options:0 delegate:self error:&v144];
  v98 = v144;

  selfCopy = self;
  [(DACalDAViCalItem *)self setDocument:v13];
  v97 = v13;
  if (v13)
  {
    principal = [calendarCopy principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [calendarCopy accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    calendar = [v13 calendar];
    v95 = componentsWithPhantomMasterForICSCalendar();
    [calendar setComponents:? options:?];
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = [calendar componentKeys];
    v119 = [obj countByEnumeratingWithState:&v140 objects:v149 count:16];
    v20 = 0;
    if (!v119)
    {
      v101 = 0;
      goto LABEL_105;
    }

    v101 = 0;
    v118 = *v141;
    v21 = *(MEMORY[0x277D03988] + 6);
    type = *(MEMORY[0x277D03988] + 3);
    v22 = *(MEMORY[0x277D03988] + 5);
    v117 = calendarCopy;
    v115 = calendar;
    v120 = v21;
    v116 = v22;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v141 != v118)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [calendar componentForKey:*(*(&v140 + 1) + 8 * v23)];
        if (v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            context = objc_autoreleasePoolPush();
            v25 = DALoggingwithCategory();
            if (os_log_type_enabled(v25, v21))
            {
              v26 = [v24 description];
              *buf = 138412290;
              v151 = v26;
              _os_log_impl(&dword_2484B2000, v25, v21, "Processing component %@", buf, 0xCu);
            }

            v121 = v24;
            v27 = [v121 propertiesForName:*MEMORY[0x277CF76A0]];
            v113 = v27;
            if (v27)
            {
              firstObject = [v27 firstObject];
              value = [firstObject value];
              bOOLValue = [value BOOLValue];
            }

            else
            {
              bOOLValue = 0;
            }

            containerCopy2 = container;
            v123 = v24;
            v38 = [v121 uid];
            v122 = v38;
            if (!v20)
            {
              newlyAddedItems = [calendarCopy newlyAddedItems];
              [accountCopy itemIDsToMoveActions];
              v41 = v40 = calendarCopy;
              v109 = newlyAddedItems;
              v20 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v41, "count") + objc_msgSend(newlyAddedItems, "count")}];
              v136 = 0u;
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              newlyAddedItems2 = [v40 newlyAddedItems];
              v43 = [newlyAddedItems2 countByEnumeratingWithState:&v136 objects:v148 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v137;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v137 != v45)
                    {
                      objc_enumerationMutation(newlyAddedItems2);
                    }

                    [*(*(&v136 + 1) + 8 * i) calItem];
                    v47 = CalCalendarItemCopyUniqueIdentifier();
                    if (v47)
                    {
                      [v20 addObject:v47];
                    }
                  }

                  v44 = [newlyAddedItems2 countByEnumeratingWithState:&v136 objects:v148 count:16];
                }

                while (v44);
              }

              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              allValues = [v41 allValues];
              v49 = [allValues countByEnumeratingWithState:&v132 objects:v147 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v133;
                do
                {
                  for (j = 0; j != v50; ++j)
                  {
                    if (*v133 != v51)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    uniqueIdentifier = [*(*(&v132 + 1) + 8 * j) uniqueIdentifier];
                    if (uniqueIdentifier)
                    {
                      [v20 addObject:uniqueIdentifier];
                    }
                  }

                  v50 = [allValues countByEnumeratingWithState:&v132 objects:v147 count:16];
                }

                while (v50);
              }

              v130 = 0u;
              v131 = 0u;
              v128 = 0u;
              v129 = 0u;
              syncActions = [v117 syncActions];
              v55 = [syncActions countByEnumeratingWithState:&v128 objects:v146 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v129;
                do
                {
                  for (k = 0; k != v56; ++k)
                  {
                    if (*v129 != v57)
                    {
                      objc_enumerationMutation(syncActions);
                    }

                    v59 = *(*(&v128 + 1) + 8 * k);
                    if ([v59 action] == 1)
                    {
                      context = [v59 context];
                      [context calItem];
                      v61 = CalCalendarItemCopyUniqueIdentifier();
                      if (v61)
                      {
                        [v20 addObject:v61];
                      }
                    }
                  }

                  v56 = [syncActions countByEnumeratingWithState:&v128 objects:v146 count:16];
                }

                while (v56);
              }

              calendarCopy = v117;
              containerCopy2 = container;
              calendar = v115;
              v21 = v120;
              v38 = v122;
            }

            v62 = [v20 containsObject:v38];
            v63 = CalDatabaseCopyEventWithUniqueIdentifierInCalendar();
            v64 = v63;
            v65 = 0;
            if (!v62)
            {
              v66 = containerCopy2;
              goto LABEL_61;
            }

            v66 = containerCopy2;
            if (v63)
            {
              goto LABEL_61;
            }

            v67 = CalCalendarCopyStore();
            v64 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
            if (v67)
            {
              CFRelease(v67);
            }

            v68 = DALoggingwithCategory();
            v69 = os_log_type_enabled(v68, v21);
            v24 = v123;
            if (v64)
            {
              if (v69)
              {
                *buf = 138412290;
                v151 = v122;
                _os_log_impl(&dword_2484B2000, v68, v21, "Event %@ changed calendars in the same store since we PUT it. Updating event on new calendar", buf, 0xCu);
              }

              v65 = CalEventCopyUncachedCalendar();
              v66 = v65;
LABEL_61:
              v106 = v66;
              syncToken = [calendarCopy syncToken];

              v107 = v65;
              if (!syncToken)
              {
                v24 = v123;
                if (v64)
                {
                  CFRelease(v64);
                }

                goto LABEL_69;
              }

              if (v64)
              {
                v71 = DALoggingwithCategory();
                if (os_log_type_enabled(v71, v21))
                {
                  *buf = 138412290;
                  v151 = v122;
                  _os_log_impl(&dword_2484B2000, v71, v21, "The event %@ already exists locally, so we're going to update it regardless of its start time", buf, 0xCu);
                }

                CFRelease(v64);
LABEL_66:
                v24 = v123;
                goto LABEL_69;
              }

              if (!bOOLValue)
              {
                v84 = objc_opt_class();
                principal2 = [calendarCopy principal];
                eventFilterStartDate = [principal2 eventFilterStartDate];
                principal3 = [calendarCopy principal];
                eventFilterEndDate = [principal3 eventFilterEndDate];
                LOBYTE(v84) = [v84 _shouldApplyEventFromSyncReport:v121 startDate:eventFilterStartDate endDate:eventFilterEndDate];

                v21 = v120;
                v24 = v123;
                if (v84)
                {
                  goto LABEL_69;
                }

                goto LABEL_95;
              }

              v126 = 0u;
              v127 = 0u;
              v124 = 0u;
              v125 = 0u;
              v75 = [calendar componentOccurrencesForKey:v122];
              v24 = v123;
              v112 = [v75 countByEnumeratingWithState:&v124 objects:v145 count:16];
              if (!v112)
              {

                goto LABEL_69;
              }

              v110 = *v125;
              v104 = v75;
              while (2)
              {
                v76 = 0;
                do
                {
                  if (*v125 != v110)
                  {
                    objc_enumerationMutation(v104);
                  }

                  v77 = *(*(&v124 + 1) + 8 * v76);
                  v78 = objc_opt_class();
                  principal4 = [calendarCopy principal];
                  eventFilterStartDate2 = [principal4 eventFilterStartDate];
                  principal5 = [calendarCopy principal];
                  eventFilterEndDate2 = [principal5 eventFilterEndDate];
                  v83 = [v78 _shouldApplyEventFromSyncReport:v77 startDate:eventFilterStartDate2 endDate:eventFilterEndDate2];

                  if (v83)
                  {

                    calendarCopy = v117;
                    calendar = v115;
                    v21 = v120;
                    goto LABEL_66;
                  }

                  ++v76;
                  calendarCopy = v117;
                  calendar = v115;
                  v21 = v120;
                  v24 = v123;
                }

                while (v112 != v76);
                v112 = [v104 countByEnumeratingWithState:&v124 objects:v145 count:16];
                if (v112)
                {
                  continue;
                }

                break;
              }

              if (v83)
              {
LABEL_69:
                if ([(DACalDAViCalItem *)selfCopy _addOrModifyEvent:v121 inICSCalendar:calendar withContainer:v106 shouldMergeProperties:propertiesCopy outMergeDidChooseLocalProperties:localProperties inMobileCalendar:calendarCopy])
                {
                  serverID = [(DACalDAViCalItem *)selfCopy serverID];
                  [calendarCopy setURL:serverID forResourceWithUUID:v122];
                  v101 = 1;
                  goto LABEL_71;
                }

                serverID = DALoggingwithCategory();
                v73 = v107;
                if (os_log_type_enabled(serverID, type))
                {
                  *buf = 138412290;
                  v151 = v122;
                  _os_log_impl(&dword_2484B2000, serverID, type, "Error adding or modifying event with uid %@", buf, 0xCu);
                }
              }

              else
              {
LABEL_95:
                serverID = DALoggingwithCategory();
                if (os_log_type_enabled(serverID, v21))
                {
                  serverID2 = [(DACalDAViCalItem *)selfCopy serverID];
                  *buf = 138412290;
                  v151 = serverID2;
                  _os_log_impl(&dword_2484B2000, serverID, v21, "Not applying event at %@ because it is outside of our time filter", buf, 0xCu);
                }

LABEL_71:
                v73 = v107;
              }

              if (v73)
              {
                CFRelease(v73);
              }

              v74 = 1;
            }

            else
            {
              if (v69)
              {
                *buf = 138412290;
                v151 = v122;
                _os_log_impl(&dword_2484B2000, v68, v21, "Event %@ can't be found in the same store since we PUT it. Don't save it when syncing.", buf, 0xCu);
              }

              v74 = 0;
            }

            v22 = v116;

            objc_autoreleasePoolPop(context);
            if ((v74 & 1) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_16;
          }
        }

        v30 = DALoggingwithCategory();
        if (os_log_type_enabled(v30, v22))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v30, v22, "component passed to processComponent: is NULL or not ICSEvent", buf, 2u);
        }

LABEL_16:
        if (_CalDatabaseUnlockRequested())
        {
          v31 = v24;
          v32 = DALoggingwithCategory();
          if (os_log_type_enabled(v32, v22))
          {
            *buf = 0;
            _os_log_impl(&dword_2484B2000, v32, v22, "******Database unlock requested. Saving the database to give a higher priority app a chance", buf, 2u);
          }

          principal6 = [calendarCopy principal];
          account2 = [principal6 account];
          dbHelper2 = [account2 dbHelper];
          accountID2 = [calendarCopy accountID];
          [dbHelper2 calSaveDatabaseForAccountID:accountID2];

          v22 = v116;
          v21 = v120;
          v24 = v31;
        }

LABEL_78:

        ++v23;
      }

      while (v23 != v119);
      v90 = [obj countByEnumeratingWithState:&v140 objects:v149 count:16];
      v119 = v90;
      if (!v90)
      {
LABEL_105:

        if (sets)
        {
          *sets = [(DACalDAViCalItem *)selfCopy recurrenceSetsForICSCalendar:calendar];
        }

        v93 = v101;
        goto LABEL_108;
      }
    }
  }

  v20 = DALoggingwithCategory();
  v91 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v20, v91))
  {
    dataPayload2 = [(DACalDAViCalItem *)self dataPayload];
    *buf = 138412546;
    v151 = v98;
    v152 = 2112;
    v153 = dataPayload2;
    _os_log_impl(&dword_2484B2000, v20, v91, "Could not create an ICSDocument from the data from the server: %@. Data: %@", buf, 0x16u);
  }

  v93 = 0;
LABEL_108:

  return v93 & 1;
}

- (id)recurrenceSetsForICSCalendar:(id)calendar
{
  v35 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  componentKeys = [calendarCopy componentKeys];
  v5 = [componentKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = *MEMORY[0x277D7F1B0];
    v23 = componentKeys;
    v24 = calendarCopy;
    v22 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(componentKeys);
        }

        v10 = [calendarCopy componentForKey:*(*(&v29 + 1) + 8 * i)];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            relatedTo = [v10 relatedTo];
            v12 = [relatedTo countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v26;
LABEL_10:
              v15 = 0;
              while (1)
              {
                if (*v26 != v14)
                {
                  objc_enumerationMutation(relatedTo);
                }

                v16 = *(*(&v25 + 1) + 8 * v15);
                v17 = [v16 parameterValueForName:v8];
                v18 = v17;
                if (v17)
                {
                  if ([v17 longValue] == 1)
                  {
                    break;
                  }
                }

                if (v13 == ++v15)
                {
                  v13 = [relatedTo countByEnumeratingWithState:&v25 objects:v33 count:16];
                  if (v13)
                  {
                    goto LABEL_10;
                  }

                  componentKeys = v23;
                  calendarCopy = v24;
                  v7 = v22;
                  goto LABEL_20;
                }
              }

              value = [v16 value];

              componentKeys = v23;
              calendarCopy = v24;
              v7 = v22;
              if (!value)
              {
                goto LABEL_21;
              }

              [v21 addObject:value];
              relatedTo = value;
            }

LABEL_20:
          }
        }

LABEL_21:
      }

      v6 = [componentKeys countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  return v21;
}

- (BOOL)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DACalDAViCalItem.m" lineNumber:780 description:@"You should be calling the calendar specific version of this call"];

  return 0;
}

- (void)_fixUpCalendarForServer:(id)server
{
  v52 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = mobileCalDAVProdID();
  [serverCopy setProdid:v5];

  if ([(DACalDAViCalItem *)self isMigrate])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [serverCopy componentKeys];
    v30 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v30)
    {
      v28 = *v45;
      v29 = serverCopy;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v44 + 1) + 8 * i);
          v8 = [serverCopy componentForKey:v7];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          attendee = [v8 attendee];
          v10 = [attendee countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v41;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v41 != v12)
                {
                  objc_enumerationMutation(attendee);
                }

                [*(*(&v40 + 1) + 8 * j) setScheduleagent:1];
              }

              v11 = [attendee countByEnumeratingWithState:&v40 objects:v50 count:16];
            }

            while (v11);
          }

          v31 = v8;
          organizer = [v8 organizer];
          [organizer setScheduleagent:1];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = [serverCopy componentOccurrencesForKey:v7];
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v49 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            do
            {
              for (k = 0; k != v17; ++k)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v36 + 1) + 8 * k);
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                attendee2 = [v20 attendee];
                v22 = [attendee2 countByEnumeratingWithState:&v32 objects:v48 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v33;
                  do
                  {
                    for (m = 0; m != v23; ++m)
                    {
                      if (*v33 != v24)
                      {
                        objc_enumerationMutation(attendee2);
                      }

                      [*(*(&v32 + 1) + 8 * m) setScheduleagent:1];
                    }

                    v23 = [attendee2 countByEnumeratingWithState:&v32 objects:v48 count:16];
                  }

                  while (v23);
                }

                organizer2 = [v20 organizer];
                [organizer2 setScheduleagent:1];
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v49 count:16];
            }

            while (v17);
          }

          serverCopy = v29;
        }

        v30 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v30);
    }
  }
}

- (void)setDataPayload:(id)payload
{
  payloadCopy = payload;
  dataPayload = self->_dataPayload;
  p_dataPayload = &self->_dataPayload;
  if (dataPayload != payloadCopy)
  {
    v8 = payloadCopy;
    objc_storeStrong(p_dataPayload, payload);
    payloadCopy = v8;
  }
}

- (NSData)dataPayload
{
  dataPayload = self->_dataPayload;
  if (!dataPayload)
  {
    [(DACalDAViCalItem *)self cacheDataPayload];
    dataPayload = self->_dataPayload;
  }

  return dataPayload;
}

- (void)cacheDataPayload
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (self->_calItem)
  {
    v11[0] = self->_calItem;
    [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v3 = ICSCalendarFromCalEntityRefs();
    if (v3)
    {
      [(DACalDAViCalItem *)self _fixUpCalendarForServer:v3];
      v4 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v3];
      v5 = [v4 ICSDataWithOptions:4];
      dataPayload = self->_dataPayload;
      self->_dataPayload = v5;
    }

    else
    {
      v4 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v4, v7))
      {
        clientID = self->_clientID;
        v9 = 138412290;
        v10 = clientID;
        _os_log_impl(&dword_2484B2000, v4, v7, "Couldn't create a calendar for the event with uid %@", &v9, 0xCu);
      }
    }
  }
}

- (void)setLocalItem:(void *)item
{
  calItem = self->_calItem;
  if (calItem != item)
  {
    if (calItem)
    {
      CFRelease(calItem);
    }

    self->_calItem = item;
    v6 = MEMORY[0x277CCABB0];
    if (item)
    {
      RowID = CalCalendarItemGetRowID();
    }

    else
    {
      RowID = 0;
    }

    v8 = [v6 numberWithInt:RowID];
    [(DACalDAViCalItem *)self setClientID:v8];

    v9 = self->_calItem;
    if (v9)
    {

      CFRetain(v9);
    }
  }
}

- (BOOL)loadLocalItemWithAccount:(id)account
{
  dbHelperForLoadLocalItemWithAccount = self->_dbHelperForLoadLocalItemWithAccount;
  accountIdentifier = [account accountIdentifier];
  accountID = accountIdentifier;
  if (!accountIdentifier)
  {
    accountID = self->_accountID;
  }

  [(DALocalDBHelper *)dbHelperForLoadLocalItemWithAccount calDatabaseForAccountID:accountID];

  [(NSNumber *)self->_clientID intValue];
  v7 = CalDatabaseCopyCalendarItemWithRowID();
  [(DACalDAViCalItem *)self setLocalItem:v7];
  if (v7)
  {
    CFRelease(v7);
  }

  return v7 != 0;
}

- (BOOL)deleteFromContainer:(void *)container
{
  v15 = *MEMORY[0x277D85DE8];
  calItem = self->_calItem;
  if (calItem)
  {
    Type = CalEntityGetType();
    if (Type == 3)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v9, v10))
      {
        serverID = [(DACalDAViCalItem *)self serverID];
        v13 = 138412290;
        v14 = serverID;
        _os_log_impl(&dword_2484B2000, v9, v10, "Removing todo %@", &v13, 0xCu);
      }

      CalRemoveTask();
    }

    else
    {
      if (Type != 2)
      {
        LOBYTE(calItem) = 0;
        return calItem;
      }

      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v6, v7))
      {
        serverID2 = [(DACalDAViCalItem *)self serverID];
        v13 = 138412290;
        v14 = serverID2;
        _os_log_impl(&dword_2484B2000, v6, v7, "Removing event %@", &v13, 0xCu);
      }

      CalRemoveEventAndDetachedEvents();
    }

    LOBYTE(calItem) = 1;
  }

  return calItem;
}

- (id)documentParsedCalendar:(id)calendar
{
  calendarCopy = calendar;
  if ([MEMORY[0x277CF74E8] fixEndDates:calendarCopy])
  {
    v4 = [objc_alloc(MEMORY[0x277CF7758]) initWithType:@"Sync" subtype:@"CalDAV" context:@"DTEND corruption"];
    [v4 report];
  }

  return calendarCopy;
}

@end