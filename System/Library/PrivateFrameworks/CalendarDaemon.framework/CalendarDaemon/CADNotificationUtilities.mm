@interface CADNotificationUtilities
+ (BOOL)_storeIsDelegate:(void *)delegate;
+ (BOOL)storeIsReadOnlyDelegate:(void *)delegate;
+ (id)_attendeeObjectIDsFromNotifications:(id)notifications;
+ (id)_notificationTypesFromNotifications:(id)notifications;
+ (id)_objectIDsFromNotifications:(id)notifications;
+ (id)_occurrenceDatesFromNotifications:(id)notifications;
+ (id)_stringForNotificationType:(int)type;
+ (id)flattenedNotificationsFromNotifications:(id)notifications expanded:(BOOL)expanded;
+ (int)CADDatabaseGetEventNotificationItemsWithConnection:(id)connection afterDate:(id)date forSourceWithExternalIdentifier:(id)identifier excludingDelegateSources:(BOOL)sources excludingUncheckedCalendars:(BOOL)calendars filteredByShowsNotificationsFlag:(BOOL)flag expanded:(BOOL)expanded earliestExpirationDate:(id *)self0 notificationTypes:(id *)self1 objectIDs:(id *)self2 occurrenceDates:(id *)self3 attendeeObjectIDs:(id *)self4;
+ (int)_gatherEventInvitationsAndRepliesWithContext:(id)context;
+ (int)_gatherSharedCalendarInvitationsWithContext:(id)context;
+ (int)_gatherSharedCalendarInviteReplyNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d;
+ (int)_gatherSharedCalendarResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d;
+ (int)_gatherSharedCalendarResponsesAndResourceChangesWithContext:(id)context;
+ (int)_gatherSuggestionResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d;
+ (void)_logNotificationCountsForNotifications:(id)notifications;
@end

@implementation CADNotificationUtilities

+ (id)_notificationTypesFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CADNotificationUtilities__notificationTypesFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __64__CADNotificationUtilities__notificationTypesFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "type")}];
  [v2 addObject:v3];
}

+ (id)_objectIDsFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__CADNotificationUtilities__objectIDsFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __56__CADNotificationUtilities__objectIDsFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

+ (id)_occurrenceDatesFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CADNotificationUtilities__occurrenceDatesFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __62__CADNotificationUtilities__occurrenceDatesFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  [a2 occurrenceDate];
  v4 = [v3 numberWithDouble:?];
  [v2 addObject:v4];
}

+ (id)_attendeeObjectIDsFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CADNotificationUtilities__attendeeObjectIDsFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __64__CADNotificationUtilities__attendeeObjectIDsFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 expanded])
  {
    v3 = *(a1 + 32);
    v4 = [v6 attendeeObjectID];
    v5 = v3;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:7 entityID:0xFFFFFFFFLL databaseID:0xFFFFFFFFLL];
    v5 = *(a1 + 32);
  }

  [v5 addObject:v4];
}

+ (int)CADDatabaseGetEventNotificationItemsWithConnection:(id)connection afterDate:(id)date forSourceWithExternalIdentifier:(id)identifier excludingDelegateSources:(BOOL)sources excludingUncheckedCalendars:(BOOL)calendars filteredByShowsNotificationsFlag:(BOOL)flag expanded:(BOOL)expanded earliestExpirationDate:(id *)self0 notificationTypes:(id *)self1 objectIDs:(id *)self2 occurrenceDates:(id *)self3 attendeeObjectIDs:(id *)self4
{
  flagCopy = flag;
  calendarsCopy = calendars;
  sourcesCopy = sources;
  identifierCopy = identifier;
  dateCopy = date;
  connectionCopy = connection;
  LOBYTE(v39) = expanded;
  v23 = [[CADNotificationGatheringContext alloc] initWithConnection:connectionCopy afterDate:dateCopy forSourceWithExternalIdentifier:identifierCopy excludingDelegateSources:sourcesCopy excludingUncheckedCalendars:calendarsCopy filteredByShowsNotificationsFlag:flagCopy expanded:v39];

  v24 = [self _gatherEventInvitationsAndRepliesWithContext:v23];
  if (!v24)
  {
    v24 = [self _gatherSharedCalendarInvitationsWithContext:v23];
    if (!v24)
    {
      v24 = [self _gatherSharedCalendarResponsesAndResourceChangesWithContext:v23];
    }
  }

  v25 = v24;
  v26 = objc_opt_class();
  notifications = [(CADNotificationGatheringContext *)v23 notifications];
  [v26 _logNotificationCountsForNotifications:notifications];

  if (expirationDate)
  {
    *expirationDate = [(CADNotificationGatheringContext *)v23 earliestExpiringNotification];
  }

  notifications2 = [(CADNotificationGatheringContext *)v23 notifications];
  v29 = [self flattenedNotificationsFromNotifications:notifications2 expanded:expanded];

  v30 = [self _notificationTypesFromNotifications:v29];
  v31 = [self _objectIDsFromNotifications:v29];
  v32 = [self _occurrenceDatesFromNotifications:v29];
  v33 = [self _attendeeObjectIDsFromNotifications:v29];
  if (types)
  {
    v34 = v30;
    *types = v30;
  }

  if (ds)
  {
    v35 = v31;
    *ds = v31;
  }

  if (dates)
  {
    v36 = v32;
    *dates = v32;
  }

  if (iDs)
  {
    v37 = v33;
    *iDs = v33;
  }

  return v25;
}

+ (int)_gatherEventInvitationsAndRepliesWithContext:(id)context
{
  contextCopy = context;
  connection = [contextCopy connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke;
  v7[3] = &unk_27851A0C0;
  v8 = contextCopy;
  v5 = contextCopy;
  [connection withAllDatabasesPerform:v7];

  return 0;
}

void __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v106 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) now];
  v5 = v4;
  v78 = a3;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = CalDatabaseCopyOfAllNotifiableEventsInStore();
  v6 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (!v6)
  {

    goto LABEL_107;
  }

  v79 = 0;
  v8 = *v94;
  v9 = *MEMORY[0x277CF78E8];
  v10 = *MEMORY[0x277CF78F0];
  *&v7 = 67109632;
  v77 = v7;
  do
  {
    v11 = 0;
    do
    {
      if (*v94 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v93 + 1) + 8 * v11);
      v13 = CalEventCopyStore();
      v14 = CalCalendarItemCopyCalendar();
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0;
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke_2;
      v88[3] = &unk_27851B200;
      v88[4] = &v89;
      v88[5] = v13;
      v88[6] = v14;
      v15 = MEMORY[0x22AA4DCD0](v88);
      if (CalStoreIsFacebook())
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          RowID = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = RowID;
          v18 = v16;
          v19 = "Skipping notifiable event %d because it's in a facebook store";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if ((CalStoreGetSupportsIncomingInvitations() & 1) == 0)
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v21;
          v18 = v16;
          v19 = "Skipping notifiable event %d because it's in a store that doesn't support incoming invitations";
          goto LABEL_15;
        }

LABEL_16:

        v15[2](v15);
        goto LABEL_17;
      }

      if (CalEventGetJunkStatus() == 1)
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v20;
          v18 = v16;
          v19 = "Skipping notifiable event %d because it's marked as junk";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if ([*(a1 + 32) isEventBlocked:v12])
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v22;
          v18 = v16;
          v19 = "Skipping notificable event %d because organizer is blocked";
LABEL_15:
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 8u);
        }

        goto LABEL_16;
      }

      v23 = CalStoreCopyUUID();
      if (!v23)
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v29 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v29;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because we failed to get the store identifier", buf, 8u);
        }

        goto LABEL_16;
      }

      CFRelease(v23);
      v24 = CalEventCopyUniqueIdentifier();
      if (!v24)
      {
        v25 = CADNotificationLogHandle;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v30 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v30;
          v27 = v25;
          v28 = "Skipping notifiable event %d because we failed to get the event unique identifier";
LABEL_35:
          _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 8u);
        }

LABEL_36:

LABEL_37:
        v15[2](v15);
        goto LABEL_17;
      }

      CFRelease(v24);
      if (([*(a1 + 32) shouldSkipNotificationForStore:v13] & 1) != 0 || objc_msgSend(*(a1 + 32), "shouldSkipNotificationForCalendar:", v14) && !objc_msgSend(*(a1 + 32), "isEventTimeSensitiveForFocus:", v12))
      {
        goto LABEL_37;
      }

      if (CalEventGetParticipationStatus() == 2)
      {
        v25 = CADNotificationLogHandle;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v26;
          v27 = v25;
          v28 = "Skipping notifiable event %d because it's been declined";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      InvitationChangedProperties = CalEventGetInvitationChangedProperties();
      v32 = InvitationChangedProperties;
      if ((InvitationChangedProperties & 0xF0) != 0)
      {
        if (InvitationChangedProperties == 32 && !CalAlertInviteeDeclines())
        {
          v16 = CADNotificationLogHandle;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v57 = CalCalendarItemGetRowID();
            *buf = 67109120;
            v98 = v57;
            _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it's an attendee status change, and the user has disabled those alerts", buf, 8u);
          }

          goto LABEL_16;
        }

        if (CalCalendarItemGetStatus() == 3)
        {
          v33 = CADNotificationLogHandle;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = CalCalendarItemGetRowID();
            *buf = 67109120;
            v98 = v34;
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it's cancelled", buf, 8u);
          }

LABEL_44:

          CalEventSetNeedsNotification();
          v15[2](v15);
          v79 = 1;
          goto LABEL_17;
        }

        v36 = CalCalendarItemCopyAttendees();
        v83 = v32 & 0x11F;
        if (v36)
        {
          CalEventGetStartDate();
          v38 = v37;
          CalEventGetEndDate();
          v40 = v39;
          Count = CFArrayGetCount(v36);
          Mutable = CFArrayCreateMutable(0, Count, 0);
          theArray = v36;
          v90[3] = Mutable;
          if (Count < 1)
          {
            v85 = 1;
            v35 = v9;
          }

          else
          {
            v80 = Count;
            v43 = 0;
            v44 = v40 - v38;
            v85 = 1;
            v35 = v9;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v43);
              if ((v32 & 0x20) != 0 && CalParticipantGetStatusChanged())
              {
                Status = CalAttendeeGetStatus();
                v47 = v83;
                if (Status == 2)
                {
                  v47 = v83 | 0x20;
                }

                v83 = v47;
              }

              v48 = CalCalendarItemCopySelfAttendee();
              if ((v32 & 0x80) != 0)
              {
                v49 = CalAttendeeGetProposedStartDateStatus() == 3;
                v50 = v48 == ValueAtIndex;
                v51 = v83;
                v52 = !v49 || !v50;
                if (v49 && v50)
                {
                  v51 = v83 | 0x80;
                }

                v83 = v51;
                v53 = v85;
                if (!v52)
                {
                  v53 = 0;
                }

                v85 = v53;
              }

              if ((v32 & 0x40) != 0 && CalParticipantGetProposedStartDateChanged())
              {
                CalAttendeeGetProposedStartDate();
                v55 = v54;
                if (v54 == v10)
                {
                  CalParticipantSetProposedStartDateChanged();
                  v79 = 1;
                }

                else
                {
                  v56 = MEMORY[0x22AA4B130](ValueAtIndex);
                  if (v44 + v55 >= v35)
                  {
                    v35 = v44 + v55;
                  }

                  CFArrayAppendValue(v90[3], v56);
                  v83 |= 0x40u;
                }
              }

              ++v43;
            }

            while (v80 != v43);
          }

          CFRelease(theArray);
        }

        else
        {
          v85 = 1;
          v35 = v9;
        }

        if (v83 != v32)
        {
          CalEventSetInvitationChangedProperties();
          v33 = CADNotificationLogHandle;
          v58 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          if (!v83)
          {
            if (v58)
            {
              v75 = CalCalendarItemGetRowID();
              *buf = 67109120;
              v98 = v75;
              _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it was marked as having invitation changes, but they were all false positives", buf, 8u);
            }

            goto LABEL_44;
          }

          if (v58)
          {
            v59 = CalCalendarItemGetRowID();
            *buf = v77;
            v98 = v83;
            v99 = 1024;
            v100 = v32;
            v101 = 1024;
            v102 = v59;
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "actualInvitationChangedProperties 0x%x didn't match invitationChangedProperties 0x%x; updating event %d", buf, 0x14u);
          }

          v79 = 1;
        }
      }

      else
      {
        v85 = 0;
        v35 = v9;
      }

      v60 = CalEventOccurrenceCreateForInitialOccurrence();
      CalEventOccurrenceGetDate();
      v62 = v61;
      CFRelease(v60);
      [*(a1 + 32) expirationTimestampForEvent:v12 withInitialOccurrenceDate:v78 database:v62];
      if (v63 >= v35)
      {
        v35 = v63;
      }

      v16 = CADNotificationLogHandle;
      v64 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v35 <= v5)
      {
        if (v64)
        {
          v68 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v98 = v68;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it takes place in the past", buf, 8u);
        }

        goto LABEL_16;
      }

      if (v64)
      {
        v65 = CalCalendarItemGetRowID();
        *buf = 67109888;
        v98 = v65;
        v99 = 1024;
        v100 = v85;
        v101 = 1024;
        v102 = v32;
        v103 = 2048;
        v104 = v35;
        _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Including notifiable event %d with type %d, invitationChangedProperties 0x%x and expiration date %f", buf, 0x1Eu);
      }

      v84 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:2 entityID:CalCalendarItemGetRowID() databaseID:a2];
      v66 = v90[3];
      if (v66)
      {
        v67 = CFArrayGetCount(v66);
      }

      else
      {
        v67 = 0;
      }

      v69 = [*(a1 + 32) expanded];
      if (v67 > 0)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      if (v70 == 1)
      {
        v71 = [[CADNotification alloc] initWithType:v85 objectID:v84 occurrenceDate:v62 expirationDate:v35];
        v72 = 0;
        do
        {
          v73 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:7 entityID:CFArrayGetValueAtIndex(v90[3] databaseID:{v72), a2}];
          v74 = [[CADExpandedNotification alloc] initWithType:v85 objectID:v84 occurrenceDate:v73 expirationDate:v62 attendeeObjectID:v35];
          [(CADNotification *)v71 addExpandedNotification:v74];

          ++v72;
        }

        while (v67 != v72);
        [*(a1 + 32) addNotification:v71];
      }

      else
      {
        v71 = [[CADNotification alloc] initWithType:v85 objectID:v84 occurrenceDate:v62 expirationDate:v35];
        [*(a1 + 32) addNotification:v71];
      }

      v15[2](v15);
LABEL_17:

      _Block_object_dispose(&v89, 8);
      ++v11;
    }

    while (v11 != v6);
    v76 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
    v6 = v76;
  }

  while (v76);

  if (v79)
  {
    CalDatabaseSave();
  }

LABEL_107:
}

void __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke_2(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

+ (int)_gatherSharedCalendarInvitationsWithContext:(id)context
{
  contextCopy = context;
  connection = [contextCopy connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CADNotificationUtilities__gatherSharedCalendarInvitationsWithContext___block_invoke;
  v7[3] = &unk_27851A0C0;
  v8 = contextCopy;
  v5 = contextCopy;
  [connection withAllDatabasesPerform:v7];

  return 0;
}

void __72__CADNotificationUtilities__gatherSharedCalendarInvitationsWithContext___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions();
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = *MEMORY[0x277CF78E0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = CalCalendarCopyStore();
        if (v11)
        {
          v12 = v11;
          v13 = [*(a1 + 32) shouldSkipNotificationForStore:v11];
          CFRelease(v12);
          if (v13)
          {
            continue;
          }
        }

        if ((CalCalendarCanContainEntityType() & 1) == 0)
        {
          v20 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v16 = v20;
          UID = CalCalendarGetUID();
          *buf = 67109120;
          v34 = UID;
          v18 = v16;
          v19 = "Skipping shared calendar invitation for calendar %d because it doesn't allow events";
          goto LABEL_17;
        }

        v14 = CalCalendarCopyUUID();
        if (!v14)
        {
          v22 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v16 = v22;
          v23 = CalCalendarGetUID();
          *buf = 67109120;
          v34 = v23;
          v18 = v16;
          v19 = "Skipping shared calendar invitation for calendar %d because it lacks a UUID";
          goto LABEL_17;
        }

        CFRelease(v14);
        if ([*(a1 + 32) isSharedCalendarOwnerBlocked:v10])
        {
          v15 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v16 = v15;
          v17 = CalCalendarGetUID();
          *buf = 67109120;
          v34 = v17;
          v18 = v16;
          v19 = "Skipping shared calendar invitation for calendar %d because the owner is blocked";
LABEL_17:
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 8u);

          continue;
        }

        v24 = CalCalendarGetUID();
        v25 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:1 entityID:v24 databaseID:a2];
        v26 = CADNotificationLogHandle;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v34 = v24;
          _os_log_impl(&dword_22430B000, v26, OS_LOG_TYPE_DEFAULT, "Including shared calendar invitation %d", buf, 8u);
        }

        v27 = [[CADNotification alloc] initWithType:2 objectID:v25 occurrenceDate:0.0 expirationDate:v8];
        [*(a1 + 32) addNotification:v27];
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }
}

+ (int)_gatherSharedCalendarResponsesAndResourceChangesWithContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = [contextCopy connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__CADNotificationUtilities__gatherSharedCalendarResponsesAndResourceChangesWithContext___block_invoke;
  v8[3] = &unk_27851B228;
  v10 = &v12;
  selfCopy = self;
  v6 = contextCopy;
  v9 = v6;
  [connection withAllDatabasesPerform:v8];

  LODWORD(connection) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return connection;
}

void __88__CADNotificationUtilities__gatherSharedCalendarResponsesAndResourceChangesWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = CalDatabaseCopyOfAllNotifications();
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        EntityType = CalNotificationGetEntityType();
        if (EntityType == 19)
        {
          v15 = [*(a1 + 48) _gatherSuggestionResourceChangeNotification:v12 withContext:*(a1 + 32) database:a3 databaseID:a2];
          goto LABEL_12;
        }

        v14 = EntityType;
        if (EntityType == 17)
        {
          v15 = [*(a1 + 48) _gatherSharedCalendarResourceChangeNotification:v12 withContext:*(a1 + 32) database:a3 databaseID:a2];
          goto LABEL_12;
        }

        if (EntityType == 16)
        {
          v15 = [*(a1 + 48) _gatherSharedCalendarInviteReplyNotification:v12 withContext:*(a1 + 32) database:a3 databaseID:a2];
LABEL_12:
          *(*(*(a1 + 40) + 8) + 24) = v15;
          goto LABEL_13;
        }

        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          UID = CalNotificationGetUID();
          *buf = 67109376;
          v26 = UID;
          v27 = 1024;
          v28 = v14;
          _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEFAULT, "Skipping notification %d because it's of an unexpected type %d", buf, 0xEu);
        }

LABEL_13:
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          *a4 = 1;
          goto LABEL_21;
        }

        ++v11;
      }

      while (v9 != v11);
      v19 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v9 = v19;
    }

    while (v19);
  }

LABEL_21:
}

+ (int)_gatherSharedCalendarInviteReplyNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d
{
  v6 = *&d;
  v43 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = CalInviteReplyNotificationCopyInviteReplyCalendar();
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = CalInviteReplyNotificationCopyHostURL();
  if (v9)
  {
    v8 = v9;
    CFURLGetString(v9);
    v10 = CalDatabaseCopyCalendarWithExternalIDInStore();
    if (v10)
    {
      v11 = v10;
LABEL_5:
      CFRelease(v8);
      v8 = v11;
      goto LABEL_6;
    }

    v19 = CFURLGetString(v8);
    MutableCopy = CFStringCreateMutableCopy(0, 0, v19);
    if (MutableCopy)
    {
      v21 = MutableCopy;
      CFStringAppend(MutableCopy, @"/");
      v11 = CalDatabaseCopyCalendarWithExternalIDInStore();
      CFRelease(v21);
      if (v11)
      {
        goto LABEL_5;
      }
    }

    v22 = CFURLCopyPath(v8);
    if (!v22)
    {
LABEL_22:
      CFRelease(v8);
      goto LABEL_23;
    }

    v23 = v22;
    v24 = CFStringCreateMutableCopy(0, 0, v22);
    if (v24)
    {
      v25 = v24;
      CFStringAppend(v24, @"/");
      v26 = CalDatabaseCopyCalendarWithExternalIDInStore();
      CFRelease(v25);
    }

    else
    {
      v26 = 0;
    }

    CFRelease(v23);
    CFRelease(v8);
    v8 = v26;
    if (!v26)
    {
LABEL_23:
      CalNotificationGetCreationDate();
      v28 = v27 + 2592000.0;
      [contextCopy now];
      if (v28 >= v29)
      {
        UID = CalNotificationGetUID();
        v36 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:16 entityID:UID databaseID:v6];
        v37 = CADNotificationLogHandle;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 67109120;
          v42 = UID;
          _os_log_impl(&dword_22430B000, v37, OS_LOG_TYPE_DEFAULT, "Including invite reply notification %d", &v41, 8u);
        }

        v38 = [CADNotification alloc];
        v39 = [(CADNotification *)v38 initWithType:3 objectID:v36 occurrenceDate:*MEMORY[0x277CF78F0] expirationDate:v28];
        [contextCopy addNotification:v39];
      }

      else
      {
        v30 = CADNotificationLogHandle;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v41 = 67109120;
          v42 = CalNotificationGetUID();
          _os_log_impl(&dword_22430B000, v31, OS_LOG_TYPE_DEFAULT, "Skipping invite reply notification %d because it is too old", &v41, 8u);
        }

        if ([contextCopy deleteOldNotifications])
        {
          v32 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            v34 = CalNotificationGetUID();
            v41 = 67109120;
            v42 = v34;
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "Deleting invite reply notification %d because it is too old", &v41, 8u);
          }

          CalRemoveNotification();
        }
      }

      goto LABEL_33;
    }

LABEL_6:
    if (CalEntityGetType() == 1 && (CalCalendarCanContainEntityType() & 1) == 0)
    {
      v14 = CADNotificationLogHandle;
      if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v41 = 67109120;
        v42 = CalNotificationGetUID();
        _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_DEFAULT, "Skipping invite reply notification %d because it is on a calendar that does not allow events", &v41, 8u);
      }

      goto LABEL_14;
    }

    v12 = CalCalendarCopyStore();
    if (v12)
    {
      v13 = v12;
      if ([contextCopy shouldSkipNotificationForStore:v12])
      {
        CFRelease(v13);
LABEL_14:
        CFRelease(v8);
        goto LABEL_33;
      }

      v16 = [contextCopy shouldSkipNotificationForCalendar:v8];
      CFRelease(v13);
      if (v16)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_22;
  }

  v17 = CADNotificationLogHandle;
  if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v41 = 67109120;
    v42 = CalNotificationGetUID();
    _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEFAULT, "Skipping invite reply notification %d because it lacks an external ID", &v41, 8u);
  }

LABEL_33:

  return 0;
}

+ (int)_gatherSharedCalendarResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d
{
  v80 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = CalResourceChangeNotificationCopyChanges();
  v7 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v74;
    v10 = *MEMORY[0x277CF78E0];
    v11 = *MEMORY[0x277CF78F0];
    do
    {
      v12 = 0;
      do
      {
        if (*v74 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = CalResourceChangeGetType();
        if (v13 == 5 && CalResourceChangeGetPublicStatus() != 2)
        {
          v26 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v22 = v26;
          v27 = CalResourceChangeGetUID();
          *buf = 67109120;
          v78 = v27;
          v24 = v22;
          v25 = "Skipping resource change notification %d because it is not public";
          goto LABEL_17;
        }

        v14 = CalResourceChangeCopyCalendar();
        if (!v14)
        {
          v21 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v22 = v21;
          v23 = CalResourceChangeGetUID();
          *buf = 67109120;
          v78 = v23;
          v24 = v22;
          v25 = "Skipping resource change notification %d because it has no calendar";
LABEL_17:
          _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 8u);
          goto LABEL_18;
        }

        v15 = v14;
        if ((CalCalendarCanContainEntityType() & 1) == 0)
        {
          v28 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v28;
            v29 = CalResourceChangeGetUID();
            *buf = 67109120;
            v78 = v29;
            v19 = v17;
            v20 = "Skipping resource change notification %d because it is on a calendar that does not allow events";
LABEL_21:
            _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 8u);
          }

LABEL_22:
          v30 = 1;
          goto LABEL_24;
        }

        if (CalCalendarIsIgnoringSharedCalendarNotifications())
        {
          v16 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            v18 = CalResourceChangeGetUID();
            *buf = 67109120;
            v78 = v18;
            v19 = v17;
            v20 = "Skipping resource change notification %d because it is on a calendar that is ignoring shared calendar notifications";
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        v30 = 0;
LABEL_24:
        v31 = v30 | [contextCopy shouldSkipNotificationForCalendar:v15];
        v32 = CalCalendarCopyStore();
        if (v32)
        {
          v33 = v32;
          LOBYTE(v31) = v31 | [contextCopy shouldSkipNotificationForStore:v32];
          CFRelease(v33);
        }

        if (v31)
        {
          goto LABEL_27;
        }

        if (CalCalendarCanContainEntityType())
        {
          v34 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v34, OS_LOG_TYPE_INFO, "Calendar has support for both events and reminders", buf, 2u);
          }
        }

        CFRelease(v15);
        v35 = CalResourceChangeCopyCalendarItem();
        if (v35)
        {
          v15 = v35;
          if (CalEntityGetType() == 2)
          {
            [contextCopy expirationTimestampForEvent:v15 database:database];
            v37 = v36;
            [contextCopy now];
            if (v37 < v38)
            {
              v39 = CADNotificationLogHandle;
              if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v40 = v39;
                v41 = CalResourceChangeGetUID();
                *buf = 67109120;
                v78 = v41;
                _os_log_impl(&dword_22430B000, v40, OS_LOG_TYPE_DEFAULT, "Skipping resource change notification %d because it is for an event in the past", buf, 8u);
              }

              if ([contextCopy deleteOldNotifications])
              {
                v42 = CADNotificationLogHandle;
                if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = v42;
                  v44 = CalResourceChangeGetUID();
                  *buf = 67109120;
                  v78 = v44;
                  _os_log_impl(&dword_22430B000, v43, OS_LOG_TYPE_DEFAULT, "Deleting resource change notification %d because it is for an event in the past", buf, 8u);
                }

                CalRemoveResourceChange();
              }

              goto LABEL_27;
            }

            v52 = CalEventCopyStore();
            if (v52)
            {
              v53 = v52;
              v54 = CalStoreCopyUUID();
              if (!v54)
              {
                v63 = CADNotificationLogHandle;
                if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  v64 = v63;
                  v65 = CalResourceChangeGetUID();
                  *buf = 67109120;
                  v78 = v65;
                  _os_log_impl(&dword_22430B000, v64, OS_LOG_TYPE_DEFAULT, "Skipping resource change notification %d because it is for an event in a store with no persistent id", buf, 8u);
                }

                CFRelease(v53);
                goto LABEL_27;
              }

              CFRelease(v54);
              CFRelease(v53);
              v55 = CalEventCopyUniqueIdentifier();
              if (v55)
              {
                CFRelease(v55);
                CFRelease(v15);
LABEL_53:
                v56 = CalResourceChangeGetUID();
                v22 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:18 entityID:v56 databaseID:d];
                v57 = CADNotificationLogHandle;
                if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v78 = v56;
                  _os_log_impl(&dword_22430B000, v57, OS_LOG_TYPE_DEFAULT, "Including resource change notification %d", buf, 8u);
                }

                v58 = [[CADNotification alloc] initWithType:4 objectID:v22 occurrenceDate:v11 expirationDate:v37];
                [contextCopy addNotification:v58];

LABEL_18:
                goto LABEL_28;
              }

              v66 = CADNotificationLogHandle;
              if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_27;
              }

              v48 = v66;
              v67 = CalResourceChangeGetUID();
              *buf = 67109120;
              v78 = v67;
              v50 = v48;
              v51 = "Skipping resource change notification %d because it is for an event with no unique ID";
LABEL_48:
              _os_log_impl(&dword_22430B000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 8u);
            }

            else
            {
              v61 = CADNotificationLogHandle;
              if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v48 = v61;
                v62 = CalResourceChangeGetUID();
                *buf = 67109120;
                v78 = v62;
                v50 = v48;
                v51 = "Skipping resource change notification %d because it is for an event not in a store";
                goto LABEL_48;
              }
            }
          }

          else
          {
            v47 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v48 = v47;
              v49 = CalResourceChangeGetUID();
              *buf = 67109120;
              v78 = v49;
              v50 = v48;
              v51 = "Skipping resource change notification %d because it is a change for a non-event";
              goto LABEL_48;
            }
          }

LABEL_27:
          CFRelease(v15);
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v59 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v59;
            v60 = CalResourceChangeGetUID();
            *buf = 67109120;
            v78 = v60;
            v24 = v22;
            v25 = "Skipping resource change notification %d because it is an update without an event";
            goto LABEL_17;
          }
        }

        else
        {
          v37 = v10;
          if (v13 != 1)
          {
            goto LABEL_53;
          }

          v45 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v45;
            v46 = CalResourceChangeGetUID();
            *buf = 67109120;
            v78 = v46;
            v24 = v22;
            v25 = "Skipping resource change notification %d because it is an add without an event";
            goto LABEL_17;
          }
        }

LABEL_28:
        ++v12;
      }

      while (v8 != v12);
      v68 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
      v8 = v68;
    }

    while (v68);
  }

  return 0;
}

+ (int)_gatherSuggestionResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d
{
  v84 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = CalResourceChangeNotificationCopyChanges();
  v72 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v78;
    v11 = *MEMORY[0x277CF78E0];
    v12 = *MEMORY[0x277CF78F0];
    do
    {
      v13 = 0;
      do
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = CalResourceChangeGetType();
        v15 = CalResourceChangeCopyCalendarItem();
        if (v15)
        {
          v16 = v15;
          if (CalEntityGetType() != 2)
          {
            v32 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v32;
              v33 = CalResourceChangeGetUID();
              *buf = 67109120;
              v82 = v33;
              v34 = v26;
              v35 = "Skipping suggestion resource change notification %d because it is for a non-event";
              goto LABEL_22;
            }

            goto LABEL_24;
          }

          [contextCopy expirationTimestampForEvent:v16 database:database];
          v18 = v17;
          [contextCopy now];
          if (v18 < v19)
          {
            v20 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
              v22 = CalResourceChangeGetUID();
              *buf = 67109120;
              v82 = v22;
              _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_DEFAULT, "Skipping suggestion resource change notification %d because it is for an event in the past", buf, 8u);
            }

            if ([contextCopy deleteOldNotifications])
            {
              v23 = CADNotificationLogHandle;
              if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v24 = v23;
                v25 = CalResourceChangeGetUID();
                *buf = 67109120;
                v82 = v25;
                _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_DEFAULT, "Deleting suggestion resource change notification %d because it is for an event in the past", buf, 8u);
              }

              v26 = [MEMORY[0x277CCABB0] numberWithInt:CPRecordGetID()];
              [v72 addObject:v26];
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          v36 = CalEventCopyStore();
          if (!v36)
          {
            v53 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v53;
              v54 = CalResourceChangeGetUID();
              *buf = 67109120;
              v82 = v54;
              v34 = v26;
              v35 = "Skipping suggestion resource change notification %d because it is for an event not in a store";
              goto LABEL_22;
            }

            goto LABEL_24;
          }

          v37 = v36;
          v38 = CalStoreCopyUUID();
          v39 = v38;
          if (v38)
          {
            CFRelease(v38);
          }

          else
          {
            v55 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v56 = v55;
              v57 = CalResourceChangeGetUID();
              *buf = 67109120;
              v82 = v57;
              _os_log_impl(&dword_22430B000, v56, OS_LOG_TYPE_DEFAULT, "Skipping suggestion resource change notification %d because it is for an event in a store with no persistent id", buf, 8u);
            }
          }

          v58 = [contextCopy shouldSkipNotificationForStore:v37];
          CFRelease(v37);
          if (!v39 || (v58 & 1) != 0)
          {
            goto LABEL_24;
          }

          v59 = CalEventCopyUniqueIdentifier();
          if (!v59)
          {
            v65 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v65;
              v66 = CalResourceChangeGetUID();
              *buf = 67109120;
              v82 = v66;
              v34 = v26;
              v35 = "Skipping suggestion resource change notification %d because it is for an event with no unique ID";
LABEL_22:
              _os_log_impl(&dword_22430B000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 8u);
LABEL_23:
            }

LABEL_24:
            CFRelease(v16);
            goto LABEL_55;
          }

          CFRelease(v59);
          CFRelease(v16);
LABEL_48:
          v60 = CalResourceChangeGetUID();
          v28 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:18 entityID:v60 databaseID:d];
          v61 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v82 = v60;
            _os_log_impl(&dword_22430B000, v61, OS_LOG_TYPE_DEFAULT, "Including suggestion resource change notification %d", buf, 8u);
          }

          v62 = [[CADNotification alloc] initWithType:5 objectID:v28 occurrenceDate:v12 expirationDate:v18];
          [contextCopy addNotification:v62];

LABEL_54:
          goto LABEL_55;
        }

        switch(v14)
        {
          case 3:
            v42 = CADNotificationLogHandle;
            if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            v28 = v42;
            v43 = CalResourceChangeGetUID();
            *buf = 67109120;
            v82 = v43;
            v30 = v28;
            v31 = "Skipping suggestion resource change notification %d because it is a delete (i.e., cancel) without an event";
            goto LABEL_53;
          case 2:
            v40 = CADNotificationLogHandle;
            if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            v28 = v40;
            v41 = CalResourceChangeGetUID();
            *buf = 67109120;
            v82 = v41;
            v30 = v28;
            v31 = "Skipping suggestion resource change notification %d because it is an update without an event";
            goto LABEL_53;
          case 1:
            v27 = CADNotificationLogHandle;
            if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            v28 = v27;
            v29 = CalResourceChangeGetUID();
            *buf = 67109120;
            v82 = v29;
            v30 = v28;
            v31 = "Skipping suggestion resource change notification %d because it is an add without an event";
LABEL_53:
            _os_log_impl(&dword_22430B000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 8u);
            goto LABEL_54;
        }

        v44 = CalResourceChangeCopyCalendar();
        if (!v44)
        {
          v63 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          v28 = v63;
          v64 = CalResourceChangeGetUID();
          *buf = 67109120;
          v82 = v64;
          v30 = v28;
          v31 = "Skipping suggestion resource change notification %d because it has no calendar";
          goto LABEL_53;
        }

        v45 = v44;
        CanContainEntityType = CalCalendarCanContainEntityType();
        if ((CanContainEntityType & 1) == 0)
        {
          v47 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
            v49 = CalResourceChangeGetUID();
            *buf = 67109120;
            v82 = v49;
            _os_log_impl(&dword_22430B000, v48, OS_LOG_TYPE_DEFAULT, "Skipping suggestion resource change notification %d because it is on a calendar that does not allow events", buf, 8u);
          }
        }

        v50 = [contextCopy shouldSkipNotificationForCalendar:v45] | CanContainEntityType ^ 1;
        v51 = CalCalendarCopyStore();
        if (v51)
        {
          v52 = v51;
          LOBYTE(v50) = v50 | [contextCopy shouldSkipNotificationForStore:v51];
          CFRelease(v52);
        }

        CFRelease(v45);
        v18 = v11;
        if ((v50 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_55:
        ++v13;
      }

      while (v9 != v13);
      v67 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
      v9 = v67;
    }

    while (v67);
  }

  v68 = [v72 count];
  if (v68)
  {
    v69 = _resourceChangeDeletionQueue(v68);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__CADNotificationUtilities__gatherSuggestionResourceChangeNotification_withContext_database_databaseID___block_invoke;
    block[3] = &unk_27851AAD8;
    v76 = v72;
    dispatch_async(v69, block);
  }

  return 0;
}

void __104__CADNotificationUtilities__gatherSuggestionResourceChangeNotification_withContext_database_databaseID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = CalDatabaseCreateWithOptions();
  if (v2)
  {
    v3 = v2;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v14 + 1) + 8 * i) intValue];
          v10 = CalDatabaseCopyResourceChangeWithUID();
          if (v10)
          {
            v11 = v10;
            v12 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *v13 = 0;
              _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_DEFAULT, "Removing a resource change due to a pseudo event expiring", v13, 2u);
            }

            CalRemoveResourceChange();
            v7 = (v7 + 1);
            CFRelease(v11);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);

      if (v7)
      {
        CalDatabaseSave();
        [MEMORY[0x277CF7868] trackPseudoEventsExpired:v7];
      }
    }

    else
    {
    }

    CFRelease(v3);
  }
}

+ (BOOL)storeIsReadOnlyDelegate:(void *)delegate
{
  v3 = [self _storeIsDelegate:?];
  if (v3)
  {
    LOBYTE(v3) = CalStoreIsWritable() ^ 1;
  }

  return v3;
}

+ (id)flattenedNotificationsFromNotifications:(id)notifications expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v23 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v6 = notificationsCopy;
  if (notificationsCopy)
  {
    if (expandedCopy)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            expandedNotifications = [v13 expandedNotifications];
            v15 = [expandedNotifications count];

            if (v15)
            {
              expandedNotifications2 = [v13 expandedNotifications];
              [v7 addObjectsFromArray:expandedNotifications2];
            }

            else
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = notificationsCopy;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_logNotificationCountsForNotifications:(id)notifications
{
  v38 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = [MEMORY[0x277CCA940] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = notificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        type = [*(*(&v28 + 1) + 8 * i) type];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:type];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v25;
    *&v15 = 67240450;
    v23 = v15;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [v13 countForObject:{v19, v23, v24}];
        v21 = [self _stringForNotificationType:{objc_msgSend(v19, "intValue")}];
        v22 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = v23;
          v33 = v20;
          v34 = 2114;
          v35 = v21;
          _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Found %{public}d notifications of type %{public}@", buf, 0x12u);
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v16);
  }
}

+ (BOOL)_storeIsDelegate:(void *)delegate
{
  v3 = CalStoreCopyDelegatedAccountOwnerStoreID();
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

+ (id)_stringForNotificationType:(int)type
{
  if (type >= 6)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *&type];
  }

  else
  {
    v4 = off_27851B288[type];
  }

  return v4;
}

@end