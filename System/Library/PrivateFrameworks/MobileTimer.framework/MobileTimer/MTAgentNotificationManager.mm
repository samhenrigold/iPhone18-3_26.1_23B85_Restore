@interface MTAgentNotificationManager
+ (double)_schedulingAssertionTimeout;
+ (double)defaultAssertionTimeOutForNotification:(id)notification type:(int64_t)type;
- (MTAgentNotificationManager)init;
- (void)_handleNotificationWithName:(id)name type:(int64_t)type;
- (void)_registerForAlarmNotifications;
- (void)_registerForDarwinNotifications;
- (void)_registerForDistributedNotifications;
- (void)_registerForLiveDarwinNotification:(id)notification;
- (void)_registerForXPCStream:(id)stream notificationType:(int64_t)type;
- (void)beginListening;
- (void)dealloc;
- (void)registerListener:(id)listener;
@end

@implementation MTAgentNotificationManager

- (MTAgentNotificationManager)init
{
  v8.receiver = self;
  v8.super_class = MTAgentNotificationManager;
  v2 = [(MTAgentNotificationManager *)&v8 init];
  if (v2)
  {
    v3 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTNotificationManager.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v2->_serializer;
    v2->_serializer = v3;

    array = [MEMORY[0x1E695DF70] array];
    listeners = v2->_listeners;
    v2->_listeners = array;
  }

  return v2;
}

- (void)registerListener:(id)listener
{
  listenerCopy = listener;
  serializer = [(MTAgentNotificationManager *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MTAgentNotificationManager_registerListener___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [serializer performBlock:v7];
}

void __47__MTAgentNotificationManager_registerListener___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ registered %{public}@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) listeners];
  [v5 addObject:*(a1 + 40)];

  if (objc_opt_respondsToSelector())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [*(a1 + 40) liveDarwinNotifications];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) _registerForLiveDarwinNotification:*(*(&v11 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)beginListening
{
  [(MTAgentNotificationManager *)self _registerForDistributedNotifications];
  [(MTAgentNotificationManager *)self _registerForDarwinNotifications];

  [(MTAgentNotificationManager *)self _registerForAlarmNotifications];
}

- (void)_registerForDistributedNotifications
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for distributed notifications", &v4, 0xCu);
  }

  [(MTAgentNotificationManager *)self _registerForXPCStream:@"com.apple.distnoted.matching" notificationType:1];
}

- (void)_registerForDarwinNotifications
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for darwin notifications", &v4, 0xCu);
  }

  [(MTAgentNotificationManager *)self _registerForXPCStream:@"com.apple.notifyd.matching" notificationType:0];
}

- (void)_registerForAlarmNotifications
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for alarm notifications", &v4, 0xCu);
  }

  [(MTAgentNotificationManager *)self _registerForXPCStream:@"com.apple.alarm" notificationType:2];
}

- (void)_registerForLiveDarwinNotification:(id)notification
{
  v11 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = MTLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = notificationCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for darwin notification %{public}@", &v7, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleLiveNotification, notificationCopy, self, CFNotificationSuspensionBehaviorDrop);
}

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(MTAgentNotificationManager *)self listeners];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          liveDarwinNotifications = [v7 liveDarwinNotifications];
          v9 = [liveDarwinNotifications countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v18;
            do
            {
              v12 = 0;
              do
              {
                if (*v18 != v11)
                {
                  objc_enumerationMutation(liveDarwinNotifications);
                }

                v13 = *(*(&v17 + 1) + 8 * v12);
                DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v13, 0);
                ++v12;
              }

              while (v10 != v12);
              v10 = [liveDarwinNotifications countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v10);
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v16.receiver = self;
  v16.super_class = MTAgentNotificationManager;
  [(MTAgentNotificationManager *)&v16 dealloc];
}

- (void)_registerForXPCStream:(id)stream notificationType:(int64_t)type
{
  streamCopy = stream;
  uTF8String = [stream UTF8String];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MTAgentNotificationManager__registerForXPCStream_notificationType___block_invoke;
  v9[3] = &unk_1E7B0CCE8;
  v9[4] = self;
  v9[5] = type;
  xpc_set_event_stream_handler(uTF8String, MEMORY[0x1E69E96A0], v9);
}

void __69__MTAgentNotificationManager__registerForXPCStream_notificationType___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithCString:xpc_dictionary_get_string(xdict encoding:{*MEMORY[0x1E69E9E40]), 1}];
  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received notification %{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) _handleNotificationWithName:v3 type:*(a1 + 40)];
}

- (void)_handleNotificationWithName:(id)name type:(int64_t)type
{
  nameCopy = name;
  serializer = [(MTAgentNotificationManager *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__MTAgentNotificationManager__handleNotificationWithName_type___block_invoke;
  v9[3] = &unk_1E7B0CD10;
  v9[4] = self;
  v10 = nameCopy;
  typeCopy = type;
  v8 = nameCopy;
  [serializer performBlock:v9];
}

void __63__MTAgentNotificationManager__handleNotificationWithName_type___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) listeners];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        if ([v6 handlesNotification:*(a1 + 40) ofType:*(a1 + 48)])
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 assertionTimeOutForNotification:*(a1 + 40) ofType:*(a1 + 48)], v7 == 0.0))
          {
            [objc_opt_class() defaultAssertionTimeOutForNotification:*(a1 + 40) type:*(a1 + 48)];
          }

          v8 = [MTAgentNotification notificationWithType:*(a1 + 48) name:*(a1 + 40) powerAssertionTimeout:?];
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __63__MTAgentNotificationManager__handleNotificationWithName_type___block_invoke_2;
          v13[3] = &unk_1E7B0C9D8;
          v14 = v8;
          v11 = v8;
          [v6 handleNotification:v9 ofType:v10 completion:v13];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

+ (double)defaultAssertionTimeOutForNotification:(id)notification type:(int64_t)type
{
  if (type != 2)
  {
    return 0.0;
  }

  [self _schedulingAssertionTimeout];
  return result;
}

+ (double)_schedulingAssertionTimeout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MTAgentNotificationManager__schedulingAssertionTimeout__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_schedulingAssertionTimeout_onceToken != -1)
  {
    dispatch_once(&_schedulingAssertionTimeout_onceToken, block);
  }

  return *&_schedulingAssertionTimeout_assertionTimeout;
}

void __57__MTAgentNotificationManager__schedulingAssertionTimeout__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = MTIntegerIsPositive();
  *&_schedulingAssertionTimeout_assertionTimeout = [v2 integerForKey:@"SchedulingAssertionTimeout" isValid:v3 defaultValue:*&_schedulingAssertionTimeout_assertionTimeout];

  v4 = MTLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 1026;
    v9 = *&_schedulingAssertionTimeout_assertionTimeout;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Using a scheduling power assertion timeout of %{public}d", &v6, 0x12u);
  }
}

@end