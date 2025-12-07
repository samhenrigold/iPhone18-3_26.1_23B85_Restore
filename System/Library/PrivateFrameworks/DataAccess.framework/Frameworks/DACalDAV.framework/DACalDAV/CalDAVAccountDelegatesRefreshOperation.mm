@interface CalDAVAccountDelegatesRefreshOperation
- (void)refreshDelegates;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVAccountDelegatesRefreshOperation

- (void)refreshDelegates
{
  v3 = objc_alloc(MEMORY[0x277CF7000]);
  principal = [(CalDAVOperation *)self principal];
  principal2 = [(CalDAVOperation *)self principal];
  principalURL = [principal2 principalURL];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v10 = [v3 initWithAccountInfoProvider:principal principalURL:principalURL taskManager:taskManager];

  [v10 setDelegate:self];
  principal3 = [(CalDAVOperation *)self principal];
  [v10 setServerSupportsExpandPropertyReport:{objc_msgSend(principal3, "isExpandPropertyReportSupported")}];

  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v10];

  [v10 startTaskGroup];
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  errorCopy = error;
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups removeObject:groupCopy];

  if (errorCopy)
  {
    dictionary = 0;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v33 = groupCopy;
    readWritePrincipalDetails = [groupCopy readWritePrincipalDetails];
    v11 = [readWritePrincipalDetails countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(readWritePrincipalDetails);
          }

          v15 = *(*(&v41 + 1) + 8 * i);
          principalURL = [v15 principalURL];
          relativePath = [principalURL relativePath];
          da_appendSlashIfNeeded = [relativePath da_appendSlashIfNeeded];

          v19 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v15 allowWrite:1];
          [dictionary setObject:v19 forKeyedSubscript:da_appendSlashIfNeeded];
        }

        v12 = [readWritePrincipalDetails countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v12);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    readOnlyPrincipalDetails = [v33 readOnlyPrincipalDetails];
    v21 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(readOnlyPrincipalDetails);
          }

          v25 = *(*(&v37 + 1) + 8 * j);
          principalURL2 = [v25 principalURL];
          relativePath2 = [principalURL2 relativePath];
          da_appendSlashIfNeeded2 = [relativePath2 da_appendSlashIfNeeded];

          v29 = [dictionary objectForKeyedSubscript:da_appendSlashIfNeeded2];

          if (!v29)
          {
            v30 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v25 allowWrite:0];
            [dictionary setObject:v30 forKeyedSubscript:da_appendSlashIfNeeded2];
          }
        }

        v22 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v22);
    }

    groupCopy = v33;
    errorCopy = 0;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke;
  v34[3] = &unk_278F17EA8;
  v34[4] = self;
  v35 = dictionary;
  v36 = errorCopy;
  v31 = dictionary;
  v32 = errorCopy;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v32 delegateCallbackBlock:v34];
}

void __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mdelegate];
  v2 = [*(a1 + 32) principal];
  [v3 delegateRefreshForPrincipal:v2 completedWithDelegateUserInfo:*(a1 + 40) error:*(a1 + 48)];
}

@end