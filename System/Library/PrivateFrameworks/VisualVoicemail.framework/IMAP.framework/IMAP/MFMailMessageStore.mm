@interface MFMailMessageStore
+ (BOOL)createEmptyStoreForPath:(id)path;
+ (BOOL)createEmptyStoreIfNeededForPath:(id)path;
+ (BOOL)storeAtPathIsWritable:(id)writable;
+ (id)copyMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read deleteOriginals:(BOOL)originals isDeletion:(BOOL)deletion;
- (BOOL)_updateFlagForMessage:(id)message key:(id)key value:(BOOL)value;
- (BOOL)hasCachedDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)setPreferredEncoding:(unsigned int)encoding forMessage:(id)message;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)message;
- (BOOL)shouldGrowFetchWindow;
- (BOOL)shouldSetSummaryForMessage:(id)message;
- (BOOL)supportsArchiving;
- (MFMailMessageStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only;
- (id)_fetchHeaderDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary;
- (id)_setOrGetBody:(id)body forMessage:(id)message updateFlags:(BOOL)flags;
- (id)displayName;
- (id)finishRoutingMessages:(id)messages routed:(id)routed;
- (id)headerDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary;
- (id)lastViewedMessageDate;
- (id)lastViewedMessageWithOptions:(unsigned int)options;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (id)storeSearchResultMatchingCriterion:(id)criterion limit:(unsigned int)limit offset:(id)offset error:(id *)error;
- (id)storeSearchResultMatchingSearchText:(id)text criterion:(id)criterion limit:(unsigned int)limit offset:(id)offset error:(id *)error;
- (int)archiveDestination;
- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set;
- (void)_flushAllMessageData;
- (void)_setFlagsForMessages:(id)messages;
- (void)allMessageFlagsDidChange:(id)change;
- (void)cancelOpen;
- (void)dealloc;
- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash;
- (void)didOpen;
- (void)messageFlagsDidChange:(id)change flags:(id)flags;
- (void)messagesWereAdded:(id)added;
- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date;
- (void)messagesWereCompacted:(id)compacted;
- (void)messagesWillBeCompacted:(id)compacted;
- (void)openAsynchronously;
- (void)setFlag:(id)flag state:(BOOL)state forMessages:(id)messages;
- (void)setFlagForAllMessages:(id)messages state:(BOOL)state;
- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary;
- (void)setNumberOfAttachments:(unsigned int)attachments isSigned:(BOOL)signed isEncrypted:(BOOL)encrypted forMessage:(id)message;
- (void)structureDidChange;
- (void)undeleteMessages:(id)messages;
- (void)updateMessages:(id)messages updateNumberOfAttachments:(BOOL)attachments;
@end

@implementation MFMailMessageStore

+ (BOOL)createEmptyStoreIfNeededForPath:(id)path
{
  pathCopy = path;
  v8 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v8])
  {
    v6 = v8;
  }

  else
  {
    v6 = [self createEmptyStoreForPath:pathCopy];
  }

  return v6 & 1;
}

+ (BOOL)createEmptyStoreForPath:(id)path
{
  pathCopy = path;
  [self doesNotRecognizeSelector:a2];
  __assert_rtn("+[MFMailMessageStore createEmptyStoreForPath:]", "MailMessageStore.m", 164, "0");
}

+ (BOOL)storeAtPathIsWritable:(id)writable
{
  writableCopy = writable;
  [self doesNotRecognizeSelector:a2];
  __assert_rtn("+[MFMailMessageStore storeAtPathIsWritable:]", "MailMessageStore.m", 172, "0");
}

- (MFMailMessageStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  uidCopy = uid;
  v16.receiver = self;
  v16.super_class = MFMailMessageStore;
  v8 = [(MFMailMessageStore *)&v16 init];
  if (!v8)
  {
LABEL_8:
    v12 = v8;
    goto LABEL_9;
  }

  fullPath = [uidCopy fullPath];
  account = [uidCopy account];
  if ([objc_opt_class() createEmptyStoreIfNeededForPath:fullPath])
  {
    if (only)
    {
      v11 = 1;
    }

    else
    {
      v11 = [objc_opt_class() storeAtPathIsWritable:fullPath] ^ 1;
    }

    v8->_flags = (*&v8->_flags & 0xFFFFFFFE | v11);
    account = v8->_account;
    v8->_account = account;
    v14 = account;

    objc_storeStrong(&v8->_mailboxUid, uid);
    *&v8->_flags |= 0x100u;

    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v2 dealloc];
}

- (void)openAsynchronously
{
  _MFLockGlobalLock();
  if ((self->_state | 4) == 4)
  {
    self->_state = 1;
    if (!openAsynchronously__openMailboxesQueue)
    {
      v3 = [[MFInvocationQueue alloc] initWithDomain:"proc.open"];
      v4 = openAsynchronously__openMailboxesQueue;
      openAsynchronously__openMailboxesQueue = v3;

      [openAsynchronously__openMailboxesQueue setMaxThreadCount:3];
    }

    _MFUnlockGlobalLock();
    v7 = [MFMonitoredInvocation invocationWithSelector:sel_openSynchronously target:self taskName:0 priority:10 canBeCancelled:1];
    [openAsynchronously__openMailboxesQueue addInvocation:v7];
    [(MFMailMessageStore *)self mf_lock];
    monitor = [v7 monitor];
    openMonitor = self->_openMonitor;
    self->_openMonitor = monitor;

    [(MFMailMessageStore *)self mf_unlock];
  }

  else
  {

    _MFUnlockGlobalLock();
  }
}

- (void)didOpen
{
  [(MFMailMessageStore *)self mf_lock];
  openMonitor = self->_openMonitor;
  self->_openMonitor = 0;

  [(MFMailMessageStore *)self mf_unlock];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreDidOpen" object:self userInfo:0];
}

- (void)cancelOpen
{
  [(MFMailMessageStore *)self mf_lock];
  [(MFActivityMonitor *)self->_openMonitor cancel];

  [(MFMailMessageStore *)self mf_unlock];
}

- (id)displayName
{
  account = [(MFMailMessageStore *)self account];
  displayName = [account displayName];
  accountRelativePath = [(MFMailboxUid *)self->_mailboxUid accountRelativePath];
  if (displayName && ![displayName isEqualToString:&stru_288159858] || (objc_msgSend(account, "hostname"), v6 = objc_claimAutoreleasedReturnValue(), displayName, (displayName = v6) != 0))
  {
    if (([displayName isEqualToString:&stru_288159858] & 1) == 0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ --- %@", accountRelativePath, displayName];

      accountRelativePath = v7;
    }
  }

  return accountRelativePath;
}

- (void)messageFlagsDidChange:(id)change flags:(id)flags
{
  if (change)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"messages", flags, @"flags", 0}];
  }

  else
  {
    v6 = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v6];
}

- (void)allMessageFlagsDidChange:(id)change
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"flags";
  v9[0] = change;
  v4 = MEMORY[0x277CBEAC0];
  changeCopy = change;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v6];
}

- (void)structureDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MailMessageStoreStructureChanged" object:self];
}

- (void)messagesWereAdded:(id)added
{
  v4 = MEMORY[0x277CBEAA8];
  addedCopy = added;
  distantPast = [v4 distantPast];
  [(MFMailMessageStore *)self messagesWereAdded:addedCopy earliestReceivedDate:distantPast];
}

- (void)messagesWereCompacted:(id)compacted
{
  v8[1] = *MEMORY[0x277D85DE8];
  compactedCopy = compacted;
  if ([compactedCopy count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"messages";
    v8[0] = compactedCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:v6];
  }
}

- (void)messagesWillBeCompacted:(id)compacted
{
  v8[1] = *MEMORY[0x277D85DE8];
  compactedCopy = compacted;
  if ([compactedCopy count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = @"messages";
    v8[0] = compactedCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:v6];
  }
}

- (BOOL)shouldGrowFetchWindow
{
  hasMoreFetchableMessages = [(MFMailMessageStore *)self hasMoreFetchableMessages];
  if (hasMoreFetchableMessages)
  {
    serverMessageCount = [(MFMailMessageStore *)self serverMessageCount];
    LOBYTE(hasMoreFetchableMessages) = serverMessageCount > [(MFMailMessageStore *)self fetchWindow];
  }

  return hasMoreFetchableMessages;
}

- (BOOL)hasMessageForAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  account = [(MFMailMessageStore *)self account];

  if (account == accountCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [MailAccount accountThatMessageIsFrom:*(*(&v12 + 1) + 8 * i), v12];

          if (v10 == accountCopy)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v7;
}

- (id)storeSearchResultMatchingCriterion:(id)criterion limit:(unsigned int)limit offset:(id)offset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 0;
}

- (id)storeSearchResultMatchingSearchText:(id)text criterion:(id)criterion limit:(unsigned int)limit offset:(id)offset error:(id *)error
{
  if (criterion)
  {
    v8 = [(MFMailMessageStore *)self storeSearchResultMatchingCriterion:criterion limit:*&limit offset:offset error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)finishRoutingMessages:(id)messages routed:(id)routed
{
  routedCopy = routed;
  v7 = [messages mutableCopy];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [v7 objectAtIndex:v9];
      if (([v10 messageFlags] & 2) != 0)
      {
        [v7 removeObjectAtIndex:v9];
      }

      --v9;
    }

    while (v9 != -1);
  }

  if ([v7 count])
  {
    _defaultRouterDestination = [(MFMailMessageStore *)self _defaultRouterDestination];
    if (!_defaultRouterDestination)
    {
      goto LABEL_20;
    }

    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    v13 = [_defaultRouterDestination isEqual:mailboxUid];

    if (v13)
    {
      goto LABEL_20;
    }

    account = [_defaultRouterDestination account];
    v15 = [account storeForMailboxUid:_defaultRouterDestination];
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v15)
    {
LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    [v15 appendMessages:v7 unsuccessfulOnes:v16];
    v17 = [v7 count];
    if (routedCopy)
    {
      v18 = [routedCopy mutableCopy];

      routedCopy = v18;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      routedCopy = [MEMORY[0x277CBEB18] array];
      if (!v17)
      {
LABEL_18:
        [(MFMailMessageStore *)self deleteMessages:v7 moveToTrash:0];
        goto LABEL_19;
      }
    }

    v19 = v17 - 1;
    do
    {
      v20 = [v7 objectAtIndex:v19];
      if ([v16 indexOfObjectIdenticalTo:v20] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [routedCopy addObject:v20];
      }

      --v19;
    }

    while (v19 != -1);
    goto LABEL_18;
  }

LABEL_21:

  return routedCopy;
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  v32[2] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v7 = MEMORY[0x277CBEC38];
  v31[0] = @"MessageIsDeleted";
  v31[1] = @"MessageIsRead";
  v32[0] = MEMORY[0x277CBEC38];
  v32[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  if (trashCopy)
  {
    account = self->_account;
    v10 = [(MailAccount *)account mailboxUidOfType:3 createIfNeeded:1];
    v11 = [(MailAccount *)account storeForMailboxUid:v10];

    if (v11)
    {
      v29 = @"MessageIsRead";
      v30 = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v13 = [(MFMailMessageStore *)self setFlagsFromDictionary:v12 forMessages:messagesCopy];

      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v11 mf_lock];
      [v11 appendMessages:messagesCopy unsuccessfulOnes:v14];
      [v11 mf_unlock];
      if ([v14 count])
      {
        v23 = v11;
        array = [MEMORY[0x277CBEB18] array];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = messagesCopy;
        v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v24 + 1) + 8 * i);
              if ([v14 indexOfObjectIdenticalTo:v21] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [array addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v18);
        }

        [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v14];
        messagesCopy = array;
        v11 = v23;
      }
    }
  }

  v22 = [(MFMailMessageStore *)self setFlagsFromDictionary:v8 forMessages:messagesCopy];
}

- (void)undeleteMessages:(id)messages
{
  v8[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = @"MessageIsDeleted";
    v8[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = [(MFMailMessageStore *)self setFlagsFromDictionary:v5 forMessages:messagesCopy];
  }
}

+ (id)copyMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read deleteOriginals:(BOOL)originals isDeletion:(BOOL)deletion
{
  v45[2] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  mailboxCopy = mailbox;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v44[0] = @"MessageIsDeleted";
  v44[1] = @"MessageIsRead";
  v45[0] = MEMORY[0x277CBEC38];
  v45[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  store = [mailboxCopy store];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = v18;
  if (store)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke;
    v29 = &unk_279E33D70;
    v30 = mailboxCopy;
    originalsCopy = originals;
    readCopy = read;
    v31 = v14;
    v32 = store;
    v33 = v16;
    deletionCopy = deletion;
    v34 = v19;
    [messagesCopy mf_enumerateByStoreUsingBlock:&v26];
  }

  else
  {
    [v18 addObjectsFromArray:messagesCopy];
  }

  v20 = [v19 count];
  [v13 addObjectsFromArray:v19];
  v21 = CFAbsoluteTimeGetCurrent();
  v22 = [messagesCopy count];
  v23 = getLogger(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v39 = v22;
    v40 = 2048;
    v41 = v21 - Current;
    v42 = 2048;
    v43 = (v21 - Current) / v22;
    _os_log_debug_impl(&dword_2720B1000, v23, OS_LOG_TYPE_DEBUG, "#D [LogMessageTransferTimes] Transferring %lu messages took %4.5f seconds (%4.5f s/msg).", buf, 0x20u);
  }

  v24 = [[MFMessageTransferResult alloc] initWithResultCode:v20 == 0 failedMessages:v13 transferedMessage:v14];

  return v24;
}

void __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v5 mailboxUid];
  v9 = [v8 representedAccount];

  if (!v9)
  {
    v9 = [v5 account];
  }

  v10 = [*(a1 + 32) representedAccount];
  v11 = [MailAccount canMoveMessagesFromAccount:v9 toAccount:v10];

  if (v11)
  {
    if (*(a1 + 72) != 1 || ([v5 mailboxUid], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "moveMessages:fromMailbox:toMailbox:markAsRead:", v6, v12, *(a1 + 32), *(a1 + 73)), v13 = objc_claimAutoreleasedReturnValue(), v12, v14 = objc_msgSend(v13, "resultCode"), v15 = *(a1 + 40), objc_msgSend(v13, "transferedMessages"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "addObjectsFromArray:", v16), v16, objc_msgSend(v13, "failedMessages"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addObjectsFromArray:", v17), v17, v13, v14 != 1))
    {
      if (![v7 count])
      {
        if (*(a1 + 73) == 1 && [v6 count])
        {
          v44 = @"MessageIsRead";
          v45[0] = MEMORY[0x277CBEC38];
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
          v19 = [v5 setFlagsFromDictionary:v18 forMessages:v6];
        }

        v36 = v5;
        v20 = [MEMORY[0x277CBEB18] array];
        v35 = [MEMORY[0x277CBEB18] array];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v6 = v6;
        v21 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v38;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v38 != v23)
              {
                objc_enumerationMutation(v6);
              }

              v25 = [*(*(&v37 + 1) + 8 * i) messageFlags];
              v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25 & 0xFFFFFFFFFFFFFFFDLL];
              [v20 addObject:v26];
            }

            v22 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
          }

          while (v22);
        }

        v27 = v35;
        if ([*(a1 + 48) appendMessages:v6 unsuccessfulOnes:v7 newMessageIDs:v35 newMessages:*(a1 + 40) flagsToSet:v20] != 1)
        {
          v28 = [v6 mutableCopy];

          [v28 removeObjectsInArray:v7];
          v6 = v28;
        }

        v5 = v36;
        if ([v6 count] && *(a1 + 72) == 1)
        {
          v29 = [v36 setFlagsFromDictionary:*(a1 + 56) forMessages:v6];
        }

        if ([v7 count])
        {
          if (*(a1 + 74) == 1 && ([v36 mailboxUid], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "shouldRestoreMessagesAfterFailedDelete"), v30, (v31 & 1) == 0))
          {
            v34 = [v36 setFlagsFromDictionary:*(a1 + 56) forMessages:v7];
          }

          else
          {
            v41 = @"MessageIsDeleted";
            v42 = MEMORY[0x277CBEC28];
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v33 = [v36 setFlagsFromDictionary:v32 forMessages:v7];
          }
        }
      }
    }
  }

  else
  {
    [v7 addObjectsFromArray:v6];
  }

  [*(a1 + 64) addObjectsFromArray:v7];
}

- (unint64_t)appendMessages:(id)messages unsuccessfulOnes:(id)ones newMessageIDs:(id)ds newMessages:(id)newMessages flagsToSet:(id)set
{
  onesCopy = ones;
  messagesCopy = messages;
  [onesCopy replaceObjectsInRange:0 withObjectsFromArray:{objc_msgSend(onesCopy, "count"), messagesCopy}];

  return 0;
}

- (id)lastViewedMessageWithOptions:(unsigned int)options
{
  v3 = *&options;
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  lastViewedMessageID = [mailboxUid lastViewedMessageID];
  v7 = [(MFMailMessageStore *)self messageForMessageID:lastViewedMessageID options:v3];

  return v7;
}

- (id)lastViewedMessageDate
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  lastViewedMessageDate = [mailboxUid lastViewedMessageDate];

  return lastViewedMessageDate;
}

- (id)headerDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  messageCopy = message;
  v7 = [(MFMailMessageStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:0];
  if (!v7)
  {
    v8 = [(MFMailMessageStore *)self _fetchHeaderDataForMessage:messageCopy downloadIfNecessary:necessaryCopy];
    if (v8)
    {
      v9 = v8;
      v7 = [(MFMailMessageStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasCachedDataForMimePart:(id)part
{
  mimeBody = [part mimeBody];
  message = [mimeBody message];
  isMessageContentsLocallyAvailable = [message isMessageContentsLocallyAvailable];

  return isMessageContentsLocallyAvailable;
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  messagesCopy = messages;
  v8 = [dictionaryCopy count];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  allKeys = [dictionaryCopy allKeys];
  if (*&self->_flags)
  {
    v19 = 0;
  }

  else
  {
    v21 = &v21;
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = [allKeys objectAtIndex:{i, v21}];
        v9[i] = [dictionaryCopy mf_BOOLForKey:v13];
      }
    }

    v23 = dictionaryCopy;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v22 = messagesCopy;
    v24 = messagesCopy;
    v26 = [v24 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v26)
    {
      v25 = *v28;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v24);
          }

          if (v8)
          {
            v15 = 0;
            v16 = *(*(&v27 + 1) + 8 * j);
            do
            {
              v17 = [allKeys objectAtIndex:{v15, v21}];
              v18 = [(MFMailMessageStore *)self _updateFlagForMessage:v16 key:v17 value:v9[v15]];

              if (v18)
              {
                [v10 vf_addObjectIfAbsent:v16];
              }

              ++v15;
            }

            while (v8 != v15);
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v26);
    }

    v19 = v10;
    dictionaryCopy = v23;
    messagesCopy = v22;
  }

  return v19;
}

- (void)setFlag:(id)flag state:(BOOL)state forMessages:(id)messages
{
  stateCopy = state;
  v15[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  flagCopy = flag;
  v9 = MEMORY[0x277CCABB0];
  flagCopy2 = flag;
  v11 = [v9 numberWithBool:stateCopy];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&flagCopy count:1];

  v13 = [(MFMailMessageStore *)self setFlagsFromDictionary:v12 forMessages:messagesCopy];
}

- (void)setFlagForAllMessages:(id)messages state:(BOOL)state
{
  stateCopy = state;
  v10[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  messagesCopy2 = messages;
  v7 = asNSStringBOOL(stateCopy);
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&messagesCopy count:1];

  [(MFMailMessageStore *)self setFlagsForAllMessagesFromDictionary:v8];
}

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
  v5 = [(MFMailMessageStore *)self setFlagsFromDictionary:dictionaryCopy forMessages:v4];
}

- (void)setNumberOfAttachments:(unsigned int)attachments isSigned:(BOOL)signed isEncrypted:(BOOL)encrypted forMessage:(id)message
{
  encryptedCopy = encrypted;
  signedCopy = signed;
  v8 = *&attachments;
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v13 setNumberOfAttachments:v8 isSigned:signedCopy isEncrypted:encryptedCopy forMessage:messageCopy];
  messageFlags = [messageCopy messageFlags];
  v12 = _MFFlagsBySettingNumberOfAttachments(messageFlags, v8, signedCopy, encryptedCopy);
  if (v12 != messageFlags)
  {
    [messageCopy setMessageFlags:v12];
  }
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  v5 = [MFActivityMonitor currentMonitor:messages];
  [v5 reset];

  return 0;
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = getLogger(dCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    *buf = 138412290;
    *v48 = mailboxUid;
    _os_log_impl(&dword_2720B1000, v6, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] begin [mailbox:%@]", buf, 0xCu);
  }

  v8 = +[MFActivityMonitor currentMonitor];
  mailboxUid2 = [(MFMailMessageStore *)self mailboxUid];
  [v8 setMailbox:mailboxUid2];

  v10 = +[MFActivityMonitor currentMonitor];
  [v10 addReason:@"MonitoredActivityReasonFetching"];

  v11 = MEMORY[0x277CCACA8];
  mailboxUid3 = [(MFMailMessageStore *)self mailboxUid];
  uRLString = [mailboxUid3 URLString];
  v14 = [v11 stringWithFormat:@"%@", uRLString];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%lu|%@|%d", v14, lastFetchCount, dCopy, (options >> 1) & 1];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  account = [(MFMailMessageStore *)self account];
  v46 = v16;
  v18 = [account willPerformActionForChokePoint:v14 coalescePoint:v15 result:&v46];
  v19 = v46;

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  if (v21 == 1)
  {
    do
    {
      account2 = [(MFMailMessageStore *)self account];
      v45 = 0;
      LOBYTE(v18) = [account2 willPerformActionForChokePoint:v14 coalescePoint:v15 result:&v45];
      v19 = v45;

      if (v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = v18;
      }
    }

    while ((v23 & 1) != 0);
  }

  if ((v18 & 1) == 0)
  {
    account3 = [(MFMailMessageStore *)self account];
    v41 = account3;
    if (account3)
    {
      v40 = [account3 powerAssertionIdentifierWithPrefix:@"com.apple.message.fetchMobileSynchronously"];
    }

    else
    {
      v40 = @"com.apple.message.fetchMobileSynchronously";
    }

    v25 = +[MFPowerController sharedInstance];
    [v25 retainAssertionWithIdentifier:v40 withAccount:v41];

    [(MFMailMessageStore *)self mf_lock];
    if (lastFetchCount)
    {
      self->_lastFetchCount = lastFetchCount;
    }

    else
    {
      lastFetchCount = self->_lastFetchCount;
    }

    [(MFMailMessageStore *)self mf_unlock];
    v26 = 2;
    while (1)
    {
      v27 = [(MFMailMessageStore *)self fetchNumMessages:lastFetchCount preservingUID:dCopy options:options];
      v28 = getLogger(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v48[0] = v26;
        LOWORD(v48[1]) = 2048;
        *(&v48[1] + 2) = v27;
        _os_log_impl(&dword_2720B1000, v28, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] fetchNumMessages completed [tries %d, result %ld]", buf, 0x12u);
      }

      if (v27 < 0)
      {
        v29 = +[MFActivityMonitor currentMonitor];
        error = [v29 error];
        v31 = [v41 shouldFetchAgainWithError:error foregroundRequest:(options >> 4) & 1];

        if (!v31)
        {
          break;
        }
      }

      v32 = [MEMORY[0x277CCABB0] numberWithInteger:v27];

      v34 = v26-- != 0 && v27 < 0;
      v19 = v32;
      if (!v34)
      {
        v19 = v32;
        break;
      }
    }

    account4 = [(MFMailMessageStore *)self account];
    [account4 didFinishActionForChokePoint:v14 coalescePoint:v15 withResult:v19];

    v36 = +[MFPowerController sharedInstance];
    [v36 releaseAssertionWithIdentifier:v40];
  }

  v37 = getLogger(v20);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v48 = v19;
    _os_log_impl(&dword_2720B1000, v37, OS_LOG_TYPE_DEFAULT, "#I [fetchMobileSynchronously] completed [%@ messages]", buf, 0xCu);
  }

  integerValue = [v19 integerValue];
  return integerValue;
}

- (BOOL)setPreferredEncoding:(unsigned int)encoding forMessage:(id)message
{
  v4 = *&encoding;
  v14[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  preferredEncoding = [messageCopy preferredEncoding];
  if (preferredEncoding != v4)
  {
    [messageCopy setPreferredEncoding:v4];
    headers = [messageCopy headers];
    v9 = headers;
    if (headers)
    {
      [headers setPreferredEncoding:v4];
      v10 = [v9 firstHeaderForKey:*MEMORY[0x277D07030]];
      v11 = [MEMORY[0x277D070D0] subjectWithString:v10];
      [messageCopy setSubject:v11];
    }

    v14[0] = messageCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(MFMailMessageStore *)self messageFlagsDidChange:v12 flags:0];
  }

  return preferredEncoding != v4;
}

- (void)_flushAllMessageData
{
  [(MFMailMessageStore *)self mf_lock];
  self->_deletedMessageCount = 0;
  self->_deletedMessagesSize = 0;
  self->_unreadMessageCount = 0;
  _MFLockGlobalLock();
  _MFUnlockGlobalLock();
  [(MFMailMessageStore *)self mf_unlock];
  v3.receiver = self;
  v3.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v3 _flushAllMessageData];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)message
{
  messageCopy = message;
  summary = [messageCopy summary];
  if (summary)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [messageCopy isMessageContentsLocallyAvailable] ^ 1;
  }

  return v5;
}

- (BOOL)shouldSetSummaryForMessage:(id)message
{
  summary = [message summary];
  v4 = summary == 0;

  return v4;
}

- (BOOL)shouldDeleteInPlace
{
  account = [(MFMailMessageStore *)self account];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v5 = [account deleteInPlaceForMailbox:mailboxUid];

  return v5;
}

- (BOOL)supportsArchiving
{
  account = [(MFMailMessageStore *)self account];
  if ([account supportsArchiving])
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    v5 = [account preventArchiveForMailbox:mailboxUid] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldArchive
{
  account = [(MFMailMessageStore *)self account];
  if ([account shouldArchiveByDefault])
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];
    v5 = [account canArchiveForMailbox:mailboxUid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)archiveDestination
{
  account = [(MFMailMessageStore *)self account];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];
  v5 = [account archiveDestinationForMailbox:mailboxUid];

  return v5;
}

- (id)_fetchHeaderDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  messageCopy = message;
  [(MFMailMessageStore *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMailMessageStore _fetchHeaderDataForMessage:downloadIfNecessary:]", "MailMessageStore.m", 1113, "0");
}

- (id)_setOrGetBody:(id)body forMessage:(id)message updateFlags:(BOOL)flags
{
  flagsCopy = flags;
  bodyCopy = body;
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MFMailMessageStore;
  v10 = [(MFMailMessageStore *)&v13 _setOrGetBody:bodyCopy forMessage:messageCopy updateFlags:flagsCopy];
  v11 = v10 != bodyCopy || !flagsCopy;
  if (!v11 && ([messageCopy messageFlags] & 2) == 0)
  {
    [messageCopy calculateAttachmentInfoFromBody:bodyCopy];
  }

  return v10;
}

- (void)_setFlagsForMessages:(id)messages
{
  messagesCopy = messages;
  keyEnumerator = [messagesCopy keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      v6 = [messagesCopy objectForKey:v5];
      v7 = [v6 objectForKey:@"messageFlags"];
      if (v7)
      {
        v8 = [v6 objectForKey:@"messageFlagsMask"];
        v9 = v8;
        unsignedIntValue = 0x1BFDDF7FFFFLL;
        if (v8)
        {
          unsignedIntValue = [v8 unsignedIntValue];
        }

        unsignedIntValue2 = [v7 unsignedIntValue];
        v12 = v5;
        v13 = v12;
        if (unsignedIntValue)
        {
          messageFlags = [v12 messageFlags];
          v15 = unsignedIntValue == 0x1BFDDF7FFFFLL ? unsignedIntValue2 : messageFlags & ~unsignedIntValue | unsignedIntValue & unsignedIntValue2;
          if (v15 != messageFlags)
          {
            [v13 setMessageFlags:?];
          }
        }
      }

      nextObject2 = [keyEnumerator nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)updateMessages:(id)messages updateNumberOfAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  messagesCopy = messages;
  if (attachmentsCopy)
  {
    v13 = messagesCopy;
    copyOfAllMessages = messagesCopy;
    if (!copyOfAllMessages)
    {
      copyOfAllMessages = [(MFMailMessageStore *)self copyOfAllMessages];
    }

    v8 = [copyOfAllMessages count] - 1;
    do
    {
      if (v8 == -1)
      {
        break;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = [copyOfAllMessages objectAtIndex:v8];
      [v10 calculateAttachmentInfoFromBody:0];
      v11 = +[MFActivityMonitor currentMonitor];
      shouldCancel = [v11 shouldCancel];

      objc_autoreleasePoolPop(v9);
      --v8;
    }

    while (!shouldCancel);

    messagesCopy = v13;
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
  addedCopy = added;
  dateCopy = date;
  generationNumber = self->_generationNumber;
  if (generationNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    v8 = generationNumber + 1;
  }

  self->_generationNumber = v8;
  if ([addedCopy count])
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{addedCopy, @"messages", dateCopy, @"previous earliest received date", 0}];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v9];
  }
}

- (BOOL)_updateFlagForMessage:(id)message key:(id)key value:(BOOL)value
{
  valueCopy = value;
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  keyCopy = key;
  messageFlags = [messageCopy messageFlags];
  v11 = [keyCopy isEqual:@"MessageIsRead"];
  if (v11)
  {
    if ((messageFlags & 1) != valueCopy)
    {
      unreadMessageCount = self->_unreadMessageCount;
      v13 = valueCopy ? unreadMessageCount - 1 : unreadMessageCount + 1;
      self->_unreadMessageCount = v13;
      if (v13 >> 31)
      {
        self->_unreadMessageCount = 0;
        v14 = getLogger(v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          mailboxUid = [(MFMailMessageStore *)self mailboxUid];
          v21 = 136315394;
          mambaID = [mailboxUid mambaID];
          v23 = 2080;
          v24 = " ";
          _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s#UnreadCount _unreadMessageCount went negative", &v21, 0x16u);
        }
      }
    }
  }

  else
  {
    if ([keyCopy isEqual:@"MessageIsDeleted"])
    {
      v16 = ((messageFlags >> 1) & 1) == valueCopy;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      deletedMessageCount = self->_deletedMessageCount;
      if (valueCopy)
      {
        self->_deletedMessageCount = deletedMessageCount + 1;
        v18 = self->_deletedMessagesSize + [messageCopy messageSize];
      }

      else
      {
        self->_deletedMessageCount = deletedMessageCount - 1;
        v18 = self->_deletedMessagesSize - [messageCopy messageSize];
      }

      self->_deletedMessagesSize = v18;
    }
  }

  v19 = _MFFlagsBySettingValueForKey(messageFlags, keyCopy, valueCopy);
  if (v19 != messageFlags && [(MFMailMessageStore *)self _shouldChangeComponentMessageFlagsForMessage:messageCopy])
  {
    [messageCopy setMessageFlags:v19];
  }

  return v19 != messageFlags;
}

@end