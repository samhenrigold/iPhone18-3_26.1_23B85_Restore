@interface CalDAVAddDropBoxAttachmentsTaskGroup
+ (id)dropboxACEItemsForPrincipalURLs:(id)ls baseURL:(id)l writable:(BOOL)writable;
- (CalDAVAddDropBoxAttachmentsTaskGroup)initWithAccountInfoProvider:(id)provider dropboxURL:(id)l attachments:(id)attachments contentTypes:(id)types attendeePrincipalURLs:(id)ls attendeesCanManageDropBox:(BOOL)box taskManager:(id)manager;
- (NSDictionary)etags;
- (void)_finishWithError:(id)error state:(int)state;
- (void)_makeDropBox;
- (void)_sendAttachments;
- (void)_updateACLWithState:(int)state;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVAddDropBoxAttachmentsTaskGroup

- (CalDAVAddDropBoxAttachmentsTaskGroup)initWithAccountInfoProvider:(id)provider dropboxURL:(id)l attachments:(id)attachments contentTypes:(id)types attendeePrincipalURLs:(id)ls attendeesCanManageDropBox:(BOOL)box taskManager:(id)manager
{
  boxCopy = box;
  lCopy = l;
  attachmentsCopy = attachments;
  typesCopy = types;
  lsCopy = ls;
  v23.receiver = self;
  v23.super_class = CalDAVAddDropBoxAttachmentsTaskGroup;
  v19 = [(CoreDAVTaskGroup *)&v23 initWithAccountInfoProvider:provider taskManager:manager];
  v20 = v19;
  if (v19)
  {
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v19 setState:0];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setAttendeesCanManageDropBox:boxCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setSentAttachmentURLsToETags:dictionary];

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setDropboxURL:lCopy];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setAttachments:attachmentsCopy];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setContentTypes:typesCopy];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setAttendeePrincipalURLs:lsCopy];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)v20 setAceItems:0];
  }

  return v20;
}

- (NSDictionary)etags
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sentAttachmentURLsToETags = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
  v5 = [sentAttachmentURLsToETags countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sentAttachmentURLsToETags);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        sentAttachmentURLsToETags2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
        v11 = [sentAttachmentURLsToETags2 objectForKey:v9];

        null = [MEMORY[0x277CBEB68] null];

        if (v11 != null)
        {
          [dictionary setObject:v11 forKey:v9];
        }
      }

      v6 = [sentAttachmentURLsToETags countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (void)_finishWithError:(id)error state:(int)state
{
  v4 = *&state;
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:v4];
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

- (void)_updateACLWithState:(int)state
{
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:*&state];
  aceItems = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self aceItems];

  if (!aceItems)
  {
    attendeePrincipalURLs = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attendeePrincipalURLs];
    dropboxURL = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self dropboxURL];
    v7 = [CalDAVAddDropBoxAttachmentsTaskGroup dropboxACEItemsForPrincipalURLs:attendeePrincipalURLs baseURL:dropboxURL writable:[(CalDAVAddDropBoxAttachmentsTaskGroup *)self attendeesCanManageDropBox]];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setAceItems:v7];
  }

  v8 = objc_alloc(MEMORY[0x277CFDC98]);
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  aceItems2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self aceItems];
  dropboxURL2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self dropboxURL];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v13 = [v8 initWithAccountInfoProvider:accountInfoProvider aceItems:aceItems2 url:dropboxURL2 taskManager:taskManager];
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setUpdateACLTaskGroup:v13];

  updateACLTaskGroup = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self updateACLTaskGroup];
  [updateACLTaskGroup setDelegate:self];

  updateACLTaskGroup2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self updateACLTaskGroup];
  [updateACLTaskGroup2 startTaskGroup];
}

- (void)_makeDropBox
{
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:3];
  v3 = objc_alloc(MEMORY[0x277CFDC20]);
  dropboxURL = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self dropboxURL];
  v7 = [v3 initWithPropertiesToSet:0 atURL:dropboxURL];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:accountInfoProvider];

  [v7 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v7];
}

- (void)_sendAttachments
{
  v27 = *MEMORY[0x277D85DE8];
  attachments = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attachments];
  v4 = [attachments count];
  sentAttachmentURLsToETags = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
  v6 = [sentAttachmentURLsToETags count];

  if (v4 <= v6)
  {

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _finishWithError:0 state:11];
  }

  else
  {
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:5];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    attachments2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attachments];
    v8 = [attachments2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(attachments2);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          sentAttachmentURLsToETags2 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
          v14 = [sentAttachmentURLsToETags2 objectForKey:v12];

          if (!v14)
          {
            contentTypes = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self contentTypes];
            v16 = [contentTypes objectForKey:v12];

            if ([v16 length])
            {
              attachments3 = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attachments];
              v18 = [attachments3 objectForKey:v12];

              v19 = [objc_alloc(MEMORY[0x277CFDC80]) initWithDataPayload:v18 dataContentType:v16 atURL:v12 previousETag:0];
              [v19 setForceToServer:1];
              accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
              [v19 setAccountInfoProvider:accountInfoProvider];

              [v19 setDelegate:self];
              taskManager = [(CoreDAVTaskGroup *)self taskManager];
              [taskManager submitQueuedCoreDAVTask:v19];
            }

            else
            {
              [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _finishWithError:0 state:8];
            }

            goto LABEL_18;
          }
        }

        v9 = [attachments2 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }
}

- (void)startTaskGroup
{
  attendeePrincipalURLs = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attendeePrincipalURLs];
  v4 = [attendeePrincipalURLs count];

  if (v4)
  {

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _updateACLWithState:1];
  }

  else
  {
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setState:2];
    v5 = objc_alloc(MEMORY[0x277CFDBD0]);
    dropboxURL = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self dropboxURL];
    v9 = [v5 initWithURL:dropboxURL];

    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v9 setAccountInfoProvider:accountInfoProvider];

    [v9 setDelegate:self];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v9];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]== 2)
  {
    if (errorCopy)
    {
      [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _makeDropBox];
      goto LABEL_20;
    }

LABEL_15:
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _sendAttachments];
    goto LABEL_20;
  }

  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]== 3)
  {
    if (!errorCopy)
    {
      attendeePrincipalURLs = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self attendeePrincipalURLs];
      v19 = [attendeePrincipalURLs count];

      if (v19)
      {
        [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _updateACLWithState:4];
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    selfCopy2 = self;
    v8 = errorCopy;
    v9 = 6;
LABEL_12:
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)selfCopy2 _finishWithError:v8 state:v9];
    goto LABEL_20;
  }

  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]!= 5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy2 = self;
    v8 = errorCopy;
    v9 = 10;
    goto LABEL_12;
  }

  v10 = taskCopy;
  v11 = v10;
  if (errorCopy)
  {
    v12 = MEMORY[0x277CCABB0];
    requestDataPayload = [v10 requestDataPayload];
    nextETag = [v12 numberWithUnsignedLongLong:{objc_msgSend(requestDataPayload, "length")}];

    v15 = MEMORY[0x277CBEAC0];
    v16 = [v11 url];
    v17 = [v15 dictionaryWithObject:nextETag forKey:v16];
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setPutFailureSizes:v17];

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _finishWithError:errorCopy state:9];
  }

  else
  {
    nextETag = [v10 nextETag];
    if (!nextETag)
    {
      nextETag = [MEMORY[0x277CBEB68] null];
    }

    sentAttachmentURLsToETags = [(CalDAVAddDropBoxAttachmentsTaskGroup *)self sentAttachmentURLsToETags];
    v21 = [v11 url];
    [sentAttachmentURLsToETags setObject:nextETag forKey:v21];

    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _sendAttachments];
  }

LABEL_20:
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  groupCopy = group;
  errorCopy = error;
  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]== 1)
  {
    if (errorCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [groupCopy state] == 5)
      {
        [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _makeDropBox];
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_9:
    [(CalDAVAddDropBoxAttachmentsTaskGroup *)self _sendAttachments];
    goto LABEL_12;
  }

  if ([(CalDAVAddDropBoxAttachmentsTaskGroup *)self state]!= 4)
  {
    selfCopy2 = self;
    v8 = errorCopy;
    v9 = 10;
    goto LABEL_11;
  }

  if (!errorCopy)
  {
    goto LABEL_9;
  }

LABEL_8:
  selfCopy2 = self;
  v8 = errorCopy;
  v9 = 7;
LABEL_11:
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)selfCopy2 _finishWithError:v8 state:v9];
LABEL_12:
  [(CalDAVAddDropBoxAttachmentsTaskGroup *)self setUpdateACLTaskGroup:0];
}

+ (id)dropboxACEItemsForPrincipalURLs:(id)ls baseURL:(id)l writable:(BOOL)writable
{
  v37 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v7 = *MEMORY[0x277CFDEF8];
  v8 = [MEMORY[0x277CFDB88] privilegeItemWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDFD0]];
  v9 = [MEMORY[0x277CFDB88] privilegeItemWithNameSpace:v7 andName:*MEMORY[0x277CFE048]];
  v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v27 = v9;
  v28 = v8;
  v31 = v10;
  if (writable)
  {
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v9, 0}];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
  v13 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = lsCopy;
  v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v30 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [objc_alloc(MEMORY[0x277CFDC60]) initTypeIsHREFWithURL:v17];
        v19 = [objc_alloc(MEMORY[0x277CFDB88]) initWithPrincipal:v18 shouldInvert:0 action:0 withPrivileges:v12];
        [v13 addObject:v19];

        v20 = [v17 CDVfixedURLByAppendingPathComponent:@"calendar-proxy-read/"];
        v21 = [objc_alloc(MEMORY[0x277CFDC60]) initTypeIsHREFWithURL:v20];

        v22 = [objc_alloc(MEMORY[0x277CFDB88]) initWithPrincipal:v21 shouldInvert:0 action:0 withPrivileges:v31];
        [v13 addObject:v22];

        v23 = [v17 CDVfixedURLByAppendingPathComponent:@"calendar-proxy-write/"];
        v24 = [objc_alloc(MEMORY[0x277CFDC60]) initTypeIsHREFWithURL:v23];

        v25 = [objc_alloc(MEMORY[0x277CFDB88]) initWithPrincipal:v24 shouldInvert:0 action:0 withPrivileges:v12];
        [v13 addObject:v25];
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  return v13;
}

@end