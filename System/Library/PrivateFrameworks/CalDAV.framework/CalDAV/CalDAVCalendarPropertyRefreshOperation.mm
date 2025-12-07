@interface CalDAVCalendarPropertyRefreshOperation
- (BOOL)_handleMkCalTaskGroupError:(id)error forCalendar:(id)calendar;
- (BOOL)_handleUpdateForCalendar:(id)calendar;
- (CalDAVCalendarPropertyRefreshOperation)initWithPrincipal:(id)principal;
- (id)_generateTimeZoneString:(id)string;
- (id)_getDefaultMkCalendarForPrincipalTaskGroup:(id)group isEventCalendar:(BOOL)calendar;
- (id)_getIsAffectingAvailabilityCoreDAVItem:(id)item;
- (id)_getMkcalendarTaskGroupForCalendar:(id)calendar;
- (id)_getSetIsAffectingAvailabilityTask:(BOOL)task forCalendar:(id)calendar atURL:(id)l;
- (id)_getSetPropertiesTaskWithItemsToSet:(id)set itemsToRemove:(id)remove atURL:(id)l;
- (id)_getSetPropertyStringTask:(id)task forName:(id)name andNamespace:(id)namespace forCalendar:(id)calendar atURL:(id)l ignoreErrors:(BOOL)errors;
- (id)_getSetPropertyTaskWithCoreDAVItem:(id)item forCalendar:(id)calendar atURL:(id)l ignoreErrors:(BOOL)errors;
- (int)_sharingStatusForContainer:(id)container;
- (void)_continueHandleContainerInfoTask:(id)task completedWithContainers:(id)containers error:(id)error;
- (void)_finishRefresh;
- (void)_getDefaultCalendarsTasksIfNeededForPrincipal:(id)principal;
- (void)_handleCalendarPublish;
- (void)_initializePrincipalCalendarCache;
- (void)_prepareCalendarsBeforeRefresh;
- (void)_reallyRefreshCalendarProperties;
- (void)_retryMkCalForCalendar:(id)calendar;
- (void)_sendAddsForCalendars;
- (void)_sendDeletesForCalendars;
- (void)_sendShareActionTasks;
- (void)_updateDefaultSchedulingCalendarIfNeededForInboxCalendar:(id)calendar withContainer:(id)container;
- (void)containerInfoSyncTask:(id)task completedWithNewSyncToken:(id)token error:(id)error;
- (void)containerInfoSyncTask:(id)task retrievedAddedOrModifiedContainers:(id)containers removedContainerURLs:(id)ls;
- (void)containerInfoTask:(id)task completedWithContainers:(id)containers error:(id)error;
- (void)refreshCalendarProperties;
@end

@implementation CalDAVCalendarPropertyRefreshOperation

- (CalDAVCalendarPropertyRefreshOperation)initWithPrincipal:(id)principal
{
  v9.receiver = self;
  v9.super_class = CalDAVCalendarPropertyRefreshOperation;
  v3 = [(CalDAVOperation *)&v9 initWithPrincipal:principal];
  if (v3)
  {
    v4 = dispatch_group_create();
    outstandingTasksGroup = v3->_outstandingTasksGroup;
    v3->_outstandingTasksGroup = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedCalendars = v3->_updatedCalendars;
    v3->_updatedCalendars = v6;
  }

  return v3;
}

- (void)_finishRefresh
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:v1 object:v0 file:@"CalDAVCalendarPropertyRefreshOperation.m" lineNumber:81 description:@"We shouldn't have finished more than once!"];
}

void __56__CalDAVCalendarPropertyRefreshOperation__finishRefresh__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 calendarRefreshForPrincipal:v2 completedWithNewCTags:*(*(a1 + 32) + 120) newSyncTokens:*(*(a1 + 32) + 128) calendarHomeSyncToken:*(a1 + 40) updatedCalendars:*(*(a1 + 32) + 152) error:*(*(a1 + 32) + 112)];
}

- (void)_reallyRefreshCalendarProperties
{
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v5 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_242742000, v5, OS_LOG_TYPE_INFO, "Refreshing calendar properties", buf, 2u);
  }

  v6 = MEMORY[0x277CBEB98];
  principal = [(CalDAVOperation *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  v9 = [v6 setWithObject:calendarHomeURL];

  principal2 = [(CalDAVOperation *)self principal];
  calendarHomeSyncToken = [principal2 calendarHomeSyncToken];

  if (!-[CalDAVCalendarPropertyRefreshOperation useCalendarHomeSyncReport](self, "useCalendarHomeSyncReport") || ![calendarHomeSyncToken length])
  {
    goto LABEL_10;
  }

  principal3 = [(CalDAVOperation *)self principal];
  if ([principal3 isMergeSync])
  {
    goto LABEL_9;
  }

  principal4 = [(CalDAVOperation *)self principal];
  modifiedCalendars = [principal4 modifiedCalendars];
  if ([modifiedCalendars count])
  {

LABEL_9:
    goto LABEL_10;
  }

  forceClearCalendarHomeSyncToken = self->_forceClearCalendarHomeSyncToken;

  if (!forceClearCalendarHomeSyncToken)
  {
    v25 = [CalDAVCalendarInfoSyncTaskGroup alloc];
    principal5 = [(CalDAVOperation *)self principal];
    calendarHomeURL2 = [principal5 calendarHomeURL];
    principal6 = [(CalDAVOperation *)self principal];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    v18 = [(CoreDAVContainerInfoSyncTaskGroup *)v25 initWithContainerURL:calendarHomeURL2 previousSyncToken:calendarHomeSyncToken accountInfoProvider:principal6 taskManager:taskManager];

    principal7 = [(CalDAVOperation *)self principal];
    account = [principal7 account];
    serverVersion = [account serverVersion];
    -[CalDAVCalendarInfoSyncTaskGroup setFetchSharees:](v18, "setFetchSharees:", [serverVersion supportsSharing]);

    [(CoreDAVContainerInfoSyncTaskGroup *)v18 setDelegate:self];
    [(CalDAVCalendarPropertyRefreshOperation *)self _initializePrincipalCalendarCache];
    goto LABEL_11;
  }

LABEL_10:
  v15 = [CalDAVCalendarInfoTaskGroup alloc];
  principal8 = [(CalDAVOperation *)self principal];
  taskManager2 = [(CoreDAVTaskGroup *)self taskManager];
  v18 = [(CalDAVCalendarInfoTaskGroup *)v15 initWithAccountInfoProvider:principal8 containerURLs:v9 taskManager:taskManager2];

  principal9 = [(CalDAVOperation *)self principal];
  account2 = [principal9 account];
  serverVersion2 = [account2 serverVersion];
  -[CalDAVCalendarInfoSyncTaskGroup setFetchSharees:](v18, "setFetchSharees:", [serverVersion2 supportsSharing]);

  [(CoreDAVContainerInfoSyncTaskGroup *)v18 setDelegate:self];
LABEL_11:
  outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(outstandingTasksGroup);

  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v18];

  objc_initWeak(buf, self);
  objc_initWeak(&location, v18);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __74__CalDAVCalendarPropertyRefreshOperation__reallyRefreshCalendarProperties__block_invoke;
  v33[3] = &unk_278D66918;
  objc_copyWeak(&v34, buf);
  objc_copyWeak(&v35, &location);
  [(CoreDAVTaskGroup *)v18 setCompletionBlock:v33];
  [(CoreDAVContainerInfoSyncTaskGroup *)v18 startTaskGroup];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __74__CalDAVCalendarPropertyRefreshOperation__reallyRefreshCalendarProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained outstandingTaskGroups];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObject:v3];

  v4 = [WeakRetained outstandingTasksGroup];

  if (v4)
  {
    v5 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v5);
  }
}

- (void)_sendDeletesForCalendars
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = &off_24277F000;
  if (!self->_isSecondRefresh)
  {
    v18 = a2;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    principal = [(CalDAVOperation *)self principal];
    obj = [principal deletedCalendarURLs];

    v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v5)
    {
      v6 = *v26;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v11 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

          if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v8;
            _os_log_impl(&dword_242742000, v11, OS_LOG_TYPE_INFO, "Sending delete for calendar at %@", buf, 0xCu);
          }

          v12 = [objc_alloc(MEMORY[0x277CFDBA8]) initWithURL:v8];
          accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
          [v12 setAccountInfoProvider:accountInfoProvider];

          outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
          dispatch_group_enter(outstandingTasksGroup);

          objc_initWeak(buf, self);
          objc_initWeak(&location, v12);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke;
          v21[3] = &unk_278D66918;
          objc_copyWeak(&v22, buf);
          objc_copyWeak(&v23, &location);
          [v12 setCompletionBlock:v21];
          outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
          [outstandingTasks addObject:v12];

          taskManager = [(CoreDAVTaskGroup *)self taskManager];
          [taskManager submitQueuedCoreDAVTask:v12];

          objc_destroyWeak(&v23);
          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v5);
    }

    a2 = v18;
    v3 = &off_24277F000;
  }

  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *(v3 + 189);
  block[2] = __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
}

void __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 error];

  if (v3)
  {
    [WeakRetained setForceClearCalendarHomeSyncToken:1];
  }

  v4 = [WeakRetained outstandingTasks];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v4 removeObject:v5];

  v6 = [WeakRetained outstandingTasksGroup];

  if (v6)
  {
    v7 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v7);
  }
}

id __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    [result _sendShareActionTasks];
    v7 = *v1;

    return [v7 _reallyRefreshCalendarProperties];
  }

  return result;
}

- (void)_sendAddsForCalendars
{
  v32 = *MEMORY[0x277D85DE8];
  if (!self->_isSecondRefresh)
  {
    principal = [(CalDAVOperation *)self principal];
    isMergeSync = [principal isMergeSync];

    if ((isMergeSync & 1) == 0)
    {
      v22 = a2;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      principal2 = [(CalDAVOperation *)self principal];
      addedCalendars = [principal2 addedCalendars];

      obj = addedCalendars;
      v8 = [addedCalendars countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        v11 = MEMORY[0x277CFDD48];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
            WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *v11));
            v16 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

            if (v16)
            {
              v17 = v16;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                calendarURL = [v13 calendarURL];
                *buf = 138412290;
                v30 = calendarURL;
                _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_INFO, "Sending add for calendar at %@", buf, 0xCu);
              }
            }

            v19 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v13];
            outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
            [outstandingTaskGroups addObject:v19];

            [v19 startTaskGroup];
          }

          v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v9);
      }

      a2 = v22;
    }
  }

  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_2();
  }

  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    v6 = [*v1 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 calendarRefreshWillSendCalendarDeletes:*v1];
    }

    else
    {
      [*v1 _sendDeletesForCalendars];
    }
  }
}

- (void)_handleCalendarPublish
{
  v47 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  principal = [(CalDAVOperation *)self principal];
  obj = [principal calendars];

  v4 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v4)
  {
    v30 = *v37;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        if ([v6 needsPublishUpdate])
        {
          calendarURL = [v6 calendarURL];
          v8 = calendarURL == 0;

          mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v11 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

          if (v8)
          {
            if (v11)
            {
              v24 = v11;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                title = [v6 title];
                guid = [v6 guid];
                *buf = 138412546;
                v41 = title;
                v42 = 2114;
                v43 = guid;
                _os_log_impl(&dword_242742000, v24, OS_LOG_TYPE_DEFAULT, "Calendar %@ (%{public}@) doesn't have a URL, so we're not going to try to publish it", buf, 0x16u);
              }
            }
          }

          else
          {
            if (v11)
            {
              v12 = v11;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                title2 = [v6 title];
                guid2 = [v6 guid];
                isPublished = [v6 isPublished];
                *buf = 138412802;
                v16 = @"un";
                if (isPublished)
                {
                  v16 = &stru_285505238;
                }

                v41 = title2;
                v42 = 2114;
                v43 = guid2;
                v44 = 2114;
                v45 = v16;
                _os_log_impl(&dword_242742000, v12, OS_LOG_TYPE_INFO, "Calendar %@ (%{public}@) needs to be updated to be %{public}@published", buf, 0x20u);
              }
            }

            v17 = [CalDAVModifyCalendarSharingLevelTaskGroup alloc];
            isPublished2 = [v6 isPublished];
            calendarURL2 = [v6 calendarURL];
            accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
            taskManager = [(CoreDAVTaskGroup *)self taskManager];
            mEMORY[0x277CFDC18] = [(CalDAVModifyCalendarSharingLevelTaskGroup *)v17 initWithSharingAction:isPublished2 ^ 1u atCalendarURL:calendarURL2 accountInfoProvider:accountInfoProvider taskManager:taskManager];

            objc_initWeak(buf, self);
            objc_initWeak(&location, mEMORY[0x277CFDC18]);
            outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
            dispatch_group_enter(outstandingTasksGroup);

            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke;
            v32[3] = &unk_278D66AA0;
            objc_copyWeak(&v33, buf);
            v32[4] = self;
            v32[5] = v6;
            objc_copyWeak(&v34, &location);
            [(CoreDAVTaskGroup *)mEMORY[0x277CFDC18] setCompletionBlock:v32];
            outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
            [outstandingTaskGroups addObject:mEMORY[0x277CFDC18]];

            [(CalDAVModifyCalendarSharingLevelTaskGroup *)mEMORY[0x277CFDC18] startTaskGroup];
            objc_destroyWeak(&v34);
            objc_destroyWeak(&v33);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v4);
  }

  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
}

void __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  v4 = *MEMORY[0x277CFDD48];
  v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v6 = [v3 logHandleForAccountInfoProvider:v5];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) title];
      v9 = [*(a1 + 40) guid];
      v10 = [*(a1 + 40) isPublished];
      v11 = @"un";
      if (v10)
      {
        v11 = &stru_285505238;
      }

      v21 = v11;
      v12 = objc_loadWeakRetained((a1 + 56));
      v13 = [v12 error];
      *buf = 138413058;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v21;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Calendar %@ (%{public}@) was %{public}@published with error: %@", buf, 0x2Au);
    }
  }

  v14 = [WeakRetained outstandingTaskGroups];
  v15 = objc_loadWeakRetained((a1 + 56));
  [v14 removeObject:v15];

  v16 = [MEMORY[0x277CFDC18] sharedLogging];
  v17 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v18 = [v16 logHandleForAccountInfoProvider:v17];

  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v18, OS_LOG_TYPE_INFO, "Done updating publishing level on all calendars.", buf, 2u);
  }

  v19 = [WeakRetained outstandingTasksGroup];

  if (v19)
  {
    v20 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v20);
  }
}

id __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {

    return [result _sendAddsForCalendars];
  }

  return result;
}

- (void)_prepareCalendarsBeforeRefresh
{
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v6 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v6, OS_LOG_TYPE_INFO, "Preparing our calendars before we refresh them from the server", buf, 2u);
  }

  principal = [(CalDAVOperation *)self principal];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    *buf = 0;
    v12 = buf;
    v13 = 0x2020000000;
    v14 = 0;
    principal2 = [(CalDAVOperation *)self principal];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke;
    v10[3] = &unk_278D66AC8;
    v10[5] = buf;
    v10[6] = a2;
    v10[4] = self;
    [principal2 prepareCalendarsForSyncWithCompletionBlock:v10];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(CalDAVCalendarPropertyRefreshOperation *)self _handleCalendarPublish];
  }
}

uint64_t __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke_cold_1(a1, a1 + 40, &v5);
    v2 = v5;
  }

  *(v2 + 24) = 1;
  v3 = *(a1 + 32);

  return [v3 _handleCalendarPublish];
}

- (void)_sendShareActionTasks
{
  v81 = *MEMORY[0x277D85DE8];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  principal = [(CalDAVOperation *)self principal];
  obj = [principal calendars];

  v47 = [obj countByEnumeratingWithState:&v63 objects:v80 count:16];
  if (v47)
  {
    v46 = *v64;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v63 + 1) + 8 * i);
        if (([v50 isEventContainer] & 1) != 0 || objc_msgSend(v50, "isTaskContainer"))
        {
          shareeActions = [v50 shareeActions];
          v4 = [shareeActions count] == 0;

          if (!v4)
          {
            v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            shareeActions2 = [v50 shareeActions];
            v8 = 0;
            v9 = [shareeActions2 countByEnumeratingWithState:&v59 objects:v79 count:16];
            if (v9)
            {
              v10 = *v60;
              do
              {
                v11 = 0;
                do
                {
                  if (*v60 != v10)
                  {
                    objc_enumerationMutation(shareeActions2);
                  }

                  v12 = *(*(&v59 + 1) + 8 * v11);
                  if ([v12 action] == 1 || !objc_msgSend(v12, "action"))
                  {
                    context = [v12 context];
                    [v5 addObject:context];
                  }

                  else
                  {
                    if ([v12 action] != 2)
                    {
                      goto LABEL_22;
                    }

                    context2 = [v12 context];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    context3 = [v12 context];
                    v16 = context3;
                    if (isKindOfClass)
                    {
                      context = [context3 objectForKeyedSubscript:@"CalDAVRemoveShareeItemKey"];

                      if (context)
                      {
                        [v6 addObject:context];
                        context4 = [v12 context];
                        v19 = [context4 objectForKeyedSubscript:@"CalDAVRemoveShareeMuteKey"];

                        LOBYTE(context4) = [v19 BOOLValue];
                        v8 |= context4;
                      }
                    }

                    else
                    {
                      [v6 addObject:context3];
                      context = v16;
                    }
                  }

LABEL_22:
                  ++v11;
                }

                while (v9 != v11);
                v20 = [shareeActions2 countByEnumeratingWithState:&v59 objects:v79 count:16];
                v9 = v20;
              }

              while (v20);
            }

            sharees = [v50 sharees];
            if ([sharees count])
            {
              v22 = 2;
            }

            else
            {
              v22 = 3;
            }

            mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
            WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
            v25 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

            if (v25)
            {
              v26 = v25;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                title = [v50 title];
                guid = [v50 guid];
                calendarURL = [v50 calendarURL];
                *buf = 138413570;
                v68 = title;
                v69 = 2114;
                v70 = guid;
                v71 = 2112;
                v72 = calendarURL;
                v73 = 1024;
                v74 = v22;
                v75 = 2112;
                v76 = v5;
                v77 = 2112;
                v78 = v6;
                _os_log_impl(&dword_242742000, v26, OS_LOG_TYPE_INFO, "Sending sharee modifications to the server for the calendar %@ (%{public}@) at %@. Sharing action is %d. \n\tAdds/mods: %@\n\tDeletes: %@", buf, 0x3Au);
              }
            }

            v30 = [CalDAVModifyCalendarSharingLevelTaskGroup alloc];
            calendarURL2 = [v50 calendarURL];
            accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
            taskManager = [(CoreDAVTaskGroup *)self taskManager];
            v34 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)v30 initWithSharingAction:v22 atCalendarURL:calendarURL2 accountInfoProvider:accountInfoProvider taskManager:taskManager];

            objc_initWeak(buf, self);
            objc_initWeak(&location, v34);
            outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
            dispatch_group_enter(outstandingTasksGroup);

            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke;
            v55[3] = &unk_278D66AA0;
            objc_copyWeak(&v56, buf);
            v55[4] = self;
            v55[5] = v50;
            objc_copyWeak(&v57, &location);
            [(CoreDAVTaskGroup *)v34 setCompletionBlock:v55];
            outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
            [outstandingTaskGroups addObject:v34];

            [(CalDAVModifyCalendarSharingLevelTaskGroup *)v34 startTaskGroup];
            v37 = [CalDAVModifySharedCalendarShareeListTaskGroup alloc];
            title2 = [v50 title];
            calendarURL3 = [v50 calendarURL];
            accountInfoProvider2 = [(CoreDAVTaskGroup *)self accountInfoProvider];
            taskManager2 = [(CoreDAVTaskGroup *)self taskManager];
            v42 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v37 initWithShareesToSet:v5 shareesToRemove:v6 muteNotifications:v8 & 1 summary:title2 atCalendarURL:calendarURL3 accountInfoProvider:accountInfoProvider2 taskManager:taskManager2];

            objc_initWeak(&from, v42);
            outstandingTasksGroup2 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
            dispatch_group_enter(outstandingTasksGroup2);

            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke_41;
            v51[3] = &unk_278D66AA0;
            objc_copyWeak(&v52, buf);
            v51[4] = self;
            v51[5] = v50;
            objc_copyWeak(&v53, &from);
            [(CoreDAVTaskGroup *)v42 setCompletionBlock:v51];
            outstandingTaskGroups2 = [(CalDAVOperation *)self outstandingTaskGroups];
            [outstandingTaskGroups2 addObject:v42];

            [(CalDAVModifySharedCalendarShareeListTaskGroup *)v42 startTaskGroup];
            objc_destroyWeak(&v53);
            objc_destroyWeak(&v52);
            objc_destroyWeak(&from);

            objc_destroyWeak(&v57);
            objc_destroyWeak(&v56);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }
        }
      }

      v47 = [obj countByEnumeratingWithState:&v63 objects:v80 count:16];
    }

    while (v47);
  }
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  v4 = *MEMORY[0x277CFDD48];
  v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v6 = [v3 logHandleForAccountInfoProvider:v5];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) title];
      v9 = objc_loadWeakRetained((a1 + 56));
      v10 = [v9 error];
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Finished updating sharing level on %@. Error was %@", &v18, 0x16u);
    }
  }

  v11 = [WeakRetained outstandingTaskGroups];
  v12 = objc_loadWeakRetained((a1 + 56));
  [v11 removeObject:v12];

  v13 = [MEMORY[0x277CFDC18] sharedLogging];
  v14 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v15 = [v13 logHandleForAccountInfoProvider:v14];

  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_INFO, "Done updating sharing level on all calendars.", &v18, 2u);
  }

  v16 = [WeakRetained outstandingTasksGroup];

  if (v16)
  {
    v17 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v17);
  }
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke_41(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  v4 = *MEMORY[0x277CFDD48];
  v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v6 = [v3 logHandleForAccountInfoProvider:v5];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) title];
      v9 = [*(a1 + 40) guid];
      v10 = objc_loadWeakRetained((a1 + 56));
      v11 = [v10 error];
      v19 = 138412802;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Finished updating sharees on the Calendar %@ (%{public}@). Error was %@", &v19, 0x20u);
    }
  }

  v12 = [WeakRetained outstandingTaskGroups];
  v13 = objc_loadWeakRetained((a1 + 56));
  [v12 removeObject:v13];

  [*(a1 + 40) clearShareeActions];
  v14 = [MEMORY[0x277CFDC18] sharedLogging];
  v15 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v16 = [v14 logHandleForAccountInfoProvider:v15];

  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_242742000, v16, OS_LOG_TYPE_INFO, "Done updating sharees on all calendars. Refreshing calendar properties", &v19, 2u);
  }

  v17 = [WeakRetained outstandingTasksGroup];

  if (v17)
  {
    v18 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v18);
  }
}

- (void)refreshCalendarProperties
{
  principal = [(CalDAVOperation *)self principal];
  calendarHomeURL = [principal calendarHomeURL];

  if (calendarHomeURL)
  {
    outstandingTasksGroup = self->_outstandingTasksGroup;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2;
    v9[3] = &unk_278D66A78;
    v9[4] = self;
    v9[5] = a2;
    dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], v9);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFDB18] code:2 userInfo:0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke;
    v10[3] = &unk_278D66968;
    v10[4] = self;
    v11 = v7;
    v8 = v7;
    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v8 delegateCallbackBlock:v10];
  }
}

void __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 calendarRefreshForPrincipal:v2 completedWithNewCTags:0 newSyncTokens:0 calendarHomeSyncToken:0 updatedCalendars:0 error:*(a1 + 40)];
}

id __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {

    return [result _prepareCalendarsBeforeRefresh];
  }

  return result;
}

- (int)_sharingStatusForContainer:(id)container
{
  containerCopy = container;
  if (([containerCopy isSharedOwner] & 1) != 0 || (objc_msgSend(containerCopy, "publishURL"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = 1;
  }

  else if ([containerCopy isShared])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getSetPropertyStringTask:(id)task forName:(id)name andNamespace:(id)namespace forCalendar:(id)calendar atURL:(id)l ignoreErrors:(BOOL)errors
{
  errorsCopy = errors;
  v14 = MEMORY[0x277CFDBE0];
  lCopy = l;
  calendarCopy = calendar;
  namespaceCopy = namespace;
  nameCopy = name;
  taskCopy = task;
  v20 = [[v14 alloc] initWithNameSpace:namespaceCopy andName:nameCopy];

  [v20 setPayloadAsString:taskCopy];
  v21 = [(CalDAVCalendarPropertyRefreshOperation *)self _getSetPropertyTaskWithCoreDAVItem:v20 forCalendar:calendarCopy atURL:lCopy ignoreErrors:errorsCopy];

  return v21;
}

- (id)_getIsAffectingAvailabilityCoreDAVItem:(id)item
{
  itemCopy = item;
  principal = [(CalDAVOperation *)self principal];
  account = [principal account];
  serverVersion = [account serverVersion];
  supportsAutoSchedule = [serverVersion supportsAutoSchedule];

  v9 = objc_alloc(MEMORY[0x277CFDBE0]);
  v10 = *MEMORY[0x277CFDDC0];
  if (supportsAutoSchedule)
  {
    v11 = [v9 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDFF8]];
    v12 = objc_alloc(MEMORY[0x277CFDBE0]);
    isAffectingAvailability = [itemCopy isAffectingAvailability];

    v14 = MEMORY[0x277CFDFB8];
    if (!isAffectingAvailability)
    {
      v14 = MEMORY[0x277CFE040];
    }

    v15 = *v14;
    v16 = v12;
    v17 = v10;
  }

  else
  {
    v11 = [v9 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDDE8]];
    v18 = objc_alloc(MEMORY[0x277CFDBE0]);
    isAffectingAvailability2 = [itemCopy isAffectingAvailability];

    if (isAffectingAvailability2)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v18;
    v17 = 0;
  }

  v20 = [v16 initWithNameSpace:v17 andName:v15];
  extraChildItems = [v11 extraChildItems];
  [extraChildItems addObject:v20];

  return v11;
}

- (id)_getSetIsAffectingAvailabilityTask:(BOOL)task forCalendar:(id)calendar atURL:(id)l
{
  lCopy = l;
  calendarCopy = calendar;
  v9 = [(CalDAVCalendarPropertyRefreshOperation *)self _getIsAffectingAvailabilityCoreDAVItem:calendarCopy];
  v10 = [(CalDAVCalendarPropertyRefreshOperation *)self _getSetPropertyTaskWithCoreDAVItem:v9 forCalendar:calendarCopy atURL:lCopy];

  return v10;
}

- (id)_getSetPropertyTaskWithCoreDAVItem:(id)item forCalendar:(id)calendar atURL:(id)l ignoreErrors:(BOOL)errors
{
  itemCopy = item;
  calendarCopy = calendar;
  lCopy = l;
  v13 = objc_alloc(MEMORY[0x277CFDC70]);
  v14 = [MEMORY[0x277CBEB98] setWithObject:itemCopy];
  v15 = [v13 initWithPropertiesToSet:v14 andRemove:0 atURL:lCopy];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v15 setAccountInfoProvider:accountInfoProvider];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v15);
  outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(outstandingTasksGroup);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__CalDAVCalendarPropertyRefreshOperation__getSetPropertyTaskWithCoreDAVItem_forCalendar_atURL_ignoreErrors___block_invoke;
  v21[3] = &unk_278D66AF0;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  errorsCopy = errors;
  v21[4] = self;
  v18 = itemCopy;
  v22 = v18;
  v19 = calendarCopy;
  v23 = v19;
  [v15 setCompletionBlock:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v15;
}

void __108__CalDAVCalendarPropertyRefreshOperation__getSetPropertyTaskWithCoreDAVItem_forCalendar_atURL_ignoreErrors___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 72);
    v6 = [MEMORY[0x277CFDC18] sharedLogging];
    v7 = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277CFDD48]));
    v8 = [v6 logHandleForAccountInfoProvider:v7];

    if (v5)
    {
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [*(a1 + 40) nameSpace];
          v11 = [*(a1 + 40) name];
          v12 = [v3 error];
          v25 = 138543874;
          v26 = v10;
          v27 = 2114;
          v28 = v11;
          v29 = 2112;
          v30 = v12;
          _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_ERROR, "Got error (that we are ignoring) when attempting to set property %{public}@::%{public}@ on server: %@", &v25, 0x20u);
        }
      }
    }

    else
    {
      if (v8)
      {
        v13 = v8;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [*(a1 + 40) nameSpace];
          v15 = [*(a1 + 40) name];
          v16 = [v3 error];
          v25 = 138543874;
          v26 = v14;
          v27 = 2114;
          v28 = v15;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_242742000, v13, OS_LOG_TYPE_ERROR, "Got error when attempting to set property %{public}@::%{public}@ on server: %@", &v25, 0x20u);
        }
      }

      [WeakRetained setForceClearCalendarHomeSyncToken:1];
    }
  }

  if (*(a1 + 72) != 1 || ([v3 error], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [WeakRetained delegate];
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }

    v17 = [WeakRetained delegate];
    v20 = [v3 error];
    [v17 calendarRefreshPropPatchFinishedWithError:v20 forCalendar:*(a1 + 48)];
  }

LABEL_18:
  v21 = [*(a1 + 32) outstandingTasks];
  v22 = objc_loadWeakRetained((a1 + 64));
  [v21 removeObject:v22];

  v23 = [WeakRetained outstandingTasksGroup];

  if (v23)
  {
    v24 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v24);
  }
}

- (id)_getSetPropertiesTaskWithItemsToSet:(id)set itemsToRemove:(id)remove atURL:(id)l
{
  setCopy = set;
  removeCopy = remove;
  lCopy = l;
  v11 = [objc_alloc(MEMORY[0x277CFDC70]) initWithPropertiesToSet:setCopy andRemove:removeCopy atURL:lCopy];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v11 setAccountInfoProvider:accountInfoProvider];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(outstandingTasksGroup);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__CalDAVCalendarPropertyRefreshOperation__getSetPropertiesTaskWithItemsToSet_itemsToRemove_atURL___block_invoke;
  v15[3] = &unk_278D66B18;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v15[4] = self;
  [v11 setCompletionBlock:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v11;
}

void __98__CalDAVCalendarPropertyRefreshOperation__getSetPropertiesTaskWithItemsToSet_itemsToRemove_atURL___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = objc_loadWeakRetained(a1 + 6);
  v3 = [v2 error];

  if (v3)
  {
    [WeakRetained setForceClearCalendarHomeSyncToken:1];
  }

  v4 = [a1[4] outstandingTasks];
  v5 = objc_loadWeakRetained(a1 + 6);
  [v4 removeObject:v5];

  v6 = [WeakRetained outstandingTasksGroup];

  if (v6)
  {
    v7 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v7);
  }
}

- (id)_generateTimeZoneString:(id)string
{
  v3 = MEMORY[0x277CBEA80];
  stringCopy = string;
  currentCalendar = [v3 currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [currentCalendar components:28 fromDate:date];

  v8 = [objc_alloc(MEMORY[0x277D7F0F8]) initWithYear:objc_msgSend(v7 month:"year") - 1 day:{objc_msgSend(v7, "month"), objc_msgSend(v7, "day")}];
  v9 = [objc_alloc(MEMORY[0x277D7F140]) initWithSystemTimeZone:stringCopy fromDate:v8 options:2];

  v10 = objc_alloc_init(MEMORY[0x277D7F0D0]);
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  [v10 setComponents:v11];

  v12 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v10];
  v13 = [v12 ICSStringWithOptions:0];

  return v13;
}

- (id)_getMkcalendarTaskGroupForCalendar:(id)calendar
{
  v105 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  self->_didMakeCalendars = 1;
  calendarURL = [calendarCopy calendarURL];

  if (!calendarURL)
  {
    principal = [(CalDAVOperation *)self principal];
    calendarHomeURL = [principal calendarHomeURL];
    guid = [calendarCopy guid];
    appendSlashIfNeeded = [guid appendSlashIfNeeded];
    v10 = [calendarHomeURL URLByAppendingPathComponent:appendSlashIfNeeded];
    [calendarCopy setCalendarURL:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = objc_alloc(MEMORY[0x277CFDBE0]);
  v13 = *MEMORY[0x277CFDEF8];
  v93 = [v12 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF00]];
  title = [calendarCopy title];
  [v93 setPayloadAsString:title];

  [v11 addObject:v93];
  v15 = objc_alloc(MEMORY[0x277CFDBE0]);
  v16 = *MEMORY[0x277CFE050];
  v92 = [v15 initWithNameSpace:*MEMORY[0x277CFE050] andName:*MEMORY[0x277CFDDF0]];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(calendarCopy, "order")];
  [v92 setPayloadAsString:v17];

  [v11 addObject:v92];
  color = [calendarCopy color];

  if (!color)
  {
    v94 = 0;
    goto LABEL_7;
  }

  v94 = objc_alloc_init(CalDAVCalendarColorItem);
  color2 = [calendarCopy color];
  [(CalDAVCalendarColorItem *)v94 setColorString:color2];

  symbolicColorName = [calendarCopy symbolicColorName];

  if (!symbolicColorName)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v21 = objc_alloc_init(CalDAVCalendarColorItem);
  color3 = [calendarCopy color];
  [(CalDAVCalendarColorItem *)v21 setColorString:color3];

  symbolicColorName2 = [calendarCopy symbolicColorName];
  [(CalDAVCalendarColorItem *)v21 setSymbolicColorName:symbolicColorName2];

LABEL_8:
  if ([calendarCopy isSubscribed] && objc_msgSend(calendarCopy, "conformsToProtocol:", &unk_28552A228))
  {
    v24 = calendarCopy;
    v25 = objc_alloc(MEMORY[0x277CFDBE0]);
    v26 = [v25 initWithNameSpace:v13 andName:*MEMORY[0x277CFDFE0]];
    v27 = objc_alloc(MEMORY[0x277CFDBE0]);
    v87 = [v27 initWithNameSpace:v13 andName:*MEMORY[0x277CFDED8]];
    v28 = objc_alloc(MEMORY[0x277CFDBE0]);
    v88 = *MEMORY[0x277CFDE90];
    v86 = [v28 initWithNameSpace:? andName:?];
    extraChildItems = [v26 extraChildItems];
    [extraChildItems addObject:v87];

    extraChildItems2 = [v26 extraChildItems];
    [extraChildItems2 addObject:v86];

    [v11 addObject:v26];
    v31 = objc_alloc(MEMORY[0x277CFDBE0]);
    v90 = [v31 initWithNameSpace:v88 andName:*MEMORY[0x277CFDE60]];
    v32 = objc_alloc(MEMORY[0x277CFDBE0]);
    v91 = [v32 initWithNameSpace:v13 andName:*MEMORY[0x277CFDF38]];
    subscriptionURL = [v24 subscriptionURL];
    absoluteString = [subscriptionURL absoluteString];

    [v91 setPayloadAsString:absoluteString];
    extraChildItems3 = [v90 extraChildItems];
    [extraChildItems3 addObject:v91];

    [v11 addObject:v90];
    v35 = objc_alloc(MEMORY[0x277CFDBE0]);
    v89 = [v35 initWithNameSpace:v16 andName:*MEMORY[0x277CFDFD8]];
    [v24 refreshInterval];
    v37 = v36;
    [v24 refreshInterval];
    v39 = v38;
    if (v38 < 0)
    {
      mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
      v42 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

      if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v102 = v24;
        v103 = 2048;
        v104 = v37;
        _os_log_impl(&dword_242742000, v42, OS_LOG_TYPE_ERROR, "The refresh interval specified for the [%@] calendar, which is about to be created, is too large.  It is currently: [%lu].  It will be set to 0.", buf, 0x16u);
      }

      v39 = 0;
    }

    v43 = [objc_alloc(MEMORY[0x277D7F110]) initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v39];
    v84 = [v43 ICSStringWithOptions:0];
    [v89 setPayloadAsString:v84];
    [v11 addObject:v89];
    if ([v24 hasAlarmFilter])
    {
      v44 = objc_alloc(MEMORY[0x277CFDBE0]);
      v45 = [v44 initWithNameSpace:v88 andName:*MEMORY[0x277CFDE68]];
      [v11 addObject:v45];
    }

    if ([v24 hasAttachmentFilter])
    {
      v46 = objc_alloc(MEMORY[0x277CFDBE0]);
      v47 = [v46 initWithNameSpace:v88 andName:*MEMORY[0x277CFDE70]];
      [v11 addObject:v47];
    }

    if ([v24 hasTaskFilter])
    {
      v48 = objc_alloc(MEMORY[0x277CFDBE0]);
      v49 = [v48 initWithNameSpace:v88 andName:*MEMORY[0x277CFDE78]];
      [v11 addObject:v49];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v24 autoprovisioned])
    {
      v50 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v16 andName:@"autoprovisioned"];
      [v11 addObject:v50];
    }

    if (objc_opt_respondsToSelector())
    {
      languageCode = [v24 languageCode];
      v52 = languageCode == 0;

      if (!v52)
      {
        v53 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v16 andName:@"language-code"];
        languageCode2 = [v24 languageCode];
        [v53 setPayloadAsString:languageCode2];

        [v11 addObject:v53];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      locationCode = [v24 locationCode];
      v56 = locationCode == 0;

      if (!v56)
      {
        v57 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v16 andName:@"location-code"];
        locationCode2 = [v24 locationCode];
        [v57 setPayloadAsString:locationCode2];

        [v11 addObject:v57];
      }
    }

    goto LABEL_40;
  }

  if ([calendarCopy isSubscribed])
  {
    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v60 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v61 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v60];

    if (v61 && os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v102 = calendarCopy;
      _os_log_impl(&dword_242742000, v61, OS_LOG_TYPE_ERROR, "We have a calendar (%@) that claims to be a subscribed calendar, but doesn't implement CalDAVSubscribedCalendar.", buf, 0xCu);
    }
  }

  notes = [calendarCopy notes];
  v63 = [notes length] == 0;

  v64 = MEMORY[0x277CFDDC0];
  if (!v63)
  {
    v65 = objc_alloc(MEMORY[0x277CFDBE0]);
    v66 = [v65 initWithNameSpace:*v64 andName:*MEMORY[0x277CFDDE0]];
    notes2 = [calendarCopy notes];
    [v66 setPayloadAsString:notes2];

    [v11 addObject:v66];
  }

  v68 = [(CalDAVCalendarPropertyRefreshOperation *)self _getIsAffectingAvailabilityCoreDAVItem:calendarCopy];
  [v11 addObject:v68];

  timeZone = [calendarCopy timeZone];
  LOBYTE(v68) = timeZone == 0;

  if ((v68 & 1) == 0)
  {
    timeZone2 = [calendarCopy timeZone];
    v24 = [(CalDAVCalendarPropertyRefreshOperation *)self _generateTimeZoneString:timeZone2];

    v71 = objc_alloc(MEMORY[0x277CFDBE0]);
    v26 = [v71 initWithNameSpace:*v64 andName:*MEMORY[0x277CFDE98]];
    [v26 setPayloadAsString:v24];
    [v11 addObject:v26];
LABEL_40:
  }

  v72 = v11;
  v73 = v72;
  if (v21)
  {
    v74 = [v72 setByAddingObject:v21];

    if (v94)
    {
      v75 = [v73 setByAddingObject:?];
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (v94)
  {
    v74 = [v72 setByAddingObject:?];

LABEL_46:
    v75 = 0;
    goto LABEL_48;
  }

  v75 = 0;
  v74 = v72;
LABEL_48:
  v76 = [CalDAVMkcalendarWithFallbackTaskGroup alloc];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  calendarURL2 = [calendarCopy calendarURL];
  v80 = [(CalDAVMkcalendarWithFallbackTaskGroup *)v76 initWithAccountInfoProvider:accountInfoProvider taskManager:taskManager primaryPropertiesToSet:v74 fallbackPropertiesToSet:v75 atURL:calendarURL2];

  -[CalDAVMkcalendarWithFallbackTaskGroup setShouldSupportVEVENT:](v80, "setShouldSupportVEVENT:", [calendarCopy isEventContainer]);
  -[CalDAVMkcalendarWithFallbackTaskGroup setShouldSupportVTODO:](v80, "setShouldSupportVTODO:", [calendarCopy isTaskContainer]);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v80);
  outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(outstandingTasksGroup);

  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __77__CalDAVCalendarPropertyRefreshOperation__getMkcalendarTaskGroupForCalendar___block_invoke;
  v95[3] = &unk_278D66B40;
  objc_copyWeak(&v98, buf);
  objc_copyWeak(&v99, &location);
  v82 = calendarCopy;
  v96 = v82;
  selfCopy = self;
  [(CoreDAVTaskGroup *)v80 setCompletionBlock:v95];

  objc_destroyWeak(&v99);
  objc_destroyWeak(&v98);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v80;
}

void __77__CalDAVCalendarPropertyRefreshOperation__getMkcalendarTaskGroupForCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = [v2 error];

  if (v3)
  {
    if ([WeakRetained _handleMkCalTaskGroupError:v2 forCalendar:*(a1 + 32)])
    {
      [WeakRetained _retryMkCalForCalendar:*(a1 + 32)];
    }
  }

  else
  {
    v4 = [WeakRetained delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [WeakRetained delegate];
      v7 = [*(a1 + 40) principal];
      [v6 calendarRefreshMkCalendarSucceededForPrincipal:v7 calendar:*(a1 + 32)];
    }
  }

  v8 = [WeakRetained outstandingTaskGroups];
  [v8 removeObject:v2];

  v9 = [WeakRetained outstandingTasksGroup];

  if (v9)
  {
    v10 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v10);
  }
}

- (BOOL)_handleMkCalTaskGroupError:(id)error forCalendar:(id)calendar
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  calendarCopy = calendar;
  error = [errorCopy error];
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v11 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412802;
    v17 = error;
    v18 = 2112;
    v19 = calendarCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_242742000, v11, OS_LOG_TYPE_ERROR, "Encountered an error while creating a calendar. error = %@; failing calendar = %@; failing task group = %@", &v16, 0x20u);
  }

  delegate = [(CoreDAVTaskGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    principal = [(CalDAVOperation *)self principal];
    v14 = [delegate calendarRefreshShouldRetryMkCalendarForPrincipal:principal calendar:calendarCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_retryMkCalForCalendar:(id)calendar
{
  v12 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v7 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = calendarCopy;
    _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_DEFAULT, "Retrying mkcalendar for calendar %@", &v10, 0xCu);
  }

  v8 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:calendarCopy];
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v8];

  [v8 startTaskGroup];
}

- (void)_initializePrincipalCalendarCache
{
  v32 = *MEMORY[0x277D85DE8];
  principal = [(CalDAVOperation *)self principal];
  calendars = [principal calendars];

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(calendars, "count")}];
  pathToLocalCalendar = self->_pathToLocalCalendar;
  self->_pathToLocalCalendar = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  localCalendarsWithNoPath = self->_localCalendarsWithNoPath;
  self->_localCalendarsWithNoPath = v7;

  self->_nextCalendarOrder = -1;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = calendars;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        nextCalendarOrder = self->_nextCalendarOrder;
        order = [v13 order];
        if (nextCalendarOrder <= order)
        {
          v16 = order;
        }

        else
        {
          v16 = nextCalendarOrder;
        }

        self->_nextCalendarOrder = v16;
        calendarURL = [v13 calendarURL];

        if (calendarURL)
        {
          v18 = self->_pathToLocalCalendar;
          calendarURL2 = [v13 calendarURL];
          absoluteString = [calendarURL2 absoluteString];
          appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];
          [(NSMutableDictionary *)v18 setObject:v13 forKey:appendSlashIfNeeded];
        }

        else
        {
          [(NSMutableSet *)self->_localCalendarsWithNoPath addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  ++self->_nextCalendarOrder;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ctags = self->_ctags;
  self->_ctags = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  syncTokens = self->_syncTokens;
  self->_syncTokens = v24;
}

- (BOOL)_handleUpdateForCalendar:(id)calendar
{
  v335 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  val = self;
  principal = [(CalDAVOperation *)self principal];
  if (([calendarCopy isScheduleInbox] & 1) != 0 || (objc_msgSend(calendarCopy, "isScheduleOutbox") & 1) != 0 || (objc_msgSend(calendarCopy, "isNotification") & 1) != 0 || (objc_msgSend(calendarCopy, "isSubscribed") & 1) != 0 || objc_msgSend(calendarCopy, "isPollContainer"))
  {
    delegate = [(CoreDAVTaskGroup *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(CoreDAVTaskGroup *)val delegate];
      [delegate2 calendarRefreshFoundUpdatedSpecialContainer:calendarCopy];
    }

    [calendarCopy isCalendar];
  }

  else if (([calendarCopy isCalendar] & 1) == 0)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    delegate5 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (delegate5)
    {
      delegate5 = delegate5;
      if (os_log_type_enabled(delegate5, OS_LOG_TYPE_DEBUG))
      {
        v80 = [calendarCopy url];
        *buf = 138412290;
        v331 = v80;
        _os_log_impl(&dword_242742000, delegate5, OS_LOG_TYPE_DEBUG, "Skipping special non-calendar container at %@", buf, 0xCu);
      }
    }

    goto LABEL_127;
  }

  ctag = [calendarCopy ctag];

  if (ctag)
  {
    ctags = val->_ctags;
    ctag2 = [calendarCopy ctag];
    v11 = [calendarCopy url];
    absoluteString = [v11 absoluteString];
    appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];
    [(NSMutableDictionary *)ctags setObject:ctag2 forKey:appendSlashIfNeeded];
  }

  syncToken = [calendarCopy syncToken];

  if (syncToken)
  {
    syncTokens = val->_syncTokens;
    syncToken2 = [calendarCopy syncToken];
    v17 = [calendarCopy url];
    absoluteString2 = [v17 absoluteString];
    appendSlashIfNeeded2 = [absoluteString2 appendSlashIfNeeded];
    [(NSMutableDictionary *)syncTokens setObject:syncToken2 forKey:appendSlashIfNeeded2];
  }

  mEMORY[0x277CFDC18] = [calendarCopy privileges];
  if (mEMORY[0x277CFDC18])
  {
    hasWriteContentPrivileges = [calendarCopy hasWriteContentPrivileges];
    hasWritePropertiesPrivileges = [calendarCopy hasWritePropertiesPrivileges];
  }

  else
  {
    hasWriteContentPrivileges = [principal isWritable];
    hasWritePropertiesPrivileges = [principal isWritable];
  }

  v22 = hasWritePropertiesPrivileges;
  if (([calendarCopy isScheduleInbox] & 1) != 0 || (objc_msgSend(calendarCopy, "isScheduleOutbox") & 1) != 0 || (objc_msgSend(calendarCopy, "isNotification") & 1) != 0 || (v311 = v22, objc_msgSend(calendarCopy, "isPollContainer")))
  {
    v311 = 0;
  }

  if ([calendarCopy isEventContainer])
  {
    v23 = [calendarCopy isTaskContainer] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  if ([calendarCopy isEventContainer])
  {
    isTaskContainer = 0;
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    isTaskContainer = [calendarCopy isTaskContainer];
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  if (([principal isEnabledForEvents] & 1) == 0)
  {
    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v62 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v63 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v62];

    if (v63)
    {
      v64 = v63;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        v65 = [calendarCopy url];
        *buf = 138412290;
        v331 = v65;
        _os_log_impl(&dword_242742000, v64, OS_LOG_TYPE_DEBUG, "Skipping event-only container at %@", buf, 0xCu);
      }
    }

    delegate3 = [(CoreDAVTaskGroup *)val delegate];
    v67 = objc_opt_respondsToSelector();

    if ((v67 & 1) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_77;
  }

LABEL_29:
  if (isTaskContainer && ([principal isEnabledForTodos] & 1) == 0)
  {
    mEMORY[0x277CFDC18]3 = [MEMORY[0x277CFDC18] sharedLogging];
    v69 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v70 = [mEMORY[0x277CFDC18]3 logHandleForAccountInfoProvider:v69];

    if (v70)
    {
      v71 = v70;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v72 = [calendarCopy url];
        *buf = 138412290;
        v331 = v72;
        _os_log_impl(&dword_242742000, v71, OS_LOG_TYPE_DEBUG, "Skipping todo-only container at %@", buf, 0xCu);
      }
    }

    delegate4 = [(CoreDAVTaskGroup *)val delegate];
    v74 = objc_opt_respondsToSelector();

    if ((v74 & 1) == 0)
    {
      goto LABEL_121;
    }

LABEL_77:
    delegate5 = [(CoreDAVTaskGroup *)val delegate];
    [delegate5 calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:calendarCopy];
LABEL_127:
    v104 = 0;
    goto LABEL_315;
  }

  if ([calendarCopy isJournalContainer] && (objc_msgSend(calendarCopy, "isEventContainer") & 1) == 0 && (objc_msgSend(calendarCopy, "isTaskContainer") & 1) == 0)
  {
    delegate5 = [MEMORY[0x277CFDC18] sharedLogging];
    v75 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v76 = [delegate5 logHandleForAccountInfoProvider:v75];

    if (v76)
    {
      v77 = v76;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = [calendarCopy url];
        *buf = 138412290;
        v331 = v78;
        _os_log_impl(&dword_242742000, v77, OS_LOG_TYPE_DEBUG, "Skipping over VJOURNAL-only container at %@", buf, 0xCu);
      }
    }

    goto LABEL_127;
  }

  v309 = v22;
  v310 = hasWriteContentPrivileges;
  pathToLocalCalendar = val->_pathToLocalCalendar;
  v26 = [calendarCopy url];
  absoluteString3 = [v26 absoluteString];
  appendSlashIfNeeded3 = [absoluteString3 appendSlashIfNeeded];
  delegate5 = [(NSMutableDictionary *)pathToLocalCalendar objectForKey:appendSlashIfNeeded3];

  if (delegate5)
  {
    goto LABEL_115;
  }

  if (![principal isMergeSync])
  {
    goto LABEL_70;
  }

  mEMORY[0x277CFDC18]4 = [MEMORY[0x277CFDC18] sharedLogging];
  notes = *MEMORY[0x277CFDD48];
  v31 = objc_loadWeakRetained((&val->super.super.super.isa + notes));
  v32 = [mEMORY[0x277CFDC18]4 logHandleForAccountInfoProvider:v31];

  if (v32)
  {
    v33 = v32;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      containerTitle = [calendarCopy containerTitle];
      *buf = 138412290;
      v331 = containerTitle;
      _os_log_impl(&dword_242742000, v33, OS_LOG_TYPE_INFO, "This is a merge sync, so we'll try to identity match this calendar: %@", buf, 0xCu);
    }
  }

  v328 = 0u;
  v329 = 0u;
  v327 = 0u;
  v326 = 0u;
  v35 = val->_localCalendarsWithNoPath;
  v36 = [(NSMutableSet *)v35 countByEnumeratingWithState:&v326 objects:v334 count:16];
  if (!v36)
  {
LABEL_64:

    goto LABEL_65;
  }

  v37 = *v327;
  notes2 = 138412546;
LABEL_42:
  v38 = 0;
  while (1)
  {
    if (*v327 != v37)
    {
      objc_enumerationMutation(v35);
    }

    v39 = *(*(&v326 + 1) + 8 * v38);
    containerTitle2 = [calendarCopy containerTitle];
    if (![containerTitle2 length])
    {
      goto LABEL_61;
    }

    containerTitle3 = [calendarCopy containerTitle];
    title = [v39 title];
    v43 = [containerTitle3 caseInsensitiveCompare:title] == 0;

    if (v43)
    {
      break;
    }

LABEL_62:
    if (v36 == ++v38)
    {
      v36 = [(NSMutableSet *)v35 countByEnumeratingWithState:&v326 objects:v334 count:16];
      if (v36)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }
  }

  isEventContainer = [v39 isEventContainer];
  if (isEventContainer != [calendarCopy isEventContainer] && !objc_msgSend(calendarCopy, "isEventContainer") || (v45 = objc_msgSend(v39, "isTaskContainer"), v45 != objc_msgSend(calendarCopy, "isTaskContainer")) && !objc_msgSend(calendarCopy, "isTaskContainer") || (v46 = objc_msgSend(v39, "isScheduleInbox"), v46 != objc_msgSend(calendarCopy, "isScheduleInbox")) || (v47 = objc_msgSend(v39, "isNotification"), v47 != objc_msgSend(calendarCopy, "isNotification")) || (v48 = objc_msgSend(v39, "isSubscribed"), v48 != objc_msgSend(calendarCopy, "isSubscribed")) || (objc_msgSend(calendarCopy, "isScheduleOutbox") & 1) != 0 || (objc_msgSend(calendarCopy, "isSubscribed") & 1) != 0)
  {
    containerTitle2 = [MEMORY[0x277CFDC18] sharedLogging];
    v49 = objc_loadWeakRetained((&val->super.super.super.isa + notes));
    v50 = [containerTitle2 logHandleForAccountInfoProvider:v49];

    if (v50)
    {
      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        title2 = [v39 title];
        containerTitle4 = [calendarCopy containerTitle];
        *buf = 138412546;
        v331 = title2;
        v332 = 2112;
        v333 = containerTitle4;
        _os_log_impl(&dword_242742000, v51, OS_LOG_TYPE_INFO, "Found a calendar that matches based on title, but it doesn't support the same types. %@/%@", buf, 0x16u);
      }
    }

LABEL_61:
    goto LABEL_62;
  }

  mEMORY[0x277CFDC18]5 = [MEMORY[0x277CFDC18] sharedLogging];
  v82 = objc_loadWeakRetained((&val->super.super.super.isa + notes));
  v83 = [mEMORY[0x277CFDC18]5 logHandleForAccountInfoProvider:v82];

  if (v83)
  {
    v84 = v83;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      title3 = [v39 title];
      containerTitle5 = [calendarCopy containerTitle];
      *buf = 138412546;
      v331 = title3;
      v332 = 2112;
      v333 = containerTitle5;
      _os_log_impl(&dword_242742000, v84, OS_LOG_TYPE_INFO, "Merged local calendar %@ with remote calendar %@", buf, 0x16u);
    }
  }

  delegate5 = v39;
  -[NSObject setIsEventContainer:](delegate5, "setIsEventContainer:", [calendarCopy isEventContainer]);
  -[NSObject setIsTaskContainer:](delegate5, "setIsTaskContainer:", [calendarCopy isTaskContainer]);
  v87 = [calendarCopy url];
  [delegate5 setCalendarURL:v87];

  if (delegate5)
  {
    [(NSMutableSet *)val->_localCalendarsWithNoPath removeObject:delegate5];
    mEMORY[0x277CFDC18]6 = [MEMORY[0x277CFDC18] sharedLogging];
    v89 = objc_loadWeakRetained((&val->super.super.super.isa + notes));
    v90 = [mEMORY[0x277CFDC18]6 logHandleForAccountInfoProvider:v89];

    if (v90)
    {
      v91 = v90;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        v92 = [calendarCopy url];
        localCalendarsWithNoPath = val->_localCalendarsWithNoPath;
        *buf = 138412546;
        v331 = v92;
        v332 = 2112;
        v333 = localCalendarsWithNoPath;
        _os_log_impl(&dword_242742000, v91, OS_LOG_TYPE_INFO, "Merged container at %@. The following calendars haven't matched yet: %@", buf, 0x16u);
      }
    }

    goto LABEL_115;
  }

LABEL_65:
  mEMORY[0x277CFDC18]7 = [MEMORY[0x277CFDC18] sharedLogging];
  v55 = objc_loadWeakRetained((&val->super.super.super.isa + notes));
  v56 = [mEMORY[0x277CFDC18]7 logHandleForAccountInfoProvider:v55];

  if (v56)
  {
    v57 = v56;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = [calendarCopy url];
      v59 = val->_localCalendarsWithNoPath;
      *buf = 138412546;
      v331 = v58;
      v332 = 2112;
      v333 = v59;
      _os_log_impl(&dword_242742000, v57, OS_LOG_TYPE_INFO, "Didn't merge the container at %@. The following calendars haven't matched yet: %@", buf, 0x16u);
    }
  }

LABEL_70:
  if ([calendarCopy isSubscribed])
  {
    v60 = 4;
  }

  else if ([calendarCopy isScheduleInbox])
  {
    v60 = 1;
  }

  else if ([calendarCopy isScheduleOutbox])
  {
    v60 = 2;
  }

  else if ([calendarCopy isNotification])
  {
    v60 = 3;
  }

  else if ([calendarCopy isPollContainer])
  {
    v60 = 5;
  }

  else
  {
    v60 = 0;
  }

  v94 = [calendarCopy url];
  delegate5 = [principal calendarOfType:v60 atURL:v94 withOptions:0];

  if (!delegate5)
  {
LABEL_121:
    v104 = 0;
    goto LABEL_316;
  }

  v95 = CFUUIDCreate(0);
  v96 = CFUUIDCreateString(0, v95);
  [delegate5 setGuid:v96];

  CFRelease(v95);
  v97 = [calendarCopy url];
  [delegate5 setCalendarURL:v97];

  -[NSObject setIsEnabled:](delegate5, "setIsEnabled:", [principal isEnabled]);
  -[NSObject setIsEditable:](delegate5, "setIsEditable:", ([calendarCopy isSubscribed] ^ 1) & v310);
  [delegate5 setIsRenameable:v309];
  -[NSObject setIsEventContainer:](delegate5, "setIsEventContainer:", [calendarCopy isEventContainer]);
  -[NSObject setIsTaskContainer:](delegate5, "setIsTaskContainer:", [calendarCopy isTaskContainer]);
  -[NSObject setIsSubscribed:](delegate5, "setIsSubscribed:", [calendarCopy isSubscribed]);
  -[NSObject setIsScheduleInbox:](delegate5, "setIsScheduleInbox:", [calendarCopy isScheduleInbox]);
  -[NSObject setIsScheduleOutbox:](delegate5, "setIsScheduleOutbox:", [calendarCopy isScheduleOutbox]);
  -[NSObject setIsPoll:](delegate5, "setIsPoll:", [calendarCopy isPollContainer]);
  -[NSObject setIsNotification:](delegate5, "setIsNotification:", [calendarCopy isNotification]);
  publishURL = [calendarCopy publishURL];
  [delegate5 setPublishURL:publishURL];

  prePublishURL = [calendarCopy prePublishURL];
  [delegate5 setPrePublishURL:prePublishURL];

  [delegate5 setSharingStatus:[(CalDAVCalendarPropertyRefreshOperation *)val _sharingStatusForContainer:calendarCopy]];
LABEL_115:
  delegate6 = [(CoreDAVTaskGroup *)val delegate];
  v101 = objc_opt_respondsToSelector();

  if (v101)
  {
    delegate7 = [(CoreDAVTaskGroup *)val delegate];
    [delegate7 calendarRefreshWillRefreshCalendar:delegate5];
  }

  if (![calendarCopy isSubscribed])
  {
    goto LABEL_182;
  }

  if (([delegate5 conformsToProtocol:&unk_28552A228]& 1) == 0)
  {
    mEMORY[0x277CFDC18]8 = [MEMORY[0x277CFDC18] sharedLogging];
    v106 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v107 = [mEMORY[0x277CFDC18]8 logHandleForAccountInfoProvider:v106];

    if (v107)
    {
      v108 = v107;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = objc_opt_class();
        *buf = 138543362;
        v331 = v109;
        _os_log_impl(&dword_242742000, v108, OS_LOG_TYPE_ERROR, "Expected a subscribed calendar, but this doesn't look like one: %{public}@", buf, 0xCu);
      }
    }

    [delegate5 setIsSubscribed:1];
    goto LABEL_127;
  }

  if (v311)
  {
    wasModifiedLocally = [delegate5 wasModifiedLocally];
  }

  else
  {
    wasModifiedLocally = 0;
  }

  v110 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v111 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v112 = delegate5;
  subscriptionURL = [v112 subscriptionURL];
  if (subscriptionURL && (-[NSObject subscriptionURL](v112, "subscriptionURL"), v114 = objc_claimAutoreleasedReturnValue(), [calendarCopy source], v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v114, "isEqual:", v115), v115, v114, subscriptionURL, ((v116 ^ 1) & wasModifiedLocally) != 0))
  {
    v117 = objc_alloc(MEMORY[0x277CFDBE0]);
    source = [v117 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE60]];
    v119 = objc_alloc(MEMORY[0x277CFDBE0]);
    v120 = [v119 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF38]];
    subscriptionURL2 = [v112 subscriptionURL];
    absoluteString4 = [subscriptionURL2 absoluteString];

    [v120 setPayloadAsString:absoluteString4];
    extraChildItems = [source extraChildItems];
    [extraChildItems addObject:v120];

    [v110 addObject:source];
  }

  else
  {
    source = [calendarCopy source];
    [v112 setSubscriptionURL:source];
  }

  hasAlarmFilter = [v112 hasAlarmFilter];
  if (((hasAlarmFilter ^ [calendarCopy subscribedStripAlarms]) & wasModifiedLocally) == 1)
  {
    v125 = objc_alloc(MEMORY[0x277CFDBE0]);
    v126 = [v125 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE68]];
    if ([v112 hasAlarmFilter])
    {
      v127 = v110;
    }

    else
    {
      v127 = v111;
    }

    [v127 addObject:v126];
  }

  else
  {
    -[NSObject setHasAlarmFilter:](v112, "setHasAlarmFilter:", [calendarCopy subscribedStripAlarms]);
  }

  hasAttachmentFilter = [v112 hasAttachmentFilter];
  if (((hasAttachmentFilter ^ [calendarCopy subscribedStripAttachments]) & wasModifiedLocally) == 1)
  {
    v129 = objc_alloc(MEMORY[0x277CFDBE0]);
    v130 = [v129 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE70]];
    if ([v112 hasAttachmentFilter])
    {
      v131 = v110;
    }

    else
    {
      v131 = v111;
    }

    [v131 addObject:v130];
  }

  else
  {
    -[NSObject setHasAttachmentFilter:](v112, "setHasAttachmentFilter:", [calendarCopy subscribedStripAttachments]);
  }

  hasTaskFilter = [v112 hasTaskFilter];
  if (((hasTaskFilter ^ [calendarCopy subscribedStripTodos]) & wasModifiedLocally) == 1)
  {
    v133 = objc_alloc(MEMORY[0x277CFDBE0]);
    v134 = [v133 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE78]];
    if ([v112 hasTaskFilter])
    {
      v135 = v110;
    }

    else
    {
      v135 = v111;
    }

    [v135 addObject:v134];
    subscriptionURL3 = [v112 subscriptionURL];
    absoluteString5 = [subscriptionURL3 absoluteString];
    [v134 setPayloadAsString:absoluteString5];
  }

  else
  {
    -[NSObject setHasTaskFilter:](v112, "setHasTaskFilter:", [calendarCopy subscribedStripTodos]);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (v138 = -[NSObject autoprovisioned](v112, "autoprovisioned"), ((v138 ^ [calendarCopy autoprovisioned]) & wasModifiedLocally) == 1))
  {
    v139 = objc_alloc(MEMORY[0x277CFDBE0]);
    v140 = [v139 initWithNameSpace:*MEMORY[0x277CFE050] andName:@"autoprovisioned"];
    if ([v112 autoprovisioned])
    {
      v141 = v110;
    }

    else
    {
      v141 = v111;
    }

    [v141 addObject:v140];
    subscriptionURL4 = [v112 subscriptionURL];
    absoluteString6 = [subscriptionURL4 absoluteString];
    [v140 setPayloadAsString:absoluteString6];
  }

  else if (objc_opt_respondsToSelector())
  {
    -[NSObject setAutoprovisioned:](v112, "setAutoprovisioned:", [calendarCopy autoprovisioned]);
  }

  if (objc_opt_respondsToSelector())
  {
    locationCode = [v112 locationCode];
    if (locationCode)
    {
      locationCode2 = [v112 locationCode];
      locationCode3 = [calendarCopy locationCode];
      v147 = [locationCode2 isEqualToString:locationCode3];

      if (((v147 ^ 1) & wasModifiedLocally) != 0)
      {
        v148 = objc_alloc(MEMORY[0x277CFDBE0]);
        locationCode5 = [v148 initWithNameSpace:*MEMORY[0x277CFE050] andName:@"location-code"];
        locationCode4 = [v112 locationCode];
        [locationCode5 setPayloadAsString:locationCode4];

        [v110 addObject:locationCode5];
        goto LABEL_165;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    locationCode5 = [calendarCopy locationCode];
    [v112 setLocationCode:locationCode5];
LABEL_165:
  }

  if (objc_opt_respondsToSelector())
  {
    languageCode = [v112 languageCode];
    if (languageCode)
    {
      languageCode2 = [v112 languageCode];
      languageCode3 = [calendarCopy languageCode];
      v154 = [languageCode2 isEqualToString:languageCode3];

      if (((v154 ^ 1) & wasModifiedLocally) != 0)
      {
        v155 = objc_alloc(MEMORY[0x277CFDBE0]);
        languageCode5 = [v155 initWithNameSpace:*MEMORY[0x277CFE050] andName:@"language-code"];
        languageCode4 = [v112 languageCode];
        [languageCode5 setPayloadAsString:languageCode4];

        [v110 addObject:languageCode5];
        goto LABEL_172;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    languageCode5 = [calendarCopy languageCode];
    [v112 setLanguageCode:languageCode5];
LABEL_172:
  }

  subscribedRefreshRate = [calendarCopy subscribedRefreshRate];
  v159 = subscribedRefreshRate == 0;

  if (v159)
  {
    if (!wasModifiedLocally)
    {
      goto LABEL_178;
    }

LABEL_177:
    v164 = objc_alloc(MEMORY[0x277CFDBE0]);
    v165 = [v164 initWithNameSpace:*MEMORY[0x277CFE050] andName:*MEMORY[0x277CFDFD8]];
    v166 = objc_alloc(MEMORY[0x277D7F110]);
    [v112 refreshInterval];
    v168 = [v166 initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v167];
    v169 = [v168 ICSStringWithOptions:0];
    [v165 setPayloadAsString:v169];
    [v110 addObject:v165];

    goto LABEL_178;
  }

  subscribedRefreshRate2 = [calendarCopy subscribedRefreshRate];
  [subscribedRefreshRate2 timeInterval];
  v162 = v161;

  [v112 refreshInterval];
  if (((v163 != v162) & wasModifiedLocally) != 0)
  {
    goto LABEL_177;
  }

  [v112 setRefreshInterval:v162];
LABEL_178:
  if ([v110 count] || objc_msgSend(v111, "count"))
  {
    v170 = [calendarCopy url];
    v171 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertiesTaskWithItemsToSet:v110 itemsToRemove:v111 atURL:v170];

    outstandingTasks = [(CoreDAVTaskGroup *)val outstandingTasks];
    [outstandingTasks addObject:v171];

    taskManager = [(CoreDAVTaskGroup *)val taskManager];
    [taskManager submitQueuedCoreDAVTask:v171];
  }

LABEL_182:
  isScheduleTransparent = [calendarCopy isScheduleTransparent];
  isAffectingAvailability = [delegate5 isAffectingAvailability];
  if (isScheduleTransparent == isAffectingAvailability)
  {
    wasModifiedLocally2 = [delegate5 wasModifiedLocally];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v311 & wasModifiedLocally2 & [delegate5 needsIsAffectingAvailabilityUpdate]) == 1)
    {
      v177 = [calendarCopy url];
      v178 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetIsAffectingAvailabilityTask:isAffectingAvailability forCalendar:delegate5 atURL:v177];

      outstandingTasks2 = [(CoreDAVTaskGroup *)val outstandingTasks];
      [outstandingTasks2 addObject:v178];

      taskManager2 = [(CoreDAVTaskGroup *)val taskManager];
      [taskManager2 submitQueuedCoreDAVTask:v178];
    }

    else
    {
      [delegate5 setIsAffectingAvailability:isScheduleTransparent ^ 1u];
    }
  }

  isManagedByServer = [delegate5 isManagedByServer];
  if (isManagedByServer != [calendarCopy isCalendar])
  {
    -[NSObject setIsManagedByServer:](delegate5, "setIsManagedByServer:", [calendarCopy isCalendar]);
  }

  pushKey = [calendarCopy pushKey];
  pushKey2 = [delegate5 pushKey];
  v184 = pushKey2;
  if (pushKey == pushKey2)
  {

LABEL_193:
  }

  else
  {
    pushKey3 = [calendarCopy pushKey];
    pushKey4 = [delegate5 pushKey];
    v187 = [pushKey3 isEqualToString:pushKey4];

    if ((v187 & 1) == 0)
    {
      pushKey = [calendarCopy pushKey];
      [delegate5 setPushKey:pushKey];
      goto LABEL_193;
    }
  }

  isEventContainer2 = [calendarCopy isEventContainer];
  if (isEventContainer2 != [delegate5 isEventContainer])
  {
    -[NSObject setIsEventContainer:](delegate5, "setIsEventContainer:", [calendarCopy isEventContainer]);
  }

  isTaskContainer2 = [calendarCopy isTaskContainer];
  if (isTaskContainer2 != [delegate5 isTaskContainer])
  {
    -[NSObject setIsTaskContainer:](delegate5, "setIsTaskContainer:", [calendarCopy isTaskContainer]);
  }

  if (v310 != -[NSObject isEditable](delegate5, "isEditable") && ([calendarCopy isSubscribed] & 1) == 0)
  {
    [delegate5 setIsEditable:v310];
  }

  if (v309 != [delegate5 isRenameable])
  {
    [delegate5 setIsRenameable:?];
  }

  bulkRequests = [delegate5 bulkRequests];
  bulkRequests2 = [calendarCopy bulkRequests];
  containerTitle9 = bulkRequests2;
  if (bulkRequests == bulkRequests2)
  {

LABEL_207:
  }

  else
  {
    bulkRequests3 = [delegate5 bulkRequests];
    bulkRequests4 = [calendarCopy bulkRequests];
    v195 = [bulkRequests3 isEqualToDictionary:bulkRequests4];

    if ((v195 & 1) == 0)
    {
      bulkRequests = [calendarCopy bulkRequests];
      [delegate5 setBulkRequests:bulkRequests];
      goto LABEL_207;
    }
  }

  containerTitle6 = [calendarCopy containerTitle];
  if (![containerTitle6 length])
  {

    goto LABEL_213;
  }

  containerTitle7 = [calendarCopy containerTitle];
  title4 = [delegate5 title];
  containerTitle9 = title4;
  if (containerTitle7 == title4)
  {

LABEL_227:
    goto LABEL_228;
  }

  containerTitle8 = [calendarCopy containerTitle];
  title5 = [delegate5 title];
  v201 = [containerTitle8 isEqualToString:title5];

  if ((v201 & 1) == 0)
  {
LABEL_213:
    wasModifiedLocally3 = [delegate5 wasModifiedLocally];
    if ((wasModifiedLocally3 & 1) == 0)
    {
      containerTitle9 = [calendarCopy containerTitle];
      if ([containerTitle9 length])
      {

LABEL_226:
        containerTitle6 = [calendarCopy containerTitle];
        [delegate5 setTitle:containerTitle6];
        goto LABEL_227;
      }
    }

    if (v311 && ([calendarCopy isCalendar] & 1) == 0)
    {
      isSubscribed = [calendarCopy isSubscribed];
      if (wasModifiedLocally3)
      {
LABEL_219:
        if (!isSubscribed)
        {
          goto LABEL_226;
        }

LABEL_220:
        title6 = [delegate5 title];

        if (!title6)
        {
          v205 = [calendarCopy url];
          lastPathComponent = [v205 lastPathComponent];
          stringByURLUnquoting = [lastPathComponent stringByURLUnquoting];
          [delegate5 setTitle:stringByURLUnquoting];
        }

        title7 = [delegate5 title];
        v209 = [calendarCopy url];
        containerTitle6 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertyStringTask:title7 forName:*MEMORY[0x277CFDF00] andNamespace:*MEMORY[0x277CFDEF8] forCalendar:delegate5 atURL:v209 ignoreErrors:title6 == 0];

        outstandingTasks3 = [(CoreDAVTaskGroup *)val outstandingTasks];
        [outstandingTasks3 addObject:containerTitle6];

        taskManager3 = [(CoreDAVTaskGroup *)val taskManager];
        [taskManager3 submitQueuedCoreDAVTask:containerTitle6];

        goto LABEL_227;
      }
    }

    else
    {
      isSubscribed = v311;
      if (wasModifiedLocally3)
      {
        goto LABEL_219;
      }
    }

    if ((isSubscribed & 1) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_220;
  }

LABEL_228:
  calendarDescription = [calendarCopy calendarDescription];
  v213 = [calendarDescription length];
  if (v213)
  {
    v214 = 0;
    goto LABEL_230;
  }

  notes = [delegate5 notes];
  if (notes)
  {
    notes2 = [delegate5 notes];
    if ([notes2 length])
    {

      goto LABEL_242;
    }

    v214 = 1;
  }

  else
  {
    notes = 0;
    v214 = 0;
  }

LABEL_230:
  calendarDescription2 = [calendarCopy calendarDescription];
  notes3 = [delegate5 notes];
  if (calendarDescription2 == notes3)
  {
    v220 = 0;
  }

  else
  {
    calendarDescription3 = [calendarCopy calendarDescription];
    notes4 = [delegate5 notes];
    v219 = [calendarDescription3 isEqualToString:notes4];

    v220 = v219 ^ 1;
  }

  if (v214)
  {

    if (!v213)
    {
      goto LABEL_238;
    }

LABEL_241:

    if (v220)
    {
      goto LABEL_242;
    }
  }

  else
  {
    if (v213)
    {
      goto LABEL_241;
    }

LABEL_238:

    if (v220)
    {
LABEL_242:
      if (([delegate5 wasModifiedLocally]& v311) == 1)
      {
        notes5 = [delegate5 notes];
        v222 = [calendarCopy url];
        calendarDescription4 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertyStringTask:notes5 forName:*MEMORY[0x277CFDDE0] andNamespace:*MEMORY[0x277CFDDC0] forCalendar:delegate5 atURL:v222];

        outstandingTasks4 = [(CoreDAVTaskGroup *)val outstandingTasks];
        [outstandingTasks4 addObject:calendarDescription4];

        taskManager4 = [(CoreDAVTaskGroup *)val taskManager];
        [taskManager4 submitQueuedCoreDAVTask:calendarDescription4];
      }

      else
      {
        calendarDescription4 = [calendarCopy calendarDescription];
        [delegate5 setNotes:calendarDescription4];
      }
    }
  }

  v226 = MEMORY[0x277D7F0D8];
  color = [delegate5 color];
  calendarColor = [calendarCopy calendarColor];
  symbolicColorName = [delegate5 symbolicColorName];
  symbolicColorName2 = [calendarCopy symbolicColorName];
  LODWORD(v226) = [v226 colorDetailsAreEffectivelyDifferentFirstColor:color secondColor:calendarColor firstSymbolicName:symbolicColorName secondSymbolicName:symbolicColorName2];

  calendarColor2 = [calendarCopy calendarColor];
  LODWORD(symbolicColorName2) = [calendarColor2 length] == 0;

  if (((symbolicColorName2 | v226) & 1) == 0)
  {
    goto LABEL_256;
  }

  wasModifiedLocally4 = [delegate5 wasModifiedLocally];
  if ((wasModifiedLocally4 & 1) == 0)
  {
    calendarColor2 = [calendarCopy calendarColor];
    if ([calendarColor2 length])
    {
      goto LABEL_253;
    }
  }

  color2 = [delegate5 color];
  v234 = color2;
  if (((color2 != 0) & v311) != 1)
  {

    if (wasModifiedLocally4)
    {
      goto LABEL_254;
    }

LABEL_253:

    goto LABEL_254;
  }

  if ([calendarCopy isCalendar])
  {
    isSubscribed2 = 1;
  }

  else
  {
    isSubscribed2 = [calendarCopy isSubscribed];
  }

  if ((wasModifiedLocally4 & 1) == 0)
  {

    if (isSubscribed2)
    {
      goto LABEL_323;
    }

    goto LABEL_254;
  }

  if (!isSubscribed2)
  {
LABEL_254:
    calendarColor3 = [calendarCopy calendarColor];
    [delegate5 setColor:calendarColor3];

    symbolicColorName3 = [calendarCopy symbolicColorName];
    [delegate5 setSymbolicColorName:symbolicColorName3];
    goto LABEL_255;
  }

LABEL_323:
  color3 = [delegate5 color];

  if (color3)
  {
    v295 = objc_alloc_init(CalDAVCalendarColorItem);
    color4 = [delegate5 color];
    [(CalDAVCalendarColorItem *)v295 setColorString:color4];

    symbolicColorName3 = [MEMORY[0x277CBEB98] setWithObject:v295];
    symbolicColorName4 = [delegate5 symbolicColorName];

    if (symbolicColorName4)
    {
      symbolicColorName5 = [delegate5 symbolicColorName];
      [(CalDAVCalendarColorItem *)v295 setSymbolicColorName:symbolicColorName5];

      v299 = objc_alloc_init(CalDAVCalendarColorItem);
      color5 = [delegate5 color];
      [(CalDAVCalendarColorItem *)v299 setColorString:color5];

      v301 = [MEMORY[0x277CBEB98] setWithObject:v299];
    }

    else
    {
      v301 = 0;
    }
  }

  else
  {
    symbolicColorName3 = 0;
    v301 = 0;
  }

  v302 = [CalDAVPropPatchWithFallbackTaskGroup alloc];
  accountInfoProvider = [(CoreDAVTaskGroup *)val accountInfoProvider];
  taskManager5 = [(CoreDAVTaskGroup *)val taskManager];
  v305 = [calendarCopy url];
  v306 = [(CalDAVPropPatchWithFallbackTaskGroup *)v302 initWithAccountInfoProvider:accountInfoProvider taskManager:taskManager5 primaryPropertiesToSet:symbolicColorName3 fallbackPropertiesToSet:v301 atURL:v305];

  objc_initWeak(buf, val);
  objc_initWeak(&location, v306);
  outstandingTasksGroup = [(CalDAVCalendarPropertyRefreshOperation *)val outstandingTasksGroup];
  dispatch_group_enter(outstandingTasksGroup);

  v321[0] = MEMORY[0x277D85DD0];
  v321[1] = 3221225472;
  v321[2] = __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke;
  v321[3] = &unk_278D66B18;
  objc_copyWeak(&v323, buf);
  objc_copyWeak(&v324, &location);
  v322 = delegate5;
  [(CoreDAVTaskGroup *)v306 setCompletionBlock:v321];
  outstandingTaskGroups = [(CalDAVOperation *)val outstandingTaskGroups];
  [outstandingTaskGroups addObject:v306];

  [(CalDAVPropPatchWithFallbackTaskGroup *)v306 startTaskGroup];
  objc_destroyWeak(&v324);
  objc_destroyWeak(&v323);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

LABEL_255:
LABEL_256:
  calendarOrder = [calendarCopy calendarOrder];
  if (calendarOrder)
  {
    calendarOrder2 = [calendarCopy calendarOrder];
    intValue = [calendarOrder2 intValue];
  }

  else
  {
    intValue = -1;
  }

  if (intValue != [delegate5 order])
  {
    if (([delegate5 wasModifiedLocally]& 1) != 0)
    {
      if (!v311)
      {
        goto LABEL_278;
      }

LABEL_267:
      if ((-[NSObject order](delegate5, "order") & 0x80000000) != 0 || !-[NSObject order](delegate5, "order") && ([calendarCopy calendarOrder], v242 = objc_claimAutoreleasedReturnValue(), v243 = v242 == 0, v242, v243))
      {
        ++val->_nextCalendarOrder;
        [delegate5 setOrder:?];
      }

      calendarOrder3 = [calendarCopy calendarOrder];

      if (!calendarOrder3)
      {
        mEMORY[0x277CFDC18]9 = [MEMORY[0x277CFDC18] sharedLogging];
        v246 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
        v247 = [mEMORY[0x277CFDC18]9 logHandleForAccountInfoProvider:v246];

        if (v247)
        {
          v248 = v247;
          if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
          {
            title8 = [delegate5 title];
            order = [delegate5 order];
            *buf = 138412546;
            v331 = title8;
            v332 = 1024;
            LODWORD(v333) = order;
            _os_log_impl(&dword_242742000, v248, OS_LOG_TYPE_ERROR, "Calendar %@ did not have a calendar-order set so we will try to set it to %d", buf, 0x12u);
          }
        }
      }

      v251 = calendarOrder3 == 0;
      calendarOrder5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", -[NSObject order](delegate5, "order")];
      v253 = [calendarCopy url];
      v254 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertyStringTask:calendarOrder5 forName:*MEMORY[0x277CFDDF0] andNamespace:*MEMORY[0x277CFE050] forCalendar:delegate5 atURL:v253 ignoreErrors:v251];

      outstandingTasks5 = [(CoreDAVTaskGroup *)val outstandingTasks];
      [outstandingTasks5 addObject:v254];

      taskManager6 = [(CoreDAVTaskGroup *)val taskManager];
      [taskManager6 submitQueuedCoreDAVTask:v254];

LABEL_280:
    }

    else
    {
      calendarOrder4 = [calendarCopy calendarOrder];
      if (calendarOrder4)
      {

        goto LABEL_278;
      }

      if (v311)
      {
        goto LABEL_267;
      }

LABEL_278:
      if (([delegate5 isScheduleInbox]& 1) == 0)
      {
        calendarOrder5 = [calendarCopy calendarOrder];
        -[NSObject setOrder:](delegate5, "setOrder:", [calendarOrder5 intValue]);
        goto LABEL_280;
      }
    }
  }

  [delegate5 setSharingStatus:[(CalDAVCalendarPropertyRefreshOperation *)val _sharingStatusForContainer:calendarCopy]];
  sharees = [calendarCopy sharees];
  [delegate5 setSharees:sharees];

  publishURL2 = [calendarCopy publishURL];
  publishURL3 = [delegate5 publishURL];
  v260 = publishURL3;
  if (publishURL2 == publishURL3)
  {

LABEL_285:
  }

  else
  {
    publishURL4 = [calendarCopy publishURL];
    publishURL5 = [delegate5 publishURL];
    v263 = [publishURL4 absoluteURLisEqual:publishURL5];

    if ((v263 & 1) == 0)
    {
      publishURL2 = [calendarCopy publishURL];
      [delegate5 setPublishURL:publishURL2];
      goto LABEL_285;
    }
  }

  publishURL6 = [calendarCopy publishURL];
  [delegate5 setIsPublished:publishURL6 != 0];

  prePublishURL2 = [calendarCopy prePublishURL];
  [delegate5 setPrePublishURL:prePublishURL2];

  isMergeSync = [principal isMergeSync];
  owner = [calendarCopy owner];
  owner2 = [delegate5 owner];
  v269 = owner2;
  if (owner == owner2)
  {

    if (!isMergeSync)
    {
      goto LABEL_298;
    }
  }

  else
  {
    owner3 = [calendarCopy owner];
    owner4 = [delegate5 owner];
    if (([owner3 absoluteURLisEqual:owner4] & 1) == 0)
    {
      owner5 = [calendarCopy owner];
      v273 = [delegate5 hasCalendarUserAddressEquivalentToURL:owner5];

      LOBYTE(isMergeSync) = v273 ^ 1 | isMergeSync;
    }

    if ((isMergeSync & 1) == 0)
    {
      goto LABEL_298;
    }
  }

  owner6 = [calendarCopy owner];
  if (!owner6)
  {
    goto LABEL_298;
  }

  owner7 = [calendarCopy owner];
  principalURL = [principal principalURL];
  v277 = principalURL;
  if (owner7 == principalURL)
  {
  }

  else
  {
    owner8 = [calendarCopy owner];
    principalURL2 = [principal principalURL];
    v280 = [owner8 absoluteURLisEqual:principalURL2];

    if (v280)
    {
      goto LABEL_298;
    }

    v281 = [CalDAVGetPrincipalEmailDetailsTaskGroup alloc];
    accountInfoProvider2 = [(CoreDAVTaskGroup *)val accountInfoProvider];
    owner9 = [calendarCopy owner];
    taskManager7 = [(CoreDAVTaskGroup *)val taskManager];
    owner6 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v281 initWithAccountInfoProvider:accountInfoProvider2 principalURL:owner9 taskManager:taskManager7];

    [(CoreDAVTaskGroup *)owner6 setDelegate:val];
    objc_initWeak(buf, val);
    objc_initWeak(&location, owner6);
    outstandingTasksGroup2 = [(CalDAVCalendarPropertyRefreshOperation *)val outstandingTasksGroup];
    dispatch_group_enter(outstandingTasksGroup2);

    v317[0] = MEMORY[0x277D85DD0];
    v317[1] = 3221225472;
    v317[2] = __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke_375;
    v317[3] = &unk_278D66B18;
    objc_copyWeak(&v319, buf);
    objc_copyWeak(&v320, &location);
    v318 = delegate5;
    [(CoreDAVTaskGroup *)owner6 setCompletionBlock:v317];
    outstandingTaskGroups2 = [(CalDAVOperation *)val outstandingTaskGroups];
    [outstandingTaskGroups2 addObject:owner6];

    [(CalDAVGetPrincipalEmailDetailsTaskGroup *)owner6 startTaskGroup];
    objc_destroyWeak(&v320);
    objc_destroyWeak(&v319);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

LABEL_298:
  canBePublished = [calendarCopy canBePublished];
  if (canBePublished != [delegate5 canBePublished])
  {
    -[NSObject setCanBePublished:](delegate5, "setCanBePublished:", [calendarCopy canBePublished]);
  }

  canBeShared = [calendarCopy canBeShared];
  if (canBeShared != [delegate5 canBeShared])
  {
    -[NSObject setCanBeShared:](delegate5, "setCanBeShared:", [calendarCopy canBeShared]);
  }

  isFamilyCalendar = [calendarCopy isFamilyCalendar];
  if (isFamilyCalendar != [delegate5 isFamilyCalendar])
  {
    -[NSObject setIsFamilyCalendar:](delegate5, "setIsFamilyCalendar:", [calendarCopy isFamilyCalendar]);
  }

  isMarkedUndeletable = [calendarCopy isMarkedUndeletable];
  if (isMarkedUndeletable != [delegate5 isMarkedUndeletable])
  {
    -[NSObject setIsMarkedUndeletable:](delegate5, "setIsMarkedUndeletable:", [calendarCopy isMarkedUndeletable]);
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    maxAttendees = [calendarCopy maxAttendees];
    if (maxAttendees != [delegate5 maxAttendees])
    {
      -[NSObject setMaxAttendees:](delegate5, "setMaxAttendees:", [calendarCopy maxAttendees]);
    }
  }

  isMarkedImmutableSharees = [calendarCopy isMarkedImmutableSharees];
  if (isMarkedImmutableSharees != [delegate5 isMarkedImmutableSharees])
  {
    -[NSObject setIsMarkedImmutableSharees:](delegate5, "setIsMarkedImmutableSharees:", [calendarCopy isMarkedImmutableSharees]);
  }

  if ([delegate5 isScheduleInbox])
  {
    [(CalDAVCalendarPropertyRefreshOperation *)val _updateDefaultSchedulingCalendarIfNeededForInboxCalendar:delegate5 withContainer:calendarCopy];
  }

  [(NSMutableSet *)val->_updatedCalendars addObject:delegate5];
  v104 = 1;
LABEL_315:

LABEL_316:
  return v104;
}

void __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [v2 error];

  if (v3)
  {
    [WeakRetained setForceClearCalendarHomeSyncToken:1];
  }

  v4 = [WeakRetained delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [WeakRetained delegate];
    v7 = [v2 error];
    [v6 calendarRefreshPropPatchFinishedWithError:v7 forCalendar:*(a1 + 32)];
  }

  v8 = [WeakRetained outstandingTaskGroups];
  v9 = objc_loadWeakRetained((a1 + 48));
  [v8 removeObject:v9];

  v10 = [WeakRetained outstandingTasksGroup];

  if (v10)
  {
    v11 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v11);
  }
}

void __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke_375(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 error];

    if (v5)
    {
      v6 = [MEMORY[0x277CFDC18] sharedLogging];
      v7 = objc_loadWeakRetained(&WeakRetained[*MEMORY[0x277CFDD48]]);
      v8 = [v6 logHandleForAccountInfoProvider:v7];

      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_242742000, v8, OS_LOG_TYPE_INFO, "principalEmailDetailsTask encountered an error; not saving details to calendar", v22, 2u);
      }

      goto LABEL_9;
    }
  }

  v9 = objc_loadWeakRetained(a1 + 6);
  v10 = [v9 displayName];
  [a1[4] setOwnerDisplayName:v10];

  v11 = objc_loadWeakRetained(a1 + 6);
  v12 = [v11 principalResult];
  v13 = [v12 preferredAddresses];
  [a1[4] setPreferredCalendarUserAddresses:v13];

  v14 = objc_loadWeakRetained(a1 + 6);
  v15 = [v14 principalResult];
  v16 = [v15 preferredAddresses];
  v17 = [CalDAVCalendarUserAddress preferredAddress:v16];

  v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  [a1[4] setOwner:v18];

  if (v4)
  {
LABEL_9:
    v19 = [WeakRetained outstandingTaskGroups];
    [v19 removeObject:v4];
  }

  v20 = [WeakRetained outstandingTasksGroup];

  if (v20)
  {
    v21 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v21);
  }

LABEL_13:
}

- (void)_updateDefaultSchedulingCalendarIfNeededForInboxCalendar:(id)calendar withContainer:(id)container
{
  v33 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  containerCopy = container;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  principal = [calendarCopy principal];
  calendars = [principal calendars];

  v10 = [calendars countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(calendars);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (([v14 isScheduleInbox] & 1) == 0 && (objc_msgSend(v14, "isScheduleOutbox") & 1) == 0 && (objc_msgSend(v14, "isNotification") & 1) == 0 && (objc_msgSend(v14, "isSubscribed") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v14, "becameDefaultSchedulingCalendar"))
        {
          calendarURL = [v14 calendarURL];
          relativePath = [calendarURL relativePath];
          cDVStringByAppendingSlashIfNeeded = [relativePath CDVStringByAppendingSlashIfNeeded];

          if (calendarURL)
          {
            v18 = objc_alloc(MEMORY[0x277CFDBE0]);
            v19 = [v18 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFE000]];
            v20 = objc_alloc(MEMORY[0x277CFDBE0]);
            v21 = [v20 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF38]];
            [v21 setPayloadAsString:cDVStringByAppendingSlashIfNeeded];
            extraChildItems = [v19 extraChildItems];
            [extraChildItems addObject:v21];

            v23 = [containerCopy url];
            v24 = [(CalDAVCalendarPropertyRefreshOperation *)self _getSetPropertyTaskWithCoreDAVItem:v19 forCalendar:calendarCopy atURL:v23];

            outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
            [outstandingTasks addObject:v24];

            taskManager = [(CoreDAVTaskGroup *)self taskManager];
            [taskManager submitQueuedCoreDAVTask:v24];

            principal2 = [calendarCopy principal];
            [principal2 setDefaultCalendarURL:calendarURL];
          }

          goto LABEL_18;
        }
      }

      v11 = [calendars countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (void)_continueHandleContainerInfoTask:(id)task completedWithContainers:(id)containers error:(id)error
{
  v102 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  containersCopy = containers;
  principal = [(CalDAVOperation *)self principal];
  [(CalDAVCalendarPropertyRefreshOperation *)self _initializePrincipalCalendarCache];
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  v69 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v69));
  v12 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    pathToLocalCalendar = self->_pathToLocalCalendar;
    localCalendarsWithNoPath = self->_localCalendarsWithNoPath;
    *buf = 138412546;
    v99 = pathToLocalCalendar;
    v100 = 2112;
    v101 = localCalendarsWithNoPath;
    _os_log_impl(&dword_242742000, v12, OS_LOG_TYPE_INFO, "Syncing calendar collections. Local calendars are: %@. Local calendars with no paths are: %@", buf, 0x16u);
  }

  inboxURL = [principal inboxURL];
  v16 = 0;
  if ([principal isWritable])
  {
    if (inboxURL)
    {
      v16 = [taskCopy containerForURL:inboxURL];
      scheduleDefaultCalendarURL = [v16 scheduleDefaultCalendarURL];

      if (scheduleDefaultCalendarURL)
      {
        scheduleDefaultCalendarURL2 = [v16 scheduleDefaultCalendarURL];
        [principal setDefaultCalendarURL:scheduleDefaultCalendarURL2];
      }
    }
  }

  v73 = v16;
  v74 = inboxURL;
  [principal outboxURL];
  v72 = v75 = taskCopy;
  v71 = [taskCopy containerForURL:?];
  v76 = principal;
  [principal setSupportsFreebusy:{objc_msgSend(v71, "supportsFreebusy")}];
  v19 = [MEMORY[0x277CBEB58] set];
  principal2 = [(CalDAVOperation *)self principal];
  deletedCalendarURLs = [principal2 deletedCalendarURLs];
  [v19 unionSet:deletedCalendarURLs];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = containersCopy;
  v22 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v91;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v91 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v90 + 1) + 8 * i);
        v27 = [v26 url];
        absoluteString = [v27 absoluteString];
        v29 = [v19 containsObject:absoluteString];

        if ((v29 & 1) == 0)
        {
          v30 = [v26 url];
          absoluteString2 = [v30 absoluteString];
          [v19 addObject:absoluteString2];

          if ([(CalDAVCalendarPropertyRefreshOperation *)self _handleUpdateForCalendar:v26])
          {
            v32 = self->_pathToLocalCalendar;
            v33 = [v26 url];
            absoluteString3 = [v33 absoluteString];
            appendSlashIfNeeded = [absoluteString3 appendSlashIfNeeded];
            [(NSMutableDictionary *)v32 removeObjectForKey:appendSlashIfNeeded];
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v23);
  }

  v36 = v76;
  if (!self->_isSecondRefresh)
  {
    if ([(NSMutableSet *)self->_localCalendarsWithNoPath count])
    {
      mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
      v38 = objc_loadWeakRetained((&self->super.super.super.isa + v70));
      v39 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v38];

      if (v39)
      {
        v40 = v39;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [(NSMutableSet *)self->_localCalendarsWithNoPath count];
          v42 = self->_localCalendarsWithNoPath;
          *buf = 134218242;
          v99 = v41;
          v100 = 2112;
          v101 = v42;
          _os_log_impl(&dword_242742000, v40, OS_LOG_TYPE_INFO, "Found %lu calendars with no paths. Sending these calendars to the server: %@", buf, 0x16u);
        }
      }
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v43 = self->_localCalendarsWithNoPath;
    v44 = [(NSMutableSet *)v43 countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v87;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v87 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v86 + 1) + 8 * j);
          if (([v48 order] & 0x80000000) != 0)
          {
            ++self->_nextCalendarOrder;
            [v48 setOrder:?];
          }

          v49 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v48];
          outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
          [outstandingTaskGroups addObject:v49];

          [v49 startTaskGroup];
        }

        v45 = [(NSMutableSet *)v43 countByEnumeratingWithState:&v86 objects:v96 count:16];
      }

      while (v45);
    }

    v36 = v76;
    isMergeSync = [v76 isMergeSync];
    mEMORY[0x277CFDC18]3 = [MEMORY[0x277CFDC18] sharedLogging];
    v53 = objc_loadWeakRetained((&self->super.super.super.isa + v70));
    v54 = [mEMORY[0x277CFDC18]3 logHandleForAccountInfoProvider:v53];

    if (isMergeSync)
    {
      if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = self->_pathToLocalCalendar;
        *buf = 138412290;
        v99 = v55;
        _os_log_impl(&dword_242742000, v54, OS_LOG_TYPE_INFO, "Since this is a merge sync, we're going to upload all the calendars that didn't exist on the server: %@", buf, 0xCu);
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      allValues = [(NSMutableDictionary *)self->_pathToLocalCalendar allValues];
      v57 = [allValues countByEnumeratingWithState:&v82 objects:v95 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v83;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v83 != v59)
            {
              objc_enumerationMutation(allValues);
            }

            v61 = *(*(&v82 + 1) + 8 * k);
            if (([v61 order] & 0x80000000) != 0)
            {
              ++self->_nextCalendarOrder;
              [v61 setOrder:?];
            }

            v62 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v61];
            outstandingTaskGroups2 = [(CalDAVOperation *)self outstandingTaskGroups];
            [outstandingTaskGroups2 addObject:v62];

            [v62 startTaskGroup];
          }

          v58 = [allValues countByEnumeratingWithState:&v82 objects:v95 count:16];
        }

        while (v58);
        v36 = v76;
      }
    }

    else
    {
      if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v64 = self->_pathToLocalCalendar;
        *buf = 138412290;
        v99 = v64;
        _os_log_impl(&dword_242742000, v54, OS_LOG_TYPE_INFO, "Deleting calendars that no longer appear on the server: %@", buf, 0xCu);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      allValues = [(NSMutableDictionary *)self->_pathToLocalCalendar allValues];
      v65 = [allValues countByEnumeratingWithState:&v78 objects:v94 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v79;
        do
        {
          for (m = 0; m != v66; ++m)
          {
            if (*v79 != v67)
            {
              objc_enumerationMutation(allValues);
            }

            [v76 removeCalendar:*(*(&v78 + 1) + 8 * m)];
          }

          v66 = [allValues countByEnumeratingWithState:&v78 objects:v94 count:16];
        }

        while (v66);
      }
    }

    [(CalDAVCalendarPropertyRefreshOperation *)self _getDefaultCalendarsTasksIfNeededForPrincipal:v36];
  }
}

- (id)_getDefaultMkCalendarForPrincipalTaskGroup:(id)group isEventCalendar:(BOOL)calendar
{
  calendarCopy = calendar;
  v24 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v7 = CFUUIDCreate(0);
  v8 = CFUUIDCreateString(0, v7);
  calendarHomeURL = [groupCopy calendarHomeURL];
  appendSlashIfNeeded = [(__CFString *)v8 appendSlashIfNeeded];
  v11 = [calendarHomeURL URLByAppendingPathComponent:appendSlashIfNeeded];

  v12 = [groupCopy calendarOfType:0 atURL:v11 withOptions:0];
  v13 = v12;
  if (v12)
  {
    [v12 setGuid:v8];
    if (calendarCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        defaultEventCalendarTitle = [groupCopy defaultEventCalendarTitle];
LABEL_13:
        v20 = defaultEventCalendarTitle;
        [v13 setTitle:defaultEventCalendarTitle];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      defaultEventCalendarTitle = [groupCopy defaultTodoCalendarTitle];
      goto LABEL_13;
    }

    [v13 setCalendarURL:v11];
    [v13 setIsEnabled:{objc_msgSend(groupCopy, "isEnabled")}];
    [v13 setIsEventContainer:calendarCopy];
    [v13 setIsTaskContainer:calendarCopy ^ 1];
    ++self->_nextCalendarOrder;
    [v13 setOrder:?];
    v19 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v13];
    goto LABEL_15;
  }

  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v17 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"todo";
    if (calendarCopy)
    {
      v18 = @"event";
    }

    v22 = 138412290;
    v23 = v18;
    _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_DEFAULT, "Couldn't create a default %@ calendar", &v22, 0xCu);
  }

  v19 = 0;
LABEL_15:
  CFRelease(v7);

  return v19;
}

- (void)_getDefaultCalendarsTasksIfNeededForPrincipal:(id)principal
{
  principalCopy = principal;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  calendars = [principalCopy calendars];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__CalDAVCalendarPropertyRefreshOperation__getDefaultCalendarsTasksIfNeededForPrincipal___block_invoke;
  v17[3] = &unk_278D66B68;
  v17[4] = &v22;
  v17[5] = &v18;
  [calendars enumerateObjectsUsingBlock:v17];

  if ([principalCopy isEnabledForEvents] && (v23[3] & 1) == 0)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v8 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_242742000, v8, OS_LOG_TYPE_DEFAULT, "This account is enabled for events, but has no event calendar. We're going to create a default one", v16, 2u);
    }

    v9 = [(CalDAVCalendarPropertyRefreshOperation *)self _getDefaultMkCalendarForPrincipalTaskGroup:principalCopy isEventCalendar:1];
    outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v9];

    [v9 startTaskGroup];
  }

  if ([principalCopy isEnabledForTodos] && (v19[3] & 1) == 0)
  {
    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v12 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v13 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v12];

    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_242742000, v13, OS_LOG_TYPE_DEFAULT, "This account is enabled for tasks, but has no task calendar. We're going to create a default one", v16, 2u);
    }

    v14 = [(CalDAVCalendarPropertyRefreshOperation *)self _getDefaultMkCalendarForPrincipalTaskGroup:principalCopy isEventCalendar:0];
    outstandingTaskGroups2 = [(CalDAVOperation *)self outstandingTaskGroups];
    [outstandingTaskGroups2 addObject:v14];

    [v14 startTaskGroup];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t __88__CalDAVCalendarPropertyRefreshOperation__getDefaultCalendarsTasksIfNeededForPrincipal___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([v7 isSubscribed] & 1) == 0 && (objc_msgSend(v7, "isScheduleInbox") & 1) == 0 && (objc_msgSend(v7, "isScheduleOutbox") & 1) == 0 && (objc_msgSend(v7, "isNotification") & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) |= [v7 isEventContainer];
    *(*(*(a1 + 40) + 8) + 24) |= [v7 isTaskContainer];
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v5 = 0;
    }

    *a3 = v5 & 1;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)containerInfoTask:(id)task completedWithContainers:(id)containers error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  containersCopy = containers;
  errorCopy = error;
  v12 = taskCopy;
  principal = [(CalDAVOperation *)self principal];
  v14 = principal;
  if (errorCopy)
  {
    objc_storeStrong(&self->_savedError, error);
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v17 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = errorCopy;
      _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_ERROR, "Encountered an error while getting calendar info: %@", buf, 0xCu);
    }

LABEL_19:
    goto LABEL_20;
  }

  if (!self->_isSecondRefresh)
  {
    calendarHomeURL = [principal calendarHomeURL];
    mEMORY[0x277CFDC18] = [v12 containerForURL:calendarHomeURL];

    if (mEMORY[0x277CFDC18])
    {
      pushTransports = [mEMORY[0x277CFDC18] pushTransports];
      [v14 setPushTransports:pushTransports];

      pushKey = [mEMORY[0x277CFDC18] pushKey];
      [v14 setCalendarHomePushKey:pushKey];

      v21 = MEMORY[0x277CCABB0];
      quotaAvailable = [mEMORY[0x277CFDC18] quotaAvailable];
      v23 = [v21 numberWithInteger:{objc_msgSend(quotaAvailable, "intValue")}];
      [v14 setQuotaFreeBytes:v23];

      privileges = [mEMORY[0x277CFDC18] privileges];
      if ([privileges count])
      {
        hasBindPrivileges = [mEMORY[0x277CFDC18] hasBindPrivileges];
      }

      else
      {
        hasBindPrivileges = 1;
      }

      [v14 setCanCreateCalendars:hasBindPrivileges];

      syncToken = [mEMORY[0x277CFDC18] syncToken];
      [(CalDAVCalendarPropertyRefreshOperation *)self setCalendarHomeSyncToken:syncToken];

      supportedCalendarComponentSets = [mEMORY[0x277CFDC18] supportedCalendarComponentSets];
      [v14 setSupportedCalendarComponentSets:supportedCalendarComponentSets];
    }

    else
    {
      supportedCalendarComponentSets = [MEMORY[0x277CFDC18] sharedLogging];
      v27 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
      v28 = [supportedCalendarComponentSets logHandleForAccountInfoProvider:v27];

      if (v28)
      {
        v29 = v28;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          calendarHomeURL2 = [v14 calendarHomeURL];
          *buf = 138412290;
          v35 = calendarHomeURL2;
          _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_DEFAULT, "Didn't find a home container for the principal at %@", buf, 0xCu);
        }
      }
    }

    [(CalDAVCalendarPropertyRefreshOperation *)self _continueHandleContainerInfoTask:v12 completedWithContainers:containersCopy error:0];
    goto LABEL_19;
  }

  [(CalDAVCalendarPropertyRefreshOperation *)self _continueHandleContainerInfoTask:v12 completedWithContainers:containersCopy error:0];
LABEL_20:
  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
}

id __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {

    return [result _finishRefresh];
  }

  return result;
}

- (void)containerInfoSyncTask:(id)task retrievedAddedOrModifiedContainers:(id)containers removedContainerURLs:(id)ls
{
  v62 = *MEMORY[0x277D85DE8];
  containersCopy = containers;
  lsCopy = ls;
  principal = [(CalDAVOperation *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  absoluteString = [calendarHomeURL absoluteString];
  appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];

  v12 = appendSlashIfNeeded;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = containersCopy;
  v44 = appendSlashIfNeeded;
  v47 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v47)
  {
    v13 = *v53;
    v45 = *v53;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        v16 = [v15 url];
        absoluteString2 = [v16 absoluteString];
        appendSlashIfNeeded2 = [absoluteString2 appendSlashIfNeeded];

        if ([appendSlashIfNeeded2 isEqualToString:v12])
        {
          mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
          v20 = *MEMORY[0x277CFDD48];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v20));
          v22 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

          if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v58 = appendSlashIfNeeded2;
            _os_log_impl(&dword_242742000, v22, OS_LOG_TYPE_INFO, "Modified Calendar Found in Report Is 'Calendar Home Collection' : %@", buf, 0xCu);
          }

          pushTransports = [v15 pushTransports];

          if (pushTransports)
          {
            mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
            v25 = objc_loadWeakRetained((&self->super.super.super.isa + v20));
            v26 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v25];

            if (v26)
            {
              v27 = v26;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                principal2 = [(CalDAVOperation *)self principal];
                pushTransports2 = [principal2 pushTransports];
                pushTransports3 = [v15 pushTransports];
                *buf = 138412546;
                v58 = pushTransports2;
                v59 = 2112;
                v60 = pushTransports3;
                _os_log_impl(&dword_242742000, v27, OS_LOG_TYPE_INFO, "Updating Push-transports for 'Calendar Home Collection' From {\n%@\n} To: {\n%@\n}", buf, 0x16u);

                v12 = v44;
              }
            }

            pushTransports4 = [v15 pushTransports];
            principal3 = [(CalDAVOperation *)self principal];
            [principal3 setPushTransports:pushTransports4];

            v13 = v45;
          }
        }

        [(CalDAVCalendarPropertyRefreshOperation *)self _handleUpdateForCalendar:v15];
      }

      v47 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v47);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = lsCopy;
  v34 = [v33 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v49;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v48 + 1) + 8 * j);
        delegate = [(CoreDAVTaskGroup *)self delegate];
        v40 = objc_opt_respondsToSelector();

        if (v40)
        {
          delegate2 = [(CoreDAVTaskGroup *)self delegate];
          [delegate2 calendarRefreshFoundDeletedContainerURL:v38];
        }

        principal4 = [(CalDAVOperation *)self principal];
        [principal4 removecalendarWithURL:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v35);
  }
}

- (void)containerInfoSyncTask:(id)task completedWithNewSyncToken:(id)token error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  tokenCopy = token;
  errorCopy = error;
  if (errorCopy || ![tokenCopy length])
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v13 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        principal = [(CalDAVOperation *)self principal];
        calendarHomeURL = [principal calendarHomeURL];
        *buf = 138412802;
        v24 = calendarHomeURL;
        v25 = 2112;
        v26 = tokenCopy;
        v27 = 2112;
        v28 = errorCopy;
        _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_DEFAULT, "Sync report against %@ failed with error %@ or no sync token %@. Retrying sync with a PROPFIND", buf, 0x20u);
      }
    }

    principal2 = [(CalDAVOperation *)self principal];
    [principal2 setCalendarHomeSyncToken:0];

    outstandingTasksGroup = self->_outstandingTasksGroup;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke_395;
    v21[3] = &unk_278D66940;
    v21[4] = self;
    v19 = MEMORY[0x277D85CD0];
    v20 = v21;
  }

  else
  {
    [(CalDAVCalendarPropertyRefreshOperation *)self setCalendarHomeSyncToken:tokenCopy];
    outstandingTasksGroup = self->_outstandingTasksGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke;
    block[3] = &unk_278D66940;
    block[4] = self;
    v19 = MEMORY[0x277D85CD0];
    v20 = block;
  }

  dispatch_group_notify(outstandingTasksGroup, v19, v20);
}

void *__96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    return [result _finishRefresh];
  }

  return result;
}

void *__96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke_395(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    return [result _reallyRefreshCalendarProperties];
  }

  return result;
}

void __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"CalDAVCalendarPropertyRefreshOperation.m" lineNumber:240 description:@"prepareCalendarsForSyncWithCompletionBlock should only get called back once"];

  *a3 = *(*a2 + 8);
}

void __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end