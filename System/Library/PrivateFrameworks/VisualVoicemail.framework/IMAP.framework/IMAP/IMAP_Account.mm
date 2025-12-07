@interface IMAP_Account
+ (void)_deleteQueuedMailboxes:(id)mailboxes;
- (BOOL)_deleteMailbox:(id)mailbox;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)canFetch;
- (BOOL)canMailboxBeDeleted:(id)deleted;
- (BOOL)connectAndAuthenticate:(id)authenticate;
- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command;
- (BOOL)getMailboxListWithConnection:(id)connection statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox;
- (BOOL)hasPendingOfflineOperations;
- (BOOL)isMailboxLocalForType:(int)type;
- (BOOL)isSpecialMailbox:(id)mailbox;
- (BOOL)needToSynchronizeMailboxCaches;
- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (BOOL)storeMailboxTypeOnServer:(int)server;
- (BOOL)verifyESearchSupportWithBlock:(id)block;
- (IMAP_Account)initWithLibrary:(id)library;
- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unsigned int)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary;
- (id)_dataForTemporaryUid:(unsigned int)uid;
- (id)_fileSystemServerPathPrefix;
- (id)_infoForMatchingURL:(id)l;
- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children;
- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed;
- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed statusDataItems:(id)items withConnection:(id)connection statusEntriesByMailbox:(id *)mailbox;
- (id)_mailboxPathPrefix;
- (id)_mailboxUidForName:(id)name;
- (id)_nameForMailboxUid:(id)uid;
- (id)_newMailboxWithParent:(id)parent name:(id)name attributes:(unsigned int)attributes dictionary:(id)dictionary withCreationOption:(int)option;
- (id)_pathComponentForUidName:(id)name;
- (id)_specialMailboxUidWithType:(int)type create:(BOOL)create;
- (id)_uidNameForPathComponent:(id)component;
- (id)allMailMailboxUid;
- (id)connectionForStore:(id)store delegate:(id)delegate options:(unsigned int)options;
- (id)errorForResponse:(id)response;
- (id)fetchLimits;
- (id)flagChangesForMailboxPath:(id)path UID:(unsigned int)d connectTime:(double)time;
- (id)hostname;
- (id)lastKnownCapabilities;
- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create;
- (id)moveMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox markAsRead:(BOOL)read;
- (id)nameForMailboxUid:(id)uid;
- (id)offlineCache;
- (id)offlineCacheDirectoryPath;
- (id)offlineCacheIfExists;
- (id)offlineCacheIfOffline;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)serverPathPrefixAccountValue;
- (id)specialUseAttributeForType:(int)type;
- (id)specialUseAttributesForMailbox:(id)mailbox;
- (unint64_t)greatestInboxUid;
- (unsigned)readBufferSize;
- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)changes;
- (void)_flushOfflineCache;
- (void)_mailboxesWereRemovedFromTree:(id)tree withFileSystemPaths:(id)paths;
- (void)_purgeStaleFlagChanges;
- (void)_readCustomInfoFromMailboxCache:(id)cache;
- (void)_releaseAllConnectionsAndCallSuper:(BOOL)super edgeForcedOnly:(BOOL)only ifIdleForTimeInterval:(double)interval saveOfflineCache:(BOOL)cache;
- (void)_renameLocalSpecialMailboxesToName:(id)name;
- (void)_setCapabilities:(id)capabilities;
- (void)_setSpecialMailbox:(id)mailbox forType:(int)type;
- (void)_synchronizeAccountWithServer;
- (void)_synchronouslyLoadListingForParent:(id)parent;
- (void)_updateSeparatorAndNamespaceWithConnection:(id)connection;
- (void)_waitForMailboxListingLoadToComplete;
- (void)_writeCustomInfoToMailboxCache:(id)cache;
- (void)addFlagChanges:(id)changes forMailboxPath:(id)path UID:(unsigned int)d;
- (void)checkInConnection:(id)connection destroy:(BOOL)destroy;
- (void)checkInConnectionsForStore:(id)store;
- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id *)command;
- (void)connectionDidDisconnect:(id)disconnect;
- (void)dealloc;
- (void)deleteMessagesFromMailboxUid:(id)uid olderThanNumberOfDays:(unsigned int)days;
- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int)options;
- (void)flushOfflineCache;
- (void)handleAlertResponse:(id)response;
- (void)messagesAdded:(id)added;
- (void)networkChanged;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)releaseAllForcedConnections;
- (void)removeFlagChanges:(id)changes forMessages:(id)messages;
- (void)removeFlagChangesCommittedBefore:(double)before;
- (void)saveState;
- (void)setAllowsPartialDownloads:(BOOL)downloads;
- (void)setCommitTime:(double)time forConnectionTag:(unsigned int)tag;
- (void)setCompactWhenClosingMailboxes:(BOOL)mailboxes;
- (void)setConnectionTag:(unsigned int)tag forFlagChanges:(id)changes forMessages:(id)messages;
- (void)setDisplayName:(id)name;
- (void)setHandlerForOfflineCacheFlush:(id)flush;
- (void)setIsOffline:(BOOL)offline;
- (void)setLibrary:(id)library;
- (void)setServerPathPrefix:(id)prefix shouldSync:(BOOL)sync;
- (void)setStoreMailboxType:(int)type onServer:(BOOL)server;
- (void)throttledGetMailboxListWithConnection:(id)connection;
- (void)unselectMailbox:(id)mailbox;
@end

@implementation IMAP_Account

- (IMAP_Account)initWithLibrary:(id)library
{
  libraryCopy = library;
  v20.receiver = self;
  v20.super_class = IMAP_Account;
  v5 = [(MailAccount *)&v20 initWithLibrary:libraryCopy];
  v6 = v5;
  if (v5)
  {
    *(v5 + 312) |= 2u;
    v5->_greatestInboxUid = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"flagChangesLock" andDelegate:v5];
    flagChangesLock = v6->_flagChangesLock;
    v6->_flagChangesLock = v7;

    v9 = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"connectionLock" andDelegate:v6];
    connectionLock = v6->_connectionLock;
    v6->_connectionLock = v9;

    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v12 = [v11 initWithObjects:{v6->_connectionLock, v6->_flagChangesLock, *MEMORY[0x277D24EB8], 0}];
    lockOrderingArray = v6->_lockOrderingArray;
    v6->_lockOrderingArray = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    eSearchSupportedLock = v6->_eSearchSupportedLock;
    v6->_eSearchSupportedLock = v14;

    *(v6 + 344) &= ~1u;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__1;
    v18[4] = __Block_byref_object_dispose__1;
    v19 = v6;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __32__IMAP_Account_initWithLibrary___block_invoke;
    v17[3] = &unk_279E34BF8;
    v17[4] = v18;
    [(IMAP_Account *)v19 setHandlerForOfflineCacheFlush:v17];
    _Block_object_dispose(v18, 8);
  }

  return v6;
}

- (void)messagesAdded:(id)added
{
  v20 = *MEMORY[0x277D85DE8];
  userInfo = [added userInfo];
  v4 = [userInfo objectForKey:@"mailboxes"];
  if ([v4 count])
  {
    lastObject = [v4 lastObject];
    if ([lastObject type] == 7)
    {
      account = [lastObject account];

      if (account == self)
      {
        [userInfo objectForKey:@"messages"];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v6 = v16 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          v8 = *v16;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v15 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v11 = [v10 uid];
                greatestInboxUid = self->_greatestInboxUid;
                if (greatestInboxUid < v11)
                {
                  greatestInboxUid = [v10 uid];
                }

                self->_greatestInboxUid = greatestInboxUid;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v7);
        }
      }
    }
  }
}

- (unint64_t)greatestInboxUid
{
  result = self->_greatestInboxUid;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
    library = [(MailAccount *)self library];
    uRLString = [primaryMailboxUid URLString];
    self->_greatestInboxUid = [library maximumRemoteIDForMailbox:uRLString];

    return self->_greatestInboxUid;
  }

  return result;
}

- (void)_readCustomInfoFromMailboxCache:(id)cache
{
  cacheCopy = cache;
  v5 = [cacheCopy objectForKey:@"separator"];
  v6 = [cacheCopy objectForKey:@"namespace"];
  _MFLockGlobalLock();
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToString:&stru_288159858] & 1) == 0)
    {
      v7 = [v5 copyWithZone:0];
      separatorChar = self->_separatorChar;
      self->_separatorChar = v7;
    }
  }

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 isEqualToString:&stru_288159858] & 1) == 0)
    {
      objc_storeStrong(&self->_serverNamespace, v6);
    }
  }

  if (!self->_lastKnownCapabilities)
  {
    v9 = [cacheCopy objectForKey:@"capabilities"];
    lastKnownCapabilities = self->_lastKnownCapabilities;
    self->_lastKnownCapabilities = v9;
  }

  _MFUnlockGlobalLock();
  v11.receiver = self;
  v11.super_class = IMAP_Account;
  [(MailAccount *)&v11 _readCustomInfoFromMailboxCache:cacheCopy];
}

- (void)_writeCustomInfoToMailboxCache:(id)cache
{
  cacheCopy = cache;
  _MFLockGlobalLock();
  separatorChar = self->_separatorChar;
  if (separatorChar)
  {
    [cacheCopy setObject:separatorChar forKey:@"separator"];
  }

  serverNamespace = self->_serverNamespace;
  if (serverNamespace)
  {
    [cacheCopy setObject:serverNamespace forKey:@"namespace"];
  }

  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (lastKnownCapabilities)
  {
    [cacheCopy setObject:lastKnownCapabilities forKey:@"capabilities"];
  }

  _MFUnlockGlobalLock();
  v8.receiver = self;
  v8.super_class = IMAP_Account;
  [(MailAccount *)&v8 _writeCustomInfoToMailboxCache:cacheCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    CFRelease(cachedConnections);
  }

  mailboxesToSynchronize = self->_mailboxesToSynchronize;
  if (mailboxesToSynchronize)
  {
    CFRelease(mailboxesToSynchronize);
  }

  [(IMAP_Account *)self setHandlerForOfflineCacheFlush:0];
  v6.receiver = self;
  v6.super_class = IMAP_Account;
  [(MailAccount *)&v6 dealloc];
}

- (void)saveState
{
  offlineCacheIfExists = [(IMAP_Account *)self offlineCacheIfExists];
  [offlineCacheIfExists saveChanges];

  v4.receiver = self;
  v4.super_class = IMAP_Account;
  [(MailAccount *)&v4 saveState];
}

- (id)hostname
{
  v5.receiver = self;
  v5.super_class = IMAP_Account;
  hostname = [(MFAccount *)&v5 hostname];
  [(MailAccount *)self setLastKnownHostname:hostname];

  return hostname;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  [(IMAP_Account *)self _renameLocalSpecialMailboxesToName:nameCopy];
  v5.receiver = self;
  v5.super_class = IMAP_Account;
  [(MFAccount *)&v5 setDisplayName:nameCopy];
}

- (void)setCompactWhenClosingMailboxes:(BOOL)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([(IMAP_Account *)self compactWhenClosingMailboxes]!= mailboxes)
  {
    _MFLockGlobalLock();
    v5 = [MEMORY[0x277CCABB0] numberWithBool:mailboxesCopy];
    [(MFAccount *)self setAccountProperty:v5 forKey:@"CompactWhenClosingMailboxes"];

    _MFUnlockGlobalLock();

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (BOOL)needToSynchronizeMailboxCaches
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DaysBetweenSyncs"];
  intValue = [v3 intValue];

  if (!intValue)
  {
    return 1;
  }

  v5 = [(MFAccount *)self _objectForAccountInfoKey:@"DateOfLastSync"];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v8 = [v7 dateByAddingUnit:64 value:-30 toDate:v6 options:0];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [v7 components:16 fromDate:v8 toDate:date options:0];

  v11 = [v10 day] >= intValue;
  return v11;
}

- (void)_didSynchronizeMailboxCachesAndFoundChanges:(BOOL)changes
{
  changesCopy = changes;
  _MFLockGlobalLock();
  date = [MEMORY[0x277CBEAA8] date];
  [(MFAccount *)self setAccountProperty:date forKey:@"DateOfLastSync"];

  _MFUnlockGlobalLock();
  v6 = [(MFAccount *)self _objectForAccountInfoKey:@"DaysBetweenSyncs"];
  unsignedIntValue = [v6 unsignedIntValue];

  if (!unsignedIntValue)
  {
    v8 = 7;
    goto LABEL_15;
  }

  if (!changesCopy)
  {
    if (unsignedIntValue <= 6)
    {
      v8 = unsignedIntValue + 1;
      goto LABEL_15;
    }

    if (unsignedIntValue >= 0x1C)
    {
      v8 = unsignedIntValue;
    }

    else
    {
      v8 = unsignedIntValue + 7;
    }

LABEL_14:
    if (unsignedIntValue == v8)
    {
      return;
    }

    goto LABEL_15;
  }

  if (unsignedIntValue < 8)
  {
    if (unsignedIntValue == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = unsignedIntValue - 1;
    }

    goto LABEL_14;
  }

  v8 = unsignedIntValue - 7;
LABEL_15:
  _MFLockGlobalLock();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  [(MFAccount *)self setAccountProperty:v9 forKey:@"DaysBetweenSyncs"];

  _MFUnlockGlobalLock();
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  v5.receiver = self;
  v5.super_class = IMAP_Account;
  return [(MailAccount *)&v5 _setChildren:children forMailboxUid:uid];
}

- (BOOL)storeMailboxTypeOnServer:(int)server
{
  v3 = 0;
  do
  {
    v6 = *&_storeOnServer[v3];
    v7 = *&_storeOnServer[v3 + 4];
    if (v6 == server)
    {
      break;
    }

    v4 = v3 == 24;
    v3 += 6;
  }

  while (!v4);
  return _storeOnServerForTuple(self, &v6);
}

- (void)setStoreMailboxType:(int)type onServer:(BOOL)server
{
  serverCopy = server;
  v6 = 4;
  v7 = _storeOnServer;
  do
  {
    v9 = *v7;
    v7 += 6;
    v8 = v9;
  }

  while (v9 != type && v6-- != 0);
  v11 = *(v7 - 2);
  v13[0] = v8;
  v13[1] = 0;
  v14 = v11;
  v15 = 1;
  if (_storeOnServerForTuple(self, v13) != server)
  {
    _MFLockGlobalLock();
    v12 = [MEMORY[0x277CCABB0] numberWithBool:serverCopy];
    [(MFAccount *)self setAccountProperty:v12 forKey:v11];

    _MFUnlockGlobalLock();
    [(MailAccount *)self resetSpecialMailboxes];

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)handleAlertResponse:(id)response
{
  responseCopy = response;
  v4 = MEMORY[0x277CCACA8];
  displayName = [(MailAccount *)self displayName];
  responseCopy = [v4 stringWithFormat:@"The IMAP server for “%@” wishes to alert you to the following:\n\n%@", displayName, responseCopy];

  _MFLockGlobalLock();
  v7 = [IMAP_Account handleAlertResponse:]::_handledAlerts;
  if (![IMAP_Account handleAlertResponse:]::_handledAlerts)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = [IMAP_Account handleAlertResponse:]::_handledAlerts;
    [IMAP_Account handleAlertResponse:]::_handledAlerts = v8;

    v7 = [IMAP_Account handleAlertResponse:]::_handledAlerts;
  }

  if ([v7 containsObject:responseCopy])
  {

    responseCopy = 0;
  }

  else
  {
    [-[IMAP_Account handleAlertResponse:]::_handledAlerts addObject:responseCopy];
  }

  _MFUnlockGlobalLock();
  if (responseCopy)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:responseCopy title:@"Warning" userInfo:0];
    [(MailAccount *)self setConnectionError:v10];
  }
}

- (id)errorForResponse:(id)response
{
  responseCopy = response;
  if (([responseCopy isResponseWithCode:17] & 1) != 0 || objc_msgSend(responseCopy, "isAlertResponse"))
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1039 localizedDescription:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)readBufferSize
{
  readBufferSize = self->_readBufferSize;
  if (!readBufferSize)
  {
    readBufferSize = 0x2000;
    self->_readBufferSize = 0x2000;
  }

  return readBufferSize;
}

- (id)_dataForTemporaryUid:(unsigned int)uid
{
  if (uid)
  {
    v3 = *&uid;
    offlineCacheDirectoryPath = [(IMAP_Account *)self offlineCacheDirectoryPath];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v3];
    v6 = [offlineCacheDirectoryPath stringByAppendingPathComponent:v5];

    v7 = [objc_allocWithZone(MEMORY[0x277D24F00]) initWithContentsOfFile:v6 options:1 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAllowsPartialDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  _MFLockGlobalLock();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:!downloadsCopy];
  [(MFAccount *)self setAccountProperty:v5 forKey:@"PreventDismemberment"];

  _MFUnlockGlobalLock();
}

- (BOOL)connectAndAuthenticate:(id)authenticate
{
  authenticateCopy = authenticate;
  v5 = *(self + 312);
  v6 = +[MFActivityMonitor currentMonitor];
  connectionState = [authenticateCopy connectionState];
  if ((connectionState - 2) >= 2)
  {
    v8 = (v5 >> 1) & 1;
    if (connectionState)
    {
      if (connectionState == 1)
      {
        v9 = 0;
        goto LABEL_5;
      }
    }

    else if (([v6 shouldCancel] & 1) == 0)
    {
      if (([authenticateCopy connectUsingAccount:self] & 1) == 0)
      {
        error = [v6 error];
        preferredAuthScheme = error;
        if (!error || ([error mf_isUserCancelledError] & 1) != 0)
        {
          v8 = 0;
          error2 = 0;
          goto LABEL_22;
        }

        error2 = [v6 error];
LABEL_21:
        v8 = 1;
LABEL_22:

        if (error2)
        {
          v14 = +[MFNetworkController sharedInstance];
          isNetworkUp = [v14 isNetworkUp];

          if (isNetworkUp)
          {
            if (([error2 mf_isUserCancelledError] & 1) == 0)
            {
              [(MailAccount *)self setConnectionError:error2];
            }
          }
        }

LABEL_12:
        v11 = 0;
        if ((v8 ^ ((*(self + 312) & 2) == 0)))
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      v9 = 1;
LABEL_5:
      if ([authenticateCopy authenticateUsingAccount:self])
      {
        [(MailAccount *)self setConnectionError:0];
        if (v9)
        {
          [(IMAP_Account *)self _updateSeparatorAndNamespaceWithConnection:authenticateCopy];
          [(IMAP_Account *)self throttledGetMailboxListWithConnection:authenticateCopy];
        }

        goto LABEL_8;
      }

      error2 = [v6 error];
      if ([(MFAccount *)self shouldEnableAfterError:error2])
      {
        [(MFAccount *)self enableAccount];
      }

      if (!error2)
      {
        error2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:0];
        [v6 setError:error2];
      }

      preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
      [(MFAccount *)self reportAuthenticationError:error2 authScheme:preferredAuthScheme];
      goto LABEL_21;
    }

    error2 = 0;
    goto LABEL_12;
  }

LABEL_8:
  error2 = 0;
  v11 = 1;
  if ((*(self + 312) & 2) == 0)
  {
    goto LABEL_15;
  }

  v8 = 0;
LABEL_13:
  [(IMAP_Account *)self setIsOffline:v8];
  if ((v8 & 1) == 0)
  {
    [authenticateCopy setReadBufferSize:{-[IMAP_Account readBufferSize](self, "readBufferSize")}];
  }

LABEL_15:

  return v11;
}

- (id)connectionForStore:(id)store delegate:(id)delegate options:(unsigned int)options
{
  v80 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  delegateCopy = delegate;
  v62 = storeCopy;
  mailboxUid = [storeCopy mailboxUid];
  if (storeCopy)
  {
    mailboxName = [storeCopy mailboxName];
    if (!mailboxName)
    {
      mailboxName = [(IMAP_Account *)self _nameForMailboxUid:mailboxUid];
      if (!mailboxName)
        v8 = {;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [IMAP_Account connectionForStore:storeCopy delegate:v8 options:?];
        }

        v67 = 0;
        goto LABEL_126;
      }
    }
  }

  else
  {
    mailboxName = 0;
  }

  v68 = mailboxName;
  while (2)
  {
    selfCopy = self;
    v67 = v68;
    v11 = v10 = delegateCopy;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = selfCopy->super.super.mambaID;
      *buf = 136316930;
      *&buf[4] = mambaID;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2112;
      selfCopy2 = self;
      *v71 = 2112;
      *&v71[2] = v68;
      v72 = 2112;
      v73 = delegateCopy;
      v74 = 1024;
      v75 = options & 1;
      v76 = 1024;
      v77 = (options >> 3) & 1;
      v78 = 1024;
      v79 = (options >> 2) & 1;
      _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s_getPotentialConnectionForMailbox : account:%@ mailboxName:%@, delegate:%@, createIfNeeded:%d, dontCareAboutMailbox:%d, lock:%d", buf, 0x46u);
    }

    v13 = +[MFActivityMonitor currentMonitor];
    [v13 setError:0];

    [(NSRecursiveLock *)selfCopy->_connectionLock lock];
    [(IMAP_Account *)selfCopy mf_lock];
    cachedConnections = selfCopy->_cachedConnections;
    if (options)
    {
      if (cachedConnections)
      {
        goto LABEL_15;
      }

      *buf = 0;
      *&buf[8] = *(MEMORY[0x277CBF128] + 8);
      selfCopy2 = *(MEMORY[0x277CBF128] + 24);
      *v71 = 0;
      cachedConnections = CFArrayCreateMutable(0, 0, buf);
      selfCopy->_cachedConnections = cachedConnections;
    }

    if (!cachedConnections)
    {
      v15 = 0;
      goto LABEL_17;
    }

LABEL_15:
    cachedConnections = CFArrayGetCount(cachedConnections);
    v15 = cachedConnections;
    v16 = LABEL_17:;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = selfCopy->super.super.mambaID;
      *buf = 136315650;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      selfCopy2 = v15;
      _os_log_impl(&dword_2720B1000, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s_getPotentialConnectionForMailbox : %lu cached connections", buf, 0x20u);
    }

    if (v15)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v21 = v20 = CFArrayGetValueAtIndex(selfCopy->_cachedConnections, v18);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = selfCopy->super.super.mambaID;
          *buf = 136315906;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2048;
          selfCopy2 = v18;
          *v71 = 2112;
          *&v71[2] = v20;
          _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sconnection %lu: %@", buf, 0x2Au);
        }

        delegate = [(_anonymous_namespace_::staticLogger_t *)v20 delegate];
        v24 = delegate;
        if (delegate != v10)
        {
          break;
        }

        if ((options & 4) != 0)
        {
          mf_tryLock = [(_anonymous_namespace_::staticLogger_t *)v20 mf_tryLock];

          if ((mf_tryLock & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
        }

        v8 = v20;
        v19 = v18;
LABEL_31:

        if (++v18 >= v15 || v8)
        {
          if (v8)
          {
            goto LABEL_34;
          }

          v39 = 0;
          while (1)
          {
            v40 = CFArrayGetValueAtIndex(selfCopy->_cachedConnections, v39);
            delegate2 = [v40 delegate];
            if (delegate2)
            {
            }

            else if ((options & 4) == 0 || [v40 mf_tryLock])
            {
              if (v68)
              {
                selectedMailbox = [v40 selectedMailbox];
                v43 = [selectedMailbox isEqualToString:v67];

                if (v43)
                {
LABEL_81:
                  v8 = v40;
                  if ((options & 4) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_82;
                }
              }

              else
              {
                if ((options & 8) != 0)
                {
                  goto LABEL_81;
                }

                selectedMailbox2 = [v40 selectedMailbox];
                v45 = selectedMailbox2 == 0;

                if (v45)
                {
                  goto LABEL_81;
                }
              }

              v8 = 0;
              if ((options & 4) == 0)
              {
                goto LABEL_68;
              }

LABEL_82:
              if (v8)
              {
                goto LABEL_68;
              }

              [v40 mf_unlock];
            }

            v8 = 0;
LABEL_68:
            v27 = v8 == 0;
            if (v8)
            {
              v19 = v39;
            }

            if (++v39 >= v15 || !v27)
            {
              goto LABEL_36;
            }
          }
        }
      }

LABEL_25:
      v8 = 0;
      goto LABEL_31;
    }

    v19 = 0;
    v8 = 0;
    v27 = 1;
LABEL_36:
    v26 = 0;
    if ((options & 1) == 0 || !v27)
    {
      goto LABEL_55;
    }

    if (!v68 || !v15)
    {
LABEL_50:
      v31 = v8 = [(MFAccount *)selfCopy _newConnection];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = selfCopy->super.super.mambaID;
        *buf = 136315650;
        *&buf[4] = v32;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2112;
        selfCopy2 = v8;
        _os_log_impl(&dword_2720B1000, v31, OS_LOG_TYPE_DEFAULT, "#I %s%screated new connection: %@", buf, 0x20u);
      }

      if ((options & 4) != 0)
      {
        [v8 mf_lock];
      }

      [v8 setTag:selfCopy->_nextConnectionTag++];
      [v8 setMailboxListFilter:selfCopy];
      CFArrayAppendValue(selfCopy->_cachedConnections, v8);
      v26 = 1;
      v19 = v15;
      goto LABEL_55;
    }

    v28 = 0;
    do
    {
      v29 = CFArrayGetValueAtIndex(selfCopy->_cachedConnections, v28);
      delegate3 = [v29 delegate];
      if (delegate3)
      {
      }

      else if ((options & 4) == 0 || [v29 mf_tryLock])
      {
        v8 = v29;
        v19 = v28;
        goto LABEL_47;
      }

      v8 = 0;
LABEL_47:

      ++v28;
    }

    while (v28 < v15 && !v8);
    if (!v8)
    {
      goto LABEL_50;
    }

LABEL_34:
    v26 = 0;
LABEL_55:
    [(IMAP_Account *)selfCopy mf_unlock];
    if (!v8)
    {
      goto LABEL_102;
    }

    if ((options & 1) == 0)
    {
      if ([v8 connectionState]>= 2)
      {
        goto LABEL_91;
      }

LABEL_85:
      isFatPipe = 0;
      goto LABEL_88;
    }

    v33 = MFUserAgent();
    isMobileMail = [v33 isMobileMail];

    if (!isMobileMail)
    {
      if ([(IMAP_Account *)selfCopy connectAndAuthenticate:v8])
      {
        goto LABEL_91;
      }

      goto LABEL_85;
    }

    CFArrayRemoveValueAtIndex(selfCopy->_cachedConnections, v19);
    [(NSRecursiveLock *)selfCopy->_connectionLock unlock];
    v35 = [(IMAP_Account *)selfCopy connectAndAuthenticate:v8];
    [(NSRecursiveLock *)selfCopy->_connectionLock lock];
    Mutable = selfCopy->_cachedConnections;
    if (!Mutable)
    {
      *buf = 0;
      *&buf[8] = *(MEMORY[0x277CBF128] + 8);
      selfCopy2 = *(MEMORY[0x277CBF128] + 24);
      *v71 = 0;
      Mutable = CFArrayCreateMutable(0, 0, buf);
      selfCopy->_cachedConnections = Mutable;
    }

    CFArrayAppendValue(Mutable, v8);
    if ([v8 isCellularConnection])
    {
      v37 = +[MFNetworkController sharedInstance];
      isFatPipe = [v37 isFatPipe];
    }

    else
    {
      isFatPipe = 0;
    }

    if ((isFatPipe | !v35))
    {
LABEL_88:
      if ((options & 4) != 0)
      {
        [v8 mf_unlock];
      }

      [(IMAP_Account *)selfCopy checkInConnection:v8 destroy:isFatPipe];
      goto LABEL_100;
    }

LABEL_91:
    offlineCache = selfCopy->_offlineCache;
    if (!offlineCache)
    {
      v47 = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:selfCopy];
      v48 = selfCopy->_offlineCache;
      selfCopy->_offlineCache = v47;

      offlineCache = selfCopy->_offlineCache;
    }

    if ([(MFIMAPOperationCache *)offlineCache hasPendingOfflineOperations])
    {
      [(MFIMAPOperationCache *)selfCopy->_offlineCache performDeferredOperationsWithConnection:v8];
    }

    if ([v8 isValid])
    {
      v49 = selfCopy->_offlineCache;
      selfCopy->_offlineCache = 0;
    }

    else
    {
      if ((options & 4) != 0)
      {
        [v8 mf_unlock];
      }

      [(IMAP_Account *)selfCopy checkInConnection:v8];
LABEL_100:
      v49 = v8;
      v8 = 0;
    }

LABEL_102:
    if (v68)
    {
      selectedMailbox3 = [v8 selectedMailbox];
      delegate4 = [v8 delegate];
      v52 = 1;
      if (delegate4 == v10 && selectedMailbox3)
      {
        v52 = [v67 isEqualToString:selectedMailbox3] ^ 1;
      }
    }

    else
    {
      v52 = 0;
    }

    [v8 setDelegate:v10];
    [(NSRecursiveLock *)selfCopy->_connectionLock unlock];

    if (v8)
    {
      if ((options & 0x10) != 0)
      {
        v53 = v26;
      }

      else
      {
        v53 = 1;
      }

      if ((v53 & 1) == 0)
      {
        [v8 noop];
      }

      if (v52)
      {
        if ((options & 2) == 0)
        {
          if ([v8 selectMailbox:v67 withAccount:selfCopy])
          {
            [(IMAP_Account *)selfCopy setCommitTime:[v8 tag] forConnectionTag:CFAbsoluteTimeGetCurrent()];
            break;
          }

LABEL_119:
          if ((options & 4) != 0)
          {
            [v8 mf_unlock];
          }

          if (![v8 isValid])
          {
            [(IMAP_Account *)selfCopy checkInConnection:v8];

            if (v26)
            {
LABEL_127:
              v8 = 0;
              break;
            }

            continue;
          }

          v54 = +[MFActivityMonitor currentMonitor];
          error = [v54 error];

          if (error)
          {
            v56 = MEMORY[0x277CCACA8];
            displayName = [mailboxUid displayName];
            v58 = [v56 stringWithFormat:@"Unable to open “%@”", displayName];
            v59 = [error setShortDescription:v58];

            v60 = +[MFActivityMonitor currentMonitor];
            [v60 setError:v59];
          }

LABEL_126:

          goto LABEL_127;
        }

        if (([v8 examineMailbox:v67]& 1) == 0)
        {
          goto LABEL_119;
        }
      }
    }

    break;
  }

  return v8;
}

- (void)_purgeStaleFlagChanges
{
  v22 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  [(IMAP_Account *)self mf_lock];
  cachedConnections = self->_cachedConnections;
  if (cachedConnections)
  {
    Count = CFArrayGetCount(cachedConnections);
    if (Count)
    {
      v5 = Count;
      Current = CFAbsoluteTimeGetCurrent();
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v8 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
          [v8 connectTime];
          if (v9 < Current)
          {
            [v8 connectTime];
            Current = v10;
          }
        }
      }

      [(IMAP_Account *)self mf_unlock];
      [(IMAP_Account *)self removeFlagChangesCommittedBefore:Current];
      goto LABEL_14;
    }

    v11 = self->_cachedConnections;
    if (v11)
    {
      CFRelease(v11);
    }
  }

  v12 = self->_cachedConnections = 0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    vf_publicDescription = [(MFAccount *)self vf_publicDescription];
    v16 = 136315650;
    v17 = mambaID;
    v18 = 2080;
    v19 = " ";
    v20 = 2114;
    v21 = vf_publicDescription;
    _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges removing all changes: %{public}@", &v16, 0x20u);
  }

  recentFlagChanges = self->_recentFlagChanges;
  self->_recentFlagChanges = 0;

LABEL_14:
  [(NSRecursiveLock *)self->_flagChangesLock unlock];
}

- (void)checkInConnection:(id)connection destroy:(BOOL)destroy
{
  v33 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (!connectionCopy)
  {
    goto LABEL_25;
  }

  [(NSRecursiveLock *)self->_connectionLock lock];
  if (![connectionCopy mf_tryLock])
  {
    goto LABEL_13;
  }

  [connectionCopy setDelegate:0];
  connectionState = [connectionCopy connectionState];
  [connectionCopy mf_unlock];
  [(IMAP_Account *)self mf_lock];
  if ([connectionCopy gotBadResponse])
  {
    [(IMAP_Account *)self _setCapabilities:0];
  }

  if (destroy)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_15;
  }

  if (!self->_cachedConnections)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if ((connectionState - 2) >= 2)
  {
    v9 = 0;
    if (!connectionState)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_15;
    }

    if (connectionState == 1)
    {
      v9 = 1;
      goto LABEL_12;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  selectedMailbox = [connectionCopy selectedMailbox];
  Count = CFArrayGetCount(self->_cachedConnections);
  if (Count < 1)
  {
    v9 = 0;
    v8 = 1;
    goto LABEL_37;
  }

  v9 = 0;
  v14 = 1;
  while (1)
  {
    v15 = CFArrayGetValueAtIndex(self->_cachedConnections, v14 - 1);
    v16 = v15;
    if (v15 != connectionCopy)
    {
      break;
    }

    v20 = 0;
LABEL_32:

    if (v14 < Count)
    {
      ++v14;
      if (!v20)
      {
        continue;
      }
    }

    v8 = !v20;
    goto LABEL_37;
  }

  selectedMailbox2 = [v15 selectedMailbox];
  v18 = [selectedMailbox2 isEqual:selectedMailbox];

  if (!v18)
  {
    delegate = [v16 delegate];
    v20 = delegate == 0;

    v9 |= v20;
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 1;
LABEL_37:
  _shouldLogDeleteActivity = [(MailAccount *)self _shouldLogDeleteActivity];
  if (_shouldLogDeleteActivity)
    v22 = {;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->super.super.mambaID;
      *buf = 136315906;
      v26 = mambaID;
      v27 = 2080;
      v28 = " ";
      v29 = 2112;
      v30 = selectedMailbox;
      v31 = 2112;
      v32 = connectionCopy;
      _os_log_impl(&dword_2720B1000, v22, OS_LOG_TYPE_DEFAULT, "#W %s%sUnselected connection checked back in, mailbox: %@, connection: %@", buf, 0x2Au);
    }
  }

LABEL_15:
  [(IMAP_Account *)self mf_unlock];
  if (v9)
  {
    if ([connectionCopy logout])
    {
      -[IMAP_Account setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [connectionCopy tag], CFAbsoluteTimeGetCurrent());
    }

    [connectionCopy disconnectAndNotifyDelegate:0 reason:"IMAP_Account-> should logout"];
  }

  if (!((self->_cachedConnections == 0) | v8 & 1))
  {
    [(IMAP_Account *)self mf_lock];
    v10 = CFArrayGetCount(self->_cachedConnections);
    v11 = connectionCopy;
    while (1)
    {
      v34.location = 0;
      v34.length = v10;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_cachedConnections, v34, v11);
      if (FirstIndexOfValue == -1)
      {
        break;
      }

      CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
      --v10;
    }

    [(IMAP_Account *)self mf_unlock];
    [(IMAP_Account *)self _purgeStaleFlagChanges];
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
LABEL_25:
}

- (void)checkInConnectionsForStore:(id)store
{
  storeCopy = store;
  if (storeCopy && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAP_Account *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      array = 0;
      for (i = 0; i != Count; ++i)
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, i);
        delegate = [v8 delegate];

        if (delegate == storeCopy)
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v8];
        }
      }
    }

    else
    {
      array = 0;
    }

    [(IMAP_Account *)self mf_unlock];
    v10 = [array count];
    if (v10 >= 1)
    {
      for (j = 0; j != v10; ++j)
      {
        v12 = [array objectAtIndex:j];
        [(IMAP_Account *)self checkInConnection:v12];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (BOOL)verifyESearchSupportWithBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_eSearchSupportedLock lock];
  eSearchSupported = self->_eSearchSupported;
  if (eSearchSupported)
  {
    LOBYTE(v6) = [(NSNumber *)eSearchSupported BOOLValue];
  }

  else
  {
    v6 = blockCopy[2](blockCopy);
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v8 = self->_eSearchSupported;
    self->_eSearchSupported = v7;
  }

  [(NSLock *)self->_eSearchSupportedLock unlock];

  return v6;
}

- (void)unselectMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (mailboxCopy && self->_cachedConnections)
  {
    [(NSRecursiveLock *)self->_connectionLock lock];
    [(IMAP_Account *)self mf_lock];
    cachedConnections = self->_cachedConnections;
    if (cachedConnections && (Count = CFArrayGetCount(cachedConnections), Count >= 1))
    {
      v6 = 0;
      array = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(self->_cachedConnections, v6);
        selectedMailbox = [v8 selectedMailbox];
        v10 = selectedMailbox;
        if (selectedMailbox && [selectedMailbox isEqualToString:mailboxCopy])
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v8];
          CFArrayRemoveValueAtIndex(self->_cachedConnections, v6);
          --Count;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 < Count);
    }

    else
    {
      array = 0;
    }

    [(IMAP_Account *)self mf_unlock];
    v11 = [array count];
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = [array objectAtIndex:i];
        if ([v13 isValid] && objc_msgSend(v13, "logout"))
        {
          -[IMAP_Account setCommitTime:forConnectionTag:](self, "setCommitTime:forConnectionTag:", [v13 tag], CFAbsoluteTimeGetCurrent());
        }

        [v13 disconnectAndNotifyDelegate:1 reason:"IMAP_Account-> unselected mailbox"];
      }
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }
}

- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int)options
{
  listCopy = list;
  v5 = [listCopy count];
  if (v5)
  {
    v6 = v5 - 1;
    do
    {
      v7 = [listCopy objectAtIndex:v6];
      v8 = [v7 objectForKey:@"MailboxName"];
      if ([v8 isEqualToString:@"Apple Mail To Do"])
      {
        [listCopy removeObjectAtIndex:v6];
      }

      --v6;
    }

    while (v6 != -1);
  }
}

- (void)_releaseAllConnectionsAndCallSuper:(BOOL)super edgeForcedOnly:(BOOL)only ifIdleForTimeInterval:(double)interval saveOfflineCache:(BOOL)cache
{
  cacheCopy = cache;
  superCopy = super;
  onlyCopy = only;
  v9 = v82 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    v12 = objc_opt_class();
    v13 = @"BT";
    *buf = 136316930;
    v67 = mambaID;
    v68 = 2080;
    v69 = " ";
    if (isMainThread)
    {
      v13 = @"MT";
    }

    v70 = 2112;
    v71 = v13;
    v14 = @"YES";
    v72 = 2112;
    v73 = v12;
    if (superCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v74 = 2112;
    if (onlyCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v75 = v15;
    if (!cacheCopy)
    {
      v14 = @"NO";
    }

    v76 = 2112;
    v77 = v16;
    v78 = 2048;
    intervalCopy = interval;
    v80 = 2112;
    v81 = v14;
    v17 = v12;
    _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network %@: [%@ _releaseAllConnectionsAndCallSuper:%@]", buf, 0x52u);
  }

  v64[0] = @"method";
  v64[1] = @"edgeOnly";
  v65[0] = @"_releaseAllConnectionsAndCallSuper";
  v18 = asNSStringBOOL(onlyCopy);
  v65[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  [MFPowerController powerlog:@"IMAP_Account" eventData:v19];

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(IMAP_Account *)self mf_lock];
    if (self->_cachedConnections)
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __105__IMAP_Account__releaseAllConnectionsAndCallSuper_edgeForcedOnly_ifIdleForTimeInterval_saveOfflineCache___block_invoke;
      v60[3] = &unk_279E34C20;
      v60[4] = self;
      v61 = superCopy;
      v62 = onlyCopy;
      *&v60[5] = interval;
      v63 = cacheCopy;
      v20 = [v60 copy];
      v21 = MEMORY[0x2743C3100]();
      v22 = [MFMonitoredInvocation invocationWithSelector:sel__invokeBlock_ target:self object:v21 taskName:0 priority:3 canBeCancelled:1];

      [v22 retainArguments];
      v23 = +[MFInvocationQueue sharedInvocationQueue];
      [v23 addInvocation:v22];
    }

    [(IMAP_Account *)self mf_unlock];
    return;
  }

  compactWhenClosingMailboxes = [(IMAP_Account *)self compactWhenClosingMailboxes];
  [(NSRecursiveLock *)self->_connectionLock lock];
  [(IMAP_Account *)self mf_lock];
  v25 = [(__CFArray *)self->_cachedConnections mutableCopy];
  v26 = v25;
  if (self->_cachedConnections)
    v27 = {;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->super.super.mambaID;
      cachedConnections = self->_cachedConnections;
      *buf = 136315650;
      v67 = v28;
      v68 = 2080;
      v69 = " ";
      v70 = 2112;
      v71 = cachedConnections;
      _os_log_impl(&dword_2720B1000, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network All connections: %@", buf, 0x20u);
    }
  }

  mf_unlock = [(IMAP_Account *)self mf_unlock];
  if (!onlyCopy)
  {
    goto LABEL_31;
  }
  v31 = ;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = self->super.super.mambaID;
    *buf = 136315394;
    v67 = v32;
    v68 = 2080;
    v69 = " ";
    _os_log_impl(&dword_2720B1000, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network EDGE ONLY", buf, 0x16u);
  }

  mf_unlock = [(_anonymous_namespace_::staticLogger_t *)v26 count];
  if (mf_unlock)
  {
    v33 = 0;
    v34 = mf_unlock - 1;
    do
    {
      v35 = [(_anonymous_namespace_::staticLogger_t *)v26 objectAtIndex:v34];
      if ([v35 isCellularConnection])
      {
        v33 |= [v35 isFetching];
      }

      else
      {
        [(_anonymous_namespace_::staticLogger_t *)v26 removeObjectAtIndex:v34];
      }

      --v34;
    }

    while (v34 != -1);
  }

  else
  {
LABEL_31:
    LOBYTE(v33) = 0;
  }

  if (interval > 0.0)
  {
    v36 = [(_anonymous_namespace_::staticLogger_t *)v26 count];
    Current = CFAbsoluteTimeGetCurrent();
    if (v36)
    {
      v38 = Current;
      v39 = v36 - 1;
      do
      {
        v40 = [(_anonymous_namespace_::staticLogger_t *)v26 objectAtIndex:v39];
        [v40 mf_lock];
        [v40 lastUsedTime];
        if (v41 + interval > v38)
        {
          [(_anonymous_namespace_::staticLogger_t *)v26 removeObjectAtIndex:v39];
        }

        [v40 mf_unlock];

        --v39;
      }

      while (v39 != -1);
    }
  }
  v42 = ;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->super.super.mambaID;
    *buf = 136315650;
    v67 = v43;
    v68 = 2080;
    v69 = " ";
    v70 = 2112;
    v71 = v26;
    _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "#I %s%s#Network Dropping connections: %@", buf, 0x20u);
  }

  v44 = 0;
  while (1)
  {

    [(IMAP_Account *)self mf_lock];
    if ([(_anonymous_namespace_::staticLogger_t *)v26 count])
    {
      v45 = [(_anonymous_namespace_::staticLogger_t *)v26 objectAtIndex:0];
      delegate = [v45 delegate];
      [(_anonymous_namespace_::staticLogger_t *)v26 removeObjectAtIndex:0];
      v47 = self->_cachedConnections;
      if (v47)
      {
        v83.length = CFArrayGetCount(self->_cachedConnections);
        v83.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v47, v83, v45);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(self->_cachedConnections, FirstIndexOfValue);
        }
      }

      v49 = delegate;
      v42 = v45;
    }

    else
    {
      v49 = 0;
      v42 = 0;
    }

    [(IMAP_Account *)self mf_unlock];
    if (!v42)
    {
      break;
    }

    if ((v33 & (v44 == 0)) != 1)
    {
      goto LABEL_51;
    }

    if ([v42 isFetching])
    {
      v44 = v42;
LABEL_51:
      if (!compactWhenClosingMailboxes)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    v44 = 0;
    if (!compactWhenClosingMailboxes)
    {
      goto LABEL_55;
    }

LABEL_52:
    selectedMailbox = [v42 selectedMailbox];
    v51 = selectedMailbox == 0;

    if (!v51)
    {
      closeAndLogout = [v42 closeAndLogout];
      goto LABEL_56;
    }

LABEL_55:
    closeAndLogout = [v42 logout];
LABEL_56:
    if (closeAndLogout)
    {
      [(IMAP_Account *)self setCommitTime:[v42 tag] forConnectionTag:CFAbsoluteTimeGetCurrent()];
    }

    if (v49)
    {
      [(IMAP_Account *)self mf_lock];
      [v42 setDelegate:0];
      [(IMAP_Account *)self mf_unlock];
    }
  }

  [(IMAP_Account *)self _purgeStaleFlagChanges];
  if (v33)
  {
    selectedMailbox2 = [v44 selectedMailbox];
    v54 = [(IMAP_Account *)self _mailboxUidForName:selectedMailbox2];
  }

  else
  {
    v54 = 0;
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
  if ((v33 & (v54 != 0)) == 1)
  {
    v55 = MFUserAgent();
    [v55 autofetchAccount:self mailboxUid:v54];
  }

  if (superCopy)
  {
    v59.receiver = self;
    v59.super_class = IMAP_Account;
    [(MailAccount *)&v59 releaseAllConnections];
  }

  if (cacheCopy)
  {
    offlineCacheIfExists = [(IMAP_Account *)self offlineCacheIfExists];
    [offlineCacheIfExists saveChanges];
  }
}

- (void)releaseAllForcedConnections
{
  [(IMAP_Account *)self _releaseAllConnectionsAndCallSuper:0 edgeForcedOnly:1 ifIdleForTimeInterval:1 saveOfflineCache:0.0];
  v3.receiver = self;
  v3.super_class = IMAP_Account;
  [(MailAccount *)&v3 releaseAllForcedConnections];
}

- (void)_flushOfflineCache
{
  v3 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
  if (v3)
  {
    [(IMAP_Account *)self checkInConnection:v3];
  }
}

- (void)flushOfflineCache
{
  v4 = +[MFInvocationQueue sharedInvocationQueue];
  v3 = [MFMonitoredInvocation invocationWithSelector:sel__flushOfflineCache target:self taskName:0 priority:3 canBeCancelled:0];
  [v4 addInvocation:v3];
}

- (void)networkChanged
{
  offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
  if (offlineCacheFlushHandler)
  {
    offlineCacheFlushHandler[2]();
  }
}

- (void)setHandlerForOfflineCacheFlush:(id)flush
{
  flushCopy = flush;
  if (self->_offlineCacheFlushHandler != flushCopy)
  {
    if (flushCopy)
    {
      v8 = flushCopy;
      v5 = [flushCopy copy];

      flushCopy = v5;
    }

    v9 = flushCopy;
    v6 = MEMORY[0x2743C3100]();
    offlineCacheFlushHandler = self->_offlineCacheFlushHandler;
    self->_offlineCacheFlushHandler = v6;

    flushCopy = v9;
  }
}

- (void)connectionDidDisconnect:(id)disconnect
{
  v4 = v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    displayName = [(MailAccount *)self displayName];
    v7 = 136315650;
    v8 = mambaID;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = displayName;
    _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s(%@) Connection to server was lost/closed.", &v7, 0x20u);
  }
}

- (BOOL)connection:(id)connection shouldHandleUntaggedResponse:(id)response forCommand:(id *)command
{
  responseCopy = response;
  isAlertResponse = [responseCopy isAlertResponse];
  if (isAlertResponse)
  {
    userString = [responseCopy userString];
    [(IMAP_Account *)self handleAlertResponse:userString];
LABEL_3:

    goto LABEL_14;
  }

  if (command->var0 == 8 && [responseCopy responseType] == 13)
  {
    mailboxName = [responseCopy mailboxName];
    userString = [(IMAP_Account *)self _mailboxUidForName:mailboxName];

    statusEntries = [responseCopy statusEntries];
    uRLString = [userString URLString];

    if (uRLString)
    {
      v13 = [statusEntries objectForKey:@"UIDNEXT"];
      if (v13)
      {
        v14 = [userString userInfoObjectForKey:@"UIDNEXT"];
        intValue = [v14 intValue];

        unsignedIntValue = [v13 unsignedIntValue];
        if (intValue != unsignedIntValue)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", unsignedIntValue];
          [userString setUserInfoObject:v17 forKey:@"UIDNEXT"];
        }
      }

      v18 = [statusEntries objectForKeyedSubscript:@"UNSEEN"];

      if (v18)
      {
        [userString updateMostRecentStatusCount:{objc_msgSend(v18, "unsignedIntegerValue")}];
      }
    }

    goto LABEL_3;
  }

LABEL_14:

  return isAlertResponse ^ 1;
}

- (void)connection:(id)connection didReceiveResponse:(id)response forCommand:(id *)command
{
  responseCopy = response;
  if ([responseCopy isAlertResponse])
  {
    userString = [responseCopy userString];
    [(IMAP_Account *)self handleAlertResponse:userString];
  }
}

- (void)setIsOffline:(BOOL)offline
{
  offlineCopy = offline;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([IMAP_Account setIsOffline:]::sOnceToken != -1)
    {
      [IMAP_Account setIsOffline:];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__IMAP_Account_setIsOffline___block_invoke_2;
    block[3] = &unk_279E34640;
    block[4] = self;
    v10 = offlineCopy;
    dispatch_async([IMAP_Account setIsOffline:]::sOfflineStatusChangeQueue, block);
  }

  else
  {
    v5 = *(self + 312);
    if (((((v5 & 2) == 0) ^ offlineCopy) & 1) == 0)
    {
      if (offlineCopy)
      {
        [(IMAP_Account *)self _releaseAllConnectionsAndCallSuper:0];
        v5 = *(self + 312);
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *(self + 312) = v5 & 0xFD | v6;
      if ([(MailAccount *)self isActive])
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v7 = [MEMORY[0x277CCAB88] notificationWithName:@"AccountOfflineStatusDidChange" object:self userInfo:0];
        [defaultCenter postNotification:v7];
      }
    }
  }
}

- (void)_updateSeparatorAndNamespaceWithConnection:(id)connection
{
  connectionCopy = connection;
  [(NSRecursiveLock *)self->_connectionLock lock];
  if ((*(self + 344) & 1) == 0)
  {
    separatorChar = [connectionCopy separatorChar];
    serverPathPrefix = [connectionCopy serverPathPrefix];
    _setSeparatorCharAndNamespace(self, separatorChar, serverPathPrefix);
    *(self + 344) |= 1u;
  }

  [(NSRecursiveLock *)self->_connectionLock unlock];
}

- (id)separatorChar
{
  _MFLockGlobalLock();
  separatorChar = self->_separatorChar;
  _MFUnlockGlobalLock();
  if (!separatorChar)
  {
    rootMailboxUid = [(MailAccount *)self rootMailboxUid];
    _MFLockGlobalLock();
    separatorChar = self->_separatorChar;
    _MFUnlockGlobalLock();
    if ((*(self + 312) & 2) == 0 && !separatorChar)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        separatorChar = 0;
      }

      else
      {
        v6 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
        v7 = v6;
        if (v6)
        {
          separatorChar = [v6 separatorChar];
          if (separatorChar)
          {
            _setSeparatorCharAndNamespace(self, separatorChar, 0);
          }

          [(IMAP_Account *)self checkInConnection:v7];
        }

        else
        {
          separatorChar = 0;
        }
      }
    }
  }

  return separatorChar;
}

- (id)lastKnownCapabilities
{
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  _MFLockGlobalLock();
  v4 = self->_lastKnownCapabilities;
  _MFUnlockGlobalLock();

  return v4;
}

- (void)_setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  _MFLockGlobalLock();
  lastKnownCapabilities = self->_lastKnownCapabilities;
  if (capabilitiesCopy | lastKnownCapabilities)
  {
    v6 = lastKnownCapabilities;
    objc_storeStrong(&self->_lastKnownCapabilities, capabilities);
    flags = self->super._flags;
    if ((*&flags & 0x40000) == 0)
    {
      self->super._flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
    }
  }

  else
  {
    v6 = 0;
  }

  _MFUnlockGlobalLock();
  if (capabilitiesCopy | v6)
  {
    v8 = [capabilitiesCopy isEqualToArray:v6] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:v8];
}

- (id)fetchLimits
{
  v2 = +[MFNetworkController sharedInstance];
  isFatPipe = [v2 isFatPipe];
  v4 = +[MFPowerController sharedInstance];
  isPluggedIn = [v4 isPluggedIn];

  if (isFatPipe & isPluggedIn)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    is3GConnection = [v2 is3GConnection];
    v10 = isFatPipe | [v2 is4GConnection];
    v11 = 4096;
    if (is3GConnection)
    {
      v11 = 0x10000;
    }

    v12 = 0x4000;
    if (is3GConnection)
    {
      v12 = 0x80000;
    }

    if (v10)
    {
      v7 = 0x40000;
    }

    else
    {
      v7 = v11;
    }

    if (v10)
    {
      v8 = 0x200000;
    }

    else
    {
      v8 = v12;
    }

    v6 = v8 | v7;
  }

  v13 = objc_alloc_init(MFFetchLimits);
  [(MFFetchLimits *)v13 setFetchMinBytes:v8];
  [(MFFetchLimits *)v13 setMinBytesLeft:v7];
  [(MFFetchLimits *)v13 setFetchMaxBytes:v6];

  return v13;
}

- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed statusDataItems:(id)items withConnection:(id)connection statusEntriesByMailbox:(id *)mailbox
{
  subscribedCopy = subscribed;
  childrenCopy = children;
  uidCopy = uid;
  itemsCopy = items;
  connectionCopy = connection;
  if (connectionCopy || ([(IMAP_Account *)self connectionForStore:0 delegate:self options:9], (connectionCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    serverPathPrefixAccountValue = [(IMAP_Account *)self serverPathPrefixAccountValue];
    if ([serverPathPrefixAccountValue length])
    {
      v16 = [(NSString *)self->_serverNamespace isEqualToString:serverPathPrefixAccountValue];
    }

    else
    {
      v16 = 1;
    }

    if (self->super._rootMailboxUid == uidCopy && v16)
    {
      v17 = &stru_288159858;
    }

    else if (self->super._inboxMailboxUid == uidCopy && (-[IMAP_Account serverPathPrefix](self, "serverPathPrefix"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isEqualToString:@"INBOX"], v18, v19))
    {
      v20 = MEMORY[0x277CCACA8];
      separatorChar = [(IMAP_Account *)self separatorChar];
      v17 = [v20 stringWithFormat:@"INBOX%@INBOX", separatorChar];
    }

    else
    {
      v17 = [(IMAP_Account *)self _nameForMailboxUid:uidCopy];
    }

    if (childrenCopy)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (!subscribedCopy || ([connectionCopy subscribedListingForMailbox:v17 options:v22], (v23 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if ([connectionCopy supportsCapability:22])
      {
        v24 = ([connectionCopy supportsCapability:20] & 1) != 0 || -[IMAP_Account xListSupportedOnConnection:](self, "xListSupportedOnConnection:", connectionCopy);
      }

      else
      {
        v24 = 0;
      }

      v25 = [connectionCopy listingForMailbox:v17 options:v22 getSpecialUse:v24 statusDataItems:itemsCopy statusEntriesByMailbox:mailbox];
      v26 = v25;
      if (self->super._rootMailboxUid == uidCopy && self->_serverNamespace != 0 && v16)
      {
        v41 = [(NSArray *)v25 mutableCopy];
        v27 = _mailboxDictionaryWithName(v26, self->_serverNamespace, 0);
        [v41 removeObject:v27];
        v28 = [v27 objectForKeyedSubscript:@"MailboxChildren"];
        v29 = v28;
        v30 = MEMORY[0x277CBEBF8];
        if (v28)
        {
          v30 = v28;
        }

        v31 = v30;

        v40 = v31;
        v23 = [MEMORY[0x277CBEB18] arrayWithArray:v31];
        [(NSArray *)v23 addObjectsFromArray:v41];
        v32 = [(NSString *)self->_serverNamespace isEqualToString:@"INBOX"];
        if (v27)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (v33)
        {
          v44 = 0;
          v34 = _mailboxDictionaryWithName(v23, self->_serverNamespace, &v44);
          v39 = v34;
          v38 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v27];
          if (v34)
          {
            v35 = [v34 objectForKey:@"MailboxChildren"];
            [v38 setObject:v35 forKey:@"MailboxChildren"];

            [(NSArray *)v23 replaceObjectAtIndex:v44 withObject:v38];
          }

          else
          {
            dictionary = [MEMORY[0x277CBEAC0] dictionary];
            [v38 setObject:dictionary forKey:@"MailboxChildren"];

            [(NSArray *)v23 vf_insertObject:v38 usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
          }
        }
      }

      else
      {
        v23 = v25;
      }
    }

    [(IMAP_Account *)self checkInConnection:connectionCopy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children onlySubscribed:(BOOL)subscribed
{
  v5 = [(IMAP_Account *)self _listingForMailboxUid:uid listAllChildren:children onlySubscribed:subscribed statusDataItems:0 withConnection:0 statusEntriesByMailbox:0];

  return v5;
}

- (id)_listingForMailboxUid:(id)uid listAllChildren:(BOOL)children
{
  v4 = [(IMAP_Account *)self _listingForMailboxUid:uid listAllChildren:children onlySubscribed:0];

  return v4;
}

- (id)_newMailboxWithParent:(id)parent name:(id)name attributes:(unsigned int)attributes dictionary:(id)dictionary withCreationOption:(int)option
{
  v9 = *&attributes;
  v45 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  nameCopy = name;
  dictionaryCopy = dictionary;
  if (option)
  {
    __assert_rtn("[IMAP_Account _newMailboxWithParent:name:attributes:dictionary:withCreationOption:]", "IMAP_Account.mm", 1835, "creationOption == MailboxCreationOptionDefault");
  }

  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  if (![parentCopy isEqual:rootMailboxUid] || (v14 = nameCopy) == 0)
  {

LABEL_7:
    [(NSRecursiveLock *)self->_connectionLock lock];
    accountRelativePath = [parentCopy accountRelativePath];
    v16 = [accountRelativePath stringByAppendingPathComponent:nameCopy];

    v17 = [(IMAP_Account *)self mailboxUidForRelativePath:v16 create:0];
    if (v17)
    {
LABEL_33:
      [(NSRecursiveLock *)self->_connectionLock unlock];
      v15 = nameCopy;
      goto LABEL_34;
    }

    v36 = nameCopy;
    v35 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:9];
    v17 = [(IMAP_Account *)self mailboxUidForRelativePath:v16 create:0];
    if (v17)
    {
      if (v35)
      {
        [(IMAP_Account *)self checkInConnection:?];
      }

      goto LABEL_32;
    }

    v19 = [(IMAP_Account *)self _nameForMailboxUid:parentCopy];
    v20 = [v19 mutableCopyWithZone:0];

    pathComponents = [nameCopy pathComponents];
    v34 = v9;
    separatorChar = [(IMAP_Account *)self separatorChar];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = pathComponents;
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v24)
    {
      v25 = *v41;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          if ([v20 length])
          {
            if (!separatorChar)
            {
              v28 = 0;
              goto LABEL_23;
            }

            [v20 appendString:separatorChar];
          }

          [v20 appendString:v27];
        }

        v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v28 = 1;
LABEL_23:

    mf_fileSystemString = [v36 mf_fileSystemString];

    v36 = mf_fileSystemString;
    if (!v28)
    {
      goto LABEL_26;
    }

    if (v35)
    {
      v30 = [v35 createMailbox:v20];
      [(IMAP_Account *)self checkInConnection:v35];
      if (!v30)
      {
LABEL_26:
        v17 = 0;
LABEL_31:

LABEL_32:
        nameCopy = v36;
        goto LABEL_33;
      }
    }

    else
    {
      offlineCache = [(IMAP_Account *)self offlineCache];
      v32 = offlineCache;
      if (offlineCache)
      {
        [offlineCache createMailbox:v20];
      }
    }

    v39.receiver = self;
    v39.super_class = IMAP_Account;
    v17 = [(MailAccount *)&v39 _newMailboxWithParent:parentCopy name:v36 attributes:v34 dictionary:dictionaryCopy withCreationOption:0];
    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 caseInsensitiveCompare:@"INBOX"];

  if (v16)
  {
    goto LABEL_7;
  }

  v17 = [(MailAccount *)self _copyMailboxWithParent:parentCopy name:v15 attributes:v9 dictionary:dictionaryCopy];
LABEL_34:

  return v17;
}

- (BOOL)_deleteMailbox:(id)mailbox
{
  v26 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v21.receiver = self;
  v21.super_class = IMAP_Account;
  if ([(MailAccount *)&v21 _deleteMailbox:mailboxCopy])
  {
    v5 = [(IMAP_Account *)self _nameForMailboxUid:mailboxCopy];
    [(IMAP_Account *)self unselectMailbox:v5];
    offlineCacheIfOffline = [(IMAP_Account *)self offlineCacheIfOffline];
    v7 = offlineCacheIfOffline;
    if (offlineCacheIfOffline)
    {
      v8 = 0;
      [offlineCacheIfOffline deleteMailbox:v5];
      v9 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v10 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 deleteMailbox:v5];
      [(IMAP_Account *)self checkInConnection:v11];
      if (v12)
      {
        v9 = 1;
LABEL_21:
        v8 = v11;
        goto LABEL_22;
      }

      if ([mailboxCopy isStore])
      {
        v9 = 0;
        goto LABEL_21;
      }

      parent = [mailboxCopy parent];
      if (parent)
      {
        v15 = +[MFActivityMonitor currentMonitor];
        error = [v15 error];
        v17 = [(IMAP_Account *)self _listingForMailboxUid:parent listAllChildren:0];
        if ([v17 count] && (objc_msgSend(mailboxCopy, "name"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "mf_indexOfMailboxDictionaryWithName:", v18) == 0x7FFFFFFFFFFFFFFFLL, v18, !v19))
        {
          [v15 setError:error];
          v9 = 0;
        }

        else
        {
          [v15 setError:0];
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
      parent = {;
      if (os_log_type_enabled(parent, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = self->super.super.mambaID;
        *buf = 136315394;
        v23 = mambaID;
        v24 = 2080;
        v25 = " ";
        _os_log_impl(&dword_2720B1000, parent, OS_LOG_TYPE_DEFAULT, "#I %s%sNo connection!! What's going on?", buf, 0x16u);
      }

      v11 = 0;
      v9 = 1;
    }

    goto LABEL_21;
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (void)_setSpecialMailbox:(id)mailbox forType:(int)type
{
  v4 = *&type;
  mailboxCopy = mailbox;
  v7.receiver = self;
  v7.super_class = IMAP_Account;
  [(MailAccount *)&v7 _setSpecialMailbox:mailboxCopy forType:v4];
  if (mailboxCopy && [mailboxCopy isValid])
  {
    [(IMAP_Account *)self setStoreMailboxType:v4 onServer:1];
  }
}

- (BOOL)isMailboxLocalForType:(int)type
{
  if ((type - 2) > 3)
  {
    return 0;
  }

  else
  {
    return ![(IMAP_Account *)self storeMailboxTypeOnServer:v3, v4];
  }
}

- (void)_renameLocalSpecialMailboxesToName:(id)name
{
  nameCopy = name;
  if ([(IMAP_Account *)self storeMailboxTypeOnServer:5])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
    v7 = [(MailAccount *)self _localMailboxNameForType:5 usingDisplayName:nameCopy];
    account = [v6 account];
    parent = [v6 parent];
    [account renameMailbox:v6 newName:v7 parent:parent];

    v4 = v7;
    v5 = v6;
  }

  if (![(IMAP_Account *)self storeMailboxTypeOnServer:4])
  {
    v10 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];

    v11 = [(MailAccount *)self _localMailboxNameForType:4 usingDisplayName:nameCopy];

    account2 = [v10 account];
    parent2 = [v10 parent];
    [account2 renameMailbox:v10 newName:v11 parent:parent2];

    v4 = v11;
    v5 = v10;
  }

  if ([(IMAP_Account *)self storeMailboxTypeOnServer:3])
  {
    v14 = v4;
    v15 = v5;
  }

  else
  {
    v15 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];

    v14 = [(MailAccount *)self _localMailboxNameForType:3 usingDisplayName:nameCopy];

    account3 = [v15 account];
    parent3 = [v15 parent];
    [account3 renameMailbox:v15 newName:v14 parent:parent3];
  }
}

- (id)specialUseAttributeForType:(int)type
{
  if ([IMAP_Account specialUseAttributeForType:]::onceToken != -1)
  {
    [IMAP_Account specialUseAttributeForType:];
  }

  v4 = [IMAP_Account specialUseAttributeForType:]::map;

  return CFDictionaryGetValue(v4, type);
}

- (id)_specialMailboxUidWithType:(int)type create:(BOOL)create
{
  createCopy = create;
  v5 = *&type;
  v7 = [(IMAP_Account *)self isMailboxLocalForType:?];
  selfCopy = self;
  v9 = selfCopy;
  if (v7)
  {
    v10 = [(MailAccount *)selfCopy _localMailboxNameForType:v5 usingDisplayName:0];
    v11 = +[LocalAccount localAccount];
  }

  else
  {
    v12 = [(IMAP_Account *)selfCopy specialUseAttributeForType:v5];
    if (v12)
    {
      rootMailboxUid = [(MailAccount *)v9 rootMailboxUid];
      v14 = [rootMailboxUid descendantWithExtraAttribute:v12];

      if (v14)
      {

        v10 = 0;
        goto LABEL_14;
      }
    }

    v15 = [(MailAccount *)v9 specialMailboxNameForType:v5];
    if ([v15 length])
    {
      v10 = v15;
    }

    else
    {
      v16 = [(MailAccount *)v9 _defaultSpecialMailboxNameForType:v5];

      v10 = v16;
    }

    v17 = [v10 length];

    if (!v17)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v11 = v9;
  }

  createCopy = [(IMAP_Account *)v11 mailboxUidForRelativePath:v10 create:v7 | createCopy];
  v14 = createCopy;
  if (v7)
  {
    [createCopy setRepresentedAccount:v9];
  }

  v9 = v11;
LABEL_14:

  return v14;
}

- (id)allMailMailboxUid
{
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  v3 = [rootMailboxUid descendantWithExtraAttribute:@"\\All"];

  return v3;
}

- (BOOL)isSpecialMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v8.receiver = self;
  v8.super_class = IMAP_Account;
  if ([(MailAccount *)&v8 isSpecialMailbox:mailboxCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(IMAP_Account *)self specialUseAttributesForMailbox:mailboxCopy];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)specialUseAttributesForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([IMAP_Account specialUseAttributesForMailbox:]::onceToken != -1)
  {
    [IMAP_Account specialUseAttributesForMailbox:];
  }

  v4 = MEMORY[0x277CBEB58];
  extraAttributes = [mailboxCopy extraAttributes];
  v6 = [v4 setWithArray:extraAttributes];

  [v6 intersectSet:-[IMAP_Account specialUseAttributesForMailbox:]::knownSpecialAttributes];

  return v6;
}

- (id)moveMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox markAsRead:(BOOL)read
{
  readCopy = read;
  messagesCopy = messages;
  mailboxCopy = mailbox;
  toMailboxCopy = toMailbox;
  account = [mailboxCopy account];
  v14 = account;
  if (account != self)
  {

LABEL_4:
    v19.receiver = self;
    v19.super_class = IMAP_Account;
    v16 = [(MailAccount *)&v19 moveMessages:messagesCopy fromMailbox:mailboxCopy toMailbox:toMailboxCopy markAsRead:readCopy];
    goto LABEL_5;
  }

  account2 = [toMailboxCopy account];

  if (account2 != self)
  {
    goto LABEL_4;
  }

  store = [mailboxCopy store];
  v16 = [store moveMessages:messagesCopy toMailbox:toMailboxCopy markAsRead:readCopy];

LABEL_5:

  return v16;
}

- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization
{
  if ([(MailAccount *)self isActive])
  {
    flags = self->super._flags;
    if ((*&flags & 0x10000) == 0)
    {
      self->super._flags = (*&flags | 0x10000);
      v5 = +[MFInvocationQueue sharedInvocationQueue];
      v4 = [MFMonitoredInvocation invocationWithSelector:sel__synchronizeAccountWithServer target:self taskName:@"Synchronizing with server" priority:0 canBeCancelled:1];
      [v5 addInvocation:v4];
    }
  }
}

- (BOOL)getMailboxListWithConnection:(id)connection statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox
{
  v6 = [(IMAP_Account *)self _listingForMailboxUid:self->super._rootMailboxUid listAllChildren:1 onlySubscribed:0 statusDataItems:items withConnection:connection statusEntriesByMailbox:mailbox];
  if (v6)
  {
    [(IMAP_Account *)self mf_lock];
    v7 = [(MailAccount *)self _loadMailboxListingIntoCache:0 attributes:0 children:v6 parent:self->super._rootMailboxUid];
    [(IMAP_Account *)self mf_unlock];
    if (v7)
    {
      [(IMAP_Account *)self _mailboxListingChanged];
      flags = self->super._flags;
      if ((*&flags & 0x40000) == 0)
      {
        self->super._flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
      }
    }

    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  }

  [(MailAccount *)self resetSpecialMailboxes];

  return v6 != 0;
}

- (void)throttledGetMailboxListWithConnection:(id)connection
{
  connectionCopy = connection;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = MFUserAgent();
  isForeground = [v6 isForeground];

  if ((*(self + 312) & 1) == 0 || isForeground && Current - self->_timeLastFetchedMailboxList > 300.0)
  {
    self->_timeLastFetchedMailboxList = Current;
    *(self + 312) |= 1u;
    v8 = +[MFActivityMonitor currentMonitor];
    rootMailboxUid = [(MailAccount *)self rootMailboxUid];
    [v8 setMailbox:rootMailboxUid];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [mainBundle localizedStringForKey:@"CHECKING_FOR_MAIL" value:&stru_288159858 table:@"Main"];
    [v8 setDisplayName:v11];

    v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"UNSEEN", 0}];
    v27 = 0;
    v13 = [(IMAP_Account *)self getMailboxListWithConnection:connectionCopy statusDataItems:v12 statusEntriesByMailbox:&v27];
    v14 = v27;
    v15 = v14;
    if (v13)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__IMAP_Account_throttledGetMailboxListWithConnection___block_invoke;
      v26[3] = &unk_279E34C48;
      v26[4] = self;
      [v14 enumerateKeysAndObjectsUsingBlock:v26];
      if (!v15)
      {
        if (!connectionCopy)
        {
          connectionCopy = [(IMAP_Account *)self connectionForStore:0 delegate:self options:9];
        }

        allMailboxUids = [(MailAccount *)self allMailboxUids];
        v17 = [allMailboxUids vf_filter:&__block_literal_global_239];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __54__IMAP_Account_throttledGetMailboxListWithConnection___block_invoke_3;
        v25[3] = &unk_279E34C90;
        v25[4] = self;
        v18 = [v17 vf_map:v25];
        v19 = [v18 vf_filter:&__block_literal_global_3];

        [connectionCopy fetchStatusForMailboxes:v19 args:v12];
        [(IMAP_Account *)self checkInConnection:connectionCopy];
      }
    }

    else
    {
      *(self + 312) &= ~1u;
    }

    v20 = dispatch_time(0, 1000000000);
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__IMAP_Account_throttledGetMailboxListWithConnection___block_invoke_4;
    block[3] = &unk_279E34528;
    v24 = v8;
    v22 = v8;
    dispatch_after(v20, v21, block);
  }
}

- (void)_synchronizeAccountWithServer
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[MFActivityMonitor currentMonitor];
  password = [(MFAccount *)self password];
  if (password)
  {
    v6 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
    if (v6 && ([v4 shouldCancel] & 1) == 0)
    {
      [(IMAP_Account *)self checkInConnection:v6];
      if (([v4 shouldCancel] & 1) == 0)
      {
        [(IMAP_Account *)self throttledGetMailboxListWithConnection:0];
      }

      if (([v4 shouldCancel] & 1) == 0)
      {
        [(MailAccount *)self emptyTrash];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *&self->super._flags &= ~0x10000u;

  objc_autoreleasePoolPop(v3);
}

- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unsigned int)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary
{
  v9 = *&attributes;
  parentCopy = parent;
  nameCopy = name;
  uidCopy = uid;
  dictionaryCopy = dictionary;
  if (uidCopy)
  {
    if (!nameCopy)
    {
      inboxMailboxUid = self->super._inboxMailboxUid;
      if (inboxMailboxUid == uidCopy)
      {
        name = [(MFMailboxUid *)inboxMailboxUid name];
        LODWORD(v9) = [(MFMailboxUid *)self->super._inboxMailboxUid attributes]& 0xFFFFFEFF;
        nameCopy = name;
      }

      else
      {
        if (([(MFMailboxUid *)uidCopy attributes]& 0x100) != 0)
        {

          uidCopy = 0;
        }

        nameCopy = 0;
      }
    }

    v9 = [(MFMailboxUid *)uidCopy attributes]& 0x80 | v9;
    goto LABEL_15;
  }

  if (self->super._rootMailboxUid != parentCopy || (v17 = nameCopy, (nameCopy = v17) == 0) || (v18 = [v17 caseInsensitiveCompare:@"INBOX"], nameCopy, v18))
  {
    uidCopy = 0;
LABEL_15:
    v25.receiver = self;
    v25.super_class = IMAP_Account;
    v22 = [(MailAccount *)&v25 _copyMailboxUidWithParent:parentCopy name:nameCopy attributes:v9 existingMailboxUid:uidCopy dictionary:dictionaryCopy];

    goto LABEL_16;
  }

  v19 = self->super._inboxMailboxUid;
  if (v19)
  {
    [(MFMailboxUid *)v19 setName:nameCopy];
    [(MFMailboxUid *)self->super._inboxMailboxUid setAttributes:v9 & 0xFFFFFEFF];
    v20 = self->super._inboxMailboxUid;
    v21 = [dictionaryCopy objectForKey:@"MailboxExtraAttributes"];
    [(MFMailboxUid *)v20 setExtraAttributes:v21];

    v22 = self->super._inboxMailboxUid;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = IMAP_Account;
    v22 = [(MailAccount *)&v26 _copyMailboxUidWithParent:parentCopy name:nameCopy attributes:v9 & 0xFFFFFEFF existingMailboxUid:0 dictionary:dictionaryCopy];
    [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:v22 forType:7];
  }

LABEL_16:

  return v22;
}

- (void)_synchronouslyLoadListingForParent:(id)parent
{
  parentCopy = parent;
  v4 = [IMAP_Account _listingForMailboxUid:"_listingForMailboxUid:listAllChildren:" listAllChildren:?];
  if (v4)
  {
    name = [parentCopy name];
    v6 = [(MailAccount *)self _loadMailboxListingIntoCache:name attributes:0 children:v4 parent:parentCopy];

    if (v6)
    {
      [(IMAP_Account *)self _mailboxListingChanged];
    }
  }
}

- (void)_waitForMailboxListingLoadToComplete
{
  [(IMAP_Account *)self mf_lock];

  [(IMAP_Account *)self mf_unlock];
}

- (void)_mailboxesWereRemovedFromTree:(id)tree withFileSystemPaths:(id)paths
{
  treeCopy = tree;
  pathsCopy = paths;
  _MFLockGlobalLock();
  if (!_mailboxDeletionQueue)
  {
    v8 = [[MFInvocationQueue alloc] initWithDomain:"invc.del"];
    v9 = _mailboxDeletionQueue;
    _mailboxDeletionQueue = v8;
  }

  _MFUnlockGlobalLock();
  v10 = objc_alloc_init(_MFIMAPMailboxDeletionQueueEntry);
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setUrls:treeCopy];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setPaths:pathsCopy];
  [(_MFIMAPMailboxDeletionQueueEntry *)v10 setAccount:self];
  v11 = [MFMonitoredInvocation invocationWithSelector:sel__deleteQueuedMailboxes_ target:objc_opt_class() object:v10 taskName:@"Removing old cache files..." priority:12 canBeCancelled:1];
  [_mailboxDeletionQueue addInvocation:v11];
  v12.receiver = self;
  v12.super_class = IMAP_Account;
  [(MailAccount *)&v12 _mailboxesWereRemovedFromTree:treeCopy withFileSystemPaths:pathsCopy];
}

+ (void)_deleteQueuedMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  account = [mailboxesCopy account];
  [account _waitForMailboxListingLoadToComplete];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  urls = [mailboxesCopy urls];
  v7 = [urls count];

  if (v7)
  {
    v8 = 0;
    v9 = *MEMORY[0x277CBEEE8];
    do
    {
      urls2 = [mailboxesCopy urls];
      v11 = [urls2 objectAtIndex:v8];

      v12 = [self mailboxUidFromActiveAccountsForURL:v11];
      v13 = v12;
      if (!v12 || ([v12 isValid] & 1) == 0)
      {
        paths = [mailboxesCopy paths];
        v15 = [paths objectAtIndex:v8];

        if (v15 != v9)
        {
          v16 = MFRemoveItemAtPath();
        }

        [v5 addObject:v11];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  library = [account library];
  [library deleteMailboxes:v5 account:account];
}

- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure
{
  acceptableCopy = acceptable;
  v12.receiver = self;
  v12.super_class = IMAP_Account;
  if ([(MailAccount *)&v12 newMailboxNameIsAcceptable:acceptableCopy reasonForFailure:failure])
  {
    separatorChar = [(IMAP_Account *)self separatorChar];
    if (separatorChar)
    {
      v8 = [acceptableCopy rangeOfString:separatorChar];
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
      if (!failure)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Mailbox names may not include “%@”.", separatorChar];
        *failure = v10;

        v9 = 0;
        goto LABEL_10;
      }
    }

    else if (!failure)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }

    *failure = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  mailboxCopy = mailbox;
  nameCopy = name;
  parentCopy = parent;
  v23 = [(IMAP_Account *)self _nameForMailboxUid:mailboxCopy];
  if (![(IMAP_Account *)self isOffline])
  {
    v14 = [(IMAP_Account *)self connectionForStore:0 delegate:self options:1];
    if (!v14)
    {
      v13 = 0;
      goto LABEL_11;
    }

    inboxMailboxUid = self->super._inboxMailboxUid;
    if (inboxMailboxUid && [(MFMailboxUid *)inboxMailboxUid isEqual:mailboxCopy])
    {
      v16 = self->super._inboxMailboxUid;
    }

    else
    {
      v16 = 0;
    }

    v13 = [(IMAP_Account *)self _nameForMailboxUid:parentCopy];
    if (nameCopy)
    {
      [(IMAP_Account *)self _uidNameForPathComponent:nameCopy];
    }

    else
    {
      [mailboxCopy name];
    }
    v17 = ;
    if ([v13 length])
    {
      v19 = [v13 mutableCopyWithZone:0];
      separatorChar = [v14 separatorChar];
      [v19 appendString:separatorChar];

      [v19 appendString:v17];
      v17 = v19;
    }

    if (v17 && [v14 renameMailbox:v23 toMailbox:v17])
    {
      if (v16)
      {
        [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:7];
      }

      v24.receiver = self;
      v24.super_class = IMAP_Account;
      [(MailAccount *)&v24 renameMailbox:mailboxCopy newName:nameCopy parent:parentCopy];
      store = [mailboxCopy store];
      [store reselectMailbox];

      v18 = 1;
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
      if (!v16)
      {
LABEL_23:
        [(IMAP_Account *)self checkInConnection:v14];
        goto LABEL_24;
      }
    }

    [(MailAccount *)self resetSpecialMailboxes];
    goto LABEL_23;
  }

  v11 = +[MFActivityMonitor currentMonitor];
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:@"You can’t rename mailboxes while an account is offline."];
  [v11 setError:v12];

  v13 = 0;
  v14 = 0;
LABEL_11:
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_24:

  return v18;
}

- (id)_pathComponentForUidName:(id)name
{
  mf_decodedIMAPMailboxName = [name mf_decodedIMAPMailboxName];

  return mf_decodedIMAPMailboxName;
}

- (id)_uidNameForPathComponent:(id)component
{
  mf_encodedIMAPMailboxName = [component mf_encodedIMAPMailboxName];

  return mf_encodedIMAPMailboxName;
}

- (id)_nameForMailboxUid:(id)uid
{
  uidCopy = uid;
  if (self->super._inboxMailboxUid == uidCopy)
  {
    v6 = @"INBOX";
    goto LABEL_32;
  }

  serverPathPrefix = [(IMAP_Account *)self serverPathPrefix];
  if (!serverPathPrefix && ([(MFMailboxUid *)uidCopy parent], v7 = objc_claimAutoreleasedReturnValue(), rootMailboxUid = self->super._rootMailboxUid, v7, v7 == rootMailboxUid))
  {
    name = [(MFMailboxUid *)uidCopy name];
  }

  else
  {
    if (self->super._rootMailboxUid != uidCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ([(__CFString *)serverPathPrefix length])
      {
        v10 = ![(MFMailboxUid *)uidCopy isShared];
        if (!uidCopy)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = 0;
        if (!uidCopy)
        {
LABEL_16:
          if (v10)
          {
            v15 = [(__CFString *)serverPathPrefix mutableCopyWithZone:0];
          }

          else
          {
            v15 = 0;
          }

          v16 = [v9 count];
          separatorChar = [(IMAP_Account *)self separatorChar];
          if (v16)
          {
            for (i = v16 - 1; i != -1; --i)
            {
              v19 = [v9 objectAtIndex:i];
              v20 = v19;
              if (v15)
              {
                if (!separatorChar)
                {

                  v15 = 0;
                  break;
                }

                [v15 appendString:separatorChar];
                [v15 appendString:v20];
              }

              else
              {
                v15 = [v19 mutableCopyWithZone:0];
              }
            }
          }

          v6 = v15;

          goto LABEL_31;
        }
      }

      do
      {
        if (uidCopy == self->super._rootMailboxUid)
        {
          break;
        }

        name2 = [(MFMailboxUid *)uidCopy name];
        [v9 addObject:name2];

        parent = [(MFMailboxUid *)uidCopy parent];

        uidCopy = parent;
      }

      while (parent);
      goto LABEL_16;
    }

    v11 = &stru_288159858;
    if (serverPathPrefix)
    {
      v11 = serverPathPrefix;
    }

    name = v11;
  }

  v6 = name;
LABEL_31:

LABEL_32:

  return v6;
}

- (id)nameForMailboxUid:(id)uid
{
  v3 = [(IMAP_Account *)self _nameForMailboxUid:uid];

  return v3;
}

- (id)_mailboxUidForName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy)
  {
    rootMailboxUid = 0;
    goto LABEL_26;
  }

  v6 = [(__CFString *)nameCopy caseInsensitiveCompare:@"INBOX"];
  if (!v6)
  {

    v5 = @"INBOX";
  }

  serverPathPrefix = [(IMAP_Account *)self serverPathPrefix];
  separatorChar = [(IMAP_Account *)self separatorChar];
  if (!serverPathPrefix || ![serverPathPrefix length] || !v6)
  {
    goto LABEL_14;
  }

  v9 = [(__CFString *)v5 rangeOfString:serverPathPrefix options:8];
  if (v10)
  {
    v11 = [(__CFString *)v5 substringFromIndex:v9 + v10];

    if (separatorChar && v11 && (v12 = [(__CFString *)v11 rangeOfString:separatorChar options:8], v13))
    {
      v14 = [(__CFString *)v11 substringFromIndex:v12 + v13];

      v5 = v14;
    }

    else
    {
      v5 = v11;
    }

LABEL_14:
    rootMailboxUid = 0;
    if (separatorChar && v5)
    {
      v16 = [(__CFString *)v5 componentsSeparatedByString:separatorChar];
      rootMailboxUid = [(MailAccount *)self rootMailboxUid];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v18)
      {
        v19 = *v24;
        do
        {
          v20 = 0;
          v21 = rootMailboxUid;
          do
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v17);
            }

            rootMailboxUid = [v21 childWithName:{*(*(&v23 + 1) + 8 * v20), v23}];

            ++v20;
            v21 = rootMailboxUid;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v18);
      }
    }

    goto LABEL_25;
  }

  v5 = 0;
  rootMailboxUid = 0;
LABEL_25:

LABEL_26:

  return rootMailboxUid;
}

- (BOOL)canMailboxBeDeleted:(id)deleted
{
  deletedCopy = deleted;
  if ([deletedCopy isEqual:self->super._inboxMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IMAP_Account;
    v5 = [(MailAccount *)&v7 canMailboxBeDeleted:deletedCopy];
  }

  return v5;
}

- (id)serverPathPrefix
{
  serverPathPrefixAccountValue = [(IMAP_Account *)self serverPathPrefixAccountValue];
  if (!serverPathPrefixAccountValue)
  {
    serverPathPrefixAccountValue = self->_serverNamespace;
  }

  return serverPathPrefixAccountValue;
}

- (id)serverPathPrefixAccountValue
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ServerPathPrefix"];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setServerPathPrefix:(id)prefix shouldSync:(BOOL)sync
{
  syncCopy = sync;
  prefixCopy = prefix;
  serverPathPrefixAccountValue = [(IMAP_Account *)self serverPathPrefixAccountValue];
  v7 = prefixCopy;
  if (!prefixCopy)
  {
    v7 = &stru_288159858;
  }

  v15 = v7;
  if (serverPathPrefixAccountValue)
  {
    v8 = serverPathPrefixAccountValue;
  }

  else
  {
    v8 = &stru_288159858;
  }

  separatorChar = [(IMAP_Account *)self separatorChar];
  if (separatorChar)
  {
    v9 = [v15 rangeOfString:separatorChar options:12];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v15 substringToIndex:v9];

      v15 = v11;
    }
  }

  v12 = [v15 length];
  if (v12 != -[__CFString length](v8, "length") || ([v15 isEqual:v8] & 1) == 0)
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    [allMailboxUids makeObjectsPerformSelector:sel_URLString];

    _MFLockGlobalLock();
    if (v15 && [v15 length])
    {
      [(MFAccount *)self setAccountProperty:v15 forKey:@"ServerPathPrefix"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"ServerPathPrefix"];
    }

    _MFUnlockGlobalLock();
    if (syncCopy)
    {
      [(IMAP_Account *)self releaseAllConnections];
      [(IMAP_Account *)self nowWouldBeAGoodTimeToStartBackgroundSynchronization];
    }
  }
}

- (id)_fileSystemServerPathPrefix
{
  serverPathPrefix = [(IMAP_Account *)self serverPathPrefix];
  separatorChar = [(IMAP_Account *)self separatorChar];
  v5 = separatorChar;
  v6 = 0;
  if (serverPathPrefix && separatorChar)
  {
    v8 = [serverPathPrefix rangeOfString:separatorChar options:8];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([serverPathPrefix length] <= (v8 + v7))
      {
        v6 = 0;
        goto LABEL_11;
      }

      v9 = [serverPathPrefix substringFromIndex:?];

      serverPathPrefix = v9;
    }

    v10 = [serverPathPrefix componentsSeparatedByString:v5];
    v11 = [v10 mutableCopy];

    v12 = [v11 count];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = [v11 objectAtIndex:i];
        v15 = [(IMAP_Account *)self _pathComponentForUidName:v14];
        [v11 replaceObjectAtIndex:i withObject:v15];
      }
    }

    v6 = [v11 componentsJoinedByString:@"/"];
  }

LABEL_11:

  return v6;
}

- (id)_mailboxPathPrefix
{
  _fileSystemServerPathPrefix = [(IMAP_Account *)self _fileSystemServerPathPrefix];
  v3 = _fileSystemServerPathPrefix;
  if (_fileSystemServerPathPrefix)
  {
    v4 = _fileSystemServerPathPrefix;
  }

  else
  {
    v4 = &stru_288159858;
  }

  return v4;
}

- (void)deleteMessagesFromMailboxUid:(id)uid olderThanNumberOfDays:(unsigned int)days
{
  v4 = *&days;
  v25 = *MEMORY[0x277D85DE8];
  uidCopy = uid;
  flags = self->super._flags;
  self->super._flags = (*&flags | 0x10000);
  _shouldLogDeleteActivity = [(MailAccount *)self _shouldLogDeleteActivity];
  if (_shouldLogDeleteActivity)
    v9 = {;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->super.super.mambaID;
      vf_publicDescription = [(MFAccount *)self vf_publicDescription];
      vf_publicDescription2 = [uidCopy vf_publicDescription];
      *buf = 136316162;
      v16 = mambaID;
      v17 = 2080;
      v18 = " ";
      v19 = 2114;
      v20 = vf_publicDescription;
      v21 = 2114;
      v22 = vf_publicDescription2;
      v23 = 1024;
      v24 = v4;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@ deleting messages from mailbox: %{public}@ older than %d days", buf, 0x30u);
    }
  }

  v14.receiver = self;
  v14.super_class = IMAP_Account;
  [(MailAccount *)&v14 deleteMessagesFromMailboxUid:uidCopy olderThanNumberOfDays:v4];
  v13 = self->super._flags;
  if ((*&v13 & 0x10000) != 0)
  {
    self->super._flags = (*&v13 & 0xFFFEFFFF | ((HIWORD(*&flags) & 1) << 16));
  }
}

- (id)offlineCacheIfExists
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  v3 = self->_offlineCache;
  [(NSRecursiveLock *)self->_connectionLock unlock];

  return v3;
}

- (id)offlineCacheIfOffline
{
  if ([(IMAP_Account *)self isOffline])
  {
    v3 = [(IMAP_Account *)self connectionForStore:0 delegate:0 options:1];
    [(NSRecursiveLock *)self->_connectionLock lock];
    if ([(IMAP_Account *)self isOffline])
    {
      offlineCache = self->_offlineCache;
      if (!offlineCache)
      {
        v5 = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
        v6 = self->_offlineCache;
        self->_offlineCache = v5;

        offlineCache = self->_offlineCache;
      }

      v7 = offlineCache;
    }

    else
    {
      v7 = 0;
    }

    [(NSRecursiveLock *)self->_connectionLock unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)offlineCache
{
  [(NSRecursiveLock *)self->_connectionLock lock];
  offlineCache = self->_offlineCache;
  if (!offlineCache)
  {
    v4 = [objc_allocWithZone(MFIMAPOperationCache) initWithIMAPAccount:self];
    v5 = self->_offlineCache;
    self->_offlineCache = v4;

    offlineCache = self->_offlineCache;
  }

  v6 = offlineCache;
  [(NSRecursiveLock *)self->_connectionLock unlock];

  return v6;
}

- (id)offlineCacheDirectoryPath
{
  path = [(MailAccount *)self path];
  v3 = [path stringByAppendingPathComponent:@".OfflineCache"];

  return v3;
}

- (BOOL)hasPendingOfflineOperations
{
  offlineCache = [(IMAP_Account *)self offlineCache];
  hasPendingOfflineOperations = [offlineCache hasPendingOfflineOperations];

  return hasPendingOfflineOperations;
}

- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create
{
  createCopy = create;
  pathCopy = path;
  _fileSystemServerPathPrefix = [(IMAP_Account *)self _fileSystemServerPathPrefix];
  if ([_fileSystemServerPathPrefix length] && (objc_msgSend(pathCopy, "isEqualToString:", @"INBOX") & 1) == 0 && objc_msgSend(pathCopy, "hasPrefix:", _fileSystemServerPathPrefix))
  {
    pathComponents = [pathCopy pathComponents];
    pathComponents2 = [_fileSystemServerPathPrefix pathComponents];
    v10 = [pathComponents2 count];
    if (v10 >= [pathComponents count])
    {
      v16.receiver = self;
      v16.super_class = IMAP_Account;
      v13 = [(MailAccount *)&v16 mailboxUidForRelativePath:&stru_288159858 create:createCopy];
      v11 = pathComponents;
    }

    else
    {
      v11 = [pathComponents subarrayWithRange:{v10, objc_msgSend(pathComponents, "count") - v10}];

      v12 = [v11 componentsJoinedByString:@"/"];
      v17.receiver = self;
      v17.super_class = IMAP_Account;
      v13 = [(MailAccount *)&v17 mailboxUidForRelativePath:v12 create:createCopy];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = IMAP_Account;
    v13 = [(MailAccount *)&v15 mailboxUidForRelativePath:pathCopy create:createCopy];
  }

  return v13;
}

- (id)_infoForMatchingURL:(id)l
{
  lCopy = l;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  path = [lCopy path];
  [dictionary setObject:self forKey:@"Account"];
  if (path)
  {
    separatorChar = [(IMAP_Account *)self separatorChar];
    v9 = [path rangeOfString:@"/" options:8];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [path substringWithRange:{v9 + v8, objc_msgSend(path, "length") - (v9 + v8)}];

      path = v10;
    }

    if (separatorChar)
    {
      v12 = [path rangeOfString:separatorChar options:8];
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [path substringWithRange:{v12 + v11, objc_msgSend(path, "length") - (v12 + v11)}];

        path = v13;
      }
    }

    if (([path isEqualToString:&stru_288159858] & 1) == 0)
    {
      [dictionary setObject:path forKey:@"RelativePath"];
    }
  }

  return dictionary;
}

- (void)addFlagChanges:(id)changes forMailboxPath:(id)path UID:(unsigned int)d
{
  v5 = *&d;
  v22 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  pathCopy = path;
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v10 = [[_MFFlagChangeEntry alloc] initWithPath:pathCopy UID:v5 changes:changesCopy];
  recentFlagChanges = self->_recentFlagChanges;
  if (recentFlagChanges)
  {
    [(NSMutableArray *)recentFlagChanges addObject:v10];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    v13 = self->_recentFlagChanges;
    self->_recentFlagChanges = v12;
  }
  v14 = ;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->super.super.mambaID;
    *buf = 136315650;
    v17 = mambaID;
    v18 = 2080;
    v19 = " ";
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges added %@", buf, 0x20u);
  }
}

- (id)flagChangesForMailboxPath:(id)path UID:(unsigned int)d connectTime:(double)time
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_recentFlagChanges;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
  selfCopy = self;
  v11 = 0;
  if (v10)
  {
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        if ([v14 uid] == d && objc_msgSend(v14, "connectionTag") == -1)
        {
          [v14 commitTime];
          if (v15 == 0.0 || ([v14 commitTime], v16 > time))
          {
            path = [v14 path];
            v18 = [path isEqualToString:pathCopy];

            if (v18)
              v20 = {;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                mambaID = selfCopy->super.super.mambaID;
                *buf = 136315650;
                v34 = mambaID;
                v35 = 2080;
                v36 = " ";
                v37 = 2112;
                v38 = v14;
                _os_log_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges using changes from %@", buf, 0x20u);
              }

              changes = [v14 changes];
              if (v11)
              {
                [v11 addEntriesFromDictionary:changes];
              }

              else
              {
                v11 = [changes mutableCopy];
              }
            }
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v23 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
      v10 = v23;
    }

    while (v23);
  }

  unlock = [(NSRecursiveLock *)selfCopy->_flagChangesLock unlock];
  if (v11)
    v25 = {;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = selfCopy->super.super.mambaID;
      *buf = 136315650;
      v34 = v26;
      v35 = 2080;
      v36 = " ";
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_2720B1000, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges resulting changes are %@", buf, 0x20u);
    }
  }

  return v11;
}

- (void)removeFlagChanges:(id)changes forMessages:(id)messages
{
  v32 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  messagesCopy = messages;
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v7 = [(NSMutableArray *)self->_recentFlagChanges count];
  while (v7)
  {
    v8 = [(NSMutableArray *)self->_recentFlagChanges objectAtIndex:--v7];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = messagesCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v8 uid];
          if (v14 == [v13 uid])
          {
            changes = [v8 changes];
            v16 = [changes isEqual:changesCopy];

            if (v16)
              v18 = {;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                mambaID = self->super.super.mambaID;
                *buf = 136315650;
                v26 = mambaID;
                v27 = 2080;
                v28 = " ";
                v29 = 2112;
                v30 = v8;
                _os_log_impl(&dword_2720B1000, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges removing failed entry %@", buf, 0x20u);
              }

              [(NSMutableArray *)self->_recentFlagChanges removeObjectAtIndex:v7];
              goto LABEL_15;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];
}

- (void)removeFlagChangesCommittedBefore:(double)before
{
  v24 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v5 = [(NSMutableArray *)self->_recentFlagChanges count];
  if (v5)
  {
    v7 = v5 - 1;
    *&v6 = 136315650;
    v17 = v6;
    do
    {
      v8 = [(NSMutableArray *)self->_recentFlagChanges objectAtIndex:v7, v17];
      [(NSMutableArray *)v8 commitTime];
      if (v9 != 0.0)
      {
        commitTime = [(NSMutableArray *)v8 commitTime];
        if (v11 < before)
          v12 = {;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = self->super.super.mambaID;
            *buf = v17;
            v19 = mambaID;
            v20 = 2080;
            v21 = " ";
            v22 = 2112;
            v23 = v8;
            _os_log_impl(&dword_2720B1000, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges removing committed entry %@", buf, 0x20u);
          }

          [(NSMutableArray *)self->_recentFlagChanges removeObjectAtIndex:v7];
        }
      }

      --v7;
    }

    while (v7 != -1);
  }
  v14 = ;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = self->super.super.mambaID;
    recentFlagChanges = self->_recentFlagChanges;
    *buf = 136315650;
    v19 = v15;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = recentFlagChanges;
    _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges remaining change entries: %@", buf, 0x20u);
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];
}

- (void)setCommitTime:(double)time forConnectionTag:(unsigned int)tag
{
  v28 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_recentFlagChanges;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        connectionTag = [v11 connectionTag];
        if (connectionTag == tag)
          v13 = {;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = self->super.super.mambaID;
            *buf = 136315906;
            v20 = mambaID;
            v21 = 2080;
            v22 = " ";
            v23 = 1024;
            timeCopy = time;
            v25 = 2112;
            v26 = v11;
            _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges setting commit time %d for change %@", buf, 0x26u);
          }

          [v11 setCommitTime:time];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v8);
  }

  [(NSRecursiveLock *)self->_flagChangesLock unlock];
}

- (void)setConnectionTag:(unsigned int)tag forFlagChanges:(id)changes forMessages:(id)messages
{
  v6 = *&tag;
  v45 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  messagesCopy = messages;
  [(NSRecursiveLock *)self->_flagChangesLock lock];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = self->_recentFlagChanges;
  v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v24)
  {
    v22 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = messagesCopy;
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v43 count:16];
        if (v11)
        {
          v12 = *v28;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v27 + 1) + 8 * j);
              v15 = [v9 uid];
              if (v15 == [v14 uid])
              {
                changes = [v9 changes];
                v17 = [changes isEqual:changesCopy];

                if (v17)
                  v19 = {;
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    mambaID = selfCopy->super.super.mambaID;
                    *buf = 136315906;
                    v36 = mambaID;
                    v37 = 2080;
                    v38 = " ";
                    v39 = 1024;
                    v40 = v6;
                    v41 = 2112;
                    v42 = v9;
                    _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s#IMAPFlagChanges setting connection %d for change %@", buf, 0x26u);
                  }

                  [v9 setConnectionTag:v6];
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v27 objects:v43 count:16];
          }

          while (v11);
        }
      }

      v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v24);
  }

  [(NSRecursiveLock *)selfCopy->_flagChangesLock unlock];
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = defaultCenter;
  if (self->super._library)
  {
    [defaultCenter removeObserver:self name:0 object:?];
  }

  v7.receiver = self;
  v7.super_class = IMAP_Account;
  [(MailAccount *)&v7 setLibrary:libraryCopy];
  if (self->super._library)
  {
    [v6 addObserver:self selector:sel_messagesAdded_ name:@"MailMessageStoreMessagesAdded" object:?];
  }
}

- (BOOL)canFetch
{
  v3.receiver = self;
  v3.super_class = IMAP_Account;
  return [(MailAccount *)&v3 canFetch];
}

- (void)connectionForStore:(uint64_t)a1 delegate:(uint64_t)a2 options:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = 136315650;
  v5 = v3;
  v6 = 2080;
  v7 = " ";
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#E %s%s*** Unable to determine name for %@", &v4, 0x20u);
}

@end