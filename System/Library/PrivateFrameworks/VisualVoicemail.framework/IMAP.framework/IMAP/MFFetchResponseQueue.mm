@interface MFFetchResponseQueue
- (BOOL)addItem:(id)item;
- (BOOL)handleItems:(id)items;
- (MFFetchResponseQueue)init;
- (id)insertMessages:(id)messages;
@end

@implementation MFFetchResponseQueue

- (MFFetchResponseQueue)init
{
  v7.receiver = self;
  v7.super_class = MFFetchResponseQueue;
  v2 = [(MFBufferedQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    store = v2->_store;
    v2->_store = 0;

    connection = v3->_connection;
    v3->_connection = 0;

    v3->_numNewUIDs = 0;
    v3->_newMessageCount = 0;
    v3->_highestModSequence = 0;
    v3->_flags = 0;
    v3->_isSearching = 0;
  }

  return v3;
}

- (id)insertMessages:(id)messages
{
  messagesCopy = messages;
  library = [(MFLibraryStore *)self->_store library];
  mailboxUid = [(MFMailMessageStore *)self->_store mailboxUid];
  LOWORD(v9) = 0;
  v7 = [library addMessages:messagesCopy withMailbox:mailboxUid fetchBodies:0 newMessagesByOldMessage:0 remoteIDs:0 setFlags:self->_flags clearFlags:0 messageFlagsForMessages:0 copyFiles:v9 addPOPUIDs:0 dataSectionsByMessage:?];

  return v7;
}

- (BOOL)handleItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [(MFFetchResponseQueue *)self insertMessages:itemsCopy];
  v6 = +[MFActivityMonitor currentMonitor];
  if ([v6 gotNewMessagesState])
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-259200.0];
    [v7 timeIntervalSince1970];
    v9 = v8;

    gotNewMessagesState = [v6 gotNewMessagesState];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v5;
    v21 = v5;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          messageFlags = [v15 messageFlags];
          if ((messageFlags & 1) == 0)
          {
            [v15 dateReceivedAsTimeIntervalSince1970];
            if (v17 > v9)
            {
              if ([v15 conversationFlags])
              {
                gotNewMessagesState = 3;
                goto LABEL_19;
              }

              if (gotNewMessagesState <= 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = gotNewMessagesState;
              }

              if ((messageFlags & 0x1000000) != 0)
              {
                gotNewMessagesState = v18;
              }
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v5 = v21;
    [v6 setGotNewMessagesState:gotNewMessagesState];
  }

  v19 = [v5 count];
  LOBYTE(v19) = [itemsCopy count] == v19;

  return v19;
}

- (BOOL)addItem:(id)item
{
  v62 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy responseType] != 17)
  {
    LOBYTE(messageFlags2) = 1;
    goto LABEL_54;
  }

  context = objc_autoreleasePoolPush();
  fetchResults = [itemCopy fetchResults];
  selfCopy = self;
  v44 = [(MFIMAPConnection *)self->_connection _isFetchResponseValid:itemCopy];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = fetchResults;
  v4 = [(MFIMAPMessageWithCache *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v4)
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    LOBYTE(messageFlags2) = 1;
    v20 = obj;
    goto LABEL_52;
  }

  v5 = 0;
  uniqueRemoteId = 0;
  messageSize = 0;
  modSequenceNumber = 0;
  messageFlags = 0;
  v42 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v9 = *v52;
  encoding = 0xFFFFFFFFLL;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v52 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v51 + 1) + 8 * i);
      type = [v12 type];
      if (type <= 7)
      {
        if (type == 2)
        {
          internalDate = [v12 internalDate];
          v17 = v45;
          v45 = internalDate;
          goto LABEL_24;
        }

        if (type == 3)
        {
          messageSize = [v12 messageSize];
        }

        else if (type == 4 && v44 != 0)
        {
          fetchData = [v12 fetchData];
          v16 = [fetchData mutableCopy];

          [v16 mf_convertNetworkLineEndingsToUnix];
          [v16 mf_makeImmutable];
          v17 = v43;
          v43 = v16;
LABEL_24:

          continue;
        }
      }

      else if (type > 9)
      {
        if (type == 10)
        {
          messageFlags = [v12 messageFlags];
          encoding = [v12 encoding];
          customFlagsArray = [v12 customFlagsArray];
          BYTE4(v42) = 1;
          v17 = v46;
          v46 = customFlagsArray;
          goto LABEL_24;
        }

        if (type == 11)
        {
          modSequenceNumber = [v12 modSequenceNumber];
        }
      }

      else if (type == 8)
      {
        v5 = [v12 uid];
        LODWORD(v42) = 1;
      }

      else
      {
        uniqueRemoteId = [v12 uniqueRemoteId];
      }
    }

    v4 = [(MFIMAPMessageWithCache *)obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  }

  while (v4);

  if ((v42 & 0x100000000) == 0)
  {
    goto LABEL_46;
  }

  if ((([v43 length] != 0) & v42 & v44) == 1 && -[MFFetchResponseQueue shouldAddUID:](selfCopy, "shouldAddUID:", v5))
  {
    v20 = [objc_alloc(MEMORY[0x277D24F40]) initWithHeaderData:v43 encoding:encoding];
    v21 = [[MFIMAPMessageWithCache alloc] initWithFlags:messageFlags customFlags:v46 size:messageSize uid:v5];
    [v45 timeIntervalSince1970];
    [(MFIMAPMessageWithCache *)v21 setDateReceivedTimeIntervalSince1970:?];
    if (encoding != -1)
    {
      [(MFIMAPMessage *)v21 setPreferredEncoding:encoding];
    }

    [(MFIMAPMessage *)v21 setUniqueRemoteId:uniqueRemoteId];
    [(MFMailMessage *)v21 loadCachedHeaderValuesFromHeaders:v20];
    [(MFIMAPMessageWithCache *)v21 setHeaders:v20];
    [(MFIMAPMessageWithCache *)v21 setMessageStore:selfCopy->_store];
    if (selfCopy->_highestModSequence <= modSequenceNumber)
    {
      highestModSequence = modSequenceNumber;
    }

    else
    {
      highestModSequence = selfCopy->_highestModSequence;
    }

    [(MFMailMessage *)v21 setModSequenceNumber:highestModSequence];
    v50.receiver = selfCopy;
    v50.super_class = MFFetchResponseQueue;
    v24 = messageFlags2 = [(MFBufferedQueue *)&v50 addItem:v21];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      mailboxUid = [(MFMailMessageStore *)selfCopy->_store mailboxUid];
      mambaID = [mailboxUid mambaID];
      subject = [(MFIMAPMessageWithCache *)v21 subject];
      *buf = 136315650;
      v56 = mambaID;
      v57 = 2080;
      v58 = " ";
      v59 = 2112;
      v60 = subject;
      _os_log_impl(&dword_2720B1000, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s#Power [New Message] subject=%@;", buf, 0x20u);
    }

    newMessageCount = selfCopy->_newMessageCount;
    selfCopy->_newMessageCount = newMessageCount + 1;
    numNewUIDs = selfCopy->_numNewUIDs;
    if (newMessageCount + 1 <= numNewUIDs)
    {
      v30 = +[MFActivityMonitor currentMonitor];
      [v30 setCurrentCount:selfCopy->_newMessageCount];
      if ((messageFlags & 1) == 0)
      {
        [v30 setGotNewMessagesState:1];
      }

LABEL_50:
    }

    else if (newMessageCount == numNewUIDs)
    {
      v30 = +[MFActivityMonitor currentMonitor];
      [v30 reset];
      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (v42 & v44)
  {
    v31 = [(MFFetchResponseQueue *)selfCopy messageToSyncFlagsForUID:v5];
    v20 = v31;
    if (v31)
    {
      store = selfCopy->_store;
      messageFlags2 = [(MFMailMessage *)v31 messageFlags];
      connection = selfCopy->_connection;
      isSearching = selfCopy->_isSearching;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __32__MFFetchResponseQueue_addItem___block_invoke;
      v48[3] = &unk_279E336D8;
      v35 = v20;
      v49 = v35;
      _syncFlags(store, v5, messageFlags2, messageFlags, connection, isSearching, v48);
      LOBYTE(messageFlags2) = 1;
      v21 = v49;
      v20 = v35;
      goto LABEL_51;
    }

    LOBYTE(messageFlags2) = 1;
LABEL_52:
  }

  else
  {
LABEL_46:
    LOBYTE(messageFlags2) = 1;
  }

  objc_autoreleasePoolPop(context);
LABEL_54:

  return messageFlags2;
}

@end