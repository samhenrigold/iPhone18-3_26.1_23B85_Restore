@interface CDPDBuddyStateObserver
- (CDPDBuddyStateObserver)init;
- (void)eventReceived:(const char *)received eventValue:(unint64_t)value;
- (void)registerListener:(id)listener;
@end

@implementation CDPDBuddyStateObserver

- (CDPDBuddyStateObserver)init
{
  v6.receiver = self;
  v6.super_class = CDPDBuddyStateObserver;
  v2 = [(CDPDBuddyStateObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    listeners = v2->_listeners;
    v2->_listeners = v3;
  }

  return v2;
}

- (void)registerListener:(id)listener
{
  listenerCopy = listener;
  [(NSMutableOrderedSet *)self->_listeners addObject:?];
  if ([MEMORY[0x277CFD560] isBuddyFinished])
  {
    [listenerCopy buddyFinished];
  }
}

- (void)eventReceived:(const char *)received eventValue:(unint64_t)value
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDBuddyStateObserver eventReceived:received eventValue:v6];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v7 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  v27 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  if (!getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke;
    v22 = &unk_278E259A8;
    v23 = &v24;
    __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(buf);
    v7 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v7)
  {
    [CDPDBuddyStateObserver eventReceived:eventValue:];
    __break(1u);
  }

  v8 = *v7;
  v9 = strcmp([v8 UTF8String], received);

  if (!v9)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "CDPDBuddyStateObserver: Buddy Completed. Calling listeners.", buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = self->_listeners;
    v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * i) buddyFinished];
        }

        v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
      }

      while (v12);
    }
  }
}

- (void)eventReceived:(uint64_t)a1 eventValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "CDPDBuddyStateObserver Received event %s", &v2, 0xCu);
}

- (void)eventReceived:eventValue:.cold.2()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [(CDPDSOSCircleController *)v1 _joinCircleIgnoringBackups:v2 completion:v3, v4, v5, v6, v7, v8];
}

@end