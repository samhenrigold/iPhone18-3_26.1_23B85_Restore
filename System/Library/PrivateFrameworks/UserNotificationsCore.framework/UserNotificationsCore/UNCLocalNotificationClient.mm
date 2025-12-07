@interface UNCLocalNotificationClient
- (UNCLocalNotificationClient)initWithNotificationRepository:(id)repository pendingNotificationRepository:(id)notificationRepository notificationScheduleRepository:(id)scheduleRepository locationMonitor:(id)monitor bundleIdentifier:(id)identifier queue:(id)queue;
- (id)_dateFormatter;
- (id)_lastLocalNotificationFireDate;
- (id)_sanitizeNotificationRecords:(id)records;
- (id)pendingNotificationRecords;
- (id)undeliveredNotificationRecords;
- (void)_fireNotification:(id)notification;
- (void)_invalidateNotificationRecordTimersAndRegionMonitors;
- (void)_invalidatePendingNotificationRecordRegionMonitors;
- (void)_invalidatePendingNotificationRecordTimers;
- (void)_queue_triggerDidFireForDate:(id)date;
- (void)_queue_triggerDidFireForRegion:(id)region;
- (void)_queue_triggerDidFireForTimer:(id)timer;
- (void)_setLastLocalNotificationFireDate:(id)date;
- (void)_setPendingNotificationRecords:(id)records;
- (void)_setRequestDateForPendingNotificationRecords:(id)records;
- (void)_updateRegionMonitorsForPendingNotificationRecords:(id)records;
- (void)_updateTimersAndRegionMonitorsForPendingNotificationRecords:(id)records;
- (void)_updateTimersForPendingNotificationRecords:(id)records;
- (void)addPendingNotificationRecords:(id)records;
- (void)dealloc;
- (void)handleApplicationStateRestore;
- (void)handleLocaleChange;
- (void)handleSignificantTimeChange;
- (void)invalidate;
- (void)locationMonitor:(id)monitor triggerDidFireForRegion:(id)region forBundleIdentifier:(id)identifier;
- (void)pendingNotificationRecords;
- (void)removeAllPendingNotificationRecords;
- (void)removePendingNotificationRecords:(id)records;
- (void)removePendingNotificationRecordsWithIdentifiers:(id)identifiers;
- (void)setPendingNotificationRecords:(id)records;
@end

@implementation UNCLocalNotificationClient

- (id)_lastLocalNotificationFireDate
{
  v3 = [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository scheduleForBundleIdentifier:self->_bundleIdentifier];
  previousTriggerDate = [v3 previousTriggerDate];
  if (previousTriggerDate)
  {
    distantPast = previousTriggerDate;
    [previousTriggerDate timeIntervalSinceNow];
    if (v6 > 0.0)
    {
      date = [MEMORY[0x1E695DF00] date];

      [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:date];
      distantPast = date;
    }
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  return distantPast;
}

- (void)_invalidatePendingNotificationRecordTimers
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v6 = 138543362;
    v7 = bundleIdentifier;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidate persistent timer", &v6, 0xCu);
  }

  [(PCPersistentTimer *)self->_localNotificationTimer invalidate];
  localNotificationTimer = self->_localNotificationTimer;
  self->_localNotificationTimer = 0;
}

- (id)_dateFormatter
{
  if (_dateFormatter___once != -1)
  {
    [UNCLocalNotificationClient _dateFormatter];
  }

  v3 = _dateFormatter___dateFormatter;

  return v3;
}

uint64_t __44__UNCLocalNotificationClient__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _dateFormatter___dateFormatter;
  _dateFormatter___dateFormatter = v0;

  v2 = _dateFormatter___dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss'.'SSS Z"];
}

- (UNCLocalNotificationClient)initWithNotificationRepository:(id)repository pendingNotificationRepository:(id)notificationRepository notificationScheduleRepository:(id)scheduleRepository locationMonitor:(id)monitor bundleIdentifier:(id)identifier queue:(id)queue
{
  repositoryCopy = repository;
  notificationRepositoryCopy = notificationRepository;
  scheduleRepositoryCopy = scheduleRepository;
  monitorCopy = monitor;
  identifierCopy = identifier;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v26.receiver = self;
  v26.super_class = UNCLocalNotificationClient;
  v18 = [(UNCLocalNotificationClient *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notificationRepository, repository);
    objc_storeStrong(&v19->_notificationScheduleRepository, scheduleRepository);
    objc_storeStrong(&v19->_pendingNotificationRepository, notificationRepository);
    objc_storeStrong(&v19->_locationMonitor, monitor);
    [(UNCLocationMonitor *)v19->_locationMonitor addObserver:v19 forBundleIdentifier:identifierCopy];
    objc_storeStrong(&v19->_bundleIdentifier, identifier);
    objc_storeStrong(&v19->_queue, queue);
    _pendingNotificationRecords = [(UNCLocalNotificationClient *)v19 _pendingNotificationRecords];
    v21 = [(UNCLocalNotificationClient *)v19 _sanitizeNotificationRecords:_pendingNotificationRecords];
    [(UNCLocalNotificationClient *)v19 _updateTimersAndRegionMonitorsForPendingNotificationRecords:v21];
  }

  return v19;
}

- (void)dealloc
{
  [(UNCLocalNotificationClient *)self _invalidateNotificationRecordTimersAndRegionMonitors];
  [(UNCLocationMonitor *)self->_locationMonitor removeObserver:self forBundleIdentifier:self->_bundleIdentifier];
  v3.receiver = self;
  v3.super_class = UNCLocalNotificationClient;
  [(UNCLocalNotificationClient *)&v3 dealloc];
}

- (void)addPendingNotificationRecords:(id)records
{
  v36 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [recordsCopy count];
    v10 = [recordsCopy valueForKey:@"identifier"];
    v11 = [v10 valueForKey:@"un_logDigest"];
    *buf = 138543874;
    v31 = bundleIdentifier;
    v32 = 2048;
    v33 = v9;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Add %ld pending notifications: %{public}@", buf, 0x20u);
  }

  if (UNIsInternalInstall())
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      [(UNCLocalNotificationClient *)self addPendingNotificationRecords:recordsCopy, v12];
    }
  }

  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([_pendingNotificationRecords count])
  {
    [v14 addObjectsFromArray:_pendingNotificationRecords];
  }

  v23 = _pendingNotificationRecords;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = recordsCopy;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __60__UNCLocalNotificationClient_addPendingNotificationRecords___block_invoke;
        v24[3] = &unk_1E85D71A8;
        v24[4] = v20;
        v21 = [v14 indexesOfObjectsPassingTest:v24];
        if ([v21 count])
        {
          [v14 removeObjectsAtIndexes:v21];
        }

        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1.0];
  [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:v22];

  [(UNCLocalNotificationClient *)self _setRequestDateForPendingNotificationRecords:v15];
  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v14];
}

uint64_t __60__UNCLocalNotificationClient_addPendingNotificationRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)setPendingNotificationRecords:(id)records
{
  v20 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [recordsCopy count];
    v10 = [recordsCopy valueForKey:@"identifier"];
    v11 = [v10 valueForKey:@"un_logDigest"];
    v14 = 138543874;
    v15 = bundleIdentifier;
    v16 = 2048;
    v17 = v9;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %ld pending notifications: %{public}@", &v14, 0x20u);
  }

  if (UNIsInternalInstall())
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      [(UNCLocalNotificationClient *)self setPendingNotificationRecords:recordsCopy, v12];
    }
  }

  [(UNCLocalNotificationClient *)self _setRequestDateForPendingNotificationRecords:recordsCopy];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1.0];
  [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:v13];

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:recordsCopy];
}

- (void)removePendingNotificationRecordsWithIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_queue);
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [identifiersCopy count];
    v9 = [identifiersCopy valueForKey:@"un_logDigest"];
    *buf = 138543874;
    v16 = bundleIdentifier;
    v17 = 2048;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove %ld pending notifications by identifier: %{public}@", buf, 0x20u);
  }

  v10 = [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository pendingNotificationRecordsForBundleIdentifier:self->_bundleIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__UNCLocalNotificationClient_removePendingNotificationRecordsWithIdentifiers___block_invoke;
  v13[3] = &unk_1E85D71D0;
  v14 = identifiersCopy;
  v11 = identifiersCopy;
  v12 = [v10 bs_filter:v13];
  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v12];
}

uint64_t __78__UNCLocalNotificationClient_removePendingNotificationRecordsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)removePendingNotificationRecords:(id)records
{
  v28 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    *buf = 138543618;
    v25 = bundleIdentifier;
    v26 = 2048;
    v27 = [recordsCopy count];
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove %ld pending notifications by match", buf, 0x16u);
  }

  v9 = [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository pendingNotificationRecordsForBundleIdentifier:self->_bundleIdentifier];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __63__UNCLocalNotificationClient_removePendingNotificationRecords___block_invoke;
  v21 = &unk_1E85D71F8;
  v10 = recordsCopy;
  v22 = v10;
  selfCopy = self;
  v11 = [v9 bs_filter:&v18];
  v12 = [v11 count];
  v13 = [v9 count];
  v14 = v13 - [v10 count];
  v15 = *v5;
  v16 = *v5;
  if (v12 <= v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_bundleIdentifier;
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove pending notifications succeeded", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(UNCLocalNotificationClient *)&self->_bundleIdentifier removePendingNotificationRecords:v15];
  }

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v11];
}

uint64_t __63__UNCLocalNotificationClient_removePendingNotificationRecords___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) uns_containsSimilarRecord:v3];
  if (v4)
  {
    v5 = *MEMORY[0x1E6983378];
    if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 40) + 8);
      v7 = v5;
      v8 = [v3 identifier];
      v9 = [v8 un_logDigest];
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will remove notification %{public}@ by match", &v11, 0x16u);
    }
  }

  return v4 ^ 1u;
}

- (void)removeAllPendingNotificationRecords
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v5 = 138543362;
    v6 = bundleIdentifier;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove all pending notifications", &v5, 0xCu);
  }

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:MEMORY[0x1E695E0F0]];
}

- (id)pendingNotificationRecords
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v4 = MEMORY[0x1E6983378];
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v10 = 138543618;
    v11 = bundleIdentifier;
    v12 = 2048;
    v13 = [_pendingNotificationRecords count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Load pending %ld notifications", &v10, 0x16u);
  }

  if (UNIsInternalInstall())
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      [(UNCLocalNotificationClient *)self pendingNotificationRecords];
    }
  }

  return _pendingNotificationRecords;
}

- (id)undeliveredNotificationRecords
{
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v4 = _pendingNotificationRecords;
  if (self->_lazy_pendingNotificationsAwaitingDelivery)
  {
    v5 = [_pendingNotificationRecords arrayByAddingObjectsFromArray:?];

    v4 = v5;
  }

  return v4;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);

  [(UNCLocalNotificationClient *)self _invalidateNotificationRecordTimersAndRegionMonitors];
}

- (void)handleApplicationStateRestore
{
  dispatch_assert_queue_V2(self->_queue);
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  [(UNCLocalNotificationClient *)self _updateTimersAndRegionMonitorsForPendingNotificationRecords:_pendingNotificationRecords];
}

- (void)handleLocaleChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringLocaleAndTimeChanges)
  {
    _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
    [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:_pendingNotificationRecords];
  }
}

- (void)handleSignificantTimeChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringLocaleAndTimeChanges)
  {
    _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
    [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:_pendingNotificationRecords];
  }
}

- (void)_setRequestDateForPendingNotificationRecords:(id)records
{
  v15 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  date = [MEMORY[0x1E695DF00] date];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setRequestDate:{date, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setPendingNotificationRecords:(id)records
{
  v20 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = [(UNCLocalNotificationClient *)self _sanitizeNotificationRecords:recordsCopy];
  v6 = [v5 mutableCopy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__UNCLocalNotificationClient__setPendingNotificationRecords___block_invoke;
  v11[3] = &unk_1E85D7220;
  v11[4] = &v12;
  [v6 enumerateObjectsUsingBlock:v11];
  v7 = v13[3];
  if (v7 >= 0x15)
  {
    [v6 removeObjectsInRange:{20, v7 - 20}];
  }

  if ([v6 count] >= 0x41)
  {
    [v6 removeObjectsInRange:{0, objc_msgSend(v6, "count") - 64}];
  }

  v8 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v10 = [v6 count];
    *buf = 138543618;
    v17 = bundleIdentifier;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save pending %ld notifications to pending notification repository", buf, 0x16u);
  }

  [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository setPendingNotificationRecords:v6 forBundleIdentifier:self->_bundleIdentifier];
  [(UNCLocalNotificationClient *)self _updateTimersAndRegionMonitorsForPendingNotificationRecords:v6];
  _Block_object_dispose(&v12, 8);
}

void __61__UNCLocalNotificationClient__setPendingNotificationRecords___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v6 = [a2 triggerType];
  v7 = [v6 isEqualToString:@"Location"];

  if (v7)
  {
    v8 = 0;
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v8 = 1;
  }

  *a4 = v8;
}

- (id)_sanitizeNotificationRecords:(id)records
{
  v50 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  selfCopy = self;
  _lastLocalNotificationFireDate = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v40;
    *&v8 = 138543618;
    v35 = v8;
    v36 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = (*(UNSNotificationRecordToUNNotificationTrigger + 2))(UNSNotificationRecordToUNNotificationTrigger, v12);
        if (([v12 willNotifyUser] & 1) == 0)
        {
          badge = [v12 badge];
          integerValue = [badge integerValue];

          if (!integerValue)
          {
            v30 = *MEMORY[0x1E6983378];
            if (!os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            bundleIdentifier = selfCopy->_bundleIdentifier;
            v19 = v30;
            identifier = [v12 identifier];
            un_logDigest = [identifier un_logDigest];
            *buf = v35;
            v44 = bundleIdentifier;
            v45 = 2114;
            v46 = un_logDigest;
            _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Filtering out notification %{public}@ as it will not notify user on delivery", buf, 0x16u);

            goto LABEL_18;
          }
        }

        if (([v12 triggerRepeats] & 1) == 0)
        {
          date = [v12 date];

          if (date)
          {
            v17 = *MEMORY[0x1E6983378];
            if (!os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            v18 = selfCopy->_bundleIdentifier;
            v19 = v17;
            identifier2 = [v12 identifier];
            un_logDigest2 = [identifier2 un_logDigest];
            date2 = [v12 date];
            *buf = 138543874;
            v44 = v18;
            v6 = v36;
            v45 = 2114;
            v46 = un_logDigest2;
            v47 = 2114;
            v48 = date2;
            _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Expiring out non-repeating notification %{public}@ because it triggered at %{public}@", buf, 0x20u);

LABEL_18:
            goto LABEL_19;
          }
        }

        requestDate = [v12 requestDate];
        v24 = [v13 willTriggerAfterDate:_lastLocalNotificationFireDate withRequestedDate:requestDate];

        if (v24)
        {
          [v37 addObject:v12];
        }

        else
        {
          v25 = *MEMORY[0x1E6983378];
          if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
          {
            v26 = selfCopy->_bundleIdentifier;
            v27 = v25;
            identifier3 = [v12 identifier];
            un_logDigest3 = [identifier3 un_logDigest];
            *buf = 138543874;
            v44 = v26;
            v6 = v36;
            v45 = 2114;
            v46 = un_logDigest3;
            v47 = 2114;
            v48 = _lastLocalNotificationFireDate;
            _os_log_impl(&dword_1DA7A9000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Expiring out notification %{public}@ because it won't trigger after %{public}@", buf, 0x20u);
          }
        }

LABEL_19:
      }

      v9 = [v6 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v9);
  }

  return v37;
}

- (void)_fireNotification:(id)notification
{
  v27 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    identifier = [notificationCopy identifier];
    un_logDigest = [identifier un_logDigest];
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    date = [MEMORY[0x1E695DF00] date];
    v12 = [_dateFormatter stringFromDate:date];
    *buf = 138543874;
    v22 = bundleIdentifier;
    v23 = 2114;
    v24 = un_logDigest;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deliver local notification %{public}@ at %{public}@", buf, 0x20u);
  }

  lazy_pendingNotificationsAwaitingDelivery = self->_lazy_pendingNotificationsAwaitingDelivery;
  if (!lazy_pendingNotificationsAwaitingDelivery)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = self->_lazy_pendingNotificationsAwaitingDelivery;
    self->_lazy_pendingNotificationsAwaitingDelivery = v14;

    lazy_pendingNotificationsAwaitingDelivery = self->_lazy_pendingNotificationsAwaitingDelivery;
  }

  [(NSMutableArray *)lazy_pendingNotificationsAwaitingDelivery addObject:notificationCopy];
  v17 = self->_bundleIdentifier;
  notificationRepository = self->_notificationRepository;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__UNCLocalNotificationClient__fireNotification___block_invoke;
  v19[3] = &unk_1E85D7248;
  v19[4] = self;
  v20 = notificationCopy;
  v18 = notificationCopy;
  [(UNCNotificationRepository *)notificationRepository saveNotificationRecord:v18 shouldRepost:1 forBundleIdentifier:v17 withCompletionHandler:v19];
}

void __48__UNCLocalNotificationClient__fireNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
    {
      __48__UNCLocalNotificationClient__fireNotification___block_invoke_cold_1(a1, v5, v4);
    }
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__UNCLocalNotificationClient__fireNotification___block_invoke_15;
  v9[3] = &unk_1E85D6E70;
  v9[4] = v7;
  v10 = v6;
  dispatch_async(v8, v9);
}

- (void)_updateTimersAndRegionMonitorsForPendingNotificationRecords:(id)records
{
  recordsCopy = records;
  [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:recordsCopy];
  [(UNCLocalNotificationClient *)self _updateRegionMonitorsForPendingNotificationRecords:recordsCopy];
}

- (void)_invalidateNotificationRecordTimersAndRegionMonitors
{
  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordTimers];

  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordRegionMonitors];
}

- (void)_queue_triggerDidFireForTimer:(id)timer
{
  v27[4] = *MEMORY[0x1E69E9840];
  UNCPowerLogUserNotificationTriggerEvent(self->_bundleIdentifier, 1u);
  date = [MEMORY[0x1E695DF00] date];
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    v10 = [_dateFormatter stringFromDate:date];
    *buf = 138543618;
    v21 = bundleIdentifier;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persistent timer fired at %{public}@", buf, 0x16u);
  }

  AssertionID = 0;
  v11 = self->_bundleIdentifier;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.usernotifications.time.%@-%ld", v11, ++_queue_triggerDidFireForTimer__count];
  v26[0] = @"AssertType";
  v26[1] = @"AssertLevel";
  v27[0] = @"NoIdleSleepAssertion";
  v27[1] = &unk_1F5663590;
  v26[2] = @"AssertName";
  v26[3] = @"AssertionOnBehalfOfBundleID";
  v13 = self->_bundleIdentifier;
  v27[2] = v12;
  v27[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v15 = IOPMAssertionCreateWithProperties(v14, &AssertionID);
  if (v15)
  {
    v16 = v15;
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_bundleIdentifier;
      *buf = 138543874;
      v21 = v18;
      v22 = 2114;
      v23 = v12;
      v24 = 1024;
      v25 = v16;
      _os_log_error_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to take power assertion %{public}@: %#x", buf, 0x1Cu);
    }
  }

  [(UNCLocalNotificationClient *)self _queue_triggerDidFireForDate:date];
  if (AssertionID)
  {
    IOPMAssertionRelease(AssertionID);
  }
}

- (void)_queue_triggerDidFireForDate:(id)date
{
  v86 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  _lastLocalNotificationFireDate = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  v63 = _lastLocalNotificationFireDate;
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    v10 = [_dateFormatter stringFromDate:v63];
    _dateFormatter2 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v12 = [_dateFormatter2 stringFromDate:dateCopy];
    *buf = 138543874;
    v78 = bundleIdentifier;
    v79 = 2114;
    v80 = v10;
    v81 = 2114;
    v82 = v12;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Find notifications with current trigger date after last fire date %{public}@ and before %{public}@", buf, 0x20u);

    v5 = MEMORY[0x1E6983378];
    _lastLocalNotificationFireDate = v63;
  }

  selfCopy = self;
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = _pendingNotificationRecords;
  v67 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v67)
  {
    v15 = *v73;
    *&v14 = 138543874;
    v52 = v14;
    v62 = *v73;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v73 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v72 + 1) + 8 * i);
        v18 = (*(UNSNotificationRecordToUNNotificationTrigger + 2))(UNSNotificationRecordToUNNotificationTrigger, v17);
        requestDate = [v17 requestDate];
        v20 = [v18 nextTriggerDateAfterLastTriggerDate:_lastLocalNotificationFireDate withRequestedDate:requestDate];

        if (!v20)
        {
          v31 = *v5;
          if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          loga = selfCopy->_bundleIdentifier;
          v30 = v31;
          identifier = [v17 identifier];
          un_logDigest = [identifier un_logDigest];
          _dateFormatter3 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate2 = [v17 requestDate];
          v36 = [_dateFormatter3 stringFromDate:requestDate2];
          *buf = v52;
          v78 = loga;
          v79 = 2114;
          v80 = un_logDigest;
          v81 = 2114;
          v82 = v36;
          _os_log_impl(&dword_1DA7A9000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has no trigger date", buf, 0x20u);

          v5 = MEMORY[0x1E6983378];
          _lastLocalNotificationFireDate = v63;

          v15 = v62;
          goto LABEL_14;
        }

        v21 = [v20 compare:dateCopy];
        v22 = *v5;
        v23 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
        if (v21 == 1)
        {
          if (!v23)
          {
            goto LABEL_18;
          }

          v56 = selfCopy->_bundleIdentifier;
          log = v22;
          identifier2 = [v17 identifier];
          un_logDigest2 = [identifier2 un_logDigest];
          _dateFormatter4 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate3 = [v17 requestDate];
          v27 = [_dateFormatter4 stringFromDate:requestDate3];
          _dateFormatter5 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          v29 = [_dateFormatter5 stringFromDate:v20];
          *buf = 138544130;
          v78 = v56;
          v79 = 2114;
          v80 = un_logDigest2;
          v81 = 2114;
          v82 = v27;
          v83 = 2114;
          v84 = v29;
          v30 = log;
          _os_log_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a late trigger date %{public}@", buf, 0x2Au);

          v15 = v62;
          _lastLocalNotificationFireDate = v63;

          v5 = MEMORY[0x1E6983378];
LABEL_14:

          goto LABEL_18;
        }

        if (v23)
        {
          v55 = selfCopy->_bundleIdentifier;
          v57 = v22;
          logb = [v17 identifier];
          un_logDigest3 = [logb un_logDigest];
          _dateFormatter6 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate4 = [v17 requestDate];
          v39 = [_dateFormatter6 stringFromDate:requestDate4];
          _dateFormatter7 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          v41 = [_dateFormatter7 stringFromDate:v20];
          *buf = 138544130;
          v78 = v55;
          v79 = 2114;
          v80 = un_logDigest3;
          v81 = 2114;
          v82 = v39;
          v83 = 2114;
          v84 = v41;
          _os_log_impl(&dword_1DA7A9000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a current trigger date %{public}@", buf, 0x2Au);

          v15 = v62;
          v5 = MEMORY[0x1E6983378];

          _lastLocalNotificationFireDate = v63;
        }

        [v17 setDate:{v20, v52}];
        [v58 addObject:v17];
LABEL_18:
      }

      v67 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v67);
  }

  v42 = [v58 sortedArrayUsingComparator:&__block_literal_global_40];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v43 = v58;
  v44 = [v43 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v69;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(UNCLocalNotificationClient *)selfCopy _fireNotification:*(*(&v68 + 1) + 8 * j), v52];
      }

      v45 = [v43 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v45);
  }

  v48 = _lastLocalNotificationFireDate;
  lastObject = [v43 lastObject];
  date = [lastObject date];

  v51 = v48;
  if ([v48 compare:date] == -1)
  {
    v51 = date;
  }

  [(UNCLocalNotificationClient *)selfCopy _setLastLocalNotificationFireDate:v51, v52];
  [(UNCLocalNotificationClient *)selfCopy _setPendingNotificationRecords:obj];
}

uint64_t __59__UNCLocalNotificationClient__queue_triggerDidFireForDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_setLastLocalNotificationFireDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(UNCNotificationSchedule);
  [(UNCNotificationSchedule *)v5 setPreviousTriggerDate:dateCopy];

  [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository setSchedule:v5 forBundleIdentifier:self->_bundleIdentifier];
}

- (void)_updateTimersForPendingNotificationRecords:(id)records
{
  v83 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [recordsCopy count];
    monitoringLocaleAndTimeChanges = self->_monitoringLocaleAndTimeChanges;
    *buf = 138543874;
    v74 = bundleIdentifier;
    v75 = 2048;
    v76 = v8;
    v77 = 1024;
    LODWORD(v78) = monitoringLocaleAndTimeChanges;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update timers for %ld pending notifications (monitoring: %d)", buf, 0x1Cu);
  }

  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordTimers];
  array = [MEMORY[0x1E695DF70] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = recordsCopy;
  v11 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  selfCopy = self;
  if (v11)
  {
    v12 = v11;
    v13 = *v70;
    do
    {
      v14 = 0;
      do
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * v14);
        if (([v15 willNotifyUser] & 1) != 0 || (objc_msgSend(v15, "badge"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "integerValue"), v16, v17 >= 1))
        {
          [array addObject:v15];
        }

        else
        {
          v18 = *MEMORY[0x1E6983378];
          if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
          {
            v19 = selfCopy->_bundleIdentifier;
            v20 = v18;
            identifier = [v15 identifier];
            un_logDigest = [identifier un_logDigest];
            *buf = 138543618;
            v74 = v19;
            self = selfCopy;
            v75 = 2114;
            v76 = un_logDigest;
            _os_log_impl(&dword_1DA7A9000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not scheduling notification %{public}@ that does nothing when fired", buf, 0x16u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v23 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
      v12 = v23;
    }

    while (v23);
  }

  _lastLocalNotificationFireDate = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v24 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_bundleIdentifier;
    v26 = v24;
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    v28 = [_dateFormatter stringFromDate:_lastLocalNotificationFireDate];
    *buf = 138543618;
    v74 = v25;
    v75 = 2114;
    v76 = v28;
    _os_log_impl(&dword_1DA7A9000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Find next notification with current trigger date after last fire date %{public}@", buf, 0x16u);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v29 = array;
  v64 = [v29 countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v64)
  {
    v30 = 0;
    v31 = *v66;
    v54 = *v66;
    v55 = v29;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v66 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v65 + 1) + 8 * i);
        v34 = (*(UNSNotificationRecordToUNNotificationTrigger + 2))(UNSNotificationRecordToUNNotificationTrigger, v33);
        requestDate = [v33 requestDate];
        v36 = [v34 nextTriggerDateAfterLastTriggerDate:_lastLocalNotificationFireDate withRequestedDate:requestDate];
        v37 = *MEMORY[0x1E6983378];
        if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
        {
          v59 = selfCopy->_bundleIdentifier;
          log = v37;
          identifier2 = [v33 identifier];
          un_logDigest2 = [identifier2 un_logDigest];
          _dateFormatter2 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate2 = [v33 requestDate];
          v40 = [_dateFormatter2 stringFromDate:requestDate2];
          _dateFormatter3 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          [_dateFormatter3 stringFromDate:v36];
          v42 = v62 = v30;
          *buf = 138544130;
          v74 = v59;
          v75 = 2114;
          v76 = un_logDigest2;
          v77 = 2114;
          v78 = v40;
          v79 = 2114;
          v80 = v42;
          _os_log_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a trigger date %{public}@", buf, 0x2Au);

          v29 = v55;
          v31 = v54;

          v30 = v62;
        }

        if (v36)
        {
          if (v30)
          {
            v43 = [v30 earlierDate:v36];

            v30 = v43;
          }

          else
          {
            v30 = v36;
          }
        }
      }

      v64 = [v29 countByEnumeratingWithState:&v65 objects:v81 count:16];
    }

    while (v64);

    self = selfCopy;
    if (v30)
    {
      v44 = *MEMORY[0x1E6983378];
      if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
      {
        v45 = selfCopy->_bundleIdentifier;
        v46 = v44;
        _dateFormatter4 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
        v48 = [_dateFormatter4 stringFromDate:v30];
        *buf = 138543618;
        v74 = v45;
        v75 = 2114;
        v76 = v48;
        _os_log_impl(&dword_1DA7A9000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling persistent timer for next local notification at %{public}@", buf, 0x16u);
      }

      v49 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithFireDate:v30 serviceIdentifier:selfCopy->_bundleIdentifier target:selfCopy selector:sel__queue_triggerDidFireForTimer_ userInfo:0];
      localNotificationTimer = selfCopy->_localNotificationTimer;
      selfCopy->_localNotificationTimer = v49;

      [(PCPersistentTimer *)selfCopy->_localNotificationTimer setMinimumEarlyFireProportion:1.0];
      v51 = 1;
      [(PCPersistentTimer *)selfCopy->_localNotificationTimer setUserVisible:1];
      [(PCPersistentTimer *)selfCopy->_localNotificationTimer scheduleInQueue:selfCopy->_queue];
      goto LABEL_39;
    }
  }

  else
  {
  }

  v52 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v53 = self->_bundleIdentifier;
    *buf = 138543362;
    v74 = v53;
    _os_log_impl(&dword_1DA7A9000, v52, OS_LOG_TYPE_DEFAULT, "[%{public}@] No upcoming local notifications", buf, 0xCu);
  }

  v51 = 0;
  v30 = 0;
LABEL_39:
  self->_monitoringLocaleAndTimeChanges = v51;
}

- (void)locationMonitor:(id)monitor triggerDidFireForRegion:(id)region forBundleIdentifier:(id)identifier
{
  regionCopy = region;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__UNCLocalNotificationClient_locationMonitor_triggerDidFireForRegion_forBundleIdentifier___block_invoke;
  v9[3] = &unk_1E85D6E70;
  v9[4] = self;
  v10 = regionCopy;
  v8 = regionCopy;
  dispatch_async(queue, v9);
}

- (void)_queue_triggerDidFireForRegion:(id)region
{
  v51 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  UNCPowerLogUserNotificationTriggerEvent(self->_bundleIdentifier, 2u);
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    identifier = [regionCopy identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543618;
    v48 = bundleIdentifier;
    v49 = 2114;
    v50 = un_logDigest;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location region fired: region=%{public}@", buf, 0x16u);
  }

  v10 = [(UNCLocationMonitor *)self->_locationMonitor isBundleIdentifierAuthorizedForRegionMonitoring:self->_bundleIdentifier];
  v33 = regionCopy;
  identifier2 = [regionCopy identifier];
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  selfCopy = self;
  [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        triggerType = [v15 triggerType];
        if ([triggerType isEqualToString:@"Location"])
        {
          triggerRegion = [v15 triggerRegion];
          identifier3 = [triggerRegion identifier];
          v19 = [identifier3 isEqual:identifier2];

          if (v19)
          {
            date = [MEMORY[0x1E695DF00] date];
            [v15 setDate:date];

            [v34 addObject:v15];
          }
        }

        else
        {
        }
      }

      v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  if ([v34 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v34;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
    selfCopy2 = selfCopy;
    if (v22)
    {
      v24 = v22;
      v25 = *v38;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v21);
          }

          if (v10)
          {
            [(UNCLocalNotificationClient *)selfCopy _fireNotification:*(*(&v37 + 1) + 8 * j)];
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v24);
    }

    v27 = v33;
  }

  else
  {
    v28 = *MEMORY[0x1E6983378];
    selfCopy2 = self;
    v27 = v33;
    if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      identifier4 = [v33 identifier];
      un_logDigest2 = [identifier4 un_logDigest];
      *buf = 138543362;
      v48 = un_logDigest2;
      _os_log_impl(&dword_1DA7A9000, v29, OS_LOG_TYPE_DEFAULT, "Region %{public}@ fired which isn't associated with a notification", buf, 0xCu);
    }
  }

  [(UNCLocalNotificationClient *)selfCopy2 _setPendingNotificationRecords:obj];
}

- (void)_invalidatePendingNotificationRecordRegionMonitors
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v5 = 138543362;
    v6 = bundleIdentifier;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidate region monitors", &v5, 0xCu);
  }

  [(UNCLocationMonitor *)self->_locationMonitor setMonitoredRegions:0 forBundleIdentifier:self->_bundleIdentifier withCompletionHandler:0];
}

- (void)_updateRegionMonitorsForPendingNotificationRecords:(id)records
{
  v26 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    *buf = 138543618;
    v23 = bundleIdentifier;
    v24 = 2048;
    v25 = [recordsCopy count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update regions for %ld pending notifications", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        triggerType = [v14 triggerType];
        if ([triggerType isEqualToString:@"Location"])
        {
          triggerRegion = [v14 triggerRegion];

          if (!triggerRegion)
          {
            continue;
          }

          triggerType = [v14 triggerRegion];
          [v8 addObject:triggerType];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(UNCLocalNotificationClient *)self _setMonitoredRegions:v8];
}

- (void)addPendingNotificationRecords:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 8);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_1DA7A9000, a2, a3, "[%{public}@] Add pending notifications: notifications=%{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)setPendingNotificationRecords:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 8);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_1DA7A9000, a2, a3, "[%{public}@] Set pending notifications: notifications=%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)removePendingNotificationRecords:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Did not remove all expected pending notifications", &v3, 0xCu);
}

- (void)pendingNotificationRecords
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(self + 8);
  v5 = a2;
  v6 = 138543874;
  v7 = v4;
  v8 = 2048;
  v9 = [a3 count];
  v10 = 2114;
  v11 = a3;
  _os_log_debug_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Load pending %ld notifications: notifications=%{public}@", &v6, 0x20u);
}

void __48__UNCLocalNotificationClient__fireNotification___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  v7 = [v4 identifier];
  v8 = [v7 un_logDigest];
  v9 = 138543874;
  v10 = v5;
  v11 = 2114;
  v12 = v8;
  v13 = 2114;
  v14 = a3;
  _os_log_error_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Not delivering user visible local notification %{public}@ [ error=%{public}@ ]", &v9, 0x20u);
}

@end