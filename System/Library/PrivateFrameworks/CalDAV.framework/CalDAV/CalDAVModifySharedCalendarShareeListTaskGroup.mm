@interface CalDAVModifySharedCalendarShareeListTaskGroup
- (CalDAVModifySharedCalendarShareeListTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (CalDAVModifySharedCalendarShareeListTaskGroup)initWithShareesToSet:(id)set shareesToRemove:(id)remove muteNotifications:(BOOL)notifications summary:(id)summary atCalendarURL:(id)l accountInfoProvider:(id)provider taskManager:(id)manager;
- (id)generateModificationMessageBody;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CalDAVModifySharedCalendarShareeListTaskGroup

- (CalDAVModifySharedCalendarShareeListTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (CalDAVModifySharedCalendarShareeListTaskGroup)initWithShareesToSet:(id)set shareesToRemove:(id)remove muteNotifications:(BOOL)notifications summary:(id)summary atCalendarURL:(id)l accountInfoProvider:(id)provider taskManager:(id)manager
{
  notificationsCopy = notifications;
  setCopy = set;
  removeCopy = remove;
  summaryCopy = summary;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = CalDAVModifySharedCalendarShareeListTaskGroup;
  v19 = [(CoreDAVTaskGroup *)&v22 initWithAccountInfoProvider:provider taskManager:manager];
  v20 = v19;
  if (v19)
  {
    [(CalDAVModifySharedCalendarShareeListTaskGroup *)v19 setShareesToRemove:removeCopy];
    [(CalDAVModifySharedCalendarShareeListTaskGroup *)v20 setShareesToSet:setCopy];
    [(CalDAVModifySharedCalendarShareeListTaskGroup *)v20 setCalendarURL:lCopy];
    [(CalDAVModifySharedCalendarShareeListTaskGroup *)v20 setSummary:summaryCopy];
    [(CalDAVModifySharedCalendarShareeListTaskGroup *)v20 setInvalidSharees:0];
    [(CalDAVModifySharedCalendarShareeListTaskGroup *)v20 setMuteNotifications:notificationsCopy];
  }

  return v20;
}

- (void)startTaskGroup
{
  v3 = [CalDAVModifySharedCalendarShareeListPostTask alloc];
  generateModificationMessageBody = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self generateModificationMessageBody];
  calendarURL = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self calendarURL];
  v8 = [(CoreDAVPostTask *)v3 initWithDataPayload:generateModificationMessageBody dataContentType:@"text/xml" atURL:calendarURL previousETag:0];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CalDAVModifySharedCalendarShareeListPostTask *)v8 setAccountInfoProvider:accountInfoProvider];

  [(CalDAVModifySharedCalendarShareeListPostTask *)v8 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v8];
}

- (id)generateModificationMessageBody
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFDCA0]);
  v4 = *MEMORY[0x277CFDE90];
  [v3 startElement:? inNamespace:? withAttributeNamesAndValues:?];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self shareesToSet];
  v5 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v38 = *v46;
    v36 = *MEMORY[0x277CFDF38];
    v34 = *MEMORY[0x277CFDEF8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        [v3 startElement:@"set" inNamespace:v4 withAttributeNamesAndValues:0];
        href = [v8 href];
        payloadAsString = [href payloadAsString];
        [v3 appendElement:v36 inNamespace:v34 withStringContent:payloadAsString withAttributeNamesAndValues:0];

        commonName = [v8 commonName];
        payloadAsString2 = [commonName payloadAsString];
        [v3 appendElement:@"common-name" inNamespace:v4 withStringContent:payloadAsString2 withAttributeNamesAndValues:0];

        summary = [(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy summary];
        [v3 appendElement:@"summary" inNamespace:v4 withStringContent:summary withAttributeNamesAndValues:0];

        access = [v8 access];
        accessLevel = [access accessLevel];

        name = [accessLevel name];

        if (name)
        {
          name2 = [accessLevel name];
          nameSpace = [accessLevel nameSpace];
          [v3 appendElement:name2 inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        [v3 endElement:@"set" inNamespace:v4];
      }

      v6 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v6);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  shareesToRemove = [(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy shareesToRemove];
  v19 = [shareesToRemove countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    v39 = *MEMORY[0x277CFDF38];
    v37 = *MEMORY[0x277CFDEF8];
    obja = *MEMORY[0x277CFDFA0];
    v31 = *MEMORY[0x277CFE050];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(shareesToRemove);
        }

        v23 = *(*(&v41 + 1) + 8 * j);
        href2 = [v23 href];
        payloadAsString3 = [href2 payloadAsString];
        v26 = [payloadAsString3 length];

        if (v26)
        {
          [v3 startElement:@"remove" inNamespace:v4 withAttributeNamesAndValues:0];
          href3 = [v23 href];
          payloadAsString4 = [href3 payloadAsString];
          [v3 appendElement:v39 inNamespace:v37 withStringContent:payloadAsString4 withAttributeNamesAndValues:0];

          if ([(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy muteNotifications])
          {
            [v3 appendElement:obja inNamespace:v31 withStringContent:0 withAttributeNamesAndValues:0];
          }

          [v3 endElement:@"remove" inNamespace:v4];
        }
      }

      v20 = [shareesToRemove countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v20);
  }

  [v3 endElement:@"share" inNamespace:v4];
  data = [v3 data];

  return data;
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v73 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if (!errorCopy)
  {
    if ([taskCopy responseStatusCode] == 207)
    {
      selfCopy = self;
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v50 = taskCopy;
      responseBodyParser = [taskCopy responseBodyParser];
      [responseBodyParser rootElement];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v48 = v67 = 0u;
      obj = [v48 responses];
      v9 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v65;
        v51 = *v65;
        do
        {
          v12 = 0;
          v52 = v10;
          do
          {
            if (*v65 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v64 + 1) + 8 * v12);
            status = [v13 status];
            payloadAsString = [status payloadAsString];
            v16 = [payloadAsString CDVIsHTTPStatusLineWithStatusCode:403];

            if (v16)
            {
              v55 = v12;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              hrefs = [v13 hrefs];
              v18 = [hrefs countByEnumeratingWithState:&v60 objects:v71 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v61;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v61 != v20)
                    {
                      objc_enumerationMutation(hrefs);
                    }

                    v22 = *(*(&v60 + 1) + 8 * i);
                    payloadAsFullURL = [v22 payloadAsFullURL];
                    absoluteString = [payloadAsFullURL absoluteString];

                    if (absoluteString)
                    {
                      [v8 addObject:absoluteString];
                    }

                    else
                    {
                      mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
                      v26 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
                      v27 = v26;
                      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v70 = v22;
                        _os_log_impl(&dword_242742000, v27, OS_LOG_TYPE_ERROR, "HREF had unusable URL payload, %@", buf, 0xCu);
                      }
                    }
                  }

                  v19 = [hrefs countByEnumeratingWithState:&v60 objects:v71 count:16];
                }

                while (v19);
              }

              v11 = v51;
              v10 = v52;
              v12 = v55;
            }

            ++v12;
          }

          while (v12 != v10);
          v10 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v10);
      }

      if ([v8 count])
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        self = selfCopy;
        shareesToSet = [(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy shareesToSet];
        v29 = [shareesToSet countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v57;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v57 != v31)
              {
                objc_enumerationMutation(shareesToSet);
              }

              v33 = *(*(&v56 + 1) + 8 * j);
              href = [v33 href];
              payloadAsFullURL2 = [href payloadAsFullURL];
              absoluteString2 = [payloadAsFullURL2 absoluteString];
              v37 = [v8 containsObject:absoluteString2];

              self = selfCopy;
              if (v37)
              {
                invalidSharees = [(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy invalidSharees];

                if (!invalidSharees)
                {
                  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy setInvalidSharees:v39];
                }

                invalidSharees2 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)selfCopy invalidSharees];
                [invalidSharees2 addObject:v33];
              }
            }

            v30 = [shareesToSet countByEnumeratingWithState:&v56 objects:v68 count:16];
          }

          while (v30);
        }

        invalidSharees3 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self invalidSharees];
        v42 = [invalidSharees3 count];

        v43 = v48;
        if (v42)
        {
          errorCopy = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CalDAVErrorDomain" code:0 userInfo:0];
        }

        else
        {
          errorCopy = 0;
        }

        v47 = responseBodyParser;
        taskCopy = v50;
      }

      else
      {
        mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
        v45 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:0];
        v46 = v45;
        self = selfCopy;
        if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v70) = 207;
          _os_log_impl(&dword_242742000, v46, OS_LOG_TYPE_DEFAULT, "No invalid sharees found but status was %d", buf, 8u);
        }

        errorCopy = 0;
        v47 = responseBodyParser;
        taskCopy = v50;
        v43 = v48;
      }
    }

    else
    {
      errorCopy = 0;
    }
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

@end