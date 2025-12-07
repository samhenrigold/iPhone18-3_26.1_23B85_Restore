@interface IMAPServiceAccount
- (BOOL)getMailboxListWithConnection:(id)connection;
- (Class)storeClassForMailbox:(id)mailbox;
- (IMAPService)service;
- (IMAPServiceAccount)initWithProperties:(id)properties mambaID:(const char *)d label:(id)label accountDir:(id)dir phoneNumber:(id)number isoCountryCode:(id)code networkIdentifier:(id)identifier;
- (IMAPServiceLibrary)library;
- (MFInvocationQueue)invocationQueue;
- (__CFString)connectionServiceType;
- (id)connectionForStore:(id)store delegate:(id)delegate options:(unsigned int)options;
- (id)description;
- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create;
- (id)mimeBodyForAccountRecord:(void *)record;
- (id)offlineCacheDirectoryPath;
- (id)password;
- (id)storeForMailboxUid:(id)uid;
- (unint64_t)mailboxQuotaUsage;
- (unsigned)uidValidityForMailbox:(id)mailbox;
- (void)_addMonitoredInvocationForIdleConnectionDisconnection;
- (void)_clearConnectionCheckOuts;
- (void)_performDisconnectIdleConnections;
- (void)_startIdleTimer;
- (void)changePIN:(id)n;
- (void)checkInConnection:(id)connection;
- (void)checkInConnectionsForStore:(id)store;
- (void)checkInConnectionsPolitelyForStore:(id)store;
- (void)dealloc;
- (void)flushIMAPServiceLibraryCache;
- (void)invalidateServiceAccount;
- (void)libraryIMAPStore:(id)store bodyDownloadBeganForUid:(unsigned int)uid data:(id)data section:(id)section;
- (void)libraryIMAPStore:(id)store bodyDownloadCompletedForUid:(unsigned int)uid data:(id)data section:(id)section;
- (void)libraryIMAPStore:(id)store bodyDownloadReceivedMoreDataForUid:(unsigned int)uid data:(id)data section:(id)section;
- (void)moveMessagesWithTokensToDeleted:(id)deleted;
- (void)moveMessagesWithTokensToInbox:(id)inbox;
- (void)moveMessagesWithTokensToRead:(id)read;
- (void)moveMessagesWithTokensToTrash:(id)trash;
- (void)movePendingMessages:(id)messages isGoingToTrash:(BOOL)trash;
- (void)movePendingMessagesToTrash:(id)trash;
- (void)releaseAllConnections;
- (void)setLongLifeMessagesCache;
- (void)setPassword:(id)password;
- (void)setUidValidity:(unsigned int)validity forMailbox:(id)mailbox;
- (void)setupLibrary;
- (void)storeFlags:(unsigned int)flags forRecord:(void *)record usingMessage:(id)message;
- (void)willSetFlags:(unsigned int)flags state:(unsigned int)state forRecord:(void *)record needToBeStored:(BOOL)stored;
@end

@implementation IMAPServiceAccount

- (IMAPServiceAccount)initWithProperties:(id)properties mambaID:(const char *)d label:(id)label accountDir:(id)dir phoneNumber:(id)number isoCountryCode:(id)code networkIdentifier:(id)identifier
{
  properties;
  labelCopy = label;
  dirCopy = dir;
  number;
  code;
  identifier;
  operator new();
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  objc_storeWeak(&self->_service, 0);
  [(NSTimer *)self->_idleTimer invalidate];
  [*&self->IMAP_Account_opaque[OBJC_IVAR___MailAccount__library] invalidateServiceLibrary];
  cachedStores = self->_cachedStores;
  if (cachedStores)
  {
    CFRelease(cachedStores);
  }

  v5.receiver = self;
  v5.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v5 dealloc];
}

- (void)invalidateServiceAccount
{
  [(NSRecursiveLock *)self->_storeCacheLock lock];
  cachedStores = self->_cachedStores;
  if (cachedStores)
  {
    CFRelease(cachedStores);
    self->_cachedStores = 0;
  }

  *(self + 352) |= 2u;
  [(NSRecursiveLock *)self->_storeCacheLock unlock];

  [(IMAPServiceAccount *)self invalidate];
}

- (id)description
{
  v3 = objc_opt_class();
  serviceMDN = [(IMAPServiceAccount *)self serviceMDN];
  hostname = [(IMAPServiceAccount *)self hostname];
  username = [(IMAPServiceAccount *)self username];
  v7 = [NSString stringWithFormat:@"<%@ %p servicePhoneNumber=%@ hostname=%@ username=%@>", v3, self, serviceMDN, hostname, username];

  return v7;
}

- (id)password
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  password = [WeakRetained password];

  return password;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained setPassword:passwordCopy];
}

- (Class)storeClassForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  name = [mailboxCopy name];
  v6 = [name isEqualToString:@"Greetings"];

  if (v6)
  {
    storeClass = objc_opt_class();
  }

  else
  {
    storeClass = [(IMAPServiceAccount *)self storeClass];
  }

  v8 = storeClass;
  v9 = storeClass;

  return v8;
}

- (id)storeForMailboxUid:(id)uid
{
  uidCopy = uid;
  [(NSRecursiveLock *)self->_storeCacheLock lock];
  cachedStores = self->_cachedStores;
  if (!cachedStores || (CFDictionaryGetValue(cachedStores, uidCopy), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = IMAPServiceAccount;
    v6 = [(IMAPServiceAccount *)&v9 storeForMailboxUid:uidCopy];
    if (v6)
    {
      if ((*(self + 352) & 2) == 0)
      {
        Mutable = self->_cachedStores;
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          self->_cachedStores = Mutable;
        }

        CFDictionarySetValue(Mutable, uidCopy, v6);
      }
    }
  }

  [(NSRecursiveLock *)self->_storeCacheLock unlock];

  return v6;
}

- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create
{
  createCopy = create;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = IMAPServiceAccount;
  v7 = -[IMAPServiceAccount mailboxUidForRelativePath:create:](&v13, "mailboxUidForRelativePath:create:", pathCopy, [pathCopy isEqualToString:@"INBOX"]);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !createCopy;
  }

  if (!v8)
  {
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    v10 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:stringByDeletingLastPathComponent create:0];

    if (v10)
    {
      lastPathComponent = [pathCopy lastPathComponent];
      v7 = [(IMAPServiceAccount *)self _newMailboxWithParent:v10 name:lastPathComponent attributes:0 dictionary:0 withCreationOption:0];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (__CFString)connectionServiceType
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  connectionServiceType = [WeakRetained connectionServiceType];
  isWiFiNetworkAvailable = [WeakRetained isWiFiNetworkAvailable];
  if (connectionServiceType)
  {
    v6 = isWiFiNetworkAvailable;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == 1)
  {
    v12.receiver = self;
    v12.super_class = IMAPServiceAccount;
    connectionServiceType = [(IMAPServiceAccount *)&v12 connectionServiceType];
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315906;
      v14 = v8;
      v15 = 2080;
      v16 = " ";
      v17 = 2112;
      v18 = connectionServiceType;
      v19 = 2112;
      v20 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%susing super connectionServiceType: %@, service %@", buf, 0x2Au);
    }
  }

  [WeakRetained setLastUsedConnectionType:connectionServiceType];
  v9 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315906;
    v14 = v10;
    v15 = 2080;
    v16 = " ";
    v17 = 2112;
    v18 = connectionServiceType;
    v19 = 2112;
    v20 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sconnectionServiceType: %@, service %@", buf, 0x2Au);
  }

  return connectionServiceType;
}

- (id)offlineCacheDirectoryPath
{
  [(NSRecursiveLock *)self->_serviceAccountLock lock];
  if (!self->_offlineCachePath)
  {
    accountDir = [(IMAPServiceAccount *)self accountDir];
    v4 = [accountDir URLByAppendingPathComponent:@"OfflineCache"];
    path = [v4 path];
    offlineCachePath = self->_offlineCachePath;
    self->_offlineCachePath = path;
  }

  [(NSRecursiveLock *)self->_serviceAccountLock unlock];
  v7 = self->_offlineCachePath;

  return v7;
}

- (void)setupLibrary
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v6 = 136315394;
    v7 = v4;
    v8 = 2080;
    v9 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAPServiceAccount::setupLibrary", &v6, 0x16u);
  }

  v5 = [[IMAPServiceLibrary alloc] initWithServiceAccount:self];
  [(IMAPServiceAccount *)self setLibrary:v5];
}

- (IMAPServiceLibrary)library
{
  v4.receiver = self;
  v4.super_class = IMAPServiceAccount;
  library = [(IMAPServiceAccount *)&v4 library];

  return library;
}

- (void)flushIMAPServiceLibraryCache
{
  library = [(IMAPServiceAccount *)self library];
  [library flushMessageCache];
}

- (void)setLongLifeMessagesCache
{
  library = [(IMAPServiceAccount *)self library];
  [library setLongLifeMessagesCache];
}

- (id)mimeBodyForAccountRecord:(void *)record
{
  library = [(IMAPServiceAccount *)self library];
  v6 = [library messageWithAccountStoreRecord:record];

  if (v6)
  {
    v7 = VMStoreRecordCopyDescription(record);
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = " ";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sDownloading data for message %@ record %@", &v12, 0x2Au);
    }

    messageBody = [v6 messageBody];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    messageBody = 0;
  }

  return messageBody;
}

- (void)willSetFlags:(unsigned int)flags state:(unsigned int)state forRecord:(void *)record needToBeStored:(BOOL)stored
{
  storedCopy = stored;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = v11;
  if (flags)
  {
    if (state)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    [v11 setObject:v13 forKey:MessageIsRead];
  }

  if ((flags & 4) != 0)
  {
    if ((state & 4) != 0)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    [v12 setObject:v14 forKey:MessageIsDeleted];
  }

  v15 = VMStoreRecordCopyFlagsDescription(flags);
  v16 = VMStoreRecordCopyFlagsDescription(state);
  v17 = VMStoreRecordCopyDescription(record);
  v18 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136316418;
    v27 = v19;
    v28 = 2080;
    v29 = " ";
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%swillSetFlags: flagsMask=%@, flagState=%@, dict=%@ for record %@", buf, 0x3Eu);
  }

  library = [(IMAPServiceAccount *)self library];
  v21 = [library messageWithAccountStoreRecord:record];

  v22 = [[NSArray alloc] initWithObjects:{v21, 0}];
  messageStore = [v21 messageStore];
  v24 = messageStore;
  if (storedCopy)
  {
    v25 = [messageStore willSetFlagsFromDictionary:v12 forMessages:v22];
  }

  else
  {
    [messageStore addFlagChanges:v12 forMessages:v22];
  }
}

- (void)storeFlags:(unsigned int)flags forRecord:(void *)record usingMessage:(id)message
{
  messageCopy = message;
  v9 = VMStoreRecordCopyFlagsDescription(flags);
  v10 = VMStoreRecordCopyDescription(record);
  v11 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    accountStore = [(IMAPServiceAccount *)self accountStore];
    *buf = 136316162;
    v30 = v12;
    v31 = 2080;
    v32 = " ";
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = accountStore;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sStore flags with mask:%@ for record:%@ store %@ to the server", buf, 0x34u);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (flags)
  {
    if (messageCopy || (-[IMAPServiceAccount library](self, "library"), v14 = objc_claimAutoreleasedReturnValue(), [v14 messageWithAccountStoreRecord:record], messageCopy = objc_claimAutoreleasedReturnValue(), v14, messageCopy))
    {
      messageStore = [messageCopy messageStore];
      v16 = [[NSArray alloc] initWithObjects:{messageCopy, 0}];
      Flags = VMStoreRecordGetFlags(record);
      v18 = objc_alloc_init(NSMutableDictionary);
      v19 = v18;
      if (flags)
      {
        if (Flags)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        [(__CFString *)v18 setObject:v20 forKey:MessageIsRead];
      }

      if ((flags & 4) != 0)
      {
        if ((Flags & 0x44) != 0)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        [(__CFString *)v19 setObject:v21 forKey:MessageIsDeleted];
      }

      v22 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315906;
        v30 = v23;
        v31 = 2080;
        v32 = " ";
        v33 = 2112;
        v34 = v19;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sSyncing flags %@ for messages %@ to the server", buf, 0x2Au);
      }

      v24 = [messageStore setFlagsFromDictionary:v19 forMessages:v16];
      if ((flags & 4) != 0)
      {
        v25 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
          Identifier = VMStoreRecordGetIdentifier(record);
          *buf = 136315650;
          v30 = v26;
          v31 = 2080;
          v32 = " ";
          v33 = 1024;
          LODWORD(v34) = Identifier;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sExpunging record with identifier %d", buf, 0x1Cu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_service);
        [WeakRetained _removePendingDeleteForRecord:record];

        [messageStore doCompact];
      }
    }
  }
}

- (void)movePendingMessagesToTrash:(id)trash
{
  trashCopy = trash;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v7 = 136315394;
    v8 = v6;
    v9 = 2080;
    v10 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::movePendingMessagesToTrash", &v7, 0x16u);
  }

  [(IMAPServiceAccount *)self movePendingMessages:trashCopy isGoingToTrash:1];
}

- (void)movePendingMessages:(id)messages isGoingToTrash:(BOOL)trash
{
  trashCopy = trash;
  messagesCopy = messages;
  v7 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v9 = @"Primary";
    if (trashCopy)
    {
      v9 = @"Trash";
    }

    v23 = 136315906;
    v24 = v8;
    v25 = 2080;
    v26 = " ";
    v27 = 2112;
    v28 = messagesCopy;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sMoving messages %@ to %@ mailbox", &v23, 0x2Au);
  }

  if (trashCopy)
  {
    v10 = @"Trash";
  }

  else
  {
    v10 = @"INBOX";
  }

  v11 = v10;
  v12 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:v11 create:1];
  v13 = [MFMailMessageStore copyMessages:messagesCopy toMailbox:v12 markAsRead:1 deleteOriginals:1 isDeletion:trashCopy];
  v14 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v16 = [v13 debugDescription];
    v23 = 136315650;
    v24 = v15;
    v25 = 2080;
    v26 = " ";
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sMessage Transfer result %@", &v23, 0x20u);
  }

  if ([v13 resultCode] == 1)
  {
    v17 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v19 = @"Inbox";
      if (!trashCopy)
      {
        v19 = @"Trash";
      }

      v23 = 136315650;
      v24 = v18;
      v25 = 2080;
      v26 = " ";
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sExpunging messages from %@ mailbox", &v23, 0x20u);
    }

    if (trashCopy)
    {
      v20 = @"INBOX";
    }

    else
    {
      v20 = @"Trash";
    }

    v21 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:v20 create:0];
    v22 = [(IMAPServiceAccount *)self storeForMailboxUid:v21];
    [v22 doCompact];
  }
}

- (void)moveMessagesWithTokensToTrash:(id)trash
{
  trashCopy = trash;
  context = objc_autoreleasePoolPush();
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v51 = v5;
    v52 = 2080;
    v53 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToTrash", buf, 0x16u);
  }

  selfCopy = self;

  v42 = +[NSMutableArray array];
  v41 = +[NSMutableDictionary dictionary];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = trashCopy;
  v6 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v6)
  {
    v7 = *v47;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)selfCopy accountStore];
        v11 = sub_10009322C(accountStore, v9);

        if (v11)
        {
          if (CFArrayGetCount(v11))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            accountStore2 = [(IMAPServiceAccount *)selfCopy accountStore];
            sub_100092B0C(accountStore2, ValueAtIndex);
            v15 = v14;

            if ((v15 & 0x4C) == 0)
            {
              v16 = VMStoreCopyRecordsWithTokenInMailbox(v9, 3uLL);
              v17 = v16;
              if (v16)
              {
                if (CFArrayGetCount(v16))
                {
                  v43 = CFArrayGetValueAtIndex(v17, 0);
                  v18 = sub_100026660(selfCopy->logger.__ptr_);
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    log = v18;
                    v19 = *&selfCopy->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
                    v20 = sub_100087658(v43);
                    v21 = sub_100087658(ValueAtIndex);
                    *buf = 136315906;
                    v51 = v19;
                    v52 = 2080;
                    v53 = " ";
                    v54 = 2112;
                    v55 = v20;
                    v56 = 2112;
                    v57 = v21;
                    v18 = log;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Trash. Main has: %@, account has: %@", buf, 0x2Au);
                  }

                  TrashedDate = VMStoreRecordGetTrashedDate(v43);
                  accountStore3 = [(IMAPServiceAccount *)selfCopy accountStore];
                  sub_1000928E0(accountStore3, ValueAtIndex, TrashedDate);
                }

                CFRelease(v17);
              }

              library = [(IMAPServiceAccount *)selfCopy library];
              v25 = [library messageWithAccountStoreRecord:ValueAtIndex];

              if (v25)
              {
                [v42 addObject:v25];
                messageIDHeader = [v25 messageIDHeader];
                [v41 setObject:v9 forKeyedSubscript:messageIDHeader];
              }
            }
          }

          CFRelease(v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v6);
  }

  if ([v42 count])
  {
    v27 = sub_100026660(selfCopy->logger.__ptr_);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *&selfCopy->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v29 = [v42 count];
      *buf = 136315650;
      v51 = v28;
      v52 = 2080;
      v53 = " ";
      v54 = 2048;
      v55 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Moving %lu messages to Trash", buf, 0x20u);
    }

    v30 = [(IMAPServiceAccount *)selfCopy mailboxUidForRelativePath:@"Trash" create:1];
    v31 = [MFMailMessageStore copyMessages:v42 toMailbox:v30 markAsRead:0 deleteOriginals:1 isDeletion:1];
    v32 = sub_100026660(selfCopy->logger.__ptr_);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *&selfCopy->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v34 = [v31 debugDescription];
      *buf = 136315650;
      v51 = v33;
      v52 = 2080;
      v53 = " ";
      v54 = 2112;
      v55 = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Message Transfer result %@", buf, 0x20u);
    }

    v35 = [(IMAPServiceAccount *)selfCopy mailboxUidForRelativePath:@"INBOX" create:0];
    v36 = [(IMAPServiceAccount *)selfCopy storeForMailboxUid:v35];
    [v36 doCompact];
  }

  objc_autoreleasePoolPop(context);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_service);
  [WeakRetained scheduleAutomatedTrashCompaction];
}

- (void)moveMessagesWithTokensToInbox:(id)inbox
{
  inboxCopy = inbox;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100026660(self->logger.__ptr_);
  context = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v46 = v6;
    v47 = 2080;
    v48 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToInbox", buf, 0x16u);
  }

  v39 = +[NSMutableArray array];
  v38 = +[NSMutableDictionary dictionary];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = inboxCopy;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v8)
  {
    v9 = *v42;
    v37 = v7;
    do
    {
      v40 = v8;
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)self accountStore];
        v13 = sub_10009322C(accountStore, v11);

        if (v13)
        {
          if (CFArrayGetCount(v13))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
            accountStore2 = [(IMAPServiceAccount *)self accountStore];
            sub_100092B0C(accountStore2, ValueAtIndex);
            v17 = v16;

            if ((v17 & 0x4C) == 8)
            {
              v18 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
                v20 = sub_100087658(ValueAtIndex);
                *buf = 136315650;
                v46 = v19;
                v47 = 2080;
                v48 = " ";
                v49 = 2112;
                v50 = v20;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Inbox. %@", buf, 0x20u);

                v7 = v37;
              }

              library = [(IMAPServiceAccount *)self library];
              v22 = [library messageWithAccountStoreRecord:ValueAtIndex];

              if (v22)
              {
                [v39 addObject:v22];
                messageIDHeader = [v22 messageIDHeader];
                [v38 setObject:v11 forKeyedSubscript:messageIDHeader];
              }
            }
          }

          CFRelease(v13);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v8);
  }

  if ([v39 count])
  {
    v24 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v26 = [v39 count];
      *buf = 136315650;
      v46 = v25;
      v47 = 2080;
      v48 = " ";
      v49 = 2048;
      v50 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Moving %lu messages to Inbox", buf, 0x20u);
    }

    primaryMailboxUid = [(IMAPServiceAccount *)self primaryMailboxUid];
    v28 = [MFMailMessageStore copyMessages:v39 toMailbox:primaryMailboxUid markAsRead:0 deleteOriginals:1 isDeletion:0];
    v29 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v31 = [v28 debugDescription];
      *buf = 136315650;
      v46 = v30;
      v47 = 2080;
      v48 = " ";
      v49 = 2112;
      v50 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Message Transfer result %@", buf, 0x20u);
    }

    if ([v28 resultCode] == 1)
    {
      v32 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"Trash" create:0];
      v33 = [(IMAPServiceAccount *)self storeForMailboxUid:v32];
      [v33 doCompact];
    }
  }

  objc_autoreleasePoolPop(context);
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained scheduleAutomatedTrashCompaction];
}

- (void)moveMessagesWithTokensToDeleted:(id)deleted
{
  deletedCopy = deleted;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100026660(self->logger.__ptr_);
  context = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v60 = v6;
    v61 = 2080;
    v62 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToDeleted", buf, 0x16u);
  }

  v49 = +[NSMutableArray array];
  v48 = +[NSMutableDictionary dictionary];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = deletedCopy;
  v8 = [v7 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v8)
  {
    v9 = *v55;
    v47 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)self accountStore];
        v13 = sub_10009322C(accountStore, v11);

        if (v13)
        {
          if (CFArrayGetCount(v13))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
            v15 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v9;
              v17 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
              v18 = sub_100087658(ValueAtIndex);
              *buf = 136315650;
              v60 = v17;
              v61 = 2080;
              v62 = " ";
              v63 = 2112;
              v64 = v18;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Deleted. %@", buf, 0x20u);

              v7 = v47;
              v9 = v16;
            }

            library = [(IMAPServiceAccount *)self library];
            v20 = [library messageWithAccountStoreRecord:ValueAtIndex];

            if (v20)
            {
              [v49 addObject:v20];
              messageIDHeader = [v20 messageIDHeader];
              [v48 setObject:v11 forKeyedSubscript:messageIDHeader];
            }
          }

          CFRelease(v13);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v8);
  }

  if ([v49 count])
  {
    v22 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      v24 = [v49 count];
      *buf = 136315650;
      v60 = v23;
      v61 = 2080;
      v62 = " ";
      v63 = 2048;
      v64 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Deleting %lu messages", buf, 0x20u);
    }

    v25 = [v49 objectAtIndex:0];
    messageStore = [v25 messageStore];

    [messageStore deleteMessages:v49 moveToTrash:0];
    v43 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v43 error];
    v27 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v60 = v28;
      v61 = 2080;
      v62 = " ";
      v63 = 2112;
      v64 = error;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s========= Deletion complete with %@", buf, 0x20u);
    }

    if (!error)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v48;
      v30 = [v29 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v30)
      {
        v31 = *v51;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v50 + 1) + 8 * j);
            accountStore2 = [(IMAPServiceAccount *)self accountStore];
            v35 = [v29 objectForKeyedSubscript:v33];
            v36 = sub_10009322C(accountStore2, v35);

            if (v36)
            {
              if (CFArrayGetCount(v36))
              {
                v37 = CFArrayGetValueAtIndex(v36, 0);
                accountStore3 = [(IMAPServiceAccount *)self accountStore];
                sub_100093034(accountStore3, v37);
              }

              CFRelease(v36);
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v30);
      }

      v39 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315394;
        v60 = v40;
        v61 = 2080;
        v62 = " ";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving updated records to store", buf, 0x16u);
      }

      accountStore4 = [(IMAPServiceAccount *)self accountStore];
      [accountStore4 save];
    }

    [messageStore doCompact];
  }

  objc_autoreleasePoolPop(context);
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained scheduleAutomatedTrashCompaction];
}

- (void)moveMessagesWithTokensToRead:(id)read
{
  readCopy = read;
  context = objc_autoreleasePoolPush();
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315394;
    v65 = v5;
    v66 = 2080;
    v67 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPServiceAccount::moveMessagesWithTokensToRead", buf, 0x16u);
  }

  v53 = +[NSMutableArray array];
  v52 = +[NSMutableDictionary dictionary];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = readCopy;
  v6 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v6)
  {
    v7 = *v60;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v59 + 1) + 8 * i);
        accountStore = [(IMAPServiceAccount *)self accountStore];
        v11 = sub_10009322C(accountStore, v9);

        if (v11)
        {
          if (CFArrayGetCount(v11))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            accountStore2 = [(IMAPServiceAccount *)self accountStore];
            sub_100092B0C(accountStore2, ValueAtIndex);
            v15 = v14;

            if ((v15 & 0x45) == 0)
            {
              v16 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
                v18 = sub_100087658(ValueAtIndex);
                *buf = 136315650;
                v65 = v17;
                v66 = 2080;
                v67 = " ";
                v68 = 2112;
                v69 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%smoving to Read. %@", buf, 0x20u);
              }

              library = [(IMAPServiceAccount *)self library];
              v20 = [library messageWithAccountStoreRecord:ValueAtIndex];

              if (v20)
              {
                [v53 addObject:v20];
                messageIDHeader = [v20 messageIDHeader];
                [v52 setObject:v9 forKeyedSubscript:messageIDHeader];
              }
            }
          }

          CFRelease(v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v6);
  }

  if ([v53 count])
  {
    v22 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v65 = v23;
      v66 = 2080;
      v67 = " ";
      v68 = 2112;
      v69 = v53;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Syncing READ messages %@ to the server", buf, 0x20u);
    }

    v48 = [NSDictionary dictionaryWithObject:@"YES" forKey:MessageIsRead];
    v24 = [v53 objectAtIndex:0];
    messageStore = [v24 messageStore];

    v25 = [messageStore setFlagsFromDictionary:v48 forMessages:v53];
    v26 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315394;
      v65 = v27;
      v66 = 2080;
      v67 = " ";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Syncing READ SEMI done", buf, 0x16u);
    }

    v46 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v46 error];
    v28 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v65 = v29;
      v66 = 2080;
      v67 = " ";
      v68 = 2112;
      v69 = error;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Syncing READ done with %@", buf, 0x20u);
    }

    v30 = error;
    if (!error)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v31 = v52;
      v32 = [v31 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v32)
      {
        v33 = *v56;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v56 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v55 + 1) + 8 * j);
            accountStore3 = [(IMAPServiceAccount *)self accountStore];
            v37 = [v31 objectForKeyedSubscript:v35];
            v38 = sub_10009322C(accountStore3, v37);

            if (v38)
            {
              if (CFArrayGetCount(v38))
              {
                v39 = CFArrayGetValueAtIndex(v38, 0);
                accountStore4 = [(IMAPServiceAccount *)self accountStore];
                accountStore5 = [(IMAPServiceAccount *)self accountStore];
                sub_100092B0C(accountStore5, v39);
                sub_100092B3C(accountStore4, v39, v42 | 1u);
              }

              CFRelease(v38);
            }
          }

          v32 = [v31 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v32);
      }

      v43 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315394;
        v65 = v44;
        v66 = 2080;
        v67 = " ";
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving updated records to store", buf, 0x16u);
      }

      accountStore6 = [(IMAPServiceAccount *)self accountStore];
      [accountStore6 save];

      v30 = 0;
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)changePIN:(id)n
{
  nCopy = n;
  v5 = [(IMAPServiceAccount *)self connectionForStore:0 delegate:self options:9];
  v6 = +[MFActivityMonitor currentTracebleMonitor];
  v7 = v6;
  if (v5)
  {
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      serviceMDN = [(IMAPServiceAccount *)self serviceMDN];
      v16 = 136315650;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = serviceMDN;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Attempting to set the password for IMAP service account with service phone number %@", &v16, 0x20u);
    }

    [v5 changePassword:nCopy];
    error = [v7 error];
    v12 = error == 0;

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_service);
      [WeakRetained setMailboxRequiresSetup:0];
    }

    error2 = 0;
  }

  else
  {
    error2 = [v6 error];
    if (!error2)
    {
      error2 = [NSError errorWithDomain:kVVErrorDomain code:1023 localizedDescription:@"Could not establish IMAP connection."];
    }

    v15 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10009C474();
    }

    if (error2)
    {
      [v7 setError:error2];
    }
  }
}

- (unint64_t)mailboxQuotaUsage
{
  v3 = [(IMAPServiceAccount *)self connectionForStore:0 delegate:self options:9];
  if (v3)
  {
    primaryMailboxUid = [(IMAPServiceAccount *)self primaryMailboxUid];
    v5 = [(IMAPServiceAccount *)self nameForMailboxUid:primaryMailboxUid];

    v6 = [v3 quotaPercentagesForMailbox:v5];
    v7 = [v6 count];
    if (v7)
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = [v6 objectAtIndex:v8];
        [v10 floatValue];
        v12 = v11;

        if (v12 > v9)
        {
          v9 = v12;
        }

        ++v8;
      }

      while (v7 != v8);
      v7 = (v9 * 100.0);
      if (v7 >= 0x50 && [v3 selectMailbox:v5 withAccount:self])
      {
        v13 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
          v16 = 136315650;
          v17 = v14;
          v18 = 2080;
          v19 = " ";
          v20 = 2048;
          v21 = (v9 * 100.0);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sMailbox usage is at %ld%%. Expunging messages from Inbox.", &v16, 0x20u);
        }

        [v3 expunge];
      }
    }

    [(IMAPServiceAccount *)self checkInConnection:v3];
  }

  else
  {
    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009C514();
    }

    v7 = 0;
  }

  return v7;
}

- (unsigned)uidValidityForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy type] == 7)
  {
    accountStore = [(IMAPServiceAccount *)self accountStore];
    v6 = sub_100093234(accountStore, 0);
  }

  else
  {
    accountStore = [(IMAPServiceAccount *)self accountStore];
    v6 = sub_100093234(accountStore, [mailboxCopy name]);
  }

  v7 = v6;

  v8 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    name = [mailboxCopy name];
    v12 = 136316162;
    v13 = v9;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = name;
    v18 = 1024;
    v19 = v7;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetUidValidity for mailbox %@ validity %u, service account %@", &v12, 0x30u);
  }

  return v7;
}

- (void)setUidValidity:(unsigned int)validity forMailbox:(id)mailbox
{
  v4 = *&validity;
  mailboxCopy = mailbox;
  v7 = [(IMAPServiceAccount *)self uidValidityForMailbox:mailboxCopy];
  v8 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    name = [mailboxCopy name];
    v25 = 136316418;
    v26 = v9;
    v27 = 2080;
    v28 = " ";
    v29 = 2112;
    v30 = name;
    v31 = 1024;
    v32 = v4;
    v33 = 1024;
    v34 = v7;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%ssetUidValidity for mailbox %@ validity %u oldValidity %u, service account %@", &v25, 0x36u);
  }

  if ([mailboxCopy type] == 7)
  {
    if (!v7)
    {
      accountStore = [(IMAPServiceAccount *)self accountStore];
      sub_10009323C(accountStore, 0, v4);

      accountStore2 = [(IMAPServiceAccount *)self accountStore];
      [accountStore2 save];

      v20 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        accountStore3 = [(IMAPServiceAccount *)self accountStore];
        v25 = 136315906;
        v26 = v23;
        v27 = 2080;
        v28 = " ";
        v29 = 2112;
        v30 = accountStore3;
        v31 = 1024;
        v32 = v4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sSave account store %@ for new UidValidity %u", &v25, 0x26u);
      }

      goto LABEL_13;
    }

    if (v7 != v4)
    {
      accountStore4 = [(IMAPServiceAccount *)self accountStore];
      [accountStore4 removeAllRecords];

      accountStore5 = [(IMAPServiceAccount *)self accountStore];
      sub_10009323C(accountStore5, 0, v4);

      accountStore6 = [(IMAPServiceAccount *)self accountStore];
      [accountStore6 save];

      v14 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        accountStore7 = [(IMAPServiceAccount *)self accountStore];
        v25 = 136315650;
        v26 = v15;
        v27 = 2080;
        v28 = " ";
        v29 = 2112;
        v30 = accountStore7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sSave account store %@", &v25, 0x20u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_service);
      if (WeakRetained)
      {
        v18 = objc_loadWeakRetained(&self->_service);
        v19 = [v18 currentTaskType] == 1;

        if (!v19)
        {
          v20 = objc_loadWeakRetained(&self->_service);
          [v20 synchronize:1 reason:@"UidValidityChanged"];
LABEL_13:
        }
      }
    }
  }
}

- (BOOL)getMailboxListWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"INBOX" create:0];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"Trash" create:0];
  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = [(IMAPServiceAccount *)self mailboxUidForRelativePath:@"Greetings" create:0];

  if (!v7)
  {
LABEL_6:
    v10.receiver = self;
    v10.super_class = IMAPServiceAccount;
    v8 = [(IMAPServiceAccount *)&v10 getMailboxListWithConnection:connectionCopy];
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)_addMonitoredInvocationForIdleConnectionDisconnection
{
  invocationQueue = [(IMAPServiceAccount *)self invocationQueue];
  service = [(IMAPServiceAccount *)self service];
  v5 = service;
  if (invocationQueue && service)
  {
    v6 = [MFMonitoredInvocation invocationWithSelector:"_performDisconnectIdleConnections" target:self taskName:@"DisconnectIdleConnections" priority:3 canBeCancelled:0];
    [v6 retainArguments];
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      monitor = [v6 monitor];
      monitor2 = [v6 monitor];
      v12 = 136316674;
      v13 = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2112;
      v17 = invocationQueue;
      v18 = 2048;
      v19 = monitor;
      v20 = 2112;
      v21 = monitor2;
      v22 = 2112;
      selfCopy = self;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: _addMonitoredInvocationForIdleConnectionDisconnection, account %@ => %@", &v12, 0x48u);
    }

    monitor3 = [v6 monitor];
    [v5 addScheduledActivity:monitor3];

    [invocationQueue addInvocation:v6];
  }
}

- (void)_performDisconnectIdleConnections
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    idleTimeout = self->_idleTimeout;
    *buf = 136315650;
    v26 = v4;
    v27 = 2080;
    v28 = " ";
    v29 = 2048;
    v30 = idleTimeout;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Idle Timer: Releasing connections that have been idle for %g s", buf, 0x20u);
  }

  [(IMAPServiceAccount *)self releaseAllConnectionsIdleForTimeInterval:self->_idleTimeout];
  v6 = OBJC_IVAR___IMAP_Account__connectionLock;
  [*&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__connectionLock] lock];
  [(IMAPServiceAccount *)self mf_lock];
  v7 = *&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__cachedConnections];
  if (v7)
  {
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, v7);
  }

  else
  {
    Copy = 0;
  }

  [(IMAPServiceAccount *)self mf_unlock];
  [*&self->IMAP_Account_opaque[v6] unlock];
  if (Copy)
  {
    Count = CFArrayGetCount(Copy);
    v10 = Count > 0;
    if (Count < 1)
    {
      v10 = 0;
      v12 = 1.79769313e308;
    }

    else
    {
      v11 = 0;
      v12 = 1.79769313e308;
      do
      {
        v13 = CFArrayGetValueAtIndex(Copy, v11);
        [v13 mf_lock];
        [v13 lastUsedTime];
        v15 = v14;
        [v13 mf_unlock];
        if (v15 < v12)
        {
          v12 = v15;
        }

        ++v11;
      }

      while (Count != v11);
    }

    CFRelease(Copy);
  }

  else
  {
    v10 = 0;
    v12 = 1.79769313e308;
  }

  [(NSRecursiveLock *)self->_idleLock lock];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  if (v10)
  {
    v17 = v12 + self->_idleTimeout;
    self->_nextIdleFire = v17;
    v18 = [NSTimer timerWithTimeInterval:self target:"_addMonitoredInvocationForIdleConnectionDisconnection" selector:0 userInfo:0 repeats:fmax(v17 - CFAbsoluteTimeGetCurrent(), 0.0)];
    v19 = self->_idleTimer;
    self->_idleTimer = v18;

    v20 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      nextIdleFire = self->_nextIdleFire;
      Current = CFAbsoluteTimeGetCurrent();
      *buf = 136315650;
      v26 = v21;
      v27 = 2080;
      v28 = " ";
      v29 = 2048;
      v30 = nextIdleFire - Current;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sIdle Timer: More connections were still active after releasing the idled connections, so we'll reschedule the idle timer for %g s", buf, 0x20u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002AF30;
    block[3] = &unk_1000EDEC8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  [(NSRecursiveLock *)self->_idleLock unlock];
}

- (void)_startIdleTimer
{
  [(NSRecursiveLock *)self->_idleLock lock];
  if (self->_idleTimeout > 0.0)
  {
    idleTimer = self->_idleTimer;
    if (idleTimer)
    {
      if ([(NSTimer *)idleTimer isValid])
      {
        nextIdleFire = self->_nextIdleFire;
        if (nextIdleFire < CFAbsoluteTimeGetCurrent())
        {
          [(NSTimer *)self->_idleTimer fire];
          goto LABEL_10;
        }
      }

      if (self->_idleTimer)
      {
        goto LABEL_10;
      }
    }

    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
      idleTimeout = self->_idleTimeout;
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = " ";
      v14 = 2048;
      v15 = idleTimeout;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sIdle Timer: Starting up idle timer for %g s, service account %@", &v10, 0x2Au);
    }

    self->_nextIdleFire = CFAbsoluteTimeGetCurrent() + self->_idleTimeout;
    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_addMonitoredInvocationForIdleConnectionDisconnection" selector:0 userInfo:0 repeats:self->_idleTimeout];
    v9 = self->_idleTimer;
    self->_idleTimer = v8;
  }

LABEL_10:
  [(NSRecursiveLock *)self->_idleLock unlock];
}

- (void)releaseAllConnections
{
  [(NSRecursiveLock *)self->_idleLock lock];
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315650;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sReleasing connections, we will also stop waiting for idle connections for service account %@", buf, 0x20u);
  }

  [(NSTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  [(NSRecursiveLock *)self->_idleLock unlock];
  v6.receiver = self;
  v6.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v6 releaseAllConnections];
}

- (id)connectionForStore:(id)store delegate:(id)delegate options:(unsigned int)options
{
  v5 = *&options;
  storeCopy = store;
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  password = [WeakRetained password];
  v12 = [password length];

  if (v12)
  {
    v20.receiver = self;
    v20.super_class = IMAPServiceAccount;
    v13 = [(IMAPServiceAccount *)&v20 connectionForStore:storeCopy delegate:delegateCopy options:v5];
    readBufferSize = [(IMAPServiceAccount *)self readBufferSize];
    [v13 setReadBufferSize:readBufferSize];
    [v13 setDesiredReadBufferLength:readBufferSize];
    if (v13)
    {
      v15 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315650;
        v22 = v16;
        v23 = 2080;
        v24 = " ";
        v25 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sIdle Timer: A connection was used, poking idle timer for service account %@", buf, 0x20u);
      }

      [(IMAPServiceAccount *)self performSelectorOnMainThread:"_startIdleTimer" withObject:0 waitUntilDone:0];
    }
  }

  else
  {
    v17 = [NSError errorWithDomain:kVVErrorDomain code:1003 localizedDescription:0];
    v18 = +[MFActivityMonitor currentTracebleMonitor];
    [v18 setError:v17];

    v13 = 0;
  }

  return v13;
}

- (void)checkInConnectionsPolitelyForStore:(id)store
{
  v3.receiver = self;
  v3.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v3 checkInConnectionsForStore:store];
}

- (void)checkInConnectionsForStore:(id)store
{
  storeCopy = store;
  v5 = OBJC_IVAR___IMAP_Account__connectionLock;
  [*&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__connectionLock] lock];
  *(self + 352) |= 1u;
  v6.receiver = self;
  v6.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v6 checkInConnectionsForStore:storeCopy];
  *(self + 352) &= ~1u;
  [*&self->IMAP_Account_opaque[v5] unlock];
}

- (void)checkInConnection:(id)connection
{
  connectionCopy = connection;
  v5 = OBJC_IVAR___IMAP_Account__connectionLock;
  [*&self->IMAP_Account_opaque[OBJC_IVAR___IMAP_Account__connectionLock] lock];
  if (*(self + 352))
  {
    [connectionCopy checkInForcefully];
  }

  else if (![connectionCopy checkIn])
  {
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = IMAPServiceAccount;
  [(IMAPServiceAccount *)&v6 checkInConnection:connectionCopy];
LABEL_6:
  [*&self->IMAP_Account_opaque[v5] unlock];
}

- (void)_clearConnectionCheckOuts
{
  v3 = +[IMAPServiceConnection heldConnectionsForCheckingIn];
  [v3 makeObjectsPerformSelector:"checkInToAccount:" withObject:self];
}

- (void)libraryIMAPStore:(id)store bodyDownloadBeganForUid:(unsigned int)uid data:(id)data section:(id)section
{
  v8 = *&uid;
  storeCopy = store;
  dataCopy = data;
  sectionCopy = section;
  v13 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v17 = 136316162;
    v18 = v14;
    v19 = 2080;
    v20 = " ";
    v21 = 1024;
    v22 = v8;
    v23 = 2112;
    v24 = sectionCopy;
    v25 = 2048;
    v26 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sVVLOAD START %u: %@ %lu\n", &v17, 0x30u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_service);
  _bodyLoadMonitor = [WeakRetained _bodyLoadMonitor];
  [_bodyLoadMonitor bodyLoadStartedForRemoteUid:v8 inStore:storeCopy data:dataCopy section:sectionCopy];
}

- (void)libraryIMAPStore:(id)store bodyDownloadReceivedMoreDataForUid:(unsigned int)uid data:(id)data section:(id)section
{
  v8 = *&uid;
  storeCopy = store;
  dataCopy = data;
  sectionCopy = section;
  v13 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v17 = 136316162;
    v18 = v14;
    v19 = 2080;
    v20 = " ";
    v21 = 1024;
    v22 = v8;
    v23 = 2112;
    v24 = sectionCopy;
    v25 = 2048;
    v26 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sVVLOAD MORE %u: %@ %lu\n", &v17, 0x30u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_service);
  _bodyLoadMonitor = [WeakRetained _bodyLoadMonitor];
  [_bodyLoadMonitor bodyLoadContinuedForRemoteUid:v8 inStore:storeCopy data:dataCopy section:sectionCopy];
}

- (void)libraryIMAPStore:(id)store bodyDownloadCompletedForUid:(unsigned int)uid data:(id)data section:(id)section
{
  v8 = *&uid;
  storeCopy = store;
  dataCopy = data;
  sectionCopy = section;
  v13 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *&self->IMAP_Account_opaque[OBJC_IVAR___MFAccount_mambaID];
    v17 = 136316162;
    v18 = v14;
    v19 = 2080;
    v20 = " ";
    v21 = 1024;
    v22 = v8;
    v23 = 2112;
    v24 = sectionCopy;
    v25 = 2048;
    v26 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sVVLOAD END: %u: %@ %lu\n", &v17, 0x30u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_service);
  _bodyLoadMonitor = [WeakRetained _bodyLoadMonitor];
  [_bodyLoadMonitor bodyLoadEndedForRemoteUid:v8 inStore:storeCopy data:dataCopy section:sectionCopy];
}

- (IMAPService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (MFInvocationQueue)invocationQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_invocationQueue);

  return WeakRetained;
}

@end