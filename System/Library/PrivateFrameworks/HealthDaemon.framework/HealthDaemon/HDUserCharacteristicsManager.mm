@interface HDUserCharacteristicsManager
- (BOOL)_setUserCharacteristic:(id)characteristic forType:(id)type shouldInsertSample:(BOOL)sample updateProfileAndSync:(BOOL)sync error:(id *)error;
- (HDUserCharacteristicsManager)initWithProfile:(id)profile;
- (double)restingCaloriesFromTotalCalories:(double)calories timeInterval:(double)interval authorizedToRead:(BOOL)read;
- (id)_getCardioFitnessMedicationsStatusWithError:(void *)error;
- (id)_mostRecentSampleOfType:(void *)type beforeDate:(uint64_t)date error:;
- (id)_queue_updateCharacteristicsAndUserProfileWithDelay;
- (id)_userCharacteristicForType:(uint64_t)type entity:(uint64_t)entity error:;
- (id)diagnosticDescription;
- (id)modificationDateForCharacteristicWithType:(id)type error:(id *)error;
- (void)_queue_updateCharacteristicsAndUserProfile;
- (void)_queue_updateCharacteristicsAndUserProfileWithDate:(uint64_t)date;
- (void)_queue_updateFitnessModeDefaultAndNotifyIfNecessary;
- (void)_updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:(uint64_t)necessary;
- (void)_userCharacteristicsDidChangeShouldUpdateUserProfile:(int)profile shouldSync:;
- (void)addProfileObserver:(id)observer;
- (void)cloudSyncManager:(id)manager didUpdateSyncEnabled:(BOOL)enabled;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didReceiveAuthKitDeviceListChangeNotification:(id)notification;
- (void)didReceiveDayChangeNotification:(id)notification;
- (void)nanoSyncManager:(id)manager pairedDevicesChanged:(id)changed;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)unitTest_updateCharacteristicsAndUserProfileWithDate:(id)date completion:(id)completion;
@end

@implementation HDUserCharacteristicsManager

uint64_t __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__36;
  v29 = __Block_byref_object_dispose__36;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_2;
  aBlock[3] = &unk_2786189E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v23 = &v31;
  v24 = &v25;
  aBlock[4] = v6;
  v22 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
  v8[2](v8, *MEMORY[0x277CC1BD8], v9, &__block_literal_global_41);

  v10 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  v8[2](v8, *MEMORY[0x277CC1BC8], v10, &__block_literal_global_375);

  v11 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDEC8]];
  v8[2](v8, *MEMORY[0x277CC1BF0], v11, &__block_literal_global_379);

  v12 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDED8]];
  v8[2](v8, *MEMORY[0x277CC1BE8], v12, &__block_literal_global_382);

  v13 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB28]];
  v8[2](v8, *MEMORY[0x277CC1BE0], v13, &__block_literal_global_384_0);

  v14 = *(a1 + 32);
  v15 = (v26 + 5);
  obj = v26[5];
  v16 = [(HDUserCharacteristicsManager *)v14 _getCardioFitnessMedicationsStatusWithError:?];
  objc_storeStrong(v15, obj);
  if (v16)
  {
    [*(a1 + 40) setObject:v16 forKey:*MEMORY[0x277CC1BD0]];
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v32 + 24) = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  v17 = v26[5];
  if (v17)
  {
    *a3 = v17;
  }

LABEL_7:
  v18 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

void __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = [v9 userCharacteristicForType:a3 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v11)
    {
      if (v8)
      {
        v12 = v8[2](v8, v11);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v12 = v11;
      }

      [*(a1 + 40) setObject:v12 forKey:v7];

      goto LABEL_10;
    }

LABEL_7:
    [*(a1 + 40) removeObjectForKey:v7];
    goto LABEL_10;
  }

LABEL_11:
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 integerValue] == 3)
  {

    v2 = &unk_283CB0900;
  }

  return v2;
}

uint64_t __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  if ([a2 integerValue] == 2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  return [v2 numberWithInteger:v3];
}

- (HDUserCharacteristicsManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDUserCharacteristicsManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v28.receiver = self;
  v28.super_class = HDUserCharacteristicsManager;
  v6 = [(HDUserCharacteristicsManager *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_profile, profileCopy);
    v8 = HKCreateSerialDispatchQueue();
    queue = v7->_queue;
    v7->_queue = v8;

    v7->_needsUpdateAfterUnlock = 1;
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(*MEMORY[0x277CCC178], *MEMORY[0x277CCE4C8], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:AppBooleanValue != 0];
    }

    else
    {
      v11 = 0;
    }

    hasWatchOnAccount = v7->_hasWatchOnAccount;
    v7->_hasWatchOnAccount = v11;

    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = HKLogInfrastructure();
    v17 = [v13 initWithName:v15 loggingCategory:v16];
    observers = v7->_observers;
    v7->_observers = v17;

    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    v7->_shouldUpdateQuantityCharacteristics = [behavior supportsComputedUserCharacteristicCaching];

    daemon2 = [profileCopy daemon];
    behavior2 = [daemon2 behavior];
    v7->_shouldUpdateCategoryCharacteristics = [behavior2 supportsComputedUserCharacteristicCaching];

    WeakRetained = objc_loadWeakRetained(&v7->_profile);
    [WeakRetained registerProfileReadyObserver:v7 queue:v7->_queue];

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v7];
  }

  return v7;
}

- (void)dealloc
{
  v34 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = QuantityCharacteristicTypes();
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained(&self->_profile);
        dataManager = [v12 dataManager];
        _relatedQuantityType = [v11 _relatedQuantityType];
        [dataManager removeObserver:self forDataType:_relatedQuantityType];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  v15 = objc_loadWeakRetained(&self->_profile);
  dataManager2 = [v15 dataManager];
  v17 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB00]];
  _relatedCategoryType = [v17 _relatedCategoryType];
  [dataManager2 removeObserver:self forDataType:_relatedCategoryType];

  if (self)
  {
    if (notify_is_valid_token(self->_significantTimeChangeNotificationToken))
    {
      notify_cancel(self->_significantTimeChangeNotificationToken);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CBE580] object:0];
  }

  v20 = objc_loadWeakRetained(&self->_profile);
  daemon = [v20 daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    v24 = objc_loadWeakRetained(&self->_profile);
    nanoSyncManager = [v24 nanoSyncManager];
    [nanoSyncManager removeObserver:self];

    v26 = objc_loadWeakRetained(&self->_profile);
    cloudSyncManager = [v26 cloudSyncManager];
    [cloudSyncManager removeObserver:self];
  }

  v28.receiver = self;
  v28.super_class = HDUserCharacteristicsManager;
  [(HDUserCharacteristicsManager *)&v28 dealloc];
}

- (id)_userCharacteristicForType:(uint64_t)type entity:(uint64_t)entity error:
{
  if (self)
  {
    v7 = a2;
    WeakRetained = objc_loadWeakRetained((self + 8));
    v9 = [HDProtectedKeyValueEntity userCharacteristicForType:v7 profile:WeakRetained entity:type error:entity];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)modificationDateForCharacteristicWithType:(id)type error:(id *)error
{
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [HDProtectedKeyValueEntity modificationDateForCharacteristicWithType:typeCopy profile:WeakRetained error:error];

  return v8;
}

- (BOOL)_setUserCharacteristic:(id)characteristic forType:(id)type shouldInsertSample:(BOOL)sample updateProfileAndSync:(BOOL)sync error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  typeCopy = type;
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = typeCopy;
    _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "Setting user characteristic for type %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke;
  aBlock[3] = &unk_278618918;
  v32 = characteristicCopy;
  v15 = typeCopy;
  v33 = v15;
  selfCopy = self;
  sampleCopy = sample;
  v16 = characteristicCopy;
  v17 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_2;
  v26[3] = &unk_278618940;
  syncCopy = sync;
  v27 = v15;
  selfCopy2 = self;
  v29 = v17;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_4;
  v24[3] = &unk_278618968;
  v25 = v29;
  v20 = v29;
  v21 = v15;
  v22 = [(HDHealthEntity *)HDProtectedKeyValueEntity performWriteTransactionWithHealthDatabase:database error:error block:v26 inaccessibilityHandler:v24];

  return v22;
}

uint64_t __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v7 = [HDProtectedKeyValueEntity setUserCharacteristic:v4 forType:v5 profile:WeakRetained error:a2];

  if (!v7)
  {
    return 0;
  }

  if (*(a1 + 56) != 1)
  {
    return 1;
  }

  v8 = [*(a1 + 40) _relatedSampleForInsertionWithCharacteristicValue:*(a1 + 32)];
  v9 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  v10 = v9;
  if (v8 && (*(a1 + 40) != v9 || (v11 = objc_loadWeakRetained((*(a1 + 48) + 8)), [v11 daemon], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "behavior"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "futureMigrationsEnabled"), v13, v12, v11, v14)))
  {
    v15 = objc_loadWeakRetained((*(a1 + 48) + 8));
    v16 = [v15 dataProvenanceManager];
    v17 = [v16 defaultLocalDataProvenance];

    if (v17)
    {
      v18 = objc_loadWeakRetained((*(a1 + 48) + 8));
      v19 = [v18 dataManager];
      v23[0] = v8;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v21 = [v19 insertDataObjects:v20 withProvenance:v17 creationDate:a2 error:2.22507386e-308];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 description:@"Failed to get local device data provenance"];
      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

uint64_t __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56) == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_3;
    v10[3] = &unk_278613920;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    [a2 onCommit:v10 orRollback:0];
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a3, a3, a4);
}

void __109__HDUserCharacteristicsManager__setUserCharacteristic_forType_shouldInsertSample_updateProfileAndSync_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v4 = (v2 - 64) <= 0x27 && ((1 << (v2 - 64)) & 0x8001700007) != 0 || v2 == 218;
  v5 = *(a1 + 40);

  [(HDUserCharacteristicsManager *)v5 _userCharacteristicsDidChangeShouldUpdateUserProfile:v4 shouldSync:1];
}

- (void)_userCharacteristicsDidChangeShouldUpdateUserProfile:(int)profile shouldSync:
{
  if (self)
  {
    if (a2)
    {
      v5 = *(self + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HDUserCharacteristicsManager__userCharacteristicsDidChangeShouldUpdateUserProfile_shouldSync___block_invoke;
      block[3] = &unk_278613968;
      block[4] = self;
      dispatch_async(v5, block);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = defaultCenter;
    if (profile)
    {
      [defaultCenter postNotificationName:@"HDUserCharacteristicsShouldSyncNotification" object:self];
    }

    [v7 postNotificationName:@"HDUserCharacteristicsDidChangeNotification" object:self];
    notify_post(*MEMORY[0x277CCE580]);
  }
}

- (double)restingCaloriesFromTotalCalories:(double)calories timeInterval:(double)interval authorizedToRead:(BOOL)read
{
  if (read)
  {
    v7 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:{*MEMORY[0x277CCDEC8], calories}];
    v23 = 0;
    v8 = [(HDUserCharacteristicsManager *)self userCharacteristicForType:v7 error:&v23];
    v9 = v23;

    v10 = 0.0;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 == 0;
    }

    if (!v11)
    {
      v12 = [MEMORY[0x277CCDAB0] unitFromString:@"kg"];
      [v8 doubleValueForUnit:v12];
      v10 = v13;
    }

    v22 = v9;
    v14 = [(HDUserCharacteristicsManager *)self _getCardioFitnessMedicationsStatusWithError:?];
    v15 = v22;

    bOOLValue = 0;
    if (v14 && !v15)
    {
      bOOLValue = [v14 BOOLValue];
    }
  }

  else
  {
    bOOLValue = 0;
    v10 = 0.0;
  }

  v17 = [objc_alloc(MEMORY[0x277CC1C48]) initWithAge:0 gender:0 height:bOOLValue weight:0.0 condition:0.0 betaBlockerUse:v10];
  v18 = [MEMORY[0x277CC1CE0] computeRestingCaloriesAtRate:1 user:v17 duration:interval];
  [v18 doubleValue];
  v20 = v19 / 1000.0;

  return v20;
}

- (id)_getCardioFitnessMedicationsStatusWithError:(void *)error
{
  if (error)
  {
    v4 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCDED0]];
    v11 = 0;
    v5 = [error userCharacteristicForType:v4 error:&v11];
    v6 = v11;

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "integerValue") != 0}];
    }

    else if (a2)
    {
      v9 = v6;
      v8 = 0;
      *a2 = v6;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_queue_updateCharacteristicsAndUserProfile
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(HDUserCharacteristicsManager *)self _queue_updateCharacteristicsAndUserProfileWithDate:v2];
  }
}

- (void)_queue_updateCharacteristicsAndUserProfileWithDate:(uint64_t)date
{
  v122 = *MEMORY[0x277D85DE8];
  if (date)
  {
    v3 = a2;
    dateCopy = date;
    WeakRetained = objc_loadWeakRetained((date + 8));
    database = [WeakRetained database];

    v6 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v6 setCacheScope:1];
    copyForWritingProtectedData = [(HDDatabaseTransactionContext *)v6 copyForWritingProtectedData];

    v8 = MEMORY[0x277CBEA80];
    v9 = v3;
    hk_gregorianCalendarWithLocalTimeZone = [v8 hk_gregorianCalendarWithLocalTimeZone];
    v11 = [hk_gregorianCalendarWithLocalTimeZone startOfDayForDate:v9];

    v12 = [hk_gregorianCalendarWithLocalTimeZone dateByAddingUnit:16 value:1 toDate:v11 options:0];
    v13 = [hk_gregorianCalendarWithLocalTimeZone startOfDayForDate:v12];

    v14 = _HKActivityCacheDateComponentsFromDate();
    v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:_HKCacheIndexFromDateComponents()];

    *&v96 = 0;
    *(&v96 + 1) = &v96;
    *&v97 = 0x2020000000;
    BYTE8(v97) = 0;
    v102 = 0;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v115 = __84__HDUserCharacteristicsManager__queue_updateActivityMoveModeCharacteristicWithDate___block_invoke;
    v116 = &unk_278615F88;
    dateCopy2 = date;
    v16 = v15;
    dateCopy4 = v16;
    v119 = &v96;
    LODWORD(v15) = [database performTransactionWithContext:copyForWritingProtectedData error:&v102 block:&buf inaccessibilityHandler:0];
    v17 = v102;
    v18 = v17;
    if (v15)
    {
      if (*(*(&v96 + 1) + 24) == 1)
      {
        [(HDUserCharacteristicsManager *)date _userCharacteristicsDidChangeShouldUpdateUserProfile:1 shouldSync:?];
      }

      *(date + 56) = 0;
    }

    else if ([v17 hk_isDatabaseAccessibilityError])
    {
      *(date + 56) = 1;
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(keyExistsAndHasValidFormat) = 138543362;
        *(&keyExistsAndHasValidFormat + 4) = v18;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Error updating user activity move mode characteristic: %{public}@", &keyExistsAndHasValidFormat, 0xCu);
      }
    }

    _Block_object_dispose(&v96, 8);
    v20 = objc_loadWeakRetained((date + 8));
    profileType = [v20 profileType];

    if (profileType == 1)
    {
      v22 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB00]];
      *&v96 = 0;
      v23 = [(HDUserCharacteristicsManager *)date _userCharacteristicForType:v22 entity:0 error:&v96];
      v24 = v96;

      if (v23 || !v24)
      {
        if (v23)
        {
          integerValue = [v23 integerValue];
        }

        else
        {
          integerValue = 1;
        }

        LOBYTE(keyExistsAndHasValidFormat) = 0;
        v27 = *MEMORY[0x277CCB788];
        v28 = *MEMORY[0x277CCE4C8];
        AppIntegerValue = CFPreferencesGetAppIntegerValue(*MEMORY[0x277CCB788], *MEMORY[0x277CCE4C8], &keyExistsAndHasValidFormat);
        if (!keyExistsAndHasValidFormat || AppIntegerValue != integerValue)
        {
          CFPreferencesSetAppValue(v27, [MEMORY[0x277CCABB0] numberWithInteger:integerValue], v28);
          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = HKActivityMoveModeToString();
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v32;
            _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "Activity Move Mode defaults value changed to %{public}@! Posting notification!", &buf, 0xCu);
          }

          notify_post(*MEMORY[0x277CCB790]);
        }
      }

      else
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v24;
          _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Error reading activity move mode characteristic for defaults update: %@", &buf, 0xCu);
        }

        if ([v24 hk_isDatabaseAccessibilityError])
        {
          *(date + 56) = 1;
        }
      }
    }

    if (*(date + 32))
    {
      v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v35 = objc_loadWeakRetained((date + 8));
      database2 = [v35 database];

      v37 = QuantityCharacteristicTypes();
      *&keyExistsAndHasValidFormat = 0;
      *(&keyExistsAndHasValidFormat + 1) = &keyExistsAndHasValidFormat;
      v110 = 0x2020000000;
      LOBYTE(v111) = 0;
      dateCopy5 = date;
      v39 = objc_alloc_init(HDMutableDatabaseTransactionContext);
      [(HDMutableDatabaseTransactionContext *)v39 setCacheScope:1];
      v106 = 0;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v115 = __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke;
      v116 = &unk_278618A68;
      v40 = v37;
      dateCopy2 = v40;
      dateCopy4 = date;
      v41 = v33;
      v119 = v41;
      v42 = v34;
      v120 = v42;
      p_keyExistsAndHasValidFormat = &keyExistsAndHasValidFormat;
      v43 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database2 context:v39 error:&v106 block:&buf];
      v44 = v106;
      v45 = v44;
      v102 = 0;
      v103 = &v102;
      v104 = 0x2020000000;
      v105 = 0;
      if (!v43)
      {
        goto LABEL_84;
      }

      if (*(*(&keyExistsAndHasValidFormat + 1) + 24) != 1)
      {
        goto LABEL_32;
      }

      v101 = v44;
      *&v96 = MEMORY[0x277D85DD0];
      *(&v96 + 1) = 3221225472;
      *&v97 = __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke_2;
      *(&v97 + 1) = &unk_278618A68;
      *&v98 = v40;
      *(&v98 + 1) = v41;
      *&v99 = date;
      *(&v99 + 1) = v42;
      v100 = &v102;
      v46 = [(HDHealthEntity *)HDProtectedKeyValueEntity performWriteTransactionWithHealthDatabase:database2 context:v39 error:&v101 block:&v96];
      v47 = v101;

      if (*(v103 + 24) == 1)
      {
        [(HDUserCharacteristicsManager *)date _userCharacteristicsDidChangeShouldUpdateUserProfile:1 shouldSync:?];
      }

      v45 = v47;
      dateCopy5 = date;
      if (v46)
      {
LABEL_32:
        *(dateCopy5 + 56) = 0;
      }

      else
      {
LABEL_84:
        if ([v45 hk_isDatabaseAccessibilityError])
        {
          *(date + 56) = 1;
        }

        else
        {
          _HKInitializeLogging();
          v48 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
          {
            *v107 = 138543362;
            v108 = v45;
            _os_log_error_impl(&dword_228986000, v48, OS_LOG_TYPE_ERROR, "Error updating user characteristics quantity: %{public}@", v107, 0xCu);
          }
        }
      }

      _Block_object_dispose(&v102, 8);

      _Block_object_dispose(&keyExistsAndHasValidFormat, 8);
    }

    v49 = objc_loadWeakRetained((date + 8));
    profileType2 = [v49 profileType];

    if (profileType2 != 1)
    {
      *(date + 56) = 0;
      return;
    }

    userProfile = [MEMORY[0x277CC1CE0] userProfile];
    if (userProfile)
    {
      v51 = userProfile;
    }

    else
    {
      v51 = MEMORY[0x277CBEC10];
    }

    v52 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v51];
    v92 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v92 setCacheScope:1];
    v53 = objc_loadWeakRetained((date + 8));
    database3 = [v53 database];
    v102 = 0;
    *&keyExistsAndHasValidFormat = MEMORY[0x277D85DD0];
    *(&keyExistsAndHasValidFormat + 1) = 3221225472;
    v110 = __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke;
    v111 = &unk_278613218;
    dateCopy6 = date;
    v93 = v52;
    v113 = v93;
    v55 = [(HDHealthEntity *)HDProtectedKeyValueEntity performReadTransactionWithHealthDatabase:database3 context:v92 error:&v102 block:&keyExistsAndHasValidFormat];
    v91 = v102;

    if (v55)
    {
      *(date + 56) = 0;
      date = [MEMORY[0x277CBEAA8] date];
      v57 = *(date + 40);
      *(date + 40) = date;

      v58 = objc_msgSend_copy(v93);
      v59 = *(date + 48);
      *(date + 48) = v58;

      if ([userProfile isEqualToDictionary:v93])
      {
        v60 = v91;
      }

      else
      {
        v62 = objc_loadWeakRetained((date + 8));
        daemon = [v62 daemon];
        behavior = [daemon behavior];
        isAppleInternalInstall = [behavior isAppleInternalInstall];

        if (isAppleInternalInstall)
        {
          if (userProfile)
          {
            v66 = userProfile;
            v67 = v93;
            allKeys3 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
            allKeys = [v66 allKeys];
            [v69 addObjectsFromArray:allKeys];

            allKeys2 = [v67 allKeys];
            [v69 addObjectsFromArray:allKeys2];

            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v72 = v69;
            v73 = [v72 countByEnumeratingWithState:&v96 objects:&buf count:16];
            if (v73)
            {
              v74 = *v97;
              do
              {
                for (i = 0; i != v73; ++i)
                {
                  if (*v97 != v74)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v76 = *(*(&v96 + 1) + 8 * i);
                  v77 = [v66 objectForKeyedSubscript:v76];
                  v78 = [v67 objectForKeyedSubscript:v76];
                  v79 = v78;
                  if (v77 != v78 && (!v78 || ([v77 isEqual:v78] & 1) == 0))
                  {
                    [allKeys3 addObject:v76];
                  }
                }

                v73 = [v72 countByEnumeratingWithState:&v96 objects:&buf count:16];
              }

              while (v73);
            }
          }

          else
          {
            allKeys3 = [v93 allKeys];
          }

          if ([allKeys3 count])
          {
            v81 = MEMORY[0x277CCACA8];
            v82 = [allKeys3 componentsJoinedByString:{@", "}];
            v80 = [v81 stringWithFormat:@"(%@)", v82];
          }

          else
          {
            v80 = 0;
          }
        }

        else
        {
          v80 = 0;
        }

        _HKInitializeLogging();
        v83 = MEMORY[0x277CCC2B0];
        v84 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
        {
          v90 = &stru_283BF39C8;
          if (v80)
          {
            v90 = v80;
          }

          LODWORD(buf) = 138543362;
          *(&buf + 4) = v90;
          _os_log_debug_impl(&dword_228986000, v84, OS_LOG_TYPE_DEBUG, "Updating changed user profile keys %{public}@", &buf, 0xCu);
        }

        *&v96 = v91;
        v85 = [MEMORY[0x277CC1CE0] setUserProfile:v93 error:&v96];
        v60 = v96;

        if ((v85 & 1) == 0)
        {
          _HKInitializeLogging();
          v86 = *v83;
          if (os_log_type_enabled(*v83, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v60;
            _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "Error setting CoreMotion user profile: %{public}@", &buf, 0xCu);
          }
        }
      }

      v87 = *(dateCopy + 48);
      v88 = *(dateCopy + 24);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v115 = __73__HDUserCharacteristicsManager__queue_alertObserversDidUpdateUserProfile__block_invoke;
      v116 = &unk_278618A90;
      dateCopy2 = dateCopy;
      dateCopy4 = v87;
      v89 = v87;
      [v88 notifyObservers:&buf];

      goto LABEL_76;
    }

    if ([v91 hk_isDatabaseAccessibilityError])
    {
      *(date + 56) = 1;
    }

    else
    {
      _HKInitializeLogging();
      v61 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        v60 = v91;
        *(&buf + 4) = v91;
        _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "Error updating user characteristics values: %{public}@", &buf, 0xCu);
        goto LABEL_76;
      }
    }

    v60 = v91;
LABEL_76:
  }
}

- (id)_queue_updateCharacteristicsAndUserProfileWithDelay
{
  v5 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    _HKInitializeLogging();
    v2 = HKLogInfrastructure();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138543362;
      v4 = objc_opt_class();
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating age gating due to significant time change.", &v3, 0xCu);
    }

    return [v1[10] execute];
  }

  return result;
}

uint64_t __84__HDUserCharacteristicsManager__queue_updateActivityMoveModeCharacteristicWithDate___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB00]];
  v6 = [v5 _relatedCategoryType];
  v7 = a1[4];
  v8 = a1[5];
  v34 = 0;
  if (v7)
  {
    v9 = [(HDUserCharacteristicsManager *)v7 _mostRecentSampleOfType:v6 beforeDate:v8 error:&v34];
    v10 = v34;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v9 || !v11)
  {
    v15 = a1[4];
    v33 = 0;
    v16 = [(HDUserCharacteristicsManager *)v15 _userCharacteristicForType:v5 entity:0 error:&v33];
    v17 = v33;
    v18 = v17;
    if (v16)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17 == 0;
    }

    if (!v19)
    {
      if (a3)
      {
        v20 = v17;
        v14 = 0;
        *a3 = v18;
      }

      else
      {
        _HKLogDroppedError();
        v14 = 0;
      }

      goto LABEL_35;
    }

    if (!(v9 | v16))
    {
      v14 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v21 = [v16 integerValue];
    if (v9)
    {
      v22 = [v9 value];
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Resetting activity move mode characteristic if needed", buf, 2u);
      }

      v22 = 1;
    }

    if (v21 == v22)
    {
      v24 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v30 = HKActivityMoveModeToString();
        *buf = 138543362;
        v36 = v30;
        _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Updating activity move mode characteristic to %{public}@", buf, 0xCu);
      }

      v27 = a1[4];
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{v22, v30}];
      v32 = 0;
      LOBYTE(v27) = [v27 _setUserCharacteristic:v31 forType:v5 shouldInsertSample:0 updateProfileAndSync:0 error:&v32];
      v24 = v32;

      *(*(a1[6] + 8) + 24) = v27;
      if ((v27 & 1) == 0)
      {
        v24 = v24;
        if (v24)
        {
          if (a3)
          {
            v28 = v24;
            *a3 = v24;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = 0;
        goto LABEL_34;
      }
    }

    v14 = 1;
LABEL_34:

    goto LABEL_35;
  }

  if (a3)
  {
    v13 = v11;
    v14 = 0;
    *a3 = v12;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_36:

  return v14;
}

- (void)_queue_updateFitnessModeDefaultAndNotifyIfNecessary
{
  v50 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    if ([behavior isAppleWatch])
    {
    }

    else
    {
      v4 = objc_loadWeakRetained((self + 8));
      daemon2 = [v4 daemon];
      behavior2 = [daemon2 behavior];
      isiPad = [behavior2 isiPad];

      if ((isiPad & 1) == 0)
      {
        v8 = objc_loadWeakRetained((self + 8));
        nanoSyncManager = [v8 nanoSyncManager];
        pairedDevicesSnapshot = [nanoSyncManager pairedDevicesSnapshot];
        allDeviceInfos = [pairedDevicesSnapshot allDeviceInfos];
        v12 = [allDeviceInfos count];

        if ([*(self + 64) BOOLValue])
        {
          v13 = *(self + 72);
        }

        else
        {
          v13 = 0;
        }

        v14 = *MEMORY[0x277CCE4C8];
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HDUserCharacteristicsForceStandalonePhoneFitnessMode", *MEMORY[0x277CCE4C8], 0);
        AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HDUserCharacteristicsForceFitnessMode", v14, 0);
        v17 = AppIntegerValue;
        v18 = 2;
        if (v13)
        {
          v18 = 3;
        }

        if (v12)
        {
          v18 = 1;
        }

        if (AppBooleanValue)
        {
          v19 = 1;
        }

        else
        {
          v19 = (v12 == 0) & (v13 ^ 1u);
        }

        if (AppIntegerValue)
        {
          v20 = AppIntegerValue;
        }

        else
        {
          v20 = v18;
        }

        _HKInitializeLogging();
        v21 = MEMORY[0x277CCC2B0];
        v22 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(self + 64);
          v24 = *(self + 72);
          *buf = 136316930;
          v35 = "[HDUserCharacteristicsManager _queue_updateFitnessModeDefaultAndNotifyIfNecessary]";
          v36 = 1024;
          v37 = v12 != 0;
          v38 = 2112;
          v39 = v23;
          v40 = 1024;
          v41 = v24;
          v42 = 1024;
          v43 = AppBooleanValue != 0;
          v44 = 2048;
          v45 = v17;
          v46 = 1024;
          v47 = v19;
          v48 = 2048;
          v49 = v20;
          _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "%s - hasPairedWatch %d hasWatchOnAccount %@ isCloudSyncEnabled %d isStandalonePhoneFitnessModeForced %d fitnessModeForcedValue %ld isStandalonePhoneFitnessMode %d fitnessMode %lu", buf, 0x42u);
        }

        keyExistsAndHasValidFormat = 0;
        v25 = *MEMORY[0x277CCC260];
        v26 = CFPreferencesGetAppBooleanValue(*MEMORY[0x277CCC260], v14, &keyExistsAndHasValidFormat) == 0;
        if (!keyExistsAndHasValidFormat || ((v19 ^ v26) & 1) == 0)
        {
          CFPreferencesSetAppValue(v25, [MEMORY[0x277CCABB0] numberWithBool:v19], v14);
          _HKInitializeLogging();
          v27 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v35) = v19;
            _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Standalone phone fitness mode default value changed to %d. Posting notification!", buf, 8u);
          }

          notify_post(*MEMORY[0x277CCCE08]);
        }

        v32 = 0;
        v28 = *MEMORY[0x277CCC140];
        v29 = CFPreferencesGetAppIntegerValue(*MEMORY[0x277CCC140], v14, &v32);
        if (!v32 || v29 != v20)
        {
          CFPreferencesSetAppValue(v28, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20], v14);
          _HKInitializeLogging();
          v30 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v35 = v20;
            _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "Fitness mode default value changed to %lu. Posting notification!", buf, 0xCu);
          }

          notify_post(*MEMORY[0x277CCC148]);
        }
      }
    }
  }
}

- (void)_updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:(uint64_t)necessary
{
  if (necessary)
  {
    v4 = arc4random_uniform(0x12Cu);
    v5 = dispatch_time(0, 1000000000 * v4);
    v6 = *(necessary + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__HDUserCharacteristicsManager__updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary___block_invoke;
    v7[3] = &unk_278618990;
    v8 = a2;
    v7[4] = necessary;
    dispatch_after(v5, v6, v7);
  }
}

void __91__HDUserCharacteristicsManager__updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary___block_invoke(uint64_t a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 8));
    v6 = [WeakRetained daemon];
    v7 = [v6 behavior];
    v8 = [v7 isAppleWatch];

    if ((v8 & 1) == 0)
    {
      v9 = *MEMORY[0x277CCE4C8];
      v10 = CFPreferencesCopyAppValue(@"HasWatchOnAccountLastFetchDate", *MEMORY[0x277CCE4C8]);
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [v11 dateByAddingTimeInterval:-28800.0];

      v13 = [v10 hk_isAfterDate:v12];
      if (*(v4 + 64) && v13)
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[HDUserCharacteristicsManager _queue_updateHasWatchOnAccount]";
          *&buf[12] = 2114;
          *&buf[14] = v10;
          _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%s not updating has watch on account; last fetch %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v15 = [MEMORY[0x277CF0130] sharedInstance];
        v16 = [v15 primaryAuthKitAccount];

        v17 = [v16 aa_altDSID];

        if (v17)
        {
          v18 = objc_alloc_init(MEMORY[0x277CF0178]);
          v19 = objc_alloc_init(MEMORY[0x277CF0220]);
          v20 = [v16 aa_altDSID];
          [v19 setAltDSID:v20];

          v53[0] = @"watchOS";
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
          [v19 setOperatingSystems:v21];

          v39 = 0;
          v40 = &v39;
          v41 = 0x2020000000;
          v42 = 1;
          v33 = 0;
          v34 = &v33;
          v35 = 0x3032000000;
          v36 = __Block_byref_object_copy__36;
          v37 = __Block_byref_object_dispose__36;
          v38 = MEMORY[0x277CBEC28];
          v22 = dispatch_semaphore_create(0);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke;
          v48 = &unk_2786189B8;
          v49 = v4;
          v51 = &v39;
          v52 = &v33;
          v23 = v18;
          v24 = v22;
          v50 = v24;
          [v18 deviceListWithContext:v19 completion:buf];
          v25 = dispatch_time(0, 10000000000);
          if (dispatch_semaphore_wait(v24, v25))
          {
            _HKInitializeLogging();
            v26 = *MEMORY[0x277CCC2B0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
            {
              *block = 138543362;
              *&block[4] = v4;
              _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch device list; semaphore timed out", block, 0xCu);
            }
          }

          else if (*(v40 + 24) == 1)
          {
            _HKInitializeLogging();
            log = *MEMORY[0x277CCC2B0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v4 + 64);
              v28 = v34[5];
              *block = 136315650;
              *&block[4] = "[HDUserCharacteristicsManager _queue_updateHasWatchOnAccount]";
              *&block[12] = 2114;
              *&block[14] = v27;
              *&block[22] = 2114;
              v44 = v28;
              _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_DEFAULT, "%s fetched has watch on account; %{public}@ -> %{public}@", block, 0x20u);
            }

            v29 = [MEMORY[0x277CBEAA8] date];
            CFPreferencesSetAppValue(@"HasWatchOnAccountLastFetchDate", v29, v9);

            v30 = *(v4 + 16);
            *block = MEMORY[0x277D85DD0];
            *&block[8] = 3221225472;
            *&block[16] = __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke_367;
            v44 = &unk_278617198;
            v45 = v4;
            v46 = &v33;
            dispatch_async(v30, block);
          }

          _Block_object_dispose(&v33, 8);
          _Block_object_dispose(&v39, 8);
        }
      }
    }
  }

  v31 = *(a1 + 32);

  [(HDUserCharacteristicsManager *)v31 _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
}

void __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = v8;
      v16 = [v7 localizedDescription];
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch device list: %{public}@", &v17, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v9 = MEMORY[0x277CCABB0];
  v10 = [v5 deviceList];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "count") != 0}];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __62__HDUserCharacteristicsManager__queue_updateHasWatchOnAccount__block_invoke_367(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 BOOLValue];
    if (v4 == [*(*(*(a1 + 40) + 8) + 40) BOOLValue])
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 64), *(*(*(a1 + 40) + 8) + 40));
  CFPreferencesSetAppValue(*MEMORY[0x277CCC178], *(*(*(a1 + 40) + 8) + 40), *MEMORY[0x277CCE4C8]);
  v5 = *(a1 + 32);

  [(HDUserCharacteristicsManager *)v5 _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_372(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA80];
  v3 = a2;
  v4 = [v2 currentCalendar];
  v5 = [v4 dateFromComponents:v3];

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 components:4 fromDate:v5 toDate:v6 options:0];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "year")}];

  return v8;
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_2_376(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDAB0];
  v3 = a2;
  v4 = [v2 gramUnitWithMetricPrefix:9];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  if (v6 <= 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  }

  return v7;
}

id __56__HDUserCharacteristicsManager__queue_updateUserProfile__block_invoke_3_380(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCDAB0];
  v3 = a2;
  v4 = [v2 meterUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  if (v6 <= 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  }

  return v7;
}

uint64_t __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v28 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v28)
  {
    v25 = 1;
    goto LABEL_32;
  }

  v23 = v4;
  v24 = a3;
  v27 = *v33;
  v25 = 1;
  do
  {
    v5 = 0;
    do
    {
      if (*v33 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v32 + 1) + 8 * v5);
      v7 = [v6 _relatedQuantityType];
      v8 = *(v4 + 40);
      v31 = 0;
      if (v8)
      {
        v9 = [(HDUserCharacteristicsManager *)v8 _mostRecentSampleOfType:v7 beforeDate:0 error:&v31];
        v10 = v31;
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      v11 = v10;
      v12 = [v9 quantity];
      if (v9)
      {
        [*(v4 + 48) setObject:v9 forKeyedSubscript:v6];
      }

      else if (v11)
      {
        v19 = v11;
        v18 = 0;
        v25 = 0;
        *v24 = v11;
        goto LABEL_25;
      }

      v13 = *(v4 + 40);
      v29 = 0;
      v30 = 0;
      v14 = [(HDUserCharacteristicsManager *)v13 _userCharacteristicForType:v6 entity:&v30 error:&v29];
      v15 = v30;
      v16 = v29;
      v17 = v16;
      if (v15)
      {
        [*(v4 + 56) setObject:v15 forKeyedSubscript:v6];
      }

      else if (v16)
      {
        if (v24)
        {
          v20 = v16;
          v18 = 0;
          v25 = 0;
          *v24 = v17;
        }

        else
        {
          _HKLogDroppedError();
          v18 = 0;
          v25 = 0;
        }

        v4 = v23;
        goto LABEL_24;
      }

      if (v12 == v14 || v14 && ([v12 isEqual:v14] & 1) != 0)
      {
        v18 = 1;
      }

      else
      {
        v18 = 1;
        *(*(*(v4 + 64) + 8) + 24) = 1;
      }

LABEL_24:

LABEL_25:
      if (!v18)
      {
        goto LABEL_32;
      }

      ++v5;
    }

    while (v28 != v5);
    v21 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    v28 = v21;
  }

  while (v21);
LABEL_32:

  return v25 & 1;
}

uint64_t __68__HDUserCharacteristicsManager__queue_updateQuantityCharacteristics__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v29 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v29)
  {
    v26 = a3;
    v28 = *v35;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v35 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v34 + 1) + 8 * v5);
      v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
      v30 = [v7 quantity];
      v8 = *(a1 + 48);
      v32 = 0;
      v33 = 0;
      v9 = [(HDUserCharacteristicsManager *)v8 _userCharacteristicForType:v6 entity:&v33 error:&v32];
      v10 = v33;
      v11 = v32;
      v12 = [*(a1 + 56) objectForKeyedSubscript:v6];
      v13 = [v12 persistentID];
      v14 = [v10 persistentID];
      if (!v11)
      {
        v15 = v14;
        if (v13 != v14)
        {
          break;
        }
      }

      if (v11)
      {
        goto LABEL_19;
      }

      v17 = v30;
      if (v30 != v9)
      {
        if (!v9 || ([v30 isEqual:v9] & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC2B0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v39 = v6;
            _os_log_debug_impl(&dword_228986000, v18, OS_LOG_TYPE_DEBUG, "Updating quantity characteristic for %@", buf, 0xCu);
          }

          v19 = *(a1 + 48);
          v20 = [v7 quantity];
          v31 = 0;
          LOBYTE(v19) = [v19 _setUserCharacteristic:v20 forType:v6 shouldInsertSample:0 updateProfileAndSync:0 error:&v31];
          v11 = v31;

          *(*(*(a1 + 64) + 8) + 24) = (*(*(*(a1 + 64) + 8) + 24) | v19) & 1;
          if ((v19 & 1) == 0)
          {
            v22 = v11;
            v23 = v22;
            if (v22)
            {
              if (v26)
              {
                v24 = v22;
                *v26 = v23;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v21 = 0;
            goto LABEL_28;
          }

          goto LABEL_19;
        }

        v11 = 0;
      }

LABEL_20:

      if (v29 == ++v5)
      {
        v29 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v39 = v13;
      v40 = 2048;
      v41 = v15;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "Not updating quantity characteristic: kv row changed from %lld to %lld", buf, 0x16u);
    }

    v11 = 0;
LABEL_19:
    v17 = v30;
    goto LABEL_20;
  }

LABEL_22:
  v21 = 1;
LABEL_28:

  return v21;
}

- (id)_mostRecentSampleOfType:(void *)type beforeDate:(uint64_t)date error:
{
  v7 = a2;
  typeCopy = type;
  if (typeCopy)
  {
    v9 = HDSampleEntityPredicateForStartDate(3, typeCopy);
  }

  else
  {
    v9 = 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 8));
  v11 = [HDSampleEntity mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:v9 anchor:0 error:date];

  return v11;
}

- (void)profileDidBecomeReady:(id)ready
{
  v67[1] = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v59 = 0;
  v6 = [cloudSyncManager canPerformCloudSyncWithError:&v59];
  v43 = v59;
  self->_isCloudSyncEnabled = v6;

  objc_initWeak(&location, self);
  queue = self->_queue;
  handler = MEMORY[0x277D85DD0];
  v64 = 3221225472;
  v65 = __67__HDUserCharacteristicsManager__registerForTimeChangeNotifications__block_invoke;
  v66 = &unk_278613BF0;
  objc_copyWeak(v67, &location);
  notify_register_dispatch("SignificantTimeChangeNotification", &self->_significantTimeChangeNotificationToken, queue, &handler);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didReceiveDayChangeNotification_ name:*MEMORY[0x277CBE580] object:0];

  objc_destroyWeak(v67);
  objc_destroyWeak(&location);
  v9 = objc_loadWeakRetained(&self->_profile);
  daemon = [v9 daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_didReceiveAuthKitDeviceListChangeNotification_ name:*MEMORY[0x277CF0010] object:0];
  }

  objc_initWeak(&location, self);
  v14 = objc_alloc(MEMORY[0x277CCDD98]);
  v15 = self->_queue;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke;
  v57[3] = &unk_278616F38;
  objc_copyWeak(&v58, &location);
  v16 = [v14 initWithMode:0 queue:v15 delay:v57 block:3.0];
  updateOperation = self->_updateOperation;
  self->_updateOperation = v16;

  v18 = objc_loadWeakRetained(&self->_profile);
  dataManager = [v18 dataManager];
  v20 = objc_loadWeakRetained(&self->_profile);
  daemon2 = [v20 daemon];
  behavior2 = [daemon2 behavior];
  isAppleWatch2 = [behavior2 isAppleWatch];

  if ((isAppleWatch2 & 1) == 0)
  {
    nanoSyncManager = [v18 nanoSyncManager];
    [nanoSyncManager addObserver:self];

    cloudSyncManager2 = [v18 cloudSyncManager];
    [cloudSyncManager2 addObserver:self queue:self->_queue];
  }

  if (self->_shouldUpdateQuantityCharacteristics)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v26 = QuantityCharacteristicTypes();
    v27 = [v26 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v27)
    {
      v28 = *v54;
      do
      {
        v29 = 0;
        do
        {
          if (*v54 != v28)
          {
            objc_enumerationMutation(v26);
          }

          _relatedQuantityType = [*(*(&v53 + 1) + 8 * v29) _relatedQuantityType];
          [dataManager addObserver:self forDataType:_relatedQuantityType];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v26 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v27);
    }
  }

  if (self->_shouldUpdateCategoryCharacteristics)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB10]];
    handler = v31;
    v32 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB20]];
    v64 = v32;
    v33 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
    v65 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&handler count:3];

    v35 = [v34 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v35)
    {
      v36 = *v50;
      do
      {
        v37 = 0;
        do
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(v34);
          }

          _relatedCategoryType = [*(*(&v49 + 1) + 8 * v37) _relatedCategoryType];
          [dataManager addObserver:self forDataType:_relatedCategoryType];

          ++v37;
        }

        while (v35 != v37);
        v35 = [v34 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v35);
    }
  }

  v39 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:{*MEMORY[0x277CCBB00], v43}];
  _relatedCategoryType2 = [v39 _relatedCategoryType];
  [dataManager addObserver:self forDataType:_relatedCategoryType2];

  database = [v18 database];
  [database addProtectedDataObserver:self queue:self->_queue];

  if (!_HDIsUnitTesting)
  {
    v42 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke_2;
    block[3] = &unk_2786177F8;
    v47 = v18;
    objc_copyWeak(&v48, &location);
    dispatch_async(v42, block);
    objc_destroyWeak(&v48);
  }

  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);
}

void __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDUserCharacteristicsManager *)WeakRetained _queue_updateCharacteristicsAndUserProfile];
}

void __54__HDUserCharacteristicsManager_profileDidBecomeReady___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 isProtectedDataAvailable];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [(HDUserCharacteristicsManager *)WeakRetained _queue_updateCharacteristicsAndUserProfile];
  }
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy && self->_needsUpdateAfterUnlock)
  {

    [(HDUserCharacteristicsManager *)self _queue_updateCharacteristicsAndUserProfile];
  }
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDUserCharacteristicsManager_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDUserCharacteristicsManager_samplesOfTypesWereRemoved_anchor___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)diagnosticDescription
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_needsUpdateAfterUnlock)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [string appendFormat:@"Needs update after unlock: %s\n", v5];
  v6 = HKDiagnosticStringFromDate();
  [v4 appendFormat:@"Profile last updated: %@\n", v6];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  isAppleInternalInstall = [behavior isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    lastUserProfile = self->_lastUserProfile;
    if (!lastUserProfile)
    {
      lastUserProfile = &stru_283BF39C8;
    }

    [v4 appendFormat:@"Last user profile: %@", lastUserProfile];
  }

  return v4;
}

- (void)nanoSyncManager:(id)manager pairedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"HDUserCharacteristicsManager.nanoSyncManager:pairedDevicesChanged:"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDUserCharacteristicsManager_nanoSyncManager_pairedDevicesChanged___block_invoke;
  block[3] = &unk_278613830;
  v11 = changedCopy;
  selfCopy = self;
  v13 = v6;
  v8 = v6;
  v9 = changedCopy;
  dispatch_async(queue, block);
}

uint64_t __69__HDUserCharacteristicsManager_nanoSyncManager_pairedDevicesChanged___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allDeviceInfos];
  v3 = [v2 count];

  if (v3)
  {
    [(HDUserCharacteristicsManager *)*(a1 + 40) _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[HDUserCharacteristicsManager nanoSyncManager:pairedDevicesChanged:]_block_invoke";
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%s updating the watch on account state for a paired devices change", &v6, 0xCu);
    }

    [(HDUserCharacteristicsManager *)*(a1 + 40) _updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:?];
  }

  return [*(a1 + 48) invalidate];
}

- (void)cloudSyncManager:(id)manager didUpdateSyncEnabled:(BOOL)enabled
{
  if (self->_isCloudSyncEnabled != enabled)
  {
    self->_isCloudSyncEnabled = enabled;
    [(HDUserCharacteristicsManager *)self _queue_updateFitnessModeDefaultAndNotifyIfNecessary];
  }
}

- (void)didReceiveDayChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDUserCharacteristicsManager_didReceiveDayChangeNotification___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__HDUserCharacteristicsManager__registerForTimeChangeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDUserCharacteristicsManager *)WeakRetained _queue_updateCharacteristicsAndUserProfileWithDelay];
}

- (void)didReceiveAuthKitDeviceListChangeNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDUserCharacteristicsManager_didReceiveAuthKitDeviceListChangeNotification___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __78__HDUserCharacteristicsManager_didReceiveAuthKitDeviceListChangeNotification___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[HDUserCharacteristicsManager didReceiveAuthKitDeviceListChangeNotification:]_block_invoke";
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%s updating the watch on account state for a device list change", &v3, 0xCu);
  }

  [(HDUserCharacteristicsManager *)*(a1 + 32) _updateHasWatchOnAccountWithRandomDelayAndResetIfNecessary:?];
}

- (void)addProfileObserver:(id)observer
{
  observerCopy = observer;
  [(HDUserCharacteristicsProfileObserver *)self->_observers registerObserver:observerCopy];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HDUserCharacteristicsManager_addProfileObserver___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __51__HDUserCharacteristicsManager_addProfileObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 24);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HDUserCharacteristicsManager_addProfileObserver___block_invoke_2;
    v7[3] = &unk_278618A90;
    v7[4] = v4;
    v8 = v2;
    [v6 notifyObserver:v5 handler:v7];
  }
}

- (void)unitTest_updateCharacteristicsAndUserProfileWithDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HDUserCharacteristicsManager_unitTest_updateCharacteristicsAndUserProfileWithDate_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = dateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

uint64_t __96__HDUserCharacteristicsManager_unitTest_updateCharacteristicsAndUserProfileWithDate_completion___block_invoke(uint64_t a1)
{
  [(HDUserCharacteristicsManager *)*(a1 + 32) _queue_updateCharacteristicsAndUserProfileWithDate:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

@end