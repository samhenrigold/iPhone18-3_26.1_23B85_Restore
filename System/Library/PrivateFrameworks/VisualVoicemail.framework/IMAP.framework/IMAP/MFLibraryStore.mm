@interface MFLibraryStore
+ (BOOL)createEmptyStoreForPath:(id)path;
+ (BOOL)storeAtPathIsWritable:(id)writable;
+ (id)sharedInstance;
+ (id)storeWithCriterion:(id)criterion;
+ (id)storeWithMailbox:(id)mailbox;
- (BOOL)allowsAppend;
- (BOOL)canCompact;
- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (BOOL)hasCompleteDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)shouldGrowFetchWindow;
- (MFLibraryStore)initWithCriterion:(id)criterion mailbox:(id)mailbox readOnly:(BOOL)only;
- (MFLibraryStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only;
- (id)URLString;
- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_copyDataFromMimePart:(id)part threshold:(unsigned int)threshold downloadIfNecessary:(BOOL)necessary;
- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial;
- (id)_memberMessagesWithCompactionNotification:(id)notification;
- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary;
- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options;
- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options;
- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options;
- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox;
- (id)copyOfAllMessagesForBodyLoadingFromRowID:(unsigned int)d limit:(unsigned int)limit;
- (id)copyOfAllMessagesWithOptions:(unsigned int)options;
- (id)copyOfMessagesInRange:(_NSRange)range options:(unsigned int)options generation:(unint64_t *)generation;
- (id)criterion;
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)dateOfNewestNonSearchResultMessage;
- (id)dateOfOldestNonIndexedNonSearchResultMessage;
- (id)filterMessagesByMembership:(id)membership;
- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download;
- (id)messageForMessageID:(id)d options:(unsigned int)options;
- (id)messageWithLibraryID:(unsigned int)d options:(unsigned int)options;
- (id)mutableCopyOfAllMessages;
- (id)newObjectCache;
- (id)serverSearchResults;
- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete;
- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple;
- (unint64_t)_fetchWindowMinimum;
- (unint64_t)_fetchWindowMultiple;
- (unint64_t)allNonDeletedCountIncludingServerSearch:(BOOL)search andThreadSearch:(BOOL)threadSearch;
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)nonDeletedCountIncludingServerSearch:(BOOL)search andThreadSearch:(BOOL)threadSearch;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)totalCount;
- (unint64_t)unreadCount;
- (unint64_t)unreadCountMatchingCriterion:(id)criterion;
- (void)_addInvocationToQueue:(id)queue;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)_queueMessageFlagsChanged:(id)changed;
- (void)_queueMessagesAdded:(id)added;
- (void)_queueMessagesWereCompacted:(id)compacted;
- (void)_queueMessagesWillBeCompacted:(id)compacted;
- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count;
- (void)compactMessages:(id)messages;
- (void)dealloc;
- (void)deleteBodyDataForMessage:(id)message;
- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash;
- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact;
- (void)doCompact;
- (void)handleMessageFlagsChanged:(id)changed;
- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date;
- (void)handleMessagesCompacted:(id)compacted;
- (void)handleMessagesWillBeCompacted:(id)compacted;
- (void)invalidateFetchWindow;
- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date;
- (void)openSynchronously;
- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message;
- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary;
- (void)setLibrary:(id)library;
- (void)willFetchMessages;
@end

@implementation MFLibraryStore

- (MFLibraryStore)initWithCriterion:(id)criterion mailbox:(id)mailbox readOnly:(BOOL)only
{
  criterionCopy = criterion;
  mailboxCopy = mailbox;
  v15.receiver = self;
  v15.super_class = MFLibraryStore;
  v10 = [(MFLibraryStore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_criterion, criterion);
    objc_storeStrong(&v11->super._mailboxUid, mailbox);
    account = [mailboxCopy account];
    account = v11->super._account;
    v11->super._account = account;

    *&v11->super._flags |= 0x100u;
  }

  return v11;
}

- (MFLibraryStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  onlyCopy = only;
  uidCopy = uid;
  criterion = [uidCopy criterion];
  v8 = [(MFLibraryStore *)self initWithCriterion:criterion mailbox:uidCopy readOnly:onlyCopy];

  return v8;
}

+ (id)storeWithCriterion:(id)criterion
{
  criterionCopy = criterion;
  v4 = [[MFLibraryStore alloc] initWithCriterion:criterionCopy];

  return v4;
}

+ (id)storeWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = [[MFLibraryStore alloc] initWithMailbox:mailboxCopy];

  return v4;
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  if (self->_library != libraryCopy)
  {
    v8 = libraryCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = defaultCenter;
    if (self->_library)
    {
      [defaultCenter removeObserver:self name:0 object:?];
    }

    objc_storeStrong(&self->_library, library);
    if (v8)
    {
      [v7 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v7 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];

    libraryCopy = v8;
  }
}

+ (id)sharedInstance
{
  pthread_once(&sharedInstanceInitializer, initializeSharedInstance);

  return [self sharedInstanceIfExists];
}

- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count
{
  messagesCopy = messages;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  type = [mailboxUid type];

  v7 = [messagesCopy count];
  [(MFLibraryStore *)self mf_lock];
  if (v7)
  {
    v8 = type - 5;
    for (i = v7 - 1; i != -1; --i)
    {
      v10 = [messagesCopy objectAtIndex:i];
      messageFlags = [v10 messageFlags];
      messageSize = [v10 messageSize];
      if ((messageFlags & 2) != 0)
      {
        ++self->super._deletedMessageCount;
        v13 = &OBJC_IVAR___MFMailMessageStore__deletedMessagesSize;
      }

      else
      {
        v13 = &OBJC_IVAR___MFMailMessageStore__unreadMessageCount;
        messageSize = 1;
        if (v8 >= 2 && (messageFlags & 1) != 0)
        {
          goto LABEL_9;
        }
      }

      *(&self->super.super.super.isa + *v13) = (*(&self->super.super.super.isa + *v13) + messageSize);
LABEL_9:
    }
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)_addInvocationToQueue:(id)queue
{
  v3 = _addInvocationToQueue__onceToken;
  queueCopy = queue;
  v6 = queueCopy;
  if (v3 == -1)
  {
    v5 = queueCopy;
  }

  else
  {
    [MFLibraryStore _addInvocationToQueue:];
    v5 = v6;
  }

  [_addInvocationToQueue__sInvocationQueue addInvocation:v5];
}

uint64_t __40__MFLibraryStore__addInvocationToQueue___block_invoke()
{
  v0 = [[MFInvocationQueue alloc] initWithDomain:"invc.lib"];
  v1 = _addInvocationToQueue__sInvocationQueue;
  _addInvocationToQueue__sInvocationQueue = v0;

  v2 = _addInvocationToQueue__sInvocationQueue;

  return [v2 setThreadRecycleTimeout:60.0];
}

- (void)openSynchronously
{
  [(MFLibraryStore *)self mf_lock];
  if (self->super._state > 2)
  {

    [(MFLibraryStore *)self mf_unlock];
  }

  else
  {
    self->super._state = 2;
    self->super._unreadMessageCount = 0;
    [(MFLibraryStore *)self mf_unlock];
    self->super._state = 3;

    [(MFMailMessageStore *)self didOpen];
  }
}

- (unint64_t)totalCount
{
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];
  v4 = [(MFMessageLibrary *)library totalCountForMailbox:uRLString];

  return v4;
}

- (unint64_t)nonDeletedCountIncludingServerSearch:(BOOL)search andThreadSearch:(BOOL)threadSearch
{
  threadSearchCopy = threadSearch;
  searchCopy = search;
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];
  v8 = [(MFMessageLibrary *)library nonDeletedCountForMailbox:uRLString includeServerSearchResults:searchCopy includeThreadSearchResults:threadSearchCopy];

  return v8;
}

- (unint64_t)allNonDeletedCountIncludingServerSearch:(BOOL)search andThreadSearch:(BOOL)threadSearch
{
  threadSearchCopy = threadSearch;
  searchCopy = search;
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];
  v8 = [(MFMessageLibrary *)library allNonDeleteCountForMailbox:uRLString includeServerSearchResults:searchCopy includeThreadSearchResults:threadSearchCopy];

  return v8;
}

- (id)messageWithLibraryID:(unsigned int)d options:(unsigned int)options
{
  v4 = *&options;
  v5 = *&d;
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];
  v9 = [(MFMessageLibrary *)library messageWithLibraryID:v5 options:v4 inMailbox:uRLString];

  [v9 setMessageStore:self];

  return v9;
}

- (id)copyOfMessagesInRange:(_NSRange)range options:(unsigned int)options generation:(unint64_t *)generation
{
  v6 = *&options;
  length = range.length;
  location = range.location;
  v30 = *MEMORY[0x277D85DE8];
  [(MFLibraryStore *)self mf_lock];
  if (generation)
  {
    *generation = self->super._generationNumber;
  }

  if (v6 == 399)
  {
    library = self->_library;
    uRLString = [(MFLibraryStore *)self URLString];
    v12 = [(MFMessageLibrary *)library messagesWithSummariesForMailbox:uRLString range:location, length];
  }

  else
  {
    if ((v6 & 0x180) != 0)
    {
      v13 = MEMORY[0x277CBEB18];
      criterion = [(MFLibraryStore *)self criterion];
      v15 = [v13 arrayWithObject:criterion];

      if ((v6 & 0x80) != 0)
      {
        v16 = [MFMessageCriterion messageIsDeletedCriterion:0];
        [v15 addObject:v16];
      }

      if ((v6 & 0x100) != 0)
      {
        v17 = [MFMessageCriterion messageIsServerSearchResultCriterion:0];
        [v15 addObject:v17];
      }

      uRLString = [MFMessageCriterion andCompoundCriterionWithCriteria:v15];
    }

    else
    {
      uRLString = [(MFLibraryStore *)self criterion];
    }

    v12 = [(MFMessageLibrary *)self->_library messagesMatchingCriterion:uRLString options:v6 range:location, length];
  }

  v18 = v12;

  [(MFLibraryStore *)self mf_unlock];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v25 + 1) + 8 * v23++) setMessageStore:{self, v25}];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  return v19;
}

- (id)copyOfAllMessagesWithOptions:(unsigned int)options
{
  v3 = *&options;
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self copyOfMessagesInRange:0 options:0x7FFFFFFFFFFFFFFFLL, v3];
  if ([v5 count] && self->super._state <= 1)
  {
    [(MFLibraryStore *)self mf_unlock];
    [(MFMailMessageStore *)self messagesWereAdded:v5];
    [(MFLibraryStore *)self addCountsForMessages:v5 shouldUpdateUnreadCount:0];
  }

  else
  {
    [(MFLibraryStore *)self mf_unlock];
  }

  return v5;
}

- (id)copyOfAllMessagesForBodyLoadingFromRowID:(unsigned int)d limit:(unsigned int)limit
{
  v4 = *&limit;
  v5 = *&d;
  v21 = *MEMORY[0x277D85DE8];
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];
  v9 = [(MFMessageLibrary *)library messagesWithoutSummariesForMailbox:uRLString fromRowID:v5 limit:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) setMessageStore:{self, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v10;
}

- (id)mutableCopyOfAllMessages
{
  copyOfAllMessages = [(MFLibraryStore *)self copyOfAllMessages];
  v3 = [copyOfAllMessages mutableCopy];

  return v3;
}

- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options
{
  v19[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v7 = [[MFMessageCriterion alloc] initWithType:34 qualifier:0 expression:textCopy];
  v8 = [[MFMessageCriterion alloc] initWithType:9 qualifier:0 expression:textCopy];
  v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:textCopy];

  [(MFMessageCriterion *)v9 setCriterionIdentifier:*MEMORY[0x277D07030]];
  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v11 = [MFMessageCriterion orCompoundCriterionWithCriteria:v10];

  criterion = [(MFLibraryStore *)self criterion];
  v18[0] = criterion;
  v18[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v14 = [MFMessageCriterion andCompoundCriterionWithCriteria:v13];

  library = [(MFLibraryStore *)self library];
  v16 = [library messagesMatchingCriterion:v14 options:options | 3];

  return v16;
}

- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options
{
  v6 = MEMORY[0x277CBEB18];
  criterionCopy = criterion;
  v8 = [v6 alloc];
  criterion = [(MFLibraryStore *)self criterion];
  v10 = [v8 initWithObjects:{criterion, criterionCopy, 0}];

  if ((options & 0x80) != 0)
  {
    v11 = [MFMessageCriterion messageIsDeletedCriterion:0];
    [v10 addObject:v11];
  }

  v12 = [MFMessageCriterion andCompoundCriterionWithCriteria:v10];
  library = [(MFLibraryStore *)self library];
  v14 = [library messagesMatchingCriterion:v12 options:options | 3];

  [v14 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v14;
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options
{
  v4 = *&options;
  dsCopy = ds;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v8 = [(MFLibraryStore *)self copyMessagesWithRemoteIDs:dsCopy options:v4 inMailbox:mailboxUid];

  return v8;
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  dsCopy = ds;
  library = [(MFLibraryStore *)self library];
  uRLString = [mailboxCopy URLString];

  v12 = [library copyMessagesWithRemoteIDs:dsCopy options:options | 3 inRemoteMailbox:uRLString];
  [v12 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v12;
}

- (id)serverSearchResults
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library serverSearchResultMessagesForMailbox:uRLString];

  [v5 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v5;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library dateOfOldestNonIndexedNonSearchResultMessageInMailbox:uRLString];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (id)dateOfNewestNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v5 = [library dateOfNewestNonSearchResultMessageInMailbox:uRLString];

  [(MFLibraryStore *)self mf_unlock];

  return v5;
}

- (void)willFetchMessages
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  v4 = [library dateOfOldestNonSearchResultMessageInMailbox:uRLString];
  [(MFLibraryStore *)self setEarliestReceivedDate:v4];
}

- (unint64_t)_fetchWindowMultiple
{
  v2 = +[MFNetworkController sharedInstance];
  if ([v2 isFatPipe])
  {
    v3 = 250;
  }

  else if ([v2 is4GConnection])
  {
    v3 = 250;
  }

  else
  {
    v3 = 100;
  }

  return v3;
}

- (unint64_t)_fetchWindowMinimum
{
  v2 = +[MFNetworkController sharedInstance];
  if ([v2 isFatPipe] & 1) != 0 || (objc_msgSend(v2, "is4GConnection"))
  {
    v3 = 150;
  }

  else if ([v2 is3GConnection])
  {
    v3 = 100;
  }

  else
  {
    v3 = 50;
  }

  return v3;
}

- (unint64_t)_calculateFetchWindowWithAdditionalMultiple:(BOOL)multiple
{
  multipleCopy = multiple;
  _fetchWindowMultiple = [(MFLibraryStore *)self _fetchWindowMultiple];
  _fetchWindowMinimum = [(MFLibraryStore *)self _fetchWindowMinimum];
  v7 = [(MFLibraryStore *)self allNonDeletedCountIncludingServerSearch:0 andThreadSearch:0]/ _fetchWindowMultiple;
  v8 = ceilf(v7) * _fetchWindowMultiple;
  if (multipleCopy)
  {
    v9 = _fetchWindowMultiple;
  }

  else
  {
    v9 = 0;
  }

  if (_fetchWindowMinimum <= v9 + v8)
  {
    v10 = v9 + v8;
  }

  else
  {
    v10 = _fetchWindowMinimum;
  }

  result = [(MFLibraryStore *)self fetchWindowCap];
  if (result >= v10)
  {
    return v10;
  }

  return result;
}

- (void)invalidateFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  self->_fetchWindow = 0;

  [(MFLibraryStore *)self mf_unlock];
}

- (BOOL)shouldGrowFetchWindow
{
  fetchWindow = [(MFLibraryStore *)self fetchWindow];
  if (fetchWindow >= [(MFLibraryStore *)self fetchWindowCap])
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  return [(MFMailMessageStore *)&v5 shouldGrowFetchWindow];
}

- (unint64_t)growFetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [(MFLibraryStore *)self _calculateFetchWindowWithAdditionalMultiple:1];
  self->_fetchWindow = v3;
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (unint64_t)fetchWindow
{
  [(MFLibraryStore *)self mf_lock];
  fetchWindow = self->_fetchWindow;
  if (!fetchWindow)
  {
    fetchWindow = [(MFLibraryStore *)self _calculateFetchWindowWithAdditionalMultiple:0];
    self->_fetchWindow = fetchWindow;
  }

  [(MFLibraryStore *)self mf_unlock];
  return fetchWindow;
}

- (unint64_t)fetchWindowCap
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"FetchWithoutLimits"];

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 10000;
  }
}

- (id)filterMessagesByMembership:(id)membership
{
  v19 = *MEMORY[0x277D85DE8];
  membershipCopy = membership;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [membershipCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(membershipCopy);
        }

        mailboxUid = self->super._mailboxUid;
        if (mailboxUid)
        {
          v11 = *(*(&v14 + 1) + 8 * i);
          mailbox = [v11 mailbox];

          if (mailboxUid == mailbox)
          {
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
            }

            [array addObject:v11];
          }
        }
      }

      v6 = [membershipCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date
{
  dateCopy = date;
  userInfo = [added userInfo];
  v7 = [userInfo objectForKey:@"messages"];
  v8 = [userInfo objectForKey:@"mailboxes"];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  if (mailboxUid && [v8 indexOfObject:mailboxUid] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v11 = 0;
  }

  else
  {
    criterion = [(MFLibraryStore *)self criterion];
    v11 = criterion;
    v12 = 0;
    if (!mailboxUid && criterion)
    {
      v12 = [(MFMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:criterion options:3];
    }
  }

  if ([v12 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v12 shouldUpdateUnreadCount:0];
    [(MFLibraryStore *)self messagesWereAdded:v12 earliestReceivedDate:dateCopy];
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  dateCopy = date;
  addedCopy = added;
  [addedCopy makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  v8.receiver = self;
  v8.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v8 messagesWereAdded:addedCopy earliestReceivedDate:dateCopy];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  type = [(MFMailboxUid *)self->super._mailboxUid type];
  [(MFLibraryStore *)self mf_lock];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = messagesCopy;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    v26 = type - 5;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [messageCopy objectForKey:v16];
        intValue = [v17 intValue];

        if (flagsCopy)
        {
          messageFlags = IMAPMessageFlagsByApplyingDictionary(intValue, flagsCopy);
        }

        else
        {
          messageFlags = [v16 messageFlags];
        }

        v20 = messageFlags;
        if (((intValue >> 1) & 1) != ((messageFlags >> 1) & 1))
        {
          messageSize = [v16 messageSize];
          deletedMessageCount = self->super._deletedMessageCount;
          if ((intValue & 2) != 0)
          {
            self->super._deletedMessageCount = deletedMessageCount - 1;
            v23 = 56;
            v24 = (self->super._deletedMessagesSize - messageSize);
          }

          else
          {
            self->super._deletedMessageCount = deletedMessageCount + 1;
            self->super._deletedMessagesSize += messageSize;
            if (v26 > 1)
            {
              goto LABEL_15;
            }

            v23 = 72;
            v24 = (self->super._unreadMessageCount - 1);
          }

          *(&self->super.super.super.isa + v23) = v24;
        }

LABEL_15:
        if ((intValue & 1) != (v20 & 1))
        {
          v25 = -1;
          if ((v20 & 1) == 0)
          {
            v25 = 1;
          }

          goto LABEL_22;
        }

        if ((v20 & 2) != 0 && !((v20 | intValue) & 1 | intValue & 2))
        {
          v25 = -1;
LABEL_22:
          self->super._unreadMessageCount += v25;
          continue;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)handleMessageFlagsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:@"mailboxes"];
  v5 = [userInfo objectForKey:@"messages"];
  v6 = [(MFLibraryStore *)self filterMessagesByMembership:v5];

  if ([v6 count])
  {
    v7 = [userInfo objectForKey:@"flags"];
    v8 = [userInfo objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFMailMessageStore *)self messageFlagsDidChange:v6 flags:v7];

    goto LABEL_5;
  }

  if (self->super._mailboxUid && [v4 containsObject:?])
  {
    v7 = [userInfo objectForKeyedSubscript:@"flags"];
    [(MFMailMessageStore *)self allMessageFlagsDidChange:v7];
LABEL_5:
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"messages"];
  v7 = [userInfo objectForKey:@"mailboxes"];
  if ([v6 count] && self->super._mailboxUid && objc_msgSend(v7, "indexOfObject:") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v7;
    v20 = v6;
    v21 = userInfo;
    v22 = notificationCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      array = 0;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          mailboxUid = self->super._mailboxUid;
          mailbox = [v16 mailbox];

          if (mailboxUid == mailbox)
          {
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
            }

            [array addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    else
    {
      array = 0;
    }

    userInfo = v21;
    notificationCopy = v22;
    v7 = v19;
    v6 = v20;
  }

  else
  {
    array = 0;
  }

  v9 = array;

  return array;
}

- (void)handleMessagesCompacted:(id)compacted
{
  compactedCopy = compacted;
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compactedCopy];

  if ([v5 count])
  {
    self->super._deletedMessagesSize = 0;
    self->super._deletedMessageCount = 0;
  }

  [(MFLibraryStore *)self mf_unlock];
  [(MFMailMessageStore *)self messagesWereCompacted:v5];
}

- (void)handleMessagesWillBeCompacted:(id)compacted
{
  v4 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compacted];
  [(MFMailMessageStore *)self messagesWillBeCompacted:v4];
}

- (void)dealloc
{
  [(MFLibraryStore *)self setLibrary:0];
  v3.receiver = self;
  v3.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v3 dealloc];
}

- (id)messageForMessageID:(id)d options:(unsigned int)options
{
  v4 = *&options;
  library = self->_library;
  dCopy = d;
  uRLString = [(MFLibraryStore *)self URLString];
  v9 = [(MFMessageLibrary *)library messageWithMessageID:dCopy options:v4 inMailbox:uRLString];

  [v9 setMessageStore:self];

  return v9;
}

- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial
{
  result = [(MFMessageLibrary *)self->_library bodyDataForMessage:message andHeaderDataIfReadilyAvailable:available, necessary];
  if (partial)
  {
    *partial = 1;
  }

  return result;
}

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  location = range.location;
  v13 = MEMORY[0x277D24EE8];
  partCopy = part;
  v15 = objc_alloc_init(v13);
  v16 = [objc_alloc(MEMORY[0x277D24F88]) initWithConsumer:v15];
  LODWORD(download) = [(MFLibraryStore *)self dataForMimePart:partCopy inRange:location isComplete:length withConsumer:complete downloadIfNecessary:v16 didDownload:necessaryCopy, download];

  [v16 done];
  if (download)
  {
    data = [v15 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  location = range.location;
  length = range.length;
  v94 = *MEMORY[0x277D85DE8];
  partCopy = part;
  consumerCopy = consumer;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v16 = getLogger_0(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    mambaID = [mailboxUid mambaID];
    [message messageID];
    v20 = v19 = consumerCopy;
    partNumber = [partCopy partNumber];
    *buf = 136315906;
    v85 = mambaID;
    v86 = 2080;
    v87 = " ";
    v88 = 2114;
    v89 = v20;
    v90 = 2114;
    v91 = partNumber;
    _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads requesting data for MIME part %{public}@:%{public}@", buf, 0x2Au);

    consumerCopy = v19;
  }

  parentPart = [partCopy parentPart];

  if (parentPart || length != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
    v26 = v25;
    if (v25 && (v27 = MEMORY[0x277D24FE8], *(v25 + *MEMORY[0x277D24FE8])) && (*(v25 + *MEMORY[0x277D24FF8]) & 1) == 0)
    {
      v77 = consumerCopy;
      v41 = getLogger_0(v25);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        mailboxUid2 = [(MFMailMessageStore *)self mailboxUid];
        mambaID2 = [mailboxUid2 mambaID];
        messageID = [message messageID];
        partNumber2 = [partCopy partNumber];
        *buf = 136315906;
        v85 = mambaID2;
        v86 = 2080;
        v87 = " ";
        v88 = 2114;
        v89 = messageID;
        v90 = 2114;
        v91 = partNumber2;
        _os_log_impl(&dword_2720B1000, v41, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads found full cached data for %{public}@:%{public}@", buf, 0x2Au);
      }

      v45 = [*&v26[*v27] length];
      range = [partCopy range];
      v23 = 0;
      if (range == 0x7FFFFFFFFFFFFFFFLL)
      {
        consumerCopy = v77;
      }

      else
      {
        v48 = range;
        v49 = v47;
        v50 = range + v47 > v45;
        consumerCopy = v77;
        if (!v50)
        {
          v23 = *&v26[*v27];
          v51 = [v23 mf_subdataWithRange:{v48, v49}];
          [v77 appendData:v51];

          if (complete)
          {
            *complete = 1;
          }
        }
      }
    }

    else
    {
      v23 = 0;
    }

    if (v23 || location)
    {
      if (v23)
      {
LABEL_23:

LABEL_24:
        v24 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      library = [(MFLibraryStore *)self library];
      v23 = [library dataForMimePart:partCopy isComplete:complete];

      if (v23)
      {
        v30 = v26;
        v31 = getLogger_0(v29);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
          mambaID3 = [mailboxUid3 mambaID];
          messageID2 = [message messageID];
          [partCopy partNumber];
          v36 = v35 = consumerCopy;
          *buf = 136315906;
          v85 = mambaID3;
          v86 = 2080;
          v87 = " ";
          v88 = 2114;
          v89 = messageID2;
          v90 = 2114;
          v91 = v36;
          v37 = "#I %s%s#CacheLoads found part data in database %{public}@:%{public}@";
LABEL_21:
          _os_log_impl(&dword_2720B1000, v31, OS_LOG_TYPE_DEFAULT, v37, buf, 0x2Au);

          consumerCopy = v35;
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    v38 = partDataFromFullBodyData(self, message, partCopy, complete, 0, download);
    if (v38)
    {
      v23 = v38;
      v30 = v26;
      v31 = getLogger_0(v38);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
        mambaID4 = [mailboxUid3 mambaID];
        messageID2 = [message messageID];
        [partCopy partNumber];
        v36 = v35 = consumerCopy;
        *buf = 136315906;
        v85 = mambaID4;
        v86 = 2080;
        v87 = " ";
        v88 = 2114;
        v89 = messageID2;
        v90 = 2114;
        v91 = v36;
        v37 = "#I %s%s#CacheLoads extracted part data from full body data in database %{public}@:%{public}@";
        goto LABEL_21;
      }

LABEL_22:

      [consumerCopy appendData:v23];
      v26 = v30;
      goto LABEL_23;
    }

    type = [partCopy type];
    v53 = [type isEqualToString:@"multipart"];

    v24 = 0;
    if (v53)
    {
      downloadCopy4 = download;
    }

    else
    {
      downloadCopy4 = download;
      if (necessaryCopy)
      {
        v56 = getLogger_0(v54);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid4 = [(MFMailMessageStore *)self mailboxUid];
          mambaID5 = [mailboxUid4 mambaID];
          [message messageID];
          v78 = v26;
          v60 = v59 = consumerCopy;
          partNumber3 = [partCopy partNumber];
          *buf = 136315906;
          v85 = mambaID5;
          downloadCopy4 = download;
          v86 = 2080;
          v87 = " ";
          v88 = 2114;
          v89 = v60;
          v90 = 2114;
          v91 = partNumber3;
          _os_log_impl(&dword_2720B1000, v56, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads downloading part data from server %{public}@:%{public}@", buf, 0x2Au);

          consumerCopy = v59;
          v26 = v78;
        }

        consumerCopy = [(MFLibraryStore *)self _fetchDataForMimePart:partCopy range:location isComplete:length consumer:complete, consumerCopy];
        v24 = consumerCopy;
        if (downloadCopy4)
        {
          *downloadCopy4 = consumerCopy & 1;
        }

        v63 = getLogger_0(consumerCopy);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid5 = [(MFMailMessageStore *)self mailboxUid];
          mambaID6 = [mailboxUid5 mambaID];
          if (v24)
          {
            v65 = @"SUCCESS";
          }

          else
          {
            v65 = @"FAILED";
          }

          [message messageID];
          v66 = v79 = consumerCopy;
          partNumber4 = [partCopy partNumber];
          *buf = 136316162;
          v85 = mambaID6;
          downloadCopy4 = download;
          v86 = 2080;
          v87 = " ";
          v88 = 2112;
          v89 = v65;
          v90 = 2114;
          v91 = v66;
          v92 = 2114;
          v93 = partNumber4;
          _os_log_impl(&dword_2720B1000, v63, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads %@ downloading part data from server %{public}@:%{public}@", buf, 0x34u);

          consumerCopy = v79;
        }
      }

      if (v24)
      {
        goto LABEL_52;
      }
    }

    if (necessaryCopy)
    {
      v68 = partDataFromFullBodyData(self, message, partCopy, complete, 1, downloadCopy4);
      if (v68)
      {
        v23 = v68;
        v69 = v26;
        v70 = getLogger_0(v68);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid6 = [(MFMailMessageStore *)self mailboxUid];
          mambaID7 = [mailboxUid6 mambaID];
          messageID3 = [message messageID];
          [partCopy partNumber];
          v75 = v74 = consumerCopy;
          *buf = 136315906;
          v85 = mambaID7;
          v86 = 2080;
          v87 = " ";
          v88 = 2114;
          v89 = messageID3;
          v90 = 2114;
          v91 = v75;
          _os_log_impl(&dword_2720B1000, v70, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads extracted part data from full body data via download %{public}@:%{public}@", buf, 0x2Au);

          consumerCopy = v74;
        }

        [consumerCopy appendData:v23];
        goto LABEL_24;
      }
    }

LABEL_52:
    v23 = v26;
    goto LABEL_25;
  }

  v23 = [(MFLibraryStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:necessaryCopy usePartDatas:0 didDownload:download];
  if (v23)
  {
    [consumerCopy appendData:v23];
  }

  v24 = v23 != 0;
LABEL_25:

  return v24;
}

- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete
{
  completeCopy = complete;
  dataCopy = data;
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  if ([message isLibraryMessage])
  {
    library = [(MFLibraryStore *)self library];
    partNumber = [partCopy partNumber];
    v14 = [library dataConsumerForMessage:message part:partNumber incomplete:!completeCopy];

    [v14 appendData:dataCopy];
    [v14 done];
    data = [v14 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)_copyDataFromMimePart:(id)part threshold:(unsigned int)threshold downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  partCopy = part;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v8;
  if (threshold != -1)
  {
    [v8 addObject:partCopy];
    if (![v9 count])
    {
      goto LABEL_39;
    }

    do
    {
      v10 = [v9 objectAtIndex:0];
      firstChildPart = [v10 firstChildPart];
      if (firstChildPart)
      {
        v12 = firstChildPart;
        do
        {
          [v9 addObject:v12];
          nextSiblingPart = [v12 nextSiblingPart];

          v12 = nextSiblingPart;
        }

        while (nextSiblingPart);
      }

      else if ([v10 isAttachment])
      {
        [v10 range];
        LODWORD(v12) = v14 >= threshold;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      [v9 removeObjectAtIndex:0];
    }

    while ([v9 count] && !v12);
    if (!v12)
    {
LABEL_39:
      v35 = 0;
      goto LABEL_42;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  [v9 removeAllObjects];
  [v9 addObject:partCopy];
  if (!Mutable)
  {
LABEL_38:
    v35 = 0;
    goto LABEL_41;
  }

  thresholdCopy = threshold;
  while ([v9 count])
  {
    v19 = [v9 objectAtIndex:0];
    firstChildPart2 = [v19 firstChildPart];
    if (firstChildPart2)
    {
      v21 = firstChildPart2;
      do
      {
        [v9 addObject:v21];
        nextSiblingPart2 = [v21 nextSiblingPart];

        v21 = nextSiblingPart2;
      }

      while (nextSiblingPart2);
      type = [v19 type];
      v24 = [type isEqualToString:@"multipart"];

      if ((v24 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (![v19 isAttachment] || (objc_msgSend(v19, "range"), v25 < thresholdCopy))
    {
LABEL_23:
      [v19 range];
      if (v26)
      {
        v27 = [message dataForMimePart:v19 inRange:0 isComplete:0x7FFFFFFFFFFFFFFFLL downloadIfNecessary:0 didDownload:{necessaryCopy, 0}];
        data = [v19 decodedDataForData:v27];
      }

      else
      {
        data = [MEMORY[0x277CBEA90] data];
      }

      firstChildPart3 = [v19 firstChildPart];
      v30 = firstChildPart3;
      if (firstChildPart3)
      {
        v29FirstChildPart = [firstChildPart3 firstChildPart];
        if (v29FirstChildPart || ![v30 isAttachment])
        {
LABEL_32:
        }

        else if ([data length])
        {
          [v30 range];
          if (v32 >= thresholdCopy)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"X-Apple-Content-Length: %lu\n", v32];
            v33 = v38 = thresholdCopy;
            v29FirstChildPart = [v33 dataUsingEncoding:1];

            v34 = [v29FirstChildPart mutableCopy];
            [v34 appendData:data];

            data = v34;
            thresholdCopy = v38;
            goto LABEL_32;
          }
        }
      }

      if (data)
      {
        CFDictionarySetValue(Mutable, v19, data);
      }

      else
      {
        CFRelease(Mutable);
        Mutable = 0;
      }
    }

    [v9 removeObjectAtIndex:0];

    if (!Mutable)
    {
      goto LABEL_38;
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v36 = objc_alloc_init(MFMessageWriter);
  [(MFMessageWriter *)v36 appendDataForMimePart:partCopy toData:v35 withPartData:Mutable];
  CFRelease(Mutable);

LABEL_41:
LABEL_42:

  return v35;
}

- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download
{
  datasCopy = datas;
  necessaryCopy = necessary;
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v14 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:0];
  v15 = v14;
  if (v14)
  {
    if ((*(v14 + *MEMORY[0x277D24FF8]) & 1) == 0)
    {
      v16 = MEMORY[0x277D24FF0];
      if (complete || (*(v14 + *MEMORY[0x277D24FF0]) & 1) == 0)
      {
        v17 = *(v14 + *MEMORY[0x277D24FE8]);
        v18 = v17;
        if (complete)
        {
          *complete = v15[*v16] ^ 1;
        }

        v19 = getLogger_0(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid = [(MFMailMessageStore *)self mailboxUid];
          *buf = 136315650;
          mambaID = [mailboxUid mambaID];
          v39 = 2080;
          v40 = " ";
          v41 = 2112;
          v42 = messageCopy;
          _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads returning cached full body data for %@", buf, 0x20u);
        }

        if (v18)
        {
          v21 = 0;
          goto LABEL_34;
        }
      }
    }
  }

  if ([messageCopy isLibraryMessage])
  {
    library = self->_library;
    v36 = 0;
    v18 = [(MFMessageLibrary *)library fullBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v36];
    v23 = v36;
    v24 = v23;
    if (v18)
    {
      v21 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v18 partial:1 incomplete:0];
      v25 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v21];
      goto LABEL_31;
    }

    v21 = v23;
    if (!datasCopy)
    {
      goto LABEL_18;
    }

LABEL_15:
    if (necessaryCopy)
    {
      [messageCopy messageBodyUpdatingFlags:0];
    }

    else
    {
      [messageCopy messageBodyIfAvailableUpdatingFlags:0];
    }
    v26 = ;
    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      topLevelPart = [v26 topLevelPart];
      v18 = [(MFLibraryStore *)self _copyDataFromMimePart:topLevelPart threshold:0xFFFFFFFFLL downloadIfNecessary:necessaryCopy];
      if (v18)
      {
        v33 = topLevelPart;
        v28 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v18 partial:0 incomplete:0];
        v29 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v28];
        if (download)
        {
          *download = 1;
        }

        topLevelPart = v33;
      }
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v21 = 0;
  if (datasCopy)
  {
    goto LABEL_15;
  }

LABEL_18:
  v18 = 0;
LABEL_29:
  if (!necessaryCopy)
  {
    goto LABEL_32;
  }

  v35 = v21;
  v18 = [(MFLibraryStore *)self _fetchFullBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v35 downloadIfNecessary:1 didDownload:download];
  v24 = v35;
LABEL_31:

  v21 = v24;
LABEL_32:
  if (v21)
  {
    v30 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v21];
  }

LABEL_34:
  if (complete)
  {
    *complete = v18 != 0;
  }

  if (available)
  {
    v31 = v21;
    *available = v21;
  }

  return v18;
}

- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v48 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v11 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:0];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = MEMORY[0x277D24FF0];
  if (!complete && (*(v11 + *MEMORY[0x277D24FF0]) & 1) != 0)
  {
    goto LABEL_11;
  }

  v14 = *(v11 + *MEMORY[0x277D24FE8]);
  v15 = v14;
  if (complete)
  {
    *complete = v12[*v13] ^ 1;
  }

  if (partial)
  {
    *partial = v12[*MEMORY[0x277D24FF8]];
  }

  v16 = getLogger_0(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    *buf = 136315650;
    mambaID = [mailboxUid mambaID];
    v44 = 2080;
    v45 = " ";
    v46 = 2112;
    v47 = messageCopy;
    _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads returning cached body data for %@", buf, 0x20u);
  }

  if (!v15)
  {
LABEL_11:
    library = self->_library;
    v41 = 0;
    v15 = [(MFMessageLibrary *)library bodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v41 isComplete:complete];
    v19 = v41;
    if (v15)
    {
      if (complete)
      {
        v20 = !*complete;
      }

      else
      {
        v20 = 0;
      }

      v38 = necessaryCopy;
      if (partial)
      {
        *partial = 1;
      }

      v21 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v15 partial:1 incomplete:v20];
      v22 = getLogger_0([(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v21]);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        mailboxUid2 = [(MFMailMessageStore *)self mailboxUid];
        mambaID2 = [mailboxUid2 mambaID];
        *buf = 136315650;
        mambaID = mambaID2;
        v44 = 2080;
        v45 = " ";
        v46 = 2112;
        v47 = messageCopy;
        _os_log_impl(&dword_2720B1000, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads returning body data from Library for %@", buf, 0x20u);
      }

      necessaryCopy = v38;
    }

    if (v19)
    {
      v25 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v19];
    }

    if (!v15)
    {
      v40 = 0;
      v27 = getLogger_0(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
        mambaID3 = [mailboxUid3 mambaID];
        *buf = 136315650;
        mambaID = mambaID3;
        v44 = 2080;
        v45 = " ";
        v46 = 2112;
        v47 = messageCopy;
        _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s#CacheLoads fetching body data from network for %@", buf, 0x20u);
      }

      v39 = 0;
      v15 = [(MFLibraryStore *)self _fetchBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v39 downloadIfNecessary:necessaryCopy partial:&v40];
      v30 = v39;
      if (v15)
      {
        if (complete)
        {
          *complete = 1;
        }

        if (partial)
        {
          *partial = v40;
        }

        v31 = objc_alloc(MEMORY[0x277D24F30]);
        v32 = [v31 initWithData:v15 partial:v40 incomplete:0];
        v33 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v32];
        v34 = v33;
        if (v33)
        {
          v35 = *(v33 + *MEMORY[0x277D24FE8]);

          v15 = v35;
        }

        if (v30)
        {
          v36 = [(MFLibraryStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v30];
        }
      }
    }
  }

  return v15;
}

- (void)deleteBodyDataForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFMessageLibrary *)self->_library deleteDataForMessage:messageCopy];
  }
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  selfCopy = self;
  v81 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  Current = CFAbsoluteTimeGetCurrent();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v80 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      v11 = 0;
      v56 = v9;
      do
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v61 + 1) + 8 * v11);
        account = [v12 account];
        mailbox = [v12 mailbox];
        if (trashCopy)
        {
          path = [account path];
          v16 = [account mailboxUidOfType:3 createIfNeeded:0];

          if (mailbox != v16)
          {
            v17 = [dictionary objectForKey:path];

            if (!v17)
            {
              array2 = [MEMORY[0x277CBEB18] array];
              [dictionary setObject:array2 forKey:path];
            }

            v19 = [dictionary objectForKey:path];
            [v19 addObject:v12];

            v9 = v56;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v61 objects:v80 count:16];
    }

    while (v9);
  }

  v20 = dictionary;
  v21 = [dictionary count];
  v22 = MEMORY[0x277CBEC38];
  v23 = 0x277CBE000uLL;
  if (v21)
  {
    v78 = @"MessageIsRead";
    v79 = MEMORY[0x277CBEC38];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v25 = [(MFLibraryStore *)selfCopy setFlagsFromDictionary:v24 forMessages:v7];

    keyEnumerator = [dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    v28 = array;
    if (nextObject)
    {
      v29 = nextObject;
      do
      {
        selfCopy = [MailAccount accountWithPath:v29, selfCopy];
        v31 = [selfCopy mailboxUidOfType:3 createIfNeeded:1];
        v32 = [selfCopy storeForMailboxUid:v31];

        if (v32)
        {
          v33 = [dictionary objectForKey:v29];
          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v32 mf_lock];
          [v32 appendMessages:v33 unsuccessfulOnes:v34];
          [v32 mf_unlock];

          v28 = array;
        }

        nextObject2 = [keyEnumerator nextObject];

        v29 = nextObject2;
      }

      while (nextObject2);
    }

    if ([v28 count])
    {
      array3 = [MEMORY[0x277CBEB18] array];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v37 = v7;
      v38 = [v37 countByEnumeratingWithState:&v57 objects:v77 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v58;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v58 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v57 + 1) + 8 * i);
            if ([v28 indexOfObject:v42] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [array3 addObject:v42];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v57 objects:v77 count:16];
        }

        while (v39);
      }

      v43 = selfCopy;
      [(MFMailMessageStore *)selfCopy setFlag:@"MessageIsDeleted" state:0 forMessages:v28];
      v20 = dictionary;
      v22 = MEMORY[0x277CBEC38];
      v23 = 0x277CBE000;
    }

    else
    {
      array3 = v7;
      v43 = selfCopy;
      v22 = MEMORY[0x277CBEC38];
      v23 = 0x277CBE000uLL;
    }
  }

  else
  {
    keyEnumerator = 0;
    array3 = v7;
    v43 = selfCopy;
    v28 = array;
  }

  v75[0] = @"MessageIsRead";
  v75[1] = @"MessageIsDeleted";
  v76[0] = v22;
  v76[1] = v22;
  v44 = [*(v23 + 2752) dictionaryWithObjects:v76 forKeys:v75 count:{2, selfCopy}];
  v45 = [(MFLibraryStore *)v43 setFlagsFromDictionary:v44 forMessages:array3];

  v46 = CFAbsoluteTimeGetCurrent();
  v48 = getLogger_0(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    mailboxUid = [(MFMailMessageStore *)v43 mailboxUid];
    mambaID = [mailboxUid mambaID];
    v51 = [array3 count];
    v52 = [array3 count];
    *buf = 136316162;
    v66 = mambaID;
    v67 = 2080;
    v68 = " ";
    v69 = 2048;
    v70 = v51;
    v71 = 2048;
    v72 = v46 - Current;
    v73 = 2048;
    v74 = (v46 - Current) / v52;
    _os_log_debug_impl(&dword_2720B1000, v48, OS_LOG_TYPE_DEBUG, "#D %s%s[LogMessageDeletionTimes] Deleting %lu messages took %4.5f seconds (%4.5f s/msg)", buf, 0x34u);
  }
}

- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact
{
  v4 = *&days;
  v19 = *MEMORY[0x277D85DE8];
  v6 = [(MFMailMessageStore *)self mailboxUid:*&days];
  uRLString = [v6 URLString];

  Current = CFAbsoluteTimeGetCurrent();
  v9 = [(MFMessageLibrary *)self->_library messagesForMailbox:uRLString olderThanNumberOfDays:v4];
  v10 = [v9 count];
  v11 = v10;
  if (v10)
  {
    v10 = [(MFMessageLibrary *)self->_library compactMessages:v9];
  }

  v12 = vm_imap_log(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218498;
    v14 = v11;
    v15 = 2112;
    v16 = uRLString;
    v17 = 2048;
    v18 = CFAbsoluteTimeGetCurrent() - Current;
    _os_log_debug_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEBUG, "[LogMessageDeletionTimes] Searching for and deleting %lu messages in %@ took: %fs", &v13, 0x20u);
  }
}

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  library = self->_library;
  dictionaryCopy = dictionary;
  uRLString = [(MFLibraryStore *)self URLString];
  [(MFMessageLibrary *)library setFlagsFromDictionary:dictionaryCopy forMessagesInMailboxURLString:uRLString];
}

- (BOOL)allowsAppend
{
  uRLString = [(MFLibraryStore *)self URLString];
  v3 = uRLString != 0;

  return v3;
}

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set
{
  messagesCopy = messages;
  onesCopy = ones;
  dsCopy = ds;
  newMessagesCopy = newMessages;
  setCopy = set;
  if ([(MFLibraryStore *)self allowsAppend])
  {
    library = self->_library;
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    LOWORD(v24) = 1;
    v19 = [(MFMessageLibrary *)library addMessages:messagesCopy withMailbox:mailboxUid fetchBodies:1 newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 clearFlags:0 messageFlagsForMessages:setCopy copyFiles:v24 addPOPUIDs:0 dataSectionsByMessage:?];

    v20 = [v19 count];
    if (v20)
    {
      v21 = [v19 arrayByApplyingSelector:sel_messageID];
      [dsCopy addObjectsFromArray:v21];

      [newMessagesCopy addObjectsFromArray:v19];
      [(MFMailMessageStore *)self updateMessages:v19 updateNumberOfAttachments:0];
    }

    if (v20 == [messagesCopy count])
    {
      v22 = 1;
    }

    else
    {
      [onesCopy addObjectsFromArray:messagesCopy];
      v22 = 0;
    }
  }

  else
  {
    [onesCopy addObjectsFromArray:messagesCopy];
    v22 = 0;
  }

  return v22;
}

- (BOOL)canCompact
{
  v5.receiver = self;
  v5.super_class = MFLibraryStore;
  canCompact = [(MFMailMessageStore *)&v5 canCompact];
  if (canCompact)
  {
    LOBYTE(canCompact) = [(MFMailMessageStore *)self isOpened];
  }

  return canCompact;
}

- (void)doCompact
{
  canCompact = [(MFLibraryStore *)self canCompact];
  if (canCompact)
  {
    canCompact = [(MFLibraryStore *)self URLString];
    v4 = canCompact;
    if (canCompact && self->super._deletedMessageCount)
    {
      v5 = canCompact;
      canCompact = [(MFMessageLibrary *)self->_library compactMailbox:canCompact];
      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x2821F96F8](canCompact, v4);
}

- (void)compactMessages:(id)messages
{
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    [(MFMessageLibrary *)self->_library compactMessages:messagesCopy];
  }
}

- (id)criterion
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  criterion = [mailboxUid criterion];

  return criterion;
}

- (id)URLString
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid URLString];

  return uRLString;
}

+ (BOOL)createEmptyStoreForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy hasPrefix:@"/"])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [defaultManager mf_makeCompletePath:pathCopy mode:448];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)storeAtPathIsWritable:(id)writable
{
  v3 = MEMORY[0x277CCAA00];
  writableCopy = writable;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager mf_canWriteToDirectoryAtPath:writableCopy];

  return v6;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  serverUnreadOnlyOnServerCount = [mailboxUid serverUnreadOnlyOnServerCount];

  return serverUnreadOnlyOnServerCount;
}

- (unint64_t)unreadCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  unreadCount = [mailboxUid unreadCount];

  return unreadCount;
}

- (unint64_t)unreadCountMatchingCriterion:(id)criterion
{
  criterionCopy = criterion;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v6 = [mailboxUid unreadCountMatchingCriterion:criterionCopy];

  return v6;
}

- (id)newObjectCache
{
  v2 = [objc_alloc(MEMORY[0x277D24F48]) initWithCapacity:32];
  v3 = objc_opt_class();
  [v2 setKeyGenerator:&__block_literal_global_68];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MFLibraryStore_newObjectCache__block_invoke_2;
  v5[3] = &__block_descriptor_40_e11_q24__0_8_16lu32l8;
  v5[4] = v3;
  [v2 setComparator:v5];
  return v2;
}

uint64_t __32__MFLibraryStore_newObjectCache__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = v5;
    v8 = *MEMORY[0x277D24FF0];
    v9 = v6[v8];
    if (v9 == 1 && v7[v8] != 1 || (v10 = *MEMORY[0x277D24FF8], v11 = v6[v10], v11 == 1) && v7[v10] != 1)
    {
      v12 = -1;
    }

    else if ((v9 & 1) != 0 || (v7[v8] & 1) == 0)
    {
      v12 = v7[v10] & (v11 ^ 1u);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeadersForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if ([messageCopy isLibraryMessage])
  {
    v11.receiver = self;
    v11.super_class = MFLibraryStore;
    v8 = [(MFLibraryStore *)&v11 _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:presentCopy];
  }

  else
  {
    v8 = presentCopy;
  }

  v9 = v8;

  return v9;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message
{
  messageCopy = message;
  library = self->_library;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid URLString];
  v9 = [(MFMessageLibrary *)library nonDeletedCountForMailbox:uRLString];

  v10 = messageCopy;
  if (v9 > limit)
  {
    if (messageCopy)
    {
      v11 = 144;
    }

    else
    {
      v11 = 128;
    }

    v12 = [(MFLibraryStore *)self copyOfMessagesInRange:limit options:v9 - limit, v11];
    v13 = v12;
    if (messageCopy)
    {
      v14 = [v12 indexOfObject:?];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14 + 1;
        v16 = v13;
        v13 = [v16 subarrayWithRange:{v15, objc_msgSend(v16, "count") - v15}];
      }
    }

    if ([v13 count])
    {
      [(MFLibraryStore *)self purgeMessages:v13];
    }

    v10 = messageCopy;
  }
}

- (BOOL)hasMessageForAccount:(id)account
{
  accountCopy = account;
  library = self->_library;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid URLString];
  LODWORD(library) = [(MFMessageLibrary *)library nonDeletedCountForMailbox:uRLString];

  if (library)
  {
    v10.receiver = self;
    v10.super_class = MFLibraryStore;
    v8 = [(MFMailMessageStore *)&v10 hasMessageForAccount:accountCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_queueMessagesAdded:(id)added
{
  v7 = 0;
  addedCopy = added;
  v5 = [(MFLibraryStore *)self pep_getInvocation:&v7];
  v6 = v7;
  [v5 handleMessagesAdded:addedCopy earliestReceivedDate:self->_earliestReceivedDate];

  [v6 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v6];
}

- (void)_queueMessageFlagsChanged:(id)changed
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessageFlagsChanged_ target:self object:changed];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWillBeCompacted:(id)compacted
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesWillBeCompacted_ target:self object:compacted];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (void)_queueMessagesWereCompacted:(id)compacted
{
  v4 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleMessagesCompacted_ target:self object:compacted];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
}

- (BOOL)hasCompleteDataForMimePart:(id)part
{
  partCopy = part;
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  v5 = [(MFLibraryStore *)&v7 hasCompleteDataForMimePart:partCopy]|| [(MFMessageLibrary *)self->_library hasCompleteDataForMimePart:partCopy];

  return v5;
}

@end