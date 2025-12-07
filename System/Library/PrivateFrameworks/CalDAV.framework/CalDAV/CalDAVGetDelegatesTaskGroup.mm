@interface CalDAVGetDelegatesTaskGroup
- (CalDAVGetDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager;
- (void)_expandProperties;
- (void)_finishWithError:(id)error state:(int)state;
- (void)_getChildProperties;
- (void)_getGroupMembershipForURL:(id)l state:(int)state;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVGetDelegatesTaskGroup

- (CalDAVGetDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = CalDAVGetDelegatesTaskGroup;
  v5 = [(CalDAVGetDelegatesBaseTaskGroup *)&v9 initWithAccountInfoProvider:provider principalURL:l taskManager:manager];
  v6 = v5;
  if (v5)
  {
    [(CalDAVGetDelegatesTaskGroup *)v5 setState:0];
    array = [MEMORY[0x277CBEB18] array];
    [(CalDAVGetDelegatesTaskGroup *)v6 setNestedGroupPrincipalURLs:array];
  }

  return v6;
}

- (void)_finishWithError:(id)error state:(int)state
{
  v4 = *&state;
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(CalDAVGetDelegatesTaskGroup *)self setState:v4];
  if (v4 == 10)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    v8 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
    v9 = v8;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_ERROR, "Finishing %{public}@ early because state machine reached an unexpected state.", &v12, 0xCu);
    }
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

- (void)_expandProperties
{
  [(CalDAVGetDelegatesTaskGroup *)self setState:1];
  _mappingsForPrincipalDetails = [(CalDAVGetDelegatesBaseTaskGroup *)self _mappingsForPrincipalDetails];
  v3 = objc_alloc(MEMORY[0x277CFDBC0]);
  principalURL = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v5 = *MEMORY[0x277CFDE90];
  v6 = [v3 initWithPropertiesToFind:_mappingsForPrincipalDetails atURL:principalURL expandedName:@"calendar-proxy-read-for" expandedNameSpace:*MEMORY[0x277CFDE90]];

  [v6 addPropertyToExpandWithPropertiesToFind:_mappingsForPrincipalDetails expandedName:@"calendar-proxy-write-for" expandedNameSpace:v5];
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v6];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v6 setAccountInfoProvider:accountInfoProvider];

  [v6 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v6];
}

- (void)_getGroupMembershipForURL:(id)l state:(int)state
{
  v4 = *&state;
  lCopy = l;
  [(CalDAVGetDelegatesTaskGroup *)self setState:v4];
  v7 = objc_alloc(MEMORY[0x277CFDBE8]);
  v14 = [v7 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF30] parseClass:objc_opt_class()];
  v8 = objc_alloc(MEMORY[0x277CFDC68]);
  v9 = [MEMORY[0x277CBEB98] setWithObject:v14];
  v10 = [v8 initWithPropertiesToFind:v9 atURL:lCopy withDepth:2];

  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v10];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v10 setAccountInfoProvider:accountInfoProvider];

  [v10 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v10];
}

- (void)_getChildProperties
{
  nestedGroupPrincipalURLs = [(CalDAVGetDelegatesTaskGroup *)self nestedGroupPrincipalURLs];
  v8 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:nestedGroupPrincipalURLs];

  if (v8)
  {
    [(CalDAVGetDelegatesTaskGroup *)self _getGroupMembershipForURL:v8 state:3];
LABEL_8:

    return;
  }

  readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
  v8 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:readPrincipalURLs];

  if (v8)
  {
    selfCopy2 = self;
    v6 = 4;
LABEL_7:
    [(CalDAVGetDelegatesTaskGroup *)selfCopy2 setState:v6];
    [(CalDAVGetDelegatesBaseTaskGroup *)self _getPrincipalDetailsForURL:v8];
    goto LABEL_8;
  }

  writePrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
  v8 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:writePrincipalURLs];

  if (v8)
  {
    selfCopy2 = self;
    v6 = 5;
    goto LABEL_7;
  }

  [(CalDAVGetDelegatesTaskGroup *)self _finishWithError:0 state:11];
}

- (void)startTaskGroup
{
  if ([(CalDAVGetDelegatesBaseTaskGroup *)self serverSupportsExpandPropertyReport])
  {

    [(CalDAVGetDelegatesTaskGroup *)self _expandProperties];
  }

  else
  {
    principalURL = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
    [(CalDAVGetDelegatesTaskGroup *)self _getGroupMembershipForURL:principalURL state:2];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v62 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v8 = taskCopy;
  v9 = v8;
  if (errorCopy)
  {
    getTotalFailureError = errorCopy;
  }

  else
  {
    getTotalFailureError = [v8 getTotalFailureError];
  }

  v11 = getTotalFailureError;
  if ([(CalDAVGetDelegatesTaskGroup *)self state]!= 1)
  {
    if ([(CalDAVGetDelegatesTaskGroup *)self state]== 2)
    {
      if (v11)
      {
        selfCopy3 = self;
        v13 = v11;
        v14 = 7;
        goto LABEL_18;
      }

      v47 = errorCopy;
      v46 = v9;
      [v9 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF30]];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v45 = v57 = 0u;
      hrefs = [v45 hrefs];
      v23 = [hrefs countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (!v23)
      {
        goto LABEL_37;
      }

      v24 = v23;
      v25 = *v55;
LABEL_22:
      v26 = 0;
      while (1)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(hrefs);
        }

        v27 = *(*(&v54 + 1) + 8 * v26);
        payloadAsFullURL = [v27 payloadAsFullURL];
        v29 = payloadAsFullURL;
        if (!payloadAsFullURL)
        {
          mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
          v32 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
          nestedGroupPrincipalURLs = v32;
          if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v60 = v27;
            _os_log_impl(&dword_242742000, nestedGroupPrincipalURLs, OS_LOG_TYPE_ERROR, "Got a nil URL for delegate group membership with href = %@", buf, 0xCu);
          }

          goto LABEL_35;
        }

        mEMORY[0x277CFDC18] = [payloadAsFullURL CDVRawPath];
        if ([mEMORY[0x277CFDC18] hasSuffix:@"calendar-proxy-read/"])
        {
          readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
        }

        else
        {
          if (![mEMORY[0x277CFDC18] hasSuffix:@"calendar-proxy-write/"])
          {
            nestedGroupPrincipalURLs = [(CalDAVGetDelegatesTaskGroup *)self nestedGroupPrincipalURLs];
            [nestedGroupPrincipalURLs addObject:v29];
            goto LABEL_35;
          }

          readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
        }

        nestedGroupPrincipalURLs = readPrincipalURLs;
        cDVURLByDeletingLastPathComponent = [v29 CDVURLByDeletingLastPathComponent];
        [nestedGroupPrincipalURLs addObject:cDVURLByDeletingLastPathComponent];

LABEL_35:
        if (v24 == ++v26)
        {
          v24 = [hrefs countByEnumeratingWithState:&v54 objects:v61 count:16];
          if (!v24)
          {
LABEL_37:

            [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
            v35 = v45;
            goto LABEL_51;
          }

          goto LABEL_22;
        }
      }
    }

    if ([(CalDAVGetDelegatesTaskGroup *)self state]!= 3)
    {
      selfCopy3 = self;
      v13 = v11;
      v14 = 10;
      goto LABEL_18;
    }

    if (v11)
    {
      mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
      v16 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:0];
      v17 = v16;
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v11;
        _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_DEBUG, "Ignoring error fetching nested group, error: [%@]", buf, 0xCu);
      }

      [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
      goto LABEL_19;
    }

    v47 = errorCopy;
    v46 = v9;
    [v9 successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF30]];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v48 = v53 = 0u;
    obj = [v48 hrefs];
    v36 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (!v36)
    {
LABEL_50:

      [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
      v35 = v48;
LABEL_51:

      v9 = v46;
      errorCopy = v47;
      v11 = 0;
      goto LABEL_19;
    }

    v37 = v36;
    v38 = *v51;
LABEL_40:
    v39 = 0;
    while (1)
    {
      if (*v51 != v38)
      {
        objc_enumerationMutation(obj);
      }

      payloadAsFullURL2 = [*(*(&v50 + 1) + 8 * v39) payloadAsFullURL];
      cDVRawPath = [payloadAsFullURL2 CDVRawPath];
      if ([cDVRawPath hasSuffix:@"calendar-proxy-read/"])
      {
        break;
      }

      if ([cDVRawPath hasSuffix:@"calendar-proxy-write/"])
      {
        writePrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
        goto LABEL_47;
      }

LABEL_48:

      if (v37 == ++v39)
      {
        v37 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (!v37)
        {
          goto LABEL_50;
        }

        goto LABEL_40;
      }
    }

    writePrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
LABEL_47:
    v43 = writePrincipalURLs;
    cDVURLByDeletingLastPathComponent2 = [payloadAsFullURL2 CDVURLByDeletingLastPathComponent];
    [v43 addObject:cDVURLByDeletingLastPathComponent2];

    goto LABEL_48;
  }

  if (v11)
  {
    selfCopy3 = self;
    v13 = v11;
    v14 = 6;
LABEL_18:
    [(CalDAVGetDelegatesTaskGroup *)selfCopy3 _finishWithError:v13 state:v14];
    goto LABEL_19;
  }

  v18 = *MEMORY[0x277CFDE90];
  v19 = [v9 successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"calendar-proxy-write-for"];
  [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:v19 allowWrite:1];
  v20 = [v9 successfulValueForNameSpace:v18 elementName:@"calendar-proxy-read-for"];

  [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:v20 allowWrite:0];
  [(CalDAVGetDelegatesTaskGroup *)self _finishWithError:0 state:11];

LABEL_19:
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:v9];
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  groupCopy = group;
  errorCopy = error;
  state = [(CalDAVGetDelegatesTaskGroup *)self state];
  if (!errorCopy && ((v8 = state, [(CalDAVGetDelegatesTaskGroup *)self state]== 4) || v8 == 5))
  {
    v9 = groupCopy;
    principalResult = [v9 principalResult];

    if (principalResult)
    {
      if (v8 == 5)
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
      }

      else
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
      }
      v11 = ;
      principalResult2 = [v9 principalResult];
      [v11 addObject:principalResult2];
    }

    [(CalDAVGetDelegatesTaskGroup *)self _getChildProperties];
  }

  else
  {
    [(CalDAVGetDelegatesTaskGroup *)self _finishWithError:errorCopy state:10];
  }
}

@end