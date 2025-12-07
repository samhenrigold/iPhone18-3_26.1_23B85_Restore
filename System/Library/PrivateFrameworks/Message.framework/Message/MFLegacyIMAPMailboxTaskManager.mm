@interface MFLegacyIMAPMailboxTaskManager
+ (OS_os_log)log;
- (BOOL)_selectMailbox:(id)mailbox withConnection:(id)connection;
- (BOOL)_shouldContinueToPreservedUID:(unint64_t)d;
- (BOOL)_waitForDataFromDownload:(id)download uid:(unsigned int)uid downloadCache:(id)cache connection:(id)connection;
- (BOOL)canFetchMessageIDs;
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id)command;
- (BOOL)fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer;
- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL;
- (BOOL)performOperationRequiringConnection:(BOOL)connection withOptions:(unint64_t)options failedToSelectMailbox:(BOOL *)mailbox operation:(id)operation;
- (MFLegacyIMAPMailboxTaskManager)initWithMailbox:(id)mailbox;
- (NSString)mailboxName;
- (id)_downloadForMessageBodyData:(id)data usingDownloadCache:(id)cache;
- (id)_fetchFullMessageDataForMessage:(id)message download:(id *)download;
- (id)_idleConditionsObservable;
- (id)_newSearchResponseQueueForConnection:(id)connection limit:(unsigned int)limit;
- (id)_observeChangesInIdleConditions;
- (id)_performBodyDataDownload:(id)download usingConnection:(id)connection downloadCache:(id)cache isPartial:(BOOL *)partial;
- (id)_searchFlagsForUIDs:(id)ds usingConnection:(id)connection;
- (id)deletedMessages;
- (id)downloadSearchResults:(id)results;
- (id)fetchDataForMessage:(id)message didDownload:(BOOL *)download;
- (id)fetchDataForMessage:(id)message partial:(BOOL *)partial;
- (id)fetchHeadersForMessage:(id)message;
- (id)flagsForIMAPUIDs:(id)ds mailboxURL:(id)l;
- (id)imapMailboxNameForMailboxURL:(id)l;
- (id)messageDataForMessage:(id)message;
- (id)messageDataForRemoteID:(id)d mailboxURL:(id)l;
- (id)messageIdRollCall:(id)call;
- (id)replayAction:(id)action;
- (id)searchWithCriterion:(id)criterion limit:(unsigned int)limit;
- (id)sequenceIdentifierForUIDs:(id)ds;
- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (unint64_t)_fetchMessagesWithArguments:(id)arguments idRange:(id)range onConnection:(id)connection synchronize:(BOOL)synchronize limit:(unint64_t)limit topUIDToCompact:(unint64_t)compact topKnownUID:(unint64_t)d success:(BOOL *)self0 examinedRange:(_NSRange *)self1 fetchableUIDsFound:(unint64_t *)self2 preserveUID:(unint64_t *)self3 numFetchedUIDs:(unint64_t *)self4;
- (unint64_t)_fetchMessagesWithUIDs:(id)ds connection:(id)connection newCount:(unint64_t)count flagsToSet:(unint64_t)set queueClass:(Class)class;
- (unint64_t)serverMessageCount;
- (unint64_t)syncMessagesWithUIDs:(id)ds connection:(id)connection serverMessages:(id)messages flagSearchResults:(id)results;
- (void)_fetchMessagesMatchingCriterion:(id)criterion limit:(unsigned int)limit withOptions:(unint64_t)options handler:(id)handler;
- (void)_fetchServerUnreadCountWithConnection:(id)connection;
- (void)_performActionsOnConnection:(id)connection uidsToFetch:(id *)fetch uidsToSync:(id *)sync messagesToCompact:(id *)compact serverMessages:(id)messages flagSearchResults:(id)results shouldForce:(BOOL)force newUIDsToFetch:(unsigned int *)self0;
- (void)_scheduleIdleTransition:(BOOL)transition;
- (void)_updateServerUnreadCount:(unint64_t)count;
- (void)close;
- (void)compact;
- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id)command;
- (void)dealloc;
- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact;
- (void)fetchDataForMessage:(id)message completionHandler:(id)handler;
- (void)handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)reselectMailbox;
- (void)setSequenceIdentifier:(id)identifier forUIDs:(id)ds;
- (void)setServerMessageCount:(unint64_t)count;
- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)count;
- (void)updateServerUnreadCountClosingConnection:(BOOL)connection;
- (void)willRemoveDelegation:(id)delegation;
@end

@implementation MFLegacyIMAPMailboxTaskManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MFLegacyIMAPMailboxTaskManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __37__MFLegacyIMAPMailboxTaskManager_log__block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x1E69B17F0] UTF8String];
  v5 = NSStringFromClass(*(a1 + 32));
  v3 = os_log_create(v2, [v5 UTF8String]);
  v4 = log_log_12;
  log_log_12 = v3;
}

- (MFLegacyIMAPMailboxTaskManager)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v39.receiver = self;
  v39.super_class = MFLegacyIMAPMailboxTaskManager;
  v6 = [(MFLegacyIMAPMailboxTaskManager *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailbox, mailbox);
    account = [mailboxCopy account];
    account = v7->_account;
    v7->_account = account;

    account2 = [(MFLegacyIMAPMailboxTaskManager *)v7 account];
    v11 = [account2 _nameForMailboxUid:mailboxCopy];
    mailboxName = v7->_mailboxName;
    v7->_mailboxName = v11;

    v13 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"CachedConnectionLock" andDelegate:0];
    cachedConnectionLock = v7->_cachedConnectionLock;
    v7->_cachedConnectionLock = v13;

    v7->_activeFetchVsReplayLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v7->_cancelationToken;
    v7->_cancelationToken = v15;

    v17 = v7->_cancelationToken;
    _observeChangesInIdleConditions = [(MFLegacyIMAPMailboxTaskManager *)v7 _observeChangesInIdleConditions];
    [(EFManualCancelationToken *)v17 addCancelable:_observeChangesInIdleConditions];

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mailboxCopy, "mailboxRowID")}];
    v21 = [v19 stringWithFormat:@"com.apple.mail.imap.search.%@", v20];

    uTF8String = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String, v23);
    searchQueue = v7->_searchQueue;
    v7->_searchQueue = v24;

    mailboxName = [(MFLegacyIMAPMailboxTaskManager *)v7 mailboxName];
    v27 = [mailboxCopy redactedName:mailboxName];

    currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
    isInternal = [currentDevice isInternal];

    v30 = MEMORY[0x1E696AEC0];
    if (isInternal)
    {
      v31 = MEMORY[0x1E699B858];
      account3 = [mailboxCopy account];
      displayName = [account3 displayName];
      v34 = [v31 partiallyRedactedStringForString:displayName];
      v35 = [v30 stringWithFormat:@"%@ - '%@'", v34, v27];
      loggingPrefix = v7->_loggingPrefix;
      v7->_loggingPrefix = v35;
    }

    else
    {
      account3 = [mailboxCopy account];
      displayName = [account3 uniqueID];
      v37 = [v30 stringWithFormat:@"%@ - '%@'", displayName, v27];
      v34 = v7->_loggingPrefix;
      v7->_loggingPrefix = v37;
    }

    v7->_serverCountLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v4 = [MFMonitoredInvocation invocationWithSelector:sel_checkInConnection_ target:self->_account object:cachedConnection taskName:0 priority:13 canBeCancelled:0];
    v5 = +[MFInvocationQueue sharedInvocationQueue];
    [v5 addInvocation:v4];
  }

  v6.receiver = self;
  v6.super_class = MFLegacyIMAPMailboxTaskManager;
  [(MFLegacyIMAPMailboxTaskManager *)&v6 dealloc];
}

- (unint64_t)_fetchMessagesWithUIDs:(id)ds connection:(id)connection newCount:(unint64_t)count flagsToSet:(unint64_t)set queueClass:(Class)class
{
  v34 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  connectionCopy = connection;
  v14 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    *buf = 138543874;
    v29 = loggingPrefix;
    v30 = 2048;
    v31 = [dsCopy count];
    v32 = 2048;
    countCopy = count;
    _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching skeletons for %lu uids (%lu new)", buf, 0x20u);
  }

  v16 = objc_alloc_init(class);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v19 = [account storeForMailboxUid:mailbox];
  v20 = *(v16 + 6);
  *(v16 + 6) = v19;

  objc_storeStrong(v16 + 7, connection);
  *(v16 + 8) = count;
  *(v16 + 10) = self->_highestModSequence;
  *(v16 + 11) = set;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__MFLegacyIMAPMailboxTaskManager__fetchMessagesWithUIDs_connection_newCount_flagsToSet_queueClass___block_invoke;
  v25[3] = &unk_1E7AA5E48;
  v21 = connectionCopy;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  [dsCopy ef_enumerateObjectsInBatchesOfSize:100 block:v25];
  v23 = v22[9];

  return v23;
}

void __99__MFLegacyIMAPMailboxTaskManager__fetchMessagesWithUIDs_connection_newCount_flagsToSet_queueClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) sendSkeletonResponsesForUIDs:? includeTo:? toQueue:?];
  [*(a1 + 40) flush];
}

- (unint64_t)syncMessagesWithUIDs:(id)ds connection:(id)connection serverMessages:(id)messages flagSearchResults:(id)results
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  connectionCopy = connection;
  messagesCopy = messages;
  resultsCopy = results;
  v13 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    *buf = 138543618;
    v24 = loggingPrefix;
    v25 = 2048;
    v26 = [dsCopy count];
    _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching flags for %lu uids", buf, 0x16u);
  }

  v15 = objc_alloc_init(MFSyncResponseQueue);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v18 = [account storeForMailboxUid:mailbox];

  uRLString = [v18 URLString];
  url = v15->super._url;
  v15->super._url = uRLString;

  objc_storeStrong(&v15->super._store, v18);
  objc_storeStrong(&v15->super._connection, connection);
  objc_storeStrong(&v15->super._serverMessages, messages);
  v15->super._shouldCompact = 0;
  v15->super._shouldFetch = 0;
  *(&v15->super._isSearching + 1) = 1;
  [connectionCopy sendUidAndFlagResponsesForUIDs:dsCopy sequenceIdentifierProvider:self flagSearchResults:resultsCopy toQueue:v15];
  [(MFBufferedQueue *)v15 flush];

  return 0;
}

- (void)_performActionsOnConnection:(id)connection uidsToFetch:(id *)fetch uidsToSync:(id *)sync messagesToCompact:(id *)compact serverMessages:(id)messages flagSearchResults:(id)results shouldForce:(BOOL)force newUIDsToFetch:(unsigned int *)self0
{
  v36 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messagesCopy = messages;
  resultsCopy = results;
  v18 = [*fetch count];
  if (force)
  {
    if (v18)
    {
      if (*toFetch)
      {
        v19 = +[MFActivityMonitor currentMonitor];
        v20 = MFLookupLocalizedString(@"DOWNLOADING_STATUS_FORMAT", @"Downloading %@ of %@", @"Delayed");
        [v19 setDisplayName:v20 maxCount:*toFetch];

        v21 = *toFetch;
      }

      else
      {
        v21 = 0;
      }

      [(MFLegacyIMAPMailboxTaskManager *)self _fetchMessagesWithUIDs:*fetch connection:connectionCopy newCount:v21 flagsToSet:0 queueClass:objc_opt_class()];
    }

    *fetch = 0;
    *toFetch = 0;
  }

  if ([*sync count])
  {
    if (force)
    {
      v22 = +[MFActivityMonitor currentMonitor];
      [v22 reset];
    }

    [(MFLegacyIMAPMailboxTaskManager *)self syncMessagesWithUIDs:*sync connection:connectionCopy serverMessages:messagesCopy flagSearchResults:resultsCopy];
  }

  *sync = 0;
  if (*compact || force)
  {
    v23 = [*compact count];
    if (v23)
    {
      v24 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        loggingPrefix = self->_loggingPrefix;
        *buf = 138543618;
        v33 = loggingPrefix;
        v34 = 2048;
        v35 = v23;
        _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: Compacting %lu messages during IMAP sync", buf, 0x16u);
      }

      library = [(MFLegacyIMAPMailboxTaskManager *)self library];
      messageChangeManager = [library messageChangeManager];
      v28 = *compact;
      mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
      v30 = [mailbox URL];
      [messageChangeManager reflectDeletedMessagesWithRemoteIDs:v28 mailboxURL:v30];
    }

    *compact = 0;
  }
}

- (id)_searchFlagsForUIDs:(id)ds usingConnection:(id)connection
{
  v32[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  connectionCopy = connection;
  array = [MEMORY[0x1E695DF70] array];
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v11 = [account storeForMailboxUid:mailbox];

  unreadCount = [v11 unreadCount];
  if ([dsCopy count] >= (2 * unreadCount))
  {
    [MFIMAPConnectionFlagSearchRequest requestWithMask:1 searchTerms:&unk_1F2774CF8 positiveMatch:0];
  }

  else
  {
    [MFIMAPConnectionFlagSearchRequest requestWithMask:1 searchTerms:&unk_1F2774D10 positiveMatch:1];
  }
  v13 = ;
  [array addObject:v13];

  v14 = [MFIMAPConnectionFlagSearchRequest requestWithMask:2 searchTerms:&unk_1F2774D28 positiveMatch:1];
  [array addObject:v14];

  v15 = [MFIMAPConnectionFlagSearchRequest requestWithMask:16 searchTerms:&unk_1F2774D40 positiveMatch:1];
  [array addObject:v15];

  v16 = [MFIMAPConnectionFlagSearchRequest requestWithMask:4 searchTerms:&unk_1F2774D58 positiveMatch:1];
  [array addObject:v16];

  if (self->_supportsDollarForwardedFlag)
  {
    v17 = [MFIMAPConnectionFlagSearchRequest requestWithMask:256 searchTerms:&unk_1F2774D70 positiveMatch:1];
    [array addObject:v17];
  }

  if (self->_supportsForwardedFlag)
  {
    v18 = [MFIMAPConnectionFlagSearchRequest requestWithMask:256 searchTerms:&unk_1F2774D88 positiveMatch:1];
    [array addObject:v18];
  }

  if (self->_supportsFlagColorBitFlags)
  {
    v32[0] = @"KEYWORD";
    v32[1] = @"$MailFlagBit0";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v20 = [MFIMAPConnectionFlagSearchRequest requestWithMask:0x20000000000 searchTerms:v19 positiveMatch:1];
    [array addObject:v20];

    v31[0] = @"KEYWORD";
    v31[1] = @"$MailFlagBit1";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v22 = [MFIMAPConnectionFlagSearchRequest requestWithMask:0x40000000000 searchTerms:v21 positiveMatch:1];
    [array addObject:v22];

    v30[0] = @"KEYWORD";
    v30[1] = @"$MailFlagBit2";
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v24 = [MFIMAPConnectionFlagSearchRequest requestWithMask:0x80000000000 searchTerms:v23 positiveMatch:1];
    [array addObject:v24];
  }

  if ([connectionCopy supportsCapability:16])
  {
    v25 = [array count];
    if (v25 << 8)
    {
      v26 = v25 << 8;
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    v27 = [array count];
    if ((75 * v27) <= 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 75 * v27;
    }
  }

  if (v26 >= [dsCopy count])
  {
    v28 = 0;
  }

  else
  {
    v28 = [connectionCopy searchUIDs:dsCopy withFlagRequests:array];
  }

  return v28;
}

- (unint64_t)_fetchMessagesWithArguments:(id)arguments idRange:(id)range onConnection:(id)connection synchronize:(BOOL)synchronize limit:(unint64_t)limit topUIDToCompact:(unint64_t)compact topKnownUID:(unint64_t)d success:(BOOL *)self0 examinedRange:(_NSRange *)self1 fetchableUIDsFound:(unint64_t *)self2 preserveUID:(unint64_t *)self3 numFetchedUIDs:(unint64_t *)self4
{
  synchronizeCopy = synchronize;
  v155 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  rangeCopy = range;
  v130 = 0;
  connectionCopy = connection;
  v104 = argumentsCopy;
  v105 = rangeCopy;
  v115 = [connectionCopy searchIDSet:rangeCopy forTerms:argumentsCopy success:&v130];
  v19 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    v21 = [v115 count];
    *buf = 138543874;
    if (v130)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v134 = loggingPrefix;
    v135 = 2048;
    v136 = v21;
    v137 = 2112;
    limitCopy2 = v22;
    _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Search for recent UIDs returned %lu items (success=%@)", buf, 0x20u);
  }

  *iD = 0x7FFFFFFFFFFFFFFFLL;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v112 = [account storeForMailboxUid:mailbox];

  if (v130)
  {
    v25 = [v115 count];
    if (v25)
    {
      if (synchronizeCopy)
      {
        v110 = [(MFLegacyIMAPMailboxTaskManager *)self _searchFlagsForUIDs:v115 usingConnection:connectionCopy];
      }

      else
      {
        v110 = 0;
      }

      if (found)
      {
        *found += v25;
      }

      v26 = [v115 objectAtIndex:0];
      unsignedIntegerValue = [v26 unsignedIntegerValue];

      lastObject = [v115 lastObject];
      unsignedIntegerValue2 = [lastObject unsignedIntegerValue];

      if (unsignedIntegerValue2 <= compact)
      {
        compactCopy = compact;
      }

      else
      {
        compactCopy = unsignedIntegerValue2;
      }

      v30 = compactCopy - unsignedIntegerValue;
      if (examinedRange)
      {
        examinedRange->location = unsignedIntegerValue;
        examinedRange->length = v30;
      }

      v31 = v30 + 1;
      if (v30 + 1 > limit)
      {
        limitCopy = v30 + 1;
      }

      else
      {
        limitCopy = limit;
      }

      if (limitCopy >= 0x100)
      {
        limitCopy = 256;
      }

      v109 = limitCopy;
      serverMessagePersistence = [v112 serverMessagePersistence];
      v34 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{unsignedIntegerValue, v31}];
      v122 = [serverMessagePersistence serverMessagesForIMAPUIDs:v34 limit:v109 returnLastEntries:1];

      firstObject = [v122 firstObject];
      imapUID = [firstObject imapUID];

      v36 = [v115 count];
      v37 = [v122 count];
      v129 = 0;
      v38 = +[MFLegacyIMAPMailboxTaskManager log];
      v39 = v37 - 1;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_loggingPrefix;
        lastObject2 = [v122 lastObject];
        imapUID2 = [lastObject2 imapUID];
        *buf = 138545922;
        v134 = v40;
        v135 = 2112;
        v136 = v105;
        v137 = 2048;
        limitCopy2 = limit;
        v139 = 2048;
        compactCopy2 = compact;
        v141 = 2048;
        dCopy = d;
        v143 = 2048;
        v144 = v25;
        v145 = 2048;
        v146 = unsignedIntegerValue;
        v147 = 2048;
        v148 = compactCopy;
        v149 = 2048;
        v150 = v39;
        v151 = 1024;
        v152 = imapUID;
        v153 = 1024;
        v154 = imapUID2;
        _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: starting UID sync idRange=%@ limit=%lu topUIDToCompact=%lu topKnownUID=%lu UIDCount=%lu lowUID=%lu highUID=%lu serverMessagesIndex=%lu serverMessagesUIDs found=%u to %u", buf, 0x68u);
      }

      v43 = 0;
      v108 = 0;
      v106 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v113 = 0;
      v119 = v36 - 1;
      while (1)
      {
        if (v43 || compactCopy < unsignedIntegerValue)
        {
          if (v106)
          {
            v131[0] = @"MessageIsServerSearchResult";
            v131[1] = @"MessageIsThreadSearchResult";
            v132[0] = MEMORY[0x1E695E110];
            v132[1] = MEMORY[0x1E695E110];
            v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
            v96 = [v112 setFlagsLocallyFromDictionary:v95 forMessages:v106];
          }

          if (ds)
          {
            *ds = v108;
          }

          v124 = v44;
          v125 = v45;
          v123 = v46;
          LOBYTE(v103) = 1;
          [(MFLegacyIMAPMailboxTaskManager *)self _performActionsOnConnection:connectionCopy uidsToFetch:&v125 uidsToSync:&v124 messagesToCompact:&v123 serverMessages:v122 flagSearchResults:v110 shouldForce:v103 newUIDsToFetch:&v129];
          v97 = v125;

          v98 = v124;
          v99 = v123;

          goto LABEL_108;
        }

        context = objc_autoreleasePoolPush();
        if (compactCopy >= imapUID)
        {
          v121 = v44;
          v48 = v46;
        }

        else
        {
          v128 = v45;
          v126 = v46;
          v127 = v44;
          LOBYTE(v103) = 0;
          [(MFLegacyIMAPMailboxTaskManager *)self _performActionsOnConnection:connectionCopy uidsToFetch:&v128 uidsToSync:&v127 messagesToCompact:&v126 serverMessages:v122 flagSearchResults:v110 shouldForce:v103 newUIDsToFetch:&v129];
          v47 = v128;

          v121 = v127;
          v48 = v126;

          v49 = v47;
          serverMessagePersistence2 = [v112 serverMessagePersistence];
          v51 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{unsignedIntegerValue, imapUID - unsignedIntegerValue}];
          v52 = [serverMessagePersistence2 serverMessagesForIMAPUIDs:v51 limit:v109 returnLastEntries:1];

          v53 = [v52 count];
          firstObject2 = [v52 firstObject];
          imapUID = [firstObject2 imapUID];

          v45 = v49;
          v39 = v53 - 1;
          v122 = v52;
        }

        v55 = [v115 objectAtIndexedSubscript:v119];
        intValue = [v55 intValue];

        v59 = *iD != 0x7FFFFFFFFFFFFFFFLL && compactCopy >= *iD || limit != 0;
        if (!limit && v59)
        {
          v60 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = self->_loggingPrefix;
            v62 = *iD;
            *buf = 138543618;
            v134 = v61;
            v135 = 2048;
            v136 = v62;
            _os_log_impl(&dword_1B0389000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: preserving UID %lu!", buf, 0x16u);
          }
        }

        v63 = !v59;
        if (compactCopy != intValue)
        {
          v63 = 1;
        }

        if ((v63 & 1) == 0)
        {
          break;
        }

        if (v39 < 0)
        {
          v76 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = [v122 objectAtIndexedSubscript:v39];
          imapUID3 = [v74 imapUID];

          v76 = imapUID3;
        }

        if (v76 == compactCopy)
        {
          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v83 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = self->_loggingPrefix;
            *buf = 138543618;
            v134 = v84;
            v135 = 2048;
            v136 = compactCopy;
            _os_log_impl(&dword_1B0389000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@: Compacting %lu (2)", buf, 0x16u);
          }

          v85 = [v122 objectAtIndexedSubscript:v39];
          remoteID = [v85 remoteID];
          [v48 addObject:remoteID];

          --v39;
        }

LABEL_99:
        v43 = compactCopy == 0;
        if (compactCopy)
        {
          --compactCopy;
        }

        else
        {
          compactCopy = 0;
        }

        v44 = v121;
        v46 = v48;
        objc_autoreleasePoolPop(context);
      }

      if (v39 < 0)
      {
LABEL_61:
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        while (1)
        {
          v64 = [v122 objectAtIndexedSubscript:v39];
          imapUID4 = [v64 imapUID];

          v66 = imapUID4;
          if (compactCopy >= imapUID4)
          {
            break;
          }

          if (!v48)
          {
            v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v67 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = self->_loggingPrefix;
            v69 = [v122 objectAtIndexedSubscript:v39];
            imapUID5 = [v69 imapUID];
            *buf = 138543618;
            v134 = v68;
            v135 = 1024;
            LODWORD(v136) = imapUID5;
            _os_log_impl(&dword_1B0389000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@: Compacting %u (1)", buf, 0x12u);
          }

          v71 = [v122 objectAtIndexedSubscript:v39];
          remoteID2 = [v71 remoteID];
          [v48 addObject:remoteID2];

          if (v39-- < 1)
          {
            goto LABEL_61;
          }
        }
      }

      if (v66 != compactCopy)
      {
        if (!v45)
        {
          v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v81 = +[MFLegacyIMAPMailboxTaskManager log];
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          v94 = self->_loggingPrefix;
          *buf = 138543618;
          v134 = v94;
          v135 = 2048;
          v136 = compactCopy;
          _os_log_debug_impl(&dword_1B0389000, v81, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching %lu", buf, 0x16u);
        }

        v77 = [v115 objectAtIndexedSubscript:v119];
        [v45 addObject:v77];
        if ([v77 intValue] > d)
        {
          ++v129;
          ++v108;
        }

        v82 = limit - 1;
        if (!limit)
        {
          v82 = 0;
        }

        limit = v82;
        ++v113;
        goto LABEL_98;
      }

      v77 = [v122 objectAtIndexedSubscript:v39];
      serverFlags = [v77 serverFlags];
      v79 = MFMessageFlagsForECMessageFlags(serverFlags);

      if ((v79 & 0x80) != 0)
      {
        LODWORD(v80) = 1;
      }

      else
      {
        v80 = (v79 >> 20) & 1;
        if (!synchronizeCopy && (v79 & 0x100000) == 0)
        {
LABEL_97:
          --v39;
LABEL_98:

          --v119;
          goto LABEL_99;
        }
      }

      if (!v121)
      {
        v121 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v87 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v134 = compactCopy;
        _os_log_debug_impl(&dword_1B0389000, v87, OS_LOG_TYPE_DEBUG, "Syncing %lu", buf, 0xCu);
      }

      v88 = [v115 objectAtIndexedSubscript:v119];
      [v121 ef_insertObject:v88 usingComparator:&__block_literal_global_37 allowDuplicates:0];
      if (v80)
      {
        library = [(MFLegacyIMAPMailboxTaskManager *)self library];
        messagePersistentID = [v77 messagePersistentID];
        v91 = [library messageWithLibraryID:objc_msgSend(messagePersistentID options:"longLongValue") inMailbox:{0, 0}];

        if (v91)
        {
          v92 = v106;
          if (!v106)
          {
            v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v106 = v92;
          [v92 addObject:v91];
        }
      }

      v93 = limit - 1;
      if (!limit)
      {
        v93 = 0;
      }

      limit = v93;

      ++v113;
      goto LABEL_97;
    }
  }

  v113 = 0;
  if (examinedRange)
  {
    *examinedRange = xmmword_1B0E97710;
  }

LABEL_108:
  if (success)
  {
    *success = v130;
  }

  v100 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    v101 = self->_loggingPrefix;
    *buf = 138543618;
    v134 = v101;
    v135 = 2048;
    v136 = v113;
    _os_log_impl(&dword_1B0389000, v100, OS_LOG_TYPE_DEFAULT, "%{public}@: _fetchMessagesWithArguments returns %lu", buf, 0x16u);
  }

  return v113;
}

- (void)updateDeletedCountWithNotDeletedCount:(unint64_t)count
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__MFLegacyIMAPMailboxTaskManager_updateDeletedCountWithNotDeletedCount___block_invoke;
  v4[3] = &unk_1E7AA5E90;
  v4[4] = self;
  v4[5] = count;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:65 failedToSelectMailbox:0 operation:v4];
  os_unfair_lock_lock(&self->_serverCountLock);
  self->_settingServerCount = 0;
  os_unfair_lock_unlock(&self->_serverCountLock);
}

void __72__MFLegacyIMAPMailboxTaskManager_updateDeletedCountWithNotDeletedCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) account];
  v6 = [v4 stringWithFormat:@"%lu:*", objc_msgSend(v5, "minID")];
  v7 = [v3 countForSearchOfIDSet:v6 forTerms:&unk_1F2774DA0 success:&v10];

  v8 = *(a1 + 32);
  os_unfair_lock_lock(v8 + 6);
  *(*(a1 + 32) + 40) = v7;
  v9 = *(a1 + 40);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1 + 32) + 32) = *(*(a1 + 32) + 40) + v9;
  }

  os_unfair_lock_unlock(v8 + 6);
}

- (BOOL)_shouldContinueToPreservedUID:(unint64_t)d
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v6 = [account storeForMailboxUid:mailbox];

  v7 = EFStringWithUnsignedInteger();
  v8 = [v6 messageForRemoteID:v7];

  if (v8)
  {
    v9 = ([v8 messageFlags] & 0x80) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  v52 = *MEMORY[0x1E69E9840];
  dCopy = d;
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = +[MFActivityMonitor currentMonitor];
  [v9 setMailbox:mailbox];

  v10 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    loggingPrefix = self->_loggingPrefix;
    *buf = 138543874;
    *&buf[4] = loggingPrefix;
    *&buf[12] = 2048;
    *&buf[14] = options;
    *&buf[22] = 2048;
    messagesCopy = messages;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: fetchNumMessages started with options 0x%lX, numMessages = %lu", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  messagesCopy = -1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v14 = [account storeForMailboxUid:mailbox2];

  os_unfair_lock_lock(&self->_activeFetchVsReplayLock);
  v15 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    hostname = [account2 hostname];
    [(MFLegacyIMAPMailboxTaskManager *)hostname fetchNumMessages:v49 preservingUID:v15 options:account2];
  }

  [v14 willFetchMessages];
  v47 = *MEMORY[0x1E699B3B8];
  objectID = [mailbox objectID];
  v48 = objectID;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E699B3C0] object:self userInfo:v19];

  if ((options & 0x40) != 0)
  {
    v21 = 49;
  }

  else
  {
    v21 = 17;
  }

  v22 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:8];
  [v22 startActivity];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke;
  v32[3] = &unk_1E7AA5EB8;
  v32[4] = self;
  messagesCopy2 = messages;
  v23 = dCopy;
  v33 = v23;
  optionsCopy = options;
  v24 = v14;
  v34 = v24;
  v35 = buf;
  v36 = &v39;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:v21 failedToSelectMailbox:0 operation:v32];
  [v22 stopActivityWithSuccess:*(*&buf[8] + 24) >= 0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:*MEMORY[0x1E699B3B0] object:self userInfo:v19];

  v26 = +[MFActivityMonitor currentMonitor];
  [v26 reset];

  os_unfair_lock_unlock(&self->_activeFetchVsReplayLock);
  v27 = *(*&buf[8] + 24);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v27 = v40[3];
  }

  v28 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_loggingPrefix;
    *v43 = 138543618;
    v44 = v29;
    v45 = 2048;
    v46 = v27;
    _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: fetchNumMessages finished with result %ld", v43, 0x16u);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(buf, 8);

  return v27;
}

void __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v70 = a2;
  v67 = [*(a1 + 32) mailboxName];
  v64 = [*(a1 + 32) mailbox];
  v66 = [v70 selectedMailbox];
  if (!v67 || !v66 || ([v67 isEqualToString:v66] & 1) != 0)
  {
    goto LABEL_18;
  }

  v3 = [v70 isValid];
  v4 = [v64 redactedName:v67];
  v5 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v61 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v66];
    v62 = v61;
    v63 = @"NO";
    *buf = 138413058;
    *&buf[12] = 2112;
    *&buf[4] = v4;
    if (v3)
    {
      v63 = @"YES";
    }

    *&buf[14] = v61;
    v79 = 2048;
    v80 = v70;
    v81 = 2114;
    v82 = v63;
    _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "store and connection mailboxes differ: store=%@ connection=%@ (%p, valid: '%{public}@')", buf, 0x2Au);
  }

  if (v3)
  {
    if ([*(a1 + 32) _selectMailbox:v67 withConnection:v70])
    {
      v6 = 0;
      goto LABEL_13;
    }

    v7 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_2();
    }
  }

  else
  {
    v7 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_1();
    }
  }

  v6 = 1;
LABEL_13:
  v8 = [MEMORY[0x1E699B7B0] currentDevice];
  v9 = [v8 isInternal];

  if (v9)
  {
    v10 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_3();
    }
  }

  if ((v6 & 1) == 0)
  {
LABEL_18:
    v71 = *(a1 + 72);
    [v70 setIsFetching:1];
    v11 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(a1 + 32) account];
      v13 = [v12 hostname];
      __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_4(v13, v77, v11, v12);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = [v14 intValue];
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v75 = v15;
    v16 = *(a1 + 32);
    os_unfair_lock_lock(v16 + 6);
    v65 = *(*(a1 + 32) + 32);
    os_unfair_lock_unlock(v16 + 6);
    v17 = *(a1 + 48);
    v69 = *(a1 + 80);
    if ((v69 & 4) != 0)
    {
      v18 = [v17 serverMessagePersistence];
      v19 = [v18 minimumIMAPUID];

      if (v19)
      {
        v20 = [v70 getMailboxIDForUID:v19];
        if (v20)
        {
          v21 = v71;
          v65 = v20 - 1;
          if (v65 < v71)
          {
            v21 = v20 - 1;
          }

          v71 = v21;
        }

        else
        {
          v25 = *(a1 + 32);
          os_unfair_lock_lock(v25 + 6);
          v65 = *(*(a1 + 32) + 32);
          os_unfair_lock_unlock(v25 + 6);
        }

        v24 = (v19 - 1);
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v68 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = [v17 serverMessagePersistence];
      v23 = [v22 maximumIMAPUID];

      v24 = v23;
      v68 = v23;
    }

    v26 = [*(a1 + 32) account];
    v27 = [v26 minID];
    v28 = v71 - 1;
    if (v71 <= 1)
    {
      v28 = 1;
    }

    v29 = v65 - 1;
    if (v65 <= 1)
    {
      v29 = 1;
    }

    if (v65 <= v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v65 <= v28)
    {
      v31 = v27;
    }

    else
    {
      v31 = v65 - v28;
    }

    v74 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *buf = xmmword_1B0E97710;
    v73 = 0;
    if ([v70 supportsCapability:18])
    {
      v32 = *(a1 + 32);
      v33 = v32[7];
      if (v33 && (v33 != v32[6] || ([v32 mailboxName], v34 = objc_claimAutoreleasedReturnValue(), v76 = v34, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v76, 1), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "fetchStatusForMailboxes:args:", v35, &unk_1F2774DB8), v35, v34, v32 = *(a1 + 32), (v33 = v32[7]) != 0)))
      {
        v36 = v32[6];
        v32[6] = v33;
        if ((v69 & 4) == 0 && v33 == v36)
        {
          [v70 setIsFetching:0];
LABEL_105:
          if ((v69 & 0x20) != 0)
          {
            [*(a1 + 32) _fetchServerUnreadCountWithConnection:v70];
          }

          goto LABEL_107;
        }
      }

      else
      {
        v32[6] = 0;
      }
    }

    v37 = 0;
    v38 = 0;
    v39 = v71;
    while (v37 != 0x7FFFFFFFFFFFFFFFLL && (*(*(*(a1 + 56) + 8) + 24) < v71 || v75 != 0x7FFFFFFFFFFFFFFFLL && [*(a1 + 32) _shouldContinueToPreservedUID:?] && *buf > v75) && v30 && !v38 && (v74 & 1) != 0)
    {
      v40 = objc_autoreleasePoolPush();
      v72 = 0;
      v41 = *(a1 + 32);
      os_unfair_lock_lock(v41 + 6);
      v42 = *(*(a1 + 32) + 32);
      os_unfair_lock_unlock(v41 + 6);
      if (v31 + v30 >= v42)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:*", v31];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:%lu", v31, v31 + v30];
      }
      v43 = ;
      v44 = [*(a1 + 32) _fetchMessagesWithArguments:&unk_1F2774DD0 idRange:v43 onConnection:v70 synchronize:(v69 & 8) == 0 limit:v71 - *(*(*(a1 + 56) + 8) + 24) topUIDToCompact:v24 topKnownUID:v68 success:&v74 examinedRange:buf fetchableUIDsFound:&v73 preserveUID:&v75 numFetchedUIDs:&v72];
      v37 = v44;
      if (v44 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(*(a1 + 56) + 8) + 24) += v44;
      }

      *(*(*(a1 + 64) + 8) + 24) += v72;
      v45 = [*(a1 + 32) account];
      v38 = [v45 minID] == v31;

      v39 *= 2;
      if (!v38)
      {
        v46 = *buf - 1;
        if (!*buf)
        {
          v46 = 0;
        }

        if (*buf != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = v46;
        }

        v47 = [*(a1 + 32) account];
        v48 = [v47 minID];
        v49 = v31 - 1;
        v50 = v39 - 1;
        if (!v39)
        {
          v50 = 1;
        }

        v51 = v31 - 2;
        if (v49 <= 1)
        {
          v51 = 1;
        }

        v52 = v49 > v50;
        v53 = v49 - v50;
        if (v52)
        {
          v30 = v50;
        }

        else
        {
          v30 = v51;
        }

        if (v52)
        {
          v31 = v53;
        }

        else
        {
          v31 = v48;
        }
      }

      v75 = 0x7FFFFFFFFFFFFFFFLL;

      objc_autoreleasePoolPop(v40);
    }

    [v70 setIsFetching:0];
    v54 = *(a1 + 32);
    os_unfair_lock_lock(v54 + 6);
    if (v38 && (v55 = *(a1 + 32), v65 == *(v55 + 32)) && (*(v55 + 11) & 1) == 0)
    {
      *(v55 + 11) = 1;
      os_unfair_lock_unlock(v54 + 6);
      [*(a1 + 32) updateDeletedCountWithNotDeletedCount:v73];
    }

    else
    {
      os_unfair_lock_unlock(v54 + 6);
    }

    if (v74 == 1)
    {
      v56 = *(*(*(a1 + 56) + 8) + 24);
      if (v56 | v69 & 4)
      {
        if (*buf && *buf != 0x7FFFFFFFFFFFFFFFLL)
        {
          v57 = v75 - 1;
          if (*buf - 1 < v75 - 1)
          {
            v57 = *buf - 1;
          }

          if (v75 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v58 = *buf - 1;
          }

          else
          {
            v58 = v57;
          }

          if (v56 < v71)
          {
            v59 = 1;
          }

          else
          {
            v59 = (v69 >> 1) & 1;
          }

          if (v59)
          {
            v60 = 0;
          }

          else
          {
            v60 = 500;
          }

          compactMessagesToUID(*(a1 + 32), v58, v60);
        }
      }

      else
      {
        compactMessagesToUID(*(a1 + 32), 0xFFFFFFFFLL, 0);
      }
    }

    if ((v74 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = -1;
    }

    goto LABEL_105;
  }

LABEL_107:
}

- (void)updateServerUnreadCountClosingConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 33;
  }

  else
  {
    v3 = 1;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__MFLegacyIMAPMailboxTaskManager_updateServerUnreadCountClosingConnection___block_invoke;
  v4[3] = &unk_1E7AA5EE0;
  v4[4] = self;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:v3 failedToSelectMailbox:0 operation:v4];
}

- (void)_fetchServerUnreadCountWithConnection:(id)connection
{
  connectionCopy = connection;
  v28 = 0;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v7 = [account storeForMailboxUid:mailbox];

  os_unfair_lock_lock(&self->_serverCountLock);
  totalCount = [v7 totalCount];
  serverMessageCount = self->_serverMessageCount;
  os_unfair_lock_unlock(&self->_serverCountLock);
  if (totalCount >= serverMessageCount || ([v7 serverMessagePersistence], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "minimumIMAPUID"), v10, v11 < 2))
  {
    [(MFLegacyIMAPMailboxTaskManager *)self _updateServerUnreadCount:0];
  }

  else
  {
    v12 = [connectionCopy messageSetForRange:((v11 - 1) << 32) | 1];
    mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
    if ([mailbox2 shouldUseNonDeletedForUnreadCount])
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"UNDELETED", 0}];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"UNSEEN", @"UNDELETED", 0}];
    }

    v15 = v14;

    v16 = [connectionCopy countForSearchOfUidSet:v12 forTerms:v15 success:&v28];
    if (v28 == 1)
    {
      [(MFLegacyIMAPMailboxTaskManager *)self _updateServerUnreadCount:v16];
    }
  }

  mailbox3 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  shouldUseNonDeletedForUnreadCount = [mailbox3 shouldUseNonDeletedForUnreadCount];

  if ((shouldUseNonDeletedForUnreadCount & 1) == 0)
  {
    account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    baseAccount = [account2 baseAccount];
    isGmailAccount = [baseAccount isGmailAccount];

    if (isGmailAccount)
    {
      uRLString = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F2748140, 0}];
      v23 = objc_alloc(MEMORY[0x1E695DEC8]);
      mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
      library = [v23 initWithObjects:{mailboxName, 0}];

      [connectionCopy fetchStatusForMailboxes:library args:uRLString];
      goto LABEL_16;
    }

    v26 = [connectionCopy countForSearchOfIDSet:0x1F273E1E0 forTerms:&unk_1F2774DE8 success:&v28];
    if (v28 == 1)
    {
      v27 = v26;
      uRLString = [v7 URLString];
      if (!uRLString)
      {
LABEL_17:

        goto LABEL_18;
      }

      library = [(MFLegacyIMAPMailboxTaskManager *)self library];
      [library setLastSyncAndMostRecentStatusCount:v27 forMailbox:uRLString];
LABEL_16:

      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)_updateServerUnreadCount:(unint64_t)count
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  uRLString = [v9 URLString];
  [library setServerUnreadOnlyOnServerCount:count forMailbox:uRLString];
}

- (id)_newSearchResponseQueueForConnection:(id)connection limit:(unsigned int)limit
{
  connectionCopy = connection;
  v7 = objc_alloc_init(MFSearchResponseQueue);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v10 = [account storeForMailboxUid:mailbox];

  v7->limit = limit;
  uRLString = [(MFLibraryStore *)v10 URLString];
  url = v7->super._url;
  v7->super._url = uRLString;

  store = v7->super._store;
  v7->super._store = v10;
  v14 = v10;

  connection = v7->super._connection;
  v7->super._connection = connectionCopy;

  v7->super._shouldCompact = 0;
  v7->super._shouldFetch = 1;
  v7->super._isSearching = 1;
  return v7;
}

- (void)_fetchMessagesMatchingCriterion:(id)criterion limit:(unsigned int)limit withOptions:(unint64_t)options handler:(id)handler
{
  v32[2] = *MEMORY[0x1E69E9840];
  criterionCopy = criterion;
  handlerCopy = handler;
  v32[0] = criterionCopy;
  v12 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v32[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  criterionForSQL = [v14 criterionForSQL];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __92__MFLegacyIMAPMailboxTaskManager__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke;
  v22 = &unk_1E7AA5F08;
  v16 = criterionForSQL;
  v23 = v16;
  v17 = handlerCopy;
  v25 = v17;
  v26 = &v28;
  selfCopy = self;
  limitCopy = limit;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:options | 0x41 failedToSelectMailbox:0 operation:&v19];
  if ((v29[3] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:2 userInfo:{0, v19, v20, v21, v22, v23}];
    (*(v17 + 2))(v17, 0x7FFFFFFFFFFFFFFFLL, 0, v18);
  }

  _Block_object_dispose(&v28, 8);
}

void __92__MFLegacyIMAPMailboxTaskManager__fetchMessagesMatchingCriterion_limit_withOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = fetchArgumentsForCriterion(*(a1 + 32), 1);
  if (v4)
  {
    v5 = [*(a1 + 40) _newSearchResponseQueueForConnection:v8 limit:*(a1 + 64)];
    [v8 sendUidResponsesForSearchArguments:v4 toQueue:v5];
    [v5 flush];
    v6 = v5[10];
    if (v6)
    {
      [*(a1 + 40) _fetchMessagesWithUIDs:v6 connection:v8 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:128 queueClass:objc_opt_class()];
    }

    v7 = [v5 indexSet];
    [v3 addIndexes:v7];

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) _fetchServerUnreadCountWithConnection:v8];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LibraryIMAPStoreErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (id)messageIdRollCall:(id)call
{
  callCopy = call;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__MFLegacyIMAPMailboxTaskManager_messageIdRollCall___block_invoke;
  v8[3] = &unk_1E7AA5F30;
  v9 = callCopy;
  v10 = &v11;
  v5 = callCopy;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:17 failedToSelectMailbox:0 operation:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __52__MFLegacyIMAPMailboxTaskManager_messageIdRollCall___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 _uidsForMessageIDs:*(a1 + 32) excludeDeleted:1];
  if (![v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    goto LABEL_5;
  }

  v4 = [v3 count];
  if (v4 == [*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) copy];
LABEL_5:
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    goto LABEL_7;
  }

  v7 = [v13 fetchMessageIdsForUids:v3];
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = [v7 allValues];
  v10 = [v8 initWithArray:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
}

- (id)searchWithCriterion:(id)criterion limit:(unsigned int)limit
{
  v4 = *&limit;
  criterionCopy = criterion;
  if (criterionCopy)
  {
    v7 = objc_opt_new();
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__12;
    v17[4] = __Block_byref_object_dispose__12;
    v18 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __60__MFLegacyIMAPMailboxTaskManager_searchWithCriterion_limit___block_invoke;
    v14 = &unk_1E7AA5F58;
    v8 = v7;
    v15 = v8;
    v16 = v17;
    [(MFLegacyIMAPMailboxTaskManager *)self _fetchMessagesMatchingCriterion:criterionCopy limit:v4 withOptions:0 handler:&v11];
    future = [v8 future];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    future = 0;
  }

  return future;
}

void __60__MFLegacyIMAPMailboxTaskManager_searchWithCriterion_limit___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a3;
  v6 = a4;
  if (v16)
  {
    v7 = objc_opt_new();
    for (i = [v16 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v16, "indexGreaterThanIndex:", i))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v7 addObject:v9];
    }

    v10 = *(a1 + 32);
    v11 = [[MFUIDSet alloc] initWithUIDs:v7];
    [v10 finishWithResult:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    v7 = [v6 copy];
    [v12 finishWithError:v7];
  }

  v13 = [v6 copy];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)downloadSearchResults:(id)results
{
  resultsCopy = results;
  uids = [resultsCopy uids];
  v6 = [uids ef_map:&__block_literal_global_140];
  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  uRLString = [mailbox URLString];
  v11 = [library copyMessagesWithRemoteIDs:v8 options:7346239 inRemoteMailbox:uRLString];
  v12 = [v11 ef_map:&__block_literal_global_143];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_3;
  v24[3] = &unk_1E7AA5FA0;
  v13 = v12;
  v25 = v13;
  v14 = [uids ef_filter:v24];
  v15 = [[MFUIDSet alloc] initWithUIDs:uids];
  if ([v14 count])
  {
    v16 = objc_opt_new();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_4;
    v20[3] = &unk_1E7AA5FC8;
    v20[4] = self;
    v21 = v14;
    v17 = v16;
    v22 = v17;
    v23 = v15;
    [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:0 failedToSelectMailbox:0 operation:v20];
    future = [v17 future];
  }

  else
  {
    future = [MEMORY[0x1E699B7C8] futureWithResult:v15];
  }

  return future;
}

id __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

id __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v2, "uid")}];

  return v3;
}

void __56__MFLegacyIMAPMailboxTaskManager_downloadSearchResults___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _fetchMessagesWithUIDs:*(a1 + 40) connection:v3 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:128 queueClass:objc_opt_class()];
  [*(a1 + 48) finishWithResult:*(a1 + 56)];
}

- (BOOL)canFetchMessageIDs
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v5 = [account storeForMailboxUid:mailbox];

  serverMessageCount = [v5 serverMessageCount];
  LOBYTE(serverMessageCount) = serverMessageCount > [v5 allNonDeletedCountIncludingServerSearch:1 andThreadSearch:1];

  return serverMessageCount;
}

- (int64_t)fetchMessagesWithMessageIDs:(id)ds andSetFlags:(unint64_t)flags
{
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  if ([dsCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__MFLegacyIMAPMailboxTaskManager_fetchMessagesWithMessageIDs_andSetFlags___block_invoke;
    v9[3] = &unk_1E7AA5FF0;
    v10 = dsCopy;
    selfCopy = self;
    v12 = &v14;
    flagsCopy = flags;
    [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:1 failedToSelectMailbox:0 operation:v9];
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __74__MFLegacyIMAPMailboxTaskManager_fetchMessagesWithMessageIDs_andSetFlags___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 _uidsForMessageIDs:a1[4] excludeDeleted:0];
  v4 = a1[5];
  v5 = [v3 allObjects];
  *(*(a1[6] + 8) + 24) = [v4 _fetchMessagesWithUIDs:v5 connection:v6 newCount:0x7FFFFFFFFFFFFFFFLL flagsToSet:a1[7] queueClass:objc_opt_class()];
}

- (NSString)mailboxName
{
  _MFLockGlobalLock();
  v3 = self->_mailboxName;
  _MFUnlockGlobalLock();

  return v3;
}

- (void)compact
{
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  isOffline = [account isOffline];

  if ((isOffline & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MFLegacyIMAPMailboxTaskManager_compact__block_invoke;
    v5[3] = &unk_1E7AA5EE0;
    v5[4] = self;
    [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:1 failedToSelectMailbox:0 operation:v5];
  }
}

void __41__MFLegacyIMAPMailboxTaskManager_compact__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (([v10 expunge] & 1) == 0)
  {
    v3 = +[MFActivityMonitor currentMonitor];
    v4 = [v3 error];

    if (v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = MFLookupLocalizedString(@"IMAP_COMPACT_FAILED", @"Mail was unable to remove the deleted messages in the mailbox “%@” on server “%@”.", @"Delayed");
      v7 = [*(*(a1 + 32) + 120) displayName];
      v8 = [*(*(a1 + 32) + 112) hostname];
      v9 = [v5 stringWithFormat:v6, v7, v8];
      [v4 useGenericDescription:v9];
    }
  }
}

- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact
{
  compactCopy = compact;
  v5 = *&days;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];

  mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  uRLString = [mailbox2 URLString];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __78__MFLegacyIMAPMailboxTaskManager_deleteMessagesOlderThanNumberOfDays_compact___block_invoke;
  v19 = &unk_1E7AA6018;
  selfCopy = self;
  v23 = v5;
  v24 = compactCopy;
  v12 = uRLString;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  if (![(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:1 failedToSelectMailbox:0 operation:&v16])
  {
    v14 = [(MFLegacyIMAPMailboxTaskManager *)self library:v16];
    v15 = [v14 messagesForMailbox:v12 olderThanNumberOfDays:v5];

    if ([v15 count])
    {
      [v13 deleteMessages:v15 moveToTrash:0];
      if (compactCopy)
      {
        [v13 compactMessages:v15];
      }
    }
  }
}

void __78__MFLegacyIMAPMailboxTaskManager_deleteMessagesOlderThanNumberOfDays_compact___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) account];
  v5 = [v4 _shouldLogDeleteActivity];

  if (v5)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) account];
      v8 = [v7 ef_publicDescription];
      v9 = *(a1 + 32);
      v10 = *(a1 + 56);
      v15 = 138544130;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "IMAP Account %{public}@ deleting messages from store: %@ older than %d days using connection: %@", &v15, 0x26u);
    }
  }

  v11 = *(a1 + 32);
  v12 = [v11 mailboxName];
  LODWORD(v11) = [v11 _selectMailbox:v12 withConnection:v3];

  if (v11)
  {
    [v3 deleteMessagesOlderThanNumberOfDays:*(a1 + 56)];
  }

  if (*(a1 + 60) == 1)
  {
    [v3 close];
  }

  v13 = [*(a1 + 32) library];
  v14 = [v13 messagesForMailbox:*(a1 + 40) olderThanNumberOfDays:*(a1 + 56)];

  [*(a1 + 48) compactMessages:v14];
}

- (id)replayAction:(id)action
{
  actionCopy = action;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  os_unfair_lock_lock(&self->_activeFetchVsReplayLock);
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0x1E699B348;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 0x1E699B2B0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = 0x1E699B2B8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_16:
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MFLegacyIMAPMailboxTaskManager.m" lineNumber:1354 description:{@"Couldn't make replayer for action %@", actionCopy}];

          v7 = 0;
          goto LABEL_10;
        }

        v6 = 0x1E699B368;
      }
    }
  }

  v7 = [objc_alloc(*v6) initWithAction:actionCopy];
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__MFLegacyIMAPMailboxTaskManager_replayAction___block_invoke;
  v15[3] = &unk_1E7AA6040;
  v8 = v7;
  v16 = v8;
  selfCopy = self;
  v18 = &v20;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:17 failedToSelectMailbox:&v19 operation:v15];
  if (!v21[5] && v19 == 1)
  {
    v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
    v10 = [v8 failActionWithError:v9];
    v11 = v21[5];
    v21[5] = v10;
  }

  os_unfair_lock_unlock(&self->_activeFetchVsReplayLock);
  v12 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __47__MFLegacyIMAPMailboxTaskManager_replayAction___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setServerInterface:?];
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v3 = [*(a1 + 32) replayAction];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)messageDataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFLegacyIMAPMailboxTaskManager.m" lineNumber:1371 description:{@"Invalid parameter not satisfying: %@", @"[message isKindOfClass:[MFMailMessage class]]"}];
  }

  v6 = [messageCopy messageDataIsComplete:0 downloadIfNecessary:0];

  return v6;
}

- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL
{
  rLCopy = rL;
  v6 = [MailAccount accountWithURL:l];
  v7 = [MailAccount accountWithURL:rLCopy];
  if (v6 == v7)
  {
    moveSupported = [v6 moveSupported];
  }

  else
  {
    moveSupported = 0;
  }

  return moveSupported;
}

- (id)flagsForIMAPUIDs:(id)ds mailboxURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v7 = [account storeForMailboxUid:mailbox];

  serverMessagePersistence = [v7 serverMessagePersistence];
  v9 = [serverMessagePersistence serverMessagesForIMAPUIDs:dsCopy limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        serverFlags = [v15 serverFlags];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15, "imapUID")}];
        [v10 setObject:serverFlags forKeyedSubscript:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v10;
}

- (id)imapMailboxNameForMailboxURL:(id)l
{
  lCopy = l;
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v6 = [mailbox URL];
  v7 = [lCopy isEqual:v6];

  if (v7)
  {
    mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
  }

  else
  {
    absoluteString = [lCopy absoluteString];
    v10 = [MailAccount mailboxUidFromActiveAccountsForURL:absoluteString];

    account = [(MFLegacyIMAPMailboxTaskManager *)self account];
    mailboxName = [account _nameForMailboxUid:v10];
  }

  return mailboxName;
}

- (id)messageDataForRemoteID:(id)d mailboxURL:(id)l
{
  dCopy = d;
  v6 = -[MFIMAPMessage initWithFlags:size:uid:]([MFIMAPMessage alloc], "initWithFlags:size:uid:", 0, 0xFFFFFFFFLL, [dCopy intValue]);
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];
  [(MFIMAPMessage *)v6 setMessageStore:v9];

  v10 = [(MFLegacyIMAPMailboxTaskManager *)self _fetchFullMessageDataForMessage:v6 download:0];

  return v10;
}

- (BOOL)fetchDataForMimePart:(id)part range:(_NSRange)range isComplete:(BOOL *)complete consumer:(id)consumer
{
  length = range.length;
  location = range.location;
  partCopy = part;
  consumerCopy = consumer;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  type = [partCopy type];
  if (([@"multipart" isEqualToString:type] & 1) == 0)
  {
    [partCopy range];
    v15 = v14;
    mimeBody = [partCopy mimeBody];
    message = [mimeBody message];

    partNumber = [partCopy partNumber];
    if (v15 && message && (objc_opt_respondsToSelector() & 1) != 0 && [message uid] && (objc_msgSend(&stru_1F273A5E0, "isEqualToString:", partNumber) & 1) == 0)
    {
      fetchLimits = [(IMAPAccount *)self->_account fetchLimits];
      [partCopy range];
      v28 = v19;
      fetchMinBytes = [fetchLimits fetchMinBytes];
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (fetchMinBytes != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (location || length != v28)
        {
          if (length != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (location >= v28)
            {
              location = v28;
            }

            fetchMinBytes2 = [fetchLimits fetchMinBytes];
            minBytesLeft = [fetchLimits minBytesLeft];
            v23 = fetchMinBytes2;
            v21 = v28 - location;
            if (length > fetchMinBytes2)
            {
              v23 = length;
            }

            if (v21 < v23)
            {
              v23 = v28 - location;
            }

            if (v28 - location - v23 >= minBytesLeft)
            {
              v21 = v23;
            }
          }
        }

        else
        {
          location = 0;
        }
      }

      v24 = v21;
      v29 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:13];
      [v29 startActivity];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke;
      v31[3] = &unk_1E7AA6068;
      v32 = message;
      v38 = location;
      v39 = v24;
      v33 = partNumber;
      v40 = v15;
      v37 = &v42;
      v34 = consumerCopy;
      selfCopy = self;
      v36 = partCopy;
      completeCopy = complete;
      [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:5 failedToSelectMailbox:0 operation:v31];
      [v29 stopActivityWithSuccess:*(v43 + 24)];
    }
  }

  v25 = *(v43 + 24);

  _Block_object_dispose(&v42, 8);
  return v25;
}

void __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uid];
  v5 = [v3 downloadCache];
  v6 = v5;
  v7 = *(a1 + 88);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (*(a1 + 96))
    {
      [v5 downloadForUid:v4 section:v8 expectedLength:4096 consumer:v9];
    }

    else
    {
      [v5 downloadForUid:v4 section:v8 length:0 consumer:v9];
    }
    v10 = ;
  }

  else
  {
    v10 = [v5 downloadForUid:v4 section:*(a1 + 40) range:*(a1 + 80) consumer:{v7, *(a1 + 48)}];
  }

  v11 = v10;
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 56) _waitForDataFromDownload:v10 uid:v4 downloadCache:v6 connection:v3];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 64) range];
    v13 = v12;
    v14 = [v11 bytesFetched];
    v15 = +[MFActivityMonitor currentMonitor];
    v16 = +[MFNetworkController sharedInstance];
    [v15 recordTransportType:{objc_msgSend(v16, "transportType")}];

    v17 = *(a1 + 80) + v14 == v13;
    v18 = v17;
    if (!v14 && !v17)
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke_cold_1(v4, v19);
      }

      v18 = 1;
    }

    v20 = *(a1 + 104);
    if (v20)
    {
      *v20 |= v18;
    }
  }
}

- (void)fetchDataForMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[MFError alloc] initWithDomain:@"MFMessageErrorDomain" code:1029 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v4);
}

- (id)fetchDataForMessage:(id)message didDownload:(BOOL *)download
{
  messageCopy = message;
  v9 = 0;
  v6 = [(MFLegacyIMAPMailboxTaskManager *)self _fetchFullMessageDataForMessage:messageCopy download:&v9];
  v7 = v9;
  if (!v6)
  {
    _compactMessageIfNoData(self, v7, messageCopy);
  }

  return v6;
}

- (id)_fetchFullMessageDataForMessage:(id)message download:(id *)download
{
  messageCopy = message;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__12;
  v29 = __Block_byref_object_dispose__12;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v7 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:13];
  [v7 startActivity];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__MFLegacyIMAPMailboxTaskManager__fetchFullMessageDataForMessage_download___block_invoke;
  v14 = &unk_1E7AA6090;
  v8 = messageCopy;
  v15 = v8;
  selfCopy = self;
  v17 = &v19;
  v18 = &v25;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:5 failedToSelectMailbox:0 operation:&v11];
  [v7 stopActivityWithSuccess:{v26[5] != 0, v11, v12, v13, v14}];
  if (download)
  {
    *download = v20[5];
  }

  v9 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v9;
}

void __75__MFLegacyIMAPMailboxTaskManager__fetchFullMessageDataForMessage_download___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) uid];
  v4 = objc_alloc_init(MEMORY[0x1E69AD698]);
  v5 = [MEMORY[0x1E69AD6D0] filterWithConsumer:v4];
  v6 = [v23 downloadCache];
  v7 = [v6 downloadForUid:v3 section:&stru_1F273A5E0 length:objc_msgSend(*(a1 + 32) consumer:{"messageSize"), v5}];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 40) _waitForDataFromDownload:*(*(*(a1 + 48) + 8) + 40) uid:v3 downloadCache:v6 connection:v23];
  v11 = [*(*(*(a1 + 48) + 8) + 40) bytesFetched];
  v12 = [*(a1 + 32) messageSize];
  if (v11 >= v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 1) != 0 || ([v6 downloadForUid:v3 section:&stru_1F273A5E0 range:v11 consumer:{v12, v5}], v17 = objc_claimAutoreleasedReturnValue(), v18 = *(*(a1 + 48) + 8), v19 = *(v18 + 40), *(v18 + 40) = v17, v19, v20 = objc_msgSend(*(a1 + 40), "_waitForDataFromDownload:uid:downloadCache:connection:", *(*(*(a1 + 48) + 8) + 40), v3, v6, v23), v21 = objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "bytesFetched"), v20) && ((v22 = v21, !objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "bytesFetched")) || v22 + v11 >= v12))
  {
    v14 = [v4 data];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (BOOL)_waitForDataFromDownload:(id)download uid:(unsigned int)uid downloadCache:(id)cache connection:(id)connection
{
  v8 = *&uid;
  downloadCopy = download;
  cacheCopy = cache;
  connectionCopy = connection;
  if (downloadCopy)
  {
    v13 = +[MFActivityMonitor currentMonitor];
    mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
    [v13 setMailbox:mailbox];

    fetchPipeline = [connectionCopy fetchPipeline];
    expectedLength = [v13 expectedLength];
    [v13 percentDone];
    v18 = v17;
    [connectionCopy enableThroughputMonitoring:1];
    v19 = 0;
    v26 = (fmax(v18, 0.0) * expectedLength);
    while (1)
    {
      if (([downloadCopy isComplete] & 1) != 0 || (objc_msgSend(v13, "shouldCancel") & 1) != 0 || !objc_msgSend(connectionCopy, "isValid") || (objc_msgSend(v13, "error"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        [connectionCopy enableThroughputMonitoring:0];
        if ([downloadCopy isComplete])
        {
          isSuccessful = [downloadCopy isSuccessful];
          [cacheCopy cleanUpDownloadsForUid:v8];
        }

        else
        {
          isSuccessful = 0;
        }

        goto LABEL_28;
      }

      v21 = objc_autoreleasePoolPush();
      [fetchPipeline mf_lock];
      [fetchPipeline setChunkSize:{objc_msgSend(connectionCopy, "readBufferSize")}];
      if (([fetchPipeline isFull] & 1) == 0)
      {
        [cacheCopy addCommandsForDownload:downloadCopy toPipeline:fetchPipeline];
        v22 = [fetchPipeline failureResponsesFromSendingCommandsWithConnection:connectionCopy];
        [cacheCopy handleFetchResponses:v22];
      }

      [fetchPipeline mf_unlock];
      [cacheCopy processResultsForUid:v8];
      if (expectedLength)
      {
        break;
      }

LABEL_18:
      objc_autoreleasePoolPop(v21);
    }

    if ((v19 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![downloadCopy allowsPartialDownloads])
      {
        v19 = 0;
        goto LABEL_17;
      }

      if ([downloadCopy partial])
      {
        expectedLength += [downloadCopy expectedLength];
      }

      else
      {
        expectedLength = [downloadCopy bytesFetched];
      }

      [v13 setExpectedLength:expectedLength];
    }

    v19 = 1;
LABEL_17:
    [v13 setPercentDone:{((objc_msgSend(downloadCopy, "bytesFetched") + v26) / expectedLength)}];
    goto LABEL_18;
  }

  v24 = MFLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    [MFLegacyIMAPMailboxTaskManager _waitForDataFromDownload:uid:downloadCache:connection:];
  }

  isSuccessful = 0;
LABEL_28:

  return isSuccessful;
}

- (id)_downloadForMessageBodyData:(id)data usingDownloadCache:(id)cache
{
  v5 = [cache downloadForMessage:data];
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  [v5 setAllowsPartialDownloads:{objc_msgSend(account, "allowsPartialDownloads")}];

  [v5 setFetchBodyData:1];

  return v5;
}

- (id)_performBodyDataDownload:(id)download usingConnection:(id)connection downloadCache:(id)cache isPartial:(BOOL *)partial
{
  downloadCopy = download;
  connectionCopy = connection;
  cacheCopy = cache;
  partial = [downloadCopy partial];
  if (!-[MFLegacyIMAPMailboxTaskManager _waitForDataFromDownload:uid:downloadCache:connection:](self, "_waitForDataFromDownload:uid:downloadCache:connection:", downloadCopy, [downloadCopy uid], cacheCopy, connectionCopy))
  {
    data = 0;
    if (!partial)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  data = [downloadCopy data];
  partial = [downloadCopy partial];
  if (partial)
  {
LABEL_5:
    *partial = partial;
  }

LABEL_6:

  return data;
}

- (id)fetchDataForMessage:(id)message partial:(BOOL *)partial
{
  messageCopy = message;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__12;
  v27 = __Block_byref_object_dispose__12;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  v7 = [objc_alloc(MEMORY[0x1E699B310]) initWithDomain:21 type:13];
  [v7 startActivity];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MFLegacyIMAPMailboxTaskManager_fetchDataForMessage_partial___block_invoke;
  v12[3] = &unk_1E7AA60B8;
  v14 = &v17;
  v12[4] = self;
  v8 = messageCopy;
  v13 = v8;
  v15 = &v23;
  partialCopy = partial;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:21 failedToSelectMailbox:0 operation:v12];
  [v7 stopActivityWithSuccess:v24[5] != 0];
  v9 = v24[5];
  if (!v9)
  {
    _compactMessageIfNoData(self, v18[5], v8);
    v9 = v24[5];
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

void __62__MFLegacyIMAPMailboxTaskManager_fetchDataForMessage_partial___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 downloadCache];
  v4 = [*(a1 + 32) _downloadForMessageBodyData:*(a1 + 40) usingDownloadCache:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) _performBodyDataDownload:*(*(*(a1 + 48) + 8) + 40) usingConnection:v12 downloadCache:v3 isPartial:*(a1 + 64)];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = +[MFActivityMonitor currentMonitor];
  v11 = +[MFNetworkController sharedInstance];
  [v10 recordTransportType:{objc_msgSend(v11, "transportType")}];
}

- (id)fetchHeadersForMessage:(id)message
{
  messageCopy = message;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__12;
  v24 = __Block_byref_object_dispose__12;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MFLegacyIMAPMailboxTaskManager_fetchHeadersForMessage___block_invoke;
  v9[3] = &unk_1E7AA60E0;
  v12 = &v14;
  v5 = messageCopy;
  v10 = v5;
  selfCopy = self;
  v13 = &v20;
  [(MFLegacyIMAPMailboxTaskManager *)self performOperationRequiringConnection:1 withOptions:5 failedToSelectMailbox:0 operation:v9];
  v6 = v21[5];
  if (!v6)
  {
    _compactMessageIfNoData(self, v15[5], v5);
    v6 = v21[5];
  }

  v7 = v6;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __57__MFLegacyIMAPMailboxTaskManager_fetchHeadersForMessage___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 downloadCache];
  v4 = [v3 downloadForMessage:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7 && [*(a1 + 40) _waitForDataFromDownload:v7 uid:objc_msgSend(*(a1 + 32) downloadCache:"uid") connection:{v3, v16}])
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = +[MFNetworkController sharedInstance];
    [v8 recordTransportType:{objc_msgSend(v9, "transportType")}];

    v10 = [*(*(*(a1 + 48) + 8) + 40) data];
    v11 = [v10 mf_rangeOfRFC822HeaderData];
    v13 = [v10 mf_subdataWithRange:{v11, v12}];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (BOOL)performOperationRequiringConnection:(BOOL)connection withOptions:(unint64_t)options failedToSelectMailbox:(BOOL *)mailbox operation:(id)operation
{
  connectionCopy = connection;
  v42 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v13 = [account2 storeForMailboxUid:mailbox];

  if ([v13 allowsAppend])
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = options | 2;
  }

  [(NSLock *)self->_cachedConnectionLock lock];
  p_cachedConnection = &self->_cachedConnection;
  cachedConnection = self->_cachedConnection;
  if ((optionsCopy & 4) != 0)
  {
    if (![(MFIMAPConnection *)cachedConnection mf_tryLock])
    {
      v17 = 0;
      goto LABEL_9;
    }

    cachedConnection = *p_cachedConnection;
  }

  v17 = cachedConnection;
LABEL_9:
  [(NSLock *)self->_cachedConnectionLock unlock];
  if (v17 && (optionsCopy & 0x10) != 0)
  {
    [(MFIMAPConnection *)v17 noop];
  }

  else if (!v17)
  {
    goto LABEL_20;
  }

  if ([(MFConnection *)v17 isValid])
  {
    v18 = 1;
    goto LABEL_24;
  }

  if ((optionsCopy & 4) != 0)
  {
    [(MFIMAPConnection *)v17 mf_unlock];
  }

  [(NSLock *)self->_cachedConnectionLock lock];
  v19 = *p_cachedConnection;
  if (v17 == *p_cachedConnection)
  {
    *p_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];

LABEL_20:
  mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v17 = [account connectionForMailbox:mailbox2 delegate:self options:optionsCopy failedToSelectMailbox:mailbox];

  [(NSLock *)self->_cachedConnectionLock lock];
  if (!*p_cachedConnection && (optionsCopy & 0x40) == 0)
  {
    objc_storeStrong(&self->_cachedConnection, v17);
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  v18 = 0;
LABEL_24:
  p_mailboxName = &self->_mailboxName;
  if (self->_mailboxName)
  {
    if (v17)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (connectionCopy)
    {
      goto LABEL_53;
    }

    goto LABEL_31;
  }

  v22 = [account _nameForMailboxUid:self->_mailbox];
  _MFLockGlobalLock();
  if (!*p_mailboxName)
  {
    objc_storeStrong(&self->_mailboxName, v22);
  }

  _MFUnlockGlobalLock();

  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_31:
  v23 = v18 ^ 1;
  if (!v17)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    if (*p_mailboxName)
    {
      selectedMailbox = [(MFIMAPConnection *)v17 selectedMailbox];

      if (!selectedMailbox)
      {
        [(MFLegacyIMAPMailboxTaskManager *)self _selectMailbox:self->_mailboxName withConnection:v17];
      }
    }
  }

  mailbox3 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
  v27 = [mailbox3 redactedName:mailboxName];

  v28 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = @"NO";
    *buf = 138544130;
    v35 = v27;
    v36 = 2048;
    if (v18)
    {
      v29 = @"YES";
    }

    v37 = v17;
    v38 = 2112;
    v39 = v29;
    v40 = 1024;
    v41 = optionsCopy;
    _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_INFO, "performOperationRequiringConnection: mailbox='%{public}@' connection=%p cached=%@ options=%d", buf, 0x26u);
  }

  [(MFConnection *)v17 startActivity];
  operationCopy[2](operationCopy, v17);
  [(MFConnection *)v17 stopActivity];

  if (v17)
  {
    if ((optionsCopy & 4) != 0)
    {
      [(MFIMAPConnection *)v17 mf_unlock];
    }

    if ((optionsCopy & 0x20) != 0)
    {
      if ([(MFMailboxUid *)self->_mailbox mailboxType]!= 7)
      {
        v30 = 1;
LABEL_52:
        [account checkInConnection:v17 destroy:v30];
        goto LABEL_53;
      }

      currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
      v30 = [currentDevice isPlatform:2];
    }

    else
    {
      v30 = 0;
    }

    if (v17 != *p_cachedConnection || v30)
    {
      goto LABEL_52;
    }
  }

LABEL_53:

  return v17 != 0;
}

- (BOOL)_selectMailbox:(id)mailbox withConnection:(id)connection
{
  mailboxCopy = mailbox;
  connectionCopy = connection;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  v9 = [connectionCopy selectMailbox:mailboxCopy withAccount:account];

  return v9;
}

- (void)reselectMailbox
{
  if (self->_cachedConnection)
  {
    account = [(MFLegacyIMAPMailboxTaskManager *)self account];
    v6 = [account _nameForMailboxUid:self->_mailbox];

    _MFLockGlobalLock();
    v4 = [v6 copy];
    mailboxName = self->_mailboxName;
    self->_mailboxName = v4;

    _MFUnlockGlobalLock();
    [(MFLegacyIMAPMailboxTaskManager *)self _selectMailbox:self->_mailboxName withConnection:self->_cachedConnection];
  }
}

- (void)willRemoveDelegation:(id)delegation
{
  delegationCopy = delegation;
  [(NSLock *)self->_cachedConnectionLock lock];
  cachedConnection = self->_cachedConnection;
  if (cachedConnection)
  {
    v5 = cachedConnection == delegationCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    self->_cachedConnection = 0;
  }

  [(NSLock *)self->_cachedConnectionLock unlock];
  if (v6)
  {
    [(MFIMAPConnection *)delegationCopy finishIdle];
  }
}

- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id)command
{
  v64 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  commandCopy = command;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v47 = [account storeForMailboxUid:mailbox];

  if (!commandCopy || [responseCopy responseType] != 2 || objc_msgSend(commandCopy, "command") != 13 && objc_msgSend(commandCopy, "command") != 9)
  {
    goto LABEL_45;
  }

  untaggedResponses = [commandCopy untaggedResponses];
  if (!untaggedResponses)
  {
    goto LABEL_44;
  }

  *&self->_supportsForwardedFlag = 0;
  self->_supportsFlagColorBitFlags = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = untaggedResponses;
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (!v10)
  {
    v25 = v9;
    goto LABEL_43;
  }

  unsignedIntValue = 0;
  v12 = *v49;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v49 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v48 + 1) + 8 * i);
      if ([v14 responseType] == 2)
      {
        responseInfo = [v14 responseInfo];
        responseCode = [v14 responseCode];
        if (responseCode > 8)
        {
          if (responseCode != 9)
          {
            if (responseCode == 10)
            {
              unsignedIntValue = [responseInfo unsignedIntValue];
            }

            goto LABEL_29;
          }

          unsignedIntValue2 = [responseInfo unsignedIntValue];
          [v47 setUidNext:unsignedIntValue2];
          v17 = +[MFLegacyIMAPMailboxTaskManager log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            loggingPrefix = self->_loggingPrefix;
            *buf = 138543618;
            v56 = loggingPrefix;
            v57 = 1024;
            LODWORD(v58) = unsignedIntValue2;
            _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Received UIDNEXT = %u", buf, 0x12u);
          }

LABEL_28:
        }

        else
        {
          if (responseCode != 5)
          {
            if (responseCode == 6)
            {
              [v47 setAllowsAppend:0];
            }

            goto LABEL_29;
          }

          if (responseInfo)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = responseInfo;
              self->_supportsForwardedFlag = [v17 indexOfObject:@"Forwarded"]!= 0x7FFFFFFFFFFFFFFFLL;
              self->_supportsDollarForwardedFlag = [v17 indexOfObject:@"$Forwarded"]!= 0x7FFFFFFFFFFFFFFFLL;
              v18 = [v17 indexOfObject:@"$MailFlagBit0"]!= 0x7FFFFFFFFFFFFFFFLL || [v17 indexOfObject:@"$MailFlagBit1"]!= 0x7FFFFFFFFFFFFFFFLL || [v17 indexOfObject:@"$MailFlagBit2"]!= 0x7FFFFFFFFFFFFFFFLL;
              self->_supportsFlagColorBitFlags = v18;
              goto LABEL_28;
            }
          }
        }

LABEL_29:

        continue;
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v48 objects:v63 count:16];
  }

  while (v10);

  if (unsignedIntValue)
  {
    v21 = [(MFMailboxUid *)self->_mailbox userInfoObjectForKey:@"UIDVALIDITY"];
    intValue = [v21 intValue];

    if (intValue != unsignedIntValue)
    {
      [v47 setUidValidity:unsignedIntValue];
      if (intValue)
      {
        [v47 _flushAllMessageData];
        mailbox2 = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
        mailboxName = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
        v25 = [mailbox2 redactedName:mailboxName];

        v26 = +[MFLegacyIMAPMailboxTaskManager log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_loggingPrefix;
          *buf = 138544130;
          v56 = v27;
          v57 = 2114;
          v58 = v25;
          v59 = 2048;
          v60 = intValue;
          v61 = 2048;
          v62 = unsignedIntValue;
          _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Forcing reload of '%{public}@' because of UIDVALIDITY change (old:%lu new:%lu)", buf, 0x2Au);
        }

        library = [(MFLegacyIMAPMailboxTaskManager *)self library];
        uRLString = [v47 URLString];
        v30 = 0;
        do
        {
          v31 = objc_autoreleasePoolPush();
          v32 = [library messagesForMailbox:uRLString limit:1000];

          v30 = v32;
          if ([v32 count])
          {
            [library compactMessages:v32];
          }

          objc_autoreleasePoolPop(v31);
        }

        while ([v32 count] > 0x3E7);
        serverMessagePersistence = [v47 serverMessagePersistence];
        [serverMessagePersistence deleteAllServerMessagesInMailbox];

LABEL_43:
      }
    }
  }

LABEL_44:

LABEL_45:
  if ([responseCopy isAlertResponse])
  {
    account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    userString = [responseCopy userString];
    [account2 handleAlertResponse:userString];
  }

  if ([responseCopy isResponseWithCode:31])
  {
    account3 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    userString2 = [responseCopy userString];
    [account3 handleOverQuotaResponse:userString2];
  }

  if ((!commandCopy || [commandCopy command] == 28) && -[MFLegacyIMAPMailboxTaskManager shouldUseIDLE](self, "shouldUseIDLE") && objc_msgSend(responseCopy, "responseType") == 9)
  {
    v38 = +[MFLegacyIMAPMailboxTaskManager log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = self->_loggingPrefix;
      number = [responseCopy number];
      *buf = 138543618;
      v56 = v39;
      v57 = 2048;
      v58 = number;
      _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: Got EXISTS = %llu", buf, 0x16u);
    }

    -[MFLegacyIMAPMailboxTaskManager setServerMessageCount:](self, "setServerMessageCount:", [responseCopy number]);
    if (self->_mailbox)
    {
      mailbox = self->_mailbox;
      v53 = @"MailAccountContentsDidChangeUids";
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&mailbox count:1];
      v54 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MailAccountContentsDidChange" object:self->_account userInfo:v42];
    }
  }
}

- (id)_idleConditionsObservable
{
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = +[MFPowerController sharedInstance];
  lowPowerModeObservable = [v3 lowPowerModeObservable];
  pluggedInObservable = [v3 pluggedInObservable];
  v4 = +[MFNetworkController sharedInstance];
  wifiObservable = [v4 wifiObservable];

  v6 = +[MFLockStateMonitor sharedInstance];
  lockStateObservable = [v6 lockStateObservable];

  v8 = +[MFAppStateMonitor sharedInstance];
  appIsVisibleObservable = [v8 appIsVisibleObservable];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E699B830];
  v24[0] = lowPowerModeObservable;
  v24[1] = appIsVisibleObservable;
  v24[2] = lockStateObservable;
  v24[3] = wifiObservable;
  v24[4] = pluggedInObservable;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  v12 = [v10 combineLatest:v11];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke;
  v21[3] = &unk_1E7AA4B40;
  objc_copyWeak(&v22, &location);
  v13 = [v12 map:v21];

  v14 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.imap (IDLE)" qualityOfService:17];
  distinctUntilChanged = [v13 distinctUntilChanged];
  v16 = [distinctUntilChanged doOnError:&__block_literal_global_201];
  v17 = [v16 observeOn:v14];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v17;
}

id __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 BOOLValue];

  v7 = [v3 objectAtIndexedSubscript:1];
  v8 = [v7 BOOLValue];

  v9 = [v3 objectAtIndexedSubscript:2];
  v10 = [v9 BOOLValue];

  v11 = [v3 objectAtIndexedSubscript:3];
  v12 = [v11 BOOLValue];

  v13 = [v3 objectAtIndexedSubscript:4];
  v14 = [v13 BOOLValue];

  v15 = [WeakRetained account];
  [v15 uniqueIdForPersistentConnection];

  if (PCSettingsGetStyle() == 2)
  {
    v16 = v8 & (v6 ^ 1);
  }

  else
  {
    v19 = [v15 canReceiveNewMailNotifications];
    v20 = PCSettingsGetPollInterval() == -1;
    v16 = v8 & (v6 ^ 1);
    if ((v16 & 1) == 0 && (v20 & ~v19 & 1) == 0)
    {
      if (v12 & v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v10 | v6) ^ 1;
      }
    }
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16 & 1];

  return v17;
}

void __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 ef_publicDescription];
    __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke_2_cold_1(v4, v5, v3);
  }
}

- (id)_observeChangesInIdleConditions
{
  objc_initWeak(&location, self);
  _idleConditionsObservable = [(MFLegacyIMAPMailboxTaskManager *)self _idleConditionsObservable];
  v4 = MEMORY[0x1E699B838];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __65__MFLegacyIMAPMailboxTaskManager__observeChangesInIdleConditions__block_invoke;
  v11 = &unk_1E7AA4AF0;
  objc_copyWeak(&v12, &location);
  v5 = [v4 observerWithResultBlock:&v8];
  v6 = [_idleConditionsObservable subscribe:{v5, v8, v9, v10, v11}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __65__MFLegacyIMAPMailboxTaskManager__observeChangesInIdleConditions__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleIdleTransition:{objc_msgSend(v4, "BOOLValue")}];
}

- (void)_scheduleIdleTransition:(BOOL)transition
{
  transitionCopy = transition;
  v12 = *MEMORY[0x1E69E9840];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromBOOL();
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, "#imap-idle scheduling IDLE transition (should-use-idle %@): %@", &v8, 0x16u);
  }

  [(MFLegacyIMAPMailboxTaskManager *)self setShouldUseIDLE:transitionCopy];
  [(NSLock *)self->_cachedConnectionLock lock];
  v7 = self->_cachedConnection;
  [(NSLock *)self->_cachedConnectionLock unlock];
  if (v7)
  {
    [(MFIMAPConnection *)v7 scheduleIdleReset];
  }
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id)command
{
  *&v44[5] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  responseCopy = response;
  commandCopy = command;
  v11 = [commandCopy command] == 13 || objc_msgSend(commandCopy, "command") == 9;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v14 = [account storeForMailboxUid:mailbox];

  responseType = [responseCopy responseType];
  v16 = 1;
  if (responseType > 12)
  {
    switch(responseType)
    {
      case 13:
        account2 = [(MFLegacyIMAPMailboxTaskManager *)self account];
        mailboxName = [responseCopy mailboxName];
        v38 = [account2 mailboxUidForName:?];
        statusEntries = [responseCopy statusEntries];
        v18 = [statusEntries objectForKey:0x1F2748100];
        if (v18)
        {
          uRLString = [v38 URLString];

          if (uRLString)
          {
            uidNext = [v14 uidNext];
            unsignedIntValue = [v18 unsignedIntValue];
            if (uidNext != unsignedIntValue)
            {
              v22 = +[MFLegacyIMAPMailboxTaskManager log];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                loggingPrefix = self->_loggingPrefix;
                *buf = 138543874;
                v42 = loggingPrefix;
                v43 = 1024;
                *v44 = uidNext;
                v44[2] = 1024;
                *&v44[3] = unsignedIntValue;
                _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Got new UIDNEXT (old = %u, new = %u)", buf, 0x18u);
              }

              [v14 setUidNext:unsignedIntValue];
            }
          }
        }

        mailboxName2 = [(MFLegacyIMAPMailboxTaskManager *)self mailboxName];
        v25 = [mailboxName isEqualToString:mailboxName2];

        if (v25)
        {
          v26 = [statusEntries objectForKey:0x1F2748160];

          if (v26)
          {
            -[MFLegacyIMAPMailboxTaskManager setHighestModSequence:](self, "setHighestModSequence:", [v26 unsignedLongLongValue]);
          }

          v27 = [statusEntries objectForKey:0x1F2748140];

          if (v27)
          {
            uRLString2 = [v14 URLString];
            if (uRLString2)
            {
              library = [(MFLegacyIMAPMailboxTaskManager *)self library];
              [library setLastSyncAndMostRecentStatusCount:objc_msgSend(v27 forMailbox:{"unsignedIntegerValue"), uRLString2}];
            }
          }
        }

        else
        {
          v27 = v18;
        }

        break;
      case 17:
        v30 = [responseCopy fetchResultWithType:8];
        fetchPipeline = [connectionCopy fetchPipeline];
        downloadCache = [connectionCopy downloadCache];
        if (v30 && [commandCopy command] == 21 && fetchPipeline && objc_msgSend(fetchPipeline, "isSending"))
        {
          [downloadCache handleFetchResponse:responseCopy forUid:{objc_msgSend(v30, "uid")}];
        }

        break;
      case 24:
LABEL_11:
        v16 = 0;
        goto LABEL_37;
      default:
        goto LABEL_37;
    }

    v16 = 1;
    goto LABEL_37;
  }

  if (responseType != 9)
  {
    if (responseType != 10)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v33 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = self->_loggingPrefix;
    *buf = 138543618;
    v42 = v34;
    v43 = 2048;
    *v44 = [responseCopy number];
    _os_log_impl(&dword_1B0389000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Got EXISTS = %llu", buf, 0x16u);
  }

  -[MFLegacyIMAPMailboxTaskManager setServerMessageCount:](self, "setServerMessageCount:", [responseCopy number]);
  v16 = v11;
LABEL_37:
  if ([responseCopy isAlertResponse])
  {
    account3 = [(MFLegacyIMAPMailboxTaskManager *)self account];
    userString = [responseCopy userString];
    [account3 handleAlertResponse:userString];

    v16 = 0;
  }

  return v16;
}

- (id)deletedMessages
{
  v14[2] = *MEMORY[0x1E69E9840];
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v5 = [account storeForMailboxUid:mailbox];

  uRLString = [v5 URLString];
  v7 = [MFMessageCriterion criterionForMailboxURL:uRLString];

  v8 = [MFMessageCriterion messageIsDeletedCriterion:1];
  v14[0] = v7;
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v10 = [MFMessageCriterion andCompoundCriterionWithCriteria:v9];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  v12 = [library messagesMatchingCriterion:v10 options:0];

  return v12;
}

- (void)handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v25 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  [(MFLegacyIMAPMailboxTaskManager *)self mf_lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = messagesCopy;
  v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [messageCopy objectForKey:v14];
        intValue = [v15 intValue];

        if (flagsCopy)
        {
          messageFlags = MFMessageFlagsByApplyingDictionary(intValue, flagsCopy);
        }

        else
        {
          messageFlags = [v14 messageFlags];
        }

        if ((intValue & 2) != 0)
        {
          if ((messageFlags & 2) != 0)
          {
            continue;
          }

          v18 = -1;
        }

        else
        {
          if ((messageFlags & 2) == 0)
          {
            continue;
          }

          v18 = 1;
        }

        self->_serverDeletedCount += v18;
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [(MFLegacyIMAPMailboxTaskManager *)self mf_unlock];
}

- (void)close
{
  [(NSLock *)self->_cachedConnectionLock lock];
  v6 = self->_cachedConnection;
  cachedConnection = self->_cachedConnection;
  self->_cachedConnection = 0;

  [(NSLock *)self->_cachedConnectionLock unlock];
  v4 = v6;
  if (v6)
  {
    [(MFIMAPConnection *)v6 finishIdle];
    account = [(MFLegacyIMAPMailboxTaskManager *)self account];
    [account checkInConnection:v6];

    v4 = v6;
  }
}

- (void)setServerMessageCount:(unint64_t)count
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults objectForKey:@"DeletedSearchLimit"];

  if (v13)
  {
    unsignedIntValue = [v13 unsignedIntValue];
    if (unsignedIntValue)
    {
      v7 = unsignedIntValue;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 300;
  }

  os_unfair_lock_lock(&self->_serverCountLock);
  if (v7 <= count)
  {
    self->_serverMessageCount = count;
    os_unfair_lock_unlock(&self->_serverCountLock);
    self->_serverDeletedCount = 0;
  }

  else
  {
    settingServerCount = self->_settingServerCount;
    self->_settingServerCount = 1;
    if (settingServerCount)
    {
      os_unfair_lock_unlock(&self->_serverCountLock);
    }

    else
    {
      self->_serverMessageCount = count;
      self->_serverDeletedCount = 0;
      os_unfair_lock_unlock(&self->_serverCountLock);
      v9 = +[MFActivityMonitor currentMonitor];
      isRemoteSearch = [v9 isRemoteSearch];

      if ((isRemoteSearch & 1) == 0)
      {
        v11 = +[MFInvocationQueue sharedInvocationQueue];
        v12 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_updateDeletedCount target:self];
        [v11 addInvocation:v12];
      }
    }
  }
}

- (unint64_t)serverMessageCount
{
  os_unfair_lock_lock(&self->_serverCountLock);
  serverMessageCount = self->_serverMessageCount;
  serverDeletedCount = self->_serverDeletedCount;
  v5 = serverMessageCount >= serverDeletedCount;
  v6 = serverMessageCount - serverDeletedCount;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_serverCountLock);
  return v7;
}

- (id)sequenceIdentifierForUIDs:(id)ds
{
  dsCopy = ds;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v7 = [account storeForMailboxUid:mailbox];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  uRLString = [v7 URLString];
  v10 = [library sequenceIdentifierForMessagesWithRemoteIDs:dsCopy inMailbox:uRLString];

  return v10;
}

- (void)setSequenceIdentifier:(id)identifier forUIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  account = [(MFLegacyIMAPMailboxTaskManager *)self account];
  mailbox = [(MFLegacyIMAPMailboxTaskManager *)self mailbox];
  v9 = [account storeForMailboxUid:mailbox];

  library = [(MFLegacyIMAPMailboxTaskManager *)self library];
  uRLString = [v9 URLString];
  [library setSequenceIdentifier:identifierCopy forMessagesWithRemoteIDs:dsCopy inMailbox:uRLString];
}

- (void)fetchNumMessages:(os_log_t)log preservingUID:(void *)a4 options:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "%@: Connecting... starting", buf, 0xCu);
}

void __73__MFLegacyIMAPMailboxTaskManager_fetchNumMessages_preservingUID_options___block_invoke_cold_4(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "%@: Connecting... completed", buf, 0xCu);
}

void __81__MFLegacyIMAPMailboxTaskManager_fetchDataForMimePart_range_isComplete_consumer___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1B0389000, a2, OS_LOG_TYPE_FAULT, "Download fetched 0 bytes for UID %u", v2, 8u);
}

void __59__MFLegacyIMAPMailboxTaskManager__idleConditionsObservable__block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#imap-idle error occurred while observing conditions for IDLE: %{public}@", buf, 0xCu);
}

@end