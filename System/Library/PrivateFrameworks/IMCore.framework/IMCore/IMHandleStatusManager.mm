@interface IMHandleStatusManager
+ (id)sharedInstance;
- (IMHandleStatusManager)init;
- (id)acquireObservationAssertionForHandle:(id)handle;
- (void)adjustObservingStatusForHandles;
- (void)beginObservingAvailabilityForHandle:(id)handle;
- (void)beginObservingOffGridStateForHandle:(id)handle;
- (void)beginObservingStatusUpdatesForHandle:(id)handle;
- (void)endObservingAvailabilityForHandle:(id)handle;
- (void)endObservingOffGridStateForHandle:(id)handle;
- (void)endObservingStatusUpdatesForHandle:(id)handle;
- (void)invalidateObserver:(id)observer;
@end

@implementation IMHandleStatusManager

- (IMHandleStatusManager)init
{
  v8.receiver = self;
  v8.super_class = IMHandleStatusManager;
  v2 = [(IMHandleStatusManager *)&v8 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    handlesForObserver = v2->_handlesForObserver;
    v2->_handlesForObserver = strongToStrongObjectsMapTable2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED7678A8 != -1)
  {
    sub_1A84E1E5C();
  }

  v3 = qword_1ED767868;

  return v3;
}

- (id)acquireObservationAssertionForHandle:(id)handle
{
  v18 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [handleCopy ID];
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Vending a new observer for handle %@", &v16, 0xCu);
    }
  }

  observers = [(IMHandleStatusManager *)self observers];
  v8 = [handleCopy ID];
  weakObjectsHashTable = [observers objectForKey:v8];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers2 = [(IMHandleStatusManager *)self observers];
    v11 = [handleCopy ID];
    [observers2 setObject:weakObjectsHashTable forKey:v11];

    handlesForObserver = [(IMHandleStatusManager *)self handlesForObserver];
    v13 = [handleCopy ID];
    [handlesForObserver setObject:handleCopy forKey:v13];
  }

  [(IMHandleStatusManager *)self beginObservingStatusUpdatesForHandle:handleCopy];
  v14 = [[IMHandleStatusObserverAssertion alloc] initWithHandle:handleCopy];
  [weakObjectsHashTable addObject:v14];

  return v14;
}

- (void)invalidateObserver:(id)observer
{
  v20 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      handle = [observerCopy handle];
      v7 = [handle ID];
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Invalidating observer for handle %@", &v16, 0xCu);
    }
  }

  observers = [(IMHandleStatusManager *)self observers];
  handle2 = [observerCopy handle];
  v10 = [handle2 ID];
  v11 = [observers objectForKey:v10];

  if (v11)
  {
    if ([v11 containsObject:observerCopy])
    {
      [v11 removeObject:observerCopy];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          handle3 = [observerCopy handle];
          v14 = [handle3 ID];
          v15 = [v11 count];
          v16 = 138412546;
          v17 = v14;
          v18 = 2048;
          v19 = v15;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Remaining observers for handle %@: %lu", &v16, 0x16u);
        }
      }
    }
  }

  [(IMHandleStatusManager *)self adjustObservingStatusForHandles];
}

- (void)adjustObservingStatusForHandles
{
  v27 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Checking whether to unsubscribe handles", buf, 2u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  observers = [(IMHandleStatusManager *)self observers];
  dictionaryRepresentation = [observers dictionaryRepresentation];

  v6 = [dictionaryRepresentation countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = *v21;
    *&v7 = 138412290;
    v19 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(dictionaryRepresentation);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        observers2 = [(IMHandleStatusManager *)self observers];
        v12 = [observers2 objectForKey:v10];

        if (!v12 || ![v12 count])
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v25 = v10;
              _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "No more observers for handle %@, ending observing status updates", buf, 0xCu);
            }
          }

          handlesForObserver = [(IMHandleStatusManager *)self handlesForObserver];
          v15 = [handlesForObserver objectForKey:v10];

          if (v15)
          {
            [(IMHandleStatusManager *)self endObservingStatusUpdatesForHandle:v15];
            observers3 = [(IMHandleStatusManager *)self observers];
            [observers3 removeObjectForKey:v10];

            handlesForObserver2 = [(IMHandleStatusManager *)self handlesForObserver];
            [handlesForObserver2 removeObjectForKey:v10];
          }

          else if (IMOSLoggingEnabled())
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v25 = v10;
              _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "No IMHandle found for handle %@", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [dictionaryRepresentation countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }
}

- (void)beginObservingStatusUpdatesForHandle:(id)handle
{
  v9 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [handleCopy ID];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Status manager beginning observing for handle: %@", &v7, 0xCu);
    }
  }

  [(IMHandleStatusManager *)self beginObservingAvailabilityForHandle:handleCopy];
  [(IMHandleStatusManager *)self beginObservingOffGridStateForHandle:handleCopy];
}

- (void)beginObservingAvailabilityForHandle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Not beginnign observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = [handleCopy ID];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Received request to begin observing availability for: %@", buf, 0xCu);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A835775C;
    aBlock[3] = &unk_1E7813478;
    v8 = v6;
    v20 = v8;
    v9 = _Block_copy(aBlock);
    v10 = +[IMHandleAvailabilityManager sharedInstance];
    v11 = [v10 statusSubscriptionForHandle:handleCopy];

    if (v11)
    {
      v9[2](v9, v11);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [handleCopy ID];
          *buf = 138412290;
          v22 = v13;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
        }
      }

      v14 = +[IMHandleAvailabilityManager sharedInstance];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A8357A00;
      v15[3] = &unk_1E78134A0;
      v16 = handleCopy;
      selfCopy = self;
      v18 = v9;
      [v14 fetchUpdatedStatusForHandle:v16 completion:v15];
    }
  }
}

- (void)endObservingAvailabilityForHandle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Not ending observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = [handleCopy ID];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8358024;
    aBlock[3] = &unk_1E7813478;
    v7 = v6;
    v20 = v7;
    v8 = _Block_copy(aBlock);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v7;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Received request to end observing availability for: %@", buf, 0xCu);
      }
    }

    v10 = +[IMHandleAvailabilityManager sharedInstance];
    v11 = [v10 statusSubscriptionForHandle:handleCopy];

    if (v11)
    {
      v8[2](v8, v11);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [handleCopy ID];
          *buf = 138412290;
          v22 = v13;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
        }
      }

      v14 = +[IMHandleAvailabilityManager sharedInstance];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A83582C4;
      v15[3] = &unk_1E78134A0;
      v16 = handleCopy;
      selfCopy = self;
      v18 = v8;
      [v14 fetchUpdatedStatusForHandle:v16 completion:v15];
    }
  }
}

- (void)beginObservingOffGridStateForHandle:(id)handle
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = [handleCopy ID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received request to begin observing offgrid status for: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A835886C;
  aBlock[3] = &unk_1E7813478;
  v7 = v5;
  v19 = v7;
  v8 = _Block_copy(aBlock);
  mEMORY[0x1E69A80A8] = [MEMORY[0x1E69A80A8] sharedInstance];
  v10 = [mEMORY[0x1E69A80A8] cachedStatusSubscriptionForHandle:handleCopy];

  if (v10)
  {
    v8[2](v8, v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [handleCopy ID];
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing offgrid status (yet).", buf, 0xCu);
      }
    }

    mEMORY[0x1E69A80A8]2 = [MEMORY[0x1E69A80A8] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8358B10;
    v14[3] = &unk_1E78134A0;
    v15 = handleCopy;
    selfCopy = self;
    v17 = v8;
    [mEMORY[0x1E69A80A8]2 fetchUpdatedStatusForHandle:v15 completion:v14];
  }
}

- (void)endObservingOffGridStateForHandle:(id)handle
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = [handleCopy ID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received request to end observing offgrid status for: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83590B8;
  aBlock[3] = &unk_1E7813478;
  v7 = v5;
  v19 = v7;
  v8 = _Block_copy(aBlock);
  mEMORY[0x1E69A80A8] = [MEMORY[0x1E69A80A8] sharedInstance];
  v10 = [mEMORY[0x1E69A80A8] cachedStatusSubscriptionForHandle:handleCopy];

  if (v10)
  {
    v8[2](v8, v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [handleCopy ID];
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing offgrid status (yet).", buf, 0xCu);
      }
    }

    mEMORY[0x1E69A80A8]2 = [MEMORY[0x1E69A80A8] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8359358;
    v14[3] = &unk_1E78134A0;
    v15 = handleCopy;
    selfCopy = self;
    v17 = v8;
    [mEMORY[0x1E69A80A8]2 fetchUpdatedStatusForHandle:v15 completion:v14];
  }
}

- (void)endObservingStatusUpdatesForHandle:(id)handle
{
  v9 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [handleCopy ID];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Status manager ending observing for handle: %@", &v7, 0xCu);
    }
  }

  [(IMHandleStatusManager *)self endObservingAvailabilityForHandle:handleCopy];
  [(IMHandleStatusManager *)self endObservingOffGridStateForHandle:handleCopy];
}

@end