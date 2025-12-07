@interface _GCGameOverlayMonitor
+ (BOOL)currentProcessIsOverlayUI;
+ (id)sharedInstance;
- (_GCGameOverlayMonitor)init;
- (void)_refreshState;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer notifyCurrent:(BOOL)current;
- (void)dealloc;
- (void)init;
- (void)removeObserver:(id)observer;
- (void)setOverlayPresented:(BOOL)presented;
@end

@implementation _GCGameOverlayMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[_GCGameOverlayMonitor sharedInstance];
  }

  v3 = sharedInstance_Shared_1;

  return v3;
}

- (_GCGameOverlayMonitor)init
{
  v22.receiver = self;
  v22.super_class = _GCGameOverlayMonitor;
  v2 = [(_GCGameOverlayMonitor *)&v22 init];
  v3 = objc_opt_new();
  observers = v2->_observers;
  v2->_observers = v3;

  objc_initWeak(&location, v2);
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __29___GCGameOverlayMonitor_init__block_invoke;
  handler[3] = &unk_1E8419C10;
  objc_copyWeak(&v20, &location);
  v7 = notify_register_dispatch("com.apple.GameOverlayUI.dashboardVisibilityChanged", &v2->_overlayPresentationObserver, v5, handler);

  if (v7)
  {
    isInternalBuild = gc_isInternalBuild(v8, v9);
    if (isInternalBuild)
    {
      v16 = getGCLogger(isInternalBuild);
      [(_GCGameOverlayMonitor *)v16 init];
    }

    v13 = 0;
  }

  else
  {
    v10 = dispatch_get_global_queue(17, 0);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __29___GCGameOverlayMonitor_init__block_invoke_89;
    v17[3] = &unk_1E8418DD0;
    objc_copyWeak(&v18, &location);
    v11 = v17;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __gc_state_add_dictionary_handler_block_invoke_1;
    v26 = &unk_1E8418DF8;
    v28 = 4;
    v27 = v11;
    v12 = os_state_add_handler();

    v2->_state = v12;
    v13 = v2;
    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

- (void)dealloc
{
  os_state_remove_handler();
  overlayPresentationObserver = self->_overlayPresentationObserver;
  if (overlayPresentationObserver)
  {
    notify_cancel(overlayPresentationObserver);
    self->_overlayPresentationObserver = 0;
  }

  v4.receiver = self;
  v4.super_class = _GCGameOverlayMonitor;
  [(_GCGameOverlayMonitor *)&v4 dealloc];
}

- (void)addObserver:(id)observer notifyCurrent:(BOOL)current
{
  currentCopy = current;
  observerCopy = observer;
  if (currentCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(_GCGameOverlayMonitor *)self addObserver:observerCopy];
      [observerCopy gameOverlayPresentationChanged:{-[_GCGameOverlayMonitor isOverlayPresented](self, "isOverlayPresented")}];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51___GCGameOverlayMonitor_addObserver_notifyCurrent___block_invoke;
      v7[3] = &unk_1E8418C50;
      v7[4] = self;
      v8 = observerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }

  else
  {
    [(_GCGameOverlayMonitor *)self addObserver:observerCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)setOverlayPresented:(BOOL)presented
{
  presentedCopy = presented;
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(_GCGameOverlayMonitor *)self isOverlayPresented]!= presentedCopy)
  {
    if (presentedCopy)
    {
      v5 = "Game Overlay Presented";
    }

    else
    {
      v5 = "Game Overlay Dismissed";
    }

    v6 = _os_activity_create(&dword_1D2CD5000, v5, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSMutableSet *)selfCopy->_observers copy];
    objc_sync_exit(selfCopy);

    [(_GCGameOverlayMonitor *)selfCopy willChangeValueForKey:@"overlayPresented"];
    v9 = atomic_exchange_explicit(&selfCopy->_overlayPresented, presentedCopy, memory_order_release);
    [(_GCGameOverlayMonitor *)selfCopy didChangeValueForKey:@"overlayPresented"];
    if ((v9 & 1) != presentedCopy)
    {
      ++selfCopy->stats.overlayPresentationChangedCount;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v11)
      {
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v14 + 1) + 8 * v13++) gameOverlayPresentationChanged:{presentedCopy, v14}];
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v11);
      }
    }

    os_activity_scope_leave(&state);
  }
}

+ (BOOL)currentProcessIsOverlayUI
{
  if (currentProcessIsOverlayUI_onceToken != -1)
  {
    +[_GCGameOverlayMonitor currentProcessIsOverlayUI];
  }

  return currentProcessIsOverlayUI_IsGameOverlayUI;
}

- (void)_refreshState
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = self[5];
    if (v2)
    {
      state64 = 0;
      state = notify_get_state(v2, &state64);
      if (state)
      {
        v5 = state;
        isInternalBuild = gc_isInternalBuild(state, v4);
        if (isInternalBuild)
        {
          v7 = getGCLogger(isInternalBuild);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v10 = v5;
            _os_log_error_impl(&dword_1D2CD5000, v7, OS_LOG_TYPE_ERROR, "Failed load 'dashboardVisibilityChanged' notification state: %#x", buf, 8u);
          }
        }
      }

      else
      {
        [self setOverlayPresented:state64 != 0];
      }
    }
  }
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_error_impl(&dword_1D2CD5000, self, OS_LOG_TYPE_ERROR, "Failed to register for 'dashboardVisibilityChanged' notification: %#x", v4, 8u);
  }
}

@end