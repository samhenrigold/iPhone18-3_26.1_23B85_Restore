@interface EKAccountRefresher
- (BOOL)_allCalendarsRefreshed;
- (BOOL)_allSourcesRefreshed;
- (BOOL)_areAnyCalendarsCurrentlySyncing;
- (BOOL)_areAnySourcesCurrentlySyncing;
- (BOOL)allAccountsOffline;
- (BOOL)calendarFinishedRefreshing:(id)refreshing;
- (BOOL)sourceFinishedRefreshing:(id)refreshing;
- (EKAccountRefresher)initWithEventStore:(id)store;
- (EKAccountRefresherDelegate)delegate;
- (void)_eventStoreChanged:(id)changed;
- (void)_refreshControlMaximumVisibleTimeElapsed;
- (void)_syncCompleted;
- (void)_syncDidEnd;
- (void)_syncStartTimeoutExpired;
- (void)refresh;
@end

@implementation EKAccountRefresher

- (EKAccountRefresher)initWithEventStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = EKAccountRefresher;
  v6 = [(EKAccountRefresher *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, store);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__eventStoreChanged_ name:@"EKEventStoreChangedNotification" object:storeCopy];
  }

  return v7;
}

- (void)_eventStoreChanged:(id)changed
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_refreshing)
  {
    _areAnySourcesCurrentlySyncing = [(EKAccountRefresher *)self _areAnySourcesCurrentlySyncing];
    _areAnyCalendarsCurrentlySyncing = [(EKAccountRefresher *)self _areAnyCalendarsCurrentlySyncing];
    v6 = _areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing;
    currentlySyncing = self->_currentlySyncing;
    v8 = EKLogHandle;
    v9 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT);
    if (currentlySyncing == v6)
    {
      if (v9)
      {
        v11 = 67109632;
        v12 = _areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing;
        v13 = 1024;
        v14 = _areAnySourcesCurrentlySyncing;
        v15 = 1024;
        v16 = _areAnyCalendarsCurrentlySyncing;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "[EKAccountRefresher _eventStoreChanged], and _currentlySyncing is still %{BOOL}i (sources=%{BOOL}i; calendars=%{BOOL}i)", &v11, 0x14u);
      }
    }

    else
    {
      if (v9)
      {
        v10 = self->_currentlySyncing;
        v11 = 67109888;
        v12 = v10;
        v13 = 1024;
        v14 = _areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing;
        v15 = 1024;
        v16 = _areAnySourcesCurrentlySyncing;
        v17 = 1024;
        v18 = _areAnyCalendarsCurrentlySyncing;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "[EKAccountRefresher _eventStoreChanged], and _currentlySyncing changed from %{BOOL}i to %{BOOL}i (sources=%{BOOL}i; calendars=%{BOOL}i)", &v11, 0x1Au);
      }

      self->_currentlySyncing = v6;
      if (_areAnySourcesCurrentlySyncing || _areAnyCalendarsCurrentlySyncing)
      {
        [(EKAccountRefresher *)self _syncDidStart];
      }

      else
      {
        [(EKAccountRefresher *)self _syncDidEnd];
      }
    }
  }
}

- (void)_syncDidEnd
{
  if ([(EKAccountRefresher *)self _allSourcesRefreshed]&& [(EKAccountRefresher *)self _allCalendarsRefreshed])
  {

    [(EKAccountRefresher *)self _syncCompleted];
  }

  else
  {

    [(EKAccountRefresher *)self _beginSyncStartTimeout];
  }
}

- (BOOL)_allSourcesRefreshed
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_refreshingSources;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (![(EKAccountRefresher *)self sourceFinishedRefreshing:v8, v12])
        {
          v10 = EKLogHandle;
          v9 = 0;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "%@ has not yet finished refreshing", buf, 0xCu);
            v9 = 0;
          }

          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (BOOL)_areAnySourcesCurrentlySyncing
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_refreshingSources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isSyncing])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_allCalendarsRefreshed
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_refreshingCalendars;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (![(EKAccountRefresher *)self calendarFinishedRefreshing:v8, v12])
        {
          v10 = EKLogHandle;
          v9 = 0;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = v8;
            _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "%@ has not yet finished refreshing", buf, 0xCu);
            v9 = 0;
          }

          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (BOOL)_areAnyCalendarsCurrentlySyncing
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_refreshingCalendars;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isSyncing])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)refresh
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_refreshStartDate)
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v2, OS_LOG_TYPE_DEFAULT, "Calling [EKAccountRefresher refresh] more than once is not supported.", buf, 2u);
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    refreshStartDate = self->_refreshStartDate;
    self->_refreshStartDate = date;

    [(EKAccountRefresher *)self _beginMaximumTimeElapsedTimeout];
    [(EKAccountRefresher *)self _beginSyncStartTimeout];
    self->_refreshing = 1;
    mEMORY[0x1E69998A8] = [MEMORY[0x1E69998A8] sharedConnection];
    [mEMORY[0x1E69998A8] resetTimersAndWarnings];

    selfCopy = self;
    v7 = [(EKEventStore *)self->_eventStore refreshEverythingIfNecessary:1];
    v8 = [v7 mutableCopy];

    v9 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [v15 calendarsForEntityType:0];
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v30 + 1) + 8 * j);
                if ([v21 isSubscribed] && (objc_msgSend(v21, "isSubscribedHolidayCalendar") & 1) == 0)
                {
                  [v9 addObject:v21];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v30 objects:v42 count:16];
            }

            while (v18);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v12);
    }

    v22 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_23];
    [v10 filterUsingPredicate:v22];

    v23 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v10 count];
      v26 = [v9 count];
      *buf = 134218240;
      v39 = v25;
      v40 = 2048;
      v41 = v26;
      _os_log_impl(&dword_1A805E000, v24, OS_LOG_TYPE_DEFAULT, "Started a refresh of %lu accounts and %lu subscribed calendars", buf, 0x16u);
    }

    allObjects = [v10 allObjects];
    refreshingSources = selfCopy->_refreshingSources;
    selfCopy->_refreshingSources = allObjects;

    objc_storeStrong(&selfCopy->_refreshingCalendars, v9);
    if (![(NSArray *)selfCopy->_refreshingSources count]&& ![(NSArray *)selfCopy->_refreshingCalendars count])
    {
      [(EKAccountRefresher *)selfCopy _syncCompleted];
    }
  }
}

- (void)_refreshControlMaximumVisibleTimeElapsed
{
  if (self->_refreshing)
  {
    v7 = v2;
    v8 = v3;
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "_refreshControlMaximumVisibleTimeElapsed; calling sync completed", v6, 2u);
    }

    [(EKAccountRefresher *)self _syncCompleted];
    [(EKAccountRefresher *)self _cancelSyncStartTimeout];
  }
}

- (void)_syncStartTimeoutExpired
{
  if (self->_refreshing)
  {
    v7 = v2;
    v8 = v3;
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "timed out waiting for sync to start; calling sync completed", v6, 2u);
    }

    [(EKAccountRefresher *)self _syncCompleted];
    [(EKAccountRefresher *)self _cancelMaximumTimeElapsedTimeout];
  }
}

- (void)_syncCompleted
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    refreshStartDate = self->_refreshStartDate;
    v5 = v3;
    [(NSDate *)refreshStartDate timeIntervalSinceNow];
    v8 = 134217984;
    v9 = -v6;
    _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "Hiding sync spinner after %fs", &v8, 0xCu);
  }

  [(EKAccountRefresher *)self _cancelSyncStartTimeout];
  [(EKAccountRefresher *)self _cancelMaximumTimeElapsedTimeout];
  self->_refreshing = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountRefreshFinished:self];
}

- (BOOL)sourceFinishedRefreshing:(id)refreshing
{
  if (!self->_refreshStartDate)
  {
    return 0;
  }

  lastSyncEndDate = [refreshing lastSyncEndDate];
  v5 = lastSyncEndDate;
  if (lastSyncEndDate)
  {
    v6 = [lastSyncEndDate laterDate:self->_refreshStartDate];
    v7 = v6 == v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)calendarFinishedRefreshing:(id)refreshing
{
  if (!self->_refreshStartDate)
  {
    return 0;
  }

  lastSyncEndDate = [refreshing lastSyncEndDate];
  v5 = lastSyncEndDate;
  if (lastSyncEndDate)
  {
    v6 = [lastSyncEndDate laterDate:self->_refreshStartDate];
    v7 = v6 == v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)allAccountsOffline
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_refreshing && self->_refreshStartDate && ([(NSArray *)self->_refreshingSources count]|| [(NSArray *)self->_refreshingCalendars count]))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = self->_refreshingSources;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
LABEL_7:
      v7 = 0;
      while (1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        if (!-[EKAccountRefresher sourceFinishedRefreshing:](self, "sourceFinishedRefreshing:", v8) || [v8 lastSyncError] != 3)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v5)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v3 = self->_refreshingCalendars;
      v9 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (!v9)
      {
        v14 = 1;
        goto LABEL_26;
      }

      v10 = v9;
      v11 = *v17;
LABEL_16:
      v12 = 0;
      while (1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (!-[EKAccountRefresher calendarFinishedRefreshing:](self, "calendarFinishedRefreshing:", v13, v16) || [v13 lastSyncError] != 3)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
          v14 = 1;
          if (v10)
          {
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }
    }

    v14 = 0;
LABEL_26:

    return v14;
  }

  return 0;
}

- (EKAccountRefresherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end