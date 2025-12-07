@interface HDMedicationNotificationSyncManager
- (BOOL)_clearMemoryCache;
- (BOOL)_shouldSendHoldInstructionForNewDoseEvent:(id)event;
- (BOOL)_shouldSendHoldInstructionForOldScheduleItem:(id)item compareWithNewScheduleItem:(id)scheduleItem;
- (HDMedicationNotificationSyncManager)init;
- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension;
- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension notificationSyncClient:(id)client;
- (id)_fetchAllScheduleItemsWithTransaction:(uint64_t)transaction error:;
- (id)_getAndReleaseCachedScheduleItemsForSchedules:(uint64_t)schedules;
- (int64_t)isScheduleItemOnHold:(id)hold errorOut:(id *)out;
- (uint64_t)_hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:(uint64_t)identifier;
- (void)_broadcastNotificationSchedule:(uint64_t)schedule withOldScheduleItem:(void *)item andNewScheduleItem:(void *)scheduleItem;
- (void)_cacheScheduleItems:(void *)items forSchedules:;
- (void)_didRescheduleLocalSchedules:(void *)schedules transaction:;
- (void)_handleDismissInstructions;
- (void)_handleHoldInstructions;
- (void)_handleScheduleItemsChangeForSchedule:(id)schedule withOldScheduleItems:(id)items andNewScheduleItems:(id)scheduleItems;
- (void)_updateNotificationSentTimeForScheduleItemIdentifier:(uint64_t)identifier;
- (void)_willRescheduleLocalSchedules:(void *)schedules transaction:;
- (void)doseEventsAdded:(id)added;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
- (void)scheduleManager:(id)manager transaction:(id)transaction didReschedule:(id)reschedule;
- (void)scheduleManager:(id)manager transaction:(id)transaction willReschedule:(id)reschedule;
@end

@implementation HDMedicationNotificationSyncManager

- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension
{
  v4 = MEMORY[0x277D107B8];
  extensionCopy = extension;
  v6 = [v4 alloc];
  profile = [extensionCopy profile];
  v8 = *MEMORY[0x277CCE3D8];
  v9 = HKCreateSerialDispatchQueue();
  v10 = [v6 initWithProfile:profile clientIdentifier:v8 queue:v9];

  v11 = [(HDMedicationNotificationSyncManager *)self initWithProfileExtension:extensionCopy notificationSyncClient:v10];
  return v11;
}

- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension notificationSyncClient:(id)client
{
  extensionCopy = extension;
  clientCopy = client;
  v22.receiver = self;
  v22.super_class = HDMedicationNotificationSyncManager;
  v8 = [(HDMedicationNotificationSyncManager *)&v22 init];
  if (v8)
  {
    profile = [extensionCopy profile];
    objc_storeWeak(&v8->_profile, profile);

    objc_storeStrong(&v8->_notificationSyncClient, client);
    [(HDNotificationSyncClient *)v8->_notificationSyncClient setDelegate:v8];
    WeakRetained = objc_loadWeakRetained(&v8->_profile);
    notificationManager = [WeakRetained notificationManager];
    notificationManager = v8->_notificationManager;
    v8->_notificationManager = notificationManager;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scheduleDict = v8->_scheduleDict;
    v8->_scheduleDict = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    broadcastedScheduleItemIdentifiers = v8->_broadcastedScheduleItemIdentifiers;
    v8->_broadcastedScheduleItemIdentifiers = v15;

    *&v8->_scheduleDictLock._os_unfair_lock_opaque = 0;
    v17 = objc_loadWeakRetained(&v8->_profile);
    syncIdentityManager = [v17 syncIdentityManager];
    syncIdentityManager = v8->_syncIdentityManager;
    v8->_syncIdentityManager = syncIdentityManager;

    medicationScheduleManager = [extensionCopy medicationScheduleManager];
    [medicationScheduleManager registerSynchronousObserver:v8];
  }

  return v8;
}

- (HDMedicationNotificationSyncManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (int64_t)isScheduleItemOnHold:(id)hold errorOut:(id *)out
{
  holdCopy = hold;
  v7 = [(HDNotificationSyncClient *)self->_notificationSyncClient notificationHoldInstructionsWithError:out];
  _HKInitializeLogging();
  v8 = HKLogMedication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(HDMedicationNotificationSyncManager *)self isScheduleItemOnHold:v7 errorOut:v10];
    }
  }

  if (v7)
  {
    v11 = [MEMORY[0x277CCD6C0] categoryIdentifierFromScheduleItemIdentifier:holdCopy];
    if ([v7 containsObject:v11])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)scheduleManager:(id)manager transaction:(id)transaction willReschedule:(id)reschedule
{
  v16 = *MEMORY[0x277D85DE8];
  rescheduleCopy = reschedule;
  transactionCopy = transaction;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = 138543618;
    v13 = v10;
    v14 = 2048;
    v15 = [rescheduleCopy count];
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will reschedule for %ld local schedules", &v12, 0x16u);
  }

  [(HDMedicationNotificationSyncManager *)self _willRescheduleLocalSchedules:rescheduleCopy transaction:transactionCopy];
}

- (void)scheduleManager:(id)manager transaction:(id)transaction didReschedule:(id)reschedule
{
  v16 = *MEMORY[0x277D85DE8];
  rescheduleCopy = reschedule;
  transactionCopy = transaction;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = 138543618;
    v13 = v10;
    v14 = 2048;
    v15 = [rescheduleCopy count];
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did reschedule for %ld local schedules", &v12, 0x16u);
  }

  [(HDMedicationNotificationSyncManager *)self _didRescheduleLocalSchedules:rescheduleCopy transaction:transactionCopy];
}

void __80__HDMedicationNotificationSyncManager__didRescheduleLocalSchedules_transaction___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v20;
    *&v4 = 138543618;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 UUID];
        v11 = [v10 UUIDString];
        v12 = [v9 objectForKeyedSubscript:v11];

        if (v12)
        {
          [*(a1 + 48) _handleScheduleItemsChangeForSchedule:v8 withOldScheduleItems:v12 andNewScheduleItems:*(a1 + 56)];
        }

        else
        {
          _HKInitializeLogging();
          v13 = HKLogMedication();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = objc_opt_class();
            v18 = v14;
            v15 = [v8 UUID];
            v16 = [v15 UUIDString];
            *buf = v17;
            v24 = v14;
            v25 = 2114;
            v26 = v16;
            _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Weird, beforeChangeItems is nil. scheduleUUID=[%{public}@]", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }
}

uint64_t __83__HDMedicationNotificationSyncManager__fetchAllScheduleItemsWithTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];

  return 1;
}

- (void)_handleScheduleItemsChangeForSchedule:(id)schedule withOldScheduleItems:(id)items andNewScheduleItems:(id)scheduleItems
{
  v43 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  itemsCopy = items;
  scheduleItemsCopy = scheduleItems;
  if ([itemsCopy count])
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = itemsCopy;
    v10 = itemsCopy;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        v14 = 0;
        do
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          v16 = [v10 objectForKeyedSubscript:v15];
          v17 = [scheduleItemsCopy objectForKeyedSubscript:v15];
          if (!v17)
          {
            [v31 addObject:v15];
          }

          if ([(HDMedicationNotificationSyncManager *)self _shouldSendHoldInstructionForOldScheduleItem:v16 compareWithNewScheduleItem:v17])
          {
            [HDMedicationNotificationSyncManager _broadcastNotificationSchedule:scheduleCopy withOldScheduleItem:v16 andNewScheduleItem:?];
          }

          else
          {
            _HKInitializeLogging();
            v18 = HKLogMedication();
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

            if (v19)
            {
              v20 = HKLogMedication();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v21 = objc_opt_class();
                *buf = 138543874;
                selfCopy = v21;
                v38 = 2114;
                v39 = v16;
                v40 = 2114;
                v41 = v17;
                v22 = v21;
                _os_log_debug_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Not broadcasting for oldItem=[%{public}@], newItem=[%{public}@]", buf, 0x20u);
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v23 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
        v12 = v23;
      }

      while (v23);
    }

    v24 = v31;
    if ([v31 count])
    {
      _HKInitializeLogging();
      v25 = HKLogMedication();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_25181C000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing delivered notifications from local device for scheduleItemIdentifiers: %@", buf, 0x16u);
      }

      [(HDNotificationManager *)self->_notificationManager removeDeliveredNotificationsForScheduleItemIdentifiers:v31];
    }

    itemsCopy = v29;
  }

  else
  {
    _HKInitializeLogging();
    v24 = HKLogMedication();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = v26;
      uUID = [scheduleCopy UUID];
      *buf = 138543618;
      selfCopy = v26;
      v38 = 2114;
      v39 = uUID;
      _os_log_impl(&dword_25181C000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] oldItems is empty. scheduleUUID=[%{public}@]", buf, 0x16u);
    }
  }
}

- (BOOL)_clearMemoryCache
{
  os_unfair_lock_lock(&self->_scheduleDictLock);
  [(NSMutableDictionary *)self->_scheduleDict removeAllObjects];
  os_unfair_lock_unlock(&self->_scheduleDictLock);
  os_unfair_lock_lock(&self->_scheduleItemIdentifiersLock);
  [(NSMutableDictionary *)self->_broadcastedScheduleItemIdentifiers removeAllObjects];
  os_unfair_lock_unlock(&self->_scheduleItemIdentifiersLock);
  return 1;
}

- (void)doseEventsAdded:(id)added
{
  v47 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    *buf = 138543618;
    v41 = v6;
    v42 = 2048;
    v43 = [addedCopy count];
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] New HKMedicationDoseEvents are added. Count: %lu", buf, 0x16u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = addedCopy;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v37;
    *&v9 = 138543874;
    v32 = v9;
    v33 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        if ([(HDMedicationNotificationSyncManager *)self _shouldSendHoldInstructionForNewDoseEvent:v13, v32])
        {
          v14 = objc_alloc(MEMORY[0x277CCD6C0]);
          scheduleItemIdentifier = [v13 scheduleItemIdentifier];
          v16 = [v14 initWithAction:2 scheduleItemIdentifier:scheduleItemIdentifier];

          v17 = objc_alloc(MEMORY[0x277D107A8]);
          uUID = [v13 UUID];
          v19 = [v17 initWithUUID:uUID];

          _HKInitializeLogging();
          v20 = HKLogMedication();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            v22 = v21;
            categoryIdentifier = [v16 categoryIdentifier];
            *buf = 138543618;
            v41 = v21;
            v42 = 2114;
            v43 = categoryIdentifier;

            v11 = v33;
          }

          notificationSyncClient = self->_notificationSyncClient;
          v35 = 0;
          v25 = [(HDNotificationSyncClient *)notificationSyncClient sendNotificationInstruction:v16 criteria:v19 error:&v35];
          v26 = v35;
          if (v25)
          {
            scheduleItemIdentifier2 = [v13 scheduleItemIdentifier];
            [(HDMedicationNotificationSyncManager *)self _updateNotificationSentTimeForScheduleItemIdentifier:scheduleItemIdentifier2];
          }

          else
          {
            _HKInitializeLogging();
            scheduleItemIdentifier2 = HKLogMedication();
            if (os_log_type_enabled(scheduleItemIdentifier2, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_opt_class();
              v29 = v28;
              scheduleItemIdentifier3 = [v13 scheduleItemIdentifier];
              *buf = v32;
              v41 = v28;
              v42 = 2114;
              v43 = scheduleItemIdentifier3;
              v44 = 2114;
              v45 = v26;

              v11 = v33;
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v31 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      v10 = v31;
    }

    while (v31);
  }
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  clientCopy = client;
  switch(action)
  {
    case 3:
      _HKInitializeLogging();
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationNotificationSyncManager notificationSyncClient:v8 didReceiveInstructionWithAction:?];
      }

      break;
    case 2:
      [(HDMedicationNotificationSyncManager *)self _handleHoldInstructions];
      break;
    case 1:
      [(HDMedicationNotificationSyncManager *)self _handleDismissInstructions];
      break;
  }
}

- (void)_willRescheduleLocalSchedules:(void *)schedules transaction:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v13 = 0;
    v6 = [(HDMedicationNotificationSyncManager *)self _fetchAllScheduleItemsWithTransaction:schedules error:&v13];
    v7 = v13;
    if (v6)
    {
      [(HDMedicationNotificationSyncManager *)self _cacheScheduleItems:v6 forSchedules:v5];
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v14 = 138543618;
        v15 = v9;
        OUTLINED_FUNCTION_1_5();
        v16 = v7;
        v11 = v10;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v8, v12, "[%{public}@] Fetch schedule items returned nil with error: [%{public}@]", &v14);
      }
    }
  }
}

- (void)_didRescheduleLocalSchedules:(void *)schedules transaction:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  schedulesCopy = schedules;
  if (self)
  {
    v7 = [(HDMedicationNotificationSyncManager *)self _getAndReleaseCachedScheduleItemsForSchedules:v5];
    v22 = 0;
    v8 = [(HDMedicationNotificationSyncManager *)self _fetchAllScheduleItemsWithTransaction:schedulesCopy error:&v22];
    v9 = v22;
    if (v8)
    {
      OUTLINED_FUNCTION_0_3();
      v15 = 3221225472;
      v16 = __80__HDMedicationNotificationSyncManager__didRescheduleLocalSchedules_transaction___block_invoke;
      v17 = &unk_2796CDE38;
      v18 = v5;
      v19 = v7;
      selfCopy = self;
      v21 = v8;
      [schedulesCopy onCommit:v14 orRollback:0];

      v10 = v18;
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v23 = 138543618;
        v24 = v11;
        v25 = 2114;
        v26 = v9;
        v12 = v11;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v10, v13, "[%{public}@] Fetch schedule items returned nil with error: [%{public}@]", &v23);
      }
    }
  }
}

- (id)_fetchAllScheduleItemsWithTransaction:(uint64_t)transaction error:
{
  if (self)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a2;
    v6 = objc_alloc_init(v4);
    OUTLINED_FUNCTION_0_3();
    v13 = 3221225472;
    v14 = __83__HDMedicationNotificationSyncManager__fetchAllScheduleItemsWithTransaction_error___block_invoke;
    v15 = &unk_2796CD618;
    v16 = v7;
    v8 = v7;
    LODWORD(transaction) = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:0 orderingTerms:0 transaction:v5 error:transaction enumerationHandler:v12];

    if (transaction)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_cacheScheduleItems:(void *)items forSchedules:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  itemsCopy = items;
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    [*(self + 8) removeAllObjects];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = itemsCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(self + 8);
          uUID = [*(*(&v15 + 1) + 8 * v11) UUID];
          uUIDString = [uUID UUIDString];
          [v12 setObject:v5 forKeyedSubscript:uUIDString];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock((self + 24));
  }
}

- (id)_getAndReleaseCachedScheduleItemsForSchedules:(uint64_t)schedules
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (schedules)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    os_unfair_lock_lock((schedules + 24));
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          uUID = [*(*(&v14 + 1) + 8 * i) UUID];
          uUIDString = [uUID UUIDString];

          v12 = [*(schedules + 8) objectForKeyedSubscript:uUIDString];
          [v4 setObject:v12 forKeyedSubscript:uUIDString];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [*(schedules + 8) removeAllObjects];
    os_unfair_lock_unlock((schedules + 24));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_broadcastNotificationSchedule:(uint64_t)schedule withOldScheduleItem:(void *)item andNewScheduleItem:(void *)scheduleItem
{
  v45 = *MEMORY[0x277D85DE8];
  scheduleItemCopy = scheduleItem;
  if (schedule)
  {
    v6 = MEMORY[0x277CCD6C0];
    itemCopy = item;
    v8 = [v6 alloc];
    identifier = [scheduleItemCopy identifier];
    v10 = [v8 initWithAction:2 scheduleItemIdentifier:identifier];

    v11 = MEMORY[0x277CBEAA8];
    [itemCopy creationTimestamp];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v13 = [HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria alloc];
    uUID = [itemCopy UUID];

    v15 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)v13 initWithUUID:uUID modificationDate:v12];
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      categoryIdentifier = [v10 categoryIdentifier];
      expirationDate = [v10 expirationDate];
      *buf = 138544130;
      v39 = v17;
      OUTLINED_FUNCTION_1_5();
      v40 = categoryIdentifier;
      v41 = v21;
      v42 = v22;
      v43 = v21;
      v44 = v12;
    }

    v23 = *(schedule + 56);
    v37 = 0;
    v24 = [v23 sendNotificationInstruction:v10 criteria:v15 error:&v37];
    v25 = v37;
    if (v24)
    {
      identifier2 = [scheduleItemCopy identifier];
      [(HDMedicationNotificationSyncManager *)schedule _updateNotificationSentTimeForScheduleItemIdentifier:identifier2];
    }

    else
    {
      _HKInitializeLogging();
      identifier2 = HKLogMedication();
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = v32;
        identifier3 = [scheduleItemCopy identifier];
        *buf = 138543874;
        v39 = v32;
        OUTLINED_FUNCTION_1_5();
        v40 = v35;
        v41 = v36;
        v42 = v25;
      }
    }

    _HKInitializeLogging();
    v27 = HKLogMedication();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = v28;
      categoryIdentifier2 = [v10 categoryIdentifier];
      *buf = 138543618;
      v39 = v28;
      OUTLINED_FUNCTION_1_5();
      v40 = v31;
    }
  }
}

- (void)_updateNotificationSentTimeForScheduleItemIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = a2;
    os_unfair_lock_lock((identifier + 28));
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEAA8] now];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];

    [*(identifier + 16) setObject:v6 forKeyedSubscript:v3];
    os_unfair_lock_unlock((identifier + 28));
  }
}

- (uint64_t)_hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (!identifier)
  {
    v10 = 0;
    goto LABEL_8;
  }

  os_unfair_lock_lock((identifier + 28));
  v4 = [*(identifier + 16) objectForKeyedSubscript:v3];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [v4 doubleValue];
  v9 = v7 - v8;

  if (v9 >= 5.0)
  {
    [*(identifier + 16) removeObjectForKey:v3];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:
  os_unfair_lock_unlock((identifier + 28));

LABEL_8:
  return v10;
}

- (BOOL)_shouldSendHoldInstructionForOldScheduleItem:(id)item compareWithNewScheduleItem:(id)scheduleItem
{
  itemCopy = item;
  scheduleItemCopy = scheduleItem;
  identifier = [itemCopy identifier];
  LOBYTE(self) = [(HDMedicationNotificationSyncManager *)self _hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:identifier];

  if (self)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCD6C0];
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [v10 instructionExpirationDateForDate:v11];

    scheduledDateTime = [itemCopy scheduledDateTime];
    v14 = [v12 hk_isBeforeDate:scheduledDateTime];

    if (v14)
    {
      LOBYTE(v9) = 0;
    }

    else if (scheduleItemCopy)
    {
      doses = [itemCopy doses];
      v16 = [doses count];
      doses2 = [scheduleItemCopy doses];
      if (v16 <= [doses2 count])
      {
        doses3 = [itemCopy doses];
        doses4 = [scheduleItemCopy doses];
        if ([doses3 hk_containsObjectsInArray:doses4])
        {
          scheduledDateTime2 = [itemCopy scheduledDateTime];
          scheduledDateTime3 = [scheduleItemCopy scheduledDateTime];
          v9 = [scheduledDateTime2 isEqual:scheduledDateTime3] ^ 1;
        }

        else
        {
          LOBYTE(v9) = 1;
        }
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (BOOL)_shouldSendHoldInstructionForNewDoseEvent:(id)event
{
  eventCopy = event;
  scheduleItemIdentifier = [eventCopy scheduleItemIdentifier];
  v6 = [(HDMedicationNotificationSyncManager *)self _hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:scheduleItemIdentifier];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    scheduleItemIdentifier2 = [eventCopy scheduleItemIdentifier];
    if (scheduleItemIdentifier2 && ([eventCopy logStatus] == 4 || objc_msgSend(eventCopy, "logStatus") == 5) && objc_msgSend(eventCopy, "logOrigin") == 2)
    {
      hd_dataOriginProvenance = [eventCopy hd_dataOriginProvenance];
      syncIdentity = [hd_dataOriginProvenance syncIdentity];
      currentSyncIdentity = [(HDSyncIdentityManager *)self->_syncIdentityManager currentSyncIdentity];
      entity = [currentSyncIdentity entity];
      v7 = syncIdentity == [entity persistentID];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_handleDismissInstructions
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v3 = HKLogMedication();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instructions", buf, 0xCu);
    }

    v4 = *(self + 56);
    v25 = 0;
    v5 = [v4 pendingNotificationDismissInstructionsWithError:&v25];
    v6 = v25;
    if (v5)
    {
      v7 = MEMORY[0x277CCD6C0];
      categoryIdentifiers = [v5 categoryIdentifiers];
      v9 = [v7 scheduleItemIdentifiersFromCategoryIdentifiers:categoryIdentifiers];

      if ([v9 count])
      {
        [*(self + 48) removeDeliveredNotificationsForScheduleItemIdentifiers:v9];
      }

      categoryIdentifiers2 = [v5 categoryIdentifiers];
      v11 = [categoryIdentifiers2 hk_containsObjectPassingTest:&__block_literal_global_9];

      if (v11)
      {
        v12 = *(self + 48);
        v26 = *MEMORY[0x277D11400];
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        [v12 removeDeliveredNotificationsForScheduleItemIdentifiers:v13];
      }

      v14 = *(self + 56);
      v24 = v6;
      v15 = [v14 markPendingNotificationInstructionsAsProcessed:v5 error:&v24];
      v16 = v24;

      if ((v15 & 1) == 0)
      {
        _HKInitializeLogging();
        v17 = HKLogMedication();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          objc_opt_class();
          OUTLINED_FUNCTION_3_2();
          v29 = v16;
          v22 = v21;
          OUTLINED_FUNCTION_10_1(&dword_25181C000, v17, v23, "[%{public}@] Mark pending notification instruction as processed failed with error = [%{public}@]", buf);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogMedication();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        OUTLINED_FUNCTION_3_2();
        v29 = v6;
        v19 = v18;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v9, v20, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", buf);
      }

      v16 = v6;
    }
  }
}

- (void)_handleHoldInstructions
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v3 = HKLogMedication();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling hold instructions", buf, 0xCu);
    }

    v4 = *(self + 56);
    v12 = 0;
    v5 = [v4 notificationHoldInstructionsWithError:&v12];
    v6 = v12;
    if (v5)
    {
      v7 = [MEMORY[0x277CCD6C0] scheduleItemIdentifiersFromCategoryIdentifiers:v5];
      [*(self + 48) removeDeliveredNotificationsForScheduleItemIdentifiers:v7];
    }

    else
    {
      _HKInitializeLogging();
      v7 = HKLogMedication();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v8;
        OUTLINED_FUNCTION_1_5();
        v15 = v6;
        v10 = v9;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v7, v11, "[%{public}@] Notification hold instructions returned nil with error = [%{public}@]", buf);
      }
    }
  }
}

- (void)isScheduleItemOnHold:(NSObject *)a3 errorOut:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_debug_impl(&dword_25181C000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] On hold items: [%{public}@]", &v6, 0x16u);
}

- (void)notificationSyncClient:(uint64_t)a1 didReceiveInstructionWithAction:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
}

@end