@interface AXSupportDefaultsObserver
- (AXSupportDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObservingPreference:(__CFString *)preference andBroadcastDarwinNotification:(__CFString *)notification postGlobally:(BOOL)globally;
- (void)startObservingPreference:(__CFString *)preference andPerformBlock:(id)block;
@end

@implementation AXSupportDefaultsObserver

- (AXSupportDefaultsObserver)init
{
  v15.receiver = self;
  v15.super_class = AXSupportDefaultsObserver;
  v2 = [(AXSupportDefaultsObserver *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v4 = [v3 initWithSuiteName:kAXSAccessibilityPreferenceDomain];
    axDomain = v2->_axDomain;
    v2->_axDomain = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observedPrefs = v2->_observedPrefs;
    v2->_observedPrefs = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v2->_actions;
    v2->_actions = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionLastNotifications = v2->_actionLastNotifications;
    v2->_actionLastNotifications = v10;

    v12 = dispatch_queue_create("com.apple.AccessibilitySupport.lastNotificationsQueue", 0);
    lastNotificationsQueue = v2->_lastNotificationsQueue;
    v2->_lastNotificationsQueue = v12;
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observedPrefs;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_axDomain removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = AXSupportDefaultsObserver;
  [(AXSupportDefaultsObserver *)&v8 dealloc];
}

- (void)startObservingPreference:(__CFString *)preference andBroadcastDarwinNotification:(__CFString *)notification postGlobally:(BOOL)globally
{
  globallyCopy = globally;
  v9 = objc_autoreleasePoolPush();
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  isMainThread = [currentThread isMainThread];

  if ((isMainThread & 1) == 0)
  {
    v13 = AXSupportLogCommon(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [AXSupportDefaultsObserver startObservingPreference:andBroadcastDarwinNotification:postGlobally:];
    }
  }

  observedPrefs = self->_observedPrefs;
  notificationCopy = notification;
  preferenceCopy = preference;
  [(NSMutableSet *)observedPrefs addObject:preferenceCopy];
  v17 = [[AXDefaultsObserverPostDarwinNotificationAction alloc] initWithDarwinNotification:notificationCopy postGlobally:globallyCopy];

  [(NSMutableArray *)self->_actions addObject:v17];
  [(NSUserDefaults *)self->_axDomain addObserver:self forKeyPath:preferenceCopy options:3 context:v17];

  objc_autoreleasePoolPop(v9);
}

- (void)startObservingPreference:(__CFString *)preference andPerformBlock:(id)block
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  isMainThread = [currentThread isMainThread];

  if ((isMainThread & 1) == 0)
  {
    v11 = AXSupportLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [AXSupportDefaultsObserver startObservingPreference:andBroadcastDarwinNotification:postGlobally:];
    }
  }

  observedPrefs = self->_observedPrefs;
  preferenceCopy = preference;
  [(NSMutableSet *)observedPrefs addObject:preferenceCopy];
  v14 = [[AXDefaultsObserverExecuteBlockNotificationAction alloc] initWithBlock:blockCopy];
  [(NSMutableArray *)self->_actions addObject:v14];
  [(NSUserDefaults *)self->_axDomain addObserver:self forKeyPath:preferenceCopy options:3 context:v14];

  objc_autoreleasePoolPop(v7);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context)
  {
    v13 = [MEMORY[0x1E696B098] valueWithPointer:context];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    lastNotificationsQueue = self->_lastNotificationsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AXSupportDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E6F45468;
    v26 = &v27;
    block[4] = self;
    v15 = v13;
    v25 = v15;
    dispatch_sync(lastNotificationsQueue, block);
    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (([v28[5] isEqual:changeCopy] & 1) == 0 && (objc_msgSend(v16, "isEqual:", v17) & 1) == 0)
    {
      [context performForChangedDefault:pathCopy];
      if (changeCopy)
      {
        v18 = [changeCopy copy];
        v19 = self->_lastNotificationsQueue;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __76__AXSupportDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v21[3] = &unk_1E6F45490;
        v21[4] = self;
        v22 = v18;
        v23 = v15;
        v20 = v18;
        dispatch_sync(v19, v21);
      }
    }

    _Block_object_dispose(&v27, 8);
  }
}

void __76__AXSupportDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end