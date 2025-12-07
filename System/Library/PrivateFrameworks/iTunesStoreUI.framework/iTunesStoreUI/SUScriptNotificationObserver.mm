@interface SUScriptNotificationObserver
- (SUScriptNotificationObserver)init;
- (id)_copySafariQueryDictionaryFromURL:(id)l;
- (void)_beginObservingNotifications;
- (void)_dispatchEvent:(id)event forName:(id)name;
- (void)_dispatchEventWithDictionary:(id)dictionary forName:(id)name;
- (void)_dispatchSafariEventWithDictionary:(id)dictionary andIdentifier:(id)identifier;
- (void)_endObservingNotifications;
- (void)_enumerateReceiversUsingBlock:(id)block;
- (void)_purchaseRequestDidSucceedNotification:(id)notification;
- (void)_safariViewControllerDataUpdate:(id)update;
- (void)_subscriptionStatusDidChangeNotification:(id)notification;
- (void)addEventReceiver:(id)receiver;
- (void)dealloc;
- (void)removeEventReceiver:(id)receiver;
@end

@implementation SUScriptNotificationObserver

- (SUScriptNotificationObserver)init
{
  v4.receiver = self;
  v4.super_class = SUScriptNotificationObserver;
  v2 = [(SUScriptNotificationObserver *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  [(SUScriptNotificationObserver *)self _endObservingNotifications];

  self->_lock = 0;
  receivers = self->_receivers;
  if (receivers)
  {
    CFRelease(receivers);
    self->_receivers = 0;
  }

  v4.receiver = self;
  v4.super_class = SUScriptNotificationObserver;
  [(SUScriptNotificationObserver *)&v4 dealloc];
}

- (void)addEventReceiver:(id)receiver
{
  [(NSLock *)self->_lock lock];
  receivers = self->_receivers;
  if (!receivers)
  {
    receivers = CFSetCreateMutable(0, 0, 0);
    self->_receivers = receivers;
  }

  CFSetAddValue(receivers, receiver);
  if (CFSetGetCount(self->_receivers) == 1)
  {
    [(SUScriptNotificationObserver *)self _beginObservingNotifications];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeEventReceiver:(id)receiver
{
  [(NSLock *)self->_lock lock];
  receivers = self->_receivers;
  if (receivers)
  {
    CFSetRemoveValue(receivers, receiver);
    if (!CFSetGetCount(self->_receivers))
    {
      [(SUScriptNotificationObserver *)self _endObservingNotifications];
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_purchaseRequestDidSucceedNotification:(id)notification
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(notification "userInfo")];
  if (!v4)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (!v19)
    {
      return;
    }

    *v32 = 138412546;
    *&v32[4] = objc_opt_class();
    *&v32[12] = 2112;
    *&v32[14] = 0;
    v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "[%@] Purchase response (%@) was nil.", v32, 22);
    if (!v21)
    {
      return;
    }

LABEL_41:
    v30 = v21;
    [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
    free(v30);
    SSFileLog();
    return;
  }

  v5 = v4;
  v6 = [objc_msgSend(v4 "URLResponse")];
  if (!v6)
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (!v24)
    {
      return;
    }

    *v32 = 138412546;
    *&v32[4] = objc_opt_class();
    *&v32[12] = 2112;
    *&v32[14] = v5;
    v21 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 16, "[%@] Purchase response (%@) notification did not  have body data", v32, 22, *v32, *&v32[8]);
    goto LABEL_40;
  }

  v7 = [objc_msgSend(MEMORY[0x1E69D4A28] "consumer")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      return;
    }

    *v32 = 138412546;
    *&v32[4] = objc_opt_class();
    *&v32[12] = 2112;
    *&v32[14] = v5;
    v21 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 16, "[%@] Purchase response (%@) notification did not have a ProtocolConsumer plist", v32, 22, *v32, *&v32[8]);
LABEL_40:
    if (!v21)
    {
      return;
    }

    goto LABEL_41;
  }

  v8 = [v7 objectForKey:@"metrics"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog4 = [mEMORY[0x1E69D4938]4 shouldLog];
    if ([mEMORY[0x1E69D4938]4 shouldLogToDisk])
    {
      v11 = shouldLog4 | 2;
    }

    else
    {
      v11 = shouldLog4;
    }

    oSLogObject4 = [mEMORY[0x1E69D4938]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      *v32 = 138412290;
      *&v32[4] = self;
      v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1C21AF000, oSLogObject4, 0, "[%@] Purchase succeeded. Sending buy confirmed", v32, 12);
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
        free(v15);
        v31 = v16;
        SSFileLog();
      }
    }

    [(SUScriptNotificationObserver *)self _dispatchEventWithDictionary:v8 forName:@"buyConfirmed", v31];
  }
}

- (void)_subscriptionStatusDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (userInfo)
  {
    v5 = [[SUScriptDictionary alloc] initWithDictionary:userInfo];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(SUScriptNotificationObserver *)self _dispatchEvent:v5 forName:@"subscriptionstatuschange"];
}

- (void)_safariViewControllerDataUpdate:(id)update
{
  object = [update object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SUScriptNotificationObserver *)self _copySafariQueryDictionaryFromURL:object];
    v5 = [v6 objectForKey:@"safariid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUScriptNotificationObserver *)self _dispatchSafariEventWithDictionary:v6 andIdentifier:v5];
    }
  }
}

- (id)_copySafariQueryDictionaryFromURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"name=%@", @"action"];
  v5 = [objc_msgSend(v3 "queryItems")];
  v6 = [objc_msgSend(v5 filteredArrayUsingPredicate:{v4), "firstObject"}];
  v7 = [MEMORY[0x1E695E0F8] mutableCopy];
  [v5 removeObject:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v5);
        }

        [v7 setObject:objc_msgSend(*(*(&v14 + 1) + 8 * v11) forKey:{"value"), objc_msgSend(*(*(&v14 + 1) + 8 * v11), "name")}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [v7 copy];
  return v12;
}

- (void)_dispatchSafariEventWithDictionary:(id)dictionary andIdentifier:(id)identifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__SUScriptNotificationObserver__dispatchSafariEventWithDictionary_andIdentifier___block_invoke;
  v4[3] = &unk_1E8165460;
  v4[4] = identifier;
  v4[5] = dictionary;
  v4[6] = self;
  [(SUScriptNotificationObserver *)self _enumerateReceiversUsingBlock:v4];
}

void __81__SUScriptNotificationObserver__dispatchSafariEventWithDictionary_andIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_msgSend(a2 "safariViewControllerIdentifier")])
    {
      v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:*(a1 + 40) options:0 error:0];
      if (v4)
      {
        v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
        v6 = [MEMORY[0x1E69D4938] sharedConfig];
        v7 = [v6 shouldLog];
        if ([v6 shouldLogToDisk])
        {
          v8 = v7 | 2;
        }

        else
        {
          v8 = v7;
        }

        v9 = [v6 OSLogObject];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v8;
        }

        else
        {
          v10 = v8 & 2;
        }

        if (v10)
        {
          v15 = 138412290;
          v16 = v5;
          v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1C21AF000, v9, 0, "Found receiver for safariviewcontrollerdataupdate event, data: %@", &v15, 12);
          if (v11)
          {
            v12 = v11;
            v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
            free(v12);
            v14 = v13;
            SSFileLog();
          }
        }

        [*(a1 + 48) _dispatchEvent:v5 forName:{@"safariviewcontrollerdataupdate", v14}];
      }
    }
  }
}

- (void)_beginObservingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter addObserver:self selector:sel__networkTypeChangedNotification_ name:*MEMORY[0x1E69E46E0] object:0];
  [defaultCenter addObserver:self selector:sel__audioSessionsChangedNotification_ name:@"SUAudioPlayerSessionsChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__purchaseRequestDidSucceedNotification_ name:@"SUPurchaseRequestDidSucceedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__memoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];
  [defaultCenter addObserver:self selector:sel__storeBagDidChangeNotification_ name:@"SUScriptStoreBagDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__subscriptionStatusDidChangeNotification_ name:@"SUScriptSubscriptionStatusDidChangeNotification" object:{+[SUScriptSubscriptionStatusObserver sharedObserver](SUScriptSubscriptionStatusObserver, "sharedObserver")}];
  [defaultCenter addObserver:self selector:sel__safariViewControllerDataUpdate_ name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];
  [MEMORY[0x1E69E47D0] startObservingNotifications];
  v4 = *MEMORY[0x1E69E4700];

  [defaultCenter addObserver:self selector:sel__softwareMapChangedNotification_ name:v4 object:0];
}

- (void)_dispatchEvent:(id)event forName:(id)name
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SUScriptNotificationObserver__dispatchEvent_forName___block_invoke;
  v4[3] = &unk_1E8165488;
  v4[4] = event;
  v4[5] = name;
  [(SUScriptNotificationObserver *)self _enumerateReceiversUsingBlock:v4];
}

- (void)_dispatchEventWithDictionary:(id)dictionary forName:(id)name
{
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:?])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:0];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      [(SUScriptNotificationObserver *)self _dispatchEvent:v8 forName:name];
    }
  }

  else
  {
    NSLog(&cfstr_UnableToSerial_0.isa, name, dictionary);
  }
}

- (void)_endObservingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46E0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4700] object:0];
  [defaultCenter removeObserver:self name:@"SUAudioPlayerSessionsChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUPurchaseRequestDidSucceedNotification" object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];
  [defaultCenter removeObserver:self name:@"SUScriptStoreBagDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUScriptSubscriptionStatusDidChangeNotification" object:{+[SUScriptSubscriptionStatusObserver sharedObserver](SUScriptSubscriptionStatusObserver, "sharedObserver")}];

  [defaultCenter removeObserver:self name:@"SSScriptSafariViewControllerDataUpdateNotification" object:0];
}

- (void)_enumerateReceiversUsingBlock:(id)block
{
  [(NSLock *)self->_lock lock];
  if (self->_receivers)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    CFSetApplyFunction(self->_receivers, __AddObjectToNSMutableSet, v7);
    [(NSLock *)self->_lock unlock];
    if (v7)
    {
      selfCopy = self;
      [v7 enumerateObjectsUsingBlock:block];
    }
  }

  else
  {
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

@end