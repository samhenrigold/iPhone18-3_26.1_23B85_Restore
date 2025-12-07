@interface IPTextMessageConversation
+ (id)collapseMessages:(id)messages;
+ (id)collapsedMessagesFromMessages:(id)messages;
- (IPTextMessageConversation)init;
- (NSArray)allMessages;
- (id)eventsInPreviouslyScannedMessageWithIdentifier:(id)identifier;
- (id)messageForIdentifier:(id)identifier;
- (void)_scanEventsInLastMessageOnly:(BOOL)only synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)addMessage:(id)message;
- (void)reset;
- (void)scanEventsInLastMessageOnly:(BOOL)only synchronously:(BOOL)synchronously completionHandler:(id)handler;
@end

@implementation IPTextMessageConversation

- (IPTextMessageConversation)init
{
  v10.receiver = self;
  v10.super_class = IPTextMessageConversation;
  v2 = [(IPTextMessageConversation *)&v10 init];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:100];
  messageByMessageIdentifierDictionary = v2->_messageByMessageIdentifierDictionary;
  v2->_messageByMessageIdentifierDictionary = v3;

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:100];
  eventsByMessageIdentifierDictionary = v2->_eventsByMessageIdentifierDictionary;
  v2->_eventsByMessageIdentifierDictionary = v5;

  v7 = [[IPCircularBufferArray alloc] initWithCapacity:30];
  lastMessages = v2->_lastMessages;
  v2->_lastMessages = v7;

  return v2;
}

- (NSArray)allMessages
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(IPCircularBufferArray *)selfCopy->_lastMessages allObjects];
  v4 = [allObjects copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [messageCopy setType:IPMessageTypeShortMessage];
  identifier = [messageCopy identifier];
  v7 = [(NSMutableDictionary *)selfCopy->_messageByMessageIdentifierDictionary objectForKeyedSubscript:identifier];

  if (!v7)
  {
    [(NSMutableDictionary *)selfCopy->_messageByMessageIdentifierDictionary setObject:messageCopy forKeyedSubscript:identifier];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__2;
    v10[4] = __Block_byref_object_dispose__2;
    v11 = selfCopy;
    lastMessages = v11->_lastMessages;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__IPTextMessageConversation_addMessage___block_invoke;
    v9[3] = &unk_278F230E8;
    v9[4] = v10;
    [(IPCircularBufferArray *)lastMessages addObject:messageCopy completionHandler:v9];
    _Block_object_dispose(v10, 8);
  }

  objc_sync_exit(selfCopy);
}

void __40__IPTextMessageConversation_addMessage___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 identifier];
    v3 = [*(*(*(a1 + 32) + 8) + 40) messageByMessageIdentifierDictionary];
    [v3 setObject:0 forKeyedSubscript:v5];

    v4 = [*(*(*(a1 + 32) + 8) + 40) eventsByMessageIdentifierDictionary];
    [v4 setObject:0 forKeyedSubscript:v5];
  }
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_messageByMessageIdentifierDictionary removeAllObjects];
  [(NSMutableDictionary *)obj->_eventsByMessageIdentifierDictionary removeAllObjects];
  [(IPCircularBufferArray *)obj->_lastMessages removeAllObjects];
  objc_sync_exit(obj);
}

- (id)messageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_messageByMessageIdentifierDictionary objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)scanEventsInLastMessageOnly:(BOOL)only synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  onlyCopy = only;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__IPTextMessageConversation_scanEventsInLastMessageOnly_synchronously_completionHandler___block_invoke;
  v10[3] = &unk_278F23110;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(IPTextMessageConversation *)self _scanEventsInLastMessageOnly:onlyCopy synchronously:synchronouslyCopy completionHandler:v10];
}

- (void)_scanEventsInLastMessageOnly:(BOOL)only synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  handlerCopy = handler;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__2;
  v29[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v30 = selfCopy;
  allMessages = [(IPTextMessageConversation *)selfCopy allMessages];
  lastObject = [allMessages lastObject];
  isGroupConversation = [lastObject isGroupConversation];

  if (_scanEventsInLastMessageOnly_synchronously_completionHandler__onceToken != -1)
  {
    [IPTextMessageConversation _scanEventsInLastMessageOnly:synchronously:completionHandler:];
  }

  if (isGroupConversation)
  {
    v13 = 1;
  }

  else
  {
    v13 = _scanEventsInLastMessageOnly_synchronously_completionHandler__sKMaxNumberOfMessagesToKeep;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
  allMessages2 = [(IPTextMessageConversation *)selfCopy allMessages];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__IPTextMessageConversation__scanEventsInLastMessageOnly_synchronously_completionHandler___block_invoke_2;
  v22[3] = &unk_278F23160;
  v22[4] = selfCopy;
  v16 = handlerCopy;
  v25 = v16;
  v17 = allMessages2;
  v23 = v17;
  v27 = v13;
  v18 = v14;
  onlyCopy = only;
  v24 = v18;
  v26 = v29;
  v19 = MEMORY[0x24C1D4200](v22);
  v20 = v19;
  if (synchronouslyCopy)
  {
    (*(v19 + 16))(v19);
  }

  else
  {
    v21 = dispatch_get_global_queue(17, 0);
    dispatch_async(v21, v20);
  }

  _Block_object_dispose(v29, 8);
}

void __90__IPTextMessageConversation__scanEventsInLastMessageOnly_synchronously_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _scanEventsInLastMessageOnly_synchronously_completionHandler__sKMaxNumberOfMessagesToKeep = [v0 integerForKey:@"IPTextMessageConversationMaxNumberOfMessagesToKeep"];

  if ((_scanEventsInLastMessageOnly_synchronously_completionHandler__sKMaxNumberOfMessagesToKeep - 21) <= 0xFFFFFFFFFFFFFFEBLL)
  {
    _scanEventsInLastMessageOnly_synchronously_completionHandler__sKMaxNumberOfMessagesToKeep = 7;
  }

  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 integerForKey:@"IPTextMessageConversationMaxTimeIntervalInHoursForMessagesToKeep"];

  v3 = 86400;
  if ((v2 - 101) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v3 = 3600 * v2;
  }

  _scanEventsInLastMessageOnly_synchronously_completionHandler__kMaxTimeIntervalInSecondsForMessagesToKeep = v3;
}

void __90__IPTextMessageConversation__scanEventsInLastMessageOnly_synchronously_completionHandler___block_invoke_2(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v47 = a1;
  if ([*(*(a1 + 32) + 8) count])
  {
    objc_sync_exit(obj);

    v41 = objc_opt_new();
    v37 = [*(a1 + 40) lastObject];
    v44 = [v37 dateSent];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v3)
    {
      v4 = *v61;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v61 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v60 + 1) + 8 * i);
          v7 = [v6 dateSent];
          [v7 timeIntervalSinceDate:v44];
          v9 = v8 > (3600 * _scanEventsInLastMessageOnly_synchronously_completionHandler__kMaxTimeIntervalInSecondsForMessagesToKeep);

          if (!v9)
          {
            [v41 addObject:v6];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v3);
    }

    v38 = [IPTextMessageConversation collapsedMessagesFromMessages:v41];
    v10 = [v38 count];
    v11 = *(v47 + 72);
    if (v10 >= v11)
    {
      v12 = v10 - v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12 < v10)
    {
      if (v10 >= v11)
      {
        v13 = *(v47 + 72);
      }

      else
      {
        v13 = v10;
      }

      do
      {
        v14 = [v38 objectAtIndexedSubscript:v12];
        [*(v47 + 48) addObject:v14];

        ++v12;
        --v13;
      }

      while (v13);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = *(v47 + 48);
    v15 = [v40 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v15)
    {
      v39 = 0;
      v42 = *v57;
      do
      {
        v16 = 0;
        v17 = v39;
        v43 = v15;
        v39 += v15;
        do
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v18 = *(*(&v56 + 1) + 8 * v16);
          if (*(v47 + 80) != 1 || ([*(v47 + 48) lastObject], v19 = objc_claimAutoreleasedReturnValue(), v20 = v18 == v19, v19, v20))
          {
            v21 = [v18 identifier];
            if (v21)
            {
              v22 = *(v47 + 32);
              objc_sync_enter(v22);
              v23 = [*(*(*(v47 + 64) + 8) + 40) eventsByMessageIdentifierDictionary];
              obja = [v23 objectForKeyedSubscript:v21];

              objc_sync_exit(v22);
              if (obja)
              {
                [obja count];
                (*(*(v47 + 56) + 16))();
              }

              else
              {
                v24 = objc_opt_new();
                if (v17)
                {
                  for (j = 0; j != v17; ++j)
                  {
                    v26 = [*(v47 + 48) objectAtIndexedSubscript:j];
                    v27 = [v26 messageUnits];
                    v28 = [v27 firstObject];
                    v29 = [v28 text];

                    if ([v29 length])
                    {
                      v30 = [v26 messageUnits];
                      [v24 addObjectsFromArray:v30];
                    }
                  }
                }

                v31 = objc_alloc_init(IPFeatureTextMessageScanner);
                v32 = [v18 messageUnits];
                v48[0] = MEMORY[0x277D85DD0];
                v48[1] = 3221225472;
                v48[2] = __90__IPTextMessageConversation__scanEventsInLastMessageOnly_synchronously_completionHandler___block_invoke_3;
                v48[3] = &unk_278F23138;
                v33 = *(v47 + 64);
                v48[4] = *(v47 + 32);
                v55 = v33;
                v49 = v21;
                v50 = v41;
                v34 = *(v47 + 56);
                v51 = v18;
                v52 = v24;
                v53 = v32;
                v54 = v34;
                v35 = v32;
                v36 = v24;
                [(IPFeatureTextMessageScanner *)v31 scanEventsInMessageUnits:v35 contextMessageUnits:v36 synchronously:1 completionHandler:v48];
              }
            }
          }

          ++v17;
          ++v16;
        }

        while (v16 != v43);
        v15 = [v40 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v15);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    objc_sync_exit(obj);
  }
}

void __90__IPTextMessageConversation__scanEventsInLastMessageOnly_synchronously_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = [*(*(*(a1 + 88) + 8) + 40) eventsByMessageIdentifierDictionary];
  [v6 setObject:v4 forKeyedSubscript:*(a1 + 40)];

  objc_sync_exit(v5);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) setIpsos_usedBubblesCount:{objc_msgSend(*(a1 + 48), "count", v11)}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 80) + 16))();
}

- (id)eventsInPreviouslyScannedMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_eventsByMessageIdentifierDictionary objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)collapsedMessagesFromMessages:(id)messages
{
  v40 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v31 = objc_opt_new();
  firstObject = [messagesCopy firstObject];
  dateSent = [firstObject dateSent];
  sender = [firstObject sender];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v33 = *v35;
    do
    {
      v11 = 0;
      v30 = v10;
      v12 = -v10;
      v13 = v33;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v7);
        }

        if (v12 != v11)
        {
          v14 = *(*(&v34 + 1) + 8 * v11);
          dateSent2 = [v14 dateSent];
          [dateSent2 timeIntervalSinceDate:dateSent];
          v17 = v16;

          sender2 = [v14 sender];

          if (sender2 == sender && v17 < 60.0)
          {
            v38[0] = firstObject;
            v38[1] = v14;
            v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
            [self collapseMessages:v23];
            v24 = sender;
            v26 = v25 = v7;

            v27 = v26;
            v7 = v25;
            sender = v24;
            v13 = v33;
            v22 = v27;

            dateSent3 = [v14 dateSent];

            v20 = v22;
          }

          else
          {
            if (firstObject)
            {
              [v31 addObject:firstObject];
            }

            v20 = v14;

            dateSent3 = [v20 dateSent];

            [v20 sender];
            sender = v22 = sender;
          }

          dateSent = dateSent3;
          firstObject = v20;
        }

        ++v11;
      }

      while (v9 != v11);
      v10 = v30 + v9;
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  [v31 addObject:firstObject];
  v28 = v31;

  return v31;
}

+ (id)collapseMessages:(id)messages
{
  v33 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = objc_opt_new();
  v5 = [messagesCopy count];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = messagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v6);
        }

        messageUnits = [*(*(&v27 + 1) + 8 * i) messageUnits];
        firstObject = [messageUnits firstObject];
        text = [firstObject text];

        if ([text length])
        {
          [v4 appendString:text];
          if (v5 - 1 - v9 != i)
          {
            [v4 appendString:@" "];
          }
        }
      }

      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  lastObject = [v6 lastObject];
  v16 = [IPMessage alloc];
  identifier = [lastObject identifier];
  subject = [lastObject subject];
  sender = [lastObject sender];
  recipients = [lastObject recipients];
  dateSent = [lastObject dateSent];
  type = [lastObject type];
  v23 = [(IPMessage *)v16 initWithIdentifier:identifier subject:subject sender:sender recipients:recipients dateSent:dateSent type:type];

  v24 = [[IPMessageUnit alloc] initWithText:v4 originalMessage:v23 index:0];
  v31 = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  [(IPMessage *)v23 setMessageUnits:v25];

  return v23;
}

@end