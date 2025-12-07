@interface HDAnalyticsSubmissionCoordinator
- (BOOL)isEventUsed:(id)used;
- (HDAnalyticsSubmissionCoordinator)initWithProfile:(id)profile;
- (_HKBehavior)behavior;
- (id)_createHealthStoreForProfileIdentifier:(id)identifier;
- (void)_locked_sendDailyAnalyticsWithTimeout:(uint64_t)timeout;
- (void)_logFaultForTimedOutObservers:(id)observers timeoutSeconds:(double)seconds;
- (void)_performAnalyticsSubmissionWithCompletion:(uint64_t)completion;
- (void)_sendTinkerSyncEventWithLatency:(void *)latency timeSinceLastSuccessfullPull:(void *)pull configuration:(char)configuration success:(void *)success error:;
- (void)attachments_reportDailyAnalytics:(id)analytics;
- (void)attachments_reportDailyCloudAnalytics:(id)analytics;
- (void)authorization_reportAuthRequestPromptedForBundleIdentifer:(id)identifer profileType:(int64_t)type;
- (void)authorization_reportAuthRequestsFromBundleIdentifier:(id)identifier isExtension:(BOOL)extension isAppleWatch:(BOOL)watch shouldPrompt:(BOOL)prompt;
- (void)cloudCache_reportCacheDiscrepancyForOperation:(id)operation reason:(id)reason containerIdentifier:(id)identifier databaseScope:(id)scope error:(id)error;
- (void)cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline:(id)pipeline changedZonesCount:(int64_t)count deletedZonesCount:(int64_t)zonesCount changedRecordsCount:(int64_t)recordsCount deletedRecordsCount:(int64_t)deletedRecordsCount;
- (void)cloudCache_reportCacheSyncAnalyticsForPipeline:(id)pipeline operationCount:(int64_t)count;
- (void)cloudCache_reportDailyCacheAnalyticsWithPushTargets:(int64_t)targets pullTargets:(int64_t)pullTargets sharedDBSummarySharingZones:(int64_t)zones privateDBSummarySharingZones:(int64_t)sharingZones unifiedZoneInSharedDB:(BOOL)b unifiedZoneInPrivateDB:(BOOL)dB deviceContexts:(unint64_t)contexts deviceKeys:(unint64_t)self0 nilSyncIdentities:(unint64_t)self1;
- (void)cloudCache_reportWeeklyAnalyticsWithCacheValidation:(id)validation;
- (void)cloudSync_newChildAdded:(BOOL)added;
- (void)cloudSync_operationFailed:(id)failed error:(id)error;
- (void)cloudSync_operationFinished:(id)finished;
- (void)cloudSync_operationStarted:(id)started;
- (void)cloudSync_reportDailyAnalyticForProfileType:(int64_t)type syncEnabled:(BOOL)enabled syncDisabledError:(id)error primaryContainer:(id)container restoreComplete:(BOOL)complete timeSinceRestoreStart:(id)start journalSize:(id)size oldestJournalAge:(id)self0 timeSinceLastSuccessfulPull:(id)self1 timeSinceLastSuccessfulPush:(id)self2 timeSinceLastSuccessfulLitePush:(id)self3 timeSinceLastPushForwardProgress:(id)self4 storeCount:(int64_t)self5 zoneCount:(int64_t)self6 hasUnifiedZone:(BOOL)self7 hasMasterZone:(BOOL)self8 hasMedicalID:(BOOL)self9 errorRequiringUserAction:(id)action childSyncIdentityCount:(int64_t)identityCount canUpgradeToSyncIdentity:(BOOL)identity startedUpgradeToSyncIdentity:(BOOL)syncIdentity completedUpgradeToSyncIdentity:(BOOL)toSyncIdentity iPhoneCount:(id)phoneCount iPadCount:(id)padCount watchCount:(id)watchCount visionProCount:(id)proCount totalSyncsCount:(id)syncsCount successfulSyncPercentageCount:(id)type0;
- (void)cloudSync_reportFullSyncMetricsWithReason:(id)reason shard:(id)shard daysSincePreviousFullSync:(id)sync totalDuration:(double)duration activeDuration:(double)activeDuration numberOfRuns:(id)runs incomplete:(BOOL)incomplete;
- (void)cloudSync_reportMissingManateeIdentityDuringFetchInContainer:(id)container zoneName:(id)name databaseScope:(int64_t)scope;
- (void)cloudSync_reportOwnershipChangeForMissingManateeIdentityDuringPush;
- (void)cloudSync_reportOwnershipChangeForProfile:(id)profile reason:(id)reason;
- (void)cloudSync_reportPeriodicSyncFailureWithError:(id)error duration:(double)duration type:(int64_t)type;
- (void)cloudSync_reportPeriodicSyncStartForType:(int64_t)type;
- (void)cloudSync_reportPeriodicSyncSuccessAfterDuration:(double)duration type:(int64_t)type;
- (void)cloudSync_reportPipelineFailed:(id)failed error:(id)error;
- (void)cloudSync_reportPipelineFinished:(id)finished;
- (void)cloudSync_reportPipelineStarted:(id)started;
- (void)cloudSync_reportRebaseTriggeredByDeletionByUser:(BOOL)user;
- (void)cloudSync_reportRestoreForProfile:(id)profile startDate:(id)date endDate:(id)endDate duration:(double)duration finishedJournalMerge:(BOOL)merge;
- (void)contextSync_operationSucceeded:(id)succeeded;
- (void)contextSync_triggerDuration:(double)duration;
- (void)database_reportCachedQueryEvent:(id)event cacheHits:(int64_t)hits cacheMisses:(int64_t)misses estimatedTotalBuckets:(unint64_t)buckets;
- (void)database_reportDatabaseMigrationStatus:(int64_t)status database:(id)database schemaVersion:(int64_t)version error:(id)error profileType:(int64_t)type;
- (void)database_reportJournalEntryInsertedForJournal:(int64_t)journal entryClass:(id)class entrySize:(id)size;
- (void)database_reportJournalMergeActivityResult:(int64_t)result duration:(double)duration interruptions:(id)interruptions error:(id)error;
- (void)database_reportSQLiteCorruptionWithExtendedErrorCode:(int)code type:(int64_t)type profile:(id)profile description:(id)description sqlStatement:(id)statement failedObliterationAttempt:(BOOL)attempt;
- (void)database_reportUnprotectedDatabaseIdentifier:(id)identifier doesNotMatchProtectedDatabaseIdentifier:(id)databaseIdentifier;
- (void)healthService_reportCountForAllServices:(id)services profileType:(int64_t)type;
- (void)healthService_reportServiceType:(id)type duration:(double)duration profileType:(int64_t)profileType;
- (void)healthService_reportServiceTypeAdded:(id)added profileType:(int64_t)type;
- (void)healthService_reportServiceTypeRemoved:(id)removed profileType:(int64_t)type;
- (void)heartDaily_reportHeartDailyAnalytics:(id)analytics;
- (void)heartRate_reportDailyRestingHeartRate:(double)rate sedentaryHeartRateCount:(int)count filteredSedentaryHeartRateCount:(int)rateCount hasTimeAsleep:(BOOL)asleep hasBGHRSleepMode:(BOOL)mode unfilteredRestingHeartRate:(double)heartRate profileType:(int64_t)type;
- (void)maintenanceCoordinator_reportCoreAnalyticsWithOperationName:(id)name database:(id)database pendingOperationsCount:(int64_t)count activeOperationsCount:(int64_t)operationsCount timeUntilStart:(int64_t)start canceled:(BOOL)canceled timedOut:(BOOL)out elapsedTime:(int64_t)self0 isImmediateRequest:(BOOL)self1 async:(BOOL)self2;
- (void)medicalID_dailyReport:(id)report sosContactStatus:(BOOL)status profileType:(int64_t)type;
- (void)medicalID_reportHasBeenDeletedForProfileType:(int64_t)type;
- (void)medicalID_reportHasBeenSetForProfileType:(int64_t)type;
- (void)nanoSync_reportResponseStatusCode:(int)code profileType:(int64_t)type;
- (void)nanoSync_reportSyncFailureWithReason:(id)reason options:(unint64_t)options duration:(double)duration profileType:(int64_t)type error:(id)error;
- (void)nanoSync_reportSyncSuccessWithReason:(id)reason options:(unint64_t)options duration:(double)duration profileType:(int64_t)type;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
- (void)sendDailyAnalyticsWithTimeout:(double)timeout completion:(id)completion;
- (void)sendEvent:(id)event block:(id)block;
- (void)stateSync_operationFailed:(id)failed error:(id)error;
- (void)stateSync_operationSucceeded:(id)succeeded;
- (void)stateSync_recordSize:(unint64_t)size;
- (void)stateSync_subscriptionTriggeredDomain:(id)domain;
- (void)stateSync_triggerDuration:(double)duration;
- (void)summarySharing_reportDailyAnalytics:(id)analytics activeWatchProductType:(id)type age:(int64_t)age sex:(id)sex;
- (void)summarySharing_reportSetupOperation:(id)operation success:(BOOL)success error:(id)error;
- (void)tinker_pairingDidFailWithError:(id)error configuration:(id)configuration duration:(double)duration stage:(int64_t)stage;
- (void)tinker_pairingDidFinishForConfiguration:(id)configuration duration:(double)duration;
- (void)workout_reportEvent:(id)event timestamp:(id)timestamp sessionID:(id)d activityType:(int64_t)type sessionDuration:(int64_t)duration activityCount:(int64_t)count extendedMode:(BOOL)mode totalLocations:(int64_t)self0 routeSmoothingRetryCount:(int64_t)self1 activityID:(id)self2 failure:(BOOL)self3;
- (void)workout_reportGymKitWorkoutWithFitnessMachineType:(id)type manufacturer:(id)manufacturer timeToBeginExperience:(int64_t)experience workoutEndError:(int64_t)error;
- (void)workout_reportMirroringEventWithStartDuration:(double)duration stopDuration:(double)stopDuration mirroringDuration:(double)mirroringDuration numOfSendDataRequests:(int64_t)requests maxTimeToSendData:(double)data minTimeToSendData:(double)sendData avgTimeToSendData:(double)toSendData isFirstParty:(BOOL)self0;
- (void)workout_reportWorkoutCondenserCoalescingCompressionRate:(id)rate numberOfSamplesBeforeCoalescing:(int64_t)coalescing numberOfSamplesAfterCoalescing:(int64_t)afterCoalescing compressionRate:(double)compressionRate;
- (void)workout_reportWorkoutCondenserEventWithReason:(int64_t)reason batchSize:(int64_t)size hasWatchSource:(BOOL)source duration:(double)duration success:(BOOL)success error:(id)error workoutsToCondense:(int64_t)condense workoutsToRecondense:(int64_t)self0 condensedWorkouts:(int64_t)self1 processedWorkouts:(int64_t)self2 createdSeries:(int64_t)self3 deletedSamples:(int64_t)self4;
- (void)workout_reportWorkoutEventWithHeartBeatFailures:(int64_t)failures workoutDuration:(double)duration isFirstParty:(BOOL)party sessionID:(id)d;
@end

@implementation HDAnalyticsSubmissionCoordinator

- (void)maintenanceCoordinator_reportCoreAnalyticsWithOperationName:(id)name database:(id)database pendingOperationsCount:(int64_t)count activeOperationsCount:(int64_t)operationsCount timeUntilStart:(int64_t)start canceled:(BOOL)canceled timedOut:(BOOL)out elapsedTime:(int64_t)self0 isImmediateRequest:(BOOL)self1 async:(BOOL)self2
{
  v14 = sub_22911C35C();
  v16 = v15;
  v17 = sub_22911C35C();
  v19 = v18;
  selfCopy = self;
  v21 = sub_22911C34C();
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  *(v22 + 24) = v16;
  *(v22 + 32) = v17;
  *(v22 + 40) = v19;
  *(v22 + 48) = count;
  *(v22 + 56) = operationsCount;
  *(v22 + 64) = start;
  *(v22 + 72) = canceled;
  *(v22 + 73) = out;
  *(v22 + 80) = time;
  *(v22 + 88) = request;
  *(v22 + 89) = async;
  aBlock[4] = sub_2289B63A8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289B6004;
  aBlock[3] = &block_descriptor_7;
  v23 = _Block_copy(aBlock);

  [(HDAnalyticsSubmissionCoordinator *)selfCopy sendEvent:v21 block:v23];

  _Block_release(v23);
}

- (void)tinker_pairingDidFinishForConfiguration:(id)configuration duration:(double)duration
{
  configurationCopy = configuration;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.tinker.%@", @"pairing"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFinishForConfiguration_duration___block_invoke;
  v9[3] = &unk_2786139B8;
  durationCopy = duration;
  v10 = configurationCopy;
  v8 = configurationCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v9];
}

id __93__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFinishForConfiguration_duration___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277CBEC38];
  v6[0] = @"success";
  v6[1] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v7[1] = v2;
  v6[2] = @"setupType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "setupType")}];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)tinker_pairingDidFailWithError:(id)error configuration:(id)configuration duration:(double)duration stage:(int64_t)stage
{
  errorCopy = error;
  configurationCopy = configuration;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.tinker.%@", @"pairing"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFailWithError_configuration_duration_stage___block_invoke;
  v14[3] = &unk_2786139E0;
  durationCopy = duration;
  v15 = configurationCopy;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = configurationCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v11 block:v14];
}

id __104__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFailWithError_configuration_duration_stage___block_invoke(uint64_t a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277CBEC28];
  v10[0] = @"success";
  v10[1] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v11[1] = v2;
  v10[2] = @"setupType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "setupType")}];
  v11[2] = v3;
  v10[3] = @"errorDomain";
  v4 = [*(a1 + 40) domain];
  v5 = v4;
  v6 = @"<null>";
  if (v4)
  {
    v6 = v4;
  }

  v11[3] = v6;
  v10[4] = @"errorCode";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (void)_sendTinkerSyncEventWithLatency:(void *)latency timeSinceLastSuccessfullPull:(void *)pull configuration:(char)configuration success:(void *)success error:
{
  v11 = a2;
  latencyCopy = latency;
  pullCopy = pull;
  successCopy = success;
  if (self)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.tinker.%@", @"sync"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __133__HDAnalyticsSubmissionCoordinator_Tinker___sendTinkerSyncEventWithLatency_timeSinceLastSuccessfullPull_configuration_success_error___block_invoke;
    v16[3] = &unk_278613A08;
    v17 = pullCopy;
    configurationCopy = configuration;
    v18 = v11;
    v19 = latencyCopy;
    v20 = successCopy;
    [self sendEvent:v15 block:v16];
  }
}

id __133__HDAnalyticsSubmissionCoordinator_Tinker___sendTinkerSyncEventWithLatency_timeSinceLastSuccessfullPull_configuration_success_error___block_invoke(uint64_t a1)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) repository];
  v3 = [v2 primaryCKContainer];
  v4 = [*(a1 + 32) repository];
  v5 = [v4 profileIdentifier];
  v6 = HDDatabaseForContainer(v3, v5);

  v27 = v6;
  v7 = HDCKDatabaseScopeToString([v6 databaseScope]);
  v28[0] = @"container";
  v25 = [*(a1 + 32) analyticsDictionary];
  v24 = [v25 objectForKeyedSubscript:@"primaryContainer"];
  v29[0] = v24;
  v29[1] = v7;
  v26 = v7;
  v28[1] = @"database";
  v28[2] = @"reason";
  v8 = [*(a1 + 32) analyticsDictionary];
  v9 = [v8 objectForKeyedSubscript:@"reason"];
  v29[2] = v9;
  v28[3] = @"options";
  v10 = [*(a1 + 32) analyticsDictionary];
  v11 = [v10 objectForKeyedSubscript:@"options"];
  v29[3] = v11;
  v28[4] = @"group";
  v12 = [*(a1 + 32) analyticsDictionary];
  v13 = [v12 objectForKeyedSubscript:@"group"];
  v29[4] = v13;
  v28[5] = @"success";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v29[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v16 = [v15 mutableCopy];

  v17 = *(a1 + 40);
  if (v17)
  {
    [v16 setObject:v17 forKeyedSubscript:@"latency"];
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    [v16 setObject:v18 forKeyedSubscript:@"timeSinceLastSuccessfullPull"];
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v19 = [*(a1 + 56) domain];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = @"<null>";
    }

    [v16 setObject:v21 forKeyedSubscript:@"errorDomain"];

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "code")}];
    [v16 setObject:v22 forKeyedSubscript:@"errorCode"];
  }

  return v16;
}

- (void)medicalID_dailyReport:(id)report sosContactStatus:(BOOL)status profileType:(int64_t)type
{
  reportCopy = report;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_dailyReport_sosContactStatus_profileType___block_invoke;
  v10[3] = &unk_2786158F8;
  statusCopy = status;
  v11 = reportCopy;
  typeCopy = type;
  v9 = reportCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.HealthApp.MedicalID.Daily" block:v10];
}

id __98__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_dailyReport_sosContactStatus_profileType___block_invoke(uint64_t a1)
{
  v49[23] = *MEMORY[0x277D85DE8];
  v48[0] = @"allergyInfo";
  v47 = [*(a1 + 32) allergyInfo];
  if ([v47 length])
  {
    v2 = &unk_283CB0528;
  }

  else
  {
    v2 = &unk_283CB0540;
  }

  v49[0] = v2;
  v48[1] = @"bloodType";
  if ([*(a1 + 32) bloodType])
  {
    v3 = &unk_283CB0528;
  }

  else
  {
    v3 = &unk_283CB0540;
  }

  v49[1] = v3;
  v48[2] = @"clinicalContacts";
  v46 = [*(a1 + 32) clinicalContacts];
  if ([v46 count])
  {
    v4 = &unk_283CB0528;
  }

  else
  {
    v4 = &unk_283CB0540;
  }

  v49[2] = v4;
  v48[3] = @"emergencyContacts";
  v45 = [*(a1 + 32) emergencyContacts];
  if ([v45 count])
  {
    v5 = &unk_283CB0528;
  }

  else
  {
    v5 = &unk_283CB0540;
  }

  v49[3] = v5;
  v48[4] = @"gregorianBirthdate";
  v44 = [*(a1 + 32) gregorianBirthday];
  if (v44)
  {
    v6 = &unk_283CB0528;
  }

  else
  {
    v6 = &unk_283CB0540;
  }

  v49[4] = v6;
  v48[5] = @"height";
  v43 = [*(a1 + 32) height];
  if (v43)
  {
    v7 = &unk_283CB0528;
  }

  else
  {
    v7 = &unk_283CB0540;
  }

  v49[5] = v7;
  v48[6] = @"isShownOnLockScreen";
  if ([*(a1 + 32) isDisabled])
  {
    v8 = &unk_283CB0540;
  }

  else
  {
    v8 = &unk_283CB0528;
  }

  v49[6] = v8;
  v48[7] = @"medicalConditions";
  v42 = [*(a1 + 32) medicalConditions];
  if ([v42 length])
  {
    v9 = &unk_283CB0528;
  }

  else
  {
    v9 = &unk_283CB0540;
  }

  v49[7] = v9;
  v48[8] = @"medicalNotes";
  v41 = [*(a1 + 32) medicalNotes];
  if ([v41 length])
  {
    v10 = &unk_283CB0528;
  }

  else
  {
    v10 = &unk_283CB0540;
  }

  v49[8] = v10;
  v48[9] = @"medicationInfo";
  v40 = [*(a1 + 32) medicationInfo];
  if ([v40 length])
  {
    v11 = &unk_283CB0528;
  }

  else
  {
    v11 = &unk_283CB0540;
  }

  v49[9] = v11;
  v48[10] = @"name";
  v39 = [*(a1 + 32) name];
  if (v39)
  {
    v12 = &unk_283CB0528;
  }

  else
  {
    v12 = &unk_283CB0540;
  }

  v49[10] = v12;
  v48[11] = @"organDonorStatus";
  v38 = [*(a1 + 32) isOrganDonor];
  if (v38)
  {
    v13 = &unk_283CB0528;
  }

  else
  {
    v13 = &unk_283CB0540;
  }

  v49[11] = v13;
  v48[12] = @"picture";
  v37 = [*(a1 + 32) pictureData];
  if (v37)
  {
    v14 = &unk_283CB0528;
  }

  else
  {
    v14 = &unk_283CB0540;
  }

  v49[12] = v14;
  v48[13] = @"primaryLanguageCode";
  v35 = [*(a1 + 32) primaryLanguageCode];
  if (v35)
  {
    v15 = &unk_283CB0528;
  }

  else
  {
    v15 = &unk_283CB0540;
  }

  v49[13] = v15;
  v48[14] = @"shareDuringEmergency";
  if ([*(a1 + 32) shareDuringEmergency])
  {
    v16 = &unk_283CB0528;
  }

  else
  {
    v16 = &unk_283CB0540;
  }

  v49[14] = v16;
  v48[15] = @"weight";
  v17 = [*(a1 + 32) weight];
  if (v17)
  {
    v18 = &unk_283CB0528;
  }

  else
  {
    v18 = &unk_283CB0540;
  }

  if (*(a1 + 48))
  {
    v19 = &unk_283CB0540;
  }

  else
  {
    v19 = &unk_283CB0528;
  }

  v49[15] = v18;
  v49[16] = v19;
  v48[16] = @"sosContactBug";
  v48[17] = @"profileType";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v49[17] = v20;
  v48[18] = @"medicationsList";
  v21 = [*(a1 + 32) medicationsList];
  if ([v21 count])
  {
    v22 = &unk_283CB0528;
  }

  else
  {
    v22 = &unk_283CB0540;
  }

  v49[18] = v22;
  v48[19] = @"allergiesList";
  v23 = [*(a1 + 32) allergiesList];
  if ([v23 count])
  {
    v24 = &unk_283CB0528;
  }

  else
  {
    v24 = &unk_283CB0540;
  }

  v49[19] = v24;
  v48[20] = @"conditionsList";
  v25 = [*(a1 + 32) conditionsList];
  if ([v25 count])
  {
    v26 = &unk_283CB0528;
  }

  else
  {
    v26 = &unk_283CB0540;
  }

  v49[20] = v26;
  v48[21] = @"pregnancyStartDate";
  v27 = [*(a1 + 32) pregnancyStartDate];
  if (v27)
  {
    v28 = &unk_283CB0528;
  }

  else
  {
    v28 = &unk_283CB0540;
  }

  v49[21] = v28;
  v48[22] = @"pregnancyEstimatedDueDate";
  v29 = [*(a1 + 32) pregnancyEstimatedDueDate];
  if (v29)
  {
    v30 = &unk_283CB0528;
  }

  else
  {
    v30 = &unk_283CB0540;
  }

  v49[22] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:23];
  v32 = [v31 mutableCopy];

  if (*(a1 + 40) == 3)
  {
    [v32 removeObjectForKey:@"sosContactBug"];
  }

  v33 = objc_msgSend_copy(v32);

  return v33;
}

- (void)medicalID_reportHasBeenSetForProfileType:(int64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenSetForProfileType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = type;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.MedicalID.hasBeenSet" block:v3];
}

id __88__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenSetForProfileType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"profileType";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)medicalID_reportHasBeenDeletedForProfileType:(int64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenDeletedForProfileType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = type;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.MedicalID.hasBeenDeleted" block:v3];
}

id __92__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenDeletedForProfileType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"profileType";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)heartDaily_reportHeartDailyAnalytics:(id)analytics
{
  v11 = *MEMORY[0x277D85DE8];
  payload = [analytics payload];
  _HKInitializeLogging();
  v5 = HKLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = payload;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Submitting CoreAnalytics heart daily analytics: %{public}@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HDAnalyticsSubmissionCoordinator_HeartDaily__heartDaily_reportHeartDailyAnalytics___block_invoke;
  v7[3] = &unk_278616398;
  v8 = payload;
  v6 = payload;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.HeartRhythm.HeartDailyAnalytics" block:v7];
}

- (void)healthService_reportServiceTypeAdded:(id)added profileType:(int64_t)type
{
  addedCopy = added;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeAdded_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = addedCopy;
  typeCopy = type;
  v7 = addedCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services" block:v8];
}

id __100__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeAdded_profileType___block_invoke(uint64_t a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"serviceType";
  v5[1] = @"added";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = MEMORY[0x277CBEC38];
  v5[2] = @"profileType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (void)healthService_reportServiceTypeRemoved:(id)removed profileType:(int64_t)type
{
  removedCopy = removed;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeRemoved_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = removedCopy;
  typeCopy = type;
  v7 = removedCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services" block:v8];
}

id __102__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeRemoved_profileType___block_invoke(uint64_t a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"serviceType";
  v5[1] = @"removed";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = MEMORY[0x277CBEC38];
  v5[2] = @"profileType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (void)healthService_reportCountForAllServices:(id)services profileType:(int64_t)type
{
  servicesCopy = services;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportCountForAllServices_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = servicesCopy;
  typeCopy = type;
  v7 = servicesCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services" block:v8];
}

id __103__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportCountForAllServices_profileType___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6[0] = @"servicesCount";
  v6[1] = @"profileType";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)healthService_reportServiceType:(id)type duration:(double)duration profileType:(int64_t)profileType
{
  typeCopy = type;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceType_duration_profileType___block_invoke;
  v10[3] = &unk_278617330;
  v11 = typeCopy;
  durationCopy = duration;
  profileTypeCopy = profileType;
  v9 = typeCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services.connection-duration" block:v10];
}

id __104__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceType_duration_profileType___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = *(a1 + 32);
  v6[0] = @"serviceType";
  v6[1] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v7[1] = v2;
  v6[2] = @"profileType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)authorization_reportAuthRequestsFromBundleIdentifier:(id)identifier isExtension:(BOOL)extension isAppleWatch:(BOOL)watch shouldPrompt:(BOOL)prompt
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __142__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestsFromBundleIdentifier_isExtension_isAppleWatch_shouldPrompt___block_invoke;
  v12[3] = &unk_278618408;
  v13 = identifierCopy;
  extensionCopy = extension;
  watchCopy = watch;
  promptCopy = prompt;
  v11 = identifierCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.authorization.request" block:v12];
}

id __142__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestsFromBundleIdentifier_isExtension_isAppleWatch_shouldPrompt___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = @"Unknown";
  }

  v9[0] = v2;
  v8[0] = @"bundleIdentifier";
  v8[1] = @"isExtension";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v9[1] = v3;
  v8[2] = @"isAppleWatch";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v9[2] = v4;
  v8[3] = @"shouldPrompt";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 42)];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)authorization_reportAuthRequestPromptedForBundleIdentifer:(id)identifer profileType:(int64_t)type
{
  identiferCopy = identifer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __121__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestPromptedForBundleIdentifer_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = identiferCopy;
  typeCopy = type;
  v7 = identiferCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.authorization.prompt" block:v8];
}

id __121__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestPromptedForBundleIdentifer_profileType___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = @"Unknown";
  }

  v6[0] = @"bundleIdentifier";
  v6[1] = @"profileType";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)attachments_reportDailyAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __82__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyAnalytics___block_invoke;
    v5[3] = &unk_27861ED70;
    v6 = analyticsCopy;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.attachments.daily" block:v5];
  }
}

id __82__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyAnalytics___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachments")}];
  [v2 setObject:v3 forKeyedSubscript:@"numberOfAttachments"];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfReferences")}];
  [v2 setObject:v4 forKeyedSubscript:@"numberOfReferences"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfTombstones")}];
  [v2 setObject:v5 forKeyedSubscript:@"numberOfTombstones"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalSizeOfFiles")}];
  [v2 setObject:v6 forKeyedSubscript:@"totalSizeOfFiles"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfUnconfirmedFiles")}];
  [v2 setObject:v7 forKeyedSubscript:@"numberOfUnconfirmedFiles"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedAttachments")}];
  [v2 setObject:v8 forKeyedSubscript:@"numberOfOrphanedAttachments"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedReferences")}];
  [v2 setObject:v9 forKeyedSubscript:@"numberOfOrphanedReferences"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfReferencesCreatedLast24Hours")}];
  [v2 setObject:v10 forKeyedSubscript:@"numberOfReferencesCreatedLast24Hours"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachmentsCreatedLast24Hours")}];
  [v2 setObject:v11 forKeyedSubscript:@"numberOfAttachmentsCreatedLast24Hours"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfTombstonesCreatedLast24Hours")}];
  [v2 setObject:v12 forKeyedSubscript:@"numberOfTombstonesCreatedLast24Hours"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachmentsWithMultipleReferences")}];
  [v2 setObject:v13 forKeyedSubscript:@"numberOfAttachmentsWithMultipleReferences"];

  return v2;
}

- (void)attachments_reportDailyCloudAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __87__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyCloudAnalytics___block_invoke;
    v5[3] = &unk_27861ED70;
    v6 = analyticsCopy;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.sync.cloud.cache.attachments.daily" block:v5];
  }
}

id __87__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyCloudAnalytics___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachmentRecords")}];
  [v2 setObject:v3 forKeyedSubscript:@"numberOfAttachmentRecords"];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfReferenceRecords")}];
  [v2 setObject:v4 forKeyedSubscript:@"numberOfReferenceRecords"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfTombstoneRecords")}];
  [v2 setObject:v5 forKeyedSubscript:@"numberOfTombstoneRecords"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedAttachmentRecords")}];
  [v2 setObject:v6 forKeyedSubscript:@"numberOfOrphanedAttachmentRecords"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedReferenceRecords")}];
  [v2 setObject:v7 forKeyedSubscript:@"numberOfOrphanedReferenceRecords"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "percentageOfAttachmentsWithAssetData")}];
  [v2 setObject:v8 forKeyedSubscript:@"percentageOfAttachmentsWithAssetData"];

  return v2;
}

- (void)heartRate_reportDailyRestingHeartRate:(double)rate sedentaryHeartRateCount:(int)count filteredSedentaryHeartRateCount:(int)rateCount hasTimeAsleep:(BOOL)asleep hasBGHRSleepMode:(BOOL)mode unfilteredRestingHeartRate:(double)heartRate profileType:(int64_t)type
{
  if (count < 1)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = rateCount / count;
  }

  v18 = v9;
  v19 = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __211__HDAnalyticsSubmissionCoordinator_HeartRate__heartRate_reportDailyRestingHeartRate_sedentaryHeartRateCount_filteredSedentaryHeartRateCount_hasTimeAsleep_hasBGHRSleepMode_unfilteredRestingHeartRate_profileType___block_invoke;
  v12[3] = &unk_278621290;
  v12[4] = self;
  v12[5] = type;
  countCopy = count;
  rateCountCopy = rateCount;
  v15 = v11;
  modeCopy = mode;
  asleepCopy = asleep;
  *&v12[6] = rate;
  *&v12[7] = heartRate;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.hid.bghr_rhr_eod" block:v12];
}

id __211__HDAnalyticsSubmissionCoordinator_HeartRate__heartRate_reportDailyRestingHeartRate_sedentaryHeartRateCount_filteredSedentaryHeartRateCount_hasTimeAsleep_hasBGHRSleepMode_unfilteredRestingHeartRate_profileType___block_invoke(uint64_t a1)
{
  v17[9] = *MEMORY[0x277D85DE8];
  v16[0] = @"pop";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40) == 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{v3, v16[0]}];
  v17[0] = v4;
  v16[1] = @"output_value";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v17[1] = v5;
  v16[2] = @"raw_count";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v17[2] = v6;
  v16[3] = @"filtered_count";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 68)];
  v17[3] = v7;
  v16[4] = @"filtered_frac";
  LODWORD(v8) = *(a1 + 72);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v17[4] = v9;
  v16[5] = @"has_bghr_sleep_mode";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 76)];
  v17[5] = v10;
  v16[6] = @"has_time_asleep";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 77)];
  v17[6] = v11;
  v16[7] = @"output_value_with_sleephr";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v17[7] = v12;
  v16[8] = @"output_value_delta";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56) - *(a1 + 48)];
  v17[8] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:9];

  return v14;
}

- (void)nanoSync_reportResponseStatusCode:(int)code profileType:(int64_t)type
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.nano.%@", @"reponse-status"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportResponseStatusCode_profileType___block_invoke;
  v8[3] = &__block_descriptor_44_e19___NSDictionary_8__0l;
  codeCopy = code;
  v8[4] = type;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v8];
}

id __92__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportResponseStatusCode_profileType___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"statusCode";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v6[1] = @"profileType";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)nanoSync_reportSyncSuccessWithReason:(id)reason options:(unint64_t)options duration:(double)duration profileType:(int64_t)type
{
  reasonCopy = reason;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.nano.%@", @"sync.finished"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportSyncSuccessWithReason_options_duration_profileType___block_invoke;
  v13[3] = &unk_278623CD8;
  v14 = reasonCopy;
  optionsCopy = options;
  durationCopy = duration;
  typeCopy = type;
  v12 = reasonCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v11 block:v13];
}

id __112__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportSyncSuccessWithReason_options_duration_profileType___block_invoke(uint64_t a1)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277CBEC38];
  v14[0] = @"success";
  v14[1] = @"reason";
  v2 = *(a1 + 32);
  v3 = [v2 length];
  if (v3 >= 0x400)
  {
    v4 = 1024;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 substringToIndex:v4];
  v15[1] = v5;
  v14[2] = @"optionPullRequest";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) & 1];
  v15[2] = v6;
  v14[3] = @"optionsLastChange";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) >> 1) & 1];
  v15[3] = v7;
  v14[4] = @"optionsActiveOnly";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) >> 2) & 1];
  v15[4] = v8;
  v14[5] = @"optionsRequestedByRemote";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) >> 3) & 1];
  v15[5] = v9;
  v14[6] = @"duration";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v15[6] = v10;
  v14[7] = @"profileType";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v15[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v12;
}

- (void)nanoSync_reportSyncFailureWithReason:(id)reason options:(unint64_t)options duration:(double)duration profileType:(int64_t)type error:(id)error
{
  optionsCopy = options;
  errorCopy = error;
  v13 = MEMORY[0x277CBEB38];
  reasonCopy = reason;
  v15 = objc_alloc_init(v13);
  [v15 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  v16 = [reasonCopy length];
  if (v16 >= 0x400)
  {
    v17 = 1024;
  }

  else
  {
    v17 = v16;
  }

  v18 = [reasonCopy substringToIndex:v17];

  [v15 setObject:v18 forKeyedSubscript:@"reason"];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:optionsCopy & 1];
  [v15 setObject:v19 forKeyedSubscript:@"optionPullRequest"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:(optionsCopy >> 1) & 1];
  [v15 setObject:v20 forKeyedSubscript:@"optionsLastChange"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:(optionsCopy >> 2) & 1];
  [v15 setObject:v21 forKeyedSubscript:@"optionsActiveOnly"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:(optionsCopy >> 3) & 1];
  [v15 setObject:v22 forKeyedSubscript:@"optionsRequestedByRemote"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [v15 setObject:v23 forKeyedSubscript:@"duration"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v15 setObject:v24 forKeyedSubscript:@"profileType"];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    [v15 setObject:domain forKeyedSubscript:@"errorDomain"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v15 setObject:v26 forKeyedSubscript:@"errorCode"];
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.nano.%@", @"sync.finished"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __118__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportSyncFailureWithReason_options_duration_profileType_error___block_invoke;
  v29[3] = &unk_27861ED70;
  v30 = v15;
  v28 = v15;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v27 block:v29];
}

- (HDAnalyticsSubmissionCoordinator)initWithProfile:(id)profile
{
  profileCopy = profile;
  v19.receiver = self;
  v19.super_class = HDAnalyticsSubmissionCoordinator;
  v5 = [(HDAnalyticsSubmissionCoordinator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_primaryProfile, profileCopy);
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    objc_storeWeak(&v6->_behavior, behavior);

    v9 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = HKCreateSerialDispatchQueue();
    timeoutQueue = v6->_timeoutQueue;
    v6->_timeoutQueue = v11;

    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = HKLogAnalytics();
    v15 = [v13 initWithName:@"DailyAnalyticEventObservers" loggingCategory:v14];
    observers = v6->_observers;
    v6->_observers = v15;

    v6->_inProgress = 0;
    v6->_dailyAnalyticsObserversLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_primaryProfile);
    [WeakRetained registerProfileReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  v33 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  WeakRetained = objc_loadWeakRetained(&self->_behavior);
  features = [WeakRetained features];
  analyticsSubmissionOnMaintenanceWorkCoordinator = [features analyticsSubmissionOnMaintenanceWorkCoordinator];

  if (analyticsSubmissionOnMaintenanceWorkCoordinator)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke;
    aBlock[3] = &unk_278624EB0;
    objc_copyWeak(&v27, &location);
    v8 = _Block_copy(aBlock);
    v9 = objc_alloc(MEMORY[0x277D10B10]);
    v10 = HKLogAnalytics();
    daemon = [readyCopy daemon];
    systemScheduler = [daemon systemScheduler];
    v13 = [v9 initWithName:@"com.apple.healthd.daily-report" loggingCategory:v10 scheduler:systemScheduler handler:v8 condition:0];
    repeatingBackgroundTask = self->_repeatingBackgroundTask;
    self->_repeatingBackgroundTask = v13;

    getRequest = [(HDRepeatingBackgroundTask *)self->_repeatingBackgroundTask getRequest];
    if (!getRequest)
    {
      getRequest = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:@"com.apple.healthd.daily-report"];
      [getRequest setRequiresProtectionClass:2];
      [getRequest setInterval:86400.0];
      [getRequest interval];
      [getRequest setMinDurationBetweenInstances:v16 * 0.8];
      [getRequest setPriority:2];
      [getRequest setRequiresNetworkConnectivity:1];
      v17 = self->_repeatingBackgroundTask;
      v25 = 0;
      [(HDRepeatingBackgroundTask *)v17 submitRequest:getRequest error:&v25];
      v18 = v25;
      if (v18)
      {
        _HKInitializeLogging();
        v19 = HKLogAnalytics();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy = self;
          v31 = 2114;
          v32 = v18;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Unable to submitRequest: %{public}@", buf, 0x16u);
        }
      }
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = [HDPeriodicActivity alloc];
    v21 = objc_loadWeakRetained(&self->_primaryProfile);
    v22 = HKLogAnalytics();
    v23 = [(HDPeriodicActivity *)v20 initWithProfile:v21 name:@"com.apple.healthd.daily-report" interval:self delegate:v22 loggingCategory:*MEMORY[0x277D86298]];
    periodicActivity = self->_periodicActivity;
    self->_periodicActivity = v23;
  }
}

void __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke_2;
  v9[3] = &unk_278624E88;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = v6;
  v10 = v8;
  [(HDAnalyticsSubmissionCoordinator *)WeakRetained _performAnalyticsSubmissionWithCompletion:v9];

  objc_destroyWeak(&v11);
}

void __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HDStringFromPeriodicActivityResult(a2);
  _HKInitializeLogging();
  v7 = HKLogAnalytics();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogAnalytics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v11 = 138543874;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: HDRepeatingBackgroundTask performed analytics: %@ : %@", &v11, 0x20u);
    }
  }

  if (a2 <= 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_performAnalyticsSubmissionWithCompletion:(uint64_t)completion
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (completion)
  {
    v21 = 0;
    v4 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v4 stringWithFormat:@"dailyAnalytics-%@", uUIDString];

    WeakRetained = objc_loadWeakRetained((completion + 8));
    database = [WeakRetained database];
    v10 = [database takeAccessibilityAssertionWithOwnerIdentifier:v7 timeout:&v21 error:300.0];

    if (!v10)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        completionCopy = completion;
        v24 = 2114;
        v25 = v21;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Daily analytics failed to take database accessibility assertion: %{public}@", buf, 0x16u);
      }
    }

    v12 = v21;
    if (v10)
    {
      v13 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:completion activityName:@"com.apple.healthd.daily-report"];
      *(completion + 64) = 1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__HDAnalyticsSubmissionCoordinator__performAnalyticsSubmissionWithCompletion___block_invoke;
      aBlock[3] = &unk_278624EF8;
      v20 = v3;
      v17 = v10;
      v18 = v13;
      completionCopy2 = completion;
      v14 = v13;
      v15 = _Block_copy(aBlock);
      [completion sendDailyAnalyticsWithTimeout:v15 completion:30.0];
    }

    else
    {
      (*(v3 + 2))(v3, 2, v12, 0.0);
    }
  }
}

- (void)sendEvent:(id)event block:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  blockCopy = block;
  _HKInitializeLogging();
  v8 = HKLogAnalytics();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogAnalytics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = eventCopy;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Event sent: %{public}@", &v11, 0x16u);
    }
  }

  AnalyticsSendEventLazy();
}

- (BOOL)isEventUsed:(id)used
{
  v14 = *MEMORY[0x277D85DE8];
  usedCopy = used;
  _HKInitializeLogging();
  v5 = HKLogAnalytics();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = usedCopy;
      _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Checked whether event is used: %{public}@", &v10, 0x16u);
    }
  }

  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

- (void)_logFaultForTimedOutObservers:(id)observers timeoutSeconds:(double)seconds
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAB68];
  observersCopy = observers;
  v8 = [[v6 alloc] initWithString:@"["];
  [v8 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{observersCopy, &__block_literal_global_156}];

  [v8 appendString:@"]"];
  _HKInitializeLogging();
  v9 = HKLogInfrastructure();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v10 = 138543874;
    selfCopy = self;
    v12 = 2048;
    secondsCopy = seconds;
    v14 = 2114;
    v15 = v8;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "%{public}@: Timeout (%0.1f) waiting for %{public}@", &v10, 0x20u);
  }
}

id __81__HDAnalyticsSubmissionCoordinator__logFaultForTimedOutObservers_timeoutSeconds___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"%@:%p", v6, v3];

  return v7;
}

void *__78__HDAnalyticsSubmissionCoordinator__performAnalyticsSubmissionWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) invalidate];
  result = [*(a1 + 40) invalidate];
  *(*(a1 + 48) + 64) = 0;
  return result;
}

- (void)_locked_sendDailyAnalyticsWithTimeout:(uint64_t)timeout
{
  if (timeout)
  {
    os_unfair_lock_assert_owner((timeout + 68));
    anyObject = [*(timeout + 88) anyObject];
    if (anyObject && (WeakRetained = objc_loadWeakRetained((timeout + 8)), [WeakRetained database], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isProtectedDataAvailable"), v6, WeakRetained, v7))
    {
      v8 = [@"com.apple.healthd.daily-report" stringByAppendingFormat:@"%@", anyObject];
      v9 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:timeout activityName:v8];
      v10 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithQueue:*(timeout + 48) completion:&__block_literal_global_329_1];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2;
      v37[3] = &unk_278614E78;
      v37[4] = timeout;
      v11 = anyObject;
      v38 = v11;
      v39 = a2;
      [v10 startWithTimeoutInterval:v37 handler:a2];
      v12 = *(timeout + 56);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_3;
      v31[3] = &unk_278624F48;
      v31[4] = timeout;
      v32 = v8;
      v33 = v10;
      v36 = a2;
      v34 = v11;
      v35 = v9;
      v13 = v9;
      v14 = v10;
      v15 = v8;
      [v12 notifyObserver:v34 handler:v31];
    }

    else
    {
      [*(timeout + 72) timeIntervalSinceNow];
      v17 = -v16;
      v18 = *(timeout + 72);
      *(timeout + 72) = 0;

      v19 = objc_msgSend_copy(*(timeout + 80));
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_336;
      v29[3] = &unk_278616398;
      v30 = v19;
      v15 = v19;
      [timeout sendEvent:@"com.apple.healthd.daily-report" block:v29];
      v20 = _Block_copy(*(timeout + 96));
      v21 = *(timeout + 96);
      *(timeout + 96) = 0;

      v22 = *(timeout + 80);
      *(timeout + 80) = 0;

      v23 = *(timeout + 88);
      *(timeout + 88) = 0;

      v24 = *(timeout + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2_338;
      block[3] = &unk_278624F70;
      block[4] = timeout;
      v27 = v20;
      v28 = v17;
      v25 = v20;
      dispatch_async(v24, block);

      v14 = v30;
    }
  }
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 68));
  v2 = [*(*(a1 + 32) + 88) containsObject:*(a1 + 40)];
  [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  [v3 _logFaultForTimedOutObservers:v4 timeoutSeconds:*(a1 + 48)];

  if (v2)
  {
    [(HDAnalyticsSubmissionCoordinator *)*(a1 + 32) _locked_sendDailyAnalyticsWithTimeout:?];
  }

  v5 = (*(a1 + 32) + 68);

  os_unfair_lock_unlock(v5);
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] now];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = [WeakRetained isAppleInternalInstall];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogAnalytics();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

    if (v8)
    {
      v9 = HKLogAnalytics();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        *buf = 138543362;
        v25 = v10;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "HDAnalyticsSubmissionCoordinator starting daily observer %{public}@", buf, 0xCu);
      }
    }
  }

  v11 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_333;
  v18[3] = &unk_278624F20;
  v19 = *(a1 + 48);
  v20 = v4;
  v17 = *(a1 + 32);
  v12 = *(&v17 + 1);
  v13 = *(a1 + 56);
  v23 = *(a1 + 72);
  v14 = *(a1 + 64);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v21 = v17;
  v22 = v15;
  v16 = v4;
  [v3 reportDailyAnalyticsWithCoordinator:v11 completion:v18];
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_333(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
  v7 = [WeakRetained isAppleInternalInstall];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogAnalytics();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogAnalytics();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 56);
        v17 = 138543618;
        v18 = v11;
        v19 = 2050;
        v20 = -v5;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "HDAnalyticsSubmissionCoordinator daily observer %{public}@ took %{public}f seconds", &v17, 0x16u);
      }
    }
  }

  v12 = *(a1 + 48);
  if ((*(v12 + 64) & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogAnalytics();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "%{public}@: observer %@ returned when not in progress. It missed the send.", &v17, 0x16u);
    }

    v12 = *(a1 + 48);
  }

  os_unfair_lock_lock((v12 + 68));
  if (v3)
  {
    [*(*(a1 + 48) + 80) addEntriesFromDictionary:v3];
  }

  v14 = [*(*(a1 + 48) + 88) containsObject:*(a1 + 64)];
  [*(*(a1 + 48) + 88) removeObject:*(a1 + 64)];
  if (v14)
  {
    [(HDAnalyticsSubmissionCoordinator *)*(a1 + 48) _locked_sendDailyAnalyticsWithTimeout:?];
  }

  os_unfair_lock_unlock((*(a1 + 48) + 68));
  [*(a1 + 72) invalidate];
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2_338(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(a1[5] + 16))(0.0);
  _HKInitializeLogging();
  v2 = HKLogAnalytics();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogAnalytics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = a1[6];
      v7 = [*(v5 + 56) count];
      v8 = 138543874;
      v9 = v5;
      v10 = 2050;
      v11 = v6;
      v12 = 2050;
      v13 = v7;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "%{public}@: DailyAnalytics took %{public}f seconds with %{public}ld observers", &v8, 0x20u);
    }
  }
}

- (void)sendDailyAnalyticsWithTimeout:(double)timeout completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_dailyAnalyticsObserversLock);
  date = [MEMORY[0x277CBEAA8] date];
  dailyAnalyticsStartTime = self->_dailyAnalyticsStartTime;
  self->_dailyAnalyticsStartTime = date;

  WeakRetained = objc_loadWeakRetained(&self->_behavior);
  isAppleInternalInstall = [WeakRetained isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    _HKInitializeLogging();
    v11 = HKLogAnalytics();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (v12)
    {
      v13 = HKLogAnalytics();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v22 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "HDAnalyticsSubmissionCoordinator starting daily %{public}@", &v22, 0xCu);
      }
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dailyAnalyticsPayload = self->_dailyAnalyticsPayload;
  self->_dailyAnalyticsPayload = v14;

  v16 = objc_alloc(MEMORY[0x277CBEB58]);
  allObservers = [(HDAnalyticsSubmissionCoordinatorDelegate *)self->_observers allObservers];
  v18 = [v16 initWithArray:allObservers];
  dailyAnalyticsPendingObservers = self->_dailyAnalyticsPendingObservers;
  self->_dailyAnalyticsPendingObservers = v18;

  v20 = objc_msgSend_copy(completionCopy);
  dailyAnalyticsCompletionHandler = self->_dailyAnalyticsCompletionHandler;
  self->_dailyAnalyticsCompletionHandler = v20;

  [(HDAnalyticsSubmissionCoordinator *)self _locked_sendDailyAnalyticsWithTimeout:timeout];
  os_unfair_lock_unlock(&self->_dailyAnalyticsObserversLock);
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v4 = *MEMORY[0x277D86340];
  v5 = *MEMORY[0x277D86348];
  xdict = criteria;
  xpc_dictionary_set_string(xdict, v4, v5);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86370], 1);
}

- (id)_createHealthStoreForProfileIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCD4D8];
  identifierCopy = identifier;
  v5 = objc_alloc_init(v3);
  [v5 setProfileIdentifier:identifierCopy];

  [v5 resume];

  return v5;
}

- (_HKBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (void)summarySharing_reportSetupOperation:(id)operation success:(BOOL)success error:(id)error
{
  operationCopy = operation;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportSetupOperation_success_error___block_invoke;
  v12[3] = &unk_278625708;
  successCopy = success;
  v13 = operationCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = operationCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.sharing.setup.operational.event" block:v12];
}

id __102__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportSetupOperation_success_error___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v24[0] = @"operation";
    v24[1] = @"success";
    v25[0] = v2;
    v25[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v22[0] = @"operation";
    v22[1] = @"success";
    v4 = *(a1 + 40);
    v23[0] = *(a1 + 32);
    v23[1] = MEMORY[0x277CBEC28];
    v5 = [v4 domain];
    v6 = v5;
    v7 = @"<null>";
    if (v5)
    {
      v7 = v5;
    }

    v23[2] = v7;
    v22[3] = @"errorCode";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v23[3] = v8;
    v22[4] = @"errorClass";
    v9 = [*(a1 + 40) userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"<unknown>";
    }

    v23[4] = v12;
    v22[5] = @"errorMethod";
    v13 = [*(a1 + 40) userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"<unknown>";
    }

    v23[5] = v16;
    v22[6] = @"errorParameter";
    v17 = [*(a1 + 40) userInfo];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = @"<unknown>";
    }

    v23[6] = v20;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  }

  return v3;
}

- (void)summarySharing_reportDailyAnalytics:(id)analytics activeWatchProductType:(id)type age:(int64_t)age sex:(id)sex
{
  analyticsCopy = analytics;
  typeCopy = type;
  sexCopy = sex;
  isImprovedHealthAndActivityEnabled = [(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled];
  v14 = [analyticsCopy numberPeopleSharingOut] > 0;
  numberPeopleSharingIn = [analyticsCopy numberPeopleSharingIn];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __119__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportDailyAnalytics_activeWatchProductType_age_sex___block_invoke;
  v19[3] = &unk_278625730;
  v25 = v14;
  v26 = numberPeopleSharingIn > 0;
  v27 = isImprovedHealthAndActivityEnabled;
  v20 = typeCopy;
  v21 = analyticsCopy;
  v23 = xmmword_22916E4B0;
  ageCopy = age;
  v22 = sexCopy;
  v16 = sexCopy;
  v17 = analyticsCopy;
  v18 = typeCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.sharing.daily" block:v19];
}

id __119__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportDailyAnalytics_activeWatchProductType_age_sex___block_invoke(uint64_t a1)
{
  v79[4] = *MEMORY[0x277D85DE8];
  v78[0] = @"isSharingOutEnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
  v79[0] = v2;
  v78[1] = @"isSharingInEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 81)];
  v79[1] = v3;
  v78[2] = @"isImproveHealthAndActivityAllowed";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 82)];
  v78[3] = @"activeWatchProductType";
  v5 = *(a1 + 32);
  v79[2] = v4;
  v79[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:4];
  v7 = [v6 mutableCopy];

  v8 = [*(a1 + 40) askSomeoneToShareLastSelectedDate];

  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = [*(a1 + 40) askSomeoneToShareLastSelectedDate];
    [v10 timeIntervalSinceReferenceDate];
    v12 = Current - v11;

    v13 = v12 < *(a1 + 56);
    v8 = v12 < *(a1 + 64);
  }

  else
  {
    v13 = 0;
  }

  v76[0] = @"hasInvitedToShareInPastMonth";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v76[1] = @"hasInvitedToShareInPast6Months";
  v77[0] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v77[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  [v7 addEntriesFromDictionary:v16];

  if (*(a1 + 81) == 1)
  {
    v17 = [*(a1 + 40) numberOfAlertNotificationsEnabled] > 0;
    v18 = [*(a1 + 40) numberOfTrendNotificationsEnabled] > 0;
    v19 = [*(a1 + 40) numberOfUpdateNotificationsEnabled] > 0;
    v74[0] = @"hasAlertsEnabled";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v75[0] = v20;
    v74[1] = @"hasTrendsEnabled";
    v21 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    v75[1] = v21;
    v74[2] = @"hasUpdatesEnabled";
    v22 = [MEMORY[0x277CCABB0] numberWithBool:v19];
    v75[2] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
    [v7 addEntriesFromDictionary:v23];

    v24 = [*(a1 + 40) sharingContactOptionLastSelectedDate];

    if (v24)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      v26 = [*(a1 + 40) sharingContactOptionLastSelectedDate];
      [v26 timeIntervalSinceReferenceDate];
      v28 = v25 - v27;

      v29 = v28 < *(a1 + 56);
      v24 = v28 < *(a1 + 64);
    }

    else
    {
      v29 = 0;
    }

    v72[0] = @"hasClickedToTextOrCallFromSharingInPastMonth";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
    v72[1] = @"hasClickedToTextOrCallFromSharingInPast6Months";
    v73[0] = v30;
    v31 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v73[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    [v7 addEntriesFromDictionary:v32];

    v33 = [*(a1 + 40) mostRecentIncomingTransactionDate];

    if (v33)
    {
      v34 = CFAbsoluteTimeGetCurrent();
      v35 = [*(a1 + 40) mostRecentIncomingTransactionDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v34 - v36;

      v38 = v37 < *(a1 + 64);
      v39 = v37 < *(a1 + 56);
      v70[0] = @"hasReceivedNewDataOnSharedAccountInPast6Months";
      v40 = [MEMORY[0x277CCABB0] numberWithBool:v38];
      v70[1] = @"hasReceivedNewDataOnSharedAccountInPastMonth";
      v71[0] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithBool:v39];
      v71[1] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
      [v7 addEntriesFromDictionary:v42];
    }

    v43 = [*(a1 + 40) anySharingWithYouLastViewedDate];

    if (v43)
    {
      v44 = CFAbsoluteTimeGetCurrent();
      v45 = [*(a1 + 40) anySharingWithYouLastViewedDate];
      [v45 timeIntervalSinceReferenceDate];
      v47 = v44 - v46;

      v48 = v47 < *(a1 + 56);
      v43 = v47 < *(a1 + 64);
    }

    else
    {
      v48 = 0;
    }

    v68[0] = @"hasClickedSharingInAccountInPastMonth";
    v49 = [MEMORY[0x277CCABB0] numberWithBool:v48];
    v68[1] = @"hasClickedSharingInAccountInPast6Months";
    v69[0] = v49;
    v50 = [MEMORY[0x277CCABB0] numberWithBool:v43];
    v69[1] = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
    [v7 addEntriesFromDictionary:v51];
  }

  if (*(a1 + 80) == 1)
  {
    v66[0] = @"numberAuthorizationsSharingOut";
    v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberAuthorizationsSharingOut")}];
    v67[0] = v52;
    v66[1] = @"averageNumberAuthorizationsSharedOutPerPerson";
    v53 = MEMORY[0x277CCABB0];
    [*(a1 + 40) averageNumberAuthorizationsSharedOutPerPerson];
    v54 = [v53 numberWithDouble:?];
    v67[1] = v54;
    v66[2] = @"maxAuthorizationsSharedOutPerPerson";
    v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "maxAuthorizationsSharedOutPerPerson")}];
    v67[2] = v55;
    v66[3] = @"minAuthorizationsSharedOutPerPerson";
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "minAuthorizationsSharedOutPerPerson")}];
    v67[3] = v56;
    v66[4] = @"numberPeopleSharingOut";
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberPeopleSharingOut")}];
    v67[4] = v57;
    v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:5];
    [v7 addEntriesFromDictionary:v58];
  }

  if (*(a1 + 82) == 1)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberPeopleSharingIn", @"numberPeopleSharingIn"}];
    v65[0] = v59;
    v64[1] = @"age";
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
    v64[2] = @"sex";
    v61 = *(a1 + 48);
    v65[1] = v60;
    v65[2] = v61;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
    [v7 addEntriesFromDictionary:v62];
  }

  return v7;
}

- (void)cloudCache_reportWeeklyAnalyticsWithCacheValidation:(id)validation
{
  validationCopy = validation;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"weekly-validation"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportWeeklyAnalyticsWithCacheValidation___block_invoke;
  v7[3] = &unk_278616398;
  v8 = validationCopy;
  v6 = validationCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __103__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportWeeklyAnalyticsWithCacheValidation___block_invoke(uint64_t a1)
{
  v53[48] = *MEMORY[0x277D85DE8];
  v52[0] = @"individualSyncZonesInCloud";
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "individualSyncZonesInCloud")}];
  v53[0] = v51;
  v52[1] = @"masterZonesInCloud";
  v50 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterZonesInCloud")}];
  v53[1] = v50;
  v52[2] = @"unifiedZonesInCloud";
  v49 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "unifiedZonesInCloud")}];
  v53[2] = v49;
  v52[3] = @"sharedSummaryZonesInCloud";
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCloud")}];
  v53[3] = v48;
  v52[4] = @"individualSyncZonesInCache";
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "individualSyncZonesInCache")}];
  v53[4] = v47;
  v52[5] = @"masterZonesInCache";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterZonesInCache")}];
  v53[5] = v46;
  v52[6] = @"unifiedZonesInCache";
  v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "unifiedZonesInCache")}];
  v53[6] = v45;
  v52[7] = @"sharedSummaryZonesInCache";
  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCache")}];
  v53[7] = v44;
  v52[8] = @"storeRecordsInCloud";
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "storeRecordsInCloud")}];
  v53[8] = v43;
  v52[9] = @"sequenceRecordsInCloud";
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sequenceRecordsInCloud")}];
  v53[9] = v42;
  v52[10] = @"medicalIDRecordsInCloud";
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "medicalIDRecordsInCloud")}];
  v53[10] = v41;
  v52[11] = @"changeRecordsInCloud";
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "changeRecordsInCloud")}];
  v53[11] = v40;
  v52[12] = @"registryRecordsInCloud";
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "registryRecordsInCloud")}];
  v53[12] = v39;
  v52[13] = @"masterRecordsInCloud";
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterRecordsInCloud")}];
  v53[13] = v38;
  v52[14] = @"dataUploadRequestRecordInCloud";
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCloud")}];
  v53[14] = v37;
  v52[15] = @"sharedSummaryAuthRecordInCloud";
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCloud")}];
  v53[15] = v36;
  v52[16] = @"sharedSummaryParticipantRecordInCloud";
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCloud")}];
  v53[16] = v35;
  v52[17] = @"sharedSummaryRelationshipRecordInCloud";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCloud")}];
  v53[17] = v34;
  v52[18] = @"sharedSummaryRecordInCloud";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCloud")}];
  v53[18] = v33;
  v52[19] = @"sharedSummaryTransactionRecordInCloud";
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCloud")}];
  v53[19] = v32;
  v52[20] = @"storeRecordsInCache";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "storeRecordsInCache")}];
  v53[20] = v31;
  v52[21] = @"sequenceRecordsInCache";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sequenceRecordsInCache")}];
  v53[21] = v30;
  v52[22] = @"medicalIDRecordsInCache";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "medicalIDRecordsInCache")}];
  v53[22] = v29;
  v52[23] = @"changeRecordsInCache";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "changeRecordsInCache")}];
  v53[23] = v28;
  v52[24] = @"registryRecordsInCache";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "registryRecordsInCache")}];
  v53[24] = v27;
  v52[25] = @"masterRecordsInCache";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterRecordsInCache")}];
  v53[25] = v26;
  v52[26] = @"dataUploadRequestRecordInCache";
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCache")}];
  v53[26] = v25;
  v52[27] = @"sharedSummaryAuthRecordInCache";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCache")}];
  v53[27] = v24;
  v52[28] = @"sharedSummaryParticipantRecordInCache";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCache")}];
  v53[28] = v23;
  v52[29] = @"sharedSummaryRelationshipRecordInCache";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCache")}];
  v53[29] = v22;
  v52[30] = @"sharedSummaryRecordInCache";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCache")}];
  v53[30] = v21;
  v52[31] = @"sharedSummaryTransactionRecordInCache";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCache")}];
  v53[31] = v20;
  v52[32] = @"deltaIndividualSyncZonesInCloudCache";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "individualSyncZonesInCloud") - objc_msgSend(*(a1 + 32), "individualSyncZonesInCache")}];
  v53[32] = v19;
  v52[33] = @"deltaMasterZonesInCloudCache";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterZonesInCloud") - objc_msgSend(*(a1 + 32), "masterZonesInCache")}];
  v53[33] = v18;
  v52[34] = @"deltaUnifiedZonesInCloudCache";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "unifiedZonesInCloud") - objc_msgSend(*(a1 + 32), "unifiedZonesInCache")}];
  v53[34] = v17;
  v52[35] = @"deltaSharedSummaryZonesInCloudCache";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCache")}];
  v53[35] = v16;
  v52[36] = @"deltaStoreRecordsInCloudCache";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "storeRecordsInCloud") - objc_msgSend(*(a1 + 32), "storeRecordsInCache")}];
  v53[36] = v15;
  v52[37] = @"deltaSequenceRecordsInCloudCache";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sequenceRecordsInCloud") - objc_msgSend(*(a1 + 32), "sequenceRecordsInCache")}];
  v53[37] = v14;
  v52[38] = @"deltaMedicalIDRecordsInCloudCache";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "medicalIDRecordsInCloud") - objc_msgSend(*(a1 + 32), "medicalIDRecordsInCache")}];
  v53[38] = v13;
  v52[39] = @"deltaChangeRecordsInCloudCache";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "changeRecordsInCloud") - objc_msgSend(*(a1 + 32), "changeRecordsInCache")}];
  v53[39] = v12;
  v52[40] = @"deltaRegistryRecordsInCloudCache";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "registryRecordsInCloud") - objc_msgSend(*(a1 + 32), "registryRecordsInCache")}];
  v53[40] = v2;
  v52[41] = @"deltaMasterRecordsInCloudCache";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterRecordsInCloud") - objc_msgSend(*(a1 + 32), "masterRecordsInCache")}];
  v53[41] = v3;
  v52[42] = @"deltaDataUploadRequestRecordInCloudCache";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCloud") - objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCache")}];
  v53[42] = v4;
  v52[43] = @"deltaSharedSummaryAuthRecordInCloudCache";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCache")}];
  v53[43] = v5;
  v52[44] = @"deltaSharedSummaryParticipantRecordInCloudCache";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCache")}];
  v53[44] = v6;
  v52[45] = @"deltaSharedSummaryRelationshipRecordInCloudCache";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCache")}];
  v53[45] = v7;
  v52[46] = @"deltaSharedSummaryRecordInCloudCache";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCache")}];
  v53[46] = v8;
  v52[47] = @"deltaSharedSummaryTransactionRecordInCloudCache";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCache")}];
  v53[47] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:48];

  return v10;
}

- (void)cloudCache_reportDailyCacheAnalyticsWithPushTargets:(int64_t)targets pullTargets:(int64_t)pullTargets sharedDBSummarySharingZones:(int64_t)zones privateDBSummarySharingZones:(int64_t)sharingZones unifiedZoneInSharedDB:(BOOL)b unifiedZoneInPrivateDB:(BOOL)dB deviceContexts:(unint64_t)contexts deviceKeys:(unint64_t)self0 nilSyncIdentities:(unint64_t)self1
{
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"daily-analytics"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __261__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportDailyCacheAnalyticsWithPushTargets_pullTargets_sharedDBSummarySharingZones_privateDBSummarySharingZones_unifiedZoneInSharedDB_unifiedZoneInPrivateDB_deviceContexts_deviceKeys_nilSyncIdentities___block_invoke;
  v19[3] = &__block_descriptor_90_e19___NSDictionary_8__0l;
  v19[4] = targets;
  v19[5] = pullTargets;
  v19[6] = zones;
  v19[7] = sharingZones;
  bCopy = b;
  dBCopy = dB;
  v20 = *&contexts;
  identitiesCopy = identities;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v18 block:v19];
}

id __261__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportDailyCacheAnalyticsWithPushTargets_pullTargets_sharedDBSummarySharingZones_privateDBSummarySharingZones_unifiedZoneInSharedDB_unifiedZoneInPrivateDB_deviceContexts_deviceKeys_nilSyncIdentities___block_invoke(uint64_t a1)
{
  v15[9] = *MEMORY[0x277D85DE8];
  v14[0] = @"pushTargets";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v15[0] = v2;
  v14[1] = @"pullTargets";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v15[1] = v3;
  v14[2] = @"sharedDBSummarySharingZones";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v15[2] = v4;
  v14[3] = @"privateDBSummarySharingZones";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v6 = v5;
  if (*(a1 + 88))
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  v15[3] = v5;
  v15[4] = v7;
  v14[4] = @"unifiedZoneInSharedDB";
  v14[5] = @"unifiedZoneInPrivateDB";
  if (*(a1 + 89))
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  v15[5] = v8;
  v14[6] = @"contextCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v15[6] = v9;
  v14[7] = @"keyCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v15[7] = v10;
  v14[8] = @"nilSyncIdentities";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
  v15[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

- (void)cloudCache_reportCacheDiscrepancyForOperation:(id)operation reason:(id)reason containerIdentifier:(id)identifier databaseScope:(id)scope error:(id)error
{
  operationCopy = operation;
  reasonCopy = reason;
  identifierCopy = identifier;
  scopeCopy = scope;
  errorCopy = error;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"discrepancy"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __144__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheDiscrepancyForOperation_reason_containerIdentifier_databaseScope_error___block_invoke;
  v23[3] = &unk_278625A78;
  v24 = reasonCopy;
  v25 = identifierCopy;
  v26 = scopeCopy;
  v27 = errorCopy;
  v28 = operationCopy;
  v18 = operationCopy;
  v19 = errorCopy;
  v20 = scopeCopy;
  v21 = identifierCopy;
  v22 = reasonCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v17 block:v23];
}

id __144__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheDiscrepancyForOperation_reason_containerIdentifier_databaseScope_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = @"discrepancyReason";
  v10[1] = @"container";
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v12 = v3;
  v10[2] = @"database";
  v10[3] = @"errorDomain";
  v11 = *(a1 + 32);
  v4 = [v2 domain];
  v13 = v4;
  v10[4] = @"errorCode";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "code")}];
  v14 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:v10 count:5];
  v7 = [*(a1 + 64) analyticsDictionary];
  v8 = [v6 hk_dictionaryByAddingEntriesFromDictionary:v7];

  return v8;
}

- (void)cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline:(id)pipeline changedZonesCount:(int64_t)count deletedZonesCount:(int64_t)zonesCount changedRecordsCount:(int64_t)recordsCount deletedRecordsCount:(int64_t)deletedRecordsCount
{
  pipelineCopy = pipeline;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"fetch"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __184__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline_changedZonesCount_deletedZonesCount_changedRecordsCount_deletedRecordsCount___block_invoke;
  v15[3] = &unk_278625AA0;
  zonesCountCopy = zonesCount;
  recordsCountCopy = recordsCount;
  deletedRecordsCountCopy = deletedRecordsCount;
  v16 = pipelineCopy;
  countCopy = count;
  v14 = pipelineCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v13 block:v15];
}

id __184__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline_changedZonesCount_deletedZonesCount_changedRecordsCount_deletedRecordsCount___block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"changedZonesCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"deletedZonesCount";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v11[1] = v3;
  v10[2] = @"changedRecordsCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"deletedRecordsCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v7 = [*(a1 + 32) analyticsDictionary];
  v8 = [v6 hk_dictionaryByAddingEntriesFromDictionary:v7];

  return v8;
}

- (void)cloudCache_reportCacheSyncAnalyticsForPipeline:(id)pipeline operationCount:(int64_t)count
{
  pipelineCopy = pipeline;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"sync"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheSyncAnalyticsForPipeline_operationCount___block_invoke;
  v9[3] = &unk_2786139B8;
  v10 = pipelineCopy;
  countCopy = count;
  v8 = pipelineCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v9];
}

id __113__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheSyncAnalyticsForPipeline_operationCount___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"cloudKitOperationsCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [*(a1 + 32) analyticsDictionary];
  v5 = [v3 hk_dictionaryByAddingEntriesFromDictionary:v4];

  return v5;
}

- (void)cloudSync_reportDailyAnalyticForProfileType:(int64_t)type syncEnabled:(BOOL)enabled syncDisabledError:(id)error primaryContainer:(id)container restoreComplete:(BOOL)complete timeSinceRestoreStart:(id)start journalSize:(id)size oldestJournalAge:(id)self0 timeSinceLastSuccessfulPull:(id)self1 timeSinceLastSuccessfulPush:(id)self2 timeSinceLastSuccessfulLitePush:(id)self3 timeSinceLastPushForwardProgress:(id)self4 storeCount:(int64_t)self5 zoneCount:(int64_t)self6 hasUnifiedZone:(BOOL)self7 hasMasterZone:(BOOL)self8 hasMedicalID:(BOOL)self9 errorRequiringUserAction:(id)action childSyncIdentityCount:(int64_t)identityCount canUpgradeToSyncIdentity:(BOOL)identity startedUpgradeToSyncIdentity:(BOOL)syncIdentity completedUpgradeToSyncIdentity:(BOOL)toSyncIdentity iPhoneCount:(id)phoneCount iPadCount:(id)padCount watchCount:(id)watchCount visionProCount:(id)proCount totalSyncsCount:(id)syncsCount successfulSyncPercentageCount:(id)type0
{
  errorCopy = error;
  containerCopy = container;
  startCopy = start;
  sizeCopy = size;
  ageCopy = age;
  pullCopy = pull;
  pushCopy = push;
  litePushCopy = litePush;
  progressCopy = progress;
  actionCopy = action;
  phoneCountCopy = phoneCount;
  padCountCopy = padCount;
  watchCountCopy = watchCount;
  proCountCopy = proCount;
  syncsCountCopy = syncsCount;
  percentageCountCopy = percentageCount;
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"daily-report"];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __616__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportDailyAnalyticForProfileType_syncEnabled_syncDisabledError_primaryContainer_restoreComplete_timeSinceRestoreStart_journalSize_oldestJournalAge_timeSinceLastSuccessfulPull_timeSinceLastSuccessfulPush_timeSinceLastSuccessfulLitePush_timeSinceLastPushForwardProgress_storeCount_zoneCount_hasUnifiedZone_hasMasterZone_hasMedicalID_errorRequiringUserAction_childSyncIdentityCount_canUpgradeToSyncIdentity_startedUpgradeToSyncIdentity_completedUpgradeToSyncIdentity_iPhoneCount_iPadCount_watchCount_visionProCount_totalSyncsCount_successfulSyncPercentageCount___block_invoke;
  v69[3] = &unk_278628AD8;
  enabledCopy = enabled;
  v70 = errorCopy;
  v71 = containerCopy;
  completeCopy = complete;
  v72 = startCopy;
  v73 = sizeCopy;
  v74 = ageCopy;
  v75 = pullCopy;
  v76 = pushCopy;
  v77 = litePushCopy;
  typeCopy = type;
  countCopy = count;
  v78 = progressCopy;
  v79 = actionCopy;
  zoneCountCopy = zoneCount;
  identityCountCopy = identityCount;
  identityCopy = identity;
  syncIdentityCopy = syncIdentity;
  toSyncIdentityCopy = toSyncIdentity;
  v80 = phoneCountCopy;
  v81 = padCountCopy;
  v82 = watchCountCopy;
  v83 = proCountCopy;
  v84 = syncsCountCopy;
  v85 = percentageCountCopy;
  v61 = percentageCountCopy;
  v60 = syncsCountCopy;
  v59 = proCountCopy;
  v58 = watchCountCopy;
  v56 = padCountCopy;
  v55 = phoneCountCopy;
  v53 = actionCopy;
  v52 = progressCopy;
  v51 = litePushCopy;
  v41 = pushCopy;
  v42 = pullCopy;
  v43 = ageCopy;
  v44 = sizeCopy;
  v45 = startCopy;
  v46 = containerCopy;
  v47 = errorCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v49 block:v69];
}

id __616__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportDailyAnalyticForProfileType_syncEnabled_syncDisabledError_primaryContainer_restoreComplete_timeSinceRestoreStart_journalSize_oldestJournalAge_timeSinceLastSuccessfulPull_timeSinceLastSuccessfulPush_timeSinceLastSuccessfulLitePush_timeSinceLastPushForwardProgress_storeCount_zoneCount_hasUnifiedZone_hasMasterZone_hasMedicalID_errorRequiringUserAction_childSyncIdentityCount_canUpgradeToSyncIdentity_startedUpgradeToSyncIdentity_completedUpgradeToSyncIdentity_iPhoneCount_iPadCount_watchCount_visionProCount_totalSyncsCount_successfulSyncPercentageCount___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 160)];
  [v2 setObject:v3 forKeyedSubscript:@"profileType"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 192)];
  [v2 setObject:v4 forKeyedSubscript:@"syncEnabled"];

  if ((*(a1 + 192) & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [v5 domain];
      [v2 setObject:v6 forKeyedSubscript:@"syncDisabledErrorDomain"];

      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
      [v2 setObject:v7 forKeyedSubscript:@"syncDisabledErrorCode"];
    }
  }

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"primaryContainer"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 193)];
  [v2 setObject:v8 forKeyedSubscript:@"restoreComplete"];

  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"timeSinceRestoreStart"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"journalSize"];
  [v2 setObject:*(a1 + 64) forKeyedSubscript:@"oldestJournalAge"];
  [v2 setObject:*(a1 + 72) forKeyedSubscript:@"timeSinceLastSuccessfulPull"];
  [v2 setObject:*(a1 + 80) forKeyedSubscript:@"timeSinceLastSuccessfulPush"];
  [v2 setObject:*(a1 + 88) forKeyedSubscript:@"timeSinceLastSuccessfulLitePush"];
  [v2 setObject:*(a1 + 96) forKeyedSubscript:@"timeSinceLastPushForwardProgress"];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 168)];
  [v2 setObject:v9 forKeyedSubscript:@"storeCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 176)];
  [v2 setObject:v10 forKeyedSubscript:@"zoneCount"];

  v11 = *(a1 + 104);
  if (v11)
  {
    v12 = [v11 domain];
    [v2 setObject:v12 forKeyedSubscript:@"errorRequiringUserActionDomain"];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 104), "code")}];
    [v2 setObject:v13 forKeyedSubscript:@"errorRequiringUserActionCode"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 184)];
  [v2 setObject:v14 forKeyedSubscript:@"childSyncIdentities"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 194)];
  [v2 setObject:v15 forKeyedSubscript:@"canUpgradeToSyncIdentity"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 195)];
  [v2 setObject:v16 forKeyedSubscript:@"startedUpgradeToSyncIdentity"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 196)];
  [v2 setObject:v17 forKeyedSubscript:@"completedUpgradeToSyncIdentity"];

  [v2 setObject:*(a1 + 112) forKeyedSubscript:@"countPairediPhone"];
  [v2 setObject:*(a1 + 120) forKeyedSubscript:@"countPairediPad"];
  [v2 setObject:*(a1 + 128) forKeyedSubscript:@"countPairedWatch"];
  [v2 setObject:*(a1 + 136) forKeyedSubscript:@"countPairedVisionPro"];
  [v2 setObject:*(a1 + 144) forKeyedSubscript:@"numberOfSyncs"];
  [v2 setObject:*(a1 + 152) forKeyedSubscript:@"percentOfSuccessfulSyncs"];

  return v2;
}

- (void)cloudSync_reportMissingManateeIdentityDuringFetchInContainer:(id)container zoneName:(id)name databaseScope:(int64_t)scope
{
  containerCopy = container;
  nameCopy = name;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"FetchMissingManateeIdentity"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __131__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportMissingManateeIdentityDuringFetchInContainer_zoneName_databaseScope___block_invoke;
  v13[3] = &unk_2786139E0;
  v14 = containerCopy;
  v15 = nameCopy;
  scopeCopy = scope;
  v11 = nameCopy;
  v12 = containerCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v10 block:v13];
}

id __131__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportMissingManateeIdentityDuringFetchInContainer_zoneName_databaseScope___block_invoke(void *a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"container";
  v5[1] = @"zone";
  v1 = a1[5];
  v6[0] = a1[4];
  v6[1] = v1;
  v5[2] = @"scope";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (void)cloudSync_reportOwnershipChangeForMissingManateeIdentityDuringPush
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"OwnershipChangePushMissingManateeIdentity"];
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v3 block:&__block_literal_global_191];
}

- (void)cloudSync_reportOwnershipChangeForProfile:(id)profile reason:(id)reason
{
  profileCopy = profile;
  reasonCopy = reason;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"ownership-change"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportOwnershipChangeForProfile_reason___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = profileCopy;
  v13 = reasonCopy;
  v9 = reasonCopy;
  v10 = profileCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __96__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportOwnershipChangeForProfile_reason___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"profileType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "profileType")}];
  v9[1] = @"reason";
  v10[0] = v2;
  v3 = *(a1 + 40);
  v4 = [v3 length];
  if (v4 >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 substringToIndex:v5];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)cloudSync_reportPeriodicSyncStartForType:(int64_t)type
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"periodic.start"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncStartForType___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = type;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __88__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncStartForType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"type";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)cloudSync_reportPeriodicSyncSuccessAfterDuration:(double)duration type:(int64_t)type
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"periodic.success"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncSuccessAfterDuration_type___block_invoke;
  v8[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  *&v8[4] = duration;
  v8[5] = type;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v8];
}

id __101__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncSuccessAfterDuration_type___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[1] = @"type";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)cloudSync_reportPeriodicSyncFailureWithError:(id)error duration:(double)duration type:(int64_t)type
{
  errorCopy = error;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"periodic.failure"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncFailureWithError_duration_type___block_invoke;
  v11[3] = &unk_278617330;
  v12 = errorCopy;
  durationCopy = duration;
  typeCopy = type;
  v10 = errorCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v9 block:v11];
}

id __106__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncFailureWithError_duration_type___block_invoke(uint64_t a1)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v20[0] = @"errorDomain";
  v19 = [*(a1 + 32) domain];
  v21[0] = v19;
  v20[1] = @"errorCode";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v21[1] = v2;
  v20[2] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v21[2] = v6;
  v20[3] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v21[3] = v10;
  v20[4] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v21[4] = v14;
  v20[5] = @"duration";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v21[5] = v15;
  v20[6] = @"type";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v21[6] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];

  return v17;
}

- (void)cloudSync_reportRebaseTriggeredByDeletionByUser:(BOOL)user
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"rebase-trigger.deletion"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRebaseTriggeredByDeletionByUser___block_invoke;
  v6[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  userCopy = user;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __95__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRebaseTriggeredByDeletionByUser___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"byUser";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)cloudSync_reportRestoreForProfile:(id)profile startDate:(id)date endDate:(id)endDate duration:(double)duration finishedJournalMerge:(BOOL)merge
{
  profileCopy = profile;
  dateCopy = date;
  endDateCopy = endDate;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"restore.complete"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __129__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRestoreForProfile_startDate_endDate_duration_finishedJournalMerge___block_invoke;
  v19[3] = &unk_278628B68;
  v20 = endDateCopy;
  v21 = dateCopy;
  durationCopy = duration;
  mergeCopy = merge;
  v22 = profileCopy;
  v16 = profileCopy;
  v17 = dateCopy;
  v18 = endDateCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v15 block:v19];
}

id __129__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRestoreForProfile_startDate_endDate_duration_finishedJournalMerge___block_invoke(uint64_t a1)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v16[0] = @"pullCompleteDate";
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v3 = [v2 numberWithDouble:?];
  v17[0] = v3;
  v16[1] = @"pullStartDate";
  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  v17[1] = v5;
  v16[2] = @"duration";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v17[2] = v6;
  v16[3] = @"finishedJournalMerge";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v17[3] = v7;
  v16[4] = @"dbSize";
  v8 = MEMORY[0x277CCABB0];
  v9 = HDDatabaseSizeInMB(*(a1 + 48));
  v10 = [v8 numberWithInteger:HDBucketedDatabaseSizeInMB(v9)];
  v17[4] = v10;
  v16[5] = @"journalCount";
  v11 = MEMORY[0x277CCABB0];
  v12 = [*(a1 + 48) database];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "journalChapterCountForType:", 2)}];
  v17[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  return v14;
}

- (void)cloudSync_reportPipelineStarted:(id)started
{
  startedCopy = started;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"pipeline.started"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineStarted___block_invoke;
  v7[3] = &unk_278616398;
  v8 = startedCopy;
  v6 = startedCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

- (void)cloudSync_reportPipelineFinished:(id)finished
{
  finishedCopy = finished;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"pipeline.finished"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFinished___block_invoke;
  v7[3] = &unk_278616398;
  v8 = finishedCopy;
  v6 = finishedCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __80__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB46F8 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)cloudSync_reportPipelineFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"pipeline.finished"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFailed_error___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = errorCopy;
  v13 = failedCopy;
  v9 = failedCopy;
  v10 = errorCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __84__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFailed_error___block_invoke(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v21[0] = MEMORY[0x277CBEC28];
  v20[0] = @"success";
  v20[1] = @"errorCode";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v21[1] = v19;
  v20[2] = @"errorDomain";
  v2 = [*(a1 + 32) domain];
  v21[2] = v2;
  v20[3] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v21[3] = v6;
  v20[4] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v21[4] = v10;
  v20[5] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v21[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v16 = [*(a1 + 40) analyticsDictionary];
  v17 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v16];

  return v17;
}

- (void)cloudSync_operationStarted:(id)started
{
  startedCopy = started;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"operation.started"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationStarted___block_invoke;
  v7[3] = &unk_278616398;
  v8 = startedCopy;
  v6 = startedCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

- (void)cloudSync_operationFinished:(id)finished
{
  finishedCopy = finished;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"operation.finished"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFinished___block_invoke;
  v7[3] = &unk_278616398;
  v8 = finishedCopy;
  v6 = finishedCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __75__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB4720 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)cloudSync_operationFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"operation.finished"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFailed_error___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = errorCopy;
  v13 = failedCopy;
  v9 = failedCopy;
  v10 = errorCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __79__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFailed_error___block_invoke(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v21[0] = MEMORY[0x277CBEC28];
  v20[0] = @"success";
  v20[1] = @"errorCode";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v21[1] = v19;
  v20[2] = @"errorDomain";
  v2 = [*(a1 + 32) domain];
  v21[2] = v2;
  v20[3] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v21[3] = v6;
  v20[4] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v21[4] = v10;
  v20[5] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v21[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v16 = [*(a1 + 40) analyticsDictionary];
  v17 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v16];

  return v17;
}

- (void)cloudSync_newChildAdded:(BOOL)added
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"newChildAdded"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_newChildAdded___block_invoke;
  v6[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  addedCopy = added;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __71__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_newChildAdded___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"newChildAdded";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)cloudSync_reportFullSyncMetricsWithReason:(id)reason shard:(id)shard daysSincePreviousFullSync:(id)sync totalDuration:(double)duration activeDuration:(double)activeDuration numberOfRuns:(id)runs incomplete:(BOOL)incomplete
{
  reasonCopy = reason;
  shardCopy = shard;
  syncCopy = sync;
  runsCopy = runs;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"fullsync-metrics"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __174__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportFullSyncMetricsWithReason_shard_daysSincePreviousFullSync_totalDuration_activeDuration_numberOfRuns_incomplete___block_invoke;
  v25[3] = &unk_278628B90;
  v26 = reasonCopy;
  v27 = shardCopy;
  durationCopy = duration;
  activeDurationCopy = activeDuration;
  v28 = syncCopy;
  v29 = runsCopy;
  incompleteCopy = incomplete;
  v21 = runsCopy;
  v22 = syncCopy;
  v23 = shardCopy;
  v24 = reasonCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v20 block:v25];
}

id __174__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportFullSyncMetricsWithReason_shard_daysSincePreviousFullSync_totalDuration_activeDuration_numberOfRuns_incomplete___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9[0] = @"reason";
  v9[1] = @"shard";
  v11 = *(a1 + 48);
  v10 = v2;
  v9[2] = @"daysSincePreviousFullSync";
  v9[3] = @"totalDuration";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v12 = v3;
  v9[4] = @"activeDuration";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v5 = *(a1 + 56);
  v13 = v4;
  v14 = v5;
  v9[5] = @"numberOfRuns";
  v9[6] = @"incomplete";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
  v15 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:v9 count:7];

  return v7;
}

- (void)stateSync_recordSize:(unint64_t)size
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.push"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_recordSize___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = size;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __68__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_recordSize___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"recordSize";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)stateSync_operationSucceeded:(id)succeeded
{
  succeededCopy = succeeded;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.push"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationSucceeded___block_invoke;
  v7[3] = &unk_278616398;
  v8 = succeededCopy;
  v6 = succeededCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __76__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationSucceeded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB4748 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)stateSync_operationFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.push"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationFailed_error___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = errorCopy;
  v13 = failedCopy;
  v9 = failedCopy;
  v10 = errorCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __79__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationFailed_error___block_invoke(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v21[0] = MEMORY[0x277CBEC28];
  v20[0] = @"success";
  v20[1] = @"errorCode";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v21[1] = v19;
  v20[2] = @"errorDomain";
  v2 = [*(a1 + 32) domain];
  v21[2] = v2;
  v20[3] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v21[3] = v6;
  v20[4] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v21[4] = v10;
  v20[5] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v21[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v16 = [*(a1 + 40) analyticsDictionary];
  v17 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v16];

  return v17;
}

- (void)stateSync_subscriptionTriggeredDomain:(id)domain
{
  domainCopy = domain;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.subscription"];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __85__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_subscriptionTriggeredDomain___block_invoke;
    v6[3] = &unk_278616398;
    v7 = domainCopy;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
  }
}

id __85__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_subscriptionTriggeredDomain___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"domain";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)stateSync_triggerDuration:(double)duration
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.trigger-gated"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_triggerDuration___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  *&v6[4] = duration;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __73__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_triggerDuration___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"duration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)contextSync_operationSucceeded:(id)succeeded
{
  succeededCopy = succeeded;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"context.push"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_operationSucceeded___block_invoke;
  v7[3] = &unk_278616398;
  v8 = succeededCopy;
  v6 = succeededCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __78__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_operationSucceeded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB4770 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)contextSync_triggerDuration:(double)duration
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"context.trigger-gated"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_triggerDuration___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  *&v6[4] = duration;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __75__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_triggerDuration___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"duration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)workout_reportWorkoutCondenserEventWithReason:(int64_t)reason batchSize:(int64_t)size hasWatchSource:(BOOL)source duration:(double)duration success:(BOOL)success error:(id)error workoutsToCondense:(int64_t)condense workoutsToRecondense:(int64_t)self0 condensedWorkouts:(int64_t)self1 processedWorkouts:(int64_t)self2 createdSeries:(int64_t)self3 deletedSamples:(int64_t)self4
{
  errorCopy = error;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.workout.%@", @"workout-condenser"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __244__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserEventWithReason_batchSize_hasWatchSource_duration_success_error_workoutsToCondense_workoutsToRecondense_condensedWorkouts_processedWorkouts_createdSeries_deletedSamples___block_invoke;
  v24[3] = &unk_278629070;
  reasonCopy = reason;
  sizeCopy = size;
  sourceCopy = source;
  durationCopy = duration;
  successCopy = success;
  v25 = errorCopy;
  condenseCopy = condense;
  v30 = *&recondense;
  v31 = *&processedWorkouts;
  samplesCopy = samples;
  v23 = errorCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v22 block:v24];
}

id __244__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserEventWithReason_batchSize_hasWatchSource_duration_success_error_workoutsToCondense_workoutsToRecondense_condensedWorkouts_processedWorkouts_createdSeries_deletedSamples___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v22[0] = @"reason";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v30[0] = v21;
  v22[1] = @"batchSize";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v30[1] = v20;
  v22[2] = @"hasWatchSource";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 112)];
  v30[2] = v19;
  v22[3] = @"duration";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v30[3] = v18;
  v22[4] = @"success";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 113)];
  v30[4] = v2;
  v22[5] = @"errorDomain";
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [*(a1 + 32) domain];
    v5 = *(a1 + 32);
    v15 = v4;
    v31 = v4;
    v23 = @"errorCode";
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code", v4)}];
      v17 = 0;
    }

    else
    {
      v6 = &unk_283CB3E10;
      v17 = 1;
    }
  }

  else
  {
    v6 = &unk_283CB3E10;
    v31 = &unk_283CB3E10;
    v23 = @"errorCode";
    v17 = 1;
  }

  v32 = v6;
  v24 = @"workoutsToCondense";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 64), v15}];
  v33 = v7;
  v25 = @"workoutsToRecondense";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v34 = v8;
  v26 = @"condensedWorkouts";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  v35 = v9;
  v27 = @"processedWorkouts";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 88)];
  v36 = v10;
  v28 = @"createdSeries";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 96)];
  v37 = v11;
  v29 = @"deletedSamples";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 104)];
  v38 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v22 count:13];

  if ((v17 & 1) == 0)
  {
  }

  if (v3)
  {
  }

  return v13;
}

- (void)workout_reportWorkoutCondenserCoalescingCompressionRate:(id)rate numberOfSamplesBeforeCoalescing:(int64_t)coalescing numberOfSamplesAfterCoalescing:(int64_t)afterCoalescing compressionRate:(double)compressionRate
{
  rateCopy = rate;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __180__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserCoalescingCompressionRate_numberOfSamplesBeforeCoalescing_numberOfSamplesAfterCoalescing_compressionRate___block_invoke;
  v12[3] = &unk_278623CD8;
  v13 = rateCopy;
  coalescingCopy = coalescing;
  afterCoalescingCopy = afterCoalescing;
  compressionRateCopy = compressionRate;
  v11 = rateCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.condenser.coalescing" block:v12];
}

id __180__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserCoalescingCompressionRate_numberOfSamplesBeforeCoalescing_numberOfSamplesAfterCoalescing_compressionRate___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v9[0] = *(a1 + 32);
  v8[0] = @"quantityType";
  v8[1] = @"numberOfSamplesBeforeCoalescing";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v9[1] = v3;
  v8[2] = @"numberOfSamplesAfterCoalescing";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v9[2] = v4;
  v8[3] = @"compressionRate";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)workout_reportGymKitWorkoutWithFitnessMachineType:(id)type manufacturer:(id)manufacturer timeToBeginExperience:(int64_t)experience workoutEndError:(int64_t)error
{
  typeCopy = type;
  manufacturerCopy = manufacturer;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.workout.%@", @"gymkit-workout"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __146__HDAnalyticsSubmissionCoordinator_Workout__workout_reportGymKitWorkoutWithFitnessMachineType_manufacturer_timeToBeginExperience_workoutEndError___block_invoke;
  v15[3] = &unk_278629098;
  v16 = typeCopy;
  v17 = manufacturerCopy;
  experienceCopy = experience;
  errorCopy = error;
  v13 = manufacturerCopy;
  v14 = typeCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v12 block:v15];
}

id __146__HDAnalyticsSubmissionCoordinator_Workout__workout_reportGymKitWorkoutWithFitnessMachineType_manufacturer_timeToBeginExperience_workoutEndError___block_invoke(void *a1)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"fitnessMachineType";
  v7[1] = @"manufacturer";
  v2 = a1[5];
  v8[0] = a1[4];
  v8[1] = v2;
  v7[2] = @"timeToBeginExperience";
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[6]];
  v8[2] = v3;
  v7[3] = @"errorReason";
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[7]];
  v8[3] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

- (void)workout_reportMirroringEventWithStartDuration:(double)duration stopDuration:(double)stopDuration mirroringDuration:(double)mirroringDuration numOfSendDataRequests:(int64_t)requests maxTimeToSendData:(double)data minTimeToSendData:(double)sendData avgTimeToSendData:(double)toSendData isFirstParty:(BOOL)self0
{
  isImprovedHealthAndActivityEnabled = [(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.workout.%@", @"mirroring"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __211__HDAnalyticsSubmissionCoordinator_Workout__workout_reportMirroringEventWithStartDuration_stopDuration_mirroringDuration_numOfSendDataRequests_maxTimeToSendData_minTimeToSendData_avgTimeToSendData_isFirstParty___block_invoke;
  v21[3] = &__block_descriptor_90_e26___NSMutableDictionary_8__0l;
  *&v21[4] = duration;
  *&v21[5] = stopDuration;
  v21[6] = requests;
  *&v21[7] = data;
  *&v21[8] = sendData;
  partyCopy = party;
  v23 = isImprovedHealthAndActivityEnabled;
  *&v21[9] = toSendData;
  *&v21[10] = mirroringDuration;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v20 block:v21];
}

id __211__HDAnalyticsSubmissionCoordinator_Workout__workout_reportMirroringEventWithStartDuration_stopDuration_mirroringDuration_numOfSendDataRequests_maxTimeToSendData_minTimeToSendData_avgTimeToSendData_isFirstParty___block_invoke(uint64_t a1)
{
  v17[7] = *MEMORY[0x277D85DE8];
  v16[0] = @"timeToStartMirroring";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v17[0] = v13;
  v16[1] = @"timeToStopMirroring";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v17[1] = v2;
  v16[2] = @"countArbitraryDataRequests";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v17[2] = v3;
  v16[3] = @"timeToSendArbitraryDataMax";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v17[3] = v4;
  v16[4] = @"timeToSendArbitraryDataMin";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v17[4] = v5;
  v16[5] = @"timeToSendArbitraryDataMean";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v17[5] = v6;
  v16[6] = @"isFirstParty";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88)];
  v17[6] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v9 = [v8 mutableCopy];

  if (*(a1 + 89) == 1)
  {
    v14 = @"mirroringSessionDuration";
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
    v15 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v9 addEntriesFromDictionary:v11];
  }

  return v9;
}

- (void)workout_reportWorkoutEventWithHeartBeatFailures:(int64_t)failures workoutDuration:(double)duration isFirstParty:(BOOL)party sessionID:(id)d
{
  dCopy = d;
  isImprovedHealthAndActivityEnabled = [(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __132__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutEventWithHeartBeatFailures_workoutDuration_isFirstParty_sessionID___block_invoke;
  v13[3] = &unk_2786290E0;
  partyCopy = party;
  v18 = isImprovedHealthAndActivityEnabled;
  durationCopy = duration;
  v14 = dCopy;
  failuresCopy = failures;
  v12 = dCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.workout" block:v13];
}

id __132__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutEventWithHeartBeatFailures_workoutDuration_isFirstParty_sessionID___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"countDataLinkFailures";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v11[1] = @"isFirstParty";
  v12[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v12[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v5 = [v4 mutableCopy];

  if (*(a1 + 57) == 1)
  {
    v9[0] = @"workoutDuration";
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    v9[1] = @"sessionId";
    v10[0] = v6;
    v10[1] = *(a1 + 32);
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v5 addEntriesFromDictionary:v7];
  }

  return v5;
}

- (void)workout_reportEvent:(id)event timestamp:(id)timestamp sessionID:(id)d activityType:(int64_t)type sessionDuration:(int64_t)duration activityCount:(int64_t)count extendedMode:(BOOL)mode totalLocations:(int64_t)self0 routeSmoothingRetryCount:(int64_t)self1 activityID:(id)self2 failure:(BOOL)self3
{
  eventCopy = event;
  timestampCopy = timestamp;
  dCopy = d;
  iDCopy = iD;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __200__HDAnalyticsSubmissionCoordinator_Workout__workout_reportEvent_timestamp_sessionID_activityType_sessionDuration_activityCount_extendedMode_totalLocations_routeSmoothingRetryCount_activityID_failure___block_invoke;
    v23[3] = &unk_278629108;
    v24 = timestampCopy;
    v25 = eventCopy;
    v26 = dCopy;
    typeCopy = type;
    durationCopy = duration;
    countCopy = count;
    locationsCopy = locations;
    modeCopy = mode;
    retryCountCopy = retryCount;
    v27 = iDCopy;
    failureCopy = failure;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.workout.performance" block:v23];
  }
}

id __200__HDAnalyticsSubmissionCoordinator_Workout__workout_reportEvent_timestamp_sessionID_activityType_sessionDuration_activityCount_extendedMode_totalLocations_routeSmoothingRetryCount_activityID_failure___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 32);
  v12[0] = @"timestamp";
  v12[1] = @"performanceEvent";
  v14 = *(a1 + 48);
  v12[2] = @"sessionId";
  v12[3] = @"activityType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v15 = v2;
  v12[4] = @"workoutSessionDuration";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v16 = v3;
  v12[5] = @"routeSmoothingActivityCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  v17 = v4;
  v12[6] = @"extendedMode";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 104)];
  v18 = v5;
  v12[7] = @"totalLocations";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 88)];
  v19 = v6;
  v12[8] = @"routeSmoothingRetryCount";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 96)];
  v8 = *(a1 + 56);
  v20 = v7;
  v21 = v8;
  v12[9] = @"activityID";
  v12[10] = @"failure";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 105)];
  v22 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:v12 count:11];

  return v10;
}

- (void)database_reportSQLiteCorruptionWithExtendedErrorCode:(int)code type:(int64_t)type profile:(id)profile description:(id)description sqlStatement:(id)statement failedObliterationAttempt:(BOOL)attempt
{
  profileCopy = profile;
  descriptionCopy = description;
  statementCopy = statement;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"corruption.sqlite"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __163__HDAnalyticsSubmissionCoordinator_Database__database_reportSQLiteCorruptionWithExtendedErrorCode_type_profile_description_sqlStatement_failedObliterationAttempt___block_invoke;
  v21[3] = &unk_27862D9F0;
  codeCopy = code;
  v22 = descriptionCopy;
  v23 = profileCopy;
  v24 = statementCopy;
  typeCopy = type;
  attemptCopy = attempt;
  v18 = statementCopy;
  v19 = profileCopy;
  v20 = descriptionCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v17 block:v21];
}

id __163__HDAnalyticsSubmissionCoordinator_Database__database_reportSQLiteCorruptionWithExtendedErrorCode_type_profile_description_sqlStatement_failedObliterationAttempt___block_invoke(uint64_t a1)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v13[0] = v2;
  v12[1] = @"databaseType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v13[1] = v3;
  v12[2] = @"description";
  v4 = [*(a1 + 32) length];
  v5 = *(a1 + 32);
  if (v4 >= 0x401)
  {
    v5 = [*(a1 + 32) substringToIndex:1024];
  }

  v13[2] = v5;
  v12[3] = @"profileType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "profileType")}];
  v13[3] = v6;
  v12[4] = @"sqlStatement";
  v7 = [*(a1 + 48) length];
  v8 = *(a1 + 48);
  if (v7 >= 0x401)
  {
    v8 = [*(a1 + 48) substringToIndex:1024];
  }

  v13[4] = v8;
  v12[5] = @"failedObliteration";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 68)];
  v13[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  if (v7 >= 0x401)
  {
  }

  if (v4 >= 0x401)
  {
  }

  return v10;
}

- (void)database_reportUnprotectedDatabaseIdentifier:(id)identifier doesNotMatchProtectedDatabaseIdentifier:(id)databaseIdentifier
{
  identifierCopy = identifier;
  databaseIdentifierCopy = databaseIdentifier;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"identifier-mismatch"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __131__HDAnalyticsSubmissionCoordinator_Database__database_reportUnprotectedDatabaseIdentifier_doesNotMatchProtectedDatabaseIdentifier___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = identifierCopy;
  v13 = databaseIdentifierCopy;
  v9 = databaseIdentifierCopy;
  v10 = identifierCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __131__HDAnalyticsSubmissionCoordinator_Database__database_reportUnprotectedDatabaseIdentifier_doesNotMatchProtectedDatabaseIdentifier___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"has-unprotected-identifier";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32) != 0];
  v6[1] = @"has-protected-identifier";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)database_reportJournalEntryInsertedForJournal:(int64_t)journal entryClass:(id)class entrySize:(id)size
{
  classCopy = class;
  sizeCopy = size;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"journal-inserted"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalEntryInsertedForJournal_entryClass_entrySize___block_invoke;
  v13[3] = &unk_2786139E0;
  v15 = sizeCopy;
  journalCopy = journal;
  v14 = classCopy;
  v11 = sizeCopy;
  v12 = classCopy;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v10 block:v13];
}

id __113__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalEntryInsertedForJournal_entryClass_entrySize___block_invoke(void *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v3 = a1[4];
  v4 = a1[5];
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"class";
  v7[2] = @"size";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)database_reportDatabaseMigrationStatus:(int64_t)status database:(id)database schemaVersion:(int64_t)version error:(id)error profileType:(int64_t)type
{
  errorCopy = error;
  v13 = MEMORY[0x277CBEB38];
  databaseCopy = database;
  v15 = objc_alloc_init(v13);
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  [v15 setObject:v16 forKeyedSubscript:@"databaseStatus"];

  [v15 setObject:databaseCopy forKeyedSubscript:@"databaseName"];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  [v15 setObject:v17 forKeyedSubscript:@"schemaVersion"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v15 setObject:v18 forKeyedSubscript:@"profileType"];

  if (errorCopy)
  {
    hd_errorForAnalytics = [errorCopy hd_errorForAnalytics];

    domain = [hd_errorForAnalytics domain];
    [v15 setObject:domain forKeyedSubscript:@"errorDomain"];

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(hd_errorForAnalytics, "code")}];
    [v15 setObject:v21 forKeyedSubscript:@"errorCode"];

    localizedDescription = [hd_errorForAnalytics localizedDescription];
    [v15 setObject:localizedDescription forKeyedSubscript:@"errorDescription"];
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"migration-status"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __126__HDAnalyticsSubmissionCoordinator_Database__database_reportDatabaseMigrationStatus_database_schemaVersion_error_profileType___block_invoke;
  v25[3] = &unk_27861ED70;
  v26 = v15;
  v24 = v15;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v23 block:v25];
}

- (void)database_reportCachedQueryEvent:(id)event cacheHits:(int64_t)hits cacheMisses:(int64_t)misses estimatedTotalBuckets:(unint64_t)buckets
{
  eventCopy = event;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"resumable-query"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __122__HDAnalyticsSubmissionCoordinator_Database__database_reportCachedQueryEvent_cacheHits_cacheMisses_estimatedTotalBuckets___block_invoke;
    v12[3] = &unk_278623CD8;
    v13 = eventCopy;
    hitsCopy = hits;
    missesCopy = misses;
    bucketsCopy = buckets;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v11 block:v12];
  }
}

id __122__HDAnalyticsSubmissionCoordinator_Database__database_reportCachedQueryEvent_cacheHits_cacheMisses_estimatedTotalBuckets___block_invoke(void *a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v9[0] = a1[4];
  v8[0] = @"identifier";
  v8[1] = @"cacheHits";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v9[1] = v3;
  v8[2] = @"cacheMisses";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v9[2] = v4;
  v8[3] = @"totalBuckets";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)database_reportJournalMergeActivityResult:(int64_t)result duration:(double)duration interruptions:(id)interruptions error:(id)error
{
  interruptionsCopy = interruptions;
  errorCopy = error;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__190;
  v16[4] = __Block_byref_object_dispose__190;
  v17 = @"nil";
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke;
  v14[3] = &unk_27862DA18;
  v14[4] = v18;
  v14[5] = v15;
  v14[6] = v16;
  [interruptionsCopy enumerateKeysAndObjectsUsingBlock:v14];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"secondary-journal-merge-activity"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke_2;
  v13[3] = &unk_27862DA40;
  *&v13[8] = duration;
  v13[4] = v18;
  v13[5] = v16;
  v13[6] = v15;
  v13[7] = result;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v12 block:v13];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
}

void __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  *(*(a1[4] + 8) + 24) += [v6 unsignedIntValue];
  if (*(*(a1[5] + 8) + 24) < [v6 unsignedIntValue])
  {
    *(*(a1[5] + 8) + 24) = [v6 unsignedIntValue];
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

id __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke_2(uint64_t a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"result";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v10[0] = v2;
  v9[1] = @"duration";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v10[1] = v3;
  v9[2] = @"totalInterruptionCount";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 32) + 8) + 24)];
  v10[2] = v4;
  v9[3] = @"topInterruptor";
  v5 = *(a1 + 48);
  v10[3] = *(*(*(a1 + 40) + 8) + 40);
  v9[4] = @"topInterruptionCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(v5 + 8) + 24)];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

@end