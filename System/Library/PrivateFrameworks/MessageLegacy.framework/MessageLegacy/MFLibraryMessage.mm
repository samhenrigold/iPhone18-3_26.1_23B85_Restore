@interface MFLibraryMessage
+ (id)messageWithLibraryID:(unsigned int)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMessageContentsLocallyAvailable;
- (MFLibraryMessage)initWithLibraryID:(unsigned int)d;
- (id)_attachmentStorageLocation;
- (id)_privacySafeDescription;
- (id)account;
- (id)copyMessageInfo;
- (id)dataConsumerForMimePart:(id)part;
- (id)dataPathForMimePart:(id)part;
- (id)library;
- (id)mailbox;
- (id)mailboxName;
- (id)messageID;
- (id)messageStore;
- (id)metadataValueOfClass:(Class)class forKey:(id)key;
- (id)originalMailboxURL;
- (id)path;
- (id)preferredEmailAddressToReplyWith;
- (id)remoteID;
- (int64_t)compareByUidWithMessage:(id)message;
- (void)_forceLoadOfMessageSummaryFromProtectedStore;
- (void)_initializeMetadata;
- (void)_updateUID;
- (void)commit;
- (void)dealloc;
- (void)loadCachedHeaderValuesFromHeaders:(id)headers;
- (void)markAsFlagged;
- (void)markAsForwarded;
- (void)markAsNotFlagged;
- (void)markAsNotViewed;
- (void)markAsReplied;
- (void)markAsViewed;
- (void)setHasTemporaryUid:(BOOL)uid;
- (void)setIsPartial:(BOOL)partial;
- (void)setMessageData:(id)data isPartial:(BOOL)partial;
- (void)setMessageFlags:(unint64_t)flags;
- (void)setMessageFlagsWithoutCommitting:(unint64_t)committing;
- (void)setMetadataValue:(id)value forKey:(id)key;
- (void)setMutableInfoFromMessage:(id)message;
- (void)setPreferredEncoding:(unsigned int)encoding;
- (void)setRemoteID:(const char *)d flags:(unint64_t)flags size:(unsigned int)size mailboxID:(unsigned int)iD originalMailboxID:(unsigned int)mailboxID;
- (void)setRemoteID:(id)d;
- (void)setSummary:(id)summary;
- (void)setUid:(unsigned int)uid;
- (void)setUniqueRemoteId:(unint64_t)id;
@end

@implementation MFLibraryMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v3 dealloc];
}

- (MFLibraryMessage)initWithLibraryID:(unsigned int)d
{
  v7.receiver = self;
  v7.super_class = MFLibraryMessage;
  v4 = [(MFLibraryMessage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_libraryID = d;
    v4->_originalMailboxID = -1;
    v4->_mailboxID = -1;
    v4->_metadataLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"Metadata Lock" andDelegate:0];
  }

  return v5;
}

+ (id)messageWithLibraryID:(unsigned int)d
{
  v3 = [[MFLibraryMessage alloc] initWithLibraryID:*&d];

  return v3;
}

- (id)library
{
  messageStore = [(MFLibraryMessage *)self messageStore];

  return [messageStore library];
}

- (id)messageID
{
  p_messageID = &self->_messageID;
  if (!atomic_load(&self->_messageID))
  {
    v5 = EFStringWithInt();
    v6 = 0;
    atomic_compare_exchange_strong(p_messageID, &v6, v5);
    if (v6)
    {
    }
  }

  v7 = self->_messageID;

  return v7;
}

- (id)originalMailboxURL
{
  library = [(MFLibraryMessage *)self library];
  originalMailboxID = self->_originalMailboxID;

  return [library urlForMailboxID:originalMailboxID];
}

- (id)messageStore
{
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  result = [(MFMailMessage *)&v3 messageStore];
  if (!result)
  {
    return +[MFLibraryStore sharedInstance];
  }

  return result;
}

- (id)mailbox
{
  library = [(MFLibraryMessage *)self library];

  return [library mailboxUidForMessage:self];
}

- (void)_updateUID
{
  intValue = [(NSString *)self->_remoteID intValue];
  self->_uid = intValue;
  if (!intValue)
  {
    v4 = [(NSString *)self->_remoteID rangeOfString:@"temp-" options:8];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_uid = [[(NSString *)self->_remoteID substringWithRange:v4 + v5 intValue];
    }
  }
}

- (void)setRemoteID:(id)d
{
  _MFLockGlobalLock();
  remoteID = self->_remoteID;
  if (remoteID != d)
  {

    self->_remoteID = d;
    [(MFLibraryMessage *)self _updateUID];
  }

  _MFUnlockGlobalLock();
}

- (id)remoteID
{
  v2 = self->_remoteID;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v10 = v3;
  v11 = v4;
  if (objc_opt_respondsToSelector())
  {
    libraryID = self->_libraryID;
    return libraryID == [equal libraryID];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFLibraryMessage;
    return [(MFLibraryMessage *)&v9 isEqual:equal];
  }
}

- (void)setUid:(unsigned int)uid
{
  if (self->_uid != uid)
  {
    -[MFLibraryMessage setRemoteID:](self, "setRemoteID:", [objc_msgSend(MEMORY[0x277CCABB0] "numberWithUnsignedInt:"stringValue"")]);

    [(MFLibraryMessage *)self commit];
  }
}

- (void)setUniqueRemoteId:(unint64_t)id
{
  _MFLockGlobalLock();
  if (self->_uniqueRemoteId != id)
  {
    self->_uniqueRemoteId = id;
  }

  _MFUnlockGlobalLock();
}

- (void)setIsPartial:(BOOL)partial
{
  partialCopy = partial;
  library = [(MFLibraryMessage *)self library];

  [library setMessage:self isPartial:partialCopy];
}

- (BOOL)isMessageContentsLocallyAvailable
{
  library = [(MFLibraryMessage *)self library];

  return [library isMessageContentsLocallyAvailable:self];
}

- (void)setPreferredEncoding:(unsigned int)encoding
{
  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFF7FFFFFFFFLL | ((encoding != -1) << 35);
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  [(MFLibraryMessage *)&v3 setPreferredEncoding:?];
}

- (void)setHasTemporaryUid:(BOOL)uid
{
  v3 = 0x100000000;
  if (!uid)
  {
    v3 = 0;
  }

  self->super._messageFlags = self->super._messageFlags & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (id)mailboxName
{
  v2 = [-[MFLibraryMessage library](self "library")];
  account = [v2 account];

  return [account nameForMailboxUid:v2];
}

- (int64_t)compareByUidWithMessage:(id)message
{
  v5 = HIDWORD(self->super._messageFlags) & 1;
  hasTemporaryUid = [message hasTemporaryUid];
  v7 = v5 - hasTemporaryUid;
  if (v5 == hasTemporaryUid)
  {
    uid = self->_uid;
    v7 = uid - [message uid];
  }

  v9 = v7 < 0;
  v10 = v7 != 0;
  if (v9)
  {
    return -1;
  }

  else
  {
    return v10;
  }
}

- (void)setMessageFlagsWithoutCommitting:(unint64_t)committing
{
  [(MFLibraryMessage *)self mf_lock];
  self->super._messageFlags = committing;

  [(MFLibraryMessage *)self mf_unlock];
}

- (void)setMessageFlags:(unint64_t)flags
{
  if ([(MFMailMessage *)self messageFlags]!= flags)
  {
    library = [(MFLibraryMessage *)self library];

    [library setFlags:flags forMessage:self];
  }
}

- (void)setSummary:(id)summary
{
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 setSummary:?];
  [-[MFLibraryMessage library](self "library")];
}

- (void)commit
{
  library = [(MFLibraryMessage *)self library];
  messageFlags = [(MFMailMessage *)self messageFlags];

  [library setFlags:messageFlags forMessage:self];
}

- (void)setMutableInfoFromMessage:(id)message
{
  messageFlags = [message messageFlags];

  [(MFLibraryMessage *)self setMessageFlagsWithoutCommitting:messageFlags];
}

- (id)_privacySafeDescription
{
  v3.receiver = self;
  v3.super_class = MFLibraryMessage;
  return [-[MFMailMessage _privacySafeDescription](&v3 _privacySafeDescription)];
}

- (id)path
{
  library = [(MFLibraryMessage *)self library];

  return [library dataPathForMessage:self];
}

- (id)dataPathForMimePart:(id)part
{
  messageStore = [(MFLibraryMessage *)self messageStore];

  return [messageStore dataPathForMessage:self part:part];
}

- (id)account
{
  messageStore = [(MFLibraryMessage *)self messageStore];
  if (+[MFLibraryStore sharedInstanceIfExists]== messageStore)
  {
    library = [(MFLibraryMessage *)self library];

    return [library accountForMessage:self];
  }

  else
  {

    return [messageStore account];
  }
}

- (void)markAsViewed
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v6 = @"MessageIsRead";
    v7[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    selfCopy = self;
    [messageStore setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &selfCopy, 1)}];
  }
}

- (void)markAsNotViewed
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 1) != 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v6 = @"MessageIsRead";
    v7[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    selfCopy = self;
    [messageStore setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &selfCopy, 1)}];
  }
}

- (void)markAsFlagged
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v6 = @"MessageIsFlagged";
    v7[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    selfCopy = self;
    [messageStore setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &selfCopy, 1)}];
  }
}

- (void)markAsNotFlagged
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x10) != 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v6 = @"MessageIsFlagged";
    v7[0] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    selfCopy = self;
    [messageStore setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &selfCopy, 1)}];
  }
}

- (void)markAsReplied
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 4) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v6 = @"MessageWasRepliedTo";
    v7[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    selfCopy = self;
    [messageStore setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &selfCopy, 1)}];
  }
}

- (void)markAsForwarded
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (([(MFMailMessage *)self messageFlags]& 0x100) == 0)
  {
    messageStore = [(MFLibraryMessage *)self messageStore];
    v6 = @"MessageWasForwarded";
    v7[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    selfCopy = self;
    [messageStore setFlagsFromDictionary:v4 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &selfCopy, 1)}];
  }
}

- (id)preferredEmailAddressToReplyWith
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [+[MailAccount mailboxUidFromActiveAccountsForURL:](MailAccount mailboxUidFromActiveAccountsForURL:{objc_msgSend(-[MFLibraryMessage library](self, "library"), "urlForMailboxID:", -[MFLibraryMessage originalMailboxID](self, "originalMailboxID"))), "account"}];
  v4 = [MailAccount addressesThatReceivedMessage:self];
  firstEmailAddress = [v3 firstEmailAddress];
  if (!firstEmailAddress)
  {
    goto LABEL_30;
  }

  defaultEmailAddress = firstEmailAddress;
  if ([v4 count] && (objc_msgSend(v4, "containsObject:", defaultEmailAddress) & 1) == 0)
  {
    v7 = [objc_msgSend(objc_msgSend(v3 "emailAddressesAndAliasesList")];
    [v7 removeObject:defaultEmailAddress];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {

      goto LABEL_24;
    }

    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v4 containsObject:v12])
        {
          defaultEmailAddress = v12;
          if (([v7 containsObject:v12] & 1) == 0)
          {
            defaultEmailAddress = [v3 defaultEmailAddress];
          }

          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_15:

    if (!defaultEmailAddress)
    {
LABEL_30:
      if ([-[MFLibraryMessage mailbox](self "mailbox")])
      {
        senders = [(MFLibraryMessage *)self senders];
        if ([senders count])
        {
          v14 = senders;
LABEL_21:
          defaultEmailAddress = [v14 objectAtIndex:0];
          goto LABEL_24;
        }
      }

      else if ([v4 count])
      {
        v14 = v4;
        goto LABEL_21;
      }

      defaultEmailAddress = 0;
    }
  }

LABEL_24:
  if ([defaultEmailAddress isEqualToString:{objc_msgSend(defaultEmailAddress, "mf_addressComment")}])
  {
    v15 = [+[MailAccount accountContainingEmailAddress:](MailAccount accountContainingEmailAddress:{defaultEmailAddress), "fullUserName"}];
    if (v15)
    {
      return [MEMORY[0x277CCACA8] mf_formattedAddressWithName:v15 email:defaultEmailAddress useQuotes:1];
    }
  }

  return defaultEmailAddress;
}

- (void)setRemoteID:(const char *)d flags:(unint64_t)flags size:(unsigned int)size mailboxID:(unsigned int)iD originalMailboxID:(unsigned int)mailboxID
{
  if (d)
  {

    self->_remoteID = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:d];
    [(MFLibraryMessage *)self _updateUID];
  }

  self->super._messageFlags = flags;
  self->_size = size;
  self->_mailboxID = iD;
  self->_originalMailboxID = mailboxID;
}

- (void)setMessageData:(id)data isPartial:(BOOL)partial
{
  partialCopy = partial;
  library = [(MFLibraryMessage *)self library];

  [library setData:data forMessage:self isPartial:partialCopy];
}

- (id)dataConsumerForMimePart:(id)part
{
  library = [(MFLibraryMessage *)self library];

  return [library dataConsumerForMessage:self part:part];
}

- (id)copyMessageInfo
{
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  copyMessageInfo = [(MFMailMessage *)&v5 copyMessageInfo];
  [copyMessageInfo setUid:{-[MFLibraryMessage libraryID](self, "libraryID")}];
  [copyMessageInfo setMailboxID:self->_mailboxID];
  [copyMessageInfo setUidIsLibraryID:1];
  return copyMessageInfo;
}

- (void)_initializeMetadata
{
  if (!self->_metadata)
  {
    self->_metadata = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_metadataChangedKeys = objc_alloc_init(MEMORY[0x277CBEB58]);
  }
}

- (void)setMetadataValue:(id)value forKey:(id)key
{
  [(MFLock *)self->_metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  [(NSMutableDictionary *)metadata setObject:value forKeyedSubscript:key];
  v8 = [(NSMutableSet *)self->_metadataChangedKeys count];
  [(NSMutableSet *)self->_metadataChangedKeys addObject:key];
  [(MFLock *)self->_metadataLock unlock];
  if (!v8)
  {
    library = [(MFLibraryMessage *)self library];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__MFLibraryMessage_setMetadataValue_forKey___block_invoke;
    v10[3] = &unk_2798B6668;
    v10[4] = self;
    [library updateMessage:self withMetadata:v10];
  }
}

void *__44__MFLibraryMessage_setMetadataValue_forKey___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 304) lock];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 296);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 setObject:objc_msgSend(*(*(a1 + 32) + 288) forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v9 + 1) + 8 * i)), *(*(&v9 + 1) + 8 * i)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 296) removeAllObjects];
  [*(*(a1 + 32) + 304) unlock];
  return v2;
}

- (id)metadataValueOfClass:(Class)class forKey:(id)key
{
  [(MFLock *)self->_metadataLock lock];
  metadata = self->_metadata;
  if (!metadata)
  {
    [(MFLibraryMessage *)self _initializeMetadata];
    metadata = self->_metadata;
  }

  v8 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:key];
  if (v8 || ((-[MFLock unlock](self->_metadataLock, "unlock"), v9 = [-[MFLibraryMessage library](self "library")], -[MFLock lock](self->_metadataLock, "lock"), (v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_metadata, "objectForKeyedSubscript:", key)) == 0) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v12 = v8;
  }

  else
  {
    [(NSMutableDictionary *)self->_metadata setObject:v9 forKeyedSubscript:key];
    v12 = v9;
  }

  [(MFLock *)self->_metadataLock unlock];
  return v12;
}

- (id)_attachmentStorageLocation
{
  if (![MFUserAgent() isMobileMail])
  {
    return 0;
  }

  v3 = [objc_msgSend(+[MailAccount mailboxUidFromActiveAccountsForURL:](MailAccount mailboxUidFromActiveAccountsForURL:{objc_msgSend(-[MFLibraryMessage library](self, "library"), "urlForMailboxID:", -[MFLibraryMessage mailboxID](self, "mailboxID"))), "fullPath"), "stringByAppendingPathComponent:", @"Attachments"}];
  [(MFLibraryMessage *)self libraryID];
  v4 = EFStringWithInt();

  return [v3 stringByAppendingPathComponent:v4];
}

- (void)_forceLoadOfMessageSummaryFromProtectedStore
{
  library = [(MFLibraryMessage *)self library];
  v5 = [library messageWithLibraryID:-[MFLibraryMessage libraryID](self options:"libraryID") inMailbox:{4111, objc_msgSend(library, "urlForMailboxID:", -[MFLibraryMessage mailboxID](self, "mailboxID"))}];
  if (v5)
  {
    if (v5 != self)
    {
      [(MFLibraryMessage *)a2 _forceLoadOfMessageSummaryFromProtectedStore];
    }
  }
}

- (void)loadCachedHeaderValuesFromHeaders:(id)headers
{
  [(MFLibraryMessage *)self _forceLoadOfMessageSummaryFromProtectedStore];
  v5.receiver = self;
  v5.super_class = MFLibraryMessage;
  [(MFMailMessage *)&v5 loadCachedHeaderValuesFromHeaders:headers];
}

@end