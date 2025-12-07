@interface CoreDAVContainerInfoTaskGroup
- (CoreDAVContainerInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls taskManager:(id)manager;
- (NSString)description;
- (id)_copyContainerWithURL:(id)l andProperties:(id)properties;
- (void)_getContainerHomeSet;
- (void)_getContainerTopLevelInfo;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)startTaskGroup;
- (void)taskGroupWillCancelWithError:(id)error;
@end

@implementation CoreDAVContainerInfoTaskGroup

- (CoreDAVContainerInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls taskManager:(id)manager
{
  lsCopy = ls;
  v13.receiver = self;
  v13.super_class = CoreDAVContainerInfoTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v13 initWithAccountInfoProvider:provider taskManager:manager];
  if (v9)
  {
    v10 = [lsCopy mutableCopy];
    containerURLs = v9->_containerURLs;
    v9->_containerURLs = v10;

    [(CoreDAVContainerInfoTaskGroup *)v9 setContainerInfoDepth:3];
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: Phase %d URLs %@", v5, self, self->_phase, self->_containerURLs];

  return v6;
}

- (void)startTaskGroup
{
  containerURLs = self->_containerURLs;
  if (containerURLs && [(NSMutableSet *)containerURLs count])
  {

    [(CoreDAVContainerInfoTaskGroup *)self _getContainerTopLevelInfo];
  }

  else
  {

    [(CoreDAVContainerInfoTaskGroup *)self _getContainerHomeSet];
  }
}

- (void)taskGroupWillCancelWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  selfCopy = self;
  delegate = [(CoreDAVTaskGroup *)selfCopy delegate];
  [delegate containerInfoTask:selfCopy completedWithContainers:0 error:errorCopy];
  v7.receiver = selfCopy;
  v7.super_class = CoreDAVContainerInfoTaskGroup;
  [(CoreDAVTaskGroup *)&v7 taskGroupWillCancelWithError:errorCopy];
}

- (void)_getContainerHomeSet
{
  self->_phase = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v9 CDVAddItemParserMappingWithNameSpace:self->_appSpecificHomeSetPropNameSpace name:self->_appSpecificHomeSetPropName parseClass:objc_opt_class()];
  v3 = [CoreDAVPropFindTask alloc];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  principalURL = [WeakRetained principalURL];
  v6 = [(CoreDAVPropFindTask *)v3 initWithPropertiesToFind:v9 atURL:principalURL withDepth:2];

  [(NSMutableSet *)self->super._outstandingTasks addObject:v6];
  [(CoreDAVTask *)v6 setDelegate:self];
  v7 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v6 setAccountInfoProvider:v7];

  [(CoreDAVTask *)v6 setTimeoutInterval:self->super._timeoutInterval];
  v8 = objc_loadWeakRetained(&self->super._taskManager);
  [v8 submitQueuedCoreDAVTask:v6];
}

- (void)_getContainerTopLevelInfo
{
  v17 = *MEMORY[0x277D85DE8];
  self->_phase = 1;
  _copyContainerParserMappings = [(CoreDAVContainerInfoTaskGroup *)self _copyContainerParserMappings];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = self->_containerURLs;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [[CoreDAVPropFindTask alloc] initWithPropertiesToFind:_copyContainerParserMappings atURL:*(*(&v12 + 1) + 8 * v7) withDepth:[(CoreDAVContainerInfoTaskGroup *)self containerInfoDepthForURL:*(*(&v12 + 1) + 8 * v7)]];
        [(NSMutableSet *)self->super._outstandingTasks addObject:v8];
        [(CoreDAVTask *)v8 setDelegate:self];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        [(CoreDAVTask *)v8 setAccountInfoProvider:WeakRetained];

        [(CoreDAVTask *)v8 setTimeoutInterval:self->super._timeoutInterval];
        v10 = objc_loadWeakRetained(&self->super._taskManager);
        [v10 submitQueuedCoreDAVTask:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v111 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    goto LABEL_82;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (errorCopy)
  {
    [(CoreDAVTaskGroup *)self bailWithError:errorCopy];
    goto LABEL_82;
  }

  phase = self->_phase;
  if (phase == 1)
  {
    v84 = taskCopy;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v58 = responsesCopy;
    v59 = [v58 countByEnumeratingWithState:&v92 objects:v104 count:16];
    if (v59)
    {
      v60 = v59;
      v78 = responsesCopy;
      v88 = 0;
      v61 = *v93;
      do
      {
        v62 = 0;
        v90 = v60;
        do
        {
          if (*v93 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v92 + 1) + 8 * v62);
          firstHref = [v63 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];

          if (payloadAsFullURL)
          {
            successfulPropertiesToValues = [v63 successfulPropertiesToValues];
            v67 = [(CoreDAVContainerInfoTaskGroup *)self _copyContainerWithURL:payloadAsFullURL andProperties:successfulPropertiesToValues];
            if ([v67 isUnauthenticated])
            {
              v68 = v61;
              v69 = v58;
              v70 = +[CoreDAVLogging sharedLogging];
              WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
              v72 = [v70 logHandleForAccountInfoProvider:WeakRetained];

              if (v72 && os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2452FB000, v72, OS_LOG_TYPE_DEFAULT, "Not authenticated to get Collection", buf, 2u);
              }

              v58 = v69;
              v61 = v68;
              v60 = v90;
            }

            else
            {
              containers = self->_containers;
              if (!containers)
              {
                v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v76 = self->_containers;
                self->_containers = v75;

                containers = self->_containers;
              }

              [(NSMutableSet *)containers addObject:v67];
              v88 = 1;
            }
          }

          else
          {
            successfulPropertiesToValues = +[CoreDAVLogging sharedLogging];
            v73 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v67 = [successfulPropertiesToValues logHandleForAccountInfoProvider:v73];

            if (v67 && os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v107 = v63;
              _os_log_impl(&dword_2452FB000, v67, OS_LOG_TYPE_DEFAULT, "Could not find the first HREF's URL. Response is %@", buf, 0xCu);
            }
          }

          ++v62;
        }

        while (v60 != v62);
        v60 = [v58 countByEnumeratingWithState:&v92 objects:v104 count:16];
      }

      while (v60);

      responsesCopy = v78;
      if (v88)
      {
        taskCopy = v84;
        errorCopy = 0;
        if (![(NSMutableSet *)self->super._outstandingTasks count])
        {
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __68__CoreDAVContainerInfoTaskGroup_propFindTask_parsedResponses_error___block_invoke;
          v91[3] = &unk_278E30F18;
          v91[4] = self;
          [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v91];
        }

        goto LABEL_82;
      }
    }

    else
    {
    }

    [(CoreDAVTaskGroup *)self bailWithError:0];
    taskCopy = v84;
    goto LABEL_81;
  }

  errorCopy = 0;
  if (phase)
  {
    goto LABEL_82;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  containerURLs = self->_containerURLs;
  self->_containerURLs = v12;

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v14 = responsesCopy;
  v15 = [v14 countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (!v15)
  {

    goto LABEL_78;
  }

  v16 = v15;
  v77 = responsesCopy;
  v83 = taskCopy;
  v82 = 0;
  v89 = *v101;
  v85 = v14;
  do
  {
    v17 = 0;
    v86 = v16;
    do
    {
      if (*v101 != v89)
      {
        objc_enumerationMutation(v14);
      }

      successfulPropertiesToValues2 = [*(*(&v100 + 1) + 8 * v17) successfulPropertiesToValues];
      v19 = [successfulPropertiesToValues2 CDVObjectForKeyWithNameSpace:self->_appSpecificHomeSetPropNameSpace andName:self->_appSpecificHomeSetPropName];
      v20 = v19;
      if (!v19)
      {
        hrefsAsFullURLs = +[CoreDAVLogging sharedLogging];
        v28 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v24 = [hrefsAsFullURLs logHandleForAccountInfoProvider:v28];

        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v107 = successfulPropertiesToValues2;
          v25 = v24;
          v26 = "Got malformed xml from server. Found Values are %@";
          v27 = 12;
LABEL_19:
          _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
        }

LABEL_20:

        goto LABEL_51;
      }

      unauthenticated = [v19 unauthenticated];

      if (unauthenticated)
      {
        hrefsAsFullURLs = +[CoreDAVLogging sharedLogging];
        v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v24 = [hrefsAsFullURLs logHandleForAccountInfoProvider:v23];

        if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v25 = v24;
          v26 = "Not authenticated to get Container set";
          v27 = 2;
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      hrefs = [v20 hrefs];
      v30 = [hrefs count];

      if (!v30)
      {
        v39 = +[CoreDAVLogging sharedLogging];
        v40 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        cDVServerURL = [v39 logHandleForAccountInfoProvider:v40];

        if (cDVServerURL && os_log_type_enabled(cDVServerURL, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v107 = v20;
          _os_log_impl(&dword_2452FB000, cDVServerURL, OS_LOG_TYPE_DEFAULT, "Got malformed xml from server. Container set %@", buf, 0xCu);
        }

        goto LABEL_42;
      }

      hrefs2 = [v20 hrefs];
      anyObject = [hrefs2 anyObject];
      payloadAsFullURL2 = [anyObject payloadAsFullURL];

      v34 = [v83 url];
      cDVServerURL = [v34 CDVServerURL];

      v87 = payloadAsFullURL2;
      cDVServerURL2 = [payloadAsFullURL2 CDVServerURL];
      if (([cDVServerURL isEqual:cDVServerURL2]& 1) == 0)
      {
        scheme = [cDVServerURL2 scheme];
        scheme2 = [cDVServerURL scheme];
        if ([scheme isEqualToString:scheme2])
        {

LABEL_29:
          host = [cDVServerURL2 host];
          host2 = [cDVServerURL host];
          v44 = [host isEqualToString:host2];

          if (v44)
          {
            goto LABEL_41;
          }

          v45 = +[CoreDAVLogging sharedLogging];
          v46 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v47 = [v45 logHandleForAccountInfoProvider:v46];

          if (v47)
          {
            v48 = v47;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              host3 = [cDVServerURL host];
              host4 = [cDVServerURL2 host];
              *buf = 138412546;
              v107 = host3;
              v108 = 2112;
              v109 = host4;
              _os_log_impl(&dword_2452FB000, v48, OS_LOG_TYPE_DEFAULT, "HomeSet is in another castle.  Was %@, is now %@", buf, 0x16u);
            }
          }

          accountInfoProvider = [v83 accountInfoProvider];
          v50 = objc_opt_respondsToSelector();

          if ((v50 & 1) == 0)
          {
            goto LABEL_41;
          }

          accountInfoProvider2 = [v83 accountInfoProvider];
          [accountInfoProvider2 noteHomeSetOnDifferentHost:cDVServerURL2];
        }

        else
        {
          scheme3 = [cDVServerURL2 scheme];
          v80 = [scheme3 isEqualToString:@"https"];

          if (v80)
          {
            goto LABEL_29;
          }

          accountInfoProvider2 = +[CoreDAVLogging sharedLogging];
          v52 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v53 = [accountInfoProvider2 logHandleForAccountInfoProvider:v52];

          if (v53 && os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v107 = cDVServerURL2;
            _os_log_impl(&dword_2452FB000, v53, OS_LOG_TYPE_DEFAULT, "Ignoring host change to: %@ because it sends it to an insecure URL.", buf, 0xCu);
          }
        }
      }

LABEL_41:

      v39 = v87;
LABEL_42:

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      hrefsAsFullURLs = [v20 hrefsAsFullURLs];
      v54 = [hrefsAsFullURLs countByEnumeratingWithState:&v96 objects:v105 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v97;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v97 != v56)
            {
              objc_enumerationMutation(hrefsAsFullURLs);
            }

            [(NSMutableSet *)self->_containerURLs addObject:*(*(&v96 + 1) + 8 * i)];
          }

          v55 = [hrefsAsFullURLs countByEnumeratingWithState:&v96 objects:v105 count:16];
        }

        while (v55);
        v82 = 1;
      }

      v14 = v85;
      v16 = v86;
LABEL_51:

      ++v17;
    }

    while (v17 != v16);
    v16 = [v14 countByEnumeratingWithState:&v100 objects:v110 count:16];
  }

  while (v16);

  taskCopy = v83;
  responsesCopy = v77;
  if (v82)
  {
    [(CoreDAVContainerInfoTaskGroup *)self _getContainerTopLevelInfo];
    goto LABEL_81;
  }

LABEL_78:
  [(CoreDAVTaskGroup *)self bailWithError:0];
LABEL_81:
  errorCopy = 0;
LABEL_82:
}

void __68__CoreDAVContainerInfoTaskGroup_propFindTask_parsedResponses_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 containerInfoTask:*(a1 + 32) completedWithContainers:*(*(a1 + 32) + 104) error:0];
}

- (id)_copyContainerWithURL:(id)l andProperties:(id)properties
{
  propertiesCopy = properties;
  lCopy = l;
  v7 = [[CoreDAVContainer alloc] initWithURL:lCopy andProperties:propertiesCopy];

  return v7;
}

@end