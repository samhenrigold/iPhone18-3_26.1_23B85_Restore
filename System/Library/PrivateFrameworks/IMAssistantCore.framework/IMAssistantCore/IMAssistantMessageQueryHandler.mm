@interface IMAssistantMessageQueryHandler
+ (OS_dispatch_queue)IMAssistantIMSPIQueue;
- (BOOL)messageIsFromBlackholedChat:(id)chat;
- (BOOL)resolvePersons:(id)persons forIntent:(id)intent completionHandler:(id)handler;
- (id)allIMHandlesForHandle:(id)handle;
- (id)chatParticipantForSPIHandle:(id)handle;
- (id)chatParticipantsForSPIHandles:(id)handles;
- (id)chatsContainingRequiredParticipants:(id)participants;
- (id)chatsForChatNames:(id)names;
- (id)chatsWithConversationIdentifiers:(id)identifiers;
- (id)messageContentsPredicate:(id)predicate;
- (id)recipientsPredicate:(id)predicate;
- (id)resolveDateTimeRange:(id)range;
- (id)sendersPredicate:(id)predicate;
- (id)spokenPhrasesForSpeakableStrings:(id)strings;
- (id)unifiedContactIdentifiersForPerson:(id)person;
- (id)vocabularyIdentifiersFromSpeakableStrings:(id)strings;
- (void)SPIQueryMessagesForChats:(id)chats onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion;
- (void)SPIQueryMessagesForChatsWithIdentifiers:(id)identifiers services:(id)services onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion;
- (void)SPIQueryMessagesForSenders:(id)senders onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion;
- (void)SPIQueryMessagesWithGUIDs:(id)ds completion:(id)completion;
- (void)SPIQueryMessagesWithRowIDs:(id)ds completion:(id)completion;
- (void)SPIQueryUnreadMessages:(int64_t)messages completion:(id)completion;
- (void)handlesAndServicesForChatGuids:(id)guids handles:(id *)handles services:(id *)services;
- (void)handlesAndServicesForPersons:(id)persons handles:(id *)handles services:(id *)services;
- (void)messagesMatchingMessageIdentifiers:(id)identifiers completion:(id)completion;
- (void)searchMessagesWithContents:(id)contents messageIdentifiers:(id)identifiers notificationIdentifiers:(id)notificationIdentifiers chatNames:(id)names conversationIdentifiers:(id)conversationIdentifiers recipients:(id)recipients senders:(id)senders dateTimeRange:(id)self0 attributes:(unint64_t)self1 completion:(id)self2;
@end

@implementation IMAssistantMessageQueryHandler

+ (OS_dispatch_queue)IMAssistantIMSPIQueue
{
  if (qword_28118F698 != -1)
  {
    sub_25479FA04();
  }

  v3 = qword_28118F690;

  return v3;
}

- (BOOL)resolvePersons:(id)persons forIntent:(id)intent completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  intentCopy = intent;
  handlerCopy = handler;
  if ([personsCopy count])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v45 = personsCopy;
      v46 = 2112;
      v47 = intentCopy;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Resolving persons: %@ for intent: %@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(personsCopy, "count")}];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = personsCopy;
    v38 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v38)
    {
      v33 = handlerCopy;
      v34 = personsCopy;
      v13 = *v40;
      v36 = 1;
      v37 = v11;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v15;
            _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Resolving person: %@", buf, 0xCu);
          }

          __im_assistant_allContactIdentifiers = [v15 __im_assistant_allContactIdentifiers];
          if ([__im_assistant_allContactIdentifiers count])
          {
            v18 = IMLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [__im_assistant_allContactIdentifiers count];
              *buf = 134218242;
              v45 = v19;
              v46 = 2112;
              v47 = __im_assistant_allContactIdentifiers;
              _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Successfully resolved person to %ld contact identifiers: %@", buf, 0x16u);
            }

            [v11 addObject:v15];
            unsupported = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v15];
          }

          else
          {
            v21 = v13;
            v22 = objc_msgSend_personHandle(v15);
            value = [v22 value];
            v24 = [value length];

            v25 = IMLogHandleForCategory();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
            if (v24)
            {
              if (v26)
              {
                v27 = objc_msgSend_personHandle(v15);
                value2 = [v27 value];
                *buf = 138412290;
                v45 = value2;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Successfully resolved person to handle: %@", buf, 0xCu);
              }

              v11 = v37;
              [v37 addObject:v15];
              unsupported = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v15];
              v13 = v21;
            }

            else
            {
              v13 = v21;
              if (v26)
              {
                displayName = [v15 displayName];
                *buf = 138412546;
                v45 = displayName;
                v46 = 2112;
                v47 = intentCopy;
                _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Could not resolve person %@ for intent %@", buf, 0x16u);
              }

              unsupported = [MEMORY[0x277CD3EA0] unsupported];
              v36 = 0;
              v11 = v37;
            }
          }

          [v10 addObject:{unsupported, v33}];
        }

        v38 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v38);

      handlerCopy = v33;
      if ((v36 & 1) == 0)
      {
        v33[2](v33, v10, 0);
        v30 = 0;
        personsCopy = v34;
        goto LABEL_30;
      }

      personsCopy = v34;
    }

    else
    {
    }

    v31 = [v11 copy];
    handlerCopy[2](handlerCopy, v10, v31);

    v30 = 1;
LABEL_30:

    goto LABEL_31;
  }

  handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  v30 = 0;
LABEL_31:

  return v30;
}

- (id)resolveDateTimeRange:(id)range
{
  if (range)
  {
    [MEMORY[0x277CD3B70] successWithResolvedDateComponentsRange:?];
  }

  else
  {
    [MEMORY[0x277CD3B70] notRequired];
  }
  v3 = ;

  return v3;
}

- (id)allIMHandlesForHandle:(id)handle
{
  v19 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  accounts = [mEMORY[0x277D18D28] accounts];

  v7 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(accounts);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) imHandleWithID:handleCopy];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  array = [v4 array];

  return array;
}

- (void)SPIQueryMessagesForChats:(id)chats onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion
{
  unreadCopy = unread;
  v44 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  completionCopy = completion;
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = chatsCopy;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        chatDataSource = [messageHandlerDataSource chatDataSource];
        v18 = [chatDataSource allGUIDsForChat:v15];

        if (v18)
        {
          v19 = IMLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [v18 count];
            *buf = 134218498;
            v38 = v20;
            v39 = 2112;
            v40 = v18;
            v41 = 2112;
            v42 = v15;
            _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Found %ld chat guids: %@, matching chat: %@", buf, 0x20u);
          }

          [v9 addObjectsFromArray:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  array = [v9 array];
  v31 = v22;
  v32 = v21;
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForChatGuids:array handles:&v32 services:&v31];
  v24 = v32;

  v25 = v31;
  v26 = [v24 copy];
  v27 = [v25 copy];

  [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesForChatsWithIdentifiers:v26 services:v27 onlyUnread:unreadCopy limit:limit completion:completionCopy];
}

- (void)SPIQueryMessagesForChatsWithIdentifiers:(id)identifiers services:(id)services onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion
{
  unreadCopy = unread;
  v42 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  completionCopy = completion;
  v14 = _IMAssistantCoreSearchForMessageSignpostLogHandle(completionCopy);
  v15 = os_signpost_id_generate(v14);

  v17 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v16);
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "queryMessagesWithChatIdentifiers", &unk_2547CAD0B, buf, 2u);
  }

  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = sub_2547C37BC;
  v31 = &unk_279786380;
  v33 = v15;
  v19 = completionCopy;
  v32 = v19;
  v20 = MEMORY[0x259C19590](&v28);
  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v35 = servicesCopy;
    v36 = 2112;
    v37 = identifiersCopy;
    v38 = 1024;
    v39 = unreadCopy;
    v40 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Calling IMSPIQueryMessagesWithChatIdentifiers services: %@, chatIdentifiers: %@, onlyUnread: %d, limit: %ld", buf, 0x26u);
  }

  v22 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v28];
  v23 = IMSPIQueryMessagesWithChatIdentifiersAndQOS();

  if ((v23 & 1) == 0)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithChatIdentifiers failed", buf, 2u);
    }

    v26 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v25);
    v27 = v26;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v27, OS_SIGNPOST_INTERVAL_END, v15, "queryMessagesWithChatIdentifiers", &unk_2547CAD0B, buf, 2u);
    }

    (*(v19 + 2))(v19, 0);
  }
}

- (void)handlesAndServicesForPersons:(id)persons handles:(id *)handles services:(id *)services
{
  v45 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2547C3B60;
  v41[3] = &unk_279786BE8;
  v25 = v7;
  v42 = v25;
  v8 = MEMORY[0x259C19590](v41);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = personsCopy;
  v9 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    v28 = *v38;
    do
    {
      v12 = 0;
      v29 = v10;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        __im_assistant_allContactIdentifiers = [v13 __im_assistant_allContactIdentifiers];
        v15 = objc_msgSend_personHandle(v13);
        value = [v15 value];

        if ([__im_assistant_allContactIdentifiers count])
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v17 = __im_assistant_allContactIdentifiers;
          v18 = [v17 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v18)
          {
            v19 = v18;
            v31 = value;
            v32 = __im_assistant_allContactIdentifiers;
            v20 = *v34;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v34 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [(IMAssistantMessageHandler *)self contactWithIdentifier:*(*(&v33 + 1) + 8 * i)];
                __im_assistant_allIMHandles = [v22 __im_assistant_allIMHandles];
                (v8)[2](v8, __im_assistant_allIMHandles);
              }

              v19 = [v17 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v19);
            v11 = v28;
            v10 = v29;
            value = v31;
            __im_assistant_allContactIdentifiers = v32;
          }
        }

        else
        {
          if (![value length])
          {
            goto LABEL_18;
          }

          v17 = [(IMAssistantMessageQueryHandler *)self allIMHandlesForHandle:value];
          (v8)[2](v8, v17);
        }

LABEL_18:
        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v10);
  }

  array = [v25 array];
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForChatGuids:array handles:handles services:services];
}

- (void)handlesAndServicesForChatGuids:(id)guids handles:(id *)handles services:(id *)services
{
  v26 = *MEMORY[0x277D85DE8];
  guidsCopy = guids;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = guidsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        IMComponentsFromChatGUID();
        v13 = 0;
        v14 = 0;
        if ([v13 length] && objc_msgSend(v14, "length"))
        {
          [v18 addObject:v13];
          [v6 addObject:v14];
        }

        else
        {
          v15 = IMLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Could not parse identifier or service from chat GUID: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  if (handles)
  {
    *handles = [v18 copy];
  }

  if (services)
  {
    *services = [v6 copy];
  }
}

- (void)SPIQueryMessagesForSenders:(id)senders onlyUnread:(BOOL)unread limit:(int64_t)limit completion:(id)completion
{
  unreadCopy = unread;
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v31 = 0;
  v32 = 0;
  [(IMAssistantMessageQueryHandler *)self handlesAndServicesForPersons:senders handles:&v32 services:&v31];
  v11 = v32;
  v12 = v31;
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 1024;
    v38 = unreadCopy;
    v39 = 2048;
    limitCopy = limit;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Performing query for messages from handles: %@ services: %@ onlyUnread: %d, limit: %ld", buf, 0x26u);
  }

  v15 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v14);
  v16 = os_signpost_id_generate(v15);

  v18 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "queryMessagesWithIDs", &unk_2547CAD0B, buf, 2u);
  }

  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_2547C42AC;
  v28 = &unk_279786380;
  v30 = v16;
  v20 = completionCopy;
  v29 = v20;
  v21 = MEMORY[0x259C19590](&v25);
  v22 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v25];
  v23 = IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();

  if ((v23 & 1) == 0)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithIDsWithOnlyUnread failed", buf, 2u);
    }

    v21[2](v21, 0);
  }
}

- (void)SPIQueryUnreadMessages:(int64_t)messages completion:(id)completion
{
  completionCopy = completion;
  v5 = _IMAssistantCoreSearchForMessageSignpostLogHandle(completionCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "queryUnreadMessages", &unk_2547CAD0B, buf, 2u);
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2547C4510;
  v18 = &unk_279786380;
  v20 = v6;
  v10 = completionCopy;
  v19 = v10;
  v11 = MEMORY[0x259C19590](&v15);
  v12 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v15];
  v13 = IMSPIQueryUnreadMessagesWithQOS();

  if ((v13 & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "IMSPIQueryUnreadMessages failed", buf, 2u);
    }

    v11[2](v11, 0);
  }
}

- (void)SPIQueryMessagesWithGUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle(dsCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "queryMessagesWithGUIDs", &unk_2547CAD0B, buf, 2u);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_2547C4784;
  v20 = &unk_279786380;
  v22 = v8;
  v12 = completionCopy;
  v21 = v12;
  v13 = MEMORY[0x259C19590](&v17);
  v14 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v17];
  v15 = IMSPIQueryMessagesWithGUIDsAndQOS();

  if ((v15 & 1) == 0)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithGUIDs failed", buf, 2u);
    }

    v13[2](v13, 0);
  }
}

- (void)SPIQueryMessagesWithRowIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle(dsCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "queryMessagesWithRowIDs", &unk_2547CAD0B, buf, 2u);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_2547C49F8;
  v20 = &unk_279786380;
  v22 = v8;
  v12 = completionCopy;
  v21 = v12;
  v13 = MEMORY[0x259C19590](&v17);
  v14 = [IMAssistantMessageQueryHandler IMAssistantIMSPIQueue:v17];
  v15 = IMSPIQueryMessagesWithRowIDsAndQOS();

  if ((v15 & 1) == 0)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "IMSPIQueryMessagesWithRowIDs failed", buf, 2u);
    }

    v13[2](v13, 0);
  }
}

- (id)recipientsPredicate:(id)predicate
{
  v25 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if ([predicateCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = predicateCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v11];
          [v5 setObject:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v13 = MEMORY[0x277CCAC30];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2547C4C8C;
    v17[3] = &unk_279786C10;
    v18 = v6;
    v19 = v5;
    v14 = v5;
    v15 = [v13 predicateWithBlock:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)sendersPredicate:(id)predicate
{
  v25 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if ([predicateCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = predicateCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v11];
          [v5 setObject:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v13 = MEMORY[0x277CCAC30];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2547C5054;
    v17[3] = &unk_279786C38;
    v18 = v6;
    v19 = v5;
    v14 = v5;
    v15 = [v13 predicateWithBlock:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)spokenPhrasesForSpeakableStrings:(id)strings
{
  v22 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        spokenPhrase = [v11 spokenPhrase];
        if ([spokenPhrase length])
        {
          [v5 addObject:spokenPhrase];
        }

        alternativeSpeakableMatches = [v11 alternativeSpeakableMatches];
        if ([alternativeSpeakableMatches count])
        {
          v14 = [(IMAssistantMessageQueryHandler *)self spokenPhrasesForSpeakableStrings:alternativeSpeakableMatches];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  array = [v5 array];

  return array;
}

- (id)vocabularyIdentifiersFromSpeakableStrings:(id)strings
{
  v22 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = stringsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        vocabularyIdentifier = [v11 vocabularyIdentifier];
        if ([vocabularyIdentifier length])
        {
          [v5 addObject:vocabularyIdentifier];
        }

        alternativeSpeakableMatches = [v11 alternativeSpeakableMatches];
        if ([alternativeSpeakableMatches count])
        {
          v14 = [(IMAssistantMessageQueryHandler *)self vocabularyIdentifiersFromSpeakableStrings:alternativeSpeakableMatches];
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  array = [v5 array];

  return array;
}

- (id)messageContentsPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ([predicateCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    array = [MEMORY[0x277CBEB18] array];
    if ([predicateCopy count])
    {
      v6 = 0;
      do
      {
        if (v6)
        {
          [string appendString:@" AND "];
        }

        [string appendString:@"self LIKE[cd] %@"];
        v7 = MEMORY[0x277CCACA8];
        v8 = [predicateCopy objectAtIndexedSubscript:v6];
        v9 = [v7 stringWithFormat:@"*%@*", v8];
        [array addObject:v9];

        ++v6;
      }

      while (v6 < [predicateCopy count]);
    }

    v10 = MEMORY[0x277CCAC30];
    v11 = [string copy];
    v12 = [v10 predicateWithFormat:v11 argumentArray:array];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)chatParticipantForSPIHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingSPIHandle:handleCopy];
  v6 = [IMAssistantMessageSearchChatParticipant alloc];
  address = [handleCopy address];
  isMe = [handleCopy isMe];

  v9 = [(IMAssistantMessageSearchChatParticipant *)v6 initWithHandle:address contactIdentifiers:v5 isMe:isMe];

  return v9;
}

- (id)chatParticipantsForSPIHandles:(id)handles
{
  v19 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = handlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMAssistantMessageQueryHandler *)self chatParticipantForSPIHandle:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)unifiedContactIdentifiersForPerson:(id)person
{
  v19 = *MEMORY[0x277D85DE8];
  __im_assistant_allContactIdentifiers = [person __im_assistant_allContactIdentifiers];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = __im_assistant_allContactIdentifiers;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(IMAssistantMessageHandler *)self unifiedContactIdentifierForContactIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  array = [v5 array];

  return array;
}

- (id)chatsContainingRequiredParticipants:(id)participants
{
  v88 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  chatDataSource = [messageHandlerDataSource chatDataSource];
  allExistingChats = [chatDataSource allExistingChats];

  array = [MEMORY[0x277CBEB18] array];
  v57 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(participantsCopy, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = participantsCopy;
  v8 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v76;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v75 + 1) + 8 * i);
        v13 = [(IMAssistantMessageQueryHandler *)self unifiedContactIdentifiersForPerson:v12, array];
        [v57 setObject:v13 forKey:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v9);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v48 = allExistingChats;
  v51 = [v48 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v51)
  {
    v49 = *v72;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v72 != v49)
        {
          objc_enumerationMutation(v48);
        }

        v54 = v14;
        v15 = *(*(&v71 + 1) + 8 * v14);
        v16 = [(IMAssistantMessageHandler *)self contactIdentifiersForParticipantsInChat:v15, array];
        v52 = v15;
        v17 = [v15 participantsWithState:16];
        v56 = [v17 __imArrayByApplyingBlock:&unk_2866931D8];

        v18 = objc_alloc_init(MEMORY[0x277CBEB40]);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v67 objects:v85 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v68;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v68 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [v18 addObjectsFromArray:*(*(&v67 + 1) + 8 * j)];
            }

            v21 = [v19 countByEnumeratingWithState:&v67 objects:v85 count:16];
          }

          while (v21);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v58 = obj;
        v24 = [v58 countByEnumeratingWithState:&v63 objects:v84 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v64;
          while (2)
          {
            v27 = 0;
            v55 = v25;
            do
            {
              if (*v64 != v26)
              {
                objc_enumerationMutation(v58);
              }

              v28 = *(*(&v63 + 1) + 8 * v27);
              if (([v28 isMe] & 1) == 0)
              {
                v29 = [v57 objectForKey:v28];
                if ([v29 count])
                {
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v30 = v29;
                  v31 = [v30 countByEnumeratingWithState:&v59 objects:v83 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v60;
                    while (2)
                    {
                      for (k = 0; k != v32; ++k)
                      {
                        if (*v60 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        if ([v18 containsObject:*(*(&v59 + 1) + 8 * k)])
                        {

                          v25 = v55;
                          goto LABEL_48;
                        }
                      }

                      v32 = [v30 countByEnumeratingWithState:&v59 objects:v83 count:16];
                      if (v32)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v25 = v55;
                }

                v35 = objc_msgSend_personHandle(v28);
                value = [v35 value];
                v37 = [value length];

                if (!v37)
                {
                  goto LABEL_51;
                }

                v38 = objc_msgSend_personHandle(v28);
                value2 = [v38 value];
                if (MEMORY[0x259C19130]() || IMStringIsEmail())
                {
                  v40 = IMCanonicalizeFormattedString();
                }

                else
                {
                  if (!MEMORY[0x259C19110](value2))
                  {
                    v41 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v80 = value2;
                      _os_log_impl(&dword_25479E000, v41, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", buf, 0xCu);
                    }
                  }

                  v40 = value2;
                }

                v42 = v40;

                v43 = [v56 containsObject:v42];
                if ((v43 & 1) == 0)
                {
LABEL_51:

                  goto LABEL_52;
                }
              }

LABEL_48:
              ++v27;
            }

            while (v27 != v25);
            v25 = [v58 countByEnumeratingWithState:&v63 objects:v84 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        [array addObject:v52];
LABEL_52:

        v14 = v54 + 1;
        self = selfCopy;
      }

      while (v54 + 1 != v51);
      v51 = [v48 countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v51);
  }

  v44 = IMLogHandleForCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = [array count];
    *buf = 134218242;
    v80 = v45;
    v81 = 2112;
    v82 = array;
    _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Found %ld chats matching participants. Chats: %@", buf, 0x16u);
  }

  return array;
}

- (id)chatsWithConversationIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  chatDataSource = [messageHandlerDataSource chatDataSource];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = IMAssistantChatIdentifierFromConversationIdentifier(v12);
        v14 = [chatDataSource existingChatWithChatIdentifier:v13];
        v15 = IMLogHandleForCategory();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
        if (v14)
        {
          if (v16)
          {
            *buf = 138412546;
            v25 = v12;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Found exsting chat matching conversationIdentifier: %@ chatIdentifier: %@", buf, 0x16u);
          }

          [v19 addObject:v14];
        }

        else
        {
          if (v16)
          {
            *buf = 138412546;
            v25 = v12;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Could not find chat matching conversationIdentifier: %@ chatIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [v19 copy];

  return v17;
}

- (id)chatsForChatNames:(id)names
{
  v38 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if ([namesCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v23 = [(IMAssistantMessageQueryHandler *)self vocabularyIdentifiersFromSpeakableStrings:namesCopy];
    v6 = [v23 __imArrayByApplyingBlock:&unk_2866931F8];
    v24 = namesCopy;
    v7 = [(IMAssistantMessageQueryHandler *)self spokenPhrasesForSpeakableStrings:namesCopy];
    messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource = [messageHandlerDataSource chatDataSource];
    allExistingChats = [chatDataSource allExistingChats];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = allExistingChats;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          chatIdentifier = [v16 chatIdentifier];
          displayName = [v16 displayName];
          if ([chatIdentifier length] && (objc_msgSend(v6, "containsObject:", chatIdentifier) & 1) != 0 || objc_msgSend(displayName, "length") && objc_msgSend(v7, "containsObject:", displayName))
          {
            [v5 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v13);
    }

    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v5 count];
      *buf = 134218754;
      v30 = v20;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Found %ld chats matching chat names:%@ vocabularyIdentifiers:%@ chats:%@", buf, 0x2Au);
    }

    array = [v5 array];

    namesCopy = v24;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (void)searchMessagesWithContents:(id)contents messageIdentifiers:(id)identifiers notificationIdentifiers:(id)notificationIdentifiers chatNames:(id)names conversationIdentifiers:(id)conversationIdentifiers recipients:(id)recipients senders:(id)senders dateTimeRange:(id)self0 attributes:(unint64_t)self1 completion:(id)self2
{
  v98 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  identifiersCopy = identifiers;
  notificationIdentifiersCopy = notificationIdentifiers;
  namesCopy = names;
  conversationIdentifiersCopy = conversationIdentifiers;
  recipientsCopy = recipients;
  sendersCopy = senders;
  completionCopy = completion;
  rangeCopy = range;
  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = @"NO";
    if ((((attributes & 1) == 0) & (attributes >> 1)) != 0)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    if ((attributes & ((attributes & 2) == 0)) != 0)
    {
      v22 = @"YES";
    }

    *buf = 138412546;
    v95 = v23;
    v96 = 2112;
    v97 = v22;
    _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Searching for messages with attributes onlyUnreadMessages: %@ | onlyReadMessages %@", buf, 0x16u);
  }

  v76 = ((attributes & 1) == 0) & (attributes >> 1);

  startDateComponents = [rangeCopy startDateComponents];
  date = [startDateComponents date];

  endDateComponents = [rangeCopy endDateComponents];

  date2 = [endDateComponents date];

  if (!(date | date2))
  {
    v28 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_22;
  }

  if (!date)
  {
    date = [MEMORY[0x277CBEAA8] distantPast];
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "No start date specified for date filtering, using open ended start date.", buf, 2u);
    }

    if (date2)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!date2)
  {
LABEL_16:
    date2 = [MEMORY[0x277CBEAA8] distantFuture];
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "No end date specified for date filtering, using open ended end date.", buf, 2u);
    }
  }

LABEL_19:
  v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:date endDate:date2];
  v31 = IMLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v95 = date;
    v96 = 2112;
    v97 = date2;
    _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, "Filtering the search results to date time interval: [%@, %@]", buf, 0x16u);
  }

  v69 = date2;
  v70 = date;

LABEL_22:
  v32 = [(IMAssistantMessageQueryHandler *)self messageContentsPredicate:contentsCopy];
  v75 = recipientsCopy;
  v33 = [(IMAssistantMessageQueryHandler *)self recipientsPredicate:recipientsCopy];
  v34 = [(IMAssistantMessageQueryHandler *)self sendersPredicate:sendersCopy];
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v74 = sendersCopy;
  if ([messageHandlerDataSource isInternationalSpamFilteringEnabled])
  {
    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource = [messageHandlerDataSource2 chatDataSource];
    blackholedChatsExist = [chatDataSource blackholedChatsExist];
  }

  else
  {
    blackholedChatsExist = 0;
  }

  v39 = notificationIdentifiersCopy;

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2547C7168;
  v86[3] = &unk_279786CA0;
  v91 = blackholedChatsExist;
  v86[4] = self;
  v68 = v28;
  v87 = v68;
  v92 = ((attributes & 1) == 0) & (attributes >> 1);
  v93 = attributes & ((attributes & 2) == 0);
  v67 = v32;
  v88 = v67;
  v40 = v34;
  v89 = v40;
  v41 = v33;
  v90 = v41;
  v42 = MEMORY[0x259C19590](v86);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = sub_2547C7D8C;
  v85[3] = &unk_279786CC8;
  v85[4] = self;
  v43 = MEMORY[0x259C19590](v85);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_2547C8080;
  v81[3] = &unk_279786CF0;
  v44 = v42;
  v82 = v44;
  v45 = v43;
  v83 = v45;
  v46 = completionCopy;
  v84 = v46;
  v47 = MEMORY[0x259C19590](v81);
  if (identifiersCopy)
  {
    v48 = IMLogHandleForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Performing search via message identifiers search, then filter.", buf, 2u);
    }

    selfCopy2 = self;
    v50 = identifiersCopy;
LABEL_33:
    [(IMAssistantMessageQueryHandler *)selfCopy2 messagesMatchingMessageIdentifiers:v50 completion:v47];
    goto LABEL_34;
  }

  if ([notificationIdentifiersCopy count])
  {
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "Performing search for messages matching the notification identifiers, then filter.", buf, 2u);
    }

    selfCopy2 = self;
    v50 = notificationIdentifiersCopy;
    goto LABEL_33;
  }

  if ([namesCopy count])
  {
    v52 = IMLogHandleForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v52, OS_LOG_TYPE_INFO, "Performing search via chat name search, then filter.", buf, 2u);
    }

    v53 = [(IMAssistantMessageQueryHandler *)self chatsForChatNames:namesCopy];
    if (![v53 count])
    {
      v54 = IMLogHandleForCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v95 = namesCopy;
        v55 = "Failed to find any chats matching chatNames: %@";
LABEL_53:
        _os_log_impl(&dword_25479E000, v54, OS_LOG_TYPE_INFO, v55, buf, 0xCu);
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if ([conversationIdentifiersCopy count])
  {
    v56 = IMLogHandleForCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v56, OS_LOG_TYPE_INFO, "Performing search via chat search, then filter.", buf, 2u);
    }

    v53 = [(IMAssistantMessageQueryHandler *)self chatsWithConversationIdentifiers:conversationIdentifiersCopy];
    if (![v53 count])
    {
      v54 = IMLogHandleForCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v95 = conversationIdentifiersCopy;
        v55 = "Failed to find any chats matching conversation identifiers: %@";
        goto LABEL_53;
      }

LABEL_54:

      (*(v46 + 2))(v46, 0);
      goto LABEL_55;
    }

LABEL_45:
    -[IMAssistantMessageQueryHandler SPIQueryMessagesForChats:onlyUnread:limit:completion:](self, "SPIQueryMessagesForChats:onlyUnread:limit:completion:", v53, v76, 10 * [v53 count], v47);
LABEL_55:

    goto LABEL_34;
  }

  if ([v75 count])
  {
    v57 = IMLogHandleForCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v57, OS_LOG_TYPE_INFO, "Performing search via recipients search, then filter.", buf, 2u);
    }

    v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v58 addObjectsFromArray:v75];
    [v58 addObjectsFromArray:v74];
    v73 = v58;
    v59 = [(IMAssistantMessageQueryHandler *)self chatsContainingRequiredParticipants:v58];
    if ([v59 count])
    {
      -[IMAssistantMessageQueryHandler SPIQueryMessagesForChats:onlyUnread:limit:completion:](self, "SPIQueryMessagesForChats:onlyUnread:limit:completion:", v59, v76, 10 * [v59 count], v47);
    }

    else
    {
      v62 = IMLogHandleForCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v95 = v73;
        _os_log_impl(&dword_25479E000, v62, OS_LOG_TYPE_INFO, "Failed to find chats containing all specified persons (recipients + senders) during search: %@", buf, 0xCu);
      }

      (*(v46 + 2))(v46, 0);
    }
  }

  else
  {
    v66 = [v74 count];
    v60 = IMLogHandleForCategory();
    v61 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
    if (v66)
    {
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Performing search via senders search, then filter.", buf, 2u);
      }

      -[IMAssistantMessageQueryHandler SPIQueryMessagesForSenders:onlyUnread:limit:completion:](self, "SPIQueryMessagesForSenders:onlyUnread:limit:completion:", v74, v76, 10 * [v74 count], v47);
    }

    else if (v76)
    {
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Performing search via unread search, then filter.", buf, 2u);
      }

      [(IMAssistantMessageQueryHandler *)self SPIQueryUnreadMessages:50 completion:v47];
    }

    else
    {
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Performing search via examining all chats, then filter.", buf, 2u);
      }

      messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      chatDataSource2 = [messageHandlerDataSource3 chatDataSource];
      allExistingChats = [chatDataSource2 allExistingChats];

      [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesForChats:allExistingChats onlyUnread:0 limit:10 completion:v47];
      v39 = notificationIdentifiersCopy;
    }
  }

LABEL_34:
}

- (BOOL)messageIsFromBlackholedChat:(id)chat
{
  v22 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  chatDataSource = [messageHandlerDataSource chatDataSource];
  v8 = [chatDataSource existingChatWithChatIdentifier:chatIdentifier];

  if (v8)
  {
    LOBYTE(isBlackholed) = 0;
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = chatIdentifier;
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Could not find chatIdentifier %@ in chat registry, looking up IMSPIChat to determine blackhole status.", &v16, 0xCu);
    }

    v11 = [chatCopy spiChatWithQOS:25];
    isBlackholed = [v11 isBlackholed];
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      guid2 = [v11 guid];
      v16 = 138412802;
      v17 = guid;
      v18 = 2112;
      v19 = guid2;
      v20 = 1024;
      v21 = isBlackholed;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Determined message %@ from chat %@ isBlackholed=%d", &v16, 0x1Cu);
    }
  }

  return isBlackholed;
}

- (void)messagesMatchingMessageIdentifiers:(id)identifiers completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  firstObject = [identifiersCopy firstObject];
  v9 = [firstObject hasPrefix:@"x-apple-sms:guid="];

  v10 = IMLogHandleForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v13 = 134217984;
      v14 = [identifiersCopy count];
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Looking up %ld messages with IMSPIQueryMessagesWithRowIDs", &v13, 0xCu);
    }

    v12 = [identifiersCopy __imArrayByApplyingBlock:&unk_286693218];
    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithRowIDs:v12 completion:completionCopy];

    completionCopy = v12;
  }

  else
  {
    if (v11)
    {
      v13 = 134217984;
      v14 = [identifiersCopy count];
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Looking up %ld messages with IMSPIQueryMessagesWithGUIDs", &v13, 0xCu);
    }

    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithGUIDs:identifiersCopy completion:completionCopy];
  }
}

@end