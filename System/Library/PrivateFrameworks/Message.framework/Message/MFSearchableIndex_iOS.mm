@interface MFSearchableIndex_iOS
+ (OS_os_log)log;
- (BOOL)isPluggedIn;
- (MFSearchableIndex_iOS)initWithName:(id)name dataSource:(id)source;
- (id)currentReasons;
- (id)dataSourceRefreshReasons;
- (id)exclusionReasons;
- (id)powerObservable;
- (id)purgeReasons;
- (void)_indexMessage:(id)message includeBody:(BOOL)body indexingType:(int64_t)type;
- (void)indexMessages:(id)messages includeBody:(BOOL)body indexingType:(int64_t)type;
@end

@implementation MFSearchableIndex_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MFSearchableIndex_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_30 != -1)
  {
    dispatch_once(&log_onceToken_30, block);
  }

  v2 = log_log_30;

  return v2;
}

- (MFSearchableIndex_iOS)initWithName:(id)name dataSource:(id)source
{
  nameCopy = name;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = MFSearchableIndex_iOS;
  v8 = [(EDSearchableIndex *)&v13 initWithName:nameCopy dataSource:sourceCopy];
  if (v8)
  {
    v9 = MFUserAgent();
    -[EDSearchableIndex setForeground:](v8, "setForeground:", [v9 isForeground]);

    mEMORY[0x1E69AD6C0] = [MEMORY[0x1E69AD6C0] sharedController];
    [mEMORY[0x1E69AD6C0] addDiagnosticsGenerator:v8];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v8 selector:sel_attachmentBecameAvailable_ name:@"LibraryMessageAttachmentDataBecameAvailableNotification" object:0];

  return v8;
}

- (id)dataSourceRefreshReasons
{
  if (dataSourceRefreshReasons_onceToken[0] != -1)
  {
    [MFSearchableIndex_iOS dataSourceRefreshReasons];
  }

  v3 = dataSourceRefreshReasons_reasons;

  return v3;
}

- (id)purgeReasons
{
  if (purgeReasons_onceToken != -1)
  {
    [MFSearchableIndex_iOS purgeReasons];
  }

  v3 = purgeReasons_reasons;

  return v3;
}

- (id)exclusionReasons
{
  if (exclusionReasons_onceToken != -1)
  {
    [MFSearchableIndex_iOS exclusionReasons];
  }

  v3 = exclusionReasons_reasons;

  return v3;
}

- (id)currentReasons
{
  v3 = +[MFActivityMonitor currentMonitor];
  reasons = [v3 reasons];

  if ([reasons count])
  {
    currentReasons = reasons;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFSearchableIndex_iOS;
    currentReasons = [(EDSearchableIndex *)&v8 currentReasons];
  }

  v6 = currentReasons;

  return v6;
}

- (void)_indexMessage:(id)message includeBody:(BOOL)body indexingType:(int64_t)type
{
  bodyCopy = body;
  v16[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v9 = messageCopy;
  if (bodyCopy)
  {
    v15 = 0;
    v10 = [messageCopy bestAlternativePart:&v15];
    v11 = [v10 dataUsingEncoding:4];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(EDSearchableIndexItem *)[MFSearchableIndexItem_iOS alloc] initWithMessage:v9 bodyData:v11 fetchBody:bodyCopy];
  [(EDSearchableIndexItem *)v12 setIndexingType:type];
  v13 = [MEMORY[0x1E699B688] isIncrementalIndexingType:type];
  v16[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(EDSearchableIndex *)self indexItems:v14 immediately:v13 & (bodyCopy ^ 1)];
}

- (void)indexMessages:(id)messages includeBody:(BOOL)body indexingType:(int64_t)type
{
  bodyCopy = body;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  messagesCopy = messages;
  v9 = [messagesCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v11 = *v18;
    *&v10 = 138543362;
    v16 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([v13 messageFlags] & 0x80) != 0)
        {
          v14 = +[MFSearchableIndex_iOS log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            ef_publicDescription = [v13 ef_publicDescription];
            *buf = v16;
            v22 = ef_publicDescription;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "Skipping indexing of message %{public}@ since it's a server search result...", buf, 0xCu);
          }
        }

        else
        {
          [(MFSearchableIndex_iOS *)self _indexMessage:v13 includeBody:bodyCopy indexingType:type];
        }
      }

      v9 = [messagesCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }
}

- (id)powerObservable
{
  v2 = +[MFPowerController sharedInstance];
  powerObservable = [v2 powerObservable];

  return powerObservable;
}

- (BOOL)isPluggedIn
{
  v2 = +[MFPowerController sharedInstance];
  isPluggedIn = [v2 isPluggedIn];

  return isPluggedIn;
}

@end