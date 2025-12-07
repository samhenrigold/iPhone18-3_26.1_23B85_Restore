@interface CACAXNotificationObserver
- (CACAXNotificationObserver)initWithNotifications:(id)notifications;
- (CACAXNotificationObserverDelegate)delegate;
- (void)_didObserveNotification:(int)notification notificationData:(void *)data;
@end

@implementation CACAXNotificationObserver

- (CACAXNotificationObserver)initWithNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v11.receiver = self;
  v11.super_class = CACAXNotificationObserver;
  v5 = [(CACAXNotificationObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__CACAXNotificationObserver_initWithNotifications___block_invoke;
    v8[3] = &unk_279CEB4C0;
    v9 = v5;
    v10 = notificationsCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  return v6;
}

void __51__CACAXNotificationObserver_initWithNotifications___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6BA0] systemWideElement];
  v3 = AXObserverCreate([v2 pid], _accessibilityNotificationCallback, (*(a1 + 32) + 8));

  if (v3)
  {
    v5 = CACLogAccessibility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_1(v3, v5);
    }
  }

  else
  {
    RunLoopSource = AXObserverGetRunLoopSource(*(*(a1 + 32) + 8));
    if (RunLoopSource)
    {
      v7 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v7, *MEMORY[0x277CBF058]);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = *(a1 + 40);
      v9 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v5);
            }

            v13 = [*(*(&v20 + 1) + 8 * i) intValue];
            v14 = *(*(a1 + 32) + 8);
            v15 = [MEMORY[0x277CE6BA0] systemWideElement];
            v16 = [v15 uiElement];
            v17 = AXObserverAddNotification(v14, [v16 axElement], v13, *(a1 + 32));

            if (v17)
            {
              v19 = CACLogAccessibility(v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_2(v13, v17, v19);
              }

              goto LABEL_4;
            }
          }

          v10 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v5 = CACLogAccessibility(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_3(v5);
      }
    }
  }

LABEL_4:
}

- (void)_didObserveNotification:(int)notification notificationData:(void *)data
{
  v5 = *&notification;
  delegate = [(CACAXNotificationObserver *)self delegate];
  [delegate observer:self didObserveNotification:v5 notificationData:data];
}

- (CACAXNotificationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Error creating AXObserver: %ld", &v2, 0xCu);
}

void __51__CACAXNotificationObserver_initWithNotifications___block_invoke_cold_2(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_26B354000, log, OS_LOG_TYPE_ERROR, "Unable to register for notification %ld with error %d", &v3, 0x12u);
}

@end