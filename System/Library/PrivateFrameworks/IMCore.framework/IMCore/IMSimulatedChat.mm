@interface IMSimulatedChat
- (BOOL)_handleIncomingItem:(id)item;
- (IMSimulatedChat)initWithIncomingIDs:(id)ds messageIDOffset:(unint64_t)offset account:(id)account;
- (IMSimulatedChatDelegate)delegate;
- (id)_messageWithGUID:(id)d;
- (id)_messagesToProcessFromMessage:(id)message;
- (id)chatIdentifier;
- (void)_processMessage:(id)message receivingHandle:(id)handle sendingHandle:(id)sendingHandle;
- (void)receiveDemoMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)setDisplayName:(id)name;
- (void)simulateMessageDeliveryForGUID:(id)d;
- (void)simulatedChat:(id)chat didSendMessage:(id)message;
- (void)simulatedDaemon:(id)daemon willSendBalloonPayload:(id)payload attachments:(id)attachments messageGUID:(id)d bundleID:(id)iD;
@end

@implementation IMSimulatedChat

- (IMSimulatedChat)initWithIncomingIDs:(id)ds messageIDOffset:(unint64_t)offset account:(id)account
{
  v32 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  accountCopy = account;
  if (qword_1EB2EA2E8 != -1)
  {
    sub_1A84E1078();
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [accountCopy imHandleWithID:*(*(&v27 + 1) + 8 * i) alreadyCanonical:0];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v26.receiver = self;
  v26.super_class = IMSimulatedChat;
  BYTE2(v25) = 0;
  LOWORD(v25) = 0;
  if ([v10 count] <= 1)
  {
    v18 = [IMChat _initWithGUID:sel__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_ account:stringGUID style:accountCopy roomName:45 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:v10 hasHadSuccessfulQuery:1 isRecovered:v25 isDeletingIncomingMessages:?];
  }

  else
  {
    v18 = [IMChat _initWithGUID:sel__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_ account:stringGUID style:accountCopy roomName:43 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:v10 hasHadSuccessfulQuery:1 isRecovered:v25 isDeletingIncomingMessages:?];
  }

  v19 = v18;

  if (v19)
  {
    objc_storeStrong(&v19->_simulatedAccount, account);
    v19->_currentMessageID = offset;
    array = [MEMORY[0x1E695DF70] array];
    simulatedAttachments = v19->_simulatedAttachments;
    v19->_simulatedAttachments = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    guidToMessageItemNeedingAckMap = v19->_guidToMessageItemNeedingAckMap;
    v19->_guidToMessageItemNeedingAckMap = dictionary;
  }

  return v19;
}

- (void)sendMessage:(id)message
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  [(IMSimulatedChat *)self _messagesToProcessFromMessage:?];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v6 = *v20;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            guid = [messageCopy guid];
            *buf = v15;
            v24 = guid;
            _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "sending demo message with messageGUID: %@", buf, 0xCu);
          }
        }

        v18.receiver = self;
        v18.super_class = IMSimulatedChat;
        [(IMChat *)&v18 sendMessage:v8, v15];
        participants = [(IMChat *)self participants];
        firstObject = [participants firstObject];
        simulatedAccount = [(IMSimulatedChat *)self simulatedAccount];
        loginHandle = [simulatedAccount loginHandle];
        [(IMSimulatedChat *)self _processMessage:v8 receivingHandle:firstObject sendingHandle:loginHandle];

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v4);
  }
}

- (void)receiveDemoMessage:(id)message
{
  v13 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      v11 = 138412290;
      v12 = guid;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "receiving demo message with messageGUID: %@", &v11, 0xCu);
    }
  }

  simulatedAccount = [(IMSimulatedChat *)self simulatedAccount];
  loginHandle = [simulatedAccount loginHandle];
  participants = [(IMChat *)self participants];
  firstObject = [participants firstObject];
  [(IMSimulatedChat *)self _processMessage:messageCopy receivingHandle:loginHandle sendingHandle:firstObject];
}

- (void)_processMessage:(id)message receivingHandle:(id)handle sendingHandle:(id)sendingHandle
{
  v57 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handleCopy = handle;
  sendingHandleCopy = sendingHandle;
  v33 = messageCopy;
  [(IMSimulatedChat *)self _messagesToProcessFromMessage:messageCopy];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v37)
  {
    v35 = *v48;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(obj);
        }

        _imMessageItem = [*(*(&v47 + 1) + 8 * i) _imMessageItem];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        fileTransferGUIDs = [_imMessageItem fileTransferGUIDs];
        v10 = [fileTransferGUIDs countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v10)
        {
          v11 = *v44;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v44 != v11)
              {
                objc_enumerationMutation(fileTransferGUIDs);
              }

              v13 = *(*(&v43 + 1) + 8 * j);
              v14 = +[IMFileTransferCenter sharedInstance];
              v15 = [v14 transferForGUID:v13];

              simulatedAttachments = [(IMSimulatedChat *)self simulatedAttachments];
              v17 = [IMAttachment alloc];
              localPath = [v15 localPath];
              v19 = [(IMAttachment *)v17 initWithPath:localPath guid:v13];
              [simulatedAttachments addObject:v19];
            }

            v10 = [fileTransferGUIDs countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v10);
        }

        simulatedAccount = [(IMSimulatedChat *)self simulatedAccount];
        loginHandle = [simulatedAccount loginHandle];
        v22 = [sendingHandleCopy isEqual:loginHandle];

        if (v22)
        {
          v23 = 36869;
        }

        else
        {
          v23 = 36865;
        }

        ++self->_currentMessageID;
        v24 = sub_1A8311880(_imMessageItem, v23, [(IMSimulatedChat *)self currentMessageID], sendingHandleCopy, handleCopy, 0);
        guidToMessageItemNeedingAckMap = self->_guidToMessageItemNeedingAckMap;
        guid = [v24 guid];
        [(NSMutableDictionary *)guidToMessageItemNeedingAckMap setObject:v24 forKeyedSubscript:guid];

        delegate = [(IMSimulatedChat *)self delegate];
        [delegate simulatedChat:self didSendMessage:v24];

        if ([(IMSimulatedChat *)self shouldUseTimedAck])
        {
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
              message = [_imMessageItem message];
              guid2 = [message guid];
              *buf = 138412546;
              v52 = v29;
              v53 = 2112;
              v54 = guid2;
              _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "deliveryDelay: %@ for messageGUID: %@", buf, 0x16u);
            }
          }

          v32 = dispatch_time(0, 1000000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1A8311FA4;
          block[3] = &unk_1E7810140;
          block[4] = self;
          v42 = _imMessageItem;
          dispatch_after(v32, MEMORY[0x1E69E96A0], block);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v37);
  }
}

- (void)simulateMessageDeliveryForGUID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "simulateMessageDeliveryForGUID: %@", &v11, 0xCu);
    }
  }

  v6 = [(NSMutableDictionary *)self->_guidToMessageItemNeedingAckMap objectForKeyedSubscript:dCopy];
  if (v6)
  {
    [(IMSimulatedChat *)self _handleIncomingItem:v6];
    delegate = [(IMSimulatedChat *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(IMSimulatedChat *)self delegate];
      [delegate2 simulatedChat:self didHandleItem:v6];
    }

    [(NSMutableDictionary *)self->_guidToMessageItemNeedingAckMap removeObjectForKey:dCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Did not find messageItem for messageGUID: %@. Nothing to process", &v11, 0xCu);
    }
  }
}

- (id)_messagesToProcessFromMessage:(id)message
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if ([messageCopy hasDataDetectorResults])
  {
    [messageCopy messagesBySeparatingRichLinks];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          sender = [messageCopy sender];
          [v10 _updateSender:sender];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    if (-[IMChat isStewieChat](self, "isStewieChat") && ([messageCopy text], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "string"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "lengthOfBytesUsingEncoding:", 4), v13, v12, v14 >= 0xA1))
    {
      v15 = [messageCopy messagesSeparatedByByteLength:160];
    }

    else
    {
      v21 = messageCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    }

    v5 = v15;
  }

  return v5;
}

- (BOOL)_handleIncomingItem:(id)item
{
  v47 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = itemCopy;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Handling item: %@", buf, 0xCu);
    }
  }

  if ([itemCopy associatedMessageType] == 2)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(IMItemsController *)self _items];
    v4 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (!v4)
    {
      goto LABEL_32;
    }

    v5 = *v40;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = itemCopy;
          v9 = v7;
          if ([v9 messageID])
          {
            pluginSessionGUID = [v9 pluginSessionGUID];
            associatedMessageGUID = [v8 associatedMessageGUID];
            if (([pluginSessionGUID isEqualToString:associatedMessageGUID] & 1) == 0)
            {

              goto LABEL_18;
            }

            balloonBundleID = [v9 balloonBundleID];
            balloonBundleID2 = [v8 balloonBundleID];
            v14 = [balloonBundleID isEqualToString:balloonBundleID2];

            if (v14)
            {
              if ([v9 associatedMessageType] == 3)
              {
                pluginSessionGUID = [v9 payloadData];
                [array2 addObject:pluginSessionGUID];
                goto LABEL_18;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [v9 associatedMessageType] == 2)
              {
                pluginSessionGUID = [objc_alloc(MEMORY[0x1E69A7EF0]) initWithMessageItem:v9];
                if ([v9 isFromMe])
                {
                  simulatedAccount = [(IMSimulatedChat *)self simulatedAccount];
                  [simulatedAccount loginHandle];
                }

                else
                {
                  simulatedAccount = [(IMChat *)self participants];
                  [simulatedAccount firstObject];
                }
                v16 = ;
                if ([v9 isFromMe])
                {
                  participants = [(IMChat *)self participants];
                  [participants firstObject];
                }

                else
                {
                  participants = [(IMSimulatedChat *)self simulatedAccount];
                  [participants loginHandle];
                }
                v18 = ;
                [pluginSessionGUID _updateContextWithSenderHandle:v16 otherHandle:v18];

                associatedMessageGUID2 = [v8 associatedMessageGUID];
                [pluginSessionGUID setAssociatedMessageGUID:associatedMessageGUID2];

                [pluginSessionGUID setAssociatedMessageType:3];
                breadcrumbText = [v8 breadcrumbText];
                [pluginSessionGUID setBody:breadcrumbText];

                [array addObject:pluginSessionGUID];
                payloadData = [v9 payloadData];
                [array2 addObject:payloadData];

LABEL_18:
              }
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v22 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      v4 = v22;
      if (!v22)
      {
LABEL_32:

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v23 = array;
        v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v24)
        {
          v25 = *v36;
          do
          {
            v26 = 0;
            do
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [(IMSimulatedChat *)self _handleIncomingItem:*(*(&v35 + 1) + 8 * v26++)];
            }

            while (v24 != v26);
            v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v24);
        }

        if ([array2 count])
        {
          [itemCopy setConsumedSessionPayloads:array2];
        }

        break;
      }
    }
  }

  v34.receiver = self;
  v34.super_class = IMSimulatedChat;
  v27 = [(IMChat *)&v34 _handleIncomingItem:itemCopy];

  return v27;
}

- (id)chatIdentifier
{
  simulatedChatIdentifier = [(IMSimulatedChat *)self simulatedChatIdentifier];
  v4 = [simulatedChatIdentifier length];

  if (!v4)
  {
    participants = [(IMChat *)self participants];
    if ([participants count] == 1)
    {
      firstObject = [participants firstObject];
      v7 = [firstObject ID];
      [(IMSimulatedChat *)self setSimulatedChatIdentifier:v7];
    }

    else
    {
      firstObject = [MEMORY[0x1E696AEC0] stringGUID];
      [(IMSimulatedChat *)self setSimulatedChatIdentifier:firstObject];
    }
  }

  return [(IMSimulatedChat *)self simulatedChatIdentifier];
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  simulatedDisplayName = self->_simulatedDisplayName;
  if (simulatedDisplayName != nameCopy)
  {
    v9 = nameCopy;
    simulatedDisplayName = [(NSString *)simulatedDisplayName isEqualToString:nameCopy];
    if ((simulatedDisplayName & 1) == 0)
    {
      v6 = [(NSString *)v9 copy];
      v7 = self->_simulatedDisplayName;
      self->_simulatedDisplayName = v6;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kIMChatDisplayNameChangedNotification" object:self];
    }
  }

  MEMORY[0x1EEE66BB8](simulatedDisplayName);
}

- (void)simulatedChat:(id)chat didSendMessage:(id)message
{
  ++self->_currentMessageID;
  messageCopy = message;
  currentMessageID = [(IMSimulatedChat *)self currentMessageID];
  participants = [(IMChat *)self participants];
  firstObject = [participants firstObject];
  simulatedAccount = [(IMSimulatedChat *)self simulatedAccount];
  loginHandle = [simulatedAccount loginHandle];
  v11 = sub_1A8311880(messageCopy, 1, currentMessageID, firstObject, loginHandle, 1);

  [(IMSimulatedChat *)self _handleIncomingItem:v11];
}

- (void)simulatedDaemon:(id)daemon willSendBalloonPayload:(id)payload attachments:(id)attachments messageGUID:(id)d bundleID:(id)iD
{
  v38 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  v12 = [(IMSimulatedChat *)self _messageWithGUID:d];
  v13 = v12;
  if (v12)
  {
    v28 = v12;
    selfCopy = self;
    v31 = payloadCopy;
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = attachmentsCopy;
    obj = attachmentsCopy;
    v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * v18);
          v20 = IMSafeTemporaryDirectory();
          stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
          v22 = [v20 URLByAppendingPathComponent:stringGUID];
          path = [v22 path];

          [v19 writeToFile:path atomically:1];
          v24 = +[IMFileTransferCenter sharedInstance];
          v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
          v26 = [v24 createNewOutgoingTransferWithLocalFileURL:v25];
          [array addObject:v26];

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    v13 = v28;
    payloadCopy = v31;
    [v28 setPayloadData:v31];
    [v28 setFileTransferGUIDs:array];
    [(IMSimulatedChat *)selfCopy _handleIncomingItem:v28];
    delegate = [(IMSimulatedChat *)selfCopy delegate];
    [delegate simulatedChat:selfCopy didSendMessage:v28];

    attachmentsCopy = v30;
  }
}

- (id)_messageWithGUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _items = [(IMItemsController *)self _items];
  v6 = [_items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_items);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        guid = [v9 guid];
        if ([guid isEqualToString:dCopy])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [_items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

- (IMSimulatedChatDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end