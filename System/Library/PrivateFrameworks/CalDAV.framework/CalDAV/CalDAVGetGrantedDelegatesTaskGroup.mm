@interface CalDAVGetGrantedDelegatesTaskGroup
- (CalDAVGetGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager;
- (id)_urlAppendingSegmentWithAllowWrite:(BOOL)write;
- (void)_expandPropertiesWithAllowWrite:(BOOL)write;
- (void)_fetchOnlyHrefs;
- (void)_finishWithError:(id)error state:(int)state;
- (void)_getChildProperties;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVGetGrantedDelegatesTaskGroup

- (CalDAVGetGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = CalDAVGetGrantedDelegatesTaskGroup;
  v5 = [(CalDAVGetDelegatesBaseTaskGroup *)&v8 initWithAccountInfoProvider:provider principalURL:l taskManager:manager];
  v6 = v5;
  if (v5)
  {
    [(CalDAVGetGrantedDelegatesTaskGroup *)v5 setState:0];
    [(CalDAVGetGrantedDelegatesTaskGroup *)v6 setFetchPrincipalDetails:1];
  }

  return v6;
}

- (void)_finishWithError:(id)error state:(int)state
{
  v4 = *&state;
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:v4];
  if (v4 == 9)
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

- (void)_fetchOnlyHrefs
{
  [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:3];
  v3 = objc_alloc(MEMORY[0x277CFDBE8]);
  v11 = [v3 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF28] parseClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CFDC68]);
  v5 = [MEMORY[0x277CBEB98] setWithObject:v11];
  principalURL = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v7 = [v4 initWithPropertiesToFind:v5 atURL:principalURL withDepth:3];

  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v7];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:accountInfoProvider];

  [v7 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v7];
}

- (id)_urlAppendingSegmentWithAllowWrite:(BOOL)write
{
  v4 = cdWriteProxyChildSegment;
  if (!write)
  {
    v4 = cdReadProxyChildSegment;
  }

  v5 = *v4;
  principalURL = [(CalDAVGetDelegatesBaseTaskGroup *)self principalURL];
  v7 = [principalURL CDVfixedURLByAppendingPathComponent:v5];

  return v7;
}

- (void)_expandPropertiesWithAllowWrite:(BOOL)write
{
  writeCopy = write;
  if (write)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:v5];
  v12 = [(CalDAVGetGrantedDelegatesTaskGroup *)self _urlAppendingSegmentWithAllowWrite:writeCopy];
  _mappingsForPrincipalDetails = [(CalDAVGetDelegatesBaseTaskGroup *)self _mappingsForPrincipalDetails];
  v7 = objc_alloc(MEMORY[0x277CFDBC0]);
  v8 = [v7 initWithPropertiesToFind:_mappingsForPrincipalDetails atURL:v12 expandedName:*MEMORY[0x277CFDF28] expandedNameSpace:*MEMORY[0x277CFDEF8]];
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v8];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v8 setAccountInfoProvider:accountInfoProvider];

  [v8 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v8];
}

- (void)_getChildProperties
{
  readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:readPrincipalURLs];

  if (v7)
  {
    selfCopy2 = self;
    v5 = 4;
LABEL_5:
    [(CalDAVGetGrantedDelegatesTaskGroup *)selfCopy2 setState:v5];
    [(CalDAVGetDelegatesBaseTaskGroup *)self _getPrincipalDetailsForURL:v7];

    return;
  }

  writePrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
  v7 = [(CalDAVGetDelegatesBaseTaskGroup *)self _popFromArray:writePrincipalURLs];

  if (v7)
  {
    selfCopy2 = self;
    v5 = 5;
    goto LABEL_5;
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _finishWithError:0 state:10];
}

- (void)startTaskGroup
{
  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self fetchPrincipalDetails]&& [(CalDAVGetDelegatesBaseTaskGroup *)self serverSupportsExpandPropertyReport])
  {
    [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:1];

    [(CalDAVGetGrantedDelegatesTaskGroup *)self _expandPropertiesWithAllowWrite:1];
  }

  else
  {

    [(CalDAVGetGrantedDelegatesTaskGroup *)self _fetchOnlyHrefs];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v59 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  state = [(CalDAVGetGrantedDelegatesTaskGroup *)self state];
  if (state == 1 || [(CalDAVGetGrantedDelegatesTaskGroup *)self state]== 2)
  {
    if (errorCopy)
    {
      getTotalFailureError = errorCopy;
    }

    else
    {
      getTotalFailureError = [taskCopy getTotalFailureError];
      if (!getTotalFailureError)
      {
        getTotalFailureError = [taskCopy successfulValueForNameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF28]];
        [(CalDAVGetDelegatesBaseTaskGroup *)self _processDetailsFromMultiStatus:getTotalFailureError allowWrite:state == 1];
        selfCopy2 = self;
        if (state == 1)
        {
          [(CalDAVGetGrantedDelegatesTaskGroup *)self setState:2];
          [(CalDAVGetGrantedDelegatesTaskGroup *)self _expandPropertiesWithAllowWrite:0];
          goto LABEL_8;
        }

        v11 = 0;
        v12 = 10;
LABEL_7:
        [(CalDAVGetGrantedDelegatesTaskGroup *)selfCopy2 _finishWithError:v11 state:v12];
LABEL_8:

        goto LABEL_14;
      }
    }

    selfCopy2 = self;
    v11 = getTotalFailureError;
    v12 = 6;
    goto LABEL_7;
  }

  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self state]!= 3)
  {
    selfCopy4 = self;
    v14 = errorCopy;
    v15 = 9;
    goto LABEL_13;
  }

  if (errorCopy)
  {
    selfCopy4 = self;
    v14 = errorCopy;
    v15 = 7;
LABEL_13:
    [(CalDAVGetGrantedDelegatesTaskGroup *)selfCopy4 _finishWithError:v14 state:v15];
    goto LABEL_14;
  }

  v39 = taskCopy;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  multiStatus = [taskCopy multiStatus];
  responses = [multiStatus responses];

  obj = responses;
  v19 = [responses countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v54;
    v41 = *MEMORY[0x277CFDEF8];
    v40 = *MEMORY[0x277CFDF28];
    v42 = *v54;
    do
    {
      v22 = 0;
      v43 = v20;
      do
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v53 + 1) + 8 * v22);
        if (([v23 hasPropertyError] & 1) == 0)
        {
          firstHref = [v23 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];
          cDVRawPath = [payloadAsFullURL CDVRawPath];

          v27 = [cDVRawPath hasSuffix:@"calendar-proxy-read/"];
          if ((v27 & 1) != 0 || [cDVRawPath hasSuffix:@"calendar-proxy-write/"])
          {
            successfulPropertiesToValues = [v23 successfulPropertiesToValues];
            v29 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v41 andName:v40];
            v47 = cDVRawPath;
            v48 = v22;
            v46 = successfulPropertiesToValues;
            if (v27)
            {
              readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self readPrincipalURLs];
              [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
            }

            else
            {
              readPrincipalURLs = [(CalDAVGetDelegatesBaseTaskGroup *)self writePrincipalURLs];
              [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
            }
            v31 = ;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v45 = v29;
            hrefs = [v29 hrefs];
            v33 = [hrefs countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v50;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v50 != v35)
                  {
                    objc_enumerationMutation(hrefs);
                  }

                  payloadAsFullURL2 = [*(*(&v49 + 1) + 8 * i) payloadAsFullURL];
                  if ([(CalDAVGetGrantedDelegatesTaskGroup *)self fetchPrincipalDetails])
                  {
                    [readPrincipalURLs addObject:payloadAsFullURL2];
                  }

                  else
                  {
                    v38 = objc_alloc_init(CalDAVPrincipalEmailDetailsResult);
                    [(CalDAVPrincipalEmailDetailsResult *)v38 setPrincipalURL:payloadAsFullURL2];
                    [v31 addObject:v38];
                  }
                }

                v34 = [hrefs countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v34);
            }

            v21 = v42;
            v20 = v43;
            cDVRawPath = v47;
            v22 = v48;
          }
        }

        ++v22;
      }

      while (v22 != v20);
      v20 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v20);
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _getChildProperties];
  errorCopy = 0;
  taskCopy = v39;
LABEL_14:
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:taskCopy];
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  errorCopy = error;
  state = [(CalDAVGetGrantedDelegatesTaskGroup *)self state];
  if (state == 5 || [(CalDAVGetGrantedDelegatesTaskGroup *)self state]== 4)
  {
    v9 = groupCopy;
    v10 = v9;
    if (errorCopy)
    {
      mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
      v12 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
      principalResult2 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = 138412290;
        v16 = errorCopy;
        _os_log_impl(&dword_242742000, principalResult2, OS_LOG_TYPE_DEBUG, "Ignoring error fetching delegate details, error: [%@]", &v15, 0xCu);
      }
    }

    else
    {
      principalResult = [v9 principalResult];

      if (!principalResult)
      {
LABEL_14:
        [(CalDAVGetGrantedDelegatesTaskGroup *)self _getChildProperties];

        goto LABEL_15;
      }

      if (state == 5)
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
      }

      else
      {
        [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
      }
      mEMORY[0x277CFDC18] = ;
      principalResult2 = [v10 principalResult];
      [mEMORY[0x277CFDC18] addObject:principalResult2];
    }

    goto LABEL_14;
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self _finishWithError:errorCopy state:9];
LABEL_15:
}

@end