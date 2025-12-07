@interface ATXHeuristicActionProducer
+ (double)generateScoreForHeuristic:(id)heuristic;
+ (id)sharedInstance;
+ (unint64_t)actionExperienceForScoredHeuristicAction:(id)action;
- (ATXHeuristicActionProducer)init;
- (BOOL)isActionBlacklisted:(id)blacklisted;
- (BOOL)userAlreadyEngagedWithAction:(id)action;
- (id)_criteriaForJobOnDate:(id)date;
- (id)bundleIdForAction:(id)action;
- (id)firstUpdateDateForActions:(id)actions;
- (id)produceActions;
- (void)coalescedProduceActions;
- (void)dealloc;
- (void)invalidateOnGlobalQueueWithDelay:(double)delay;
- (void)scheduleNextHeuristicRefreshGivenActions:(id)actions;
- (void)setUpdateJobForCriteria:(id)criteria;
@end

@implementation ATXHeuristicActionProducer

void __34__ATXHeuristicActionProducer_init__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_INFO, "ATXHeuristicResultCacheExpiredSomethingNotification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)coalescedProduceActions
{
  v7 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATXHeuristicActionProducer_coalescedProduceActions__block_invoke;
  block[3] = &unk_27859AED0;
  block[4] = self;
  if ([ATXHeuristicActionProducer coalescedProduceActions]::_pasOnceToken5 != -1)
  {
    dispatch_once(&[ATXHeuristicActionProducer coalescedProduceActions]::_pasOnceToken5, block);
  }

  v2 = [ATXHeuristicActionProducer coalescedProduceActions]::_pasExprOnceResult;
  v3 = __atxlog_handle_heuristic([v2 runAfterDelaySeconds:0 coalescingBehavior:1.0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = 0x3FF0000000000000;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXHeuristicActionProducer triggering coalesced produceActions in %f seconds", buf, 0xCu);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATXHeuristicActionProducer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[ATXHeuristicActionProducer sharedInstance]::_pasOnceToken2 != -1)
  {
    dispatch_once(&+[ATXHeuristicActionProducer sharedInstance]::_pasOnceToken2, block);
  }

  v2 = +[ATXHeuristicActionProducer sharedInstance]::_pasExprOnceResult;

  return v2;
}

void __44__ATXHeuristicActionProducer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = +[ATXHeuristicActionProducer sharedInstance]::_pasExprOnceResult;
  +[ATXHeuristicActionProducer sharedInstance]::_pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v1);
}

- (ATXHeuristicActionProducer)init
{
  v14.receiver = self;
  v14.super_class = ATXHeuristicActionProducer;
  v2 = [(ATXHeuristicActionProducer *)&v14 init];
  if (v2)
  {
    if (([MEMORY[0x277CEB480] shouldComputeActions] & 1) == 0)
    {
      v6 = 0;
      goto LABEL_6;
    }

    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277CE8980];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __34__ATXHeuristicActionProducer_init__block_invoke;
    v11 = &unk_27859AEA8;
    objc_copyWeak(&v12, &location);
    v4 = [v3 addCacheExpirerNotification:&v8];
    expireNotificationHandle = v2->_expireNotificationHandle;
    v2->_expireNotificationHandle = v4;

    [(ATXHeuristicActionProducer *)v2 setUpdateJobForCriteria:*MEMORY[0x277D86238], v8, v9, v10, v11];
    [(ATXHeuristicActionProducer *)v2 invalidateOnGlobalQueueWithDelay:5.0];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v6 = v2;
LABEL_6:

  return v6;
}

- (void)invalidateOnGlobalQueueWithDelay:(double)delay
{
  v5 = MEMORY[0x277D425A0];
  v6 = dispatch_get_global_queue(9, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ATXHeuristicActionProducer_invalidateOnGlobalQueueWithDelay___block_invoke;
  v7[3] = &unk_27859AED0;
  v7[4] = self;
  [v5 runAsyncOnQueue:v6 afterDelaySeconds:v7 block:delay];
}

uint64_t __63__ATXHeuristicActionProducer_invalidateOnGlobalQueueWithDelay___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXHeuristicActionProducer delayed invalidation upon init", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_expireNotificationHandle];

  v4.receiver = self;
  v4.super_class = ATXHeuristicActionProducer;
  [(ATXHeuristicActionProducer *)&v4 dealloc];
}

- (id)bundleIdForAction:(id)action
{
  actionCopy = action;
  _bundleIdForDisplay = [actionCopy _bundleIdForDisplay];
  v5 = _bundleIdForDisplay;
  if (_bundleIdForDisplay)
  {
    bundleId = _bundleIdForDisplay;
  }

  else
  {
    bundleId = [actionCopy bundleId];
  }

  v7 = bundleId;

  v8 = ATXBundleIdReplacementForBundleId();

  return v8;
}

- (BOOL)isActionBlacklisted:(id)blacklisted
{
  v4 = [(ATXHeuristicActionProducer *)self bundleIdForAction:blacklisted];
  digitalHealthBlacklist = [(ATXHeuristicActionProducer *)self digitalHealthBlacklist];
  blacklistedBundleIds = [digitalHealthBlacklist blacklistedBundleIds];
  if ([blacklistedBundleIds containsObject:v4])
  {
    v7 = 1;
  }

  else
  {
    actionPredictionBlacklist = [(ATXHeuristicActionProducer *)self actionPredictionBlacklist];
    v7 = [actionPredictionBlacklist isBundleIdBlacklisted:v4];
  }

  return v7;
}

- (BOOL)userAlreadyEngagedWithAction:(id)action
{
  actionCopy = action;
  mEMORY[0x277CEB7E0] = [MEMORY[0x277CEB7E0] sharedInstance];
  recentActions = [mEMORY[0x277CEB7E0] recentActions];
  v6 = [recentActions containsObject:actionCopy];

  return v6;
}

void __53__ATXHeuristicActionProducer_coalescedProduceActions__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create("ATXUpdateActionPredictionCache", v4);
  v6 = objc_alloc(MEMORY[0x277D42628]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ATXHeuristicActionProducer_coalescedProduceActions__block_invoke_2;
  v9[3] = &unk_27859AED0;
  v9[4] = *(a1 + 32);
  v7 = [v6 initWithQueue:v5 operation:v9];

  v8 = [ATXHeuristicActionProducer coalescedProduceActions]::_pasExprOnceResult;
  [ATXHeuristicActionProducer coalescedProduceActions]::_pasExprOnceResult = v7;

  objc_autoreleasePoolPop(v2);
}

- (id)produceActions
{
  v57 = *MEMORY[0x277D85DE8];
  sel_getName(a2);
  v41 = os_transaction_create();
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CE8980];
  v44 = v3;
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v42 = [v4 actionsWithLocationManager:mEMORY[0x277D41BF8]];

  v7 = __atxlog_handle_heuristic(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [v42 count];
    v52 = 2112;
    v53 = v42;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Got %tu heuristic predictions: %@", buf, 0x16u);
  }

  if (!v42)
  {
    v35 = MEMORY[0x277CBEBF8];
    goto LABEL_33;
  }

  v45 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v42;
  v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = *v48;
  v10.i32[1] = -1059153344;
  *v10.i32 = -31337.0;
  v43 = vdupq_lane_s32(v10, 0);
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v48 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v47 + 1) + 8 * i);
      v13 = [(ATXHeuristicActionProducer *)self isActionBlacklisted:v12, v41];
      if (v13)
      {
        v14 = __atxlog_handle_heuristic(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Heuristic action %@ is blacklisted.", buf, 0xCu);
        }

LABEL_21:

        continue;
      }

      v15 = [(ATXHeuristicActionProducer *)self userAlreadyEngagedWithAction:v12];
      if (!v15)
      {
        v17 = objc_alloc(MEMORY[0x277CEB7F0]);
        v18 = objc_opt_class();
        heuristic = [v12 heuristic];
        [v18 generateScoreForHeuristic:heuristic];
        *&v20 = v20;
        v14 = [v17 initWithPredictedItem:v12 score:v20];

        v21 = [ATXHeuristicActionProducer actionExperienceForScoredHeuristicAction:v14];
        [v14 score];
        *buf = @"heuristic";
        v54 = v22;
        v23 = 16;
        v55 = 0;
        do
        {
          *&buf[v23] = v43;
          v23 += 16;
        }

        while (v23 != 3328);
        heuristic2 = [v12 heuristic];
        v25 = [heuristic2 isEqualToString:@"bestAppHandoff:unknown"];

        if ((v25 & 1) == 0)
        {
          LOBYTE(v55) = v21 == 2;
          HIBYTE(v55) = v21 == 1;
        }

        v26 = [[ATXActionResult alloc] initWithScoredAction:v14 predictionItem:buf actionKey:@"heuristic"];
        [v44 addObject:v26];
        [v45 addObject:v12];

        goto LABEL_21;
      }

      v16 = __atxlog_handle_heuristic(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "User already engaged with action. Not going to surface action: %@", buf, 0xCu);
      }

      [v45 addObject:v12];
    }

    v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  }

  while (v8);
LABEL_24:

  v28 = __atxlog_handle_heuristic(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v44 count];
    *buf = 134218242;
    *&buf[4] = v29;
    v52 = 2112;
    v53 = v44;
    _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Got %tu action results: %@", buf, 0x16u);
  }

  v30 = ATXSortedActionResults(v44);
  v31 = +[_ATXGlobals sharedInstance];
  maxHeuristicAppActionCount = [v31 maxHeuristicAppActionCount];

  v33 = [v44 count];
  if (v33 >= maxHeuristicAppActionCount)
  {
    v34 = maxHeuristicAppActionCount;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v30 subarrayWithRange:{0, v34, v41}];

  v37 = __atxlog_handle_heuristic(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v35 count];
    *buf = 134218242;
    *&buf[4] = v38;
    v52 = 2112;
    v53 = v35;
    _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "Got %tu action results after sorting and filtering: %@", buf, 0x16u);
  }

  mEMORY[0x277CEB7E0] = [MEMORY[0x277CEB7E0] sharedInstance];
  [mEMORY[0x277CEB7E0] clearRecentHeuristicEngagementsExceptForActions:v45];

  [ATXActionBlendingUpdater updateBlendingLayerWithHeuristicPredictions:v35];
  [(ATXHeuristicActionProducer *)self scheduleNextHeuristicRefreshGivenActions:v35];

LABEL_33:

  return v35;
}

+ (unint64_t)actionExperienceForScoredHeuristicAction:(id)action
{
  v7[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v7[0] = actionCopy;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [ATXDisplayCacheLockscreenFilter _getPredictionConfidenceForActions:v4];

  return v5;
}

+ (double)generateScoreForHeuristic:(id)heuristic
{
  v34[1] = *MEMORY[0x277D85DE8];
  heuristicCopy = heuristic;
  v4 = +[_ATXGlobals sharedInstance];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = [v5 histogramForLaunchType:35];
  v7 = [v5 histogramForLaunchType:36];
  if (heuristicCopy)
  {
    v34[0] = heuristicCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  [v6 totalLaunchesForBundleIds:v8];
  v10 = v9;
  [v7 totalLaunchesForBundleIds:v8];
  v12 = v11;
  [v6 totalLaunches];
  v14 = v13;
  totalLaunches = [v7 totalLaunches];
  v17 = v16;
  v18 = __atxlog_handle_heuristic(totalLaunches);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138544386;
    v25 = heuristicCopy;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = v17;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Heuristic: %{public}@ confirms: %f rejects: %f total confirms: %f rejects: %f", &v24, 0x34u);
  }

  [v4 heuristicsBaseScore];
  v20 = v19;
  +[_ATXActionUtils computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:](_ATXActionUtils, "computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:", [v4 heuristicsEngagementPriorAlpha], objc_msgSend(v4, "heuristicsEngagementPriorBeta"), v10, v12, v14, v17);
  v22 = v21;

  return v20 * v22;
}

- (void)scheduleNextHeuristicRefreshGivenActions:(id)actions
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(ATXHeuristicActionProducer *)self firstUpdateDateForActions:actions];
  v5 = v4;
  if (v4)
  {
    v6 = __atxlog_handle_heuristic(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Scheduling next ATXHeuristicActionProducer refresh for date: %@", &v8, 0xCu);
    }

    v7 = [(ATXHeuristicActionProducer *)self _criteriaForJobOnDate:v5];
    [(ATXHeuristicActionProducer *)self setUpdateJobForCriteria:v7];
  }
}

- (void)setUpdateJobForCriteria:(id)criteria
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__ATXHeuristicActionProducer_setUpdateJobForCriteria___block_invoke;
  handler[3] = &unk_27859AEF8;
  handler[4] = self;
  xpc_activity_register("com.apple.duetexpertd.heuristicactionproducer-refresh", criteria, handler);
}

void __54__ATXHeuristicActionProducer_setUpdateJobForCriteria___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = [MEMORY[0x277D42598] isClassCLocked];
    if ((v4 & 1) == 0)
    {
      v5 = __atxlog_handle_heuristic(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXHeuristicActionProducer producing actions due to prescheduled CTS update job.", v7, 2u);
      }

      v6 = objc_autoreleasePoolPush();
      [*(a1 + 32) coalescedProduceActions];
      objc_autoreleasePoolPop(v6);
    }
  }
}

- (id)firstUpdateDateForActions:(id)actions
{
  v33 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__39;
  v30 = __Block_byref_object_dispose__39;
  v31 = 0;
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ATXHeuristicActionProducer_firstUpdateDateForActions___block_invoke;
  aBlock[3] = &unk_27859AF20;
  v4 = v3;
  v24 = v4;
  v25 = &v26;
  v5 = _Block_copy(aBlock);
  nextCacheExpirationDate = [MEMORY[0x277CE8980] nextCacheExpirationDate];
  v5[2](v5, nextCacheExpirationDate);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = actionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        scoredAction = [*(*(&v19 + 1) + 8 * i) scoredAction];
        predictedItem = [scoredAction predictedItem];
        criteria = [predictedItem criteria];

        startDate = [criteria startDate];
        v5[2](v5, startDate);

        endDate = [criteria endDate];
        v5[2](v5, endDate);
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v16;
}

uint64_t __56__ATXHeuristicActionProducer_firstUpdateDateForActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v10 = v3;
    v5 = [v3 earlierDate:*(a1 + 32)];
    v6 = *(a1 + 32);

    v4 = v10;
    if (v5 == v6)
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) earlierDate:v10];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v10;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);

      v4 = v10;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_criteriaForJobOnDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], v4);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 300);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);

  return v5;
}

@end