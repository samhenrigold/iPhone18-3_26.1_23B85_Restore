@interface NUApplicationAppActivityMonitorMacOS
- (NUApplicationAppActivityMonitorMacOS)initWithNotificationCenter:(id)center windowBecameFrontmostNotificationName:(id)name windowLostFrontmostNotificationName:(id)notificationName;
- (int64_t)currentApplicationState;
- (void)_applicationWillTerminate;
- (void)_markWindowAsBackground;
- (void)_markWindowAsForeground;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)performOnApplicationDidEnterBackground:(id)background;
- (void)performOnApplicationWillEnterForeground:(id)foreground;
- (void)performOnApplicationWindowDidBecomeBackground:(id)background;
- (void)performOnApplicationWindowDidBecomeForeground:(id)foreground;
- (void)removeObserver:(id)observer;
- (void)sceneDidBecomeActive;
- (void)sceneDidBecomeActiveWithURL:(id)l sourceApplication:(id)application sceneID:(id)d;
- (void)sceneDidEnterBackground;
- (void)sceneDidEnterBackgroundWithSceneID:(id)d;
- (void)sceneWillConnect;
- (void)sceneWillEnterForeground;
- (void)sceneWillResignActiveWithSceneID:(id)d;
@end

@implementation NUApplicationAppActivityMonitorMacOS

- (NUApplicationAppActivityMonitorMacOS)initWithNotificationCenter:(id)center windowBecameFrontmostNotificationName:(id)name windowLostFrontmostNotificationName:(id)notificationName
{
  nameCopy = name;
  notificationNameCopy = notificationName;
  v21.receiver = self;
  v21.super_class = NUApplicationAppActivityMonitorMacOS;
  v9 = [(NUApplicationAppActivityMonitorMacOS *)&v21 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v9->_observers;
    v9->_observers = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    backgroundObserverBlocks = v9->_backgroundObserverBlocks;
    v9->_backgroundObserverBlocks = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundObserverBlocks = v9->_foregroundObserverBlocks;
    v9->_foregroundObserverBlocks = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    windowBackgroundObserverBlocks = v9->_windowBackgroundObserverBlocks;
    v9->_windowBackgroundObserverBlocks = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    windowForegroundObserverBlocks = v9->_windowForegroundObserverBlocks;
    v9->_windowForegroundObserverBlocks = v18;

    [(NSNotificationCenter *)v9->_notificationCenter addObserver:v9 selector:sel__applicationWillTerminate name:*MEMORY[0x277D76770] object:0];
    [(NSNotificationCenter *)v9->_notificationCenter addObserver:v9 selector:sel__markWindowAsForeground name:nameCopy object:0];
    [(NSNotificationCenter *)v9->_notificationCenter addObserver:v9 selector:sel__markWindowAsBackground name:notificationNameCopy object:0];
  }

  return v9;
}

- (void)dealloc
{
  notificationCenter = [(NUApplicationAppActivityMonitorMacOS *)self notificationCenter];
  [notificationCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NUApplicationAppActivityMonitorMacOS;
  [(NUApplicationAppActivityMonitorMacOS *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  [observers removeObject:observerCopy];
}

- (int64_t)currentApplicationState
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  applicationState = [mEMORY[0x277D75128] applicationState];

  return applicationState;
}

- (void)sceneDidEnterBackground
{
  v25 = *MEMORY[0x277D85DE8];
  [(NUApplicationAppActivityMonitorMacOS *)self _markWindowAsBackground];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  backgroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self backgroundObserverBlocks];
  v4 = [backgroundObserverBlocks countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(backgroundObserverBlocks);
        }

        (*(*(*(&v19 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [backgroundObserverBlocks countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v9 = [observers copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 activityObservingApplicationDidEnterBackground];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)sceneDidEnterBackgroundWithSceneID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(NUApplicationAppActivityMonitorMacOS *)self _markWindowAsBackground];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  backgroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self backgroundObserverBlocks];
  v6 = [backgroundObserverBlocks countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(backgroundObserverBlocks);
        }

        (*(*(*(&v21 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [backgroundObserverBlocks countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v11 = [observers copy];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 activityObservingApplicationDidEnterBackgroundWithSceneID:dCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)sceneDidBecomeActiveWithURL:(id)l sourceApplication:(id)application sceneID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  applicationCopy = application;
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v12 = [observers copy];

  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v17 activityObservingApplicationDidBecomeActiveWithURL:lCopy sourceApplication:applicationCopy sceneID:dCopy];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if ([(NUApplicationAppActivityMonitorMacOS *)selfCopy isBecomingActive])
  {
    [(NUApplicationAppActivityMonitorMacOS *)selfCopy setBecomingActive:0];
    [(NUApplicationAppActivityMonitorMacOS *)selfCopy _markWindowAsForeground];
  }
}

- (void)sceneDidBecomeActive
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingApplicationDidBecomeActive];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if ([(NUApplicationAppActivityMonitorMacOS *)self isBecomingActive])
  {
    [(NUApplicationAppActivityMonitorMacOS *)self setBecomingActive:0];
    [(NUApplicationAppActivityMonitorMacOS *)self _markWindowAsForeground];
  }
}

- (void)sceneWillEnterForeground
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v4 = [observers copy];

  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 activityObservingApplicationWillEnterForeground];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  foregroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self foregroundObserverBlocks];
  v11 = [foregroundObserverBlocks countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(foregroundObserverBlocks);
        }

        (*(*(*(&v15 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [foregroundObserverBlocks countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [(NUApplicationAppActivityMonitorMacOS *)self setBecomingActive:1];
}

- (void)sceneWillConnect
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v3 = [observers copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 activityObservingApplicationDidFinishLaunching];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)sceneWillResignActiveWithSceneID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v6 = [observers copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 activityObservingApplicationWillResignActiveWithSceneID:dCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)performOnApplicationWillEnterForeground:(id)foreground
{
  if (foreground)
  {
    foregroundCopy = foreground;
    foregroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self foregroundObserverBlocks];
    v5 = [foregroundCopy copy];

    [foregroundObserverBlocks addObject:v5];
  }
}

- (void)performOnApplicationDidEnterBackground:(id)background
{
  if (background)
  {
    backgroundCopy = background;
    backgroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self backgroundObserverBlocks];
    v5 = [backgroundCopy copy];

    [backgroundObserverBlocks addObject:v5];
  }
}

- (void)performOnApplicationWindowDidBecomeBackground:(id)background
{
  if (background)
  {
    backgroundCopy = background;
    windowBackgroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self windowBackgroundObserverBlocks];
    v5 = MEMORY[0x25F883F30](backgroundCopy);

    [windowBackgroundObserverBlocks addObject:v5];
  }
}

- (void)performOnApplicationWindowDidBecomeForeground:(id)foreground
{
  if (foreground)
  {
    foregroundCopy = foreground;
    windowForegroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self windowForegroundObserverBlocks];
    v5 = MEMORY[0x25F883F30](foregroundCopy);

    [windowForegroundObserverBlocks addObject:v5];
  }
}

- (void)_markWindowAsForeground
{
  v38 = *MEMORY[0x277D85DE8];
  if (![(NUApplicationAppActivityMonitorMacOS *)self isWindowForeground]&& ![(NUApplicationAppActivityMonitorMacOS *)self isBecomingActive])
  {
    [(NUApplicationAppActivityMonitorMacOS *)self setWindowIsForeground:1];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
    v4 = [observers copy];

    v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v32;
      do
      {
        v8 = 0;
        do
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v31 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 activityObservingApplicationWindowWillBecomeForeground];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v6);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    observers2 = [(NUApplicationAppActivityMonitorMacOS *)self observers];
    v11 = [observers2 copy];

    v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 activityObservingApplicationWindowDidBecomeForeground];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v13);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    windowForegroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self windowForegroundObserverBlocks];
    v18 = [windowForegroundObserverBlocks copy];

    v19 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          (*(*(*(&v23 + 1) + 8 * v22++) + 16))();
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v20);
    }
  }
}

- (void)_markWindowAsBackground
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(NUApplicationAppActivityMonitorMacOS *)self isWindowForeground])
  {
    [(NUApplicationAppActivityMonitorMacOS *)self setWindowIsForeground:0];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
    v4 = [observers copy];

    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 activityObservingApplicationWindowDidBecomeBackground];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    windowBackgroundObserverBlocks = [(NUApplicationAppActivityMonitorMacOS *)self windowBackgroundObserverBlocks];
    v11 = [windowBackgroundObserverBlocks copy];

    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v16 + 1) + 8 * v15++) + 16))();
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)_applicationWillTerminate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(NUApplicationAppActivityMonitorMacOS *)self observers];
  v3 = [observers copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 activityObservingApplicationWillTerminate];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end