@interface MobileCalDAVAccountRefreshActor
- (BOOL)_refreshShouldContinue;
- (CalDiagAccountSync)accountSyncDiagnostics;
- (MobileCalDAVAccount)account;
- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)account context:(id)context;
- (id)_powerLogInfoDictionary;
- (id)_refreshedCtagForCalendar:(id)calendar;
- (id)_refreshedSyncTokenForCalendar:(id)calendar;
- (void)_calendarCollectionsWereRefreshed;
- (void)_handleMoveTaskComplete:(id)complete moveItem:(id)item;
- (void)_refreshAccountProperties;
- (void)_refreshCalendarProperties;
- (void)_refreshDelegateAccountProperties;
- (void)_refreshRegularCalendars;
- (void)_refreshSpecialCalendars;
- (void)_sendMoveTasks;
- (void)_sendResultToAccount;
- (void)_syncCalendar:(id)calendar;
- (void)_teardownAllOutstandingOperations;
- (void)_waitForStateTransition;
- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error;
- (void)calendarSyncForPrincipal:(id)principal calendar:(id)calendar completedWithError:(id)error;
- (void)cancelWithCompletion:(id)completion;
- (void)dealloc;
- (void)delegateRefreshForPrincipal:(id)principal completedWithError:(id)error;
- (void)propertyRefreshForPrincipal:(id)principal completedWithError:(id)error;
- (void)refresh;
- (void)teardown;
@end

@implementation MobileCalDAVAccountRefreshActor

- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)account context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = MobileCalDAVAccountRefreshActor;
  v8 = [(MobileCalDAVAccountRefreshActor *)&v23 init];
  v9 = MEMORY[0x277CF3AF0];
  if (v8)
  {
    v10 = objc_opt_new();
    transaction = v8->_transaction;
    v8->_transaction = v10;

    v12 = DALoggingwithCategory();
    v13 = *(v9 + 5);
    if (os_log_type_enabled(v12, v13))
    {
      transactionId = [(DATransaction *)v8->_transaction transactionId];
      *buf = 138412290;
      v25 = transactionId;
      _os_log_impl(&dword_242490000, v12, v13, "MobileCalDAVAccountRefreshActor: DATransaction starting, ID: %@", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)v8 setAccount:accountCopy];
    [(MobileCalDAVAccountRefreshActor *)v8 setContext:contextCopy];
    v15 = objc_opt_new();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingTaskGroups:v15];

    v16 = objc_opt_new();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingTasks:v16];

    v17 = dispatch_group_create();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingOperationGroup:v17];
  }

  v18 = DALoggingwithCategory();
  v19 = *(v9 + 6);
  if (os_log_type_enabled(v18, v19))
  {
    isForced = [contextCopy isForced];
    v21 = "NO";
    if (isForced)
    {
      v21 = "YES";
    }

    *buf = 136315138;
    v25 = v21;
    _os_log_impl(&dword_242490000, v18, v19, "Refresh actor starting up. (forced: %s)", buf, 0xCu);
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
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v5, v6, "CalDAV actor was told to cancel", buf, 2u);
  }

  [(MobileCalDAVAccountRefreshActor *)self setShouldCancel:1];
  if ([(MobileCalDAVAccountRefreshActor *)self state]!= 8)
  {
    goto LABEL_6;
  }

  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  if ([outstandingTaskGroups count])
  {

LABEL_6:
    [(MobileCalDAVAccountRefreshActor *)self setCompletionBlock:completionCopy];
    [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
    goto LABEL_7;
  }

  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v9 = [outstandingTasks count];

  [(MobileCalDAVAccountRefreshActor *)self setCompletionBlock:completionCopy];
  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
  if (!v9)
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v6))
    {
      *v12 = 0;
      _os_log_impl(&dword_242490000, v10, v6, "There weren't any outstanding tasks, so we're going to call our cancel completion block now.", v12, 2u);
    }

    completionBlock = [(MobileCalDAVAccountRefreshActor *)self completionBlock];
    completionBlock[2]();

    [(MobileCalDAVAccountRefreshActor *)self setCompletionBlock:0];
  }

LABEL_7:
}

- (void)teardown
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_242490000, v3, v4, "Refresh actor tearing down...", v5, 2u);
  }

  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
}

- (CalDiagAccountSync)accountSyncDiagnostics
{
  if (!self->_accountSyncDiagnostics && RecordCalendarDiagnostics())
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
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    v19 = 67109120;
    LODWORD(v20) = [(MobileCalDAVAccountRefreshActor *)self state];
    _os_log_impl(&dword_242490000, v3, v5, "Checking if we should continue before transitioning from state %d", &v19, 8u);
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
      _os_log_impl(&dword_242490000, v8, v9, "Ignoring calendar refresh task because we have no password.", &v19, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:63 userInfo:0];
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
      _os_log_impl(&dword_242490000, v10, v13, "Bailing out of refresh because we were told to cancel", &v19, 2u);
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
      _os_log_impl(&dword_242490000, v10, v16, "Encountered an error while refreshing. Bailing out of the refresh. The error was %@", &v19, 0xCu);
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
  return 0;
}

- (void)_waitForStateTransition
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = NSStringFromMobileCalDAVRefreshActorState([(MobileCalDAVAccountRefreshActor *)self state]);
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    v8 = [outstandingTaskGroups count];
    outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
    *buf = 138412802;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = [outstandingTasks count];
    _os_log_impl(&dword_242490000, v4, v5, "Waiting to make state transition from state %@ with %lu outstanding task groups and %lu outstanding tasks", buf, 0x20u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke;
  v16[3] = &unk_278D4F758;
  v16[4] = self;
  v16[5] = a2;
  v10 = MEMORY[0x245D0F810](v16);
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_30;
  block[3] = &unk_278D4F780;
  v15 = v10;
  v13 = v10;
  dispatch_group_notify(outstandingOperationGroup, v12, block);
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
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
    v8 = [*v2 state];
    if (v8 > 4)
    {
      if (v8 > 6)
      {
        if (v8 == 7)
        {
          [*v2 setState:8];
          [*v2 _calendarCollectionsWereRefreshed];
        }

        else if (v8 == 8)
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:322 description:@"MobileCalDAVAccountRefreshActor tried to transition out of the finished state. What does that even mean?"];
        }
      }

      else if (v8 == 5)
      {
        [*v2 setState:6];
        if ([*v2 _refreshShouldContinue])
        {
          [*v2 _uploadAttachments];
        }
      }

      else
      {
        [*v2 setState:7];
        [*v2 _refreshSpecialCalendars];
      }

      goto LABEL_30;
    }

    if (v8 > 2)
    {
      if (v8 != 3)
      {
        [*v2 setState:5];
        if ([*v2 _refreshShouldContinue])
        {
          v16 = [*v2 _attachmentUUIDsToUpload];
          [*v2 setAttachmentUUIDsToUpload:v16];

          [*v2 _refreshRegularCalendars];
        }

        goto LABEL_30;
      }

      v19 = [*v2 context];
      v20 = [v19 isCalendarsOnly];

      v12 = *v2;
      if (!v20)
      {
        [v12 setState:4];
        [*v2 _sendMoveTasks];
        goto LABEL_30;
      }
    }

    else if (v8 >= 2)
    {
      if (v8 != 2)
      {
        goto LABEL_30;
      }

      v17 = [*v2 context];
      v18 = [v17 isPrincipalOnly];

      v12 = *v2;
      if (!v18)
      {
        [v12 setState:2];
        [*v2 _refreshDelegateAccountProperties];
        goto LABEL_30;
      }
    }

    else
    {
      v9 = [*v2 account];
      v10 = [v9 mainPrincipal];
      v11 = [v10 isDelegate];

      v12 = *v2;
      if (!v11 || ([v12 context], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isPrincipalOnly"), v13, v12 = *v2, !v14))
      {
        [v12 setState:3];
        [*v2 _refreshCalendarProperties];
LABEL_30:
        v21 = DALoggingwithCategory();
        v22 = *(MEMORY[0x277CF3AF0] + 5);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = NSStringFromMobileCalDAVRefreshActorState(v7);
          v24 = NSStringFromMobileCalDAVRefreshActorState([*v2 state]);
          v25 = 138412546;
          v26 = v23;
          v27 = 2112;
          v28 = v24;
          _os_log_impl(&dword_242490000, v21, v22, "Refresh actor changed state {%@ -> %@}", &v25, 0x16u);
        }

        return;
      }
    }

    [v12 setState:8];
    [*v2 _sendResultToAccount];
    goto LABEL_30;
  }
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_30(uint64_t a1)
{
  v2 = [MEMORY[0x277CF3A20] sharedRunLoop];
  v3 = [v2 getCFRunLoop];

  CFRunLoopPerformBlock(v3, *MEMORY[0x277CBF058], *(a1 + 32));

  CFRunLoopWakeUp(v3);
}

- (void)refresh
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_refreshAccountProperties
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_242490000, v3, v4, "Refreshing properties for account with CoreDAV", buf, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277CF6FA0]);
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];
  v8 = [v5 initWithPrincipal:mainPrincipal];

  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal2 = [account2 mainPrincipal];
  [v8 setFetchPrincipalSearchProperties:{objc_msgSend(mainPrincipal2, "shouldRefreshPrincipalSearchProperties")}];

  [v8 setDelegate:self];
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(outstandingOperationGroup);

  objc_initWeak(buf, v8);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__MobileCalDAVAccountRefreshActor__refreshAccountProperties__block_invoke;
  v13[3] = &unk_278D4F7A8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, buf);
  [v8 setCompletionBlock:v13];
  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v8];

  [v8 refreshProperties];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
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
  v21 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  errorCopy = error;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (errorCopy)
  {
    v10 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v8, v10))
    {
      v17 = 138412290;
      v18 = errorCopy;
      _os_log_impl(&dword_242490000, v9, v10, "Error refreshing properties for principal: %@", &v17, 0xCu);
    }

    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:errorCopy];
  }

  else
  {
    v12 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v12))
    {
      fullName = [principalCopy fullName];
      account = [principalCopy account];
      accountDescription = [account accountDescription];
      v17 = 138412546;
      v18 = fullName;
      v19 = 2112;
      v20 = accountDescription;
      _os_log_impl(&dword_242490000, v9, v12, "Properties were refreshed for principal %@ on account %@", &v17, 0x16u);
    }

    [principalCopy setShouldRefreshPrincipalSearchProperties:0];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account2 setNeedsAccountPropertyRefresh:0];

    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setShouldSaveAccounts:{objc_msgSend(principalCopy, "isDirty") | objc_msgSend(context, "shouldSaveAccounts")}];
  }
}

- (void)_refreshDelegateAccountProperties
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v3, v5, "Getting delegates for account with CoreDAV", buf, 2u);
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
    v20[3] = &unk_278D4F7A8;
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
      _os_log_impl(&dword_242490000, v15, v16, "%@: This server does not support delegates.", buf, 0xCu);
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

- (void)delegateRefreshForPrincipal:(id)principal completedWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    account = [principalCopy account];
    accountDescription = [account accountDescription];
    v11 = 138412290;
    v12 = accountDescription;
    _os_log_impl(&dword_242490000, v6, v7, "Delegates were refreshed for account %@", &v11, 0xCu);
  }

  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  [account2 updateDelegates];
}

- (void)_refreshCalendarProperties
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_242490000, v3, v4, "Scheduling calendar refresh operation", buf, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277CF6FB0]);
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];
  v8 = [v5 initWithPrincipal:mainPrincipal];

  [v8 setDelegate:self];
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  LOBYTE(mainPrincipal) = [context isForced];

  if ((mainPrincipal & 1) == 0)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v8 setUseCalendarHomeSyncReport:{objc_msgSend(account2, "shouldUseCalendarHomeSyncReport")}];
  }

  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(outstandingOperationGroup);

  objc_initWeak(buf, v8);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__MobileCalDAVAccountRefreshActor__refreshCalendarProperties__block_invoke;
  v13[3] = &unk_278D4F7A8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, buf);
  [v8 setCompletionBlock:v13];
  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v8];

  [v8 refreshCalendarProperties];
  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
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

- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error
{
  v86 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  tagsCopy = tags;
  tokensCopy = tokens;
  tokenCopy = token;
  calendarsCopy = calendars;
  errorCopy = error;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v60 = _os_activity_create(&dword_242490000, "CalDAV FinishRefresh", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v60, &state);
  v66 = errorCopy;
  selfCopy = self;
  if (errorCopy)
  {
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    error = [context error];
    v17 = error == 0;

    if (v17)
    {
      context2 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context2 setError:v66];
    }

    context4 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(context4, v20))
    {
      *buf = 138412290;
      v85 = v66;
      _os_log_impl(&dword_242490000, context4, v20, "Error refreshing calendar properties for account: %@", buf, 0xCu);
    }

    goto LABEL_36;
  }

  if (![(MobileCalDAVAccountRefreshActor *)self shouldCancel])
  {
    v21 = DALoggingwithCategory();
    type = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v21, type))
    {
      account = [(MobileCalDAVAccountRefreshActor *)self account];
      accountDescription = [account accountDescription];
      *buf = 138412290;
      v85 = accountDescription;
      _os_log_impl(&dword_242490000, v21, type, "Calendars properties were refreshed for account %@", buf, 0xCu);
    }

    context3 = [(MobileCalDAVAccountRefreshActor *)self context];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account2 mainPrincipal];
    [context3 setShouldSaveAccounts:{objc_msgSend(mainPrincipal, "isDirty") | objc_msgSend(context3, "shouldSaveAccounts")}];

    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account3 mainPrincipal];
    LODWORD(account2) = [mainPrincipal2 isDirty];

    if (account2)
    {
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      v30 = [account4 _updateCalendarStoreNoDBOpen:0];
    }

    else
    {
      v30 = 0;
    }

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal3 = [account5 mainPrincipal];
    calendarsAreDirty = [mainPrincipal3 calendarsAreDirty];

    if (calendarsAreDirty)
    {
      account6 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal4 = [account6 mainPrincipal];
      [mainPrincipal4 setCalendarsAreDirty:0];
    }

    else
    {
      selfCopy3 = self;
      if (!v30)
      {
LABEL_18:
        context4 = [(MobileCalDAVAccountRefreshActor *)selfCopy3 context];
        if (([context4 isPrincipalOnly]& 1) != 0)
        {
LABEL_36:

          goto LABEL_37;
        }

        context5 = [(MobileCalDAVAccountRefreshActor *)selfCopy3 context];
        isCalendarsOnly = [context5 isCalendarsOnly];

        if ((isCalendarsOnly & 1) == 0)
        {
          [(MobileCalDAVAccountRefreshActor *)self setCalendarHomeSyncToken:tokenCopy];
          v41 = [tagsCopy copy];
          [(MobileCalDAVAccountRefreshActor *)self setPathsToCTags:v41];

          v42 = [tokensCopy copy];
          [(MobileCalDAVAccountRefreshActor *)self setPathsToSyncTokens:v42];

          v43 = [calendarsCopy mutableCopy];
          outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
          dispatch_group_enter(outstandingOperationGroup);

          context4 = dispatch_group_create();
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          account7 = [(MobileCalDAVAccountRefreshActor *)self account];
          calendars = [account7 calendars];

          v47 = [calendars countByEnumeratingWithState:&v78 objects:v83 count:16];
          if (v47)
          {
            v48 = *v79;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v79 != v48)
                {
                  objc_enumerationMutation(calendars);
                }

                v50 = *(*(&v78 + 1) + 8 * i);
                v51 = objc_autoreleasePoolPush();
                if ([v50 isTaskContainer])
                {
                  v52 = DALoggingwithCategory();
                  if (os_log_type_enabled(v52, type))
                  {
                    title = [v50 title];
                    *buf = 138412290;
                    v85 = title;
                    _os_log_impl(&dword_242490000, v52, type, "Preparing sync actions for calendar %@", buf, 0xCu);
                  }

                  dispatch_group_enter(context4);
                  v74[0] = MEMORY[0x277D85DD0];
                  v74[1] = 3221225472;
                  v74[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke;
                  v74[3] = &unk_278D4F7D0;
                  v74[4] = selfCopy;
                  v75 = v43;
                  v76 = principalCopy;
                  v77 = context4;
                  [v50 prepareSyncActionsWithCompletionBlock:v74];
                }

                objc_autoreleasePoolPop(v51);
              }

              v47 = [calendars countByEnumeratingWithState:&v78 objects:v83 count:16];
            }

            while (v47);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            rem_changeTracking = [principalCopy rem_changeTracking];
            [rem_changeTracking clearCachedModelObjectResultsForModelClass:objc_opt_class()];
          }

          else
          {
            rem_changeTracking = DALoggingwithCategory();
            v55 = *(MEMORY[0x277CF3AF0] + 4);
            if (os_log_type_enabled(rem_changeTracking, v55))
            {
              *buf = 138412290;
              v85 = principalCopy;
              _os_log_impl(&dword_242490000, rem_changeTracking, v55, "LOOKATME: Principal is not MobileCalDAVPrincipal, we can't get REM change tracking helper {principal: %@}.", buf, 0xCu);
            }
          }

          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_41;
          v72[3] = &unk_278D4F7F8;
          v72[4] = selfCopy;
          v73 = v43;
          v56 = v43;
          v57 = MEMORY[0x245D0F810](v72);
          v58 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_42;
          block[3] = &unk_278D4F780;
          v71 = v57;
          v59 = v57;
          dispatch_group_notify(context4, v58, block);

          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v37, v38))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v37, v38, "Calendar properties were updated. Saving the database [not actually calling save nowadays as we moved to REM DB]", buf, 2u);
    }

    selfCopy3 = self;
    goto LABEL_18;
  }

LABEL_37:
  os_activity_scope_leave(&state);
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 needsResync])
  {
    goto LABEL_6;
  }

  v4 = [v3 syncActions];
  if ([v4 count])
  {
    goto LABEL_5;
  }

  v5 = [v3 itemsToReportAsJunk];
  if ([v5 count])
  {

LABEL_5:
    goto LABEL_6;
  }

  v9 = [*(a1 + 32) account];
  v10 = [v9 mainPrincipal];
  v11 = [v10 isMergeSync];

  if ((v11 & 1) == 0)
  {
    [*(a1 + 32) calendarSyncForPrincipal:*(a1 + 48) calendar:v3 completedWithError:0];
    goto LABEL_9;
  }

LABEL_6:
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [v3 title];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_242490000, v6, v7, "Calendar %@ has local changes and needs to be synced", &v12, 0xCu);
  }

  [*(a1 + 40) addObject:v3];
LABEL_9:
  dispatch_group_leave(*(a1 + 56));
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_41(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) allObjects];
  v3 = [v2 mutableCopy];
  [*(a1 + 32) setCalendarsToRefresh:v3];

  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) calendarsToRefresh];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_242490000, v4, v5, "Calendars to refresh in this sync are: %@", &v8, 0xCu);
  }

  v7 = [*(a1 + 32) outstandingOperationGroup];
  dispatch_group_leave(v7);
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_42(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x277CBF058], *(a1 + 32));
  v3 = CFRunLoopGetMain();

  CFRunLoopWakeUp(v3);
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
    v8[3] = &unk_278D4F820;
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
    v21 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

    if ([v21 length])
    {
      v22 = DALoggingwithCategory();
      v23 = MEMORY[0x277CF3AF0];
      v24 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v22, v24))
      {
        v27 = 138412290;
        v28 = v21;
        _os_log_impl(&dword_242490000, v22, v24, "New etag from move task is %@", &v27, 0xCu);
      }

      v25 = DALoggingwithCategory();
      v26 = *(v23 + 3);
      if (os_log_type_enabled(v25, v26))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_242490000, v25, v26, "XXXXXXXXX: ERROR: LOOKATME: RDDataAccess doesn't support MOVE yet!", &v27, 2u);
      }
    }

    goto LABEL_15;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277CF3AF0] + 3);
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
    _os_log_impl(&dword_242490000, v10, v11, "Error moving event from %@ to %@: %@", &v27, 0x20u);
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
LABEL_15:
      [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:itemCopy];
    }
  }
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
      v18 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *v19 = 0;
        _os_log_impl(&dword_242490000, v17, v18, "Skipping refresh of inbox because this server doesn't support automatic scheduling", v19, 2u);
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
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    *buf = 138412290;
    v18 = calendarsToRefresh;
    _os_log_impl(&dword_242490000, v3, v4, "Syncing calendars: %@", buf, 0xCu);
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
  v26 = *MEMORY[0x277D85DE8];
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
        v9 = DALoggingwithCategory();
        v10 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(v9, v10))
        {
          title = [v5 title];
          *buf = 138412290;
          v25 = title;
          _os_log_impl(&dword_242490000, v9, v10, "Starting a calendar sync for %@", buf, 0xCu);
        }

        v12 = objc_alloc(MEMORY[0x277CF6FE8]);
        account2 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal = [account2 mainPrincipal];
        v15 = [(MobileCalDAVAccountRefreshActor *)self _refreshedCtagForCalendar:v5];
        v16 = [(MobileCalDAVAccountRefreshActor *)self _refreshedSyncTokenForCalendar:v5];
        v17 = [v12 initWithPrincipal:mainPrincipal calendar:v5 nextCtag:v15 nextSyncToken:v16];

        [v17 setDelegate:self];
        outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(outstandingOperationGroup);

        objc_initWeak(buf, v17);
        objc_initWeak(&location, self);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__MobileCalDAVAccountRefreshActor__syncCalendar___block_invoke;
        v20[3] = &unk_278D4F7A8;
        objc_copyWeak(&v21, &location);
        objc_copyWeak(&v22, buf);
        [v17 setCompletionBlock:v20];
        outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
        [outstandingTaskGroups addObject:v17];

        [v17 syncCalendar];
        objc_destroyWeak(&v22);
        objc_destroyWeak(&v21);
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
    [v3 setObject:accountID2 forKeyedSubscript:*MEMORY[0x277CF3A88]];
  }

  accountDescription = [account accountDescription];

  if (accountDescription)
  {
    accountDescription2 = [account accountDescription];
    [v3 setObject:accountDescription2 forKeyedSubscript:*MEMORY[0x277CF3A90]];
  }

  if (objc_opt_class())
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CF3A80]];
  }

  return v3;
}

- (void)calendarSyncForPrincipal:(id)principal calendar:(id)calendar completedWithError:(id)error
{
  v60 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  errorCopy = error;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  [context setShouldSave:{objc_msgSend(calendarCopy, "isDirty") | objc_msgSend(context, "shouldSave")}];

  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context2 setNumDownloadedElements:{objc_msgSend(context2, "numDownloadedElements") + objc_msgSend(calendarCopy, "numDownloadedElements")}];

  context3 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context3 setNumUploadedElements:{objc_msgSend(context3, "numUploadedElements") + objc_msgSend(calendarCopy, "numUploadedElements")}];

  if (errorCopy)
  {
    v12 = DALoggingwithCategory();
    v13 = MEMORY[0x277CF3AF0];
    v14 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v12, v14))
    {
      calendarURL = [calendarCopy calendarURL];
      *buf = 138412546;
      v57 = calendarURL;
      v58 = 2112;
      v59 = errorCopy;
      _os_log_impl(&dword_242490000, v12, v14, "Error refreshing the calendar at %@: %@", buf, 0x16u);
    }

    context4 = [(MobileCalDAVAccountRefreshActor *)self context];
    [context4 setCalendarFailedToSync:1];

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

    if ([calendarCopy didResync])
    {
      context5 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context5 setRetryTime:{objc_msgSend(context5, "retryTime") + 30}];

      context6 = [(MobileCalDAVAccountRefreshActor *)self context];
      retryTime = [context6 retryTime];

      v22 = DALoggingwithCategory();
      v23 = *(v13 + 4);
      v24 = os_log_type_enabled(v22, v23);
      if (retryTime <= 240)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&dword_242490000, v22, v23, "Hit a precondition error on our second bulk upload attempt. Waiting a bit before retrying again", buf, 2u);
        }

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:75 userInfo:0];
        context7 = [(MobileCalDAVAccountRefreshActor *)self context];
        [context7 setError:v25];

        domain = [(MobileCalDAVAccountRefreshActor *)self context];
        [domain setShouldRetry:1];
LABEL_11:

        goto LABEL_13;
      }

      if (v24)
      {
        *buf = 0;
        _os_log_impl(&dword_242490000, v22, v23, "We've backed off for too long. We're just giving up for now.", buf, 2u);
      }

      v51 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF3AB0] code:75 userInfo:0];
      context8 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context8 setError:v51];

      context9 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context9 setShouldRetry:0];

      self->_shouldCancel = 1;
    }

    else
    {
      v49 = DALoggingwithCategory();
      v50 = *(v13 + 4);
      if (os_log_type_enabled(v49, v50))
      {
        *buf = 0;
        _os_log_impl(&dword_242490000, v49, v50, "Hit a precondition error while performing a bulk upload of events. Attempting a resync of the calendar", buf, 2u);
      }

      [calendarCopy _forceRefreshNextSync];
    }
  }

  else
  {
    [calendarCopy clearEventChanges];
    [calendarCopy setWasModifiedLocally:0];
  }

LABEL_13:
  v27 = PLShouldLogRegisteredEvent();
  v28 = MEMORY[0x277CF3A78];
  if (v27)
  {
    _powerLogInfoDictionary = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(calendarCopy, "numDownloadedElements")}];
    v31 = *v28;
    [_powerLogInfoDictionary setObject:v30 forKeyedSubscript:*v28];

    calendarURL2 = [calendarCopy calendarURL];
    absoluteString = [calendarURL2 absoluteString];

    if (absoluteString)
    {
      calendarURL3 = [calendarCopy calendarURL];
      absoluteString2 = [calendarURL3 absoluteString];
      [_powerLogInfoDictionary setObject:absoluteString2 forKeyedSubscript:*MEMORY[0x277CF3A70]];
    }

    v36 = *MEMORY[0x277CF3A80];
    v55[0] = *MEMORY[0x277CF3A90];
    v55[1] = v36;
    v55[2] = *MEMORY[0x277CF3A88];
    v55[3] = v31;
    [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    PLLogRegisteredEvent();
  }

  if (PLShouldLogRegisteredEvent())
  {
    _powerLogInfoDictionary2 = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(calendarCopy, "numUploadedElements")}];
    v39 = *v28;
    [_powerLogInfoDictionary2 setObject:v38 forKeyedSubscript:*v28];

    calendarURL4 = [calendarCopy calendarURL];
    absoluteString3 = [calendarURL4 absoluteString];

    if (absoluteString3)
    {
      calendarURL5 = [calendarCopy calendarURL];
      absoluteString4 = [calendarURL5 absoluteString];
      [_powerLogInfoDictionary2 setObject:absoluteString4 forKeyedSubscript:*MEMORY[0x277CF3A70]];
    }

    v44 = *MEMORY[0x277CF3A80];
    v54[0] = *MEMORY[0x277CF3A90];
    v54[1] = v44;
    v54[2] = *MEMORY[0x277CF3A88];
    v54[3] = v39;
    [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    PLLogRegisteredEvent();
  }

  if ([calendarCopy needsResync] && (objc_msgSend(calendarCopy, "didResync") & 1) == 0)
  {
    v45 = DALoggingwithCategory();
    v46 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v45, v46))
    {
      title = [calendarCopy title];
      *buf = 138412290;
      v57 = title;
      _os_log_impl(&dword_242490000, v45, v46, "Calendar %@ requested a resync, so we're going to sync it again", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:calendarCopy];
    [calendarCopy setDidResync:1];
  }

  if (RecordCalendarDiagnostics())
  {
    accountSyncDiagnostics = [(MobileCalDAVAccountRefreshActor *)self accountSyncDiagnostics];
    [calendarCopy recordDiagnosticsForAccountSync:accountSyncDiagnostics];
  }
}

- (void)_calendarCollectionsWereRefreshed
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    accountDescription = [account accountDescription];
    v20 = 138412290;
    v21 = accountDescription;
    _os_log_impl(&dword_242490000, v3, v5, "Calendar collections were refreshed for account %@", &v20, 0xCu);
  }

  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account2 mainPrincipal];
  supportsSyncToken = [mainPrincipal supportsSyncToken];

  if (supportsSyncToken)
  {
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account3 mainPrincipal];
    eventFilterStartDate = [mainPrincipal2 eventFilterStartDate];

    if (eventFilterStartDate)
    {
      v14 = objc_alloc(MEMORY[0x277CBEA80]);
      v15 = [v14 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
      [v15 setTimeZone:defaultTimeZone];

      v17 = [v15 dateFromComponents:eventFilterStartDate];
      v18 = DALoggingwithCategory();
      v19 = *(v4 + 4);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = 138412290;
        v21 = v17;
        _os_log_impl(&dword_242490000, v18, v19, "XXXXXXXXX: This version of remindd.DataAccess does NOT support cleaning out-of-filter-range items yet {startDate: %@}.", &v20, 0xCu);
      }
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
}

- (void)_sendResultToAccount
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
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
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:248 description:@"There should not be any active task groups at a state transition"];
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:249 description:@"There should not be any active tasks at a state transition"];
}

@end