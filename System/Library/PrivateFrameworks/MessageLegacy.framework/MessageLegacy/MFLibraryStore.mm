@interface MFLibraryStore
+ (BOOL)createEmptyStoreForPath:(id)path;
+ (BOOL)storeAtPathIsWritable:(id)writable;
+ (id)sharedInstance;
+ (id)storeWithCriterion:(id)criterion;
+ (id)storeWithMailbox:(id)mailbox;
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
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set;
- (unint64_t)fetchWindow;
- (unint64_t)fetchWindowCap;
- (unint64_t)growFetchWindow;
- (unint64_t)serverUnreadOnlyOnServerCount;
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
  v9.receiver = self;
  v9.super_class = MFLibraryStore;
  v7 = [(MFLibraryStore *)&v9 init:criterion];
  if (v7)
  {
    v7->_criterion = criterion;
    v7->super._mailboxUid = mailbox;
    v7->super._account = [mailbox account];
    *&v7->super._flags |= 0x100u;
  }

  return v7;
}

- (MFLibraryStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  onlyCopy = only;
  criterion = [uid criterion];

  return [(MFLibraryStore *)self initWithCriterion:criterion mailbox:uid readOnly:onlyCopy];
}

+ (id)storeWithCriterion:(id)criterion
{
  v3 = [[MFLibraryStore alloc] initWithCriterion:criterion];

  return v3;
}

+ (id)storeWithMailbox:(id)mailbox
{
  v3 = [[MFLibraryStore alloc] initWithMailbox:mailbox];

  return v3;
}

- (void)setLibrary:(id)library
{
  if (self->_library != library)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = defaultCenter;
    if (self->_library)
    {
      [defaultCenter removeObserver:self name:0 object:?];
      library = self->_library;
    }

    else
    {
      library = 0;
    }

    libraryCopy = library;
    self->_library = libraryCopy;
    if (library)
    {
      [v6 addObserver:self selector:sel__queueMessagesAdded_ name:@"MailMessageStoreMessagesAdded" object:libraryCopy];
      [v6 addObserver:self selector:sel__queueMessageFlagsChanged_ name:@"MailMessageStoreMessageFlagsChanged" object:self->_library];
      [v6 addObserver:self selector:sel__queueMessagesWillBeCompacted_ name:@"MailMessageStoreMessagesWillBeCompacted" object:self->_library];
      [v6 addObserver:self selector:sel__queueMessagesWereCompacted_ name:@"MailMessageStoreMessagesRemoved" object:self->_library];
    }

    [(MFLibraryStore *)self invalidateFetchWindow];
  }
}

+ (id)sharedInstance
{
  pthread_once(&sharedInstanceInitializer, initializeSharedInstance);

  return [self sharedInstanceIfExists];
}

- (void)addCountsForMessages:(id)messages shouldUpdateUnreadCount:(BOOL)count
{
  mailboxUid = [-[MFMailMessageStore mailboxUid](self mailboxUid];
  v7 = [messages count];
  [(MFLibraryStore *)self mf_lock];
  if (v7)
  {
    v8 = mailboxUid - 5;
    for (i = v7 - 1; i != -1; --i)
    {
      v10 = [messages objectAtIndex:i];
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
          continue;
        }
      }

      *(&self->super.super.super.isa + *v13) = (*(&self->super.super.super.isa + *v13) + messageSize);
    }
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)_addInvocationToQueue:(id)queue
{
  if (_addInvocationToQueue__onceToken != -1)
  {
    [MFLibraryStore _addInvocationToQueue:];
  }

  v4 = _addInvocationToQueue__sInvocationQueue;

  [v4 addInvocation:queue];
}

uint64_t __40__MFLibraryStore__addInvocationToQueue___block_invoke()
{
  v0 = objc_alloc_init(MFInvocationQueue);
  _addInvocationToQueue__sInvocationQueue = v0;

  return [(MFInvocationQueue *)v0 setThreadRecycleTimeout:60.0];
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

- (id)messageWithLibraryID:(unsigned int)d options:(unsigned int)options
{
  v5 = [(MFMessageLibrary *)self->_library messageWithLibraryID:*&d options:*&options inMailbox:[(MFLibraryStore *)self URLString]];
  [v5 setMessageStore:self];
  return v5;
}

- (id)copyOfMessagesInRange:(_NSRange)range options:(unsigned int)options generation:(unint64_t *)generation
{
  v6 = *&options;
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x277D85DE8];
  [(MFLibraryStore *)self mf_lock];
  if (generation)
  {
    *generation = self->super._generationNumber;
  }

  if (v6 == 399)
  {
    v11 = [(MFMessageLibrary *)self->_library messagesWithSummariesForMailbox:[(MFLibraryStore *)self URLString] range:location, length];
  }

  else
  {
    if ((v6 & 0x180) != 0)
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObject:{-[MFLibraryStore criterion](self, "criterion")}];
      if ((v6 & 0x80) != 0)
      {
        [v12 addObject:{+[MFMessageCriterion messageIsDeletedCriterion:](MFMessageCriterion, "messageIsDeletedCriterion:", 0)}];
      }

      if ((v6 & 0x100) != 0)
      {
        [v12 addObject:{+[MFMessageCriterion messageIsServerSearchResultCriterion:](MFMessageCriterion, "messageIsServerSearchResultCriterion:", 0)}];
      }

      criterion = [MFMessageCriterion andCompoundCriterionWithCriteria:v12];
    }

    else
    {
      criterion = [(MFLibraryStore *)self criterion];
    }

    v11 = [(MFMessageLibrary *)self->_library messagesMatchingCriterion:criterion options:v6 range:location, length];
  }

  v14 = v11;
  [(MFLibraryStore *)self mf_unlock];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        [v19 setMessageStore:self];
        if (![v19 generationNumber])
        {
          [MFLibraryStore copyOfMessagesInRange:a2 options:self generation:?];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v14;
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
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(MFMessageLibrary *)self->_library messagesWithoutSummariesForMailbox:[(MFLibraryStore *)self URLString] fromRowID:*&d limit:*&limit];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 setMessageStore:self];
        if (![v11 generationNumber])
        {
          [MFLibraryStore copyOfAllMessagesForBodyLoadingFromRowID:a2 limit:self];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)mutableCopyOfAllMessages
{
  copyOfAllMessages = [(MFLibraryStore *)self copyOfAllMessages];

  return [copyOfAllMessages mutableCopy];
}

- (id)copyMessagesMatchingText:(id)text options:(unsigned int)options
{
  v13[3] = *MEMORY[0x277D85DE8];
  v7 = [[MFMessageCriterion alloc] initWithType:34 qualifier:0 expression:text];
  v8 = [[MFMessageCriterion alloc] initWithType:9 qualifier:0 expression:text];
  v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:0 expression:text];
  [(MFMessageCriterion *)v9 setCriterionIdentifier:*MEMORY[0x277D07030]];
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v10 = +[MFMessageCriterion orCompoundCriterionWithCriteria:](MFMessageCriterion, "orCompoundCriterionWithCriteria:", [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3]);

  v12[0] = [(MFLibraryStore *)self criterion];
  v12[1] = v10;
  return [-[MFLibraryStore library](self "library")];
}

- (id)copyMessagesMatchingCriterion:(id)criterion options:(unsigned int)options
{
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{-[MFLibraryStore criterion](self, "criterion"), criterion, 0}];
  if ((options & 0x80) != 0)
  {
    [v6 addObject:{+[MFMessageCriterion messageIsDeletedCriterion:](MFMessageCriterion, "messageIsDeletedCriterion:", 0)}];
  }

  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v9 = [-[MFLibraryStore library](self "library")];
  [v9 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];

  return v9;
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options
{
  v4 = *&options;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [(MFLibraryStore *)self copyMessagesWithRemoteIDs:ds options:v4 inMailbox:mailboxUid];
}

- (id)copyMessagesWithRemoteIDs:(id)ds options:(unsigned int)options inMailbox:(id)mailbox
{
  v6 = [-[MFLibraryStore library](self "library")];
  [v6 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v6;
}

- (id)serverSearchResults
{
  v3 = [-[MFLibraryStore library](self "library")];
  [v3 makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  return v3;
}

- (id)dateOfOldestNonIndexedNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [-[MFLibraryStore library](self "library")];
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (id)dateOfNewestNonSearchResultMessage
{
  [(MFLibraryStore *)self mf_lock];
  v3 = [-[MFLibraryStore library](self "library")];
  [(MFLibraryStore *)self mf_unlock];
  return v3;
}

- (void)willFetchMessages
{
  v3 = [-[MFLibraryStore library](self "library")];

  [(MFLibraryStore *)self setEarliestReceivedDate:v3];
}

- (unint64_t)_fetchWindowMultiple
{
  v2 = +[MFNetworkController sharedInstance];
  if ([(MFNetworkController *)v2 isFatPipe])
  {
    return 250;
  }

  if ([(MFNetworkController *)v2 is4GConnection])
  {
    return 250;
  }

  return 100;
}

- (unint64_t)_fetchWindowMinimum
{
  v2 = +[MFNetworkController sharedInstance];
  if ([(MFNetworkController *)v2 isFatPipe]|| [(MFNetworkController *)v2 is4GConnection])
  {
    return 150;
  }

  if ([(MFNetworkController *)v2 is3GConnection])
  {
    return 100;
  }

  return 50;
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
  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
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
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [membership countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  array = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(membership);
      }

      mailboxUid = self->super._mailboxUid;
      if (mailboxUid)
      {
        v11 = *(*(&v13 + 1) + 8 * i);
        if (mailboxUid == [v11 mailbox])
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v11];
        }
      }
    }

    v6 = [membership countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
  return array;
}

- (void)handleMessagesAdded:(id)added earliestReceivedDate:(id)date
{
  userInfo = [added userInfo];
  v7 = [userInfo objectForKey:@"messages"];
  v8 = [userInfo objectForKey:@"mailboxes"];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  if (mailboxUid)
  {
    if ([v8 indexOfObject:mailboxUid] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    [(MFLibraryStore *)self criterion];
  }

  else
  {
    criterion = [(MFLibraryStore *)self criterion];
    if (criterion)
    {
      v7 = [(MFMessageLibrary *)self->_library filterContiguousMessages:v7 forCriterion:criterion options:3];
      goto LABEL_7;
    }
  }

  v7 = 0;
LABEL_7:
  if ([v7 count])
  {
    [(MFLibraryStore *)self addCountsForMessages:v7 shouldUpdateUnreadCount:0];

    [(MFLibraryStore *)self messagesWereAdded:v7 earliestReceivedDate:date];
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  [added makeObjectsPerformSelector:sel_setMessageStore_ withObject:self];
  v7.receiver = self;
  v7.super_class = MFLibraryStore;
  [(MFMailMessageStore *)&v7 messagesWereAdded:added earliestReceivedDate:date];
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  type = [(MFMailboxUid *)self->super._mailboxUid type];
  [(MFLibraryStore *)self mf_lock];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = messages;
  v10 = [messages countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v24 = type - 5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [objc_msgSend(message objectForKey:{v14), "intValue"}];
        v16 = v15;
        if (flags)
        {
          messageFlags = MFMessageFlagsByApplyingDictionary(v15, flags);
        }

        else
        {
          messageFlags = [v14 messageFlags];
        }

        v18 = messageFlags;
        if (((v16 >> 1) & 1) != ((messageFlags >> 1) & 1))
        {
          messageSize = [v14 messageSize];
          deletedMessageCount = self->super._deletedMessageCount;
          if ((v16 & 2) != 0)
          {
            self->super._deletedMessageCount = deletedMessageCount - 1;
            v21 = 56;
            v22 = (self->super._deletedMessagesSize - messageSize);
          }

          else
          {
            self->super._deletedMessageCount = deletedMessageCount + 1;
            self->super._deletedMessagesSize += messageSize;
            if (v24 > 1)
            {
              goto LABEL_15;
            }

            v21 = 72;
            v22 = (self->super._unreadMessageCount - 1);
          }

          *(&self->super.super.super.isa + v21) = v22;
        }

LABEL_15:
        if ((v16 & 1) != (v18 & 1))
        {
          v23 = -1;
          if ((v18 & 1) == 0)
          {
            v23 = 1;
          }

          goto LABEL_22;
        }

        if ((v18 & 2) != 0 && !((v18 | v16) & 1 | v16 & 2))
        {
          v23 = -1;
LABEL_22:
          self->super._unreadMessageCount += v23;
          continue;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [(MFLibraryStore *)self mf_unlock];
}

- (void)handleMessageFlagsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"mailboxes"];
  v6 = -[MFLibraryStore filterMessagesByMembership:](self, "filterMessagesByMembership:", [userInfo objectForKey:@"messages"]);
  if ([v6 count])
  {
    v7 = [userInfo objectForKey:@"flags"];
    v8 = [userInfo objectForKey:@"oldFlagsByMessage"];
    if (v8)
    {
      [(MFLibraryStore *)self _handleFlagsChangedForMessages:v6 flags:v7 oldFlagsByMessage:v8];
    }

    [(MFMailMessageStore *)self messageFlagsDidChange:v6 flags:v7];
  }

  else if (self->super._mailboxUid && [v5 containsObject:?])
  {
    v9 = [userInfo objectForKeyedSubscript:@"flags"];

    [(MFMailMessageStore *)self allMessageFlagsDidChange:v9];
  }
}

- (id)_memberMessagesWithCompactionNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"messages"];
  v6 = [userInfo objectForKey:@"mailboxes"];
  if (![v5 count])
  {
    return 0;
  }

  if (!self->super._mailboxUid)
  {
    return 0;
  }

  if ([v6 indexOfObject:?] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  array = 0;
  v10 = *v16;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v15 + 1) + 8 * i);
      mailboxUid = self->super._mailboxUid;
      if (mailboxUid == [v12 mailbox])
      {
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v12];
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v8);
  return array;
}

- (void)handleMessagesCompacted:(id)compacted
{
  [(MFLibraryStore *)self mf_lock];
  v5 = [(MFLibraryStore *)self _memberMessagesWithCompactionNotification:compacted];
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
  v5 = [(MFMessageLibrary *)self->_library messageWithMessageID:d options:*&options inMailbox:[(MFLibraryStore *)self URLString]];
  [v5 setMessageStore:self];
  return v5;
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
  v14 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v15 = [objc_alloc(MEMORY[0x277D24F88]) initWithConsumer:v14];
  LODWORD(download) = [(MFLibraryStore *)self dataForMimePart:part inRange:location isComplete:length withConsumer:complete downloadIfNecessary:v15 didDownload:necessaryCopy, download];
  [v15 done];
  if (download)
  {
    data = [v14 data];
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
  length = range.length;
  location = range.location;
  v61 = *MEMORY[0x277D85DE8];
  v14 = [objc_msgSend(part "mimeBody")];
  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    messageID = [v14 messageID];
    v57 = 2114;
    partNumber = [part partNumber];
    _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_INFO, "#CacheLoads requesting data for MIME part %{public}@:%{public}@", buf, 0x16u);
  }

  if (![part parentPart] && length == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [(MFLibraryStore *)self fullBodyDataForMessage:v14 andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:necessaryCopy usePartDatas:0 didDownload:download];
    if (!v16)
    {
      LOBYTE(v17) = 0;
      return v17;
    }

    goto LABEL_21;
  }

  v18 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:v14 valueIfNotPresent:0];
  if (v18 && (v19 = v18, *&v18[*MEMORY[0x277D24FE8]]) && (v18[*MEMORY[0x277D24FF8]] & 1) == 0)
  {
    consumerCopy = consumer;
    v31 = MFLogGeneral();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      messageID2 = [v14 messageID];
      partNumber2 = [part partNumber];
      *buf = 138543618;
      messageID = messageID2;
      v57 = 2114;
      partNumber = partNumber2;
      _os_log_impl(&dword_258BDA000, v31, OS_LOG_TYPE_INFO, "#CacheLoads found full cached data for %{public}@:%{public}@", buf, 0x16u);
    }

    v34 = [*&v19[*MEMORY[0x277D24FE8]] length];
    range = [part range];
    v20 = 0;
    if (range == 0x7FFFFFFFFFFFFFFFLL)
    {
      consumer = v53;
    }

    else
    {
      v37 = range + v36 > v34;
      consumer = v53;
      if (!v37)
      {
        v20 = *&v19[*MEMORY[0x277D24FE8]];
        [v53 appendData:{objc_msgSend(v20, "mf_subdataWithRange:", range, v36)}];
        if (complete)
        {
          *complete = 1;
        }
      }
    }
  }

  else
  {
    v20 = 0;
  }

  if (v20 || location)
  {
    completeCopy2 = complete;
    if (v20)
    {
LABEL_22:
      LOBYTE(v17) = 1;
      return v17;
    }
  }

  else
  {
    completeCopy2 = complete;
    v22 = [-[MFLibraryStore library](self "library")];
    if (v22)
    {
      v16 = v22;
      v23 = MFLogGeneral();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        messageID3 = [v14 messageID];
        partNumber3 = [part partNumber];
        *buf = 138543618;
        messageID = messageID3;
        v57 = 2114;
        partNumber = partNumber3;
        v26 = "#CacheLoads found part data in database %{public}@:%{public}@";
LABEL_20:
        _os_log_impl(&dword_258BDA000, v23, OS_LOG_TYPE_INFO, v26, buf, 0x16u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  v27 = partDataFromFullBodyData(self, v14, part, completeCopy2, 0, download);
  if (v27)
  {
    v16 = v27;
    v23 = MFLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      messageID4 = [v14 messageID];
      partNumber4 = [part partNumber];
      *buf = 138543618;
      messageID = messageID4;
      v57 = 2114;
      partNumber = partNumber4;
      v26 = "#CacheLoads extracted part data from full body data in database %{public}@:%{public}@";
      goto LABEL_20;
    }

LABEL_21:
    [consumer appendData:v16];
    goto LABEL_22;
  }

  v17 = 0;
  v38 = !necessaryCopy;
  if (([objc_msgSend(part "type")] & 1) == 0 && !v38)
  {
    v39 = MFLogGeneral();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      consumerCopy2 = consumer;
      messageID5 = [v14 messageID];
      partNumber5 = [part partNumber];
      *buf = 138543618;
      messageID = messageID5;
      consumer = consumerCopy2;
      v57 = 2114;
      partNumber = partNumber5;
      _os_log_impl(&dword_258BDA000, v39, OS_LOG_TYPE_INFO, "#CacheLoads downloading part data from server %{public}@:%{public}@", buf, 0x16u);
    }

    consumer = [(MFLibraryStore *)self _fetchDataForMimePart:part range:location isComplete:length consumer:complete, consumer];
    v17 = consumer;
    if (download)
    {
      *download = consumer;
    }

    v44 = MFLogGeneral();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      if (v17)
      {
        v45 = @"SUCCESS";
      }

      else
      {
        v45 = @"FAILED";
      }

      consumerCopy3 = consumer;
      messageID6 = [v14 messageID];
      partNumber6 = [part partNumber];
      *buf = 138412802;
      messageID = v45;
      v57 = 2114;
      partNumber = messageID6;
      consumer = consumerCopy3;
      v59 = 2114;
      v60 = partNumber6;
      _os_log_impl(&dword_258BDA000, v44, OS_LOG_TYPE_INFO, "#CacheLoads %@ downloading part data from server %{public}@:%{public}@", buf, 0x20u);
    }
  }

  if (!v17 && !v38)
  {
    v49 = partDataFromFullBodyData(self, v14, part, complete, 1, download);
    if (v49)
    {
      v16 = v49;
      v23 = MFLogGeneral();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      messageID7 = [v14 messageID];
      partNumber7 = [part partNumber];
      *buf = 138543618;
      messageID = messageID7;
      v57 = 2114;
      partNumber = partNumber7;
      v26 = "#CacheLoads extracted part data from full body data via download %{public}@:%{public}@";
      goto LABEL_20;
    }
  }

  return v17;
}

- (id)storeData:(id)data forMimePart:(id)part isComplete:(BOOL)complete
{
  completeCopy = complete;
  v9 = [objc_msgSend(part "mimeBody")];
  if (![v9 isLibraryMessage])
  {
    return 0;
  }

  v10 = [-[MFLibraryStore library](self "library")];
  [v10 appendData:data];
  [v10 done];

  return [v10 data];
}

- (id)_copyDataFromMimePart:(id)part threshold:(unsigned int)threshold downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v8;
  if (threshold != -1)
  {
    [v8 addObject:part];
    if (![v9 count])
    {
      goto LABEL_36;
    }

    while (1)
    {
      v10 = [v9 objectAtIndex:0];
      firstChildPart = [v10 firstChildPart];
      if (firstChildPart)
      {
        nextSiblingPart = firstChildPart;
        do
        {
          [v9 addObject:nextSiblingPart];
          nextSiblingPart = [nextSiblingPart nextSiblingPart];
        }

        while (nextSiblingPart);
      }

      else if ([v10 isAttachment])
      {
        [v10 range];
        v14 = v13 >= threshold;
        goto LABEL_10;
      }

      v14 = 0;
LABEL_10:
      [v9 removeObjectAtIndex:0];
      if (![v9 count] || v14)
      {
        if (!v14)
        {
          goto LABEL_36;
        }

        break;
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v16 = [objc_msgSend(part "mimeBody")];
  [v9 removeAllObjects];
  [v9 addObject:part];
  if (!Mutable)
  {
    goto LABEL_36;
  }

  if (![v9 count])
  {
LABEL_34:
    v28 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v29 = objc_alloc_init(MFMessageWriter);
    [(MFMessageWriter *)v29 appendDataForMimePart:part toData:v28 withPartData:Mutable];

    goto LABEL_37;
  }

  while (1)
  {
    v17 = [v9 objectAtIndex:0];
    firstChildPart2 = [v17 firstChildPart];
    if (firstChildPart2)
    {
      nextSiblingPart2 = firstChildPart2;
      do
      {
        [v9 addObject:nextSiblingPart2];
        nextSiblingPart2 = [nextSiblingPart2 nextSiblingPart];
      }

      while (nextSiblingPart2);
      if ([objc_msgSend(v17 "type")])
      {
        goto LABEL_33;
      }
    }

    else if ([v17 isAttachment])
    {
      [v17 range];
      if (v20 >= threshold)
      {
        goto LABEL_33;
      }
    }

    [v17 range];
    v22 = v21 ? [v17 decodedDataForData:{objc_msgSend(v16, "dataForMimePart:inRange:isComplete:downloadIfNecessary:didDownload:", v17, 0, 0x7FFFFFFFFFFFFFFFLL, 0, necessaryCopy, 0)}] : objc_msgSend(MEMORY[0x277CBEA90], "data");
    v23 = v22;
    firstChildPart3 = [v17 firstChildPart];
    if (firstChildPart3)
    {
      v25 = firstChildPart3;
      if (![firstChildPart3 firstChildPart])
      {
        if ([v25 isAttachment])
        {
          if ([v23 length])
          {
            [v25 range];
            if (v26 >= threshold)
            {
              v27 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"X-Apple-Content-Length: %lu\n", v26), "dataUsingEncoding:", 1), "mutableCopy"];
              [v27 appendData:v23];
              v23 = v27;
            }
          }
        }
      }
    }

    if (!v23)
    {
      break;
    }

    CFDictionarySetValue(Mutable, v17, v23);
LABEL_33:
    [v9 removeObjectAtIndex:0];
    if (![v9 count])
    {
      goto LABEL_34;
    }
  }

  [v9 removeObjectAtIndex:0];
LABEL_36:
  v28 = 0;
LABEL_37:

  return v28;
}

- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download
{
  datasCopy = datas;
  necessaryCopy = necessary;
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  if (available)
  {
    availableCopy = available;
    *available = 0;
  }

  else
  {
    availableCopy = &v25;
  }

  v15 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
  if (!v15 || (v15[*MEMORY[0x277D24FF8]] & 1) != 0 || !complete && (v15[*MEMORY[0x277D24FF0]] & 1) != 0)
  {
    goto LABEL_35;
  }

  v16 = *&v15[*MEMORY[0x277D24FE8]];
  if (complete)
  {
    *complete = (v15[*MEMORY[0x277D24FF0]] ^ 1) & 1;
  }

  v17 = MFLogGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    messageCopy = message;
    _os_log_impl(&dword_258BDA000, v17, OS_LOG_TYPE_INFO, "#CacheLoads returning cached full body data for %@", buf, 0xCu);
  }

  if (!v16)
  {
LABEL_35:
    if ([message isLibraryMessage] && (v18 = -[MFMessageLibrary fullBodyDataForMessage:andHeaderDataIfReadilyAvailable:](self->_library, "fullBodyDataForMessage:andHeaderDataIfReadilyAvailable:", message, availableCopy)) != 0)
    {
      v16 = v18;
      v19 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v18 partial:1 incomplete:0];
      [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:v19];
    }

    else if (datasCopy && (!necessaryCopy ? (v20 = [message messageBodyIfAvailableUpdatingFlags:0]) : (v20 = objc_msgSend(message, "messageBodyUpdatingFlags:", 0)), (v21 = v20) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v22 = -[MFLibraryStore _copyDataFromMimePart:threshold:downloadIfNecessary:](self, "_copyDataFromMimePart:threshold:downloadIfNecessary:", objc_msgSend(v21, "topLevelPart"), 0xFFFFFFFFLL, necessaryCopy)) != 0))
    {
      v16 = v22;
      v23 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v22 partial:0 incomplete:0];
      [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:v23];

      if (download)
      {
        *download = 1;
      }
    }

    else if (necessaryCopy)
    {
      v16 = [(MFLibraryStore *)self _fetchFullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:availableCopy downloadIfNecessary:1 didDownload:download];
    }

    else
    {
      v16 = 0;
    }
  }

  if (*availableCopy)
  {
    [(MFLibraryStore *)self _cachedHeaderDataForMessage:message valueIfNotPresent:?];
  }

  if (complete)
  {
    *complete = v16 != 0;
  }

  return v16;
}

- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v28 = *MEMORY[0x277D85DE8];
  v11 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = MEMORY[0x277D24FF0];
  if (!complete && (v11[*MEMORY[0x277D24FF0]] & 1) != 0)
  {
    goto LABEL_11;
  }

  v14 = *&v11[*MEMORY[0x277D24FE8]];
  if (complete)
  {
    *complete = v12[*v13] ^ 1;
  }

  if (partial)
  {
    *partial = v12[*MEMORY[0x277D24FF8]];
  }

  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    messageCopy3 = message;
    _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_INFO, "#CacheLoads returning cached body data for %@", buf, 0xCu);
  }

  if (!v14)
  {
LABEL_11:
    v25 = 0;
    v14 = [(MFMessageLibrary *)self->_library bodyDataForMessage:message andHeaderDataIfReadilyAvailable:&v25 isComplete:complete];
    if (!v14)
    {
LABEL_17:
      if (v25)
      {
        [(MFLibraryStore *)self _cachedHeaderDataForMessage:message valueIfNotPresent:?];
      }

      if (!v14)
      {
        v25 = 0;
        v24 = 0;
        v20 = MFLogGeneral();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          messageCopy3 = message;
          _os_log_impl(&dword_258BDA000, v20, OS_LOG_TYPE_INFO, "#CacheLoads fetching body data from network for %@", buf, 0xCu);
        }

        v14 = [(MFLibraryStore *)self _fetchBodyDataForMessage:message andHeaderDataIfReadilyAvailable:&v25 downloadIfNecessary:necessaryCopy partial:&v24];
        if (v14)
        {
          if (complete)
          {
            *complete = 1;
          }

          if (partial)
          {
            *partial = v24;
          }

          v21 = objc_alloc(MEMORY[0x277D24F30]);
          v22 = [v21 initWithData:v14 partial:v24 incomplete:0];
          v23 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:v22];
          if (v23)
          {
            v14 = *&v23[*MEMORY[0x277D24FE8]];
          }

          if (v25)
          {
            [(MFLibraryStore *)self _cachedHeaderDataForMessage:message valueIfNotPresent:?];
          }
        }
      }

      return v14;
    }

    if (complete)
    {
      v16 = !*complete;
      if (!partial)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = 0;
      if (!partial)
      {
LABEL_15:
        v17 = [objc_alloc(MEMORY[0x277D24F30]) initWithData:v14 partial:1 incomplete:v16];
        [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:v17];

        v18 = MFLogGeneral();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          messageCopy3 = message;
          _os_log_impl(&dword_258BDA000, v18, OS_LOG_TYPE_INFO, "#CacheLoads returning body data from Library for %@", buf, 0xCu);
        }

        goto LABEL_17;
      }
    }

    *partial = 1;
    goto LABEL_15;
  }

  return v14;
}

- (void)deleteBodyDataForMessage:(id)message
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    library = self->_library;

    [(MFMessageLibrary *)library deleteDataForMessage:message];
  }
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  v62 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  Current = CFAbsoluteTimeGetCurrent();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = [messages countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(messages);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        account = [v12 account];
        mailbox = [v12 mailbox];
        if (trashCopy)
        {
          v15 = mailbox;
          path = [account path];
          if (v15 != [account mailboxUidOfType:3 createIfNeeded:0])
          {
            if (![dictionary objectForKey:path])
            {
              [dictionary setObject:objc_msgSend(MEMORY[0x277CBEB18] forKey:{"array"), path}];
            }

            [objc_msgSend(dictionary objectForKey:{path), "addObject:", v12}];
          }
        }
      }

      v9 = [messages countByEnumeratingWithState:&v46 objects:v61 count:16];
    }

    while (v9);
  }

  v17 = [dictionary count];
  v18 = MEMORY[0x277CBEC38];
  v19 = 0x277CBE000uLL;
  if (v17)
  {
    v59 = @"MessageIsRead";
    v60 = MEMORY[0x277CBEC38];
    selfCopy3 = self;
    -[MFLibraryStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1], messages);
    keyEnumerator = [dictionary keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    v23 = array;
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        v25 = [MailAccount accountWithPath:nextObject2];
        v26 = [(MailAccount *)v25 storeForMailboxUid:[(MailAccount *)v25 mailboxUidOfType:3 createIfNeeded:1]];
        if (v26)
        {
          v27 = v26;
          v28 = [dictionary objectForKey:nextObject2];
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v27 mf_lock];
          [v27 appendMessages:v28 unsuccessfulOnes:v29];
          [v27 mf_unlock];

          v23 = array;
        }

        nextObject2 = [keyEnumerator nextObject];
      }

      while (nextObject2);
    }

    if ([v23 count])
    {
      messagesCopy2 = [MEMORY[0x277CBEB18] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v31 = [messages countByEnumeratingWithState:&v42 objects:v58 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v43;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v43 != v33)
            {
              objc_enumerationMutation(messages);
            }

            v35 = *(*(&v42 + 1) + 8 * j);
            if ([v23 indexOfObject:v35] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [messagesCopy2 addObject:v35];
            }
          }

          v32 = [messages countByEnumeratingWithState:&v42 objects:v58 count:16];
        }

        while (v32);
      }

      selfCopy3 = self;
      [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v23];
      v19 = 0x277CBE000;
    }

    else
    {
      messagesCopy2 = messages;
      v19 = 0x277CBE000uLL;
    }
  }

  else
  {
    messagesCopy2 = messages;
    selfCopy3 = self;
  }

  v56[0] = @"MessageIsRead";
  v56[1] = @"MessageIsDeleted";
  v57[0] = v18;
  v57[1] = v18;
  -[MFLibraryStore setFlagsFromDictionary:forMessages:](selfCopy3, "setFlagsFromDictionary:forMessages:", [*(v19 + 2752) dictionaryWithObjects:v57 forKeys:v56 count:2], messagesCopy2);
  v36 = CFAbsoluteTimeGetCurrent();
  v37 = MFLogGeneral();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = [messagesCopy2 count];
    v39 = [messagesCopy2 count];
    *buf = 134218496;
    v51 = v38;
    v52 = 2048;
    v53 = v36 - Current;
    v54 = 2048;
    v55 = (v36 - Current) / v39;
    _os_log_debug_impl(&dword_258BDA000, v37, OS_LOG_TYPE_DEBUG, "[LogMessageDeletionTimes] Deleting %lu messages took %4.5f seconds (%4.5f s/msg)", buf, 0x20u);
  }
}

- (void)deleteMessagesOlderThanNumberOfDays:(int)days compact:(BOOL)compact
{
  v4 = *&days;
  v17 = *MEMORY[0x277D85DE8];
  mailboxUid = [-[MFMailMessageStore mailboxUid](self mailboxUid];
  Current = CFAbsoluteTimeGetCurrent();
  v8 = [(MFMessageLibrary *)self->_library messagesForMailbox:mailboxUid olderThanNumberOfDays:v4];
  v9 = [v8 count];
  if (v9)
  {
    [(MFMessageLibrary *)self->_library compactMessages:v8];
  }

  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = v9;
    v13 = 2112;
    v14 = mailboxUid;
    v15 = 2048;
    v16 = CFAbsoluteTimeGetCurrent() - Current;
    _os_log_debug_impl(&dword_258BDA000, v10, OS_LOG_TYPE_DEBUG, "[LogMessageDeletionTimes] Searching for and deleting %lu messages in %@ took: %fs", &v11, 0x20u);
  }
}

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  library = self->_library;
  uRLString = [(MFLibraryStore *)self URLString];

  [(MFMessageLibrary *)library setFlagsFromDictionary:dictionary forMessagesInMailboxURLString:uRLString];
}

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set
{
  if ([(MFLibraryStore *)self allowsAppend])
  {
    LOWORD(v16) = 1;
    v13 = [(MFMessageLibrary *)self->_library addMessages:messages withMailbox:[(MFMailMessageStore *)self mailboxUid] fetchBodies:1 newMessagesByOldMessage:0 remoteIDs:0 setFlags:0 clearFlags:0 messageFlagsForMessages:set copyFiles:v16 addPOPUIDs:0 dataSectionsByMessage:?];
    v14 = [v13 count];
    if (v14)
    {
      [ds addObjectsFromArray:{objc_msgSend(v13, "arrayByApplyingSelector:", sel_messageID)}];
      [newMessages addObjectsFromArray:v13];
      [(MFMailMessageStore *)self updateMessages:v13 updateNumberOfAttachments:0];
    }

    if (v14 == [messages count])
    {
      return 1;
    }
  }

  [ones addObjectsFromArray:messages];
  return 0;
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
  if ([(MFLibraryStore *)self canCompact])
  {
    uRLString = [(MFLibraryStore *)self URLString];
    if (uRLString)
    {
      if (self->super._deletedMessageCount)
      {
        v4 = uRLString;
        library = self->_library;

        [(MFMessageLibrary *)library compactMailbox:v4];
      }
    }
  }
}

- (void)compactMessages:(id)messages
{
  if ([messages count])
  {
    library = self->_library;

    [(MFMessageLibrary *)library compactMessages:messages];
  }
}

- (id)criterion
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid criterion];
}

- (id)URLString
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid URLString];
}

+ (BOOL)createEmptyStoreForPath:(id)path
{
  v4 = [path hasPrefix:@"/"];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];

    LOBYTE(v4) = [defaultManager mf_makeCompletePath:path mode:448];
  }

  return v4;
}

+ (BOOL)storeAtPathIsWritable:(id)writable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];

  return [defaultManager mf_canWriteToDirectoryAtPath:writable];
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid serverUnreadOnlyOnServerCount];
}

- (unint64_t)unreadCount
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid unreadCount];
}

- (unint64_t)unreadCountMatchingCriterion:(id)criterion
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid unreadCountMatchingCriterion:criterion];
}

- (id)newObjectCache
{
  v2 = [objc_alloc(MEMORY[0x277D24F48]) initWithCapacity:32];
  v3 = objc_opt_class();
  [v2 setKeyGenerator:&__block_literal_global_73];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MFLibraryStore_newObjectCache__block_invoke_2;
  v5[3] = &unk_2798B66B8;
  v5[4] = v3;
  [v2 setComparator:v5];
  return v2;
}

uint64_t __32__MFLibraryStore_newObjectCache__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = *MEMORY[0x277D24FF0];
  v6 = *(a2 + v5);
  if (v6 == 1 && *(a3 + v5) != 1)
  {
    return -1;
  }

  v7 = *MEMORY[0x277D24FF8];
  v8 = *(a2 + v7);
  if (v8 == 1 && *(a3 + v7) != 1)
  {
    return -1;
  }

  if (v6 & 1) == 0 && (*(a3 + v5))
  {
    return 1;
  }

  result = 0;
  if (v8 & 1) == 0 && (*(a3 + v7))
  {
    return 1;
  }

  return result;
}

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  if ([message isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedHeadersForMessage:message valueIfNotPresent:present];
  }

  return present;
}

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  if ([message isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedHeaderDataForMessage:message valueIfNotPresent:present];
  }

  return present;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  if ([message isLibraryMessage])
  {
    v8.receiver = self;
    v8.super_class = MFLibraryStore;
    return [(MFLibraryStore *)&v8 _cachedBodyDataContainerForMessage:message valueIfNotPresent:present];
  }

  return present;
}

- (void)purgeMessagesBeyondLimit:(unint64_t)limit keepingMessage:(id)message
{
  v7 = -[MFMessageLibrary nonDeletedCountForMailbox:](self->_library, "nonDeletedCountForMailbox:", [-[MFMailMessageStore mailboxUid](self "mailboxUid")]);
  if (v7 > limit)
  {
    if (message)
    {
      v8 = 144;
    }

    else
    {
      v8 = 128;
    }

    v9 = [(MFLibraryStore *)self copyOfMessagesInRange:limit options:v7 - limit, v8];
    if (message)
    {
      v12 = v9;
      v10 = [v9 indexOfObject:message];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v12;
      }

      else
      {
        v11 = [v12 subarrayWithRange:{v10 + 1, objc_msgSend(v12, "count") - (v10 + 1)}];

        v9 = v11;
      }
    }

    v13 = v9;
    if ([v9 count])
    {
      [(MFLibraryStore *)self purgeMessages:v13];
    }
  }
}

- (BOOL)hasMessageForAccount:(id)account
{
  v5 = -[MFMessageLibrary nonDeletedCountForMailbox:](self->_library, "nonDeletedCountForMailbox:", [-[MFMailMessageStore mailboxUid](self "mailboxUid")]);
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = MFLibraryStore;
    LOBYTE(v5) = [(MFMailMessageStore *)&v7 hasMessageForAccount:account];
  }

  return v5;
}

- (void)_queueMessagesAdded:(id)added
{
  v4 = 0;
  [-[MFLibraryStore pep_getInvocation:](self pep_getInvocation:{&v4), "handleMessagesAdded:earliestReceivedDate:", added, self->_earliestReceivedDate}];
  [v4 retainArguments];
  [(MFLibraryStore *)self _addInvocationToQueue:v4];
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
  v6.receiver = self;
  v6.super_class = MFLibraryStore;
  return [(MFLibraryStore *)&v6 hasCompleteDataForMimePart:?]|| [(MFMessageLibrary *)self->_library hasCompleteDataForMimePart:part];
}

@end