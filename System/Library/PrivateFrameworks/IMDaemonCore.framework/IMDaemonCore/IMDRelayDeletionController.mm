@interface IMDRelayDeletionController
- (BOOL)_doClearChats:(id)chats;
- (BOOL)deleteChatsForCommandDictionary:(id)dictionary;
- (BOOL)deleteMessagePartsForCommandDictionary:(id)dictionary;
- (BOOL)deleteMessagesForCommandDictionary:(id)dictionary;
- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)dictionary;
- (IMDRelayDeletionController)init;
- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)dictionary;
- (id)_groupChatsByService:(id)service;
- (id)broadcasterForChatListenersForService:(id)service;
- (id)broadcasterForChatListenersForService:(id)service withBlackholeStatus:(BOOL)status;
- (id)deleteCommandDictionaryWithIncomingDictionary:(id)dictionary inferredRecoverableDeleteForLegacyCommandsWithDate:(id)date;
- (void)_enqueueBlock:(id)block withTimeout:(double)timeout;
- (void)_handleDeleteCommandWithMessageDictionary:(id)dictionary;
- (void)_updateLastMessageTimeStampForChat:(id)chat broadcaster:(id)broadcaster;
- (void)handler:(id)handler deleteCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token fromIDSID:(id)d timeStamp:(id)stamp needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2;
- (void)handler:(id)handler recoverCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token fromIDSID:(id)d timeStamp:(id)stamp needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2;
- (void)recoverChatsForCommandDictionary:(id)dictionary;
@end

@implementation IMDRelayDeletionController

- (IMDRelayDeletionController)init
{
  v9.receiver = self;
  v9.super_class = IMDRelayDeletionController;
  v2 = [(IMDRelayDeletionController *)&v9 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up deletion controller", v8, 2u);
      }
    }

    v4 = +[IMDRelayPushHandler sharedInstance];
    [v4 addListener:v2];

    v5 = +[IMDRelayPushHandler sharedInstance];
    [v5 setRegistered:1];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deletion controller created", v8, 2u);
      }
    }
  }

  return v2;
}

- (void)handler:(id)handler deleteCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token fromIDSID:(id)d timeStamp:(id)stamp needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2
{
  v54 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  commandCopy = command;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  relayController = [(IMDRelayDeletionController *)self relayController];
  v22 = [relayController idsDeviceFromPushToken:tokenCopy];

  if (v22 || (-[IMDRelayDeletionController relayController](self, "relayController"), v23 = objc_claimAutoreleasedReturnValue(), [v23 idsDeviceForFromID:dCopy], v22 = objc_claimAutoreleasedReturnValue(), v23, v22))
  {
    isActive = [v22 isActive];
    v25 = [commandCopy objectForKey:@"chat"];
    v26 = [v25 objectAtIndex:0];
    v27 = [v26 objectForKey:@"wasReportedAsJunk"];
    bOOLValue = [v27 BOOLValue];

    v29 = +[IMDCKUtilities sharedInstance];
    cloudKitSyncingEnabled = [v29 cloudKitSyncingEnabled];

    v31 = IMOSLoggingEnabled();
    if (((isActive | cloudKitSyncingEnabled) | bOOLValue))
    {
      if (v31)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v47 = commandCopy;
          v48 = 1024;
          v49 = cloudKitSyncingEnabled & 1;
          v50 = 1024;
          v51 = bOOLValue;
          v52 = 1024;
          v53 = isActive;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Handling delete command: %@ (cloudKitSyncEnabled: %d, wasReportedJunk: %d, senderIsPairedWatch: %d)", buf, 0x1Eu);
        }
      }

      if ([(IMDRelayDeletionController *)self shouldInferRecoverableDeleteForCommandDictionary:commandCopy])
      {
        v33 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:stampCopy];
        v34 = [(IMDRelayDeletionController *)self deleteCommandDictionaryWithIncomingDictionary:commandCopy inferredRecoverableDeleteForLegacyCommandsWithDate:v33];

        commandCopy = v34;
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_22B5003B0;
      v44[3] = &unk_278703040;
      v44[4] = self;
      commandCopy = commandCopy;
      v45 = commandCopy;
      [(IMDRelayDeletionController *)self _enqueueBlock:v44 withTimeout:45.0];
    }

    else if (v31)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = commandCopy;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "iCloudSync not enabled and not reported as junk, dropping delete command: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = tokenCopy;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Received a delete command, but it was not from one of our own devices From: %@", buf, 0xCu);
      }
    }

    v22 = 0;
  }
}

- (void)handler:(id)handler recoverCommand:(id)command toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token fromIDSID:(id)d timeStamp:(id)stamp needsDeliveryReceipt:(id)self0 deliveryContext:(id)self1 storageContext:(id)self2
{
  v41 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  commandCopy = command;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  receiptCopy = receipt;
  contextCopy = context;
  storageContextCopy = storageContext;
  relayController = [(IMDRelayDeletionController *)self relayController];
  v25 = [relayController idsDeviceFromPushToken:tokenCopy];

  if (v25 || (-[IMDRelayDeletionController relayController](self, "relayController", handlerCopy, identifierCopy, fromIdentifierCopy, stampCopy), v26 = objc_claimAutoreleasedReturnValue(), [v26 idsDeviceForFromID:dCopy], v25 = objc_claimAutoreleasedReturnValue(), v26, v25))
  {
    v27 = +[IMDCKUtilities sharedInstance];
    cloudKitSyncingEnabled = [v27 cloudKitSyncingEnabled];

    v29 = IMOSLoggingEnabled();
    if (cloudKitSyncingEnabled)
    {
      if (v29)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = commandCopy;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Handling recover command: %@ (cloudKitSyncEnabled: YES)", buf, 0xCu);
        }
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_22B500774;
      v37[3] = &unk_278703040;
      v37[4] = self;
      v38 = commandCopy;
      [(IMDRelayDeletionController *)self _enqueueBlock:v37 withTimeout:45.0];
    }

    else if (v29)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = commandCopy;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "iCloudSync not enabled, dropping recover command: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = tokenCopy;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Received a recover command, but it was not from one of our own devices From: %@", buf, 0xCu);
      }
    }

    v25 = 0;
  }
}

- (id)broadcasterForChatListenersForService:(id)service
{
  serviceCopy = service;
  v4 = +[IMDBroadcastController sharedProvider];
  v5 = [v4 broadcasterForChatListenersSupportingService:serviceCopy];

  return v5;
}

- (id)broadcasterForChatListenersForService:(id)service withBlackholeStatus:(BOOL)status
{
  if (status)
  {
    serviceCopy = service;
    serviceCopy2 = +[IMDBroadcastController sharedProvider];
    v6 = [serviceCopy2 broadcasterForBlackholeChatListenersSupportingService:serviceCopy];
  }

  else
  {
    serviceCopy2 = service;
    v6 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:serviceCopy2];
  }

  return v6;
}

- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentDelete"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0;
  }

  else
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"recoverableDeleteDate"];
    v6 = v7 == 0;
  }

  return v6;
}

- (id)deleteCommandDictionaryWithIncomingDictionary:(id)dictionary inferredRecoverableDeleteForLegacyCommandsWithDate:(id)date
{
  dateCopy = date;
  v6 = [dictionary mutableCopy];
  v7 = [v6 objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
  [v6 removeObjectForKey:@"permanentDeleteChatMetadataArray"];
  [v6 setObject:v7 forKeyedSubscript:@"chat"];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isPermanentDelete"];
  [v6 setObject:dateCopy forKeyedSubscript:@"recoverableDeleteDate"];

  v8 = [v6 copy];

  return v8;
}

- (BOOL)deleteChatsForCommandDictionary:(id)dictionary
{
  v58 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentDelete"];
  bOOLValue = [v4 BOOLValue];

  v37 = bOOLValue;
  if (bOOLValue)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
    v36 = 0;
  }

  else
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"chat"];
    v36 = [dictionaryCopy objectForKeyedSubscript:@"recoverableDeleteDate"];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v32)
  {
    v7 = 0;
    v31 = *v46;
    if (v37)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v34 = v8;
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v31)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v33 = v9;
        v11 = *(*(&v45 + 1) + 8 * v9);
        [(IMDRelayDeletionController *)self _blocklistIfNeededForChatDict:v11];
        v12 = [(IMDRelayDeletionController *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:v11];
        v13 = [v11 objectForKeyedSubscript:@"deleteIncomingMessages"];
        bOOLValue2 = [v13 BOOLValue];

        if (![v12 count] && IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v53 = v11;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IMDRelayDeletionController | Deletion: did not find any chats for chat metadata %@", buf, 0xCu);
          }
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v35 = v12;
        v16 = [v35 countByEnumeratingWithState:&v41 objects:v56 count:16];
        if (v16)
        {
          v17 = *v42;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v42 != v17)
              {
                objc_enumerationMutation(v35);
              }

              v19 = *(*(&v41 + 1) + 8 * i);
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v53 = v19;
                  v54 = 2112;
                  v55 = v34;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "removing chat: %@, permanently: %@", buf, 0x16u);
                }
              }

              guid = [v19 guid];
              service = [v19 service];
              v23 = -[IMDRelayDeletionController broadcasterForChatListenersForService:withBlackholeStatus:](self, "broadcasterForChatListenersForService:withBlackholeStatus:", service, [v19 isBlackholed]);

              chatRegistry = [(IMDRelayDeletionController *)self chatRegistry];
              if (v37)
              {
                v51 = guid;
                v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
                v38[0] = MEMORY[0x277D85DD0];
                v38[1] = 3221225472;
                v38[2] = sub_22B500FF8;
                v38[3] = &unk_278703068;
                v39 = v23;
                v40 = guid;
                [chatRegistry permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:v25 completionHandler:v38];

                v26 = v39;
              }

              else
              {
                v50 = guid;
                v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
                [chatRegistry moveMessagesInChatsWithGUIDsToRecentlyDeleted:v27 deleteDate:v36];

                [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v19 broadcaster:v23];
                v49 = guid;
                v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
                [v23 movedMessagesToRecentlyDeletedForChatsWithGUIDs:v26 queryID:0 deletionDate:v36];
              }

              [v19 setDeletingIncomingMessages:bOOLValue2];
            }

            v16 = [v35 countByEnumeratingWithState:&v41 objects:v56 count:16];
          }

          while (v16);
          v7 = 1;
        }

        v9 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v32);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)deleteMessagesForCommandDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"message"];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v26 = 138412290;
      v27 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Deleting %@: messages", &v26, 0xCu);
    }
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentDelete"];
  bOOLValue = [v8 BOOLValue];

  v10 = +[IMDMessageStore sharedInstance];
  firstObject = [v5 firstObject];
  v12 = [v10 chatForMessageGUID:firstObject];

  service = [v12 service];
  v14 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:service withBlackholeStatus:0];

  service2 = [v12 service];
  v16 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:service2 withBlackholeStatus:1];

  v17 = IMOSLoggingEnabled();
  if (bOOLValue)
  {
    if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v5;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Permanently deleting messages with GUID %@: ", &v26, 0xCu);
      }
    }

    v19 = +[IMDMessageStore sharedInstance];
    v20 = [v19 deleteMessageGUIDs:v5];
  }

  else
  {
    if (v17)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v5;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recoverably deleting messages with GUID %@: ", &v26, 0xCu);
      }
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"recoverableDeleteDate"];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v19;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Recently Deleted | messages delete date: %@", &v26, 0xCu);
      }
    }

    chatRegistry = [(IMDRelayDeletionController *)self chatRegistry];
    [chatRegistry moveMessagesWithGUIDsToRecentlyDeleted:v5 deleteDate:v19];
  }

  [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v12 broadcaster:v14];
  [v14 historicalMessageGUIDsDeleted:v5 chatGUIDs:0 queryID:0];
  [v16 historicalMessageGUIDsDeleted:v5 chatGUIDs:0 queryID:0];
  v24 = [v5 count] != 0;

  return v24;
}

- (BOOL)deleteMessagePartsForCommandDictionary:(id)dictionary
{
  v57 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v32 = [dictionaryCopy objectForKeyedSubscript:@"parts"];
  if (![v32 count])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | Received empty parts-mardid command", buf, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_40;
  }

  v3 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentDelete"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | Received permanent delete command. This is unsupported", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v33 = [dictionaryCopy objectForKeyedSubscript:@"recoverableDeleteDate"];
  *buf = 0;
  v49 = buf;
  v50 = 0x2020000000;
  v51 = 0;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v32 count];
      v9 = [v32 objectAtIndexedSubscript:0];
      *v53 = 134218242;
      v54 = v8;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Recently Deleted | Deleting message parts from %lu messages: %@", v53, 0x16u);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v32;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v10)
  {
    v36 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"messageGuid"];
        v14 = [v12 objectForKeyedSubscript:@"deleteSubject"];
        bOOLValue2 = [v14 BOOLValue];

        v16 = +[IMDMessageStore sharedInstance];
        v17 = [v16 messageWithGUID:v13];

        if (v17)
        {
          v42 = 0;
          v43 = 0;
          [IMDDeletePartsHelper _convertDeletedPartsDict:v12 toIndexSet:&v43 toMap:&v42];
          v18 = v43;
          v19 = v42;
          if ([v18 count])
          {
            v20 = [MEMORY[0x277D1AA70] _messageItemWithIndexesDeleted:v18 subRangesToDeleteMapping:v19 deleteSubject:bOOLValue2 deleteTransferCallback:0 createItemCallback:0 fromMessageItem:v17];
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *v53 = 138412546;
                v54 = v17;
                v55 = 2112;
                v56 = v20;
                _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | Removed parts from old item %@, got new item: %@", v53, 0x16u);
              }
            }

            body = [v17 body];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = sub_22B501C2C;
            v37[3] = &unk_278703090;
            v38 = v18;
            v39 = v17;
            v40 = v33;
            v41 = buf;
            [body __im_visitMessageParts:v37];

            v23 = +[IMDMessageStore sharedInstance];
            v24 = [v23 chatForMessageGUID:v13];

            service = [v24 service];
            v26 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:service];

            [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v24 broadcaster:v26];
            accountID = [v20 accountID];
            [v26 account:accountID chat:0 style:0 messageUpdated:v20];
          }

          else if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v53 = 138412290;
              v54 = v13;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | did not find indexes to delete at for GUID: %@", v53, 0xCu);
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *v53 = 138412290;
            v54 = v13;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "IMDRelayDeletionController: Recently Deleted | could not find messageItem for GUID: %@", v53, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v10);
  }

  v6 = v49[24];
  _Block_object_dispose(buf, 8);

LABEL_40:
  return v6 & 1;
}

- (void)_handleDeleteCommandWithMessageDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [(IMDRelayDeletionController *)self deleteChatsForCommandDictionary:dictionaryCopy];
  [dictionaryCopy objectForKeyedSubscript:@"chat-clear"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(IMDRelayDeletionController *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:*(*(&v18 + 1) + 8 * i)];
        if ([v10 count])
        {
          v11 = MEMORY[0x277CBEB98];
          v12 = [v10 arrayByApplyingSelector:sel_guid];
          v13 = [v11 setWithArray:v12];

          v5 |= [(IMDRelayDeletionController *)self _doClearChats:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"message"];
  if (v14)
  {
    v5 |= [(IMDRelayDeletionController *)self deleteMessagesForCommandDictionary:dictionaryCopy];
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"parts"];
  if (![v15 count])
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v5 | [(IMDRelayDeletionController *)self deleteMessagePartsForCommandDictionary:dictionaryCopy]))
  {
LABEL_14:
    v16 = +[IMDMessageStore sharedInstance];
    [v16 rebuildUnreadMessageCount];
  }

LABEL_15:
}

- (void)recoverChatsForCommandDictionary:(id)dictionary
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"recoverChatMetadataArray"];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v20)
  {
    v19 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [(IMDRelayDeletionController *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:v5];
        if ([v6 count])
        {
          v21 = [v6 arrayByApplyingSelector:sel_guid];
          chatRegistry = [(IMDRelayDeletionController *)self chatRegistry];
          [chatRegistry recoverMessagesWithChatGUIDs:v21];

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v9)
          {
            v10 = *v24;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v24 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v23 + 1) + 8 * j);
                service = [v12 service];
                v14 = [(IMDRelayDeletionController *)self broadcasterForChatListenersForService:service withBlackholeStatus:0];

                [(IMDRelayDeletionController *)self _updateLastMessageTimeStampForChat:v12 broadcaster:v14];
                [v12 setDeletingIncomingMessages:0];
              }

              v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v9);
          }

          v15 = [(IMDRelayDeletionController *)self _groupChatsByService:v8];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = sub_22B502318;
          v22[3] = &unk_2787030B8;
          v22[4] = self;
          [v15 enumerateKeysAndObjectsUsingBlock:v22];
        }

        else if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = v5;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "IMDRelayDeletionController | Recovery: did not find any chats for chat metadata %@", buf, 0xCu);
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v20);
  }
}

- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)dictionary
{
  v58 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v44 = [dictionaryCopy objectForKeyedSubscript:@"guid"];
  v42 = [dictionaryCopy objectForKeyedSubscript:@"groupID"];
  v46 = [dictionaryCopy objectForKeyedSubscript:@"ptcpts"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v53 = v44;
      v54 = 2112;
      v55 = v42;
      v56 = 2112;
      v57 = v46;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finding chats for delete or recovery using guid %@ groupID %@ participants %@", buf, 0x20u);
    }
  }

  chatRegistry = [(IMDRelayDeletionController *)self chatRegistry];
  v7 = [chatRegistry existingChatWithGUID:v44];

  service = [v7 service];
  if (v7)
  {
    service2 = [v7 service];
    if (service2)
    {
      service3 = [v7 service];
      if ([service3 groupsMergeDisplayNames])
      {
      }

      else
      {
        displayName = [v7 displayName];
        v11 = [displayName length] == 0;

        if (!v11)
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v53 = v44;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Ignoring chatGUID %@, as it has a display name and service does not merge display names", buf, 0xCu);
            }
          }

          v13 = 0;
LABEL_16:
          if ([v7 hasMatchingParticipantHandles:v46])
          {
            if (v13)
            {
              if (IMOSLoggingEnabled())
              {
                v14 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  guid = [v7 guid];
                  *buf = 138412290;
                  v53 = guid;
                  _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found chat with specific guid %@ for chat metadata", buf, 0xCu);
                }
              }

              guid2 = [v7 guid];
              [v4 addObject:guid2];
              goto LABEL_28;
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              participants = [v7 participants];
              v19 = [participants count];
              v20 = [v46 count];
              *buf = 138412802;
              v53 = v44;
              v54 = 2048;
              v55 = v19;
              v56 = 2048;
              v57 = v20;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Ignoring chatGUID %@, due to mismatching participants chat %ld received %ld", buf, 0x20u);
            }
          }

          guid2 = service;
          service = 0;
LABEL_28:

          goto LABEL_29;
        }
      }
    }

    v13 = 1;
    goto LABEL_16;
  }

LABEL_29:
  chatRegistry2 = [(IMDRelayDeletionController *)self chatRegistry];
  v22 = [chatRegistry2 existingChatsWithGroupID:v42];

  if ([v22 count])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 count];
        *buf = 134218498;
        v53 = v24;
        v54 = 2112;
        v55 = v42;
        v56 = 2112;
        v57 = v22;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found %llu chats with specific group ID %@ for chat metadata: %@", buf, 0x20u);
      }
    }

    v25 = [v22 arrayByApplyingSelector:sel_guid];
    [v4 addObjectsFromArray:v25];
  }

  if ([v46 count] >= 2)
  {
    chatRegistry3 = [(IMDRelayDeletionController *)self chatRegistry];
    v27 = [chatRegistry3 existingChatsForIDs:v46 onService:service style:43];

    v28 = [v27 __imArrayByFilteringWithBlock:&unk_283F19628];

    if ([v28 count])
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v28 count];
          *buf = 134218498;
          v53 = v30;
          v54 = 2112;
          v55 = v46;
          v56 = 2112;
          v57 = v28;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Found %llu chats with handles: %@ chats: %@", buf, 0x20u);
        }
      }

      v31 = [v28 arrayByApplyingSelector:sel_guid];
      [v4 addObjectsFromArray:v31];
    }
  }

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v4;
  v34 = [v33 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v34)
  {
    v35 = *v48;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v47 + 1) + 8 * i);
        chatRegistry4 = [(IMDRelayDeletionController *)self chatRegistry];
        v39 = [chatRegistry4 existingChatWithGUID:v37];

        if (v39)
        {
          [v32 addObject:v39];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v34);
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v53 = v32;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Found %llu chats for delete command with guid %@", buf, 0x16u);
    }
  }

  return v32;
}

- (BOOL)_doClearChats:(id)chats
{
  v41 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = chatsCopy;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v7)
  {
    v9 = *v33;
    style = 45;
    *&v8 = 138412290;
    v26 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        chatRegistry = [(IMDRelayDeletionController *)self chatRegistry];
        v14 = [chatRegistry existingChatWithGUID:v12];

        if (v14)
        {
          chatIdentifier = [v14 chatIdentifier];
          [v28 addObject:chatIdentifier];

          serviceName = [v14 serviceName];
          [v5 addObject:serviceName];

          style = [v14 style];
          [v6 addObject:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v26;
            v37 = v12;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Handling chat-clear, could not find chat by GUID: %@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    style = 45;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = v28;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "clearing messages for chat IDS:%@ on services:%@", buf, 0x16u);
    }
  }

  v19 = +[IMDMessageStore sharedInstance];
  v20 = [v19 deleteMessagesWithChatIdentifiers:v28 style:style onServices:v5];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B503118;
  v30[3] = &unk_278703100;
  v31 = v20;
  v21 = v20;
  v22 = [v6 __imArrayByFilteringWithBlock:v30];
  v23 = [(IMDRelayDeletionController *)self _groupChatsByService:v22];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22B503160;
  v29[3] = &unk_2787030B8;
  v29[4] = self;
  [v23 enumerateKeysAndObjectsUsingBlock:v29];

  v24 = [v21 count] != 0;
  return v24;
}

- (id)_groupChatsByService:(id)service
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = serviceCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        serviceName = [v10 serviceName];
        if (serviceName)
        {
          v12 = serviceName;
          guid = [v10 guid];

          if (guid)
          {
            serviceName2 = [v10 serviceName];
            v15 = [v4 objectForKeyedSubscript:serviceName2];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v18 = v17;

            guid2 = [v10 guid];
            [v18 addObject:guid2];

            serviceName3 = [v10 serviceName];
            [v4 setObject:v18 forKeyedSubscript:serviceName3];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateLastMessageTimeStampForChat:(id)chat broadcaster:(id)broadcaster
{
  v32 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  broadcasterCopy = broadcaster;
  if (chatCopy)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 lastMessageForChatWithRowID:{objc_msgSend(chatCopy, "rowID")}];
    [chatCopy setLastMessage:v8];

    lastMessage = [chatCopy lastMessage];

    if (lastMessage)
    {
      lastMessage2 = [chatCopy lastMessage];
      time = [lastMessage2 time];
      [time timeIntervalSinceReferenceDate];
      [chatCopy setLastMessageTimeStampOnLoad:v12];
    }

    else
    {
      [chatCopy setLastMessageTimeStampOnLoad:0];
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isAVLessSharePlayEnabled = [mEMORY[0x277D1A9B8] isAVLessSharePlayEnabled];

    if (isAVLessSharePlayEnabled)
    {
      v16 = +[IMDMessageStore sharedInstance];
      v17 = [v16 lastTUConversationItemForChat:chatCopy];

      if (v17)
      {
        time2 = [v17 time];

        if (time2)
        {
          time3 = [v17 time];
          [chatCopy setLastTUConversationCreatedDate:time3];
        }

        else
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_22B7CFDFC(v17, v20);
          }
        }
      }

      else
      {
        [chatCopy setLastTUConversationCreatedDate:0];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        v23 = MEMORY[0x277CCABB0];
        lastMessage3 = [chatCopy lastMessage];
        time4 = [lastMessage3 time];
        [time4 timeIntervalSinceReferenceDate];
        v26 = [v23 numberWithDouble:?];
        v28 = 138412546;
        v29 = guid;
        v30 = 2112;
        v31 = v26;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | IMDChat: %@, updating last message timestamp on load: %@", &v28, 0x16u);
      }
    }

    guid2 = [chatCopy guid];
    [broadcasterCopy chat:guid2 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(chatCopy, "lastMessageTimeStampOnLoad")}];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | _updateLastMessageTimeStampForChat received nil chat", &v28, 2u);
    }
  }
}

- (void)_enqueueBlock:(id)block withTimeout:(double)timeout
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = @"IMDRelayDeletionController";
      v14 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " Enqueued item for key: %@    timeout: %f", &v12, 0x16u);
    }
  }

  incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  if (!incomingMessageMultiQueue)
  {
    v9 = objc_alloc_init(MEMORY[0x277D19278]);
    v11 = self->_incomingMessageMultiQueue;
    p_incomingMessageMultiQueue = &self->_incomingMessageMultiQueue;
    *p_incomingMessageMultiQueue = v9;

    incomingMessageMultiQueue = *p_incomingMessageMultiQueue;
  }

  [(IMMultiQueue *)incomingMessageMultiQueue addBlock:blockCopy withTimeout:@"IMDRelayDeletionController" forKey:0 description:timeout];
}

@end