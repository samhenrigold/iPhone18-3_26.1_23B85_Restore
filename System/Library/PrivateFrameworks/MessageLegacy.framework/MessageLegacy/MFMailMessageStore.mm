@interface MFMailMessageStore
+ (BOOL)createEmptyStoreIfNeededForPath:(id)path;
+ (id)copyMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read deleteOriginals:(BOOL)originals isDeletion:(BOOL)deletion;
- (BOOL)_updateFlagForMessage:(id)message key:(id)key value:(BOOL)value;
- (BOOL)hasCachedDataForMimePart:(id)part;
- (BOOL)hasMessageForAccount:(id)account;
- (BOOL)setPreferredEncoding:(unsigned int)encoding forMessage:(id)message;
- (BOOL)shouldArchive;
- (BOOL)shouldDeleteInPlace;
- (BOOL)shouldDownloadBodyDataForMessage:(id)message;
- (BOOL)shouldGrowFetchWindow;
- (BOOL)supportsArchiving;
- (MFMailMessageStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only;
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
  v7 = 0;
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    v5 = v7;
  }

  else
  {
    v5 = [self createEmptyStoreForPath:path];
  }

  return v5 & 1;
}

- (MFMailMessageStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  v12.receiver = self;
  v12.super_class = MFMailMessageStore;
  v6 = [(MFMailMessageStore *)&v12 init];
  if (v6)
  {
    fullPath = [uid fullPath];
    account = [uid account];
    if ([objc_opt_class() createEmptyStoreIfNeededForPath:fullPath])
    {
      if (only)
      {
        v9 = 1;
      }

      else
      {
        v9 = [objc_opt_class() storeAtPathIsWritable:fullPath] ^ 1;
      }

      v6->_flags = (*&v6->_flags & 0xFFFFFFFE | v9);
      v6->_account = account;
      v6->_mailboxUid = uid;
      *&v6->_flags |= 0x100u;
      v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:100];
      *(&v6->super.super.isa + *MEMORY[0x277D25038]) = v10;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = self->_openMonitor;
  v4.receiver = self;
  v4.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v4 dealloc];
}

- (void)openAsynchronously
{
  _MFLockGlobalLock();
  if ((self->_state | 4) == 4)
  {
    self->_state = 1;
    if (!openAsynchronously__openMailboxesQueue)
    {
      openAsynchronously__openMailboxesQueue = objc_alloc_init(MFInvocationQueue);
      [openAsynchronously__openMailboxesQueue setMaxThreadCount:3];
    }

    _MFUnlockGlobalLock();
    v3 = [MFMonitoredInvocation invocationWithSelector:sel_openSynchronously target:self taskName:0 priority:10 canBeCancelled:1];
    [openAsynchronously__openMailboxesQueue addInvocation:v3];
    [(MFMailMessageStore *)self mf_lock];

    self->_openMonitor = [(MFMonitoredInvocation *)v3 monitor];

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
  if ((displayName && ![displayName isEqualToString:&stru_2869ED3E0] || (displayName = objc_msgSend(account, "hostname")) != 0) && (objc_msgSend(displayName, "isEqualToString:", &stru_2869ED3E0) & 1) == 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"MAILBOX_DISPLAY_FORMAT", @"%@ --- %@", 0), accountRelativePath, displayName];
  }

  else
  {
    return accountRelativePath;
  }
}

- (void)messageFlagsDidChange:(id)change flags:(id)flags
{
  if (change)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"messages", flags, @"flags", 0}];
  }

  else
  {
    v5 = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"MailMessageStoreMessageFlagsChanged" object:self userInfo:v5];
}

- (void)allMessageFlagsDidChange:(id)change
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"flags";
  v6[0] = change;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)structureDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"MailMessageStoreStructureChanged" object:self];
}

- (void)messagesWereAdded:(id)added
{
  distantPast = [MEMORY[0x277CBEAA8] distantPast];

  [(MFMailMessageStore *)self messagesWereAdded:added earliestReceivedDate:distantPast];
}

- (void)messagesWereCompacted:(id)compacted
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([compacted count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = @"messages";
    v7[0] = compacted;
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesRemoved" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  }
}

- (void)messagesWillBeCompacted:(id)compacted
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([compacted count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = @"messages";
    v7[0] = compacted;
    [defaultCenter postNotificationName:@"MailMessageStoreMessagesWillBeCompacted" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
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
  if ([(MFMailMessageStore *)self account]== account)
  {
    return 1;
  }

  v5 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([MailAccount accountThatMessageIsFrom:*(*(&v12 + 1) + 8 * i)]== account)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
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
    return [(MFMailMessageStore *)self storeSearchResultMatchingCriterion:criterion limit:*&limit offset:offset error:error];
  }

  else
  {
    return 0;
  }
}

- (id)finishRoutingMessages:(id)messages routed:(id)routed
{
  v6 = [messages mutableCopy];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      if (([objc_msgSend(v6 objectAtIndex:{v8), "messageFlags"}] & 2) != 0)
      {
        [v6 removeObjectAtIndex:v8];
      }

      --v8;
    }

    while (v8 != -1);
  }

  if ([v6 count])
  {
    _defaultRouterDestination = [(MFMailMessageStore *)self _defaultRouterDestination];
    if (_defaultRouterDestination)
    {
      v10 = _defaultRouterDestination;
      if (([_defaultRouterDestination isEqual:{-[MFMailMessageStore mailboxUid](self, "mailboxUid")}] & 1) == 0)
      {
        v11 = [objc_msgSend(v10 "account")];
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v11)
        {
          [v11 appendMessages:v6 unsuccessfulOnes:v12];
          v13 = [v6 count];
          if (routed)
          {
            array = [routed mutableCopy];
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          routed = array;
          if (v13)
          {
            v15 = v13 - 1;
            do
            {
              v16 = [v6 objectAtIndex:v15];
              if ([v12 indexOfObjectIdenticalTo:v16] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [routed addObject:v16];
              }

              --v15;
            }

            while (v15 != -1);
          }

          [(MFMailMessageStore *)self deleteMessages:v6 moveToTrash:0];
        }
      }
    }
  }

  return routed;
}

- (void)deleteMessages:(id)messages moveToTrash:(BOOL)trash
{
  trashCopy = trash;
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEC38];
  v25[0] = @"MessageIsDeleted";
  v25[1] = @"MessageIsRead";
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  if (trashCopy)
  {
    v9 = [(MailAccount *)self->_account storeForMailboxUid:[(MailAccount *)self->_account mailboxUidOfType:3 createIfNeeded:1]];
    if (v9)
    {
      v10 = v9;
      v23 = @"MessageIsRead";
      v24 = v7;
      -[MFMailMessageStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1], messages);
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v10 mf_lock];
      [v10 appendMessages:messages unsuccessfulOnes:v11];
      [v10 mf_unlock];
      if ([v11 count])
      {
        array = [MEMORY[0x277CBEB18] array];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [messages countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(messages);
              }

              v17 = *(*(&v18 + 1) + 8 * i);
              if ([v11 indexOfObjectIdenticalTo:v17] == 0x7FFFFFFFFFFFFFFFLL)
              {
                [array addObject:v17];
              }
            }

            v14 = [messages countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v14);
        }

        [(MFMailMessageStore *)self setFlag:@"MessageIsDeleted" state:0 forMessages:v11];
        messages = array;
      }
    }
  }

  [(MFMailMessageStore *)self setFlagsFromDictionary:v8 forMessages:messages];
}

- (void)undeleteMessages:(id)messages
{
  v4[1] = *MEMORY[0x277D85DE8];
  if ((*&self->_flags & 1) == 0)
  {
    v3 = @"MessageIsDeleted";
    v4[0] = MEMORY[0x277CBEC28];
    -[MFMailMessageStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1], messages);
  }
}

+ (id)copyMessages:(id)messages toMailbox:(id)mailbox markAsRead:(BOOL)read deleteOriginals:(BOOL)originals isDeletion:(BOOL)deletion
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (messages)
  {
    if (mailbox)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MFMailMessageStore copyMessages:a2 toMailbox:self markAsRead:? deleteOriginals:? isDeletion:?];
    if (mailbox)
    {
      goto LABEL_3;
    }
  }

  [MFMailMessageStore copyMessages:a2 toMailbox:self markAsRead:? deleteOriginals:? isDeletion:?];
LABEL_3:
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  Current = CFAbsoluteTimeGetCurrent();
  v37[0] = @"MessageIsDeleted";
  v37[1] = @"MessageIsRead";
  v38[0] = MEMORY[0x277CBEC38];
  v38[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  store = [mailbox store];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = v19;
  if (store)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke;
    v27[3] = &unk_2798B69E8;
    originalsCopy = originals;
    readCopy = read;
    v27[4] = mailbox;
    v27[5] = v15;
    v27[6] = store;
    v27[7] = v17;
    deletionCopy = deletion;
    v27[8] = v19;
    [messages mf_enumerateByStoreUsingBlock:v27];
  }

  else
  {
    [v19 addObjectsFromArray:messages];
  }

  v21 = [v20 count];
  [v14 addObjectsFromArray:v20];

  v22 = CFAbsoluteTimeGetCurrent();
  v23 = [messages count];
  v24 = MFLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v32 = v23;
    v33 = 2048;
    v34 = v22 - Current;
    v35 = 2048;
    v36 = (v22 - Current) / v23;
    _os_log_debug_impl(&dword_258BDA000, v24, OS_LOG_TYPE_DEBUG, "[LogMessageTransferTimes] Transferring %lu messages took %4.5f seconds (%4.5f s/msg).", buf, 0x20u);
  }

  v25 = [[MFMessageTransferResult alloc] initWithResultCode:v21 == 0 failedMessages:v14 transferedMessage:v15];

  return v25;
}

void __83__MFMailMessageStore_copyMessages_toMailbox_markAsRead_deleteOriginals_isDeletion___block_invoke(uint64_t a1, void *a2, id a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [objc_msgSend(a2 "mailboxUid")];
  if (!v7)
  {
    v7 = [a2 account];
  }

  if (+[MailAccount canMoveMessagesFromAccount:toAccount:](MailAccount, "canMoveMessagesFromAccount:toAccount:", v7, [*(a1 + 32) representedAccount]))
  {
    if (*(a1 + 72) != 1 || (v8 = [v7 moveMessages:a3 fromMailbox:objc_msgSend(a2 toMailbox:"mailboxUid") markAsRead:{*(a1 + 32), *(a1 + 73)}], v9 = objc_msgSend(v8, "resultCode"), objc_msgSend(*(a1 + 40), "addObjectsFromArray:", objc_msgSend(v8, "transferedMessages")), objc_msgSend(v6, "addObjectsFromArray:", objc_msgSend(v8, "failedMessages")), v9 != 1))
    {
      if (![v6 count])
      {
        if (*(a1 + 73) == 1 && [a3 count])
        {
          v25 = @"MessageIsRead";
          v26[0] = MEMORY[0x277CBEC38];
          [a2 setFlagsFromDictionary:objc_msgSend(MEMORY[0x277CBEAC0] forMessages:{"dictionaryWithObjects:forKeys:count:", v26, &v25, 1), a3}];
        }

        v10 = [MEMORY[0x277CBEB18] array];
        v11 = [MEMORY[0x277CBEB18] array];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(a3);
              }

              v16 = [*(*(&v18 + 1) + 8 * v15) messageFlags];
              [v10 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", v16 & 0xFFFFFFFFFFFFFFFDLL)}];
              ++v15;
            }

            while (v13 != v15);
            v13 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
          }

          while (v13);
        }

        if ([*(a1 + 48) appendMessages:a3 unsuccessfulOnes:v6 newMessageIDs:v11 newMessages:*(a1 + 40) flagsToSet:v10] != 1)
        {
          a3 = [a3 mutableCopy];
          [a3 removeObjectsInArray:v6];
        }

        if ([a3 count] && *(a1 + 72) == 1)
        {
          [a2 setFlagsFromDictionary:*(a1 + 56) forMessages:a3];
        }

        if ([v6 count])
        {
          if (*(a1 + 74) == 1 && ([objc_msgSend(a2 "mailboxUid")] & 1) == 0)
          {
            v17 = *(a1 + 56);
          }

          else
          {
            v22 = @"MessageIsDeleted";
            v23 = MEMORY[0x277CBEC28];
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          }

          [a2 setFlagsFromDictionary:v17 forMessages:v6];
        }
      }
    }
  }

  else
  {
    [v6 addObjectsFromArray:a3];
  }

  [*(a1 + 64) addObjectsFromArray:v6];
}

- (id)lastViewedMessageWithOptions:(unsigned int)options
{
  v3 = *&options;
  v5 = [-[MFMailMessageStore mailboxUid](self "mailboxUid")];

  return [(MFMailMessageStore *)self messageForMessageID:v5 options:v3];
}

- (id)lastViewedMessageDate
{
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [mailboxUid lastViewedMessageDate];
}

- (id)headerDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  result = [(MFMailMessageStore *)self _cachedHeaderDataForMessage:message valueIfNotPresent:0];
  if (!result)
  {
    result = [(MFMailMessageStore *)self _fetchHeaderDataForMessage:message downloadIfNecessary:necessaryCopy];
    if (result)
    {

      return [(MFMailMessageStore *)self _cachedHeaderDataForMessage:message valueIfNotPresent:result];
    }
  }

  return result;
}

- (BOOL)hasCachedDataForMimePart:(id)part
{
  v3 = [objc_msgSend(part "mimeBody")];

  return [v3 isMessageContentsLocallyAvailable];
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [dictionary count];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  messagesCopy = messages;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messages, "count")}];
  allKeys = [dictionary allKeys];
  if (*&self->_flags)
  {
    return 0;
  }

  v11 = allKeys;
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v8[i] = [dictionary mf_BOOLForKey:{objc_msgSend(v11, "objectAtIndex:", i)}];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v22 = 0u;
  v13 = [messagesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(messagesCopy);
        }

        if (v7)
        {
          v17 = 0;
          v18 = *(*(&v22 + 1) + 8 * j);
          do
          {
            if (-[MFMailMessageStore _updateFlagForMessage:key:value:](self, "_updateFlagForMessage:key:value:", v18, [v11 objectAtIndex:v17], v8[v17]))
            {
              [v9 ef_addObjectIfAbsent:v18];
            }

            ++v17;
          }

          while (v7 != v17);
        }
      }

      v14 = [messagesCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  return v9;
}

- (void)setFlag:(id)flag state:(BOOL)state forMessages:(id)messages
{
  v8[1] = *MEMORY[0x277D85DE8];
  flagCopy = flag;
  v8[0] = [MEMORY[0x277CCABB0] numberWithBool:state];
  -[MFMailMessageStore setFlagsFromDictionary:forMessages:](self, "setFlagsFromDictionary:forMessages:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&flagCopy count:1], messages);
}

- (void)setFlagForAllMessages:(id)messages state:(BOOL)state
{
  v6[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v6[0] = NSStringFromBOOL();
  -[MFMailMessageStore setFlagsForAllMessagesFromDictionary:](self, "setFlagsForAllMessagesFromDictionary:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&messagesCopy count:1]);
}

- (void)setFlagsForAllMessagesFromDictionary:(id)dictionary
{
  v5 = [(MFMailMessageStore *)self copyOfAllMessagesWithOptions:128];
  [(MFMailMessageStore *)self setFlagsFromDictionary:dictionary forMessages:v5];
}

- (void)setNumberOfAttachments:(unsigned int)attachments isSigned:(BOOL)signed isEncrypted:(BOOL)encrypted forMessage:(id)message
{
  encryptedCopy = encrypted;
  signedCopy = signed;
  v12.receiver = self;
  v12.super_class = MFMailMessageStore;
  [MFMailMessageStore setNumberOfAttachments:sel_setNumberOfAttachments_isSigned_isEncrypted_forMessage_ isSigned:? isEncrypted:? forMessage:?];
  messageFlags = [message messageFlags];
  v11 = _MFFlagsBySettingNumberOfAttachments(messageFlags, attachments, signedCopy, encryptedCopy);
  if (v11 != messageFlags)
  {
    [message setMessageFlags:v11];
  }
}

- (int64_t)fetchMobileSynchronously:(unint64_t)lastFetchCount preservingUID:(id)d options:(unint64_t)options
{
  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_msgSend(-[MFMailMessageStore mailboxUid](self, "mailboxUid"), "URLString")];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%lu|%@|%d", v9, lastFetchCount, d, (options >> 1) & 1];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v11 = [-[MFMailMessageStore account](self "account")];
  for (i = v21; v11 && !v21; i = v21)
  {
    v11 = [-[MFMailMessageStore account](self "account")];
  }

  if ((v11 & 1) == 0)
  {
    account = [(MFMailMessageStore *)self account];
    v14 = account;
    if (account)
    {
      v15 = [account powerAssertionIdentifierWithPrefix:@"com.apple.message.fetchMobileSynchronously"];
    }

    else
    {
      v15 = @"com.apple.message.fetchMobileSynchronously";
    }

    v20 = v15;
    [+[MFPowerController sharedInstance](MFPowerController retainAssertionWithIdentifier:"retainAssertionWithIdentifier:withAccount:" withAccount:v15, v14];
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
    v16 = -2;
    do
    {
      v17 = [(MFMailMessageStore *)self fetchNumMessages:lastFetchCount preservingUID:d options:options];
      if (v17 < 0 && ![v14 shouldFetchAgainWithError:objc_msgSend(+[MFActivityMonitor currentMonitor](MFActivityMonitor foregroundRequest:{"currentMonitor"), "error"), (options >> 4) & 1}])
      {
        break;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
      if (!v16)
      {
        break;
      }

      ++v16;
    }

    while (v17 < 0);
    account2 = [(MFMailMessageStore *)self account];
    [account2 didFinishActionForChokePoint:v9 coalescePoint:v10 withResult:v21];
    [+[MFPowerController sharedInstance](MFPowerController releaseAssertionWithIdentifier:"releaseAssertionWithIdentifier:", v20];
    i = v21;
  }

  return [i integerValue];
}

- (BOOL)setPreferredEncoding:(unsigned int)encoding forMessage:(id)message
{
  v5 = *&encoding;
  v12[1] = *MEMORY[0x277D85DE8];
  preferredEncoding = [message preferredEncoding];
  if (preferredEncoding != v5)
  {
    [message setPreferredEncoding:v5];
    headers = [message headers];
    if (headers)
    {
      v9 = headers;
      [headers setPreferredEncoding:v5];
      v10 = [v9 firstHeaderForKey:*MEMORY[0x277D07030]];
      [message setSubject:{objc_msgSend(MEMORY[0x277D070D0], "subjectWithString:", v10)}];
    }

    v12[0] = message;
    -[MFMailMessageStore messageFlagsDidChange:flags:](self, "messageFlagsDidChange:flags:", [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1], 0);
  }

  return preferredEncoding != v5;
}

- (void)_flushAllMessageData
{
  [(MFMailMessageStore *)self mf_lock];
  self->_deletedMessageCount = 0;
  self->_deletedMessagesSize = 0;
  self->_unreadMessageCount = 0;
  _MFLockGlobalLock();
  v3 = *MEMORY[0x277D25038];

  *(&self->super.super.isa + v3) = 0;
  _MFUnlockGlobalLock();
  [(MFMailMessageStore *)self mf_unlock];
  v4.receiver = self;
  v4.super_class = MFMailMessageStore;
  [(MFMailMessageStore *)&v4 _flushAllMessageData];
}

- (BOOL)shouldDownloadBodyDataForMessage:(id)message
{
  if ([message summary])
  {
    return 0;
  }

  else
  {
    return [message isMessageContentsLocallyAvailable] ^ 1;
  }
}

- (BOOL)shouldDeleteInPlace
{
  account = [(MFMailMessageStore *)self account];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [account deleteInPlaceForMailbox:mailboxUid];
}

- (BOOL)supportsArchiving
{
  account = [(MFMailMessageStore *)self account];
  supportsArchiving = [account supportsArchiving];
  if (supportsArchiving)
  {
    LOBYTE(supportsArchiving) = [account preventArchiveForMailbox:{-[MFMailMessageStore mailboxUid](self, "mailboxUid")}] ^ 1;
  }

  return supportsArchiving;
}

- (BOOL)shouldArchive
{
  account = [(MFMailMessageStore *)self account];
  shouldArchiveByDefault = [account shouldArchiveByDefault];
  if (shouldArchiveByDefault)
  {
    mailboxUid = [(MFMailMessageStore *)self mailboxUid];

    LOBYTE(shouldArchiveByDefault) = [account canArchiveForMailbox:mailboxUid];
  }

  return shouldArchiveByDefault;
}

- (int)archiveDestination
{
  account = [(MFMailMessageStore *)self account];
  mailboxUid = [(MFMailMessageStore *)self mailboxUid];

  return [account archiveDestinationForMailbox:mailboxUid];
}

- (id)_setOrGetBody:(id)body forMessage:(id)message updateFlags:(BOOL)flags
{
  flagsCopy = flags;
  v11.receiver = self;
  v11.super_class = MFMailMessageStore;
  v8 = [MFMailMessageStore _setOrGetBody:sel__setOrGetBody_forMessage_updateFlags_ forMessage:? updateFlags:?];
  v9 = v8 != body || !flagsCopy;
  if (!v9 && ([message messageFlags] & 2) == 0)
  {
    [message calculateAttachmentInfoFromBody:body];
  }

  return v8;
}

- (void)_setFlagsForMessages:(id)messages
{
  keyEnumerator = [messages keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v7 = [messages objectForKey:nextObject2];
      v8 = [v7 objectForKey:@"messageFlags"];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 objectForKey:@"messageFlagsMask"];
        if (!v10)
        {
          unsignedIntValue = [v9 unsignedIntValue];
          v13 = 0x1BFDDF7FFFFLL;
          goto LABEL_8;
        }

        unsignedIntValue2 = [v10 unsignedIntValue];
        unsignedIntValue = [v9 unsignedIntValue];
        if (unsignedIntValue2)
        {
          v13 = unsignedIntValue2;
LABEL_8:
          v14 = unsignedIntValue;
          messageFlags = [nextObject2 messageFlags];
          if (v13 == 0x1BFDDF7FFFFLL)
          {
            v16 = v14;
          }

          else
          {
            v16 = messageFlags & ~v13 | v13 & v14;
          }

          if (v16 != messageFlags)
          {
            [nextObject2 setMessageFlags:?];
          }
        }
      }

      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)updateMessages:(id)messages updateNumberOfAttachments:(BOOL)attachments
{
  if (attachments)
  {
    messagesCopy = messages;
    if (!messagesCopy)
    {
      messagesCopy = [(MFMailMessageStore *)self copyOfAllMessages];
    }

    v11 = messagesCopy;
    v6 = [messagesCopy count];
    if (v6)
    {
      v7 = v6 - 1;
      do
      {
        v8 = v7;
        v9 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        [objc_msgSend(v11 objectAtIndex:{v8), "calculateAttachmentInfoFromBody:", 0}];
        v10 = [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
        [v9 drain];
        if (v10)
        {
          break;
        }

        v7 = v8 - 1;
      }

      while (v8);
    }
  }
}

- (void)messagesWereAdded:(id)added earliestReceivedDate:(id)date
{
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
  if ([added count])
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{added, @"messages", date, @"previous earliest received date", 0}];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"MailMessageStoreMessagesAdded" object:self userInfo:v9];
  }
}

- (BOOL)_updateFlagForMessage:(id)message key:(id)key value:(BOOL)value
{
  valueCopy = value;
  messageFlags = [message messageFlags];
  if ([key isEqual:@"MessageIsRead"])
  {
    if ((messageFlags & 1) != valueCopy)
    {
      unreadMessageCount = self->_unreadMessageCount;
      v11 = valueCopy ? unreadMessageCount - 1 : unreadMessageCount + 1;
      self->_unreadMessageCount = v11;
      if (v11 >> 31)
      {
        self->_unreadMessageCount = 0;
        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_258BDA000, v12, OS_LOG_TYPE_INFO, "#UnreadCount _unreadMessageCount went negative", v18, 2u);
        }
      }
    }
  }

  else
  {
    if ([key isEqual:@"MessageIsDeleted"])
    {
      v13 = ((messageFlags >> 1) & 1) == valueCopy;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      deletedMessageCount = self->_deletedMessageCount;
      if (valueCopy)
      {
        self->_deletedMessageCount = deletedMessageCount + 1;
        v15 = self->_deletedMessagesSize + [message messageSize];
      }

      else
      {
        self->_deletedMessageCount = deletedMessageCount - 1;
        v15 = self->_deletedMessagesSize - [message messageSize];
      }

      self->_deletedMessagesSize = v15;
    }
  }

  v16 = _MFFlagsBySettingValueForKey(messageFlags, key, valueCopy);
  if (v16 != messageFlags && [(MFMailMessageStore *)self _shouldChangeComponentMessageFlagsForMessage:message])
  {
    [message setMessageFlags:v16];
  }

  return v16 != messageFlags;
}

@end