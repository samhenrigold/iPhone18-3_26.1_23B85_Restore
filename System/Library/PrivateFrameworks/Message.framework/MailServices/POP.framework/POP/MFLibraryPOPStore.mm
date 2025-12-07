@interface MFLibraryPOPStore
- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (MFLibraryPOPStore)initWithMailbox:(id)mailbox readOnly:(BOOL)only;
- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial;
- (id)_fetchHeaderDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary;
- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary;
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download;
- (id)messageForRemoteID:(id)d;
- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options;
- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message;
- (void)messagesWereDeleted:(id)deleted;
- (void)purgeMessages:(id)messages;
- (void)setServerUnreadOnlyOnServerCount:(unint64_t)count;
@end

@implementation MFLibraryPOPStore

- (MFLibraryPOPStore)initWithMailbox:(id)mailbox readOnly:(BOOL)only
{
  v5.receiver = self;
  v5.super_class = MFLibraryPOPStore;
  result = [(MFLibraryStore *)&v5 initWithMailbox:mailbox readOnly:only];
  if (result)
  {
    result->_serverMessageCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  if (length <= 1)
  {
    mimeBody2 = [partCopy mimeBody];
    topLevelPart = [mimeBody2 topLevelPart];
    type = [topLevelPart type];
    v18 = [type isEqualToString:@"multipart"];

    if (v18)
    {
    }

    else
    {
      v19 = [(MFLibraryPOPStore *)self bodyDataForMessage:message isComplete:complete isPartial:0 downloadIfNecessary:1];

      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  v20 = [(MFLibraryStore *)self _cachedBodyDataContainerForMessage:message valueIfNotPresent:0];
  v21 = v20;
  if (v20 && (*(v20 + *MEMORY[0x277D24FF0]) & 1) == 0 && (v22 = MEMORY[0x277D24FE8], v23 = [*(v20 + *MEMORY[0x277D24FE8]) length], v24 = objc_msgSend(partCopy, "range"), v23 >= v24 + v25))
  {
    v28 = *&v21[*v22];
    range = [partCopy range];
    v19 = [v28 mf_subdataWithRange:{range, v30}];
    if (complete)
    {
      *complete = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!v19 && necessaryCopy)
  {
    v26 = [(MFLibraryPOPStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:0 downloadIfNecessary:1 usePartDatas:0 didDownload:download];
    v19 = v26;
    if (complete)
    {
      if (v26)
      {
        *complete = 1;
      }
    }
  }

LABEL_14:

  return v19;
}

- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  location = range.location;
  consumerCopy = consumer;
  download = [(MFLibraryPOPStore *)self dataForMimePart:part inRange:location isComplete:length downloadIfNecessary:complete didDownload:necessaryCopy, download];
  if (download)
  {
    [consumerCopy appendData:download];
  }

  return download != 0;
}

- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  messageCopy = message;
  contentType = [messageCopy contentType];
  lowercaseString = [contentType lowercaseString];

  if ([lowercaseString isEqualToString:@"multipart"])
  {
    v17.receiver = self;
    v17.super_class = MFLibraryPOPStore;
    v13 = [(MFLibraryStore *)&v17 bodyDataForMessage:messageCopy isComplete:0 isPartial:0 downloadIfNecessary:necessaryCopy];
    v14 = v13;
    if (complete && v13)
    {
      *complete = 1;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MFLibraryPOPStore;
    v14 = [(MFLibraryStore *)&v16 bodyDataForMessage:messageCopy isComplete:complete isPartial:partial downloadIfNecessary:necessaryCopy];
  }

  return v14;
}

- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary usePartDatas:(BOOL)datas didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  datas = [(MFLibraryPOPStore *)self bodyDataForMessage:message isComplete:complete isPartial:0 downloadIfNecessary:necessary, datas];
  v11 = datas;
  if (download && necessaryCopy && [datas length])
  {
    *download = 1;
  }

  return v11;
}

- (id)_fetchHeaderDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  messageCopy = message;
  v22.receiver = self;
  v22.super_class = MFLibraryPOPStore;
  headerData = [(MFLibraryStore *)&v22 _fetchHeaderDataForMessage:messageCopy downloadIfNecessary:necessaryCopy];
  if (headerData)
  {
    v8 = 1;
  }

  else
  {
    v8 = !necessaryCopy;
  }

  if (!v8)
  {
    remoteID = [messageCopy remoteID];
    if (remoteID)
    {
      account = [(MFLibraryStore *)self account];
      authenticatedConnection = [account authenticatedConnection];

      if ([authenticatedConnection isValid])
      {
        v21 = 0;
        v12 = [authenticatedConnection getMessageNumbers:0 messageIdsByNumber:0 numbersByMessageId:&v21];
        v13 = v21;
        v14 = v13;
        headerData = 0;
        if (!v12 && v13)
        {
          currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
          mEMORY[0x277D28258] = [MEMORY[0x277D28258] sharedInstance];
          [currentMonitor recordTransportType:{objc_msgSend(mEMORY[0x277D28258], "transportType")}];

          v17 = [v14 objectForKeyedSubscript:remoteID];
          v18 = [authenticatedConnection copyMessageHeaderForMessageNumber:{objc_msgSend(v17, "unsignedLongValue")}];
          headerData = [v18 headerData];
        }
      }

      else
      {
        v14 = 0;
        headerData = 0;
      }

      account2 = [(MFLibraryStore *)self account];
      [account2 checkInConnection:authenticatedConnection currentUIDs:0];
    }

    else
    {
      headerData = 0;
    }
  }

  return headerData;
}

- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial
{
  necessaryCopy = necessary;
  messageCopy = message;
  currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
  [currentMonitor recordTransportType:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37.receiver = self;
    v37.super_class = MFLibraryPOPStore;
    v12 = [(MFLibraryStore *)&v37 _fetchBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:available downloadIfNecessary:necessaryCopy partial:partial];
    if (v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
  }

  if (necessaryCopy)
  {
    account = [(MFLibraryStore *)self account];
    authenticatedConnection = [account authenticatedConnection];

    if ([authenticatedConnection isValid])
    {
      v36 = 0;
      v15 = [authenticatedConnection getMessageNumbers:0 messageIdsByNumber:0 numbersByMessageId:&v36];
      v16 = v36;
      v17 = v15 == 0;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    remoteID = [messageCopy remoteID];
    v34 = v16;
    v35 = [v16 objectForKeyedSubscript:remoteID];
    v12 = 0;
    if (v16)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    if (v19 && remoteID && v35)
    {
      library = [(MFLibraryStore *)self library];
      v21 = [library dataConsumerForMessage:messageCopy part:0 incomplete:0];

      v33 = v21;
      if ([authenticatedConnection retr:objc_msgSend(v35 dataConsumer:{"unsignedLongValue"), v21}])
      {
        data = 0;
      }

      else
      {
        data = [v21 data];
      }

      currentMonitor2 = [MEMORY[0x277D281F0] currentMonitor];
      mEMORY[0x277D28258] = [MEMORY[0x277D28258] sharedInstance];
      [currentMonitor2 recordTransportType:{objc_msgSend(mEMORY[0x277D28258], "transportType")}];

      if (data && (v25 = [data mf_rangeOfRFC822HeaderData], v27 = v26, v28 = v25 + v26, v25 + v26 <= objc_msgSend(data, "length")))
      {
        v32 = [data mf_subdataWithRange:{v25, v27}];
        if (available)
        {
          *available = v32;
        }

        v12 = [data mf_subdataWithRange:{v28, objc_msgSend(data, "length") - v28}];
        library2 = [(MFLibraryStore *)self library];
        [library2 processRemoteContentFromHeaderData:v32 bodyData:v12 forMessage:messageCopy];
      }

      else
      {
        v12 = 0;
      }
    }

    account2 = [(MFLibraryStore *)self account];
    [account2 checkInConnection:authenticatedConnection currentUIDs:0];
  }

LABEL_26:
  if (partial)
  {
    *partial = 0;
  }

  return v12;
}

- (void)purgeMessages:(id)messages
{
  messagesCopy = messages;
  library = [(MFLibraryStore *)self library];
  [library compactMessages:messagesCopy permanently:0 notifyPersistence:1];
}

- (int64_t)fetchNumMessages:(unint64_t)messages preservingUID:(id)d options:(unint64_t)options
{
  optionsCopy = options;
  dCopy = d;
  currentMonitor = [MEMORY[0x277D281F0] currentMonitor];
  mailbox = [(MFLibraryStore *)self mailbox];
  [currentMonitor setMailbox:mailbox];

  selfCopy = self;
  library = [(MFLibraryStore *)selfCopy library];
  mailbox2 = [(MFLibraryStore *)selfCopy mailbox];
  uRLString = [mailbox2 URLString];
  v15 = [library nonDeletedCountForMailbox:uRLString];

  account = [(MFLibraryStore *)selfCopy account];
  v17 = account;
  v18 = messages - v15;
  if (messages < v15)
  {
    v18 = 0;
  }

  if ((optionsCopy & 4) != 0)
  {
    messagesCopy = 0;
  }

  else
  {
    messagesCopy = messages;
  }

  if ((optionsCopy & 4) != 0)
  {
    messagesCopy2 = messages;
  }

  else
  {
    messagesCopy2 = v18;
  }

  v21 = [account fetchNumNewMessages:messagesCopy oldMessages:messagesCopy2 preservingUID:dCopy withStore:selfCopy];

  if ((optionsCopy & 4) == 0)
  {
    [(MFLibraryStore *)selfCopy purgeMessagesBeyondLimit:messages];
  }

  return v21;
}

- (id)messageForRemoteID:(id)d
{
  dCopy = d;
  library = [(MFLibraryStore *)self library];
  mailbox = [(MFLibraryStore *)self mailbox];
  uRLString = [mailbox URLString];
  v8 = [library messageWithRemoteID:dCopy inRemoteMailbox:uRLString];

  [v8 setMessageStore:self];

  return v8;
}

- (void)messagesWereDeleted:(id)deleted
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  deletedCopy = deleted;
  v5 = [deletedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(deletedCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        library = [(MFLibraryStore *)self library];
        remoteID = [v8 remoteID];
        account = [(MFLibraryStore *)self account];
        uRLString = [account URLString];
        [library deletePOPUID:remoteID inMailbox:uRLString];

        ++v7;
      }

      while (v5 != v7);
      v5 = [deletedCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_handleFlagsChangedForMessages:(id)messages flags:(id)flags oldFlagsByMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  flagsCopy = flags;
  messageCopy = message;
  v25.receiver = self;
  v25.super_class = MFLibraryPOPStore;
  [(MFLibraryStore *)&v25 _handleFlagsChangedForMessages:messagesCopy flags:flagsCopy oldFlagsByMessage:messageCopy, messagesCopy];
  [(MFLibraryPOPStore *)self mf_lock];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = messagesCopy;
  v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [messageCopy objectForKey:v14];
        intValue = [v15 intValue];

        if (flagsCopy)
        {
          messageFlags = MFMessageFlagsByApplyingDictionary();
        }

        else
        {
          messageFlags = [v14 messageFlags];
        }

        if ((intValue & 2) == 0 && (messageFlags & 2) != 0)
        {
          serverMessageCount = self->_serverMessageCount;
          if (serverMessageCount)
          {
            v19 = serverMessageCount == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            self->_serverMessageCount = serverMessageCount - 1;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  [(MFLibraryPOPStore *)self mf_unlock];
}

- (void)setServerUnreadOnlyOnServerCount:(unint64_t)count
{
  library = [(MFLibraryStore *)self library];
  uRLString = [(MFLibraryStore *)self URLString];
  [library setServerUnreadOnlyOnServerCount:0 forMailbox:uRLString];
}

@end