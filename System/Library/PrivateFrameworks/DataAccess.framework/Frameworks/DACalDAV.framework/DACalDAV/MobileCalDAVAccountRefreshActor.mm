@interface MobileCalDAVAccountRefreshActor
- (BOOL)_amendChangeRecordAndCleanUpAfterDeletedEventWithID:(int)d externalID:(id)iD database:(CalDatabase *)database;
- (BOOL)_checkForNewOrMovedItemsDeletedSinceSyncStartedInCalendars:(id)calendars database:(CalDatabase *)database moves:(id)moves;
- (BOOL)_cleanUpDuplicateCalendar:(id)calendar ofCalendar:(id)ofCalendar;
- (BOOL)_refreshShouldContinue;
- (BOOL)_sendMoveForItem:(id)item;
- (BOOL)calendarRefreshShouldRetryMkCalendarForPrincipal:(id)principal calendar:(id)calendar error:(id)error;
- (BOOL)needsRemindersSync;
- (CalDiagAccountSync)accountSyncDiagnostics;
- (MobileCalDAVAccount)account;
- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)account context:(id)context;
- (id)_guidsOfExistingCalendars;
- (id)_powerLogInfoDictionary;
- (id)_prepareAttachmentsForUpload;
- (id)_refreshedCtagForCalendar:(id)calendar;
- (id)_refreshedSyncTokenForCalendar:(id)calendar;
- (void)_beginAttachmentDownloads;
- (void)_calendarCollectionsWereRefreshed;
- (void)_cleanUpDuplicateCalendars;
- (void)_cleanUpOrphanedPreferredUserAddressesPerCalendar;
- (void)_clearMoveChange:(id)change;
- (void)_continuePrincipalRefresh;
- (void)_downloadAttachments;
- (void)_finishMoveForItemWithID:(int)d withEtag:(id)etag scheduleTag:(id)tag;
- (void)_gatherAttachmentChanges;
- (void)_handleAttachmentUploadsComplete:(id)complete attachments:(id)attachments;
- (void)_handleMoveTaskComplete:(id)complete moveItem:(id)item;
- (void)_propFindForNewEtagFollowingMoveOfItem:(int)item;
- (void)_refreshAccountProperties;
- (void)_refreshCalendarProperties;
- (void)_refreshDelegateAccountProperties;
- (void)_refreshRegularCalendars;
- (void)_refreshSpecialCalendars;
- (void)_saveMoveChange:(id)change;
- (void)_sendMoveTasks;
- (void)_sendResultToAccount;
- (void)_syncCalendar:(id)calendar;
- (void)_teardownAllOutstandingOperations;
- (void)_updateDefaultCalendarIfNeededWithDatabase:(CalDatabase *)database;
- (void)_uploadAttachments;
- (void)_uploadAttachments:(id)attachments;
- (void)_uploadAttachments:(id)attachments forOwnerURL:(id)l syncKey:(id)key scheduleTag:(id)tag;
- (void)_waitForStateTransition;
- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error;
- (void)calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:(id)type;
- (void)calendarRefreshFoundUpdatedSpecialContainer:(id)container;
- (void)calendarRefreshWillSendCalendarDeletes:(id)deletes;
- (void)calendarSyncForPrincipal:(id)principal calendar:(id)calendar completedWithError:(id)error;
- (void)cancelWithCompletion:(id)completion;
- (void)dealloc;
- (void)delegateRefreshForPrincipal:(id)principal completedWithDelegateUserInfo:(id)info error:(id)error;
- (void)propertyRefreshForPrincipal:(id)principal completedWithError:(id)error;
- (void)refreshWithCompletion:(id)completion;
- (void)teardown;
@end

@implementation MobileCalDAVAccountRefreshActor

- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)account context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = MobileCalDAVAccountRefreshActor;
  v8 = [(MobileCalDAVAccountRefreshActor *)&v21 init];
  if (v8)
  {
    v9 = objc_opt_new();
    transaction = v8->_transaction;
    v8->_transaction = v9;

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v12))
    {
      transactionId = [(DATransaction *)v8->_transaction transactionId];
      *buf = 138543362;
      v23 = transactionId;
      _os_log_impl(&dword_2484B2000, v11, v12, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)v8 setAccount:accountCopy];
    [(MobileCalDAVAccountRefreshActor *)v8 setContext:contextCopy];
    v14 = objc_opt_new();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingTaskGroups:v14];

    v15 = objc_opt_new();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingTasks:v15];

    v16 = dispatch_group_create();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingOperationGroup:v16];
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 6);
  }

  v17 = DALoggingwithCategory();
  if (os_log_type_enabled(v17, v12))
  {
    isForced = [contextCopy isForced];
    v19 = "NO";
    if (isForced)
    {
      v19 = "YES";
    }

    *buf = 136315138;
    v23 = v19;
    _os_log_impl(&dword_2484B2000, v17, v12, "Refresh actor starting up. (forced: %s)", buf, 0xCu);
  }

  return v8;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_teardownAllOutstandingOperations
{
  v29 = *MEMORY[0x277D85DE8];
  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  v4 = [outstandingTaskGroups copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * v9++) cancelTaskGroup];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v11 = [outstandingTasks copy];

  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = [v12 initWithDomain:*MEMORY[0x277CFDB18] code:1 userInfo:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) finishEarlyWithError:{v13, v19}];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)cancelWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v5, v6, "CalDAV actor was told to cancel", buf, 2u);
  }

  [(MobileCalDAVAccountRefreshActor *)self setShouldCancel:1];
  if ([(MobileCalDAVAccountRefreshActor *)self state]!= 10)
  {
    goto LABEL_6;
  }

  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  if ([outstandingTaskGroups count])
  {

LABEL_6:
    [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:completionCopy];
    [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
    goto LABEL_7;
  }

  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v9 = [outstandingTasks count];

  [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:completionCopy];
  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
  if (!v9)
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v6))
    {
      *v12 = 0;
      _os_log_impl(&dword_2484B2000, v10, v6, "There weren't any outstanding tasks, so we're going to call our cancel completion block now.", v12, 2u);
    }

    cancelCompletionBlock = [(MobileCalDAVAccountRefreshActor *)self cancelCompletionBlock];
    cancelCompletionBlock[2]();

    [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:0];
  }

LABEL_7:
}

- (void)teardown
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_2484B2000, v3, v4, "Refresh actor tearing down...", v5, 2u);
  }

  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
}

- (CalDiagAccountSync)accountSyncDiagnostics
{
  if (!self->_accountSyncDiagnostics && RecordCalendarDiagnostics(self, a2))
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    accountSyncDiagnostics = self->_accountSyncDiagnostics;
    self->_accountSyncDiagnostics = v3;
  }

  v5 = self->_accountSyncDiagnostics;

  return v5;
}

- (BOOL)_refreshShouldContinue
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    v19 = 67109120;
    LODWORD(v20) = [(MobileCalDAVAccountRefreshActor *)self state];
    _os_log_impl(&dword_2484B2000, v3, v5, "Checking if we should continue before transitioning from state %d", &v19, 8u);
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  shouldFailAllTasks = [account shouldFailAllTasks];

  if (shouldFailAllTasks)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 4);
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2484B2000, v8, v9, "Ignoring calendar refresh task because we have no password.", &v19, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:v10];
  }

  else if ([(MobileCalDAVAccountRefreshActor *)self shouldCancel])
  {
    v10 = DALoggingwithCategory();
    v13 = *(v4 + 4);
    if (os_log_type_enabled(v10, v13))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2484B2000, v10, v13, "Bailing out of refresh because we were told to cancel", &v19, 2u);
    }
  }

  else
  {
    context2 = [(MobileCalDAVAccountRefreshActor *)self context];
    error = [context2 error];

    if (!error)
    {
      return 1;
    }

    v10 = DALoggingwithCategory();
    v16 = *(v4 + 4);
    if (os_log_type_enabled(v10, v16))
    {
      context3 = [(MobileCalDAVAccountRefreshActor *)self context];
      error2 = [context3 error];
      v19 = 138412290;
      v20 = error2;
      _os_log_impl(&dword_2484B2000, v10, v16, "Encountered an error while refreshing. Bailing out of the refresh. The error was %@", &v19, 0xCu);
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
  return 0;
}

- (void)_waitForStateTransition
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    state = [(MobileCalDAVAccountRefreshActor *)self state];
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    v8 = [outstandingTaskGroups count];
    outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
    *buf = 67109632;
    v18 = state;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = [outstandingTasks count];
    _os_log_impl(&dword_2484B2000, v4, v5, "Waiting to make state transition from state %d with %lu outstanding task groups and %lu outstanding tasks", buf, 0x1Cu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke;
  v16[3] = &unk_278F177F8;
  v16[4] = self;
  v16[5] = a2;
  v10 = MEMORY[0x24C1D0520](v16);
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_2;
  block[3] = &unk_278F17820;
  v15 = v10;
  v13 = v10;
  dispatch_group_notify(outstandingOperationGroup, v12, block);
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) outstandingTaskGroups];
  v4 = [v3 count];

  if (v4)
  {
    __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_1();
  }

  v5 = [*v2 outstandingTasks];
  v6 = [v5 count];

  if (v6)
  {
    __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_2();
  }

  if ([*v2 _refreshShouldContinue])
  {
    v7 = [*v2 state];
    if (v7 > 5)
    {
      if (v7 > 7)
      {
        if (v7 == 8)
        {
          if ([MEMORY[0x277D03910] enableAutomaticAttachmentDownloads])
          {
            [*v2 setState:9];
            v20 = *v2;

            [v20 _downloadAttachments];
            return;
          }
        }

        else if (v7 != 9)
        {
          if (v7 == 10)
          {
            v24 = [MEMORY[0x277CCA890] currentHandler];
            [v24 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:338 description:@"MobileCalDAVAccountRefreshActor tried to transition out of the finished state. What does that even mean?"];
          }

          return;
        }

        [*v2 setState:10];
        v21 = *v2;

        [v21 _calendarCollectionsWereRefreshed];
        return;
      }

      if (v7 == 6)
      {
        [*v2 setState:7];
        if ([*v2 _refreshShouldContinue])
        {
          v18 = *v2;

          [v18 _uploadAttachments];
        }
      }

      else
      {
        [*v2 setState:8];
        v16 = *v2;

        [v16 _refreshSpecialCalendars];
      }
    }

    else if (v7 > 2)
    {
      if (v7 == 3)
      {
        [*v2 setState:4];
        v22 = *v2;

        [v22 _sendMoveTasks];
      }

      else if (v7 == 4)
      {
        [*v2 setState:5];
        v19 = *v2;

        [v19 _continuePrincipalRefresh];
      }

      else
      {
        v12 = [*v2 context];
        v13 = [v12 isCalendarsOnly];

        v14 = *v2;
        if (v13)
        {
          [v14 setState:10];
          v15 = *v2;

          [v15 _sendResultToAccount];
        }

        else
        {
          [v14 setState:6];
          if ([*v2 _refreshShouldContinue])
          {
            [*v2 _gatherAttachmentChanges];
            v23 = *v2;

            [v23 _refreshRegularCalendars];
          }
        }
      }
    }

    else
    {
      if (v7 >= 2)
      {
        if (v7 != 2)
        {
          return;
        }

        v10 = *v2;
      }

      else
      {
        v8 = [*v2 account];
        v9 = [v8 isDelegateAccount];

        v10 = *v2;
        if (!v9)
        {
          [v10 setState:2];
          v11 = *v2;

          [v11 _refreshDelegateAccountProperties];
          return;
        }
      }

      [v10 setState:3];
      v17 = *v2;

      [v17 _refreshCalendarProperties];
    }
  }
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D037D0] sharedRunLoop];
  v3 = [v2 getCFRunLoop];

  CFRunLoopPerformBlock(v3, *MEMORY[0x277CBF058], *(a1 + 32));

  CFRunLoopWakeUp(v3);
}

- (void)refreshWithCompletion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(MobileCalDAVAccountRefreshActor *)self refreshing])
  {
    [MobileCalDAVAccountRefreshActor refreshWithCompletion:];
  }

  [(MobileCalDAVAccountRefreshActor *)self setRefreshing:1];
  [(MobileCalDAVAccountRefreshActor *)self setCompletionBlock:completionCopy];

  self->_didForceDefaultCalendarRefetch = 0;
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  shouldFailAllTasks = [account shouldFailAllTasks];

  if (shouldFailAllTasks)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Ignoring calendar refresh task because we have no password.", buf, 2u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:v9];

    [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
    return;
  }

  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  isDisabledAccount = [context2 isDisabledAccount];

  if (!isDisabledAccount)
  {
    context3 = [(MobileCalDAVAccountRefreshActor *)self context];
    isCalendarsOnly = [context3 isCalendarsOnly];

    if (isCalendarsOnly)
    {
      v15 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 138412290;
        v39 = objc_opt_class();
        v17 = v39;
        _os_log_impl(&dword_2484B2000, v15, v16, "%@ refreshCalendarsOnly : begin", buf, 0xCu);
      }
    }

    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    if (([account2 needsAccountPropertyRefresh] & 1) == 0)
    {
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal = [account3 mainPrincipal];
      if (([mainPrincipal needsDefaultTimedAlarmUpdate] & 1) == 0)
      {
        account4 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal2 = [account4 mainPrincipal];
        if (([mainPrincipal2 needsDefaultAllDayAlarmUpdate] & 1) == 0)
        {
          account5 = [(MobileCalDAVAccountRefreshActor *)self account];
          mainPrincipal3 = [account5 mainPrincipal];
          calendarHomeURL = [mainPrincipal3 calendarHomeURL];
          if (calendarHomeURL)
          {
            v26 = calendarHomeURL;
            account6 = [(MobileCalDAVAccountRefreshActor *)self account];
            mainPrincipal4 = [account6 mainPrincipal];
            preferredCalendarUserAddresses = [mainPrincipal4 preferredCalendarUserAddresses];
            if ([preferredCalendarUserAddresses count])
            {
              account7 = [(MobileCalDAVAccountRefreshActor *)self account];
              searchPropertySet = [account7 searchPropertySet];
              if (searchPropertySet)
              {
                v32 = searchPropertySet;
                account8 = [(MobileCalDAVAccountRefreshActor *)self account];
                serverVersion = [account8 serverVersion];
                [serverVersion type];
                v29 = v33 = account6;
                v35 = [v29 isEqualToString:*MEMORY[0x277CF70A8]];

                account6 = v33;
                searchPropertySet = v32;
              }

              else
              {
                v35 = 1;
              }
            }

            else
            {
              v35 = 1;
            }

            if ((v35 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }
      }
    }

LABEL_26:
    [(MobileCalDAVAccountRefreshActor *)self setState:1];
    [(MobileCalDAVAccountRefreshActor *)self _refreshAccountProperties];
LABEL_27:
    [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
    return;
  }

  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
}

- (void)_refreshAccountProperties
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2484B2000, v3, v4, "Refreshing properties for account with CoreDAV", buf, 2u);
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account2 mainPrincipal];
    [mainPrincipal updatePropertiesFromCalStore:copyCalStore];

    CFRelease(copyCalStore);
  }

  v9 = objc_alloc(MEMORY[0x277CF6FA0]);
  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal2 = [account3 mainPrincipal];
  v12 = [v9 initWithPrincipal:mainPrincipal2];

  account4 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal3 = [account4 mainPrincipal];
  [v12 setFetchPrincipalSearchProperties:{objc_msgSend(mainPrincipal3, "shouldRefreshPrincipalSearchProperties")}];

  [v12 setDelegate:self];
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(outstandingOperationGroup);

  objc_initWeak(buf, v12);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__MobileCalDAVAccountRefreshActor__refreshAccountProperties__block_invoke;
  v17[3] = &unk_278F17848;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, buf);
  [v12 setCompletionBlock:v17];
  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v12];

  [v12 refreshProperties];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __60__MobileCalDAVAccountRefreshActor__refreshAccountProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (void)propertyRefreshForPrincipal:(id)principal completedWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  errorCopy = error;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (errorCopy)
  {
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v10))
    {
      v19 = 138412290;
      v20 = errorCopy;
      _os_log_impl(&dword_2484B2000, v9, v10, "Error refreshing properties for principal: %@", &v19, 0xCu);
    }

    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:errorCopy];
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v12))
    {
      fullName = [principalCopy fullName];
      account = [principalCopy account];
      accountDescription = [account accountDescription];
      account2 = [principalCopy account];
      publicDescription = [account2 publicDescription];
      v19 = 138412802;
      v20 = fullName;
      v21 = 2112;
      v22 = accountDescription;
      v23 = 2114;
      v24 = publicDescription;
      _os_log_impl(&dword_2484B2000, v9, v12, "Properties were refreshed for principal %@ on account %@ (%{public}@)", &v19, 0x20u);
    }

    [principalCopy setShouldRefreshPrincipalSearchProperties:0];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account3 setNeedsAccountPropertyRefresh:0];

    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setShouldSaveAccounts:{objc_msgSend(principalCopy, "isDirty") | objc_msgSend(context, "shouldSaveAccounts")}];
  }
}

- (void)_refreshDelegateAccountProperties
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v3, v5, "Getting delegates for account with CoreDAV", buf, 2u);
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  serverVersion = [account serverVersion];
  supportsCalendarProxy = [serverVersion supportsCalendarProxy];

  if (supportsCalendarProxy)
  {
    v9 = [CalDAVAccountDelegatesRefreshOperation alloc];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account2 mainPrincipal];
    v12 = [(CalDAVOperation *)v9 initWithPrincipal:mainPrincipal];

    [(CalDAVAccountDelegatesRefreshOperation *)v12 setMdelegate:self];
    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    objc_initWeak(buf, v12);
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__MobileCalDAVAccountRefreshActor__refreshDelegateAccountProperties__block_invoke;
    v20[3] = &unk_278F17848;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, buf);
    [(CoreDAVTaskGroup *)v12 setCompletionBlock:v20];
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v12];

    [(CalDAVAccountDelegatesRefreshOperation *)v12 refreshDelegates];
    [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = DALoggingwithCategory();
    v16 = *(v4 + 6);
    if (os_log_type_enabled(v15, v16))
    {
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      serverVersion2 = [account3 serverVersion];
      type = [serverVersion2 type];
      *buf = 138412290;
      v25 = type;
      _os_log_impl(&dword_2484B2000, v15, v16, "%@: This server does not support delegates.", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  }
}

void __68__MobileCalDAVAccountRefreshActor__refreshDelegateAccountProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (void)delegateRefreshForPrincipal:(id)principal completedWithDelegateUserInfo:(id)info error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  infoCopy = info;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  account5 = v11;
  if (errorCopy)
  {
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v13))
    {
      account = [principalCopy account];
      accountDescription = [account accountDescription];
      account2 = [principalCopy account];
      publicDescription = [account2 publicDescription];
      v23 = 138412802;
      v24 = accountDescription;
      v25 = 2114;
      v26 = publicDescription;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_2484B2000, account5, v13, "Error refreshing delegates for account %@ (%{public}@): %@", &v23, 0x20u);
    }
  }

  else
  {
    v18 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v18))
    {
      account3 = [principalCopy account];
      accountDescription2 = [account3 accountDescription];
      account4 = [principalCopy account];
      publicDescription2 = [account4 publicDescription];
      v23 = 138412546;
      v24 = accountDescription2;
      v25 = 2114;
      v26 = publicDescription2;
      _os_log_impl(&dword_2484B2000, account5, v18, "Delegates were refreshed for account %@ (%{public}@)", &v23, 0x16u);
    }

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account5 updateDelegatesWithUserInfo:infoCopy];
  }
}

- (void)_refreshCalendarProperties
{
  v36 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];
  calendarHomeURL = [mainPrincipal calendarHomeURL];
  v6 = calendarHomeURL == 0;

  v7 = DALoggingwithCategory();
  v8 = v7;
  if (!v6)
  {
    v9 = MEMORY[0x277D03988];
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v8, v10, "Scheduling calendar refresh operation", buf, 2u);
    }

    v11 = objc_alloc(MEMORY[0x277CF6FB0]);
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account2 mainPrincipal];
    v14 = [v11 initWithPrincipal:mainPrincipal2];

    [v14 setDelegate:self];
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    LOBYTE(mainPrincipal2) = [context isForced];

    if (mainPrincipal2)
    {
      goto LABEL_13;
    }

    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal3 = [account3 mainPrincipal];
    defaultCalendarURL = [mainPrincipal3 defaultCalendarURL];
    if (defaultCalendarURL)
    {
    }

    else
    {
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      haveForcedDefaultCalendarRefetch = [account4 haveForcedDefaultCalendarRefetch];

      if ((haveForcedDefaultCalendarRefetch & 1) == 0)
      {
        v27 = DALoggingwithCategory();
        v28 = *(v9 + 5);
        if (os_log_type_enabled(v27, v28))
        {
          account5 = [(MobileCalDAVAccountRefreshActor *)self account];
          *buf = 138412290;
          v35 = account5;
          _os_log_impl(&dword_2484B2000, v27, v28, "Account %@ is missing its default calendar. Will attempt a fuller sync once to fetch it.", buf, 0xCu);
        }

        v23 = 0;
        self->_didForceDefaultCalendarRefetch = 1;
        goto LABEL_12;
      }
    }

    v23 = 1;
LABEL_12:
    account6 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v14 setUseCalendarHomeSyncReport:{v23 & objc_msgSend(account6, "shouldUseCalendarHomeSyncReport")}];

LABEL_13:
    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    objc_initWeak(buf, v14);
    objc_initWeak(&location, self);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __61__MobileCalDAVAccountRefreshActor__refreshCalendarProperties__block_invoke;
    v30[3] = &unk_278F17848;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, buf);
    [v14 setCompletionBlock:v30];
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v14];

    [v14 refreshCalendarProperties];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_14;
  }

  v19 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v8, v19, "Missing calendar home; not trying to refresh calendar properties", buf, 2u);
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:92 userInfo:0];
  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context2 setError:v14];

LABEL_14:
  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

void __61__MobileCalDAVAccountRefreshActor__refreshCalendarProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (BOOL)calendarRefreshShouldRetryMkCalendarForPrincipal:(id)principal calendar:(id)calendar error:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CFDB80]])
  {
LABEL_7:

    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code != 403)
  {
LABEL_8:
    if (errorCopy)
    {
      [calendarCopy recordCalendarError:errorCopy ofType:2];
    }

    else
    {
      [calendarCopy clearCalendarErrorOfType:2];
    }

    v13 = 0;
    goto LABEL_12;
  }

  domain = [calendarCopy calendarURL];
  lastPathComponent = [domain lastPathComponent];
  if (stringLooksLikeAUUID(lastPathComponent))
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2484B2000, v11, v12, "Ignoring 403 performing mkcalendar because the URL already looks like one we generated.", &v22, 2u);
    }

    goto LABEL_7;
  }

  guid = [calendarCopy guid];
  if (stringLooksLikeAUUID(guid))
  {
    uUIDString = guid;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    if (!guid || ![guid length])
    {
      [calendarCopy setGuid:uUIDString];
    }
  }

  cDVURLByDeletingLastPathComponent = [domain CDVURLByDeletingLastPathComponent];
  v19 = [cDVURLByDeletingLastPathComponent CDVfixedURLByAppendingPathComponent:uUIDString];

  [calendarCopy setCalendarURL:v19];
  v20 = DALoggingwithCategory();
  v21 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = 138412546;
    v23 = domain;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&dword_2484B2000, v20, v21, "Received 403 performing mkcalendar at %@. Going to retry with new URL of %@", &v22, 0x16u);
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (void)calendarRefreshWillSendCalendarDeletes:(id)deletes
{
  deletesCopy = deletes;
  state = [(MobileCalDAVAccountRefreshActor *)self state];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  v9 = os_log_type_enabled(v7, v8);
  if (state == 3)
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Pausing calendar refresh before sending caledar deletes to send any outstanding moves we have", v12, 2u);
    }

    objc_storeStrong(&self->_pausedPropertyRefreshOperation, deletes);
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups removeObject:deletesCopy];

    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_leave(outstandingOperationGroup);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Sending deletes past the BeginRefreshingPrincipalProperties state. Continuing on as normal.", buf, 2u);
    }

    [deletesCopy continueRefreshFromSendingDeletes];
  }
}

- (void)_sendMoveTasks
{
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  itemIDsToMoveActions = [account itemIDsToMoveActions];
  v5 = [itemIDsToMoveActions count];

  if (v5)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    itemIDsToMoveActions2 = [account2 itemIDsToMoveActions];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__MobileCalDAVAccountRefreshActor__sendMoveTasks__block_invoke;
    v8[3] = &unk_278F17870;
    v8[4] = self;
    [itemIDsToMoveActions2 enumerateKeysAndObjectsUsingBlock:v8];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

void __49__MobileCalDAVAccountRefreshActor__sendMoveTasks__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([*(a1 + 32) shouldCancel])
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) _sendMoveForItem:v6];
  }
}

- (void)_clearMoveChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v14[0] = 67109120;
    v14[1] = [changeCopy changeID];
    _os_log_impl(&dword_2484B2000, v5, v6, "Clearing move change at index %d", v14, 8u);
  }

  Mutable = CFArrayCreateMutable(0, 1, 0);
  CFArrayAppendValue(Mutable, [changeCopy changeID]);
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  changeTrackingID = [account3 changeTrackingID];
  [changeCopy objectType];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (void)_saveMoveChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9[0] = 67109120;
    v9[1] = [changeCopy changeID];
    _os_log_impl(&dword_2484B2000, v5, v6, "Saving move change for next time at index %d", v9, 8u);
  }

  context = [(MobileCalDAVAccountRefreshActor *)self context];
  changeTracker = [context changeTracker];
  [changeTracker saveChange:objc_msgSend(changeCopy forEntityType:{"changeID"), objc_msgSend(changeCopy, "objectType")}];
}

- (void)_handleMoveTaskComplete:(id)complete moveItem:(id)item
{
  v33 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  itemCopy = item;
  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  [outstandingTasks removeObject:completeCopy];

  error = [completeCopy error];

  if (!error)
  {
    responseHeaders = [completeCopy responseHeaders];
    v21 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CF6F88]];
    v22 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];
    if ([v21 length] || objc_msgSend(v22, "length"))
    {
      v23 = DALoggingwithCategory();
      v24 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v23, v24))
      {
        v27 = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_2484B2000, v23, v24, "move task included new schedule tag %@ and/or new etag %@", &v27, 0x16u);
      }

      -[MobileCalDAVAccountRefreshActor _finishMoveForItemWithID:withEtag:scheduleTag:](self, "_finishMoveForItemWithID:withEtag:scheduleTag:", [itemCopy itemID], v22, v21);
    }

    else
    {
      v25 = DALoggingwithCategory();
      v26 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v25, v26))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_2484B2000, v25, v26, "No new etag included in move task; we'll need to PROPFIND to get it", &v27, 2u);
      }

      -[MobileCalDAVAccountRefreshActor _propFindForNewEtagFollowingMoveOfItem:](self, "_propFindForNewEtagFollowingMoveOfItem:", [itemCopy itemID]);
    }

    goto LABEL_14;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [completeCopy url];
    destinationURL = [completeCopy destinationURL];
    error2 = [completeCopy error];
    v27 = 138412802;
    v28 = v12;
    v29 = 2112;
    v30 = destinationURL;
    v31 = 2112;
    v32 = error2;
    _os_log_impl(&dword_2484B2000, v10, v11, "Error moving event from %@ to %@: %@", &v27, 0x20u);
  }

  error3 = [completeCopy error];
  domain = [error3 domain];
  v17 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v17)
  {
    error4 = [completeCopy error];
    code = [error4 code];

    if ((code - 403) <= 9 && ((1 << (code + 109)) & 0x241) != 0)
    {
LABEL_14:
      [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:itemCopy];
      goto LABEL_15;
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _saveMoveChange:itemCopy];
LABEL_15:
}

- (void)_propFindForNewEtagFollowingMoveOfItem:(int)item
{
  v40 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  if (v9)
  {
    v10 = CalCalendarItemCopyExternalID();
    if (v10)
    {
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal = [account3 mainPrincipal];
      calendarHomeURL = [mainPrincipal calendarHomeURL];
      v14 = [v10 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

      CFRelease(v9);
      if (v14)
      {

        v15 = objc_alloc(MEMORY[0x277CFDBE8]);
        v16 = [v15 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF20] parseClass:objc_opt_class()];
        v17 = objc_alloc(MEMORY[0x277CFDBE8]);
        v18 = [v17 initWithNameSpace:*MEMORY[0x277CFDDC0] name:*MEMORY[0x277CF7050] parseClass:objc_opt_class()];
        v19 = [MEMORY[0x277CBEB98] setWithObjects:{v16, v18, 0}];
        v20 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v19 atURL:v14 withDepth:2];
        account4 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal2 = [account4 mainPrincipal];
        [v20 setAccountInfoProvider:mainPrincipal2];

        objc_initWeak(&location, v20);
        outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(outstandingOperationGroup);

        objc_initWeak(&from, self);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __74__MobileCalDAVAccountRefreshActor__propFindForNewEtagFollowingMoveOfItem___block_invoke;
        v30[3] = &unk_278F17898;
        objc_copyWeak(&v33, &location);
        itemCopy = item;
        v10 = v14;
        v31 = v10;
        selfCopy = self;
        objc_copyWeak(&v34, &from);
        [v20 setCompletionBlock:v30];
        account5 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal3 = [account5 mainPrincipal];
        taskManager = [mainPrincipal3 taskManager];
        [taskManager submitIndependentCoreDAVTask:v20];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        goto LABEL_11;
      }
    }

    else
    {
      CFRelease(v9);
    }

    v28 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v28, v29))
    {
      LODWORD(location) = 67109378;
      HIDWORD(location) = item;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_2484B2000, v28, v29, "Moved item with id %d has no external ID (%@) or couldn't construct full URL from it", &location, 0x12u);
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v27))
    {
      LODWORD(location) = 67109120;
      HIDWORD(location) = item;
      _os_log_impl(&dword_2484B2000, v10, v27, "Couldn't find a moved item in the database with id %d", &location, 8u);
    }
  }

LABEL_11:
}

void __74__MobileCalDAVAccountRefreshActor__propFindForNewEtagFollowingMoveOfItem___block_invoke(uint64_t a1)
{
  v1 = a1;
  v46 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  if (v3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 64);
      v7 = *(v1 + 32);
      *buf = 67109634;
      *v45 = v6;
      *&v45[4] = 2112;
      *&v45[6] = v7;
      *&v45[14] = 2112;
      *&v45[16] = v3;
      _os_log_impl(&dword_2484B2000, v4, v5, "Error propfinding after a move for item %i to URL %@: %@", buf, 0x1Cu);
    }
  }

  else
  {
    v33 = v1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = WeakRetained;
    v8 = [WeakRetained multiStatus];
    v9 = [v8 orderedResponses];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v4 = 0;
      v13 = *v40;
      v38 = *MEMORY[0x277CFDEF8];
      v37 = *MEMORY[0x277CFDF20];
      v36 = *MEMORY[0x277CFDDC0];
      v14 = *MEMORY[0x277CF7050];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v39 + 1) + 8 * i) successfulPropertiesToValues];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 CDVObjectForKeyWithNameSpace:v38 andName:v37];
            v19 = [v18 payloadAsString];

            if (v19)
            {
              v20 = v19;

              v4 = v20;
            }

            v21 = [v17 CDVObjectForKeyWithNameSpace:v36 andName:v14];
            v22 = [v21 payloadAsString];

            if (v22)
            {
              v23 = v22;

              v12 = v23;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v4 = 0;
    }

    v24 = DALoggingwithCategory();
    v25 = v24;
    if (v12 | v4)
    {
      v26 = *(MEMORY[0x277D03988] + 6);
      v3 = 0;
      WeakRetained = v34;
      v1 = v33;
      if (os_log_type_enabled(v24, v26))
      {
        v27 = *(v33 + 64);
        *buf = 138412802;
        *v45 = v12;
        *&v45[8] = 2112;
        *&v45[10] = v4;
        *&v45[18] = 1024;
        *&v45[20] = v27;
        _os_log_impl(&dword_2484B2000, v25, v26, "Got new schedule tag %@ and/or new etag %@ in propfind after move for item %i", buf, 0x1Cu);
      }

      [*(v33 + 40) _finishMoveForItemWithID:*(v33 + 64) withEtag:v4 scheduleTag:v12];
    }

    else
    {
      v28 = *(MEMORY[0x277D03988] + 3);
      v3 = 0;
      WeakRetained = v34;
      v1 = v33;
      if (os_log_type_enabled(v24, v28))
      {
        v29 = *(v33 + 64);
        v30 = *(v33 + 32);
        *buf = 67109378;
        *v45 = v29;
        *&v45[4] = 2112;
        *&v45[6] = v30;
        _os_log_impl(&dword_2484B2000, v25, v28, "Got neither etag nor schedule tag in propind after move for item id %i to %@", buf, 0x12u);
      }
    }
  }

  v31 = objc_loadWeakRetained((v1 + 56));
  v32 = [v31 outstandingOperationGroup];
  dispatch_group_leave(v32);
}

- (void)_finishMoveForItemWithID:(int)d withEtag:(id)etag scheduleTag:(id)tag
{
  v20 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  tagCopy = tag;
  if (![tagCopy length] && !objc_msgSend(etagCopy, "length"))
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v18 = 67109120;
      dCopy2 = d;
      v17 = "Got neither an etag nor a schedule tag for item with ID %i";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  v14 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v14)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v18 = 67109120;
      dCopy2 = d;
      v17 = "Couldn't find a moved item in the database with id %d";
LABEL_9:
      _os_log_impl(&dword_2484B2000, v15, v16, v17, &v18, 8u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  [tagCopy length];
  CalCalendarItemSetExternalScheduleID();
  [etagCopy length];
  CalCalendarItemSetExternalModificationTag();
  CFRelease(v14);
LABEL_11:
}

- (BOOL)_sendMoveForItem:(id)item
{
  v75 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  [itemCopy itemID];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  cf = v9;
  if (!v9)
  {
    v29 = DALoggingwithCategory();
    v30 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v29, *(MEMORY[0x277D03988] + 3)))
    {
      *buf = 67109120;
      *v73 = [itemCopy itemID];
      _os_log_impl(&dword_2484B2000, v29, v30, "Couldn't find a calendar item with uid %d to process a move operation.", buf, 8u);
    }

    v31 = 0;
    goto LABEL_32;
  }

  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account3 mainPrincipal];
  calendarHomeURL = [mainPrincipal calendarHomeURL];

  v65 = CalCalendarItemCopyExternalID();
  v12 = CalCalendarItemCopyCalendar();
  if (v12)
  {
    v13 = v12;
    v14 = CalCalendarCopyExternalID();
    v15 = v14;
    if (v14)
    {
      v16 = [v14 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];
      v17 = [DACalDAViCalItem alloc];
      WeakRetained = objc_loadWeakRetained(&self->_account);
      accountID2 = [WeakRetained accountID];
      v20 = [(DACalDAViCalItem *)v17 initWithCalRecord:cf inContainer:v16 accountID:accountID2];

      v63 = v20;
      filename = [(DACalDAViCalItem *)v20 filename];
      v22 = [v16 URLByAppendingPathComponent:filename];
      [(DACalDAViCalItem *)v20 setServerID:v22];

      serverID = [(DACalDAViCalItem *)v20 serverID];
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal2 = [account4 mainPrincipal];
      calendarHomeURL2 = [mainPrincipal2 calendarHomeURL];
      v27 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL2];

      CalCalendarItemSetExternalID();
      [itemCopy setUpdatedExternalID:v27];
      context = [(MobileCalDAVAccountRefreshActor *)self context];
      [context setShouldSave:1];
    }

    else
    {
      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v33, v34))
      {
        *buf = 67109120;
        *v73 = [itemCopy itemID];
        _os_log_impl(&dword_2484B2000, v33, v34, "Couldn't get a calendar URL for the moved event %d", buf, 8u);
      }

      v63 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    v15 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v32))
    {
      *buf = 67109120;
      *v73 = [itemCopy itemID];
      _os_log_impl(&dword_2484B2000, v15, v32, "Couldn't find an owning calendar for a moved event (%d).", buf, 8u);
    }

    v63 = 0;
  }

  oldExternalID = [itemCopy oldExternalID];
  v36 = oldExternalID;
  if (v65)
  {
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v37, v38))
    {
      *buf = 138412546;
      *v73 = v65;
      *&v73[8] = 2112;
      v74 = oldExternalID;
      _os_log_impl(&dword_2484B2000, v37, v38, "Moving an event that has an external id set. Preferring that external ID (%@) to the one tombstoned on the move record (%@)", buf, 0x16u);
    }

    v36 = v65;
  }

  v39 = v36;
  v40 = [v39 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];
  v41 = [v40 da_urlBySettingUsername:0];

  serverID2 = [(DACalDAViCalItem *)v63 serverID];
  v43 = [serverID2 da_urlBySettingUsername:0];

  if (!v43 || !v41)
  {
    v46 = DALoggingwithCategory();
    v52 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v46, v52))
    {
      *buf = 67109376;
      *v73 = v41 == 0;
      *&v73[4] = 1024;
      *&v73[6] = v43 == 0;
      v48 = "Can't move event because we don't have both a source URL and destination URL. source is null = %{BOOL}d, dest is null = %{BOOL}d";
      v49 = v46;
      v50 = v52;
      v51 = 14;
      goto LABEL_26;
    }

LABEL_27:
    v31 = 0;
    v53 = 1;
    goto LABEL_31;
  }

  v44 = [v41 da_isEqualToDAVURL:v43];
  v45 = DALoggingwithCategory();
  v46 = v45;
  if (v44)
  {
    v47 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v45, v47))
    {
      *buf = 0;
      v48 = "The source and destination URLs are equal. This could happen if you moved an event twice. We're just going to pretend we didn't see that.";
      v49 = v46;
      v50 = v47;
      v51 = 2;
LABEL_26:
      _os_log_impl(&dword_2484B2000, v49, v50, v48, buf, v51);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v54 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v45, v54))
  {
    *buf = 138412546;
    *v73 = v41;
    *&v73[8] = 2112;
    v74 = v43;
    _os_log_impl(&dword_2484B2000, v46, v54, "Sending a move request from %@ to %@", buf, 0x16u);
  }

  v46 = [objc_alloc(MEMORY[0x277CFDC28]) initWithSourceURL:v41 destinationURL:v43];
  objc_initWeak(buf, v46);
  objc_initWeak(&location, self);
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(outstandingOperationGroup);

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __52__MobileCalDAVAccountRefreshActor__sendMoveForItem___block_invoke;
  v67[3] = &unk_278F178C0;
  objc_copyWeak(&v69, &location);
  objc_copyWeak(&v70, buf);
  v68 = itemCopy;
  [v46 setCompletionBlock:v67];
  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  [outstandingTasks addObject:v46];

  account5 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal3 = [account5 mainPrincipal];
  [v46 setAccountInfoProvider:mainPrincipal3];

  account6 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal4 = [account6 mainPrincipal];
  taskManager = [mainPrincipal4 taskManager];
  [taskManager submitIndependentCoreDAVTask:v46];

  objc_destroyWeak(&v70);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v53 = 0;
  v31 = 1;
LABEL_31:

  CFRelease(cf);
  if (!v53)
  {
    [(MobileCalDAVAccountRefreshActor *)self _saveMoveChange:itemCopy];
    goto LABEL_34;
  }

LABEL_32:
  [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:itemCopy, v63];
LABEL_34:

  return v31;
}

void __52__MobileCalDAVAccountRefreshActor__sendMoveForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMoveTaskComplete:v3 moveItem:*(a1 + 32)];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 outstandingOperationGroup];
  dispatch_group_leave(v4);
}

- (void)_continuePrincipalRefresh
{
  v3 = self->_pausedPropertyRefreshOperation;
  pausedPropertyRefreshOperation = self->_pausedPropertyRefreshOperation;
  self->_pausedPropertyRefreshOperation = 0;

  if (v3)
  {
    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v3];

    [(CalDAVCalendarPropertyRefreshOperation *)v3 continueRefreshFromSendingDeletes];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "No paused property refresh operation to continue", v9, 2u);
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (void)calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:(id)type
{
  if ([type isTaskContainer])
  {

    [(MobileCalDAVAccountRefreshActor *)self setRefreshFoundUpdatedTaskContainer:1];
  }
}

- (void)calendarRefreshFoundUpdatedSpecialContainer:(id)container
{
  if ([container isNotification])
  {

    [(MobileCalDAVAccountRefreshActor *)self setRefreshFoundUpdatedSpecialCalendar:1];
  }
}

- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error
{
  v94 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  tagsCopy = tags;
  tokensCopy = tokens;
  tokenCopy = token;
  calendarsCopy = calendars;
  errorCopy = error;
  if (errorCopy)
  {
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    error = [context error];

    selfCopy = self;
    if (!error)
    {
      context2 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context2 setError:errorCopy];
    }

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      account = [(MobileCalDAVAccountRefreshActor *)selfCopy account];
      publicDescription = [account publicDescription];
      *buf = 138543618;
      v91 = publicDescription;
      v92 = 2112;
      v93 = errorCopy;
      _os_log_impl(&dword_2484B2000, v23, v24, "Error refreshing calendar properties for account %{public}@ error %@", buf, 0x16u);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (![(MobileCalDAVAccountRefreshActor *)self shouldCancel])
  {
    selfCopy4 = self;
    v28 = DALoggingwithCategory();
    type = *(MEMORY[0x277D03988] + 6);
    selfCopy3 = self;
    if (os_log_type_enabled(v28, type))
    {
      account2 = [(MobileCalDAVAccountRefreshActor *)self account];
      accountDescription = [account2 accountDescription];
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      publicDescription2 = [account3 publicDescription];
      *buf = 138412546;
      v91 = accountDescription;
      v92 = 2114;
      v93 = publicDescription2;
      _os_log_impl(&dword_2484B2000, v28, type, "Calendars properties were refreshed for account %@ (%{public}@)", buf, 0x16u);

      selfCopy4 = self;
      errorCopy = 0;
    }

    context3 = [(MobileCalDAVAccountRefreshActor *)selfCopy4 context];
    account4 = [(MobileCalDAVAccountRefreshActor *)selfCopy4 account];
    mainPrincipal = [account4 mainPrincipal];
    [context3 setShouldSaveAccounts:{objc_msgSend(mainPrincipal, "isDirty") | objc_msgSend(context3, "shouldSaveAccounts")}];

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account5 mainPrincipal];
    LODWORD(mainPrincipal) = [mainPrincipal2 isDirty];

    if (mainPrincipal)
    {
      account6 = [(MobileCalDAVAccountRefreshActor *)self account];
      v39 = [account6 updateCalendarStoreWithAlreadyOpenDBShouldCreate:0 syncingThisAccount:1];
    }

    else
    {
      v39 = 0;
    }

    account7 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal3 = [account7 mainPrincipal];
    calendarsAreDirty = [mainPrincipal3 calendarsAreDirty];

    if (calendarsAreDirty)
    {
      account8 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal4 = [account8 mainPrincipal];
      [mainPrincipal4 setCalendarsAreDirty:0];

      selfCopy7 = self;
    }

    else
    {
      selfCopy7 = self;
      if (!v39)
      {
        goto LABEL_18;
      }
    }

    v46 = DALoggingwithCategory();
    if (os_log_type_enabled(v46, type))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v46, type, "Calendar properties were updated. Saving the database", buf, 2u);
    }

    account9 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 account];
    dbHelper = [account9 dbHelper];
    account10 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 account];
    accountID = [account10 accountID];
    [dbHelper calSaveDatabaseForAccountID:accountID];

    selfCopy7 = self;
LABEL_18:
    context4 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 context];
    isCalendarsOnly = [context4 isCalendarsOnly];

    if ((isCalendarsOnly & 1) == 0)
    {
      v70 = errorCopy;
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 setCalendarHomeSyncToken:tokenCopy];
      v73 = tagsCopy;
      v53 = [tagsCopy copy];
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 setPathsToCTags:v53];

      v72 = tokensCopy;
      v54 = [tokensCopy copy];
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 setPathsToSyncTokens:v54];

      v71 = calendarsCopy;
      v55 = [calendarsCopy mutableCopy];
      outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)selfCopy7 outstandingOperationGroup];
      dispatch_group_enter(outstandingOperationGroup);

      v23 = dispatch_group_create();
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 _cleanUpDuplicateCalendars];
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      account11 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 account];
      calendars = [account11 calendars];

      v59 = [calendars countByEnumeratingWithState:&v85 objects:v89 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v86;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v86 != v61)
            {
              objc_enumerationMutation(calendars);
            }

            v63 = *(*(&v85 + 1) + 8 * i);
            if (([v63 isEventContainer] & 1) != 0 || CalShouldSyncReminders())
            {
              v64 = DALoggingwithCategory();
              if (os_log_type_enabled(v64, type))
              {
                title = [v63 title];
                *buf = 138412290;
                v91 = title;
                _os_log_impl(&dword_2484B2000, v64, type, "Preparing sync actions for calendar %@", buf, 0xCu);

                selfCopy7 = selfCopy3;
              }

              dispatch_group_enter(v23);
              v81[0] = MEMORY[0x277D85DD0];
              v81[1] = 3221225472;
              v81[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke;
              v81[3] = &unk_278F178E8;
              v81[4] = selfCopy7;
              v82 = v55;
              v83 = principalCopy;
              v84 = v23;
              [v63 prepareSyncActionsWithCompletionBlock:v81];
            }
          }

          v60 = [calendars countByEnumeratingWithState:&v85 objects:v89 count:16];
        }

        while (v60);
      }

      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_75;
      v79[3] = &unk_278F17910;
      v79[4] = selfCopy7;
      v80 = v55;
      v66 = v55;
      v67 = MEMORY[0x24C1D0520](v79);
      v68 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_76;
      block[3] = &unk_278F17820;
      v78 = v67;
      v69 = v67;
      dispatch_group_notify(v23, v68, block);

      tokensCopy = v72;
      tagsCopy = v73;
      calendarsCopy = v71;
      errorCopy = v70;
      goto LABEL_32;
    }
  }

LABEL_33:
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 needsResync];
  v5 = [v3 syncActions];
  v6 = [v5 count];

  v7 = [v3 reportJunkActions];
  v8 = [v7 count];

  v9 = [v3 recurrenceSplitActions];
  v10 = [v9 count];

  v11 = [*(a1 + 32) account];
  v12 = [v11 mainPrincipal];
  v13 = [v12 isMergeSync];

  v14 = [v3 hasCalendarErrorOfType:4];
  v15 = v14;
  if ((v4 & 1) != 0 || v6 || v8 || v10 || (v13 & 1) != 0 || v14)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      v20 = v10 != 0;
      v18 = v6 != 0;
      v19 = [v3 title];
      *buf = 138413826;
      v22 = v19;
      v23 = 1024;
      v24 = v4;
      v25 = 1024;
      v26 = v18;
      v27 = 1024;
      v28 = v8 != 0;
      v29 = 1024;
      v30 = v20;
      v31 = 1024;
      v32 = v13;
      v33 = 1024;
      v34 = v15;
      _os_log_impl(&dword_2484B2000, v16, v17, "Calendar %@ needs to be synced (needsResync: %d, hasSyncActions: %d, hasItemsToReportJunk: %d, hasRecurrenceSplitActions: %d, isMergeSync: %d, hadSyncError: %d)", buf, 0x30u);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    [*(a1 + 32) calendarSyncForPrincipal:*(a1 + 48) calendar:v3 completedWithError:0];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_75(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) allObjects];
  v3 = [v2 mutableCopy];
  [*(a1 + 32) setCalendarsToRefresh:v3];

  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) calendarsToRefresh];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2484B2000, v4, v5, "Calendars to refresh in this sync are: %@", &v8, 0xCu);
  }

  v7 = [*(a1 + 32) outstandingOperationGroup];
  dispatch_group_leave(v7);
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_76(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x277CBF058], *(a1 + 32));
  v3 = CFRunLoopGetMain();

  CFRunLoopWakeUp(v3);
}

- (void)_cleanUpDuplicateCalendars
{
  v34 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  duplicateCalendars = [account duplicateCalendars];

  if ([duplicateCalendars count])
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    account4 = [(MobileCalDAVAccountRefreshActor *)self account];
    changeTrackingID = [account4 changeTrackingID];
    [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = duplicateCalendars;
    v11 = duplicateCalendars;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v28;
      v16 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          if ([v18 count] == 2)
          {
            v19 = [v18 objectAtIndexedSubscript:0];
            v20 = [v18 objectAtIndexedSubscript:1];
            v14 |= [(MobileCalDAVAccountRefreshActor *)self _cleanUpDuplicateCalendar:v20 ofCalendar:v19];
          }

          else
          {
            v19 = DALoggingwithCategory();
            if (os_log_type_enabled(v19, v16))
            {
              v21 = [v18 count];
              *buf = 134217984;
              v32 = v21;
              _os_log_impl(&dword_2484B2000, v19, v16, "Unexpected number of items in duplicate pair: %lu", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v13);
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper2 = [account5 dbHelper];
    account6 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID2 = [account6 accountID];
    [dbHelper2 calCloseDatabaseForAccountID:accountID2 save:v14 & 1];

    duplicateCalendars = v26;
  }
}

- (BOOL)_cleanUpDuplicateCalendar:(id)calendar ofCalendar:(id)ofCalendar
{
  v33 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  ofCalendarCopy = ofCalendar;
  calCalendar = [ofCalendarCopy calCalendar];
  calCalendar2 = [calendarCopy calCalendar];
  v10 = calCalendar2;
  if (!calCalendar)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, *(MEMORY[0x277D03988] + 3)))
    {
      title = [ofCalendarCopy title];
      calendarURLString = [ofCalendarCopy calendarURLString];
      v31 = 138412546;
      *v32 = title;
      *&v32[8] = 2112;
      *&v32[10] = calendarURLString;
      _os_log_impl(&dword_2484B2000, v19, v20, "Calendar ref is NULL for original calendar %@ with URL %@. Will not attempt to remove duplicate.", &v31, 0x16u);
    }

    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!calCalendar2)
  {
LABEL_10:
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      title2 = [calendarCopy title];
      calendarURLString2 = [calendarCopy calendarURLString];
      v31 = 138412546;
      *v32 = title2;
      *&v32[8] = 2112;
      *&v32[10] = calendarURLString2;
      _os_log_impl(&dword_2484B2000, v23, v24, "Calendar ref is NULL for duplicate calendar %@ with URL %@. Will not attempt to remove duplicate.", &v31, 0x16u);
    }

    goto LABEL_16;
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 3);
  v15 = os_log_type_enabled(v13, v14);
  if (!copyCalStore)
  {
    if (v15)
    {
      UID = CalCalendarGetUID();
      title3 = [calendarCopy title];
      calendarURLString3 = [calendarCopy calendarURLString];
      v31 = 67109634;
      *v32 = UID;
      *&v32[4] = 2112;
      *&v32[6] = title3;
      *&v32[14] = 2112;
      *&v32[16] = calendarURLString3;
      _os_log_impl(&dword_2484B2000, v13, v14, "No store when removing duplicate calendar with UID %i (%@ with URL %@). Will not attempt to remove duplicate.", &v31, 0x1Cu);
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v15)
  {
    v16 = CalCalendarGetUID();
    title4 = [calendarCopy title];
    v31 = 67109378;
    *v32 = v16;
    *&v32[4] = 2112;
    *&v32[6] = title4;
    _os_log_impl(&dword_2484B2000, v13, v14, "Removing duplicate calendar with rowid %i and title %@; clearing ctag and synctoken for original calendar", &v31, 0x12u);
  }

  CalStoreRemoveCalendar();
  CFRelease(copyCalStore);
  v18 = 1;
  [ofCalendarCopy setNeedsResync:1];
  [ofCalendarCopy setSyncToken:0];
  [ofCalendarCopy setCtag:0];
LABEL_17:

  return v18;
}

- (BOOL)_amendChangeRecordAndCleanUpAfterDeletedEventWithID:(int)d externalID:(id)iD database:(CalDatabase *)database
{
  v22 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    v18 = 67109378;
    *v19 = d;
    *&v19[4] = 2112;
    *&v19[6] = iDCopy;
    _os_log_impl(&dword_2484B2000, v8, v9, "Event put to server during this sync appears to have been deleted. Original row id = %i. external_id = %@", &v18, 0x12u);
  }

  CalDatabaseAmendDeleteForCalendarItemWithExternalID();
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    v12 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
    v13 = v12 != 0;
    if (v12)
    {
      v14 = v12;
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v9))
      {
        RowID = CalCalendarItemGetRowID();
        v18 = 138412802;
        *v19 = iDCopy;
        *&v19[8] = 1024;
        *&v19[10] = RowID;
        v20 = 1024;
        dCopy = d;
        _os_log_impl(&dword_2484B2000, v15, v9, "Removing event with external_id %@ and row id %i because it has the same external ID as an event that was put and subsequently deleted during this sync. (Original row id = %i)", &v18, 0x18u);
      }

      CalRemoveEvent();
      CFRelease(v14);
    }

    CFRelease(copyCalStore);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_checkForNewOrMovedItemsDeletedSinceSyncStartedInCalendars:(id)calendars database:(CalDatabase *)database moves:(id)moves
{
  v63 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  movesCopy = moves;
  obj = calendarsCopy;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = [calendarsCopy countByEnumeratingWithState:&v50 objects:v62 count:16];
  v7 = 0;
  if (v37)
  {
    v36 = *v51;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(obj);
        }

        *type = v8;
        v9 = *(*(&v50 + 1) + 8 * v8);
        newlyAddedItems = [v9 newlyAddedItems];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v11 = [newlyAddedItems countByEnumeratingWithState:&v46 objects:v61 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v47;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v47 != v13)
              {
                objc_enumerationMutation(newlyAddedItems);
              }

              v15 = *(*(&v46 + 1) + 8 * i);
              [v15 calItem];
              if ((CalCalendarItemStillExists() & 1) == 0)
              {
                serverID = [v15 serverID];
                calendarURL = [v9 calendarURL];
                v18 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

                v7 |= [(MobileCalDAVAccountRefreshActor *)self _amendChangeRecordAndCleanUpAfterDeletedEventWithID:CalCalendarItemGetRowID() externalID:v18 database:database];
              }
            }

            v12 = [newlyAddedItems countByEnumeratingWithState:&v46 objects:v61 count:16];
          }

          while (v12);
        }

        if (newlyAddedItems)
        {
          [v9 setNewlyAddedItems:0];
        }

        v8 = *type + 1;
      }

      while (*type + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v37);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = movesCopy;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    typea = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * j);
        intValue = [v24 intValue];
        v26 = CalDatabaseCopyCalendarItemWithRowID();
        if (v26)
        {
          CFRelease(v26);
        }

        else
        {
          v27 = [v19 objectForKeyedSubscript:v24];
          updatedExternalID = [v27 updatedExternalID];
          if (updatedExternalID)
          {
            v7 |= [(MobileCalDAVAccountRefreshActor *)self _amendChangeRecordAndCleanUpAfterDeletedEventWithID:intValue externalID:updatedExternalID database:database];
          }

          else
          {
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, typea))
            {
              uniqueIdentifier = [v27 uniqueIdentifier];
              oldExternalID = [v27 oldExternalID];
              *buf = 67109634;
              v55 = intValue;
              v56 = 2112;
              v57 = uniqueIdentifier;
              v58 = 2112;
              v59 = oldExternalID;
              v32 = oldExternalID;
              _os_log_impl(&dword_2484B2000, v29, typea, "Moved item has been deleted, but that moved item didn't have a new external ID, so we won't amend the change table for it. (eventID = %i, uniqueIdentier = %@, oldExternalID = %@)", buf, 0x1Cu);
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v42 objects:v60 count:16];
    }

    while (v21);
  }

  return v7 & 1;
}

- (void)_refreshSpecialCalendars
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
  v4 = [calendarsToRefresh countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v4)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_25;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v21;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(calendarsToRefresh);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      if ([v10 isScheduleInbox])
      {
        v11 = v7;
        v12 = v6;
        v7 = v10;
LABEL_9:
        v13 = v10;

        v6 = v12;
        goto LABEL_10;
      }

      v11 = v6;
      v12 = v10;
      if ([v10 isNotification])
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v7 && v6)
      {

LABEL_17:
        [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v6];
        goto LABEL_18;
      }
    }

    v5 = [calendarsToRefresh countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (v6)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v7)
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    serverVersion = [account serverVersion];
    supportsAutoSchedule = [serverVersion supportsAutoSchedule];

    if (supportsAutoSchedule)
    {
      [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v7];
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *v19 = 0;
        _os_log_impl(&dword_2484B2000, v17, v18, "Skipping refresh of inbox because this server doesn't support automatic scheduling", v19, 2u);
      }
    }
  }

LABEL_25:
  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (void)_refreshRegularCalendars
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    *buf = 138412290;
    v18 = calendarsToRefresh;
    _os_log_impl(&dword_2484B2000, v3, v4, "Syncing calendars: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  calendarsToRefresh2 = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
  v7 = [calendarsToRefresh2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(calendarsToRefresh2);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (([v11 isScheduleInbox] & 1) == 0 && (objc_msgSend(v11, "isNotification") & 1) == 0)
        {
          [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v11];
        }
      }

      v8 = [calendarsToRefresh2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (id)_refreshedCtagForCalendar:(id)calendar
{
  calendarCopy = calendar;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  isForced = [context isForced];

  if (isForced)
  {
    v7 = 0;
  }

  else
  {
    calendarURL = [calendarCopy calendarURL];
    absoluteString = [calendarURL absoluteString];
    da_appendSlashIfNeeded = [absoluteString da_appendSlashIfNeeded];

    pathsToCTags = [(MobileCalDAVAccountRefreshActor *)self pathsToCTags];
    v7 = [pathsToCTags objectForKeyedSubscript:da_appendSlashIfNeeded];
  }

  return v7;
}

- (id)_refreshedSyncTokenForCalendar:(id)calendar
{
  calendarCopy = calendar;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  isForced = [context isForced];

  if (isForced)
  {
    v7 = 0;
  }

  else
  {
    calendarURL = [calendarCopy calendarURL];
    absoluteString = [calendarURL absoluteString];
    da_appendSlashIfNeeded = [absoluteString da_appendSlashIfNeeded];

    pathsToSyncTokens = [(MobileCalDAVAccountRefreshActor *)self pathsToSyncTokens];
    v7 = [pathsToSyncTokens objectForKeyedSubscript:da_appendSlashIfNeeded];
  }

  return v7;
}

- (void)_syncCalendar:(id)calendar
{
  v28 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = calendarCopy;
  if (calendarCopy && [calendarCopy isManagedByServer])
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    serverVersion = [account serverVersion];
    if (([serverVersion supportsAutoSchedule] & 1) == 0 && (objc_msgSend(v5, "isScheduleInbox") & 1) != 0 || objc_msgSend(v5, "isScheduleOutbox"))
    {
    }

    else
    {
      isPoll = [v5 isPoll];

      if ((isPoll & 1) == 0)
      {
        [v5 setNumUploadedElements:0];
        [v5 setNumDownloadedElements:0];
        context = [(MobileCalDAVAccountRefreshActor *)self context];
        changeTracker = [context changeTracker];
        [v5 setChangeTracker:changeTracker];

        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v11, v12))
        {
          title = [v5 title];
          *buf = 138412290;
          v27 = title;
          _os_log_impl(&dword_2484B2000, v11, v12, "Starting a calendar sync for %@", buf, 0xCu);
        }

        v14 = objc_alloc(MEMORY[0x277CF6FE8]);
        account2 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal = [account2 mainPrincipal];
        v17 = [(MobileCalDAVAccountRefreshActor *)self _refreshedCtagForCalendar:v5];
        v18 = [(MobileCalDAVAccountRefreshActor *)self _refreshedSyncTokenForCalendar:v5];
        v19 = [v14 initWithPrincipal:mainPrincipal calendar:v5 nextCtag:v17 nextSyncToken:v18];

        [v19 setDelegate:self];
        outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(outstandingOperationGroup);

        objc_initWeak(buf, v19);
        objc_initWeak(&location, self);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __49__MobileCalDAVAccountRefreshActor__syncCalendar___block_invoke;
        v22[3] = &unk_278F17848;
        objc_copyWeak(&v23, &location);
        objc_copyWeak(&v24, buf);
        [v19 setCompletionBlock:v22];
        outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
        [outstandingTaskGroups addObject:v19];

        [v19 syncCalendar];
        objc_destroyWeak(&v24);
        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __49__MobileCalDAVAccountRefreshActor__syncCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (id)_powerLogInfoDictionary
{
  v3 = objc_opt_new();
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account accountID];

  if (accountID)
  {
    accountID2 = [account accountID];
    [v3 setObject:accountID2 forKeyedSubscript:*MEMORY[0x277D03868]];
  }

  accountDescription = [account accountDescription];

  if (accountDescription)
  {
    accountDescription2 = [account accountDescription];
    [v3 setObject:accountDescription2 forKeyedSubscript:*MEMORY[0x277D03870]];
  }

  if (objc_opt_class())
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D03860]];
  }

  return v3;
}

- (void)calendarSyncForPrincipal:(id)principal calendar:(id)calendar completedWithError:(id)error
{
  v63 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  errorCopy = error;
  v9 = calendarCopy;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  [context setShouldSave:{objc_msgSend(v9, "isDirty") | objc_msgSend(context, "shouldSave")}];

  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context2 setNumDownloadedElements:{objc_msgSend(context2, "numDownloadedElements") + objc_msgSend(v9, "numDownloadedElements")}];

  context3 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context3 setNumUploadedElements:{objc_msgSend(context3, "numUploadedElements") + objc_msgSend(v9, "numUploadedElements")}];

  [v9 setChangeTracker:0];
  if (errorCopy)
  {
    v13 = DALoggingwithCategory();
    v14 = MEMORY[0x277D03988];
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v15))
    {
      calendarURL = [v9 calendarURL];
      *buf = 138412546;
      v60 = calendarURL;
      v61 = 2112;
      v62 = errorCopy;
      _os_log_impl(&dword_2484B2000, v13, v15, "Error refreshing the calendar at %@: %@", buf, 0x16u);
    }

    context4 = [(MobileCalDAVAccountRefreshActor *)self context];
    [context4 addCalendarSyncFailure:errorCopy];

    domain = [errorCopy domain];
    if (![domain isEqualToString:*MEMORY[0x277CF6F80]])
    {
      goto LABEL_11;
    }

    code = [errorCopy code];

    if (code != 1)
    {
      goto LABEL_13;
    }

    if ([v9 didResync])
    {
      context5 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context5 setRetryTime:{objc_msgSend(context5, "retryTime") + 30}];

      context6 = [(MobileCalDAVAccountRefreshActor *)self context];
      retryTime = [context6 retryTime];

      v23 = DALoggingwithCategory();
      v24 = *(v14 + 4);
      v25 = os_log_type_enabled(v23, v24);
      if (retryTime <= 240)
      {
        if (v25)
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v23, v24, "Hit a precondition error on our second bulk upload attempt. Waiting a bit before retrying again", buf, 2u);
        }

        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:75 userInfo:0];
        context7 = [(MobileCalDAVAccountRefreshActor *)self context];
        [context7 setError:v26];

        domain = [(MobileCalDAVAccountRefreshActor *)self context];
        [domain setShouldRetry:1];
LABEL_11:

        goto LABEL_13;
      }

      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v23, v24, "We've backed off for too long. We're just giving up for now.", buf, 2u);
      }

      v54 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:75 userInfo:0];
      context8 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context8 setError:v54];

      context9 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context9 setShouldRetry:0];

      self->_shouldCancel = 1;
    }

    else
    {
      v52 = DALoggingwithCategory();
      v53 = *(v14 + 4);
      if (os_log_type_enabled(v52, v53))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v52, v53, "Hit a precondition error while performing a bulk upload of events. Attempting a resync of the calendar", buf, 2u);
      }

      [v9 _forceRefreshNextSync];
    }
  }

  else
  {
    [v9 clearEventChanges];
    [v9 setWasModifiedLocally:0];
  }

LABEL_13:
  v28 = PLShouldLogRegisteredEvent();
  v29 = MEMORY[0x277D03858];
  if (v28)
  {
    _powerLogInfoDictionary = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numDownloadedElements")}];
    v32 = *v29;
    [_powerLogInfoDictionary setObject:v31 forKeyedSubscript:*v29];

    calendarURL2 = [v9 calendarURL];
    absoluteString = [calendarURL2 absoluteString];

    if (absoluteString)
    {
      calendarURL3 = [v9 calendarURL];
      absoluteString2 = [calendarURL3 absoluteString];
      [_powerLogInfoDictionary setObject:absoluteString2 forKeyedSubscript:*MEMORY[0x277D03850]];
    }

    v37 = *MEMORY[0x277D03860];
    v58[0] = *MEMORY[0x277D03870];
    v58[1] = v37;
    v58[2] = *MEMORY[0x277D03868];
    v58[3] = v32;
    [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    PLLogRegisteredEvent();
  }

  if (PLShouldLogRegisteredEvent())
  {
    _powerLogInfoDictionary2 = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numUploadedElements")}];
    v40 = *v29;
    [_powerLogInfoDictionary2 setObject:v39 forKeyedSubscript:*v29];

    calendarURL4 = [v9 calendarURL];
    absoluteString3 = [calendarURL4 absoluteString];

    if (absoluteString3)
    {
      calendarURL5 = [v9 calendarURL];
      absoluteString4 = [calendarURL5 absoluteString];
      [_powerLogInfoDictionary2 setObject:absoluteString4 forKeyedSubscript:*MEMORY[0x277D03850]];
    }

    v45 = *MEMORY[0x277D03860];
    v57[0] = *MEMORY[0x277D03870];
    v57[1] = v45;
    v57[2] = *MEMORY[0x277D03868];
    v57[3] = v40;
    [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
    PLLogRegisteredEvent();
  }

  shouldCancel = [(MobileCalDAVAccountRefreshActor *)self shouldCancel];
  if ((shouldCancel & 1) == 0)
  {
    shouldCancel = [v9 needsResync];
    if (shouldCancel)
    {
      shouldCancel = [v9 didResync];
      if ((shouldCancel & 1) == 0)
      {
        v48 = DALoggingwithCategory();
        v49 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v48, v49))
        {
          title = [v9 title];
          *buf = 138412290;
          v60 = title;
          _os_log_impl(&dword_2484B2000, v48, v49, "Calendar %@ requested a resync, so we're going to sync it again", buf, 0xCu);
        }

        [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v9];
        shouldCancel = [v9 setDidResync:1];
      }
    }
  }

  if (RecordCalendarDiagnostics(shouldCancel, v47))
  {
    accountSyncDiagnostics = [(MobileCalDAVAccountRefreshActor *)self accountSyncDiagnostics];
    [v9 recordDiagnosticsForAccountSync:accountSyncDiagnostics];
  }
}

- (void)_gatherAttachmentChanges
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    CalDatabaseCopyAttachmentChangesInStore();

    CFRelease(copyCalStore);
  }

  [(MobileCalDAVAccountRefreshActor *)self setEventUIDsWithAttachmentChanges:v3];
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 134217984;
    v13 = [v3 count];
    _os_log_impl(&dword_2484B2000, v10, v11, "Found %lu events with modified attachments", buf, 0xCu);
  }
}

- (void)_uploadAttachments
{
  _prepareAttachmentsForUpload = [(MobileCalDAVAccountRefreshActor *)self _prepareAttachmentsForUpload];
  if (_prepareAttachmentsForUpload)
  {
    [(MobileCalDAVAccountRefreshActor *)self _uploadAttachments:_prepareAttachmentsForUpload];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (id)_prepareAttachmentsForUpload
{
  v111 = *MEMORY[0x277D85DE8];
  eventUIDsWithAttachmentChanges = [(MobileCalDAVAccountRefreshActor *)self eventUIDsWithAttachmentChanges];
  v4 = [eventUIDsWithAttachmentChanges count];

  if (v4)
  {
    calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(calendarsToRefresh, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v7 = calendarsToRefresh;
    v8 = [v7 countByEnumeratingWithState:&v99 objects:v110 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v100;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v100 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v99 + 1) + 8 * i);
          if ([v12 getCalCalendar])
          {
            v13 = CalCalendarCopyUUID();
            if (v13)
            {
              [v6 setObject:v12 forKeyedSubscript:v13];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v99 objects:v110 count:16];
      }

      while (v9);
    }

    v72 = v6;
    v68 = v7;

    v71 = objc_opt_new();
    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account dbHelper];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account2 accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    selfCopy = self;
    obj = [(MobileCalDAVAccountRefreshActor *)self eventUIDsWithAttachmentChanges];
    v84 = [obj countByEnumeratingWithState:&v95 objects:v109 count:16];
    if (v84)
    {
      v83 = *v96;
      v18 = *(MEMORY[0x277D03988] + 5);
      v80 = v18;
      type = *(MEMORY[0x277D03988] + 6);
      v76 = *(MEMORY[0x277D03988] + 3);
      do
      {
        v19 = 0;
        do
        {
          if (*v96 != v83)
          {
            objc_enumerationMutation(obj);
          }

          intValue = [*(*(&v95 + 1) + 8 * v19) intValue];
          v21 = CalDatabaseCopyCalendarItemWithRowID();
          if (!v21)
          {
            v25 = DALoggingwithCategory();
            if (os_log_type_enabled(v25, v18))
            {
              *buf = 67109120;
              v105 = intValue;
              _os_log_impl(&dword_2484B2000, v25, v18, "Couldn't find event with UID %i even though it had attachment changes. Maybe it was deleted?", buf, 8u);
            }

            goto LABEL_66;
          }

          v22 = v21;
          v82 = intValue;
          v23 = CalCalendarItemCopyAttachments();
          v24 = objc_opt_new();
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v91 objects:v108 count:16];
          if (!v26)
          {
            goto LABEL_30;
          }

          v27 = v26;
          v28 = *v92;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v92 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v91 + 1) + 8 * j);
              v31 = CalAttachmentCopyURL();
              if (!v31)
              {
                v32 = CalAttachmentCopyLocalURL();
                if (!v32)
                {
                  continue;
                }

                v31 = v32;
                [v24 addObject:v30];
              }

              CFRelease(v31);
            }

            v27 = [v25 countByEnumeratingWithState:&v91 objects:v108 count:16];
          }

          while (v27);
LABEL_30:

          if ([v24 count])
          {
            v33 = CalCalendarItemCopyCalendar();
            v34 = type;
            if (v33)
            {
              v35 = v33;
              v36 = CalCalendarCopyUUID();
              v37 = [v72 objectForKeyedSubscript:v36];
              v78 = v37;
              if (v37)
              {
                v38 = v37;
                v73 = v36;
                v74 = v35;
                v39 = [DACalDAViCalItem alloc];
                calendarURL = [v38 calendarURL];
                WeakRetained = objc_loadWeakRetained(&selfCopy->_account);
                accountID2 = [WeakRetained accountID];
                v43 = [(DACalDAViCalItem *)v39 initWithCalRecord:v22 inContainer:calendarURL accountID:accountID2];

                serverID = [(DACalDAViCalItem *)v43 serverID];
                p_super = &v43->super;
                if (serverID)
                {
                  v45 = serverID;
                  goto LABEL_48;
                }

                calendarURL2 = [v38 calendarURL];
                filename = [(DACalDAViCalItem *)v43 filename];
                v45 = [calendarURL2 URLByAppendingPathComponent:filename];

                if (v45)
                {
LABEL_48:
                  v52 = [v71 objectForKeyedSubscript:v45];
                  v77 = v45;
                  if (v52)
                  {
                    v53 = MEMORY[0x277CCAC30];
                    v85[0] = MEMORY[0x277D85DD0];
                    v85[1] = 3221225472;
                    v85[2] = __63__MobileCalDAVAccountRefreshActor__prepareAttachmentsForUpload__block_invoke;
                    v85[3] = &unk_278F17938;
                    v54 = v52;
                    v86 = v54;
                    v55 = [v53 predicateWithBlock:v85];
                    [v24 filterUsingPredicate:v55];
                  }

                  else
                  {
                    v54 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v24, "count")}];
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v56 = v24;
                    v57 = [v56 countByEnumeratingWithState:&v87 objects:v103 count:16];
                    if (v57)
                    {
                      v58 = v57;
                      v59 = *v88;
                      do
                      {
                        for (k = 0; k != v58; ++k)
                        {
                          if (*v88 != v59)
                          {
                            objc_enumerationMutation(v56);
                          }

                          v61 = CalAttachmentCopyUUID();
                          [v54 addObject:v61];
                        }

                        v58 = [v56 countByEnumeratingWithState:&v87 objects:v103 count:16];
                      }

                      while (v58);
                    }

                    [v71 setObject:v54 forKeyedSubscript:v77];
                    v34 = type;
                  }

                  v36 = v73;
                  v35 = v74;
                  if ([v24 count])
                  {
                    v62 = objc_opt_new();
                    [v62 setCalAttachmentsToUpload:v24];
                    [v62 setItemURL:v77];
                    scheduleTag = [p_super scheduleTag];
                    [v62 setScheduleTag:scheduleTag];

                    syncKey = [p_super syncKey];
                    [v62 setSyncKey:syncKey];

                    [v69 addObject:v62];
                  }

                  else
                  {
                    v62 = DALoggingwithCategory();
                    if (os_log_type_enabled(v62, v34))
                    {
                      *buf = 67109120;
                      v105 = v82;
                      _os_log_impl(&dword_2484B2000, v62, v34, "All attachments to upload for event %i are already pending upload", buf, 8u);
                    }
                  }

                  v18 = v80;
                }

                else
                {
                  v65 = DALoggingwithCategory();
                  v18 = v80;
                  v36 = v73;
                  v35 = v74;
                  v77 = v65;
                  if (os_log_type_enabled(v65, v76))
                  {
                    *buf = 67109120;
                    v105 = v82;
                    _os_log_impl(&dword_2484B2000, v65, v76, "Couldn't get a URL for event %i, so its attachments won't be uploaded", buf, 8u);
                  }
                }

                v48 = p_super;
              }

              else
              {
                v48 = DALoggingwithCategory();
                if (os_log_type_enabled(v48, v76))
                {
                  UID = CalCalendarGetUID();
                  *buf = 67109376;
                  v105 = v82;
                  v106 = 1024;
                  v107 = UID;
                  _os_log_impl(&dword_2484B2000, v48, v76, "event %i has attachments to upload, its calendar (%i) isn't being refreshed so we can't do that right now", buf, 0xEu);
                }

                v18 = v80;
              }

              CFRelease(v35);
            }

            else
            {
              v47 = DALoggingwithCategory();
              if (os_log_type_enabled(v47, v76))
              {
                *buf = 67109120;
                v105 = v82;
                _os_log_impl(&dword_2484B2000, v47, v76, "event %i has attachments to upload, but no calendar, so there's nothing we can do about that.", buf, 8u);
              }

              v18 = v80;
            }
          }

          else
          {
            v46 = DALoggingwithCategory();
            if (os_log_type_enabled(v46, type))
            {
              *buf = 67109120;
              v105 = v82;
              _os_log_impl(&dword_2484B2000, v46, type, "No attachments to upload for event %i", buf, 8u);
            }

            v18 = v80;
            if (CalCalendarItemHasErrorCode())
            {
              CalCalendarItemSetError();
            }
          }

          CFRelease(v22);

LABEL_66:
          ++v19;
        }

        while (v19 != v84);
        v66 = [obj countByEnumeratingWithState:&v95 objects:v109 count:16];
        v84 = v66;
      }

      while (v66);
    }
  }

  else
  {
    v69 = 0;
  }

  return v69;
}

uint64_t __63__MobileCalDAVAccountRefreshActor__prepareAttachmentsForUpload__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = CalAttachmentCopyUUID();
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return v4 ^ 1u;
}

- (void)_uploadAttachments:(id)attachments
{
  v19 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [attachmentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(attachmentsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        calAttachmentsToUpload = [v9 calAttachmentsToUpload];
        itemURL = [v9 itemURL];
        syncKey = [v9 syncKey];
        scheduleTag = [v9 scheduleTag];
        [(MobileCalDAVAccountRefreshActor *)self _uploadAttachments:calAttachmentsToUpload forOwnerURL:itemURL syncKey:syncKey scheduleTag:scheduleTag];
      }

      v6 = [attachmentsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_uploadAttachments:(id)attachments forOwnerURL:(id)l syncKey:(id)key scheduleTag:(id)tag
{
  v65 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  lCopy = l;
  keyCopy = key;
  tagCopy = tag;
  v10 = [attachmentsCopy count];
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 134218754;
    *v64 = v10;
    *&v64[8] = 2114;
    *&v64[10] = lCopy;
    *&v64[18] = 2114;
    *&v64[20] = keyCopy;
    *&v64[28] = 2114;
    *&v64[30] = tagCopy;
    _os_log_impl(&dword_2484B2000, v11, v12, "Uploading (%ld) attachments, owner url = %{public}@, sync key = %{public}@, schedule tag = %{public}@", buf, 0x2Au);
  }

  v49 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v48 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = attachmentsCopy;
  v13 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v13)
  {
    v51 = *v59;
    inTagClass = *MEMORY[0x277CC1F58];
    v46 = *MEMORY[0x277CC1F60];
    v14 = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v16 = CalAttachmentCopyFilename();
        if (v16)
        {
          v17 = CalAttachmentCopyLocalURLForArchivedData();
          if (v17)
          {
            v57 = 0;
            v18 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v17 options:0 error:&v57];
            v19 = v57;
            if (v18)
            {
              if (CalAttachmentIsAutoArchived())
              {
                [v16 stringByAppendingPathExtension:@"zip"];
                pathExtension = v16;
                v16 = v21 = @"application/zipx-mac-auto-archive=yes";;
              }

              else
              {
                pathExtension = [v17 pathExtension];
                PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(inTagClass, pathExtension, 0);
                v27 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, v46);
                if (v27)
                {
                  v21 = v27;
                }

                else
                {
                  v21 = @"application/octet-stream";
                }
              }

              [v49 setObject:v18 forKey:v16];
              [v48 setObject:v21 forKey:v16];
            }

            else
            {
              v21 = DALoggingwithCategory();
              if (os_log_type_enabled(v21, v14))
              {
                UID = CalAttachmentGetUID();
                *buf = 67109890;
                *v64 = UID;
                *&v64[4] = 2112;
                *&v64[6] = v16;
                *&v64[14] = 2112;
                *&v64[16] = v17;
                *&v64[24] = 2112;
                *&v64[26] = v19;
                _os_log_impl(&dword_2484B2000, v21, v14, "Unable to load file data for attachment %i (%@) from path %@. (%@) Attachment will not be uploaded.", buf, 0x26u);
              }
            }

            CFRelease(v17);
          }

          else
          {
            v23 = DALoggingwithCategory();
            if (os_log_type_enabled(v23, v14))
            {
              v24 = CalAttachmentGetUID();
              *buf = 67109378;
              *v64 = v24;
              *&v64[4] = 2112;
              *&v64[6] = v16;
              _os_log_impl(&dword_2484B2000, v23, v14, "Attachment %i (%@) has no local URL and will not be uploaded.", buf, 0x12u);
            }
          }
        }

        else
        {
          v16 = DALoggingwithCategory();
          if (os_log_type_enabled(v16, v14))
          {
            v22 = CalAttachmentGetUID();
            *buf = 67109120;
            *v64 = v22;
            _os_log_impl(&dword_2484B2000, v16, v14, "Attachment %i has no filename and will not be uploaded.", buf, 8u);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v13);
  }

  if ([v49 count] && objc_msgSend(v48, "count") && (v28 = objc_msgSend(v49, "count"), v28 == objc_msgSend(v48, "count")))
  {
    v29 = objc_alloc(MEMORY[0x277CF6FA8]);
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account mainPrincipal];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account2 mainPrincipal];
    taskManager = [mainPrincipal2 taskManager];
    v35 = [v29 initWithAccountInfoProvider:mainPrincipal resourceURL:lCopy attachments:v49 contentTypes:v48 taskManager:taskManager];

    [v35 setDelegate:self];
    if (keyCopy && [keyCopy length])
    {
      [v35 setPreviousETag:keyCopy];
    }

    if (tagCopy && [tagCopy length])
    {
      [v35 setPreviousScheduleTag:tagCopy];
    }

    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    objc_initWeak(buf, vala);
    objc_initWeak(&location, v35);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __86__MobileCalDAVAccountRefreshActor__uploadAttachments_forOwnerURL_syncKey_scheduleTag___block_invoke;
    v52[3] = &unk_278F178C0;
    objc_copyWeak(&v54, buf);
    objc_copyWeak(&v55, &location);
    v53 = obj;
    [v35 setCompletionBlock:v52];
    outstandingTaskGroups = [vala outstandingTaskGroups];
    [outstandingTaskGroups addObject:v35];

    [v35 startTaskGroup];
    objc_destroyWeak(&v55);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v35 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v35, v38))
    {
      v39 = [v49 count];
      v40 = [v48 count];
      *buf = 134218240;
      *v64 = v39;
      *&v64[8] = 2048;
      *&v64[10] = v40;
      _os_log_impl(&dword_2484B2000, v35, v38, "Not actually uploading any attachments (gathered %lu attachments with %lu types)", buf, 0x16u);
    }
  }
}

void __86__MobileCalDAVAccountRefreshActor__uploadAttachments_forOwnerURL_syncKey_scheduleTag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAttachmentUploadsComplete:v3 attachments:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 outstandingTaskGroups];
  v6 = objc_loadWeakRetained((a1 + 48));
  [v5 removeObject:v6];

  v8 = objc_loadWeakRetained((a1 + 40));
  v7 = [v8 outstandingOperationGroup];
  dispatch_group_leave(v7);
}

- (void)_handleAttachmentUploadsComplete:(id)complete attachments:(id)attachments
{
  v51 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  attachmentsCopy = attachments;
  v34 = completeCopy;
  error = [completeCopy error];
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 134218498;
    v40 = v34;
    v41 = 2048;
    v42 = [attachmentsCopy count];
    v43 = 2112;
    v44 = error;
    _os_log_impl(&dword_2484B2000, v8, v9, "Attachment upload %p complete for %lu attachments with error = %@", buf, 0x20u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = attachmentsCopy;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v32 = v9;
    v13 = v10;
    v14 = 0;
    v15 = *v36;
    v33 = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (!v14)
        {
          v14 = CalAttachmentCopyOwner();
        }

        v17 = CalAttachmentCopyFilename();
        if (CalAttachmentIsAutoArchived())
        {
          v18 = [v17 stringByAppendingPathExtension:@"zip"];

          v17 = v18;
        }

        if (v17)
        {
          filenamesToServerLocation = [v34 filenamesToServerLocation];
          v20 = [filenamesToServerLocation objectForKeyedSubscript:v17];

          v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
          if (v21)
          {
            CalAttachmentSetURL();
          }

          else
          {
            v33 = 0;
          }
        }
      }

      v12 = [v13 countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v12);
    v10 = v13;

    if (v14)
    {
      if (v33)
      {
        v22 = v32;
        if (CalCalendarItemHasErrorCode())
        {
          CalCalendarItemSetError();
        }

        goto LABEL_30;
      }

      domain = [error domain];
      v22 = v32;
      if ([domain isEqualToString:*MEMORY[0x277CFDB80]])
      {
        code = [error code];

        if (code != 507)
        {
LABEL_30:
          updatedETag = [v34 updatedETag];
          updatedScheduleTag = [v34 updatedScheduleTag];
          if (updatedETag)
          {
            v29 = CalCalendarItemCopyExternalID();
            CalCalendarItemSetExternalModificationTag();
            if (updatedScheduleTag)
            {
              CalCalendarItemSetExternalScheduleID();
            }

            v30 = DALoggingwithCategory();
            if (os_log_type_enabled(v30, v22))
            {
              *buf = 134218754;
              v40 = v34;
              v41 = 2114;
              v42 = updatedETag;
              v43 = 2114;
              v44 = updatedScheduleTag;
              v45 = 2114;
              v46 = v29;
              _os_log_impl(&dword_2484B2000, v30, v22, "Setting updated etag and schedule tag if needed for event due to completed attachment upload %p, etag = %{public}@, schedule tag = %{public}@, event external id = %{public}@", buf, 0x2Au);
            }
          }

          else
          {
            v29 = DALoggingwithCategory();
            v31 = *(MEMORY[0x277D03988] + 3);
            if (os_log_type_enabled(v29, v31))
            {
              *buf = 134218242;
              v40 = v34;
              v41 = 2114;
              v42 = updatedScheduleTag;
              _os_log_impl(&dword_2484B2000, v29, v31, "Could not get updated etag for completed attachment upload %p. Updated schedule tag = %{public}@", buf, 0x16u);
            }
          }

          CFRelease(v14);
          goto LABEL_39;
        }

        v48 = *MEMORY[0x277CF7718];
        v47 = *MEMORY[0x277CF7720];
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        v49 = v27;
        domain = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

        CalCalendarItemSetErrorCodeAndUserInfo();
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  updatedETag = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(updatedETag, v24))
  {
    *buf = 134217984;
    v40 = v34;
    _os_log_impl(&dword_2484B2000, updatedETag, v24, "Could not get an event for completed attachment upload %p.", buf, 0xCu);
  }

LABEL_39:
}

- (void)_downloadAttachments
{
  v15 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  serverVersion = [account serverVersion];
  requiresOpeningAttachmentAsLink = [serverVersion requiresOpeningAttachmentAsLink];

  if (requiresOpeningAttachmentAsLink)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v7))
    {
      account2 = [(MobileCalDAVAccountRefreshActor *)self account];
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      serverVersion2 = [account3 serverVersion];
      v11 = 138543618;
      v12 = account2;
      v13 = 2114;
      v14 = serverVersion2;
      _os_log_impl(&dword_2484B2000, v6, v7, "Not downloading attachments because the account is requires opening attachment as link %{public}@, %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    [(MobileCalDAVAccountRefreshActor *)self _beginAttachmentDownloads];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (void)_beginAttachmentDownloads
{
  v37 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    v9 = CalDatabaseCopyOfAllAttachmentFilesInStoreWithoutLocalFilesAndDownloadAttemptsBelow();

    if (v9)
    {
      cf = copyCalStore;
      Count = CFArrayGetCount(v9);
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      backingAccount = [account4 backingAccount];
      principalURL = [backingAccount principalURL];

      if (Count >= 1)
      {
        v13 = 0;
        type = *(MEMORY[0x277D03988] + 6);
        do
        {
          CFArrayGetValueAtIndex(v9, v13);
          v14 = CalAttachmentFileCopyUUID();
          DownloadTries = CalAttachmentFileGetDownloadTries();
          v16 = CalAttachmentFileCopyDownloadStart();
          [v16 timeIntervalSinceNow];
          if (DownloadTries <= 4 && (!v16 || v17 > 0.0 || _beginAttachmentDownloads_delayBeforeAutoDownloading[DownloadTries] + round(_beginAttachmentDownloads_delayBeforeAutoDownloading[DownloadTries] * (vcvtd_n_f64_u64([v14 hash], 0x40uLL) * 0.1)) <= -v17))
          {
            v18 = CalAttachmentFileCopyURL();
            v19 = [MEMORY[0x277CF7768] attachmentURL:v18 matchesServerURL:principalURL];
            v20 = DALoggingwithCategory();
            v21 = os_log_type_enabled(v20, type);
            if (v19)
            {
              if (v21)
              {
                *buf = 138543362;
                v34 = v14;
                _os_log_impl(&dword_2484B2000, v20, type, "Kicking off a download of attachment with uuid %{public}@", buf, 0xCu);
              }

              context = [[MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate alloc] initWithAttachmentUUID:v14];
              [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)context beginDownload];
              account5 = [(MobileCalDAVAccountRefreshActor *)self account];
              backingAccount2 = [account5 backingAccount];
              v25 = [backingAccount2 beginDownloadingAttachmentWithUUID:v14 consumer:context];
            }

            else
            {
              if (v21)
              {
                *buf = 138543618;
                v34 = v14;
                v35 = 2112;
                v36 = v18;
                _os_log_impl(&dword_2484B2000, v20, type, "Attachment with uuid %{public}@ cannot be auto-downloaded because the attachment URL hostname doesn't match the calendar server hostname. (%@)", buf, 0x16u);
              }

              CalAttachmentFileSetDownloadTries();
              context = [(MobileCalDAVAccountRefreshActor *)self context];
              [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)context setShouldSave:1];
            }
          }

          ++v13;
        }

        while (Count != v13);
      }

      CFRelease(cf);
      CFRelease(v9);
    }

    else
    {
      v28 = DALoggingwithCategory();
      v29 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v28, v29))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v28, v29, "Unable to get attachments without local files; won't be able to download attachments.", buf, 2u);
      }

      CFRelease(copyCalStore);
    }
  }

  else
  {
    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v26, v27, "Unable to get store; won't be able to download attachments.", buf, 2u);
    }
  }
}

- (void)_calendarCollectionsWereRefreshed
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    accountDescription = [account accountDescription];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    publicDescription = [account2 publicDescription];
    v23 = 138412546;
    v24 = accountDescription;
    v25 = 2114;
    v26 = publicDescription;
    _os_log_impl(&dword_2484B2000, v3, v4, "Calendar collections were refreshed for account %@ (%{public}@)", &v23, 0x16u);
  }

  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account3 mainPrincipal];
  supportsSyncToken = [mainPrincipal supportsSyncToken];

  if (supportsSyncToken)
  {
    account4 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account4 mainPrincipal];
    eventFilterStartDate = [mainPrincipal2 eventFilterStartDate];

    if (eventFilterStartDate)
    {
      v15 = objc_alloc(MEMORY[0x277CBEA80]);
      v16 = [v15 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
      localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
      [v16 setTimeZone:localTimeZone];

      v18 = [v16 dateFromComponents:eventFilterStartDate];
      account5 = [(MobileCalDAVAccountRefreshActor *)self account];
      copyCalStore = [account5 copyCalStore];

      v21 = DALoggingwithCategory();
      if (os_log_type_enabled(v21, v4))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_2484B2000, v21, v4, "Cleaning out old calendar items", &v23, 2u);
      }

      v22 = DALoggingwithCategory();
      if (os_log_type_enabled(v22, v4))
      {
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&dword_2484B2000, v22, v4, "Removing events older than %@", &v23, 0xCu);
      }

      CalStoreRemoveItemsOfTypeOlderThanDateInStore();
      if (copyCalStore)
      {
        CFRelease(copyCalStore);
      }
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _cleanUpOrphanedPreferredUserAddressesPerCalendar];
  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
}

- (void)_cleanUpOrphanedPreferredUserAddressesPerCalendar
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];

  calendarUserAddressesPerCalendar = [mainPrincipal calendarUserAddressesPerCalendar];
  if ([calendarUserAddressesPerCalendar count])
  {
    v17 = v3;
    _guidsOfExistingCalendars = [(MobileCalDAVAccountRefreshActor *)self _guidsOfExistingCalendars];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = calendarUserAddressesPerCalendar;
    v8 = calendarUserAddressesPerCalendar;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v12 = *(MEMORY[0x277D03988] + 5);
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (([_guidsOfExistingCalendars containsObject:{v14, v16}] & 1) == 0)
          {
            [mainPrincipal removePreferredCalendarUserAddressesForCalendarWithIdentifier:v14];
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, v12))
            {
              *buf = 138543362;
              v23 = v14;
              _os_log_impl(&dword_2484B2000, v15, v12, "Removing preferred calendar user addresses for calendar no longer in local store (%{public}@)", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v10);
    }

    calendarUserAddressesPerCalendar = v16;
    v3 = v17;
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_guidsOfExistingCalendars
{
  v26 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    v9 = CalDatabaseCopyOfAllCalendarsInStore();
    v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = CalCalendarCopyExternalIdentificationTag();
          if (v16)
          {
            [v10 addObject:{v16, v20}];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    CFRelease(copyCalStore);
    v17 = [v10 copy];
  }

  else
  {
    v11 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, *(MEMORY[0x277D03988] + 3)))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v11, v18, "Failed to get a store. Will not clean up preferred user addresses per calendar", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (void)_sendResultToAccount
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateDefaultCalendarIfNeededWithDatabase:(CalDatabase *)database
{
  v29 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];

  defaultCalendarURL = [mainPrincipal defaultCalendarURL];
  if (defaultCalendarURL)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    copyCalStore = [account2 copyCalStore];

    if (copyCalStore)
    {
      path = [defaultCalendarURL path];
      da_appendSlashIfNeeded = [path da_appendSlashIfNeeded];

      v11 = CalDatabaseCopyCalendarWithExternalIDInStore();
      if (!v11)
      {
LABEL_6:
        CFRelease(copyCalStore);

        goto LABEL_17;
      }

      v12 = v11;
      if (CalCalendarIsDefaultCalendarForStore())
      {
        CFRelease(v12);
        goto LABEL_6;
      }

      v23 = da_appendSlashIfNeeded;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = CalStoreCopyCalendars();
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if (CalCalendarIsDefaultCalendarForStore())
            {
              CalCalendarSetDefaultCalendarForStore();
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }

      CalCalendarSetDefaultCalendarForStore();
      CFRelease(v12);
      CFRelease(copyCalStore);

      context = [(MobileCalDAVAccountRefreshActor *)self context];
      [context setShouldSave:1];
    }
  }

LABEL_17:
  if (self->_didForceDefaultCalendarRefetch || (-[MobileCalDAVAccountRefreshActor account](self, "account"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 haveForcedDefaultCalendarRefetch], v19, defaultCalendarURL) && (v20 & 1) == 0)
  {
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account3 setHaveForcedDefaultCalendarRefetch:1];

    context2 = [(MobileCalDAVAccountRefreshActor *)self context];
    [context2 setShouldSaveAccounts:1];
  }
}

- (BOOL)needsRemindersSync
{
  if ([(MobileCalDAVAccountRefreshActor *)self refreshFoundUpdatedTaskContainer]|| [(MobileCalDAVAccountRefreshActor *)self refreshFoundUpdatedSpecialCalendar])
  {
    return 1;
  }

  return [(MobileCalDAVAccountRefreshActor *)self refreshFoundDeletedContainerURL];
}

- (MobileCalDAVAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:264 description:@"There should not be any active task groups at a state transition"];
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:265 description:@"There should not be any active tasks at a state transition"];
}

- (void)refreshWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end