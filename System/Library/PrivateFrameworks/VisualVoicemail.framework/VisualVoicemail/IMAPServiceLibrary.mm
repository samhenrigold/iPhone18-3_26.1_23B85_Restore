@interface IMAPServiceLibrary
- (BOOL)isMessageContentsLocallyAvailable:(id)available;
- (BOOL)verifyCachedMessage:(id)message hasToken:(id)token flags:(unsigned int)flags remoteIDStr:(id)str;
- (IMAPServiceAccount)account;
- (IMAPServiceLibrary)initWithServiceAccount:(id)account;
- (id)_getDetailsForMailbox:(id)mailbox useRemoteIDRange:(_NSRange *)range;
- (id)_mailboxUidForStoreRecord:(void *)record;
- (id)_messageWithAccountStoreRecord:(id)record record:(void *)a4 localStore:(BOOL)store;
- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3;
- (id)getDetailsForAllMessagesFromMailbox:(id)mailbox;
- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox;
- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)range fromMailbox:(id)mailbox;
- (id)mailboxUidForMessage:(id)message;
- (id)messageWithAccountStoreRecord:(void *)record;
- (id)messageWithLibraryID:(unsigned int)d options:(unsigned int)options inMailbox:(id)mailbox;
- (id)messageWithRemoteID:(id)d inRemoteMailbox:(id)mailbox;
- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages;
- (unsigned)deletedCountForMailbox:(id)mailbox;
- (unsigned)maximumRemoteIDForMailbox:(id)mailbox;
- (unsigned)minimumRemoteIDForMailbox:(id)mailbox;
- (unsigned)nonDeletedCountForMailbox:(id)mailbox;
- (unsigned)totalCountForMailbox:(id)mailbox;
- (unsigned)unreadCountForMailbox:(id)mailbox;
- (void)_resetCountsForCompaction;
- (void)_setFlags:(unint64_t)flags forMessage:(id)message postAndCommit:(BOOL)commit;
- (void)compactMailbox:(id)mailbox;
- (void)compactMessages:(id)messages permanently:(BOOL)permanently;
- (void)copyAudioDataToMainStore:(void *)store dstRecord:(void *)record;
- (void)copyStoreRecordForMessage:(id)message;
- (void)createMainStoreRecord:(void *)record;
- (void)dealloc;
- (void)flushMessageCache;
- (void)mergeRecord:(void *)record;
- (void)removeAllMessagesFromMailbox:(id)mailbox andNotify:(BOOL)notify;
- (void)setFlagsForMessages:(id)messages mask:(unint64_t)mask;
- (void)updateMainStoreRecord:(void *)record dstRecord:(void *)dstRecord token:(__CFString *)token;
- (void)updateSelectedMessages:(id)messages withMailbox:(id)mailbox;
@end

@implementation IMAPServiceLibrary

- (IMAPServiceLibrary)initWithServiceAccount:(id)account
{
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = IMAPServiceLibrary;
  v5 = [(IMAPServiceLibrary *)&v15 initWithPath:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_account, accountCopy);
    v7 = +[NSMapTable strongToWeakObjectsMapTable];
    knownMessages = v6->_knownMessages;
    v6->_knownMessages = v7;

    v6->isLongLifeMessagesCache = 0;
    v9 = objc_alloc_init(MFLibraryStore);
    sharedGenericStore = v6->_sharedGenericStore;
    v6->_sharedGenericStore = v9;

    v11 = sub_10001E9B0([(MFLibraryStore *)v6->_sharedGenericStore setLibrary:v6]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      account = [(IMAPServiceLibrary *)v6 account];
      v13 = *&account[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = accountCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated %@ for service account %@", buf, 0x2Au);
    }
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_account, 0);
  v3.receiver = self;
  v3.super_class = IMAPServiceLibrary;
  [(IMAPServiceLibrary *)&v3 dealloc];
}

- (id)_mailboxUidForStoreRecord:(void *)record
{
  Flags = VMStoreRecordGetFlags(record);
  account = [(IMAPServiceLibrary *)self account];
  v6 = account;
  v7 = off_1000EDEB0;
  if ((Flags & 8) == 0)
  {
    v7 = &off_1000EDEB8;
  }

  v8 = [account mailboxUidForRelativePath:*v7 create:1];

  return v8;
}

- (void)flushMessageCache
{
  v3 = sub_10001E9B0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = [(IMAPServiceLibrary *)self account];
    v5 = *&account[OBJC_IVAR___MFAccount_mambaID];
    knownMessages = [(IMAPServiceLibrary *)self knownMessages];
    v8 = 136315650;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 1024;
    v13 = [knownMessages count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sFlushed knownMessages cache. It had %d elements.", &v8, 0x1Cu);
  }

  v7 = +[NSMapTable strongToWeakObjectsMapTable];
  [(IMAPServiceLibrary *)self setKnownMessages:v7];
}

- (BOOL)verifyCachedMessage:(id)message hasToken:(id)token flags:(unsigned int)flags remoteIDStr:(id)str
{
  messageCopy = message;
  tokenCopy = token;
  strCopy = str;
  if (!self->isLongLifeMessagesCache)
  {
    goto LABEL_6;
  }

  messageFlags = [messageCopy messageFlags];
  if ((messageFlags & 1 | (4 * ((messageFlags >> 1) & 1)) | (messageFlags >> 27) & 0x20) != flags)
  {
    v22 = sub_10001E9B0(messageFlags);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      account = [(IMAPServiceLibrary *)self account];
      v24 = *&account[OBJC_IVAR___MFAccount_mambaID];
      v32 = 136315906;
      v33 = v24;
      v34 = 2080;
      v35 = " ";
      v36 = 1024;
      messageFlags2 = [messageCopy messageFlags];
      v38 = 1024;
      flagsCopy = flags;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, flags %u vs %u", &v32, 0x22u);
    }

    goto LABEL_15;
  }

  remoteID = [messageCopy remoteID];
  v15 = [remoteID isEqualToString:strCopy];

  if ((v15 & 1) == 0)
  {
    v22 = sub_10001E9B0(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      account2 = [(IMAPServiceLibrary *)self account];
      v26 = *&account2[OBJC_IVAR___MFAccount_mambaID];
      v32 = 136315394;
      v33 = v26;
      v34 = 2080;
      v35 = " ";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different remoteID", &v32, 0x16u);
    }

    goto LABEL_15;
  }

  hasTemporaryUid = [messageCopy hasTemporaryUid];
  if (((((flags & 0x20) == 0) ^ hasTemporaryUid) & 1) == 0)
  {
    v22 = sub_10001E9B0(hasTemporaryUid);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v28 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      v32 = 136315394;
      v33 = v28;
      v34 = 2080;
      v35 = " ";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different temporaryID", &v32, 0x16u);
    }

    goto LABEL_15;
  }

  messageIDHeader = [messageCopy messageIDHeader];
  v19 = [messageIDHeader isEqualToString:tokenCopy];

  if ((v19 & 1) == 0)
  {
    v22 = sub_10001E9B0(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      account4 = [(IMAPServiceLibrary *)self account];
      v30 = *&account4[OBJC_IVAR___MFAccount_mambaID];
      v32 = 136315394;
      v33 = v30;
      v34 = 2080;
      v35 = " ";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sverifyCachedMessage failed, different token", &v32, 0x16u);
    }

LABEL_15:

    v21 = 0;
    goto LABEL_16;
  }

LABEL_6:
  v21 = 1;
LABEL_16:

  return v21;
}

- (id)_messageWithAccountStoreRecord:(id)record record:(void *)a4 localStore:(BOOL)store
{
  storeCopy = store;
  recordCopy = record;
  v9 = recordCopy;
  if (a4)
  {
    v10 = sub_100092784(recordCopy, a4);
    sub_100092B0C(v9, a4);
    v12 = v11;
    sub_10009278C(v9, a4);
    v14 = v13;
    v15 = [NSString alloc];
    if ((v12 & 0x20) != 0)
    {
      v16 = @"temp-%u";
    }

    else
    {
      v16 = @"%u";
    }

    v39 = [v15 initWithFormat:v16, v14];
    v38 = sub_100092A8C(v9, a4);
    knownMessages = [(IMAPServiceLibrary *)self knownMessages];
    v18 = [NSNumber numberWithUnsignedInt:v10];
    v19 = [knownMessages objectForKey:v18];

    if (v19 && (v20 = [(IMAPServiceLibrary *)self verifyCachedMessage:v19 hasToken:v38 flags:v12 remoteIDStr:v39], (v20 & 1) != 0))
    {
      v21 = sub_10001E9B0(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        account = [(IMAPServiceLibrary *)self account];
        v23 = *&account[OBJC_IVAR___MFAccount_mambaID];
        account2 = [(IMAPServiceLibrary *)self account];
        serviceLabelID = [account2 serviceLabelID];
        *buf = 136315906;
        v41 = v23;
        v42 = 2080;
        v43 = " ";
        v44 = 2112;
        v45 = serviceLabelID;
        v46 = 1024;
        v47 = v10;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s%@, message %u taken from Known", buf, 0x26u);
      }

      v26 = v19;
    }

    else
    {
      v26 = [[IMAPServiceLibraryMessage alloc] initWithLibraryID:v10];

      [(IMAPServiceLibraryMessage *)v26 setRemoteID:v39];
      [(IMAPServiceLibraryMessage *)v26 setMessageFlagsWithoutCommitting:v12 & 1 | (2 * ((v12 >> 2) & 1))];
      [(IMAPServiceLibraryMessage *)v26 setHasTemporaryUid:(v12 >> 5) & 1];
      if (storeCopy)
      {
        sharedGenericStore = [(IMAPServiceLibrary *)self sharedGenericStore];
        account3 = sharedGenericStore;
      }

      else
      {
        account3 = [(IMAPServiceLibrary *)self account];
        a4 = [(IMAPServiceLibrary *)self _mailboxUidForStoreRecord:a4];
        sharedGenericStore = [account3 storeForMailboxUid:a4];
      }

      [(IMAPServiceLibraryMessage *)v26 setMessageStore:sharedGenericStore];
      if (!storeCopy)
      {
      }

      [(IMAPServiceLibraryMessage *)v26 setMessageIDHeader:v38];
      knownMessages2 = [(IMAPServiceLibrary *)self knownMessages];
      v30 = [NSNumber numberWithUnsignedInt:v10];
      [knownMessages2 setObject:v26 forKey:v30];

      v21 = sub_10001E9B0(v31);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)self account];
        v33 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        account5 = [(IMAPServiceLibrary *)self account];
        serviceLabelID2 = [account5 serviceLabelID];
        knownMessages3 = [(IMAPServiceLibrary *)self knownMessages];
        *buf = 136316162;
        v41 = v33;
        v42 = 2080;
        v43 = " ";
        v44 = 2112;
        v45 = serviceLabelID2;
        v46 = 1024;
        v47 = v10;
        v48 = 1024;
        v49 = [knownMessages3 count];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s%@, message %u added to Known. Known map size: %d", buf, 0x2Cu);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)messageWithAccountStoreRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v7 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:accountStore record:record localStore:0];

  return v7;
}

- (void)copyStoreRecordForMessage:(id)message
{
  messageCopy = message;
  v4 = messageCopy;
  if (messageCopy)
  {
    [messageCopy libraryID];
    v5 = VMStoreCopyRecordWithIdentifier();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)messageWithLibraryID:(unsigned int)d options:(unsigned int)options inMailbox:(id)mailbox
{
  v5 = *&d;
  v7 = [(IMAPServiceLibrary *)self account:*&d];
  accountStore = [v7 accountStore];
  v9 = sub_1000931E8(accountStore, v5);

  if (v9)
  {
    account = [(IMAPServiceLibrary *)self account];
    accountStore2 = [account accountStore];
    v12 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:accountStore2 record:v9 localStore:1];

    CFRelease(v9);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unsigned)unreadCountForMailbox:(id)mailbox
{
  if (sub_10001FAD0(mailbox) != 1)
  {
    return 0;
  }

  account = [(IMAPServiceLibrary *)self account];
  serviceLabelID = [account serviceLabelID];
  v6 = VMStoreCountOfRecordsWithFlags(0, 13, serviceLabelID);

  return v6;
}

- (unsigned)deletedCountForMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(12, 16, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(4, 24, serviceLabelID);
  }

  v8 = v7;

  return v8;
}

- (unsigned)nonDeletedCountForMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(8, 4, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(0, 12, serviceLabelID);
  }

  v8 = v7;

  return v8;
}

- (unsigned)totalCountForMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(8, 16, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return 0;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCountOfRecordsWithFlags(0, 24, serviceLabelID);
  }

  v8 = v7;

  return v8;
}

- (id)messageWithRemoteID:(id)d inRemoteMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v20 = 0;
  v7 = sub_10001FF88(d, &v20);
  v8 = sub_10001FAD0(mailboxCopy);
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v11 = accountStore;
  if (v8 == 1)
  {
    v12 = 24;
  }

  else
  {
    v12 = 16;
  }

  if (v20)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  if (v20)
  {
    v14 = 0;
  }

  else
  {
    v14 = 32;
  }

  v15 = sub_1000931F0(accountStore, v7, v13 | (8 * (v8 != 1)), v14 | v12);

  if (v15)
  {
    account2 = [(IMAPServiceLibrary *)self account];
    accountStore2 = [account2 accountStore];
    v18 = [(IMAPServiceLibrary *)self _messageWithAccountStoreRecord:accountStore2 record:v15 localStore:1];

    CFRelease(v15);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unsigned)maximumRemoteIDForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v7 = sub_10001FAD0(mailboxCopy) == 2;
  v8 = sub_100093200(accountStore, v7, 0);

  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = [CFArrayGetValueAtIndex(v8 Count - 1)];
    }

    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)minimumRemoteIDForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];
  v7 = sub_10001FAD0(mailboxCopy) == 2;
  v8 = sub_100093200(accountStore, v7, 0);

  if (v8)
  {
    if (CFArrayGetCount(v8) < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = [CFArrayGetValueAtIndex(v8 0)];
    }

    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_getDetailsForMailbox:(id)mailbox useRemoteIDRange:(_NSRange *)range
{
  mailboxCopy = mailbox;
  v51 = sub_10001FAD0(mailboxCopy);
  selfCopy = self;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v8 = sub_10001E9B0(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)selfCopy account];
    v10 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    if (range)
    {
      v11 = NSStringFromRange(*range);
    }

    else
    {
      v11 = @"nil";
    }

    v12 = @"Trash";
    *buf = 136315906;
    v53 = v10;
    v54 = 2080;
    v55 = " ";
    if (v51 == 1)
    {
      v12 = @"Inbox";
    }

    v56 = 2112;
    v57 = v11;
    v58 = 2112;
    v59 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s--> Get details <range=%@ mailbox=%@> begin", buf, 0x2Au);
    if (range)
    {
    }
  }

  if (v51 == 1)
  {
    if (!range || (location = range->location, range->location == 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 0;
      v15 = 104;
LABEL_18:
      theArray = sub_1000931D0(accountStore, v14, v15);
      goto LABEL_29;
    }

    v17 = range->length + location;
    if (v17 >= &_mh_execute_header)
    {
      v18 = sub_10001E9B0(location);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(IMAPServiceLibrary *)selfCopy account];
        v20 = *&account3[OBJC_IVAR___MFAccount_mambaID];
        v21 = NSStringFromRange(*range);
        *buf = 136315906;
        v53 = v20;
        v54 = 2080;
        v55 = " ";
        v56 = 2112;
        v57 = v21;
        v58 = 2048;
        v59 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived range %@ with maximum range %ld greater than would not fit in 32-bit container.  Truncating to UINT32_MAX.", buf, 0x2Au);
      }

      location = range->location;
      v17 = 0xFFFFFFFFLL;
    }

    v22 = sub_10001E900(location);
    v23 = sub_10001E900(v17);
    theArray = sub_1000931BC(accountStore, 0, 104, v22, v23);
  }

  else
  {
    if (v51 != 2)
    {
      goto LABEL_31;
    }

    if (!range || (v16 = range->location, range->location == 0x7FFFFFFFFFFFFFFFLL))
    {
      v15 = 96;
      v14 = 8;
      goto LABEL_18;
    }

    v24 = range->length + v16;
    if (HIDWORD(v24))
    {
      v25 = sub_10001E9B0(v16);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)selfCopy account];
        v27 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        v28 = NSStringFromRange(*range);
        *buf = 136315906;
        v53 = v27;
        v54 = 2080;
        v55 = " ";
        v56 = 2112;
        v57 = v28;
        v58 = 2048;
        v59 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived range %@ with maximum range %ld greater than would not fit in 32-bit container.  Truncating to UINT32_MAX.", buf, 0x2Au);
      }

      v16 = range->location;
      v24 = 0xFFFFFFFFLL;
    }

    v29 = sub_10001E900(v16);
    v30 = sub_10001E900(v24);
    theArray = sub_1000931BC(accountStore, 8, 96, v29, v30);
  }

LABEL_29:
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v45 = 0;
    goto LABEL_32;
  }

LABEL_31:
  theArray = 0;
  Count = 0;
  v45 = 1;
LABEL_32:
  v32 = [[NSMutableArray alloc] initWithCapacity:Count];
  v49 = v32;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v35 = objc_alloc_init(MFMessageDetails);
      *&v35[OBJC_IVAR___MFMessageDetails_library] = selfCopy;
      sub_100092B0C(accountStore, ValueAtIndex);
      *&v35[OBJC_IVAR___MFMessageDetails_messageFlags] = v36 & 1 | (2 * ((v36 >> 2) & 1));
      sub_10009278C(accountStore, ValueAtIndex);
      *&v35[OBJC_IVAR___MFMessageDetails_uid] = v37;
      *&v35[OBJC_IVAR___MFMessageDetails_libraryID] = sub_100092784(accountStore, ValueAtIndex);
      *&v35[OBJC_IVAR___MFMessageDetails_mailboxID] = v51;
      sub_100092820(accountStore, ValueAtIndex);
      *&v35[OBJC_IVAR___MFMessageDetails_dateReceived] = v38;
      [v49 addObject:v35];
    }
  }

  v39 = sub_10001E9B0(v32);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    account5 = [(IMAPServiceLibrary *)selfCopy account];
    v41 = *&account5[OBJC_IVAR___MFAccount_mambaID];
    if (range)
    {
      v42 = NSStringFromRange(*range);
    }

    else
    {
      v42 = @"nil";
    }

    v43 = @"Trash";
    *buf = 136316418;
    v53 = v41;
    v54 = 2080;
    v55 = " ";
    if (v51 == 1)
    {
      v43 = @"Inbox";
    }

    v56 = 2112;
    v57 = v42;
    v58 = 2112;
    v59 = v43;
    v60 = 2112;
    v61 = accountStore;
    v62 = 2112;
    v63 = v49;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sGet details <range=%@ mailbox=%@ store=%@> for messages %@", buf, 0x3Eu);
    if (range)
    {
    }
  }

  if ((v45 & 1) == 0)
  {
    CFRelease(theArray);
  }

  return v49;
}

- (id)getDetailsForAllMessagesFromMailbox:(id)mailbox
{
  v3 = [(IMAPServiceLibrary *)self _getDetailsForMailbox:mailbox useRemoteIDRange:0];

  return v3;
}

- (id)getDetailsForMessagesWithRemoteIDInRange:(_NSRange)range fromMailbox:(id)mailbox
{
  rangeCopy = range;
  v4 = [(IMAPServiceLibrary *)self _getDetailsForMailbox:mailbox useRemoteIDRange:&rangeCopy];

  return v4;
}

- (void)_resetCountsForCompaction
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100020A58;
  v2[3] = &unk_1000EDE10;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)compactMailbox:(id)mailbox
{
  v4 = sub_10001FAD0(mailbox);
  if (v4 == 2)
  {
    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCopyOfAllRecordsWithFlags(12, 16, serviceLabelID);
  }

  else
  {
    if (v4 != 1)
    {
      return;
    }

    account = [(IMAPServiceLibrary *)self account];
    serviceLabelID = [account serviceLabelID];
    v7 = VMStoreCopyOfAllRecordsWithFlags(4, 24, serviceLabelID);
  }

  v8 = v7;

  if (v8)
  {
    account2 = [(IMAPServiceLibrary *)self account];
    service = [account2 service];
    [service _removeRecordsNotPendingDelete:v8];

    VMStoreSave();
    [(IMAPServiceLibrary *)self _resetCountsForCompaction];

    CFRelease(v8);
  }
}

- (void)compactMessages:(id)messages permanently:(BOOL)permanently
{
  messagesCopy = messages;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v28 = [messagesCopy count];
  v7 = sub_10001E9B0(v28);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v9 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    account3 = [(IMAPServiceLibrary *)self account];
    *buf = 136315906;
    v31 = v9;
    v32 = 2080;
    v33 = " ";
    v34 = 2112;
    *v35 = messagesCopy;
    *&v35[8] = 2112;
    *&v35[10] = account3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sCompact messages %@ for account %@", buf, 0x2Au);
  }

  if (v28)
  {
    v12 = 0;
    v13 = 0;
    *&v11 = 136315906;
    v27 = v11;
    while (1)
    {
      v14 = [messagesCopy objectAtIndex:{v13, v27}];
      libraryID = [v14 libraryID];
      v16 = libraryID;
      v17 = sub_1000931E8(accountStore, libraryID);
      if (v17)
      {
        break;
      }

LABEL_13:

      if (v28 == ++v13)
      {
        if (v12)
        {
          [accountStore save];
          [(IMAPServiceLibrary *)self _resetCountsForCompaction];
        }

        goto LABEL_16;
      }
    }

    account4 = [(IMAPServiceLibrary *)self account];
    service = [account4 service];
    [service _removePendingDeleteForRecord:v17];

    sub_100092B0C(accountStore, v17);
    v21 = v20;
    if ((v20 & 6) == 2)
    {
      account5 = [(IMAPServiceLibrary *)self account];
      serviceLabelID = [account5 serviceLabelID];
      VMStoreRecordSetFlagsFromServer(serviceLabelID, v17, v21 | 0x40u, 1);
    }

    else
    {
      if ((~v20 & 0x42) == 0)
      {
LABEL_12:
        CFRelease(v17);
        goto LABEL_13;
      }

      account5 = sub_10001E9B0(v20);
      if (os_log_type_enabled(account5, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(IMAPServiceLibrary *)self account];
        v25 = *&account6[OBJC_IVAR___MFAccount_mambaID];
        account7 = [(IMAPServiceLibrary *)self account];
        *buf = v27;
        v31 = v25;
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        *v35 = v16;
        *&v35[4] = 2112;
        *&v35[6] = account7;
        _os_log_impl(&_mh_execute_header, account5, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoveRecord has been Disabled for the record with identifier %u, account %@", buf, 0x26u);
      }
    }

    v12 = 1;
    goto LABEL_12;
  }

LABEL_16:
}

- (void)removeAllMessagesFromMailbox:(id)mailbox andNotify:(BOOL)notify
{
  v5 = sub_10001FAD0(mailbox);
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  if (v5 == 2)
  {
    v8 = 0;
    v7 = 8;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_7;
    }

    v7 = 0;
    v8 = 8;
  }

  v9 = sub_1000931D0(accountStore, v7, v8);
  if (v9)
  {
    account2 = [(IMAPServiceLibrary *)self account];
    service = [account2 service];
    [service _removeRecordsNotPendingDelete:v9];

    [accountStore save];
    [(IMAPServiceLibrary *)self _resetCountsForCompaction];
    CFRelease(v9);
  }

LABEL_7:
}

- (void)copyAudioDataToMainStore:(void *)store dstRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v36 = accountStore;
  v9 = sub_100092DDC(accountStore, store);
  v10 = VMStoreRecordCopyDataPath(record);
  v11 = VMStoreRecordCopyDescription(record);
  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v9];

  v15 = sub_10001E9B0(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v16)
    {
      account2 = [(IMAPServiceLibrary *)self account];
      v18 = *&account2[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v39 = v18;
      v40 = 2080;
      v41 = " ";
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sCopying audio data from account store to record %@", buf, 0x20u);
    }

    v19 = +[NSFileManager defaultManager];
    v37 = 0;
    v20 = [v19 copyItemAtPath:v9 toPath:v10 error:&v37];
    v21 = v37;

    if (v20)
    {
      sub_100092850(v36, store);
      VMStoreRecordSetDuration(record, v23);
      account3 = [(IMAPServiceLibrary *)self account];
      serviceLabelID = [account3 serviceLabelID];
      VMStoreRecordSetFlags(serviceLabelID, record, 2);
    }

    else
    {
      account3 = sub_10001E9B0(v22);
      if (os_log_type_enabled(account3, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)self account];
        v35 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        *buf = 136315906;
        v39 = v35;
        v40 = 2080;
        v41 = " ";
        v42 = 2112;
        v43 = v11;
        v44 = 2112;
        v45 = v21;
        _os_log_impl(&_mh_execute_header, account3, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to copy audio data from account store to record %@ with error %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    if (v16)
    {
      account5 = [(IMAPServiceLibrary *)self account];
      v27 = *&account5[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v39 = v27;
      v40 = 2080;
      v41 = " ";
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file does not exist in the account store, record %@", buf, 0x20u);
    }

    Flags = VMStoreRecordGetFlags(record);
    v29 = Flags;
    if ((Flags & 2) == 0)
    {
      v21 = 0;
      goto LABEL_16;
    }

    v30 = sub_10001E9B0(Flags);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      account6 = [(IMAPServiceLibrary *)self account];
      v32 = *&account6[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v39 = v32;
      v40 = 2080;
      v41 = " ";
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is set, but audio file does not exist, record %@", buf, 0x20u);
    }

    account3 = [(IMAPServiceLibrary *)self account];
    serviceLabelID2 = [account3 serviceLabelID];
    VMStoreRecordSetFlags(serviceLabelID2, record, v29 & 0xFFFFFFFD);

    v21 = 0;
  }

LABEL_16:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

- (void)updateMainStoreRecord:(void *)record dstRecord:(void *)dstRecord token:(__CFString *)token
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v11 = VMStoreRecordCopyDescription(dstRecord);
  v12 = sub_10001E9B0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v14 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    v33 = 136315906;
    v34 = v14;
    v35 = 2080;
    v36 = " ";
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sRecord %@ with the same token '%@' found in the main database", &v33, 0x2Au);
  }

  v15 = sub_100092DDC(accountStore, record);
  v16 = VMStoreRecordCopyDataPath(dstRecord);
  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  v20 = sub_10001E9B0(v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v21)
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v23 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      v33 = 136315650;
      v34 = v23;
      v35 = 2080;
      v36 = " ";
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file exists in the main store, record %@", &v33, 0x20u);
    }

    Flags = VMStoreRecordGetFlags(dstRecord);
    v25 = Flags;
    if ((Flags & 2) == 0)
    {
      v26 = sub_10001E9B0(Flags);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(IMAPServiceLibrary *)self account];
        v28 = *&account4[OBJC_IVAR___MFAccount_mambaID];
        v33 = 136315650;
        v34 = v28;
        v35 = 2080;
        v36 = " ";
        v37 = 2112;
        v38 = v11;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is not set, but audio file exists, record %@", &v33, 0x20u);
      }

      account5 = [(IMAPServiceLibrary *)self account];
      serviceLabelID = [account5 serviceLabelID];
      VMStoreRecordSetFlags(serviceLabelID, dstRecord, v25 | 2u);
    }
  }

  else
  {
    if (v21)
    {
      account6 = [(IMAPServiceLibrary *)self account];
      v32 = *&account6[OBJC_IVAR___MFAccount_mambaID];
      v33 = 136315650;
      v34 = v32;
      v35 = 2080;
      v36 = " ";
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file does not exist in the main store, record %@", &v33, 0x20u);
    }

    [(IMAPServiceLibrary *)self copyAudioDataToMainStore:record dstRecord:dstRecord];
  }

  VMStoreSave();
  if (v11)
  {
    CFRelease(v11);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

- (void)createMainStoreRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  account2 = [(IMAPServiceLibrary *)self account];
  serviceLabelID = [account2 serviceLabelID];
  v9 = sub_100093040(accountStore, record, serviceLabelID);

  VMStoreSave();
  v10 = VMStoreRecordCopyDescription(v9);
  v11 = sub_10001E9B0(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(IMAPServiceLibrary *)self account];
    v13 = *&account3[OBJC_IVAR___MFAccount_mambaID];
    v18 = 136315650;
    v19 = v13;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating new global record %@", &v18, 0x20u);
  }

  [(IMAPServiceLibrary *)self copyAudioDataToMainStore:record dstRecord:v9];
  v14 = VMStoreRecordCopyDescription(v9);
  v15 = sub_10001E9B0(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    account4 = [(IMAPServiceLibrary *)self account];
    v17 = *&account4[OBJC_IVAR___MFAccount_mambaID];
    v18 = 136315650;
    v19 = v17;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s===> Created new global record %@", &v18, 0x20u);
  }

  VMStoreSave();
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

- (void)mergeRecord:(void *)record
{
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v7 = sub_100092A8C(accountStore, record);
  DeletedRecordWithToken = VMStoreCopyFirstDeletedRecordWithToken(v7, 0);
  v9 = VMStoreRecordCopyDescription(record);
  v10 = sub_10001E9B0(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v12 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    v18 = 136315906;
    v19 = v12;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sMerge record %@ with token %@ to the main store", &v18, 0x2Au);
  }

  if (DeletedRecordWithToken)
  {
    v14 = sub_10001E9B0(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v16 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      v18 = 136315650;
      v19 = v16;
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sRecord with the same token '%@' is found in the deleted table, skipping merge", &v18, 0x20u);
    }

    CFRelease(DeletedRecordWithToken);
  }

  else
  {
    RecordWithToken = VMStoreCopyFirstRecordWithToken(v7, 0);
    if (RecordWithToken)
    {
      [(IMAPServiceLibrary *)self updateMainStoreRecord:record dstRecord:RecordWithToken token:v7];
      CFRelease(RecordWithToken);
    }

    else
    {
      [(IMAPServiceLibrary *)self createMainStoreRecord:record];
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

- (id)mailboxUidForMessage:(id)message
{
  messageCopy = message;
  [messageCopy libraryID];
  v5 = VMStoreCopyRecordWithIdentifier();
  if (v5)
  {
    v6 = [(IMAPServiceLibrary *)self _mailboxUidForStoreRecord:v5];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getDetailsForMessages:(unint64_t)messages absoluteBottom:(unint64_t)bottom topOfDesiredRange:(unint64_t)range range:(_NSRange *)a6 fromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v46 = sub_10001FAD0(mailboxCopy);
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  v13 = sub_10001E9B0(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v15 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    v16 = @"Trash";
    *buf = 136316162;
    if (v46 == 1)
    {
      v16 = @"Inbox";
    }

    v48 = v15;
    v49 = 2080;
    v50 = " ";
    v51 = 2048;
    bottomCopy2 = bottom;
    v53 = 2048;
    rangeCopy2 = range;
    v55 = 2112;
    v56 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s==> Get details <lowUID=%lu, highUID=%lu, mailbox=%@> begin", buf, 0x34u);
  }

  if (v46 == 1)
  {
    v17 = 104;
  }

  else
  {
    v17 = 96;
  }

  v18 = sub_10001E900(bottom);
  v19 = sub_10001E900(range);
  v20 = sub_1000931BC(accountStore, 8 * (v46 == 2), v17, v18, v19);
  v21 = [v20 count];
  v22 = v21;
  if (v21 > messages)
  {
    v23 = [v20 subarrayWithRange:{objc_msgSend(v20, "count") - messages, messages}];
    v24 = [v23 copy];

    v22 = [v24 count];
    v20 = v24;
  }

  if (!a6)
  {
LABEL_14:
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_25:
    v28 = 0;
    goto LABEL_26;
  }

  if (v20)
  {
    v21 = [v20 count];
    if (v21)
    {
      sub_10009278C(accountStore, [v20 objectAtIndex:0]);
      v26 = v25;
      sub_10009278C(accountStore, [v20 lastObject]);
      a6->location = v26;
      a6->length = v21 - v26;
      goto LABEL_14;
    }
  }

  a6->location = 0;
  a6->length = 0;
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_15:
  v27 = 0;
  v28 = 0;
  do
  {
    v29 = [v20 objectAtIndex:v27];
    v30 = VMStoreRecordCopyDescription(v29);
    v31 = sub_10001E9B0(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(IMAPServiceLibrary *)self account];
      v33 = *&account3[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v48 = v33;
      v49 = 2080;
      v50 = " ";
      v51 = 2112;
      bottomCopy2 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd message details for record %@", buf, 0x20u);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    v34 = objc_alloc_init(MFMessageDetails);
    *&v34[OBJC_IVAR___MFMessageDetails_library] = self;
    sub_100092B0C(accountStore, v29);
    *&v34[OBJC_IVAR___MFMessageDetails_messageFlags] = v35 & 1 | (2 * ((v35 >> 2) & 1));
    sub_10009278C(accountStore, v29);
    *&v34[OBJC_IVAR___MFMessageDetails_uid] = v36;
    *&v34[OBJC_IVAR___MFMessageDetails_libraryID] = sub_100092784(accountStore, v29);
    *&v34[OBJC_IVAR___MFMessageDetails_mailboxID] = v46;
    sub_100092820(accountStore, v29);
    *&v34[OBJC_IVAR___MFMessageDetails_dateReceived] = v37;
    if (!v28)
    {
      v28 = [[NSMutableArray alloc] initWithCapacity:v22];
    }

    [v28 addObject:v34];

    ++v27;
  }

  while (v22 != v27);
LABEL_26:
  v38 = sub_10001E9B0(v21);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    account4 = [(IMAPServiceLibrary *)self account];
    v40 = *&account4[OBJC_IVAR___MFAccount_mambaID];
    v41 = @"Trash";
    *buf = 136316674;
    if (v46 == 1)
    {
      v41 = @"Inbox";
    }

    v48 = v40;
    v49 = 2080;
    v50 = " ";
    v51 = 2048;
    bottomCopy2 = bottom;
    v53 = 2048;
    rangeCopy2 = range;
    v55 = 2112;
    v56 = v41;
    v57 = 2112;
    v58 = accountStore;
    v59 = 2112;
    v60 = v28;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%sGet details <lowUID=%lu, highUID=%lu, mailbox=%@, store=%@> for messages %@", buf, 0x48u);
  }

  return v28;
}

- (id)addMessages:(id)messages withMailbox:(id)mailbox fetchBodies:(BOOL)bodies newMessagesByOldMessage:(id)message remoteIDs:(id)ds setFlags:(unint64_t)flags clearFlags:(unint64_t)clearFlags messageFlagsForMessages:(id)self0 copyFiles:(BOOL)self1 addPOPUIDs:(BOOL)self2 dataSectionsByMessage:(id)self3
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  messageCopy = message;
  dsCopy = ds;
  forMessagesCopy = forMessages;
  byMessageCopy = byMessage;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  name = [mailboxCopy name];
  v113 = [name caseInsensitiveCompare:@"INBOX"];
  selfCopy = self;

  v20 = sub_10001E9B0(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)self account];
    v22 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    name2 = [mailboxCopy name];
    v24 = name2;
    *buf = 136316162;
    if (v113)
    {
      v25 = 3;
    }

    else
    {
      v25 = 1;
    }

    v131 = v22;
    v132 = 2080;
    v133 = " ";
    v134 = 2112;
    *v135 = messagesCopy;
    *&v135[8] = 2112;
    *&v135[10] = name2;
    *&v135[18] = 1024;
    *&v135[20] = v25;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd messages %@ to %@ mailbox, destination type is %d", buf, 0x30u);
  }

  v27 = sub_10001E9B0(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(IMAPServiceLibrary *)self account];
    v29 = *&account3[OBJC_IVAR___MFAccount_mambaID];
    account4 = [mailboxCopy account];
    store = [mailboxCopy store];
    account5 = [(IMAPServiceLibrary *)self account];
    accountStore2 = [account5 accountStore];
    *buf = 136316162;
    v131 = v29;
    v132 = 2080;
    v133 = " ";
    v134 = 2112;
    *v135 = account4;
    *&v135[8] = 2112;
    *&v135[10] = store;
    *&v135[18] = 2112;
    *&v135[20] = accountStore2;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sAdd messages to account %@ store %@, account store %@", buf, 0x34u);
  }

  v34 = 0;
  v125 = 0;
  v115 = 0;
  if (v113)
  {
    v35 = 8;
  }

  else
  {
    v35 = 0;
  }

  v110 = v35;
  v109 = ~clearFlags;
  while (v34 < [messagesCopy count])
  {
    v126 = [messagesCopy objectAtIndexedSubscript:v34];
    messageIDHeader = [v126 messageIDHeader];
    if (v34 >= [dsCopy count])
    {
      [v126 remoteID];
    }

    else
    {
      [dsCopy objectAtIndexedSubscript:v34];
    }
    v36 = ;
    v37 = v36;
    if (v36)
    {
      v38 = sub_10001FF88(v36, 0);
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_100093224(accountStore, messageIDHeader);
    v40 = v39;
    if (v39)
    {
      v41 = VMStoreRecordCopyDescription(v39);
      v42 = sub_10001E9B0(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(IMAPServiceLibrary *)selfCopy account];
        v44 = *&account6[OBJC_IVAR___MFAccount_mambaID];
        account7 = [(IMAPServiceLibrary *)selfCopy account];
        serviceLabelID = [account7 serviceLabelID];
        *buf = 136316418;
        v131 = v44;
        v132 = 2080;
        v133 = " ";
        v134 = 2112;
        *v135 = v41;
        *&v135[8] = 2112;
        *&v135[10] = messageIDHeader;
        *&v135[18] = 1024;
        *&v135[20] = v38;
        *&v135[24] = 2112;
        *&v135[26] = serviceLabelID;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdating record %@ with token '%@', remote UID %u, label %@", buf, 0x3Au);
      }

      if (v41)
      {
        CFRelease(v41);
      }

      Flags = VMStoreRecordGetFlags(v40);
      if ((Flags & 0x40) != 0)
      {
        v48 = sub_10001E9B0(Flags);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          account8 = [(IMAPServiceLibrary *)selfCopy account];
          v50 = *&account8[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315650;
          v131 = v50;
          v132 = 2080;
          v133 = " ";
          v134 = 2112;
          *v135 = messageIDHeader;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sResetting Detached flag from record with token '%@'", buf, 0x20u);
        }

        sub_100092B48(accountStore, v40, 64);
      }

      sub_100092B0C(accountStore, v40);
      v52 = v51 & 0xFFFFFFE3;
      if (v113)
      {
        v52 = v51 & 0xFFFFFFE3 | 8;
      }

      v53 = sub_10001E9F4((flags & 1 | (4 * ((flags >> 1) & 1)) | (flags >> 27) & 0x20 | v52) & ~(clearFlags & 1 | (4 * ((clearFlags >> 1) & 1)) | (clearFlags >> 27) & 0x20));
      sub_100092B54(accountStore, v40, v53);
      sub_1000927BC(accountStore, v40, v38);
      account9 = [(IMAPServiceLibrary *)selfCopy account];
      serviceMDN = [account9 serviceMDN];
      sub_1000929A8(accountStore, v40);

LABEL_71:
      account10 = [(IMAPServiceLibrary *)selfCopy account];
      accountStore3 = [account10 accountStore];
      [accountStore3 save];

      [(IMAPServiceLibrary *)selfCopy mergeRecord:v40];
      v97 = [(IMAPServiceLibrary *)selfCopy messageWithAccountStoreRecord:v40];
      v98 = v125;
      if (!v125)
      {
        v98 = objc_opt_new();
      }

      v125 = v98;
      [v98 addObject:v97];
      if (messageCopy)
      {
        [messageCopy setObject:v97 forKey:v126];
      }

      CFRelease(v40);

      goto LABEL_76;
    }

    if (v34 >= [forMessagesCopy count])
    {
      messageFlags = [v126 messageFlags];
    }

    else
    {
      v56 = [forMessagesCopy objectAtIndexedSubscript:v34];
      unsignedIntValue = [v56 unsignedIntValue];

      messageFlags = unsignedIntValue;
    }

    v121 = v110;
    if (((messageFlags | flags) & v109) != 0)
    {
      v121 = (2 * ((messageFlags | flags) & v109)) & 4 | (messageFlags | flags) & v109 & 1 | (((messageFlags | flags) & v109) >> 27) & 0x20 | v110;
    }

    account11 = [(IMAPServiceLibrary *)selfCopy account];
    serviceICC = [account11 serviceICC];

    headers = [v126 headers];
    firstSenderAddress = [headers firstSenderAddress];
    pstnAddress = [firstSenderAddress pstnAddress];

    v61 = pstnAddress;
    if (pstnAddress)
    {
      v62 = sub_100025188(pstnAddress, serviceICC);
      if (![v62 length])
      {
        v63 = pstnAddress;

        v62 = v63;
        v61 = pstnAddress;
      }
    }

    else
    {
      v62 = 0;
    }

    v118 = v62;
    v64 = CFPhoneNumberCreate();
    v65 = v64;
    if (v61)
    {
      v64 = sub_100023774(v64);
      if (v64)
      {
        v66 = sub_10001E9B0(v64);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          account12 = [(IMAPServiceLibrary *)selfCopy account];
          v68 = *&account12[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315650;
          v131 = v68;
          v132 = 2080;
          v133 = " ";
          v134 = 2112;
          *v135 = v118;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I %s%sPrivacy manager reports sender address %@ is blocked; marking record as blocked", buf, 0x20u);
        }

        v121 |= 0x80u;
      }
    }

    if (v65)
    {
      CFRelease(v65);
    }

    v69 = sub_10001E9B0(v64);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      account13 = [(IMAPServiceLibrary *)selfCopy account];
      v71 = *&account13[OBJC_IVAR___MFAccount_mambaID];
      account14 = [(IMAPServiceLibrary *)selfCopy account];
      serviceMDN2 = [account14 serviceMDN];
      *buf = 136315650;
      v131 = v71;
      v132 = 2080;
      v133 = " ";
      v134 = 2112;
      *v135 = serviceMDN2;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing account's service phone number: %@", buf, 0x20u);
    }

    account15 = [(IMAPServiceLibrary *)selfCopy account];
    serviceMDN3 = [account15 serviceMDN];

    copyAddressListForReplyTo = [headers copyAddressListForReplyTo];
    v114 = copyAddressListForReplyTo;
    if (!copyAddressListForReplyTo)
    {
      v79 = 0;
      pstnAddress2 = 0;
      goto LABEL_63;
    }

    firstObject = [copyAddressListForReplyTo firstObject];
    pstnAddress2 = [firstObject pstnAddress];

    if (pstnAddress2)
    {
      v78 = sub_100025188(pstnAddress2, serviceICC);
      if ([v78 length])
      {
        v79 = v78;
        goto LABEL_56;
      }
    }

    v79 = 0;
LABEL_56:
    v80 = CFPhoneNumberCreate();
    v81 = v80;
    if (v79)
    {
      v82 = sub_100023774(v80);
      if (v82)
      {
        v83 = sub_10001E9B0(v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          account16 = [(IMAPServiceLibrary *)selfCopy account];
          v85 = *&account16[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315650;
          v131 = v85;
          v132 = 2080;
          v133 = " ";
          v134 = 2112;
          *v135 = v79;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I %s%sPrivacy manager reports reply to address %@ is blocked; marking record as blocked", buf, 0x20u);
        }

        v121 |= 0x80u;
      }
    }

    if (v81)
    {
      CFRelease(v81);
    }

LABEL_63:
    v86 = [headers firstHeaderForKey:@"x-applevm-deletion-date"];
    if ([v86 length])
    {
      v87 = [NSDate mf_copyDateInCommonFormatsWithString:v86];
    }

    else
    {
      v87 = 0;
    }

    dateSent = [v126 dateSent];
    v89 = sub_10001E9B0(dateSent);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      account17 = [(IMAPServiceLibrary *)selfCopy account];
      v91 = *&account17[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136317442;
      v131 = v91;
      v132 = 2080;
      v133 = " ";
      v134 = 1024;
      *v135 = v38;
      *&v135[4] = 2112;
      *&v135[6] = dateSent;
      *&v135[14] = 2112;
      *&v135[16] = messageIDHeader;
      *&v135[24] = 2112;
      *&v135[26] = v118;
      v136 = 2112;
      v137 = v79;
      v138 = 2112;
      v139 = v87;
      v140 = 1024;
      v141 = v121;
      v142 = 2112;
      v143 = serviceMDN3;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I %s%s===> Creating new record with remoteUID: %d, sentDate: %@, messageID: %@, from: %@, callback: %@, expirationDate: %@, flags: %d, to: %@", buf, 0x5Eu);
    }

    [dateSent timeIntervalSince1970];
    v93 = v92;
    [v87 timeIntervalSince1970];
    LODWORD(v106) = v121;
    v40 = sub_100093004(accountStore, v38, v93, messageIDHeader, v118, v79, 0);
    v94 = v115;
    if (!v115)
    {
      v94 = objc_opt_new();
    }

    v115 = v94;
    [v94 addObject:{v40, v106, serviceMDN3}];

    if (v40)
    {
      goto LABEL_71;
    }

LABEL_76:

    ++v34;
  }

  if (v125)
  {
    if (mailboxCopy)
    {
      v99 = [[NSArray alloc] initWithObjects:{mailboxCopy, 0}];
    }

    else
    {
      v99 = 0;
    }

    v100 = [[NSDictionary alloc] initWithObjectsAndKeys:{v125, @"messages", v99, @"mailboxes", 0}];
    v101 = sub_10001E9B0(v100);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      account18 = [(IMAPServiceLibrary *)selfCopy account];
      v103 = *&account18[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315650;
      v131 = v103;
      v132 = 2080;
      v133 = " ";
      v134 = 2112;
      *v135 = v100;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting MailMessageStoreMessagesAdded notification %@", buf, 0x20u);
    }

    v104 = +[NSNotificationCenter defaultCenter];
    [v104 postNotificationName:MailMessageStoreMessagesAdded object:selfCopy userInfo:v100];
  }

  return v125;
}

- (void)updateSelectedMessages:(id)messages withMailbox:(id)mailbox
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  selfCopy = self;
  account = [(IMAPServiceLibrary *)self account];
  accountStore = [account accountStore];

  name = [mailboxCopy name];
  v7 = [name caseInsensitiveCompare:@"INBOX"];
  v8 = sub_10001E9B0(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account2 = [(IMAPServiceLibrary *)selfCopy account];
    v10 = *&account2[OBJC_IVAR___MFAccount_mambaID];
    if (v7)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    *buf = 136316162;
    v52 = v10;
    v53 = 2080;
    v54 = " ";
    v55 = 2112;
    v56 = messagesCopy;
    v57 = 2112;
    v58 = name;
    v59 = 1024;
    v60 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdate selected messages %@ for mailbox %@, destination type is %d", buf, 0x30u);
  }

  context = objc_autoreleasePoolPush();
  if (v7)
  {
    v12 = sub_1000931D0(accountStore, 8, 68);
    v13 = sub_1000931DC(accountStore, 64, 4);
  }

  else
  {
    v12 = sub_1000931D0(accountStore, 0, 76);
    v13 = sub_1000931DC(accountStore, 64, 12);
  }

  v14 = v13;
  v42 = v12;
  v15 = [v12 count];
  v16 = sub_10001E9B0(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(IMAPServiceLibrary *)selfCopy account];
    v18 = *&account3[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136315906;
    v52 = v18;
    v53 = 2080;
    v54 = " ";
    v55 = 2048;
    v56 = v15;
    v57 = 2048;
    v58 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%supdateSelectedMessages: found %lu records, %lu detached records", buf, 0x2Au);
  }

  if (v15)
  {
    v19 = [NSMutableSet setWithArray:messagesCopy];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v12;
    v20 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v20)
    {
      v21 = 0;
      v22 = *v47;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          sub_10009278C(accountStore, v24);
          v26 = [NSNumber numberWithUnsignedInt:v25];
          if (([v19 containsObject:v26] & 1) == 0)
          {
            v27 = VMStoreRecordCopyDescription(v24);
            v28 = v27;
            if (v27)
            {
              v29 = sub_10001E9B0(v27);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                account4 = [(IMAPServiceLibrary *)selfCopy account];
                v31 = *&account4[OBJC_IVAR___MFAccount_mambaID];
                *buf = 136315650;
                v52 = v31;
                v53 = 2080;
                v54 = " ";
                v55 = 2112;
                v56 = v28;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding Detached flag to record %@", buf, 0x20u);
              }

              CFRelease(v28);
            }

            sub_100092B3C(accountStore, v24, 64);
            v21 = 1;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v20);

      if (v21)
      {
        v33 = sub_10001E9B0([accountStore save]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          account5 = [(IMAPServiceLibrary *)selfCopy account];
          v35 = *&account5[OBJC_IVAR___MFAccount_mambaID];
          *buf = 136315394;
          v52 = v35;
          v53 = 2080;
          v54 = " ";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%supdateSelectedMessages: store changed", buf, 0x16u);
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
    }

    v33 = sub_10001E9B0(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      account6 = [(IMAPServiceLibrary *)selfCopy account];
      v37 = *&account6[OBJC_IVAR___MFAccount_mambaID];
      *buf = 136315394;
      v52 = v37;
      v53 = 2080;
      v54 = " ";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%supdateSelectedMessages: no changes required", buf, 0x16u);
    }

    goto LABEL_31;
  }

LABEL_32:

  objc_autoreleasePoolPop(context);
}

- (BOOL)isMessageContentsLocallyAvailable:(id)available
{
  availableCopy = available;
  [availableCopy libraryID];
  v4 = VMStoreCopyRecordWithIdentifier();
  v5 = v4;
  if (v4)
  {
    if ((VMStoreRecordGetFlags(v4) & 2) != 0 && (v6 = VMStoreRecordCopyDataPath(v5)) != 0)
    {
      v7 = +[NSFileManager defaultManager];
      v8 = [v7 fileExistsAtPath:v6];

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFlagsForMessages:(id)messages mask:(unint64_t)mask
{
  messagesCopy = messages;
  v19 = objc_alloc_init(NSMutableDictionary);
  allKeys = [messagesCopy allKeys];
  v6 = [allKeys count];
  v7 = sub_10001E9B0(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    account = [(IMAPServiceLibrary *)self account];
    v9 = *&account[OBJC_IVAR___MFAccount_mambaID];
    *buf = 136316162;
    v21 = v9;
    v22 = 2080;
    v23 = " ";
    v24 = 2112;
    v25 = messagesCopy;
    v26 = 2048;
    maskCopy = mask;
    v28 = 2112;
    v29 = allKeys;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sSet flags %@ with mask %llu for messages %@", buf, 0x34u);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v11 = [allKeys objectAtIndex:i];
      messageFlags = [v11 messageFlags];
      v13 = [messagesCopy objectForKey:v11];
      unsignedIntValue = [v13 unsignedIntValue];

      if (mask == 0x1BFDDF7FFFFLL)
      {
        v15 = unsignedIntValue;
      }

      else
      {
        v15 = unsignedIntValue & mask | messageFlags & ~mask;
      }

      v16 = [[NSNumber alloc] initWithUnsignedLongLong:messageFlags];
      [v19 setObject:v16 forKey:v11];
      [(IMAPServiceLibrary *)self _setFlags:v15 forMessage:v11 postAndCommit:0];
    }
  }

  VMStoreSave();
  [(IMAPServiceLibrary *)self postFlagsChangedForMessages:allKeys flags:0 oldFlagsByMessage:v19];
}

- (id)setFlagsFromDictionary:(id)dictionary forMessages:(id)messages
{
  dictionaryCopy = dictionary;
  messagesCopy = messages;
  v8 = sub_10001E9B0(messagesCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account = [(IMAPServiceLibrary *)self account];
    v10 = *&account[OBJC_IVAR___MFAccount_mambaID];
    v12 = 136315906;
    v13 = v10;
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = dictionaryCopy;
    v18 = 2112;
    v19 = messagesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s==== Set flags from dictionary %@ for messages %@", &v12, 0x2Au);
  }

  return messagesCopy;
}

- (void)_setFlags:(unint64_t)flags forMessage:(id)message postAndCommit:(BOOL)commit
{
  commitCopy = commit;
  messageCopy = message;
  v23 = messageCopy;
  if (commitCopy)
  {
    messageFlags = [messageCopy messageFlags];
  }

  else
  {
    messageFlags = 0;
  }

  [v23 setMessageFlagsWithoutCommitting:flags];
  messageIDHeader = [v23 messageIDHeader];
  messageStore = [v23 messageStore];
  mailboxUid = [messageStore mailboxUid];
  if ([mailboxUid type] == 7)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  RecordWithTokenInMailbox = VMStoreCopyFirstRecordWithTokenInMailbox(messageIDHeader, v13);
  if (RecordWithTokenInMailbox)
  {
    remoteID = [v23 remoteID];
    v16 = remoteID;
    if (remoteID)
    {
      v17 = sub_10001FF88(remoteID, 0);
      if (v17 == VMStoreRecordGetRemoteUID(RecordWithTokenInMailbox))
      {
        v18 = [v23 hasTemporaryUid] ? 32 : 0;
        Flags = VMStoreRecordGetFlags(RecordWithTokenInMailbox);
        v19 = (VMStoreRecordGetFlags(RecordWithTokenInMailbox) & 0x40) != 0 ? flags & 1 | (4 * ((flags >> 1) & 1)) & 0xFFFFFFE1 | (flags >> 27) & 0x20 | v18 & 0xFFFFFFE1 : flags & 1 | (4 * ((flags >> 1) & 1)) | (flags >> 27) & 0x20 | v18;
        account = [(IMAPServiceLibrary *)self account];
        serviceLabelID = [account serviceLabelID];
        VMStoreRecordSetFlagsFromServer(serviceLabelID, RecordWithTokenInMailbox, v19 | Flags & 0xFFFFFFDA, 1);

        if (commitCopy)
        {
          VMStoreSave();
        }
      }
    }

    CFRelease(RecordWithTokenInMailbox);
  }

  if (commitCopy)
  {
    [(IMAPServiceLibrary *)self postOldFlags:messageFlags newFlags:flags forMessage:v23];
  }
}

- (IMAPServiceAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end