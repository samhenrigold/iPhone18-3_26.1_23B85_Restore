@interface INCDisplayLayoutMonitor
+ (void)initialize;
- (BOOL)lock_alive;
- (BOOL)shouldObserveMultipleDisplays;
- (INCDisplayLayoutMonitor)init;
- (NSMutableDictionary)layoutMonitorsByIdentity;
- (id)lock_currentDisplayLayouts;
- (id)lock_layoutMonitorsByIdentity;
- (void)dealloc;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
- (void)executeBlockWithLock:(id)lock;
- (void)lock_invalidate;
- (void)lock_resume;
- (void)lock_startLayoutMonitorForDisplay:(id)display;
- (void)setLayoutMonitorsByIdentity:(id)identity;
@end

@implementation INCDisplayLayoutMonitor

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  identityCopy = identity;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__INCDisplayLayoutMonitor_displayMonitor_willDisconnectIdentity___block_invoke;
  v7[3] = &unk_2797E7820;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  [(INCDisplayLayoutMonitor *)self executeBlockWithLock:v7];
}

void __65__INCDisplayLayoutMonitor_displayMonitor_willDisconnectIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutMonitorsByIdentity];
  v4 = [v2 objectForKey:*(a1 + 40)];

  if (v4)
  {
    [v4 invalidate];
  }

  v3 = [*(a1 + 32) layoutMonitorsByIdentity];
  [v3 removeObjectForKey:*(a1 + 40)];
}

- (void)executeBlockWithLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)lock_layoutMonitorsByIdentity
{
  os_unfair_lock_lock(&self->_lock);
  layoutMonitorsByIdentity = [(INCDisplayLayoutMonitor *)self layoutMonitorsByIdentity];
  os_unfair_lock_unlock(&self->_lock);

  return layoutMonitorsByIdentity;
}

- (BOOL)lock_alive
{
  os_unfair_lock_lock(&self->_lock);
  alive = [(INCDisplayLayoutMonitor *)self alive];
  os_unfair_lock_unlock(&self->_lock);
  return alive;
}

- (void)setLayoutMonitorsByIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  layoutMonitorsByIdentity = self->_layoutMonitorsByIdentity;
  self->_layoutMonitorsByIdentity = identityCopy;
}

- (NSMutableDictionary)layoutMonitorsByIdentity
{
  os_unfair_lock_assert_owner(&self->_lock);
  layoutMonitorsByIdentity = self->_layoutMonitorsByIdentity;

  return layoutMonitorsByIdentity;
}

- (void)lock_startLayoutMonitorForDisplay:(id)display
{
  v22 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if ([displayCopy isMainDisplay])
  {
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  }

  else
  {
    if ([displayCopy isExternal])
    {
      v7 = MEMORY[0x277D0AD20];
      v8 = SBSCreateLayoutServiceEndpointForExternalDisplay();
      v6 = [v7 configurationWithEndpoint:v8];

      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_7:
      [v6 setNeedsUserInteractivePriority:1];
      objc_initWeak(location, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__INCDisplayLayoutMonitor_lock_startLayoutMonitorForDisplay___block_invoke;
      v16[3] = &unk_2797E7708;
      objc_copyWeak(&v18, location);
      v9 = displayCopy;
      v17 = v9;
      [v6 setTransitionHandler:v16];
      v10 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v6];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __61__INCDisplayLayoutMonitor_lock_startLayoutMonitorForDisplay___block_invoke_2;
      v13[3] = &unk_2797E7730;
      v13[4] = self;
      v14 = v9;
      v11 = v10;
      v15 = v11;
      [(INCDisplayLayoutMonitor *)self executeBlockWithLock:v13];

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);

      goto LABEL_14;
    }

    if ([displayCopy isCarDisplay])
    {
      CarPlayServicesLibrary();
      configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForCarDisplayMonitor];
    }

    else
    {
      if (![displayCopy isCarInstrumentsDisplay])
      {
        goto LABEL_12;
      }

      CarPlayServicesLibrary();
      configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForCarInstrumentsDisplayMonitor];
    }
  }

  v6 = configurationForDefaultMainDisplayMonitor;
  if (configurationForDefaultMainDisplayMonitor)
  {
    goto LABEL_7;
  }

LABEL_12:
  v12 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    *location = 136315394;
    *&location[4] = "[INCDisplayLayoutMonitor lock_startLayoutMonitorForDisplay:]";
    v20 = 2112;
    v21 = displayCopy;
    _os_log_error_impl(&dword_255503000, v12, OS_LOG_TYPE_ERROR, "%s Unable to start layout monitoring for display because there wasn't a suitable configuration available: %@", location, 0x16u);
  }

LABEL_14:
}

void __61__INCDisplayLayoutMonitor_lock_startLayoutMonitorForDisplay___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained transitionHandler];

  if (v7 && v10)
  {
    v11 = [WeakRetained transitionHandler];
    (v11)[2](v11, v12, *(a1 + 32), v7, v8);
  }
}

void __61__INCDisplayLayoutMonitor_lock_startLayoutMonitorForDisplay___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutMonitorsByIdentity];
  v5 = [v2 objectForKey:*(a1 + 40)];

  if (v5)
  {
    [v5 invalidate];
  }

  v3 = [*(a1 + 32) layoutMonitorsByIdentity];
  [v3 removeObjectForKey:*(a1 + 40)];

  v4 = [*(a1 + 32) layoutMonitorsByIdentity];
  [v4 setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

- (id)lock_currentDisplayLayouts
{
  if (![(INCDisplayLayoutMonitor *)self lock_alive])
  {
    [(INCDisplayLayoutMonitor *)self resume];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__349;
  v14 = __Block_byref_object_dispose__350;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(INCDisplayLayoutMonitor *)self shouldObserveMultipleDisplays])
  {
    lock_layoutMonitorsByIdentity = [(INCDisplayLayoutMonitor *)self lock_layoutMonitorsByIdentity];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__INCDisplayLayoutMonitor_lock_currentDisplayLayouts__block_invoke;
    v9[3] = &unk_2797E76E0;
    v9[4] = &v10;
    [lock_layoutMonitorsByIdentity enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    singleDisplayLayoutMonitor = [(INCDisplayLayoutMonitor *)self singleDisplayLayoutMonitor];
    lock_layoutMonitorsByIdentity = [singleDisplayLayoutMonitor currentLayout];

    displayConfiguration = [lock_layoutMonitorsByIdentity displayConfiguration];
    identity = [displayConfiguration identity];

    if (lock_layoutMonitorsByIdentity && identity)
    {
      [v11[5] setObject:lock_layoutMonitorsByIdentity forKey:identity];
    }
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __53__INCDisplayLayoutMonitor_lock_currentDisplayLayouts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 currentLayout];

  if (v6)
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v5 currentLayout];
    [v7 setObject:v8 forKey:v9];
  }
}

- (void)lock_invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__INCDisplayLayoutMonitor_lock_invalidate__block_invoke;
  v2[3] = &unk_2797E7910;
  v2[4] = self;
  [(INCDisplayLayoutMonitor *)self executeBlockWithLock:v2];
}

void __42__INCDisplayLayoutMonitor_lock_invalidate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setAlive:0];
  if ([*(a1 + 32) shouldObserveMultipleDisplays])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [*(a1 + 32) layoutMonitorsByIdentity];
    v3 = [v2 allValues];

    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v12 + 1) + 8 * i) invalidate];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v8 = [*(a1 + 32) layoutMonitorsByIdentity];
    [v8 removeAllObjects];

    v9 = [*(a1 + 32) displayMonitor];
    [v9 removeObserver:*(a1 + 32)];

    v10 = [*(a1 + 32) displayMonitor];
    [v10 invalidate];
  }

  else
  {
    v11 = [*(a1 + 32) singleDisplayLayoutMonitor];
    [v11 invalidate];
  }
}

- (void)lock_resume
{
  v23 = *MEMORY[0x277D85DE8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __38__INCDisplayLayoutMonitor_lock_resume__block_invoke;
  v21[3] = &unk_2797E7910;
  v21[4] = self;
  [(INCDisplayLayoutMonitor *)self executeBlockWithLock:v21];
  if ([(INCDisplayLayoutMonitor *)self shouldObserveMultipleDisplays])
  {
    displayMonitor = [(INCDisplayLayoutMonitor *)self displayMonitor];
    [displayMonitor addObserver:self];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    displayMonitor2 = [(INCDisplayLayoutMonitor *)self displayMonitor];
    connectedIdentities = [displayMonitor2 connectedIdentities];

    v6 = [connectedIdentities countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(connectedIdentities);
          }

          [(INCDisplayLayoutMonitor *)self lock_startLayoutMonitorForDisplay:*(*(&v17 + 1) + 8 * i)];
        }

        v6 = [connectedIdentities countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v6);
    }
  }

  else
  {
    connectedIdentities = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    [connectedIdentities setNeedsUserInteractivePriority:1];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__INCDisplayLayoutMonitor_lock_resume__block_invoke_2;
    v14 = &unk_2797E7938;
    objc_copyWeak(&v15, &location);
    [connectedIdentities setTransitionHandler:&v11];
    v9 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{connectedIdentities, v11, v12, v13, v14}];
    singleDisplayLayoutMonitor = self->_singleDisplayLayoutMonitor;
    self->_singleDisplayLayoutMonitor = v9;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __38__INCDisplayLayoutMonitor_lock_resume__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained transitionHandler];

  if (v7 && v10)
  {
    v11 = [WeakRetained transitionHandler];
    v12 = [v7 displayConfiguration];
    v13 = [v12 identity];
    (v11)[2](v11, v14, v13, v7, v8);
  }
}

- (BOOL)shouldObserveMultipleDisplays
{
  hasRenderServerAccess = [(INCDisplayLayoutMonitor *)self hasRenderServerAccess];
  if (hasRenderServerAccess)
  {

    LOBYTE(hasRenderServerAccess) = [(INCDisplayLayoutMonitor *)self platformSupportsMultipleDisplays];
  }

  return hasRenderServerAccess;
}

- (void)dealloc
{
  [(INCDisplayLayoutMonitor *)self lock_invalidate];
  v3.receiver = self;
  v3.super_class = INCDisplayLayoutMonitor;
  [(INCDisplayLayoutMonitor *)&v3 dealloc];
}

- (INCDisplayLayoutMonitor)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = INCDisplayLayoutMonitor;
  v2 = [(INCDisplayLayoutMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    if ([(INCDisplayLayoutMonitor *)v2 shouldObserveMultipleDisplays])
    {
      v4 = objc_alloc_init(MEMORY[0x277D0AD38]);
      displayMonitor = v3->_displayMonitor;
      v3->_displayMonitor = v4;
      v6 = v4;

      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      layoutMonitorsByIdentity = v3->_layoutMonitorsByIdentity;
      v3->_layoutMonitorsByIdentity = v7;
    }

    else
    {
      v9 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v14 = "[INCDisplayLayoutMonitor init]";
        _os_log_fault_impl(&dword_255503000, v9, OS_LOG_TYPE_FAULT, "%s Process is using INCDisplayLayoutMonitor but doesn't have access to the render server — multiple display observing will not work", buf, 0xCu);
      }
    }

    v3->_lock._os_unfair_lock_opaque = 0;
    v10 = v3;
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end