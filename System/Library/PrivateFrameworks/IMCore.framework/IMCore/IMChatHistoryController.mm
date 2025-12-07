@interface IMChatHistoryController
+ (id)sharedInstance;
- (IMChatHistoryController)init;
- (void)dealloc;
- (void)itemQuery:(id)query finishedWithResult:(id)result chatGUIDs:(id)ds;
- (void)loadItemWithGUID:(id)d completionBlock:(id)block;
- (void)loadMessageItemWithGUID:(id)d completionBlock:(id)block;
- (void)loadMessageWithGUID:(id)d completionBlock:(id)block;
- (void)messageItemQuery:(id)query finishedWithResult:(id)result chatGUIDs:(id)ds;
- (void)messageQuery:(id)query finishedWithResult:(id)result chatGUIDs:(id)ds;
@end

@implementation IMChatHistoryController

+ (id)sharedInstance
{
  if (qword_1ED767950 != -1)
  {
    sub_1A82461DC();
  }

  v3 = qword_1ED7678F0;

  return v3;
}

- (IMChatHistoryController)init
{
  v6.receiver = self;
  v6.super_class = IMChatHistoryController;
  v2 = [(IMChatHistoryController *)&v6 init];
  if (v2)
  {
    v3 = +[IMDaemonController sharedController];
    listener = [v3 listener];
    [listener addHandler:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IMDaemonController sharedController];
  listener = [v3 listener];
  [listener removeHandler:self];

  v5.receiver = self;
  v5.super_class = IMChatHistoryController;
  [(IMChatHistoryController *)&v5 dealloc];
}

- (void)loadMessageWithGUID:(id)d completionBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = blockCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = +[IMChatRegistry sharedRegistry];
    cachedChats = [v9 cachedChats];

    v11 = [cachedChats countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(cachedChats);
          }

          v15 = [*(*(&v24 + 1) + 8 * i) messageForGUID:dCopy];
          if (v15)
          {
            v22 = v15;
            v23 = [v8 copy];

            v21 = v22;
            v8 = v23;
            im_dispatch_after();

            goto LABEL_14;
          }
        }

        v12 = [cachedChats countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (!self->_runningQueries)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      runningQueries = self->_runningQueries;
      self->_runningQueries = Mutable;
    }

    cachedChats = [MEMORY[0x1E696AEC0] stringGUID];
    v18 = +[IMDaemonController sharedController];
    remoteDaemon = [v18 remoteDaemon];
    [remoteDaemon loadMessageWithGUID:dCopy queryID:cachedChats];

    v20 = self->_runningQueries;
    v21 = [v8 copy];
    [(NSMutableDictionary *)v20 setObject:v21 forKey:cachedChats];
LABEL_14:
  }
}

- (void)loadItemWithGUID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (blockCopy)
  {
    if (!self->_runningQueries)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      runningQueries = self->_runningQueries;
      self->_runningQueries = Mutable;
    }

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v10 = +[IMDaemonController sharedController];
    remoteDaemon = [v10 remoteDaemon];
    [remoteDaemon loadItemWithGUID:dCopy queryID:stringGUID];

    v12 = self->_runningQueries;
    v13 = [blockCopy copy];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:stringGUID];
  }
}

- (void)loadMessageItemWithGUID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (blockCopy)
  {
    if (!self->_runningQueries)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      runningQueries = self->_runningQueries;
      self->_runningQueries = Mutable;
    }

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v10 = +[IMDaemonController sharedController];
    remoteDaemon = [v10 remoteDaemon];
    [remoteDaemon loadMessageItemWithGUID:dCopy queryID:stringGUID];

    v12 = self->_runningQueries;
    v13 = [blockCopy copy];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:stringGUID];
  }
}

- (void)messageQuery:(id)query finishedWithResult:(id)result chatGUIDs:(id)ds
{
  v41 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  resultCopy = result;
  dsCopy = ds;
  v11 = [(NSMutableDictionary *)self->_runningQueries objectForKey:queryCopy];
  if (v11)
  {
    selfCopy = self;
    v32 = queryCopy;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = dsCopy;
    v13 = dsCopy;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          v19 = +[IMChatRegistry sharedRegistry];
          v20 = [v19 existingChatWithGUID:v18];

          if (v20)
          {
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    lastObject = [v12 lastObject];
    account = [lastObject account];

    sender = [resultCopy sender];
    v24 = [account imHandleWithID:sender alreadyCanonical:1];

    handle = [resultCopy handle];
    v26 = [account imHandleWithID:handle alreadyCanonical:1];

    v27 = [IMMessage messageFromIMMessageItem:resultCopy sender:v24 subject:v26];
    v34 = v12;
    v35 = v11;
    v33 = v27;
    v28 = v12;
    v29 = v27;
    im_dispatch_after();
    queryCopy = v32;
    [(NSMutableDictionary *)selfCopy->_runningQueries removeObjectForKey:v32];

    dsCopy = v31;
  }
}

- (void)itemQuery:(id)query finishedWithResult:(id)result chatGUIDs:(id)ds
{
  v32 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  resultCopy = result;
  dsCopy = ds;
  v11 = [(NSMutableDictionary *)self->_runningQueries objectForKey:queryCopy];
  if (v11)
  {
    selfCopy = self;
    v23 = resultCopy;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = dsCopy;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = +[IMChatRegistry sharedRegistry];
          v20 = [v19 existingChatWithGUID:v18];

          if (v20)
          {
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    v26 = v11;
    resultCopy = v23;
    v24 = v23;
    v25 = v12;
    v21 = v12;
    im_dispatch_after();
    [(NSMutableDictionary *)selfCopy->_runningQueries removeObjectForKey:queryCopy];
  }
}

- (void)messageItemQuery:(id)query finishedWithResult:(id)result chatGUIDs:(id)ds
{
  v32 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  resultCopy = result;
  dsCopy = ds;
  v11 = [(NSMutableDictionary *)self->_runningQueries objectForKey:queryCopy];
  if (v11)
  {
    selfCopy = self;
    v23 = resultCopy;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = dsCopy;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = +[IMChatRegistry sharedRegistry];
          v20 = [v19 existingChatWithGUID:v18];

          if (v20)
          {
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    v26 = v11;
    resultCopy = v23;
    v24 = v23;
    v25 = v12;
    v21 = v12;
    im_dispatch_after();
    [(NSMutableDictionary *)selfCopy->_runningQueries removeObjectForKey:queryCopy];
  }
}

@end