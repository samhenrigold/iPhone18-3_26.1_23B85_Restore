@interface IMSuggestionsService
+ (id)sharedInstance;
- (IMSuggestionsService)init;
- (id)_contactForSGContactMatch:(id)match;
- (id)fetchCNContactForSuggestedHandle:(id)handle;
- (id)personNameComponentsForHandle:(id)handle;
- (id)suggestedNameFromCache:(id)cache wasFound:(BOOL *)found;
- (void)_startRequestForDisplayName:(id)name messageUID:(id)d queue:(id)queue;
- (void)_startRequestForDisplayNameCallbackWithSuggestedName:(id)name displayName:(id)displayName queue:(id)queue;
- (void)dealloc;
- (void)fetchSuggestedRealNameForDisplayName:(id)name messageUID:(id)d queue:(id)queue block:(id)block;
- (void)fetchUncachedSuggestedRealNameForDisplayName:(id)name prependMaybe:(BOOL)maybe queue:(id)queue block:(id)block;
- (void)scheduleFetchIfNecessaryForHandle:(id)handle;
- (void)startUsingLocalLookupsWithTable:(id)table;
- (void)stopUsingLocalLookups;
@end

@implementation IMSuggestionsService

+ (id)sharedInstance
{
  if (qword_1ED767880 != -1)
  {
    sub_1A825ACE4();
  }

  v3 = qword_1EB2E9FB0;

  return v3;
}

- (IMSuggestionsService)init
{
  v31.receiver = self;
  v31.super_class = IMSuggestionsService;
  v2 = [(IMSuggestionsService *)&v31 init];
  if (v2)
  {
    if (qword_1EB2EA020 != -1)
    {
      sub_1A8241E0C();
    }

    v3 = qword_1EB2EA018;
    if (!qword_1EB2EA018)
    {
      v32 = xmmword_1E7810690;
      v33 = *off_1E78106A0;
      v34 = 32;
      v4 = MEMORY[0x1E696AEC0];
      v5 = IMFileLocationTrimFileName();
      v6 = v34;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
      v8 = [v4 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"suggestionsServiceClass", "NSObject<SGSuggestionsServiceContactsProtocol> *_IMDSuggestionsNewConnection(void)", v5, v6, v7];

      v9 = IMGetAssertionFailureHandler();
      if (v9)
      {
        v9(v8);
      }

      else
      {
        warning = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DF284(v8, warning);
        }
      }

      v3 = qword_1EB2EA018;
    }

    serviceForContacts = [v3 serviceForContacts];
    [serviceForContacts setQueuesRequestsIfBusy:1];
    connection = v2->_connection;
    v2->_connection = serviceForContacts;

    v13 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = dispatch_queue_create([v17 UTF8String], v15);
    queue = v2->_queue;
    v2->_queue = v18;

    v20 = objc_opt_new();
    pending = v2->_pending;
    v2->_pending = v20;

    v22 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    handlesToRetry = v2->_handlesToRetry;
    v2->_handlesToRetry = v22;

    v24 = v2->_connection;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1A8286FB8;
    v29[3] = &unk_1E7810560;
    v25 = v2;
    v30 = v25;
    v26 = [(SGSuggestionsServiceContactsProtocol *)v24 registerContactsChangeObserver:v29];
    newContactNotificationToken = v25->_newContactNotificationToken;
    v25->_newContactNotificationToken = v26;
  }

  return v2;
}

- (void)dealloc
{
  [(SGSuggestionsServiceContactsProtocol *)self->_connection deregisterContactsChangeObserverWithToken:self->_newContactNotificationToken];
  v3.receiver = self;
  v3.super_class = IMSuggestionsService;
  [(IMSuggestionsService *)&v3 dealloc];
}

- (void)startUsingLocalLookupsWithTable:(id)table
{
  tableCopy = table;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A828727C;
  v7[3] = &unk_1E7810140;
  v7[4] = self;
  v8 = tableCopy;
  v6 = tableCopy;
  dispatch_sync(queue, v7);
}

- (void)stopUsingLocalLookups
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8287340;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)suggestedNameFromCache:(id)cache wasFound:(BOOL *)found
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    v7 = [(NSCache *)self->_cache objectForKey:cacheCopy];
    v8 = v7 != 0;
    if (!v7 || ([MEMORY[0x1E695DFB0] null], v9 = objc_claimAutoreleasedReturnValue(), v9, v7 == v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    if (found)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
    if (found)
    {
LABEL_7:
      *found = v8;
    }
  }

  return v10;
}

- (void)fetchUncachedSuggestedRealNameForDisplayName:(id)name prependMaybe:(BOOL)maybe queue:(id)queue block:(id)block
{
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  if (blockCopy && self->_connection)
  {
    if (nameCopy && ([(IMSuggestionsService *)self _maybePhoneNumber:nameCopy]|| [(IMSuggestionsService *)self _maybeEmailAddress:nameCopy]|| [(IMSuggestionsService *)self isBusiness:nameCopy]))
    {
      queue = self->_queue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1A8287664;
      v16[3] = &unk_1E78105B0;
      v16[4] = self;
      v17 = nameCopy;
      maybeCopy = maybe;
      v18 = queueCopy;
      v19 = blockCopy;
      dispatch_async(queue, v16);

      v14 = v17;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8287650;
      block[3] = &unk_1E780FE90;
      v22 = blockCopy;
      dispatch_async(queueCopy, block);
      v14 = v22;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Unexpectedly nil parameter in fetchSuggestedRealNameForDisplayName", buf, 2u);
    }
  }
}

- (void)fetchSuggestedRealNameForDisplayName:(id)name messageUID:(id)d queue:(id)queue block:(id)block
{
  nameCopy = name;
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  if (blockCopy && self->_connection)
  {
    if (nameCopy && ([(IMSuggestionsService *)self _maybePhoneNumber:nameCopy]|| [(IMSuggestionsService *)self _maybeEmailAddress:nameCopy]|| [(IMSuggestionsService *)self isBusiness:nameCopy]))
    {
      v14 = [(NSCache *)self->_cache objectForKey:nameCopy];
      if (v14)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A8287C54;
        block[3] = &unk_1E7810230;
        v24 = blockCopy;
        v23 = v14;
        dispatch_async(queueCopy, block);

        v15 = v24;
      }

      else
      {
        queue = self->_queue;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_1A8287CD4;
        v17[3] = &unk_1E78105D8;
        v17[4] = self;
        v18 = nameCopy;
        v19 = queueCopy;
        v21 = blockCopy;
        v20 = dCopy;
        dispatch_async(queue, v17);

        v15 = v18;
      }

LABEL_15:
      goto LABEL_16;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A8287C40;
    v25[3] = &unk_1E780FE90;
    v26 = blockCopy;
    dispatch_async(queueCopy, v25);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Unexpectedly nil parameter in fetchSuggestedRealNameForDisplayName", buf, 2u);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_startRequestForDisplayName:(id)name messageUID:(id)d queue:(id)queue
{
  nameCopy = name;
  dCopy = d;
  queueCopy = queue;
  if (nameCopy)
  {
    connection = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8288028;
    v13[3] = &unk_1E7810600;
    v14 = nameCopy;
    selfCopy = self;
    v16 = queueCopy;
    [(SGSuggestionsServiceContactsProtocol *)connection namesForDetail:v14 limitTo:1 prependMaybe:1 withCompletion:v13];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "displayName paramater was unexpectedly nil in _startRequestForDisplayName", buf, 2u);
    }
  }
}

- (void)_startRequestForDisplayNameCallbackWithSuggestedName:(id)name displayName:(id)displayName queue:(id)queue
{
  nameCopy = name;
  displayNameCopy = displayName;
  queueCopy = queue;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82882BC;
  v15[3] = &unk_1E78101E0;
  v15[4] = self;
  v16 = displayNameCopy;
  v17 = nameCopy;
  v18 = queueCopy;
  v12 = queueCopy;
  v13 = nameCopy;
  v14 = displayNameCopy;
  dispatch_async(queue, v15);
}

- (void)scheduleFetchIfNecessaryForHandle:(id)handle
{
  objc_initWeak(&location, handle);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8288574;
  block[3] = &unk_1E7810450;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_contactForSGContactMatch:(id)match
{
  v3 = [match sortedArrayUsingComparator:&unk_1F1B6DDE0];
  firstObject = [v3 firstObject];
  v5 = MEMORY[0x1E695CD58];
  contact = [firstObject contact];
  v7 = [v5 contactFromSuggestion:contact];

  return v7;
}

- (id)fetchCNContactForSuggestedHandle:(id)handle
{
  v21 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = handleCopy;
  if (!handleCopy || ![handleCopy length])
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Fetching a suggested CNContact for displayName %@", buf, 0xCu);
    }
  }

  v7 = [(IMSuggestionsService *)self _maybePhoneNumber:v5];
  v8 = [(IMSuggestionsService *)self _maybeEmailAddress:v5];
  if (v7)
  {
    serviceConnection = [(IMSuggestionsService *)self serviceConnection];
    v18 = 0;
    v10 = [serviceConnection contactMatchesByPhoneNumber:v5 error:&v18];
    v11 = &v18;
  }

  else
  {
    if (!v8)
    {
      v13 = 0;
      v10 = 0;
      goto LABEL_14;
    }

    serviceConnection = [(IMSuggestionsService *)self serviceConnection];
    v17 = 0;
    v10 = [serviceConnection contactMatchesByEmailAddress:v5 error:&v17];
    v11 = &v17;
  }

  v13 = *v11;

LABEL_14:
  if ([v10 count])
  {
    v14 = [(IMSuggestionsService *)self _contactForSGContactMatch:v10];
  }

  else
  {
    v14 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Found suggested contact %@ with error", buf, 0xCu);
    }
  }

  v12 = v14;

LABEL_22:

  return v12;
}

- (id)personNameComponentsForHandle:(id)handle
{
  displayID = [handle displayID];
  v5 = [(IMSuggestionsService *)self fetchCNContactForSuggestedHandle:displayID];

  v6 = [MEMORY[0x1E69A7FD0] firstNameForCNContact:v5];
  v7 = [MEMORY[0x1E69A7FD0] lastNameForCNContact:v5];
  v8 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v9 = v8;
  if (v6)
  {
    [v8 setGivenName:v6];
  }

  if (v7)
  {
    [v9 setFamilyName:v7];
  }

  return v9;
}

@end