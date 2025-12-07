@interface HDSHPluginServer
+ (id)requiredEntitlements;
+ (id)taskIdentifier;
- (BOOL)_deleteSamples:(id)samples error:(id *)error;
- (BOOL)_insertSamplesWithClientSource:(id)source error:(id *)error;
- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepDurationGoal:(id)goal error:(id *)error;
- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepSchedules:(id)schedules error:(id *)error;
- (BOOL)_replaceSamples:(id)samples withSamples:(id)withSamples error:(id *)error;
- (HDSHPluginServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_saveSleepTrackingSamplesAfterFirstUnlock:(id)unlock replacingSamplesInDateInterval:(id)interval completion:(id)completion;
- (void)remote_saveSleepTrackingSamples:(id)samples replacingSamplesInDateInterval:(id)interval completion:(id)completion;
- (void)remote_startSleepTrackingSession;
- (void)remote_stopSleepTrackingSession;
- (void)remote_updateCurrentSleepSchedules:(id)schedules sleepDurationGoal:(id)goal completion:(id)completion;
@end

@implementation HDSHPluginServer

- (HDSHPluginServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = HDSHPluginServer;
  v12 = [(HDStandardTaskServer *)&v21 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v12)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v12->_profile, profile);

    profile2 = [clientCopy profile];
    v15 = [profile2 profileExtensionWithIdentifier:*MEMORY[0x277D62658]];
    profileExtension = v12->_profileExtension;
    v12->_profileExtension = v15;

    objc_storeStrong(&v12->_client, client);
    v17 = dispatch_queue_create("com.apple.HDSHPluginServer.serial", 0);
    serializer = v12->_serializer;
    v12->_serializer = v17;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v12];
  }

  return v12;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return [v2 taskIdentifier];
}

+ (id)requiredEntitlements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)remote_updateCurrentSleepSchedules:(id)schedules sleepDurationGoal:(id)goal completion:(id)completion
{
  schedulesCopy = schedules;
  goalCopy = goal;
  completionCopy = completion;
  serializer = self->_serializer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HDSHPluginServer_remote_updateCurrentSleepSchedules_sleepDurationGoal_completion___block_invoke;
  v15[3] = &unk_279C83130;
  v16 = schedulesCopy;
  selfCopy = self;
  v18 = goalCopy;
  v19 = completionCopy;
  v12 = goalCopy;
  v13 = completionCopy;
  v14 = schedulesCopy;
  dispatch_async(serializer, v15);
}

void __84__HDSHPluginServer_remote_updateCurrentSleepSchedules_sleepDurationGoal_completion___block_invoke(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCC320];
  if (a1[4])
  {
    _HKInitializeLogging();
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = a1[4];
      *buf = 138543618;
      v37 = v7;
      v38 = 2112;
      v39 = v8;
      v9 = v7;
      _os_log_impl(&dword_269C02000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating current sleep schedules: %@", buf, 0x16u);
    }

    v11 = a1[4];
    v10 = a1[5];
    v35 = 0;
    v12 = [v10 _populateSamplesToInsert:v2 samplesToDelete:v3 forSleepSchedules:v11 error:&v35];
    v13 = v35;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (a1[6])
  {
    _HKInitializeLogging();
    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v18 = a1[6];
      *buf = 138543618;
      v37 = v17;
      v38 = 2112;
      v39 = v18;
      v19 = v17;
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating sleep duration goal: %@", buf, 0x16u);
    }

    v20 = a1[5];
    v21 = a1[6];
    v34 = 0;
    v22 = [v20 _populateSamplesToInsert:v2 samplesToDelete:v3 forSleepDurationGoal:v21 error:&v34];
    v23 = v34;
    v14 = v23;
    if (v22)
    {

      goto LABEL_11;
    }

LABEL_14:
    v32 = *(a1[7] + 16);
    goto LABEL_15;
  }

LABEL_11:
  v24 = a1[5];
  v33 = 0;
  v25 = [v24 _replaceSamples:v3 withSamples:v2 error:&v33];
  v14 = v33;
  _HKInitializeLogging();
  v26 = *v4;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    v28 = objc_opt_class();
    v29 = MEMORY[0x277CCABB0];
    v30 = v28;
    v31 = [v29 numberWithBool:v25];
    *buf = 138543618;
    v37 = v28;
    v38 = 2112;
    v39 = v31;
    _os_log_impl(&dword_269C02000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished replace with success: %@", buf, 0x16u);
  }

  v32 = *(a1[7] + 16);
LABEL_15:
  v32();
}

- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepSchedules:(id)schedules error:(id *)error
{
  v132 = *MEMORY[0x277D85DE8];
  insertCopy = insert;
  deleteCopy = delete;
  schedulesCopy = schedules;
  firstObject = [schedulesCopy firstObject];
  startDate = [firstObject startDate];

  v10 = HKSleepScheduleWeekdayArrayFromWeekdays();
  v11 = [v10 arrayByAddingObject:&unk_287A9AD68];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v119 objects:v131 count:16];
  v95 = v12;
  obj = v13;
  if (!v14)
  {
    v94 = 0;
    goto LABEL_19;
  }

  v15 = v14;
  errorCopy = error;
  v94 = 0;
  v16 = *v120;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v120 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v119 + 1) + 8 * i);
      v19 = MEMORY[0x277D10870];
      integerValue = [v18 integerValue];
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      hk_timeZoneEncodingOptions = [MEMORY[0x277D10690] hk_timeZoneEncodingOptions];
      v118 = v94;
      v23 = [v19 mostRecentSleepScheduleForWeekday:integerValue beforeDate:0 profile:WeakRetained encodingOptions:hk_timeZoneEncodingOptions error:&v118];
      v24 = v118;

      v12 = v95;
      [v95 setObject:v23 forKeyedSubscript:v18];
      v94 = v24;
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24 == 0;
      }

      if (!v25)
      {
        if (![v24 hk_isDatabaseAccessibilityError])
        {
          v30 = v24;
          if (errorCopy)
          {
            v31 = v24;
            v32 = 0;
            *errorCopy = v24;
          }

          else
          {
            _HKLogDroppedError();
            v32 = 0;
          }

          v78 = obj;
          v34 = obj;
          goto LABEL_75;
        }

        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = objc_opt_class();
          *buf = 138543618;
          v128 = v28;
          v129 = 2112;
          v130 = v24;
          v29 = v28;
          _os_log_impl(&dword_269C02000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot retrieve most recent sample for weekday, protected data unavailable: %@", buf, 0x16u);
        }
      }
    }

    v13 = obj;
    v15 = [obj countByEnumeratingWithState:&v119 objects:v131 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_19:

  _HKInitializeLogging();
  v33 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v80 = v33;
    v81 = objc_opt_class();
    *buf = 138543618;
    v128 = v81;
    v129 = 2112;
    v130 = v12;
    v82 = v81;
    _os_log_debug_impl(&dword_269C02000, v80, OS_LOG_TYPE_DEBUG, "[%{public}@] Old schedules: %@", buf, 0x16u);
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v98 = schedulesCopy;
  v35 = [v98 countByEnumeratingWithState:&v114 objects:v126 count:16];
  if (v35)
  {
    v36 = v35;
    v100 = *v115;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v115 != v100)
        {
          objc_enumerationMutation(v98);
        }

        v38 = *(*(&v114 + 1) + 8 * j);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        [v38 weekdays];
        v39 = HKSleepScheduleWeekdayArrayFromWeekdays();
        v40 = [v39 countByEnumeratingWithState:&v110 objects:v125 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v111;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v111 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v110 + 1) + 8 * k);
              v45 = [v34 objectForKeyedSubscript:v44];

              if (v45)
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:self file:@"HDSHPluginServer.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"newSchedulesByWeekday[weekdayNumber] == nil"}];
              }

              [v34 setObject:v38 forKeyedSubscript:v44];
            }

            v41 = [v39 countByEnumeratingWithState:&v110 objects:v125 count:16];
          }

          while (v41);
        }
      }

      v36 = [v98 countByEnumeratingWithState:&v114 objects:v126 count:16];
    }

    while (v36);
  }

  _HKInitializeLogging();
  v47 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v83 = v47;
    v84 = objc_opt_class();
    *buf = 138543618;
    v128 = v84;
    v129 = 2112;
    v130 = v34;
    v85 = v84;
    _os_log_debug_impl(&dword_269C02000, v83, OS_LOG_TYPE_DEBUG, "[%{public}@] New schedules: %@", buf, 0x16u);
  }

  v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v49 = obj;
  v50 = [v49 countByEnumeratingWithState:&v106 objects:v124 count:16];
  v12 = v95;
  if (v50)
  {
    v51 = v50;
    v52 = *v107;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v107 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v106 + 1) + 8 * m);
        if (([v48 containsObject:v54] & 1) == 0)
        {
          v55 = [v95 objectForKeyedSubscript:v54];
          v56 = [v34 objectForKeyedSubscript:v54];
          v57 = [v55 hasEquivalentTimesToSleepSchedule:v56];
          if (v56 && (v57 & 1) == 0)
          {
            if (v55)
            {
              goto LABEL_51;
            }

            bedTimeComponents = [v56 bedTimeComponents];
            if (bedTimeComponents)
            {

              goto LABEL_51;
            }

            wakeTimeComponents = [v56 wakeTimeComponents];

            if (wakeTimeComponents)
            {
LABEL_51:
              [insertCopy addObject:v56];
              [v56 weekdays];
              v60 = HKSleepScheduleWeekdayArrayFromWeekdays();
              [v48 addObjectsFromArray:v60];
            }
          }

          continue;
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v106 objects:v124 count:16];
    }

    while (v51);
  }

  _HKInitializeLogging();
  v61 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v86 = v61;
    v87 = objc_opt_class();
    *buf = 138543618;
    v128 = v87;
    v129 = 2112;
    v130 = v48;
    v88 = v87;
    _os_log_debug_impl(&dword_269C02000, v86, OS_LOG_TYPE_DEBUG, "[%{public}@] Changed schedules: %@", buf, 0x16u);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = v48;
  v62 = [v101 countByEnumeratingWithState:&v102 objects:v123 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v103;
    do
    {
      v65 = 0;
      do
      {
        if (*v103 != v64)
        {
          objc_enumerationMutation(v101);
        }

        v66 = *(*(&v102 + 1) + 8 * v65);
        v67 = [v12 objectForKeyedSubscript:v66];
        v68 = [v34 objectForKeyedSubscript:v66];
        if (v67)
        {
          if (([deleteCopy containsObject:v67] & 1) == 0)
          {
            v69 = MEMORY[0x277CBEB98];
            [v67 weekdays];
            v70 = HKSleepScheduleWeekdayArrayFromWeekdays();
            v71 = [v69 setWithArray:v70];
            v72 = [v71 hk_minus:v101];
            v73 = [v72 count];

            v12 = v95;
            if (!v73 && ([v67 weekdays] || objc_msgSend(v67, "hasEquivalentOverrideDayToSleepSchedule:", v68)))
            {
              startDate2 = [v67 startDate];
              [startDate2 timeIntervalSinceDate:startDate];
              v76 = v75;

              if (v76 > -3600.0)
              {
                [deleteCopy addObject:v67];
              }
            }
          }
        }

        ++v65;
      }

      while (v63 != v65);
      v77 = [v101 countByEnumeratingWithState:&v102 objects:v123 count:16];
      v63 = v77;
    }

    while (v77);
  }

  v32 = 1;
  v78 = obj;
  v30 = v94;
LABEL_75:

  return v32;
}

- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepDurationGoal:(id)goal error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  insertCopy = insert;
  deleteCopy = delete;
  goalCopy = goal;
  v13 = MEMORY[0x277D10810];
  sleepDurationGoalType = [MEMORY[0x277CCD720] sleepDurationGoalType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v38 = 0;
  v16 = [v13 mostRecentSampleWithType:sleepDurationGoalType profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v38];
  v17 = v38;

  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 == 0;
  }

  v19 = v18;
  if (v18)
  {
    quantity = [v16 quantity];
    quantity2 = [goalCopy quantity];
    v22 = [quantity isEqual:quantity2];

    if (v22)
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = objc_opt_class();
        *buf = 138543362;
        v40 = v25;
        v26 = v25;
        _os_log_impl(&dword_269C02000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping saving unchanged sleep duration goal", buf, 0xCu);
      }
    }

    else
    {
      [insertCopy addObject:goalCopy];
      if (v16)
      {
        startDate = [v16 startDate];
        startDate2 = [goalCopy startDate];
        [startDate timeIntervalSinceDate:startDate2];
        v33 = v32;

        if (v33 > -3600.0)
        {
          [deleteCopy addObject:v16];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v35 = v27;
      v36 = objc_opt_class();
      *buf = 138543618;
      v40 = v36;
      v41 = 2114;
      v42 = v17;
      v37 = v36;
      _os_log_error_impl(&dword_269C02000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving latest sleep duration goal: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v29 = v17;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v19;
}

- (void)remote_startSleepTrackingSession
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking session started", v7, 0xCu);
  }

  v6 = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager:*v7];
  [v6 beginObservingContentProtectionState];
}

- (void)remote_stopSleepTrackingSession
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking session stopped", v8, 0xCu);
  }

  v6 = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager:*v8];
  [v6 stopObservingContentProtectionState];

  accessibilityAssertionManager = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager];
  [accessibilityAssertionManager invalidateAccessibilityAssertion];
}

- (void)remote_saveSleepTrackingSamples:(id)samples replacingSamplesInDateInterval:(id)interval completion:(id)completion
{
  samplesCopy = samples;
  intervalCopy = interval;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HDSHPluginServer_remote_saveSleepTrackingSamples_replacingSamplesInDateInterval_completion___block_invoke;
  v16[3] = &unk_279C83130;
  v16[4] = self;
  v17 = samplesCopy;
  v18 = intervalCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = intervalCopy;
  v15 = samplesCopy;
  [database performWhenDataProtectedByFirstUnlockIsAvailable:v16];
}

- (void)_saveSleepTrackingSamplesAfterFirstUnlock:(id)unlock replacingSamplesInDateInterval:(id)interval completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  unlockCopy = unlock;
  intervalCopy = interval;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC320];
  v12 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
  if (intervalCopy)
  {
    if (v12)
    {
      v13 = v11;
      *buf = 138543874;
      v27 = objc_opt_class();
      v28 = 2112;
      v29 = intervalCopy;
      v30 = 2112;
      v31 = unlockCopy;
      v14 = v27;
      v15 = "[%{public}@] replacing sleep tracking samples in %@ with %@";
      v16 = v13;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  else if (v12)
  {
    v13 = v11;
    *buf = 138543618;
    v27 = objc_opt_class();
    v28 = 2112;
    v29 = unlockCopy;
    v14 = v27;
    v15 = "[%{public}@] saving sleep tracking samples %@";
    v16 = v13;
    v17 = 22;
    goto LABEL_6;
  }

  accessibilityAssertionManager = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager];
  accessibilityAssertion = [accessibilityAssertionManager accessibilityAssertion];

  v20 = [MEMORY[0x277CCDA00] hd_sourceForClient:self->_client bundleIdentifier:0];
  v21 = [[HDSHReplaceSleepSamplesOperation alloc] initWithSleepSamplesToInsert:unlockCopy source:v20 replacementInterval:intervalCopy accessibilityAssertion:accessibilityAssertion];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v25 = 0;
  v23 = [(HDJournalableOperation *)v21 performOrJournalWithProfile:WeakRetained error:&v25];
  v24 = v25;

  completionCopy[2](completionCopy, v23, v24);
}

- (BOOL)_replaceSamples:(id)samples withSamples:(id)withSamples error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  withSamplesCopy = withSamples;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138543874;
    v24 = objc_opt_class();
    v25 = 2112;
    v26 = samplesCopy;
    v27 = 2112;
    v28 = withSamplesCopy;
    v12 = v24;
    _os_log_impl(&dword_269C02000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing old samples: %@ with new samples: %@", buf, 0x20u);
  }

  v22 = 0;
  v13 = [(HDSHPluginServer *)self _insertSamplesWithClientSource:withSamplesCopy error:&v22];
  v14 = v22;
  v15 = v14;
  if (v13)
  {
    v21 = v14;
    v16 = [(HDSHPluginServer *)self _deleteSamples:samplesCopy error:&v21];
    v17 = v21;

    v15 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = v15;
  if (v18)
  {
    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v16;
}

- (BOOL)_deleteSamples:(id)samples error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [samples hk_map:&__block_literal_global];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v15 = 138543618;
    *&v15[4] = objc_opt_class();
    *&v15[12] = 2112;
    *&v15[14] = v6;
    v9 = *&v15[4];
    _os_log_impl(&dword_269C02000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting UUIDs: %@", v15, 0x16u);
  }

  v10 = [(HDStandardTaskServer *)self profile:*v15];
  dataManager = [v10 dataManager];
  v12 = objc_alloc_init(MEMORY[0x277D10688]);
  v13 = [dataManager deleteObjectsWithUUIDCollection:v6 configuration:v12 error:error];

  return v13;
}

- (BOOL)_insertSamplesWithClientSource:(id)source error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v9 = [sourceManager createOrUpdateSourceForClient:self->_client error:error];

  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC320];
  v11 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    client = self->_client;
    v29 = 138543874;
    v30 = v13;
    v31 = 2112;
    v32 = client;
    v33 = 2112;
    v34 = v9;
    v15 = v13;
    _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserting for client: %@, source: %@", &v29, 0x20u);
  }

  if (v9)
  {
    v16 = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [v16 dataProvenanceManager];
    v18 = [dataProvenanceManager localDataProvenanceForSourceEntity:v9 version:0 deviceEntity:0];

    v19 = objc_loadWeakRetained(&self->_profile);
    dataManager = [v19 dataManager];
    v21 = [dataManager insertDataObjects:sourceCopy withProvenance:v18 creationDate:0 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];

    _HKInitializeLogging();
    v22 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = objc_opt_class();
      v25 = MEMORY[0x277CCABB0];
      v26 = v24;
      v27 = [v25 numberWithBool:v21];
      v29 = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_269C02000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Success inserting: %@", &v29, 0x16u);
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

@end