@interface NWActivityHelper
- (BOOL)_uploadNWActivityDatabaseStats;
- (BOOL)shouldSendMetricStream;
- (NWActivityHelper)init;
- (NWActivityHelper)initWithQueue:(id)queue;
- (id)_NWActivityFragmentSpace;
- (id)_createDictionarySupermetricForActivity:(id)activity withContext:(id)context;
- (id)_createSupermetricFromFragments:(id)fragments forMetricUUID:(id)d;
- (id)_fetchActivitiesWithPredicate:(id)predicate batch:(BOOL)batch;
- (id)_fetchChildrenForUUID:(id)d fromContext:(id)context withError:(id *)error;
- (id)_fetchFragmentsForUUID:(id)d fromContext:(id)context withError:(id *)error;
- (id)_fetchMetricsForUUID:(id)d;
- (id)_findNWActivityMetricsForUploading;
- (id)_getNWActivitySummaryReport:(id)report;
- (id)_statsForNWActivityFragmentTypes;
- (id)analyticsWorkspace;
- (void)_deleteAllFragmentsMatchingPredicate:(id)predicate;
- (void)_deleteNWActivityFragment:(id)fragment fromContext:(id)context;
- (void)_deleteOldMetrics;
- (void)_fetchMetricsForActivity:(id)activity maxChildDepth:(unsigned __int8)depth destinationArray:(id)array;
- (void)_garbageCollectNWActivityMetrics;
- (void)_uploadCompleteNWActivityMetrics;
- (void)cleanOutNWActivityMetrics;
- (void)purgeOldNWActivityMetrics;
- (void)retrieveNWActivityMetricsForActivity:(id)activity completion:(id)completion;
- (void)sendReportToMetricStream:(id)stream;
- (void)startNWActivitySuperMetricProcessing;
@end

@implementation NWActivityHelper

- (NWActivityHelper)init
{
  v7.receiver = self;
  v7.super_class = NWActivityHelper;
  v2 = [(NWActivityHelper *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.NWActivityHelper", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    dispatch_sync(*(v2 + 1), &__block_literal_global_16);
  }

  return v2;
}

- (NWActivityHelper)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v11.receiver = self;
    v11.super_class = NWActivityHelper;
    v6 = [(NWActivityHelper *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, queue);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = activityLogHandle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "initWithQueue: queue is required", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)analyticsWorkspace
{
  workspace = self->_workspace;
  if (!workspace)
  {
    v4 = MEMORY[0x277D6B500];
    v5 = +[SystemSettingsRelay defaultRelay];
    symptomEvaluatorDatabaseContainerPath = [v5 symptomEvaluatorDatabaseContainerPath];
    v7 = [v4 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

    v8 = [v7 copy];
    v9 = self->_workspace;
    self->_workspace = v8;

    workspace = self->_workspace;
  }

  return workspace;
}

- (id)_NWActivityFragmentSpace
{
  nwfspace = self->_nwfspace;
  if (!nwfspace)
  {
    v4 = objc_alloc(MEMORY[0x277D6B540]);
    analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
    entityName = [MEMORY[0x277D6B528] entityName];
    v7 = [v4 initWithWorkspace:analyticsWorkspace entityName:entityName withCache:0];
    v8 = self->_nwfspace;
    self->_nwfspace = v7;

    nwfspace = self->_nwfspace;
  }

  return nwfspace;
}

- (void)startNWActivitySuperMetricProcessing
{
  v3 = activityLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "startNWActivitySuperMetricProcessing", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NWActivityHelper_startNWActivitySuperMetricProcessing__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_sync(queue, block);
  v6 = activityLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Finished NWActivitySuperMetricProcessing", buf, 2u);
  }
}

uint64_t __56__NWActivityHelper_startNWActivitySuperMetricProcessing__block_invoke(uint64_t a1)
{
  v2 = activityLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Posting NWActivity DB stats to CA", buf, 2u);
  }

  v3 = [*(a1 + 32) _uploadNWActivityDatabaseStats];
  if ((v3 & 1) == 0)
  {
    v4 = activityLogHandle(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Error posting NWActivity database stats to CA", v8, 2u);
    }
  }

  v5 = activityLogHandle(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Processing NWActivities...", v7, 2u);
  }

  [*(a1 + 32) _uploadCompleteNWActivityMetrics];
  return [*(a1 + 32) _garbageCollectNWActivityMetrics];
}

- (BOOL)_uploadNWActivityDatabaseStats
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  v2 = AnalyticsSendEventLazy();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
  return v2;
}

id __50__NWActivityHelper__uploadNWActivityDatabaseStats__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _statsForNWActivityFragmentTypes];
  }

  else
  {
    v4 = activityLogHandle(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "NWActivityHelper instance no longer exists, skipping upload", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)_statsForNWActivityFragmentTypes
{
  v24 = *MEMORY[0x277D85DE8];
  analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  if (!mainObjectContext)
  {
    mainObjectContext = activityLogHandle(v5);
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_ERROR, "Failed to fetch context when uploading NWActivity DB stats to CA, skipping upload", buf, 2u);
    }

    goto LABEL_10;
  }

  v6 = objc_alloc_init(MEMORY[0x277D6B510]);
  v7 = countOfKeyDescriptor();
  [v6 addGroupByProperty:@"type"];
  [v6 addAggregateProperty:v7];
  _NWActivityFragmentSpace = [(NWActivityHelper *)self _NWActivityFragmentSpace];
  LOBYTE(v16) = 0;
  v9 = [_NWActivityFragmentSpace fetchEntityDictionariesWithProperties:&unk_2847EEBF8 fetchRequestProperties:v6 predicate:0 sortDescriptors:0 limit:0 offset:0 includeObjectID:v16];

  if (!v9)
  {
    v14 = activityLogHandle(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch NWActivity database stats", buf, 2u);
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if ([v9 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__NWActivityHelper__statsForNWActivityFragmentTypes__block_invoke;
    v17[3] = &unk_27898CB30;
    v19 = buf;
    v12 = v11;
    v18 = v12;
    [v9 enumerateObjectsUsingBlock:v17];
    self->_numberOfFragmentsInDB = *(v21 + 3);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v12 setObject:v13 forKeyedSubscript:@"numberOfFragments"];

    _Block_object_dispose(buf, 8);
  }

  else
  {

    v12 = &unk_2847EF4F8;
  }

LABEL_11:

  return v12;
}

void __52__NWActivityHelper__statsForNWActivityFragmentTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"count"];
  v5 = v4;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v4 unsignedLongValue];
    v6 = [v3 objectForKeyedSubscript:@"type"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntValue];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "unsignedLongValue")}];
      if (v8 >= 7)
      {
        if (v8 == 7)
        {
          v10 = @"clientMetricCount";
        }

        else
        {
          v10 = @"unknown";
        }
      }

      else
      {
        v10 = off_27898CBC8[v8];
      }

      [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
    }

    else
    {
      v11 = activityLogHandle(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Error while unpacking type from result dictionary", v12, 2u);
      }
    }
  }

  else
  {
    v7 = activityLogHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error while unpacking count from result dictionary", buf, 2u);
    }
  }
}

- (void)cleanOutNWActivityMetrics
{
  v3 = activityLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "cleanOutNWActivityMetrics", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NWActivityHelper_cleanOutNWActivityMetrics__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_sync(queue, block);
  v6 = activityLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Finished cleanOutNWActivityMetrics", buf, 2u);
  }
}

uint64_t __45__NWActivityHelper_cleanOutNWActivityMetrics__block_invoke(uint64_t a1)
{
  v2 = activityLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up NWActivities...", v4, 2u);
  }

  return [*(a1 + 32) _deleteAllMetrics];
}

- (void)purgeOldNWActivityMetrics
{
  v3 = activityLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "purgeOldNWActivityMetrics", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NWActivityHelper_purgeOldNWActivityMetrics__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__NWActivityHelper_purgeOldNWActivityMetrics__block_invoke(uint64_t a1)
{
  v2 = activityLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up old NWActivities...", buf, 2u);
  }

  +[AnalyticsLaunchpad leaveBreadcrumbForDestroyPersistentStore];
  [*(a1 + 32) _deleteOldMetrics];
  v3 = activityLogHandle(+[AnalyticsLaunchpad clearDestroyPersistentStoreBreadcrumb]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Finished purgeOldNWActivityMetrics", v4, 2u);
  }
}

- (void)retrieveNWActivityMetricsForActivity:(id)activity completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v8 = completionCopy;
  if (activityCopy && completionCopy)
  {
    v9 = activityLogHandle(completionCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = activityCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Retrieving metrics for activity %@", buf, 0xCu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NWActivityHelper_retrieveNWActivityMetricsForActivity_completion___block_invoke;
    block[3] = &unk_27898C710;
    block[4] = self;
    v12 = activityCopy;
    v13 = v8;
    dispatch_async(queue, block);
  }
}

void __68__NWActivityHelper_retrieveNWActivityMetricsForActivity_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _fetchMetricsForUUID:*(a1 + 40)];
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    v5 = activityLogHandle(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Calling completion with results %@", &v10, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = activityLogHandle(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Calling completion with error", &v10, 2u);
    }

    v7 = *(a1 + 48);
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    (*(v7 + 16))(v7, 0, v9);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)_createDictionarySupermetricForActivity:(id)activity withContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  contextCopy = context;
  v8 = contextCopy;
  if (!activityCopy)
  {
    v10 = activityLogHandle(contextCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "activity is required";
LABEL_18:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    }

LABEL_19:
    dictionaryRepresentation = 0;
    goto LABEL_30;
  }

  v9 = activityLogHandle(contextCopy);
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "context is required";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37[0] = activityCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Fetching metrics for activity %@", buf, 0xCu);
  }

  v35 = 0;
  v11 = [(NWActivityHelper *)self _fetchFragmentsForUUID:activityCopy fromContext:v8 withError:&v35];
  v12 = v35;
  v13 = v12;
  if (v11)
  {
    v29 = [(NWActivityHelper *)self _createSupermetricFromFragments:v11 forMetricUUID:activityCopy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v14);
          }

          [(NWActivityHelper *)self _deleteNWActivityFragment:*(*(&v31 + 1) + 8 * i) fromContext:v8, v29];
        }

        v17 += v16;
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v23 = activityLogHandle(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      LODWORD(v37[0]) = v17;
      WORD2(v37[0]) = 2112;
      *(v37 + 6) = activityCopy;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "Deleted %u fragments for activity %@", buf, 0x12u);
    }

    v30 = v13;
    v24 = [v8 save:&v30];
    v10 = v30;

    if ((v24 & 1) == 0)
    {
      v26 = activityLogHandle(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37[0] = v10;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Failed to delete the metric, error: %@", buf, 0xCu);
      }
    }

    v27 = v29;
    dictionaryRepresentation = [v29 dictionaryRepresentation];
  }

  else
  {
    dictionaryRepresentation = 0;
    v10 = v12;
  }

LABEL_30:

  return dictionaryRepresentation;
}

- (void)_fetchMetricsForActivity:(id)activity maxChildDepth:(unsigned __int8)depth destinationArray:(id)array
{
  depthCopy = depth;
  v49 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  arrayCopy = array;
  v10 = arrayCopy;
  if (!activityCopy || !arrayCopy)
  {
    v32 = activityLogHandle(arrayCopy);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v33 = "activity and destinationArray are required";
      v34 = v32;
      v35 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&dword_23255B000, v34, v35, v33, buf, 2u);
    }

LABEL_30:

    goto LABEL_36;
  }

  if (!depthCopy)
  {
    v32 = activityLogHandle(arrayCopy);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v33 = "Exceeded maximum depth for child activity hierarchy, stopping";
      v34 = v32;
      v35 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v11 = objc_autoreleasePoolPush();
  analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  if (!mainObjectContext)
  {
    v36 = activityLogHandle(v14);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "Failed to get context when uploading complete metrics, stopping", buf, 2u);
    }

    goto LABEL_35;
  }

  v15 = [(NWActivityHelper *)self _createDictionarySupermetricForActivity:activityCopy withContext:mainObjectContext];
  if (v15)
  {
    [v10 addObject:v15];
  }

  v43 = 0;
  v16 = [(NWActivityHelper *)self _fetchChildrenForUUID:activityCopy fromContext:mainObjectContext withError:&v43];
  if (!v16)
  {

LABEL_35:
    objc_autoreleasePoolPop(v11);
    goto LABEL_36;
  }

  v17 = v16;
  v38 = v10;
  [mainObjectContext reset];

  objc_autoreleasePoolPop(v11);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v40;
    v23 = depthCopy - 1;
    *&v20 = 138412546;
    v37 = v20;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v39 + 1) + 8 * i);
        v26 = [v25 isEqual:{activityCopy, v37}];
        v27 = v26;
        v28 = activityLogHandle(v26);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
        if (v27)
        {
          if (v29)
          {
            *buf = 138412290;
            v45 = activityCopy;
            _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "Skipping metric for child identical to activity %@", buf, 0xCu);
          }
        }

        else
        {
          if (v29)
          {
            *buf = v37;
            v45 = v25;
            v46 = 2112;
            v47 = activityCopy;
            _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "Fetching metric for child %@ of activity %@", buf, 0x16u);
          }

          [(NWActivityHelper *)self _fetchMetricsForActivity:v25 maxChildDepth:v23 destinationArray:v38];
        }
      }

      v21 = [v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v21);
  }

  v31 = activityLogHandle(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = activityCopy;
    _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "Finished with activity %@", buf, 0xCu);
  }

  v10 = v38;
LABEL_36:
}

- (id)_fetchMetricsForUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = activityLogHandle(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Fetching metrics for activity %@", &v11, 0xCu);
  }

  if (dCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivityHelper *)self _fetchMetricsForActivity:dCopy maxChildDepth:30 destinationArray:v8];
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v9 = activityLogHandle(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "UUID is required", &v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_deleteOldMetrics
{
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v4];
  [(NWActivityHelper *)self _deleteAllFragmentsMatchingPredicate:v3];
}

- (void)_deleteAllFragmentsMatchingPredicate:(id)predicate
{
  v44 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v30 = objc_autoreleasePoolPush();
  v4 = activityLogHandle(v30);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = predicateCopy;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "_deleteAllFragmentsMatchingPredicate %@ for NWActivityMetrics", buf, 0xCu);
  }

  v31 = 0;
  v5 = 0;
  while (1)
  {
    v34 = v5;
    context = objc_autoreleasePoolPush();
    v6 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:predicateCopy batch:1];
    v7 = v6;
    if (v6 && (v6 = [v6 count]) != 0)
    {
      v8 = activityLogHandle(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v7 count];
        *buf = 134217984;
        v43 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Found %lu activities to delete: ", buf, 0xCu);
      }

      analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
      mainObjectContext = [analyticsWorkspace mainObjectContext];

      if (mainObjectContext)
      {
        v32 = [v7 count];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = v7;
        v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
        v15 = v14;
        if (v14)
        {
          v16 = *v38;
          do
          {
            v17 = 0;
            do
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v37 + 1) + 8 * v17);
              v19 = activityLogHandle(v14);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v43 = v18;
                _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Deleting activity %@", buf, 0xCu);
              }

              v14 = [(NWActivityHelper *)self _deleteNWActivityFragment:v18 fromContext:mainObjectContext];
              ++v17;
            }

            while (v15 != v17);
            v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
            v15 = v14;
          }

          while (v14);
        }

        v36 = 0;
        v20 = [mainObjectContext save:&v36];
        v21 = v36;
        v22 = v21;
        if ((v20 & 1) == 0)
        {
          v23 = activityLogHandle(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v22;
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Failed to delete metrics, error: %@", buf, 0xCu);
          }
        }

        v24 = activityLogHandle([mainObjectContext reset]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v43 = v32;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Deleted %ld metrics in current pass", buf, 0xCu);
        }

        v31 += v32;
        if (v22)
        {
          v26 = activityLogHandle(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v22;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Encountered error when saving context after deletion: %@", buf, 0xCu);
          }

          v7 = 0;
          v27 = 3;
        }

        else
        {
          v7 = 0;
          v27 = 0;
        }
      }

      else
      {
        v22 = activityLogHandle(v12);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to fetch context when deleting metrics, stopping...", buf, 2u);
        }

        v27 = 1;
      }
    }

    else
    {
      mainObjectContext = activityLogHandle(v6);
      if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_INFO, "Did not find any more activities, stopping...", buf, 2u);
      }

      v27 = 3;
    }

    objc_autoreleasePoolPop(context);
    if (v27)
    {
      break;
    }

    v5 = v34 + 1;
    if (v34 == 9999999)
    {
      goto LABEL_40;
    }
  }

  if (v27 != 3)
  {
    goto LABEL_43;
  }

LABEL_40:
  v29 = activityLogHandle(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = v31;
    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "Deleted %ld total metrics", buf, 0xCu);
  }

LABEL_43:
  objc_autoreleasePoolPop(v30);
}

- (void)_deleteNWActivityFragment:(id)fragment fromContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  contextCopy = context;
  v7 = contextCopy;
  if (fragmentCopy && contextCopy)
  {
    metricData = [fragmentCopy metricData];
    fragment = [metricData fragment];
    v10 = [fragment count];

    if (v10 >= 2)
    {
      v12 = activityLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        metricData2 = [fragmentCopy metricData];
        fragment2 = [metricData2 fragment];
        v16 = 134217984;
        v17 = [fragment2 count];
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Severing NWActivityFragment relationship with metricData as relationship count is %ld", &v16, 0xCu);
      }

      [fragmentCopy setMetricData:0];
    }

    [v7 deleteObject:fragmentCopy];
  }

  else
  {
    v15 = activityLogHandle(contextCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Cannot delete fragment if fragment or context is nil, ignoring", &v16, 2u);
    }
  }
}

- (void)_garbageCollectNWActivityMetrics
{
  v3 = activityLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Performing garbage collection for expired NWActivityMetrics", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-864000.0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v4];
  [(NWActivityHelper *)self _deleteAllFragmentsMatchingPredicate:v5];
}

- (id)_fetchActivitiesWithPredicate:(id)predicate batch:(BOOL)batch
{
  batchCopy = batch;
  v31 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  if (!mainObjectContext)
  {
    mainObjectContext = activityLogHandle(v9);
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = predicateCopy;
      _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_ERROR, "Failed to fetch context when fetching metrics, skipping predicate %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v10 = MEMORY[0x277CBE428];
  entityName = [MEMORY[0x277D6B528] entityName];
  v12 = [v10 fetchRequestWithEntityName:entityName];

  if (!v12)
  {
    v21 = activityLogHandle(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      entityName2 = [MEMORY[0x277D6B528] entityName];
      *buf = 138412290;
      v26 = entityName2;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Failed to create fetch request for entity name: %@", buf, 0xCu);
    }

LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  if (predicateCopy)
  {
    [v12 setPredicate:predicateCopy];
  }

  if (batchCopy)
  {
    [v12 setFetchLimit:100];
  }

  v24 = 0;
  v14 = [mainObjectContext executeFetchRequest:v12 error:&v24];
  v15 = v24;
  v16 = v15;
  if (!v14)
  {
    v17 = activityLogHandle(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = predicateCopy;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch activity entries from the database for predicate %@. Error: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  v18 = [v14 count];
  if (!v18)
  {
    v19 = activityLogHandle(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = predicateCopy;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Did not find any activity metrics in the database for predicate %@", buf, 0xCu);
    }
  }

  if (v16)
  {
    v20 = activityLogHandle(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v26 = predicateCopy;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Should not have a valid activity list: %@ and an error: %@ for predicate: %@", buf, 0x20u);
    }
  }

  mainObjectContext = v16;
LABEL_26:

  return v14;
}

- (id)_findNWActivityMetricsForUploading
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  has_global_investigation_identifier = nw_activity_has_global_investigation_identifier();
  if (has_global_investigation_identifier)
  {
    v5 = activityLogHandle(has_global_investigation_identifier);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Investigation ID is set, processing all activities", buf, 2u);
    }

    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %@", &unk_2847EF728];
    v7 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:v6 batch:0];

    if (v7)
    {
      [v3 addObjectsFromArray:v7];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %@ AND date < %@", &unk_2847EF740, v8];
    v11 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:v10 batch:0];

    if (v11)
    {
      [v3 addObjectsFromArray:v11];
    }

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v9];
    v13 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:v12 batch:0];

    if (v13)
    {
      [v3 addObjectsFromArray:v13];
    }

    v7 = activityLogHandle(v14);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v17 = [v3 count];
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Found %lu metrics to upload:\n%@", buf, 0x16u);
    }
  }

  return v3;
}

- (id)_fetchFragmentsForUUID:(id)d fromContext:(id)context withError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v9 = contextCopy;
  v10 = 0;
  if (dCopy && contextCopy && error)
  {
    v11 = MEMORY[0x277CBE428];
    entityName = [MEMORY[0x277D6B528] entityName];
    v13 = [v11 fetchRequestWithEntityName:entityName];

    [v13 setRelationshipKeyPathsForPrefetching:&unk_2847EEC10];
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
    [v13 setPredicate:dCopy];

    v10 = [v9 executeFetchRequest:v13 error:error];

    if (v10)
    {
      v16 = [v10 count];
      if (v16)
      {
        if (!*error)
        {
          goto LABEL_17;
        }

        v17 = activityLogHandle(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *error;
          *buf = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Should never have a valid fragments list (%@) and an error: %@", buf, 0x16u);
        }
      }

      else
      {
        v21 = activityLogHandle(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = dCopy;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Activity %@ has no corresponding fragments", buf, 0xCu);
        }
      }
    }

    else
    {
      v19 = activityLogHandle(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *error;
        *buf = 138412546;
        v24 = dCopy;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Failed to get all the metrics with UUID %@. Error: %@", buf, 0x16u);
      }
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (id)_fetchChildrenForUUID:(id)d fromContext:(id)context withError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v9 = contextCopy;
  allObjects = 0;
  if (dCopy && contextCopy && error)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = MEMORY[0x277CBE428];
    entityName = [MEMORY[0x277D6B528] entityName];
    v14 = [v12 fetchRequestWithEntityName:entityName];

    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentUUID == %@", dCopy];
    [v14 setPredicate:dCopy];

    v33 = 0;
    v16 = [v9 executeFetchRequest:v14 error:&v33];
    v17 = v33;

    if (v16)
    {
      v19 = [v16 count];
      if (v19)
      {
        if (!v17)
        {
          v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v16 = v16;
          v22 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v22)
          {
            v23 = *v30;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v30 != v23)
                {
                  objc_enumerationMutation(v16);
                }

                uuid = [*(*(&v29 + 1) + 8 * i) uuid];
                [v21 addObject:uuid];
              }

              v22 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
            }

            while (v22);
          }

          allObjects = [v21 allObjects];
          v26 = activityLogHandle(allObjects);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v36 = dCopy;
            v37 = 2112;
            v38 = allObjects;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Activity %@ has child UUIDs: %@", buf, 0x16u);
          }

          v17 = 0;
          goto LABEL_26;
        }

        v20 = activityLogHandle(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = v16;
          v37 = 2112;
          v38 = v17;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Should never have a valid child fragments list (%@) and an error: %@", buf, 0x16u);
        }
      }

      else
      {
        v20 = activityLogHandle(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = dCopy;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Activity %@ has no corresponding child fragments", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = activityLogHandle(v18);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = dCopy;
        v37 = 2112;
        v38 = v17;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Failed to get all the child metrics with UUID %@. Error: %@", buf, 0x16u);
      }
    }

    allObjects = 0;
LABEL_26:

    objc_autoreleasePoolPop(v11);
    v27 = v17;
    *error = v17;
  }

  return allObjects;
}

- (id)_createSupermetricFromFragments:(id)fragments forMetricUUID:(id)d
{
  v94 = *MEMORY[0x277D85DE8];
  fragmentsCopy = fragments;
  dCopy = d;
  v78 = fragmentsCopy;
  if (!fragmentsCopy)
  {
    v82 = 0;
    goto LABEL_133;
  }

  v77 = dCopy;
  v82 = objc_alloc_init(NWActivitySuperMetric);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v7 = fragmentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_130;
  }

  v80 = 0;
  v81 = 0;
  v79 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v86;
  *&v9 = 138412546;
  v76 = v9;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v86 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v85 + 1) + 8 * i);
      type = [v14 type];
      integerValue = [type integerValue];

      v18 = activityLogHandle(v17);
      v19 = v18;
      if (integerValue > 4)
      {
        if (integerValue > 6)
        {
          if (integerValue != 7)
          {
            if (integerValue == 8)
            {
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found Terminus fragment", buf, 2u);
              }

              data3 = activityLogHandle(v41);
              if (os_log_type_enabled(data3, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, data3, OS_LOG_TYPE_INFO, "Unexpected terminus fragment type on this platform. Skipping.", buf, 2u);
              }

              goto LABEL_51;
            }

            goto LABEL_77;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found client metric fragment", buf, 2u);
          }

          v58 = [NWActivitySuperMetric limitForFragmentType:7];
          if (v80 >= v58)
          {
            v67 = activityLogHandle(v58);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

            goto LABEL_94;
          }

          metricData = [v14 metricData];
          data = [metricData data];

          v61 = activityLogHandle(v60);
          v30 = v61;
          if (data)
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "got data for a client metric fragment", buf, 2u);
            }

            v83 = 0;
            v62 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v83];
            isKindOfClass = v83;
            v30 = isKindOfClass;
            if (v62 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
            {
              clientFragments = [(NWActivitySuperMetric *)v82 clientFragments];
              [clientFragments addObject:v62];

              LODWORD(v80) = v80 + 1;
            }

            else
            {
              v72 = activityLogHandle(isKindOfClass);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v90 = v30;
                _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_ERROR, "Failed to decode client fragment, skipping (error %@)", buf, 0xCu);
              }
            }
          }

          else if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Client metric data is nil, skipping", buf, 2u);
          }

LABEL_123:

          goto LABEL_124;
        }

        if (integerValue != 5)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found Cellular fragment", buf, 2u);
          }

          v25 = [NWActivitySuperMetric limitForFragmentType:6];
          if (v79 >= v25)
          {
            v67 = activityLogHandle(v25);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

            goto LABEL_94;
          }

          metricData2 = [v14 metricData];
          data = [metricData2 data];

          v29 = activityLogHandle(v28);
          v30 = v29;
          if (data)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "got data for a Cellular fragment", buf, 2u);
            }

            v84 = 0;
            v31 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v84];
            v32 = v84;
            v30 = v32;
            if (v31 && (objc_opt_class(), v32 = objc_opt_isKindOfClass(), (v32 & 1) != 0))
            {
              cellularFragments = [(NWActivitySuperMetric *)v82 cellularFragments];
              [cellularFragments addObject:v31];

              ++v79;
            }

            else
            {
              v71 = activityLogHandle(v32);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v90 = v30;
                _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_ERROR, "Failed to decode cellular fragment, skipping (error %@)", buf, 0xCu);
              }
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Cellular metric data is nil, skipping", buf, 2u);
          }

          goto LABEL_123;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found Wi-Fi fragment", buf, 2u);
        }

        v46 = [NWActivitySuperMetric limitForFragmentType:5];
        if (HIDWORD(v81) >= v46)
        {
          v67 = activityLogHandle(v46);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
          }

          goto LABEL_94;
        }

        metricData3 = [v14 metricData];
        data2 = [metricData3 data];

        if (data2)
        {
          v49 = activityLogHandle(v48);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "got data for a Wi-Fi fragment", buf, 2u);
          }

          v50 = [objc_alloc(MEMORY[0x277D7B950]) initWithPBCodableData:data2];
          if (v50)
          {
            wifiFragments = [(NWActivitySuperMetric *)v82 wifiFragments];
            [wifiFragments addObject:v50];

            ++HIDWORD(v81);
          }

          else
          {
            v68 = activityLogHandle(0);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v68, OS_LOG_TYPE_ERROR, "failed to recreate Wi-Fi fragment, dropping", buf, 2u);
            }
          }
        }

LABEL_113:

        goto LABEL_124;
      }

      if (integerValue > 2)
      {
        if (integerValue == 3)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found CFNetwork fragment", buf, 2u);
          }

          v52 = [NWActivitySuperMetric limitForFragmentType:3];
          if (v81 >= v52)
          {
            v67 = activityLogHandle(v52);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

            goto LABEL_94;
          }

          metricData4 = [v14 metricData];
          data2 = [metricData4 data];

          if (data2)
          {
            v55 = activityLogHandle(v54);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "got data for a CFNetwork fragment", buf, 2u);
            }

            v56 = [objc_alloc(MEMORY[0x277CBABD8]) initWithJSONData:data2];
            if (v56)
            {
              taskMetrics = [(NWActivitySuperMetric *)v82 taskMetrics];
              [taskMetrics addObject:v56];

              LODWORD(v81) = v81 + 1;
            }

            else
            {
              v69 = activityLogHandle(0);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_ERROR, "failed to recreate CFNetwork fragment, dropping", buf, 2u);
              }
            }
          }
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found libnetcore fragment", buf, 2u);
          }

          v34 = [NWActivitySuperMetric limitForFragmentType:4];
          if (HIDWORD(v80) >= v34)
          {
            v67 = activityLogHandle(v34);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

LABEL_94:

            ++v10;
            continue;
          }

          metricData5 = [v14 metricData];
          data2 = [metricData5 data];

          if (data2)
          {
            v38 = activityLogHandle(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEBUG, "got data for a libnetcore fragment", buf, 2u);
            }

            v39 = [objc_alloc(MEMORY[0x277CD91C0]) initWithJSONData:data2];
            if (v39)
            {
              connectionReports = [(NWActivitySuperMetric *)v82 connectionReports];
              [connectionReports addObject:v39];

              ++HIDWORD(v80);
            }

            else
            {
              v70 = activityLogHandle(0);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_ERROR, "failed to recreate libnetcore fragment, dropping", buf, 2u);
              }
            }
          }
        }

        goto LABEL_113;
      }

      if (integerValue == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found activity fragment", buf, 2u);
        }

        metricData6 = [v14 metricData];
        data3 = [metricData6 data];

        if (data3)
        {
          v44 = activityLogHandle(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "got data for an activity fragment", buf, 2u);
          }

          v45 = [objc_alloc(MEMORY[0x277CD91B0]) initWithJSONData:data3];
          [(NWActivitySuperMetric *)v82 setActivity:v45];
        }

        goto LABEL_51;
      }

      if (integerValue == 2)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Found activity epilogue fragment", buf, 2u);
        }

        metricData7 = [v14 metricData];
        data3 = [metricData7 data];

        if (data3)
        {
          v23 = activityLogHandle(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "got data for an activity epilogue fragment", buf, 2u);
          }

          v24 = [objc_alloc(MEMORY[0x277CD91A8]) initWithJSONData:data3];
          [(NWActivitySuperMetric *)v82 setActivityEpilogue:v24];
        }

LABEL_51:

LABEL_124:
        ++v11;
        continue;
      }

LABEL_77:
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        type2 = [v14 type];
        integerValue2 = [type2 integerValue];
        *buf = 134217984;
        *v90 = integerValue2;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "unknown fragment type: %ld", buf, 0xCu);
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v85 objects:v93 count:16];
  }

  while (v8);
LABEL_130:

  v74 = activityLogHandle(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v90 = v11;
    *&v90[4] = 2112;
    *&v90[6] = v77;
    v91 = 1024;
    v92 = v10;
    _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_INFO, "Processed %u fragments for activity %@, skipped %u fragments", buf, 0x18u);
  }

  dCopy = v77;
LABEL_133:

  return v82;
}

- (id)_getNWActivitySummaryReport:(id)report
{
  reportCopy = report;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_batteryIsCharging"];
  [v4 setObject:v5 forKeyedSubscript:@"aBatteryIsCharging"];

  v6 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularLqm"];
  [v4 setObject:v6 forKeyedSubscript:@"aCellularLQM"];

  v7 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBand"];
  [v4 setObject:v7 forKeyedSubscript:@"aCellularNrBand"];

  v8 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularRadioTechnology"];
  [v4 setObject:v8 forKeyedSubscript:@"aCellularRAT"];

  v9 = [reportCopy objectForKeyedSubscript:@"connectionReportsCount"];
  if ([v9 intValue] <= 0)
  {
  }

  else
  {
    v10 = [reportCopy objectForKeyedSubscript:@"connectionReports"];
    v11 = [v10 count];

    if (v11)
    {
      v106 = 0;
      v107 = &v106;
      v108 = 0x3032000000;
      v109 = __Block_byref_object_copy__6;
      v110 = __Block_byref_object_dispose__6;
      v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v100 = 0;
      v101 = &v100;
      v102 = 0x3032000000;
      v103 = __Block_byref_object_copy__6;
      v104 = __Block_byref_object_dispose__6;
      v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = [reportCopy objectForKeyedSubscript:@"connectionReports"];
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke;
      v99[3] = &unk_27898CB58;
      v99[4] = &v106;
      v99[5] = &v100;
      [v12 enumerateObjectsUsingBlock:v99];

      v13 = [v107[5] valueForKeyPath:@"@avg.intValue"];
      [v4 setObject:v13 forKeyedSubscript:@"srtt"];

      v14 = [v107[5] valueForKeyPath:@"@min.intValue"];
      [v4 setObject:v14 forKeyedSubscript:@"srttMin"];

      v15 = [v107[5] valueForKeyPath:@"@max.intValue"];
      [v4 setObject:v15 forKeyedSubscript:@"srttMax"];

      v16 = [v101[5] valueForKeyPath:@"@sum.intValue"];
      [v4 setObject:v16 forKeyedSubscript:@"numStalls"];

      _Block_object_dispose(&v100, 8);
      _Block_object_dispose(&v106, 8);
    }
  }

  v17 = [reportCopy objectForKeyedSubscript:@"a_activityDomain"];
  [v4 setObject:v17 forKeyedSubscript:@"activityDomain"];

  v18 = [reportCopy objectForKeyedSubscript:@"a_activityLabel"];
  [v4 setObject:v18 forKeyedSubscript:@"activityLabel"];

  v19 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_deviceOrientation"];
  [v4 setObject:v19 forKeyedSubscript:@"aDeviceOrientation"];

  v20 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_deviceScreenOn"];
  [v4 setObject:v20 forKeyedSubscript:@"aDeviceScreenOn"];

  v21 = [reportCopy objectForKeyedSubscript:@"a_l2Report_wifiIsApplePersonalHotspot"];
  [v4 setObject:v21 forKeyedSubscript:@"aIsApplePersonalHotspot"];

  v22 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularSliceActive"];
  [v4 setObject:v22 forKeyedSubscript:@"aIsCellularSlice"];

  v23 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBandInfo"];
  [v4 setObject:v23 forKeyedSubscript:@"cellularBandInfo"];

  v24 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBandwidth"];
  [v4 setObject:v24 forKeyedSubscript:@"cellularBandwidth"];

  v25 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBars"];
  [v4 setObject:v25 forKeyedSubscript:@"cellularBars"];

  v26 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularDualSimStatus"];
  [v4 setObject:v26 forKeyedSubscript:@"cellularDualSimStatus"];

  v27 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularLqm"];
  [v4 setObject:v27 forKeyedSubscript:@"cellularLQMValue"];

  v28 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_motionState"];
  [v4 setObject:v28 forKeyedSubscript:@"aMotionState"];

  v29 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_thermalPressure"];
  [v4 setObject:v29 forKeyedSubscript:@"aThermalPressure"];

  v30 = [reportCopy objectForKeyedSubscript:@"a_l2Report_wifiLqm"];
  [v4 setObject:v30 forKeyedSubscript:@"aWifiLQM"];

  v31 = [reportCopy objectForKeyedSubscript:@"e_l2Report_wifiLqm"];
  [v4 setObject:v31 forKeyedSubscript:@"eWifiLQM"];

  v32 = [reportCopy objectForKeyedSubscript:@"a_l2Report_wifiRadioTechnology"];
  [v4 setObject:v32 forKeyedSubscript:@"aWifiTechnology"];

  v33 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularOutranksWifi"];
  [v4 setObject:v33 forKeyedSubscript:@"aCellularOutrank"];

  v34 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularOutrankPrimaryReason"];
  [v4 setObject:v34 forKeyedSubscript:@"aCellularOutrankPrimaryReason"];

  v35 = [reportCopy objectForKeyedSubscript:@"taskMetricsCount"];
  if ([v35 intValue] <= 0)
  {
  }

  else
  {
    v36 = [reportCopy objectForKeyedSubscript:@"taskMetrics"];
    v37 = [v36 count];

    if (v37)
    {
      v106 = 0;
      v107 = &v106;
      v108 = 0x2020000000;
      v109 = 0;
      v100 = 0;
      v101 = &v100;
      v102 = 0x2020000000;
      v103 = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x2020000000;
      v98 = 0;
      v38 = [reportCopy objectForKeyedSubscript:@"taskMetrics"];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_2;
      v94[3] = &unk_27898CBA8;
      v94[4] = &v106;
      v94[5] = &v100;
      v94[6] = &v95;
      [v38 enumerateObjectsUsingBlock:v94];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v107[3]];
      [v4 setObject:v39 forKeyedSubscript:@"bytesDl"];

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v101[3]];
      [v4 setObject:v40 forKeyedSubscript:@"bytesUl"];

      v41 = [reportCopy objectForKeyedSubscript:@"taskMetrics"];
      v42 = [v41 objectAtIndexedSubscript:0];
      v43 = [v42 objectForKeyedSubscript:@"error"];
      [v4 setObject:v43 forKeyedSubscript:@"error"];

      v44 = [MEMORY[0x277CCABB0] numberWithBool:*(v96 + 24)];
      [v4 setObject:v44 forKeyedSubscript:@"isBackground"];

      v45 = v107[3];
      if (v45)
      {
        if (v45 >= 0x3E9)
        {
          if (v45 >= 0x2711)
          {
            if (v45 >= 0x186A1)
            {
              if (v45 >= 0xF4241)
              {
                if (v45 >= 0x2DC6C1)
                {
                  if (v45 >= 0x4C4B41)
                  {
                    if (v45 >= 0x989681)
                    {
                      v46 = &unk_2847EF7D0;
                    }

                    else
                    {
                      v46 = &unk_2847EF7B8;
                    }
                  }

                  else
                  {
                    v46 = &unk_2847EF7A0;
                  }
                }

                else
                {
                  v46 = &unk_2847EF788;
                }
              }

              else
              {
                v46 = &unk_2847EF770;
              }
            }

            else
            {
              v46 = &unk_2847EF758;
            }
          }

          else
          {
            v46 = &unk_2847EF740;
          }
        }

        else
        {
          v46 = &unk_2847EF728;
        }
      }

      else
      {
        v46 = &unk_2847EF710;
      }

      [v4 setObject:v46 forKeyedSubscript:@"dlBytesBins"];
      v47 = v101[3];
      if (v47)
      {
        if (v47 >= 0x3E9)
        {
          if (v47 >= 0x2711)
          {
            if (v47 >= 0x186A1)
            {
              if (v47 >= 0xF4241)
              {
                if (v47 >= 0x2DC6C1)
                {
                  if (v47 >= 0x4C4B41)
                  {
                    if (v47 >= 0x989681)
                    {
                      v48 = &unk_2847EF7D0;
                    }

                    else
                    {
                      v48 = &unk_2847EF7B8;
                    }
                  }

                  else
                  {
                    v48 = &unk_2847EF7A0;
                  }
                }

                else
                {
                  v48 = &unk_2847EF788;
                }
              }

              else
              {
                v48 = &unk_2847EF770;
              }
            }

            else
            {
              v48 = &unk_2847EF758;
            }
          }

          else
          {
            v48 = &unk_2847EF740;
          }
        }

        else
        {
          v48 = &unk_2847EF728;
        }
      }

      else
      {
        v48 = &unk_2847EF710;
      }

      [v4 setObject:v48 forKeyedSubscript:@"ulBytesBins"];
      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(&v100, 8);
      _Block_object_dispose(&v106, 8);
    }
  }

  [v4 setObject:&unk_2847EF710 forKeyedSubscript:@"cellIfBytesDl"];
  [v4 setObject:&unk_2847EF710 forKeyedSubscript:@"cellIfBytesUl"];
  v49 = [reportCopy objectForKeyedSubscript:@"e_completionReason"];
  [v4 setObject:v49 forKeyedSubscript:@"completionReason"];

  v50 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_devicePluggedIn"];
  [v4 setObject:v50 forKeyedSubscript:@"eBatteryIsCharging"];

  v51 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularLqm"];
  [v4 setObject:v51 forKeyedSubscript:@"eCellularLQM"];

  v52 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularBand"];
  [v4 setObject:v52 forKeyedSubscript:@"eCellularNrBand"];

  v53 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularRadioTechnology"];
  [v4 setObject:v53 forKeyedSubscript:@"eCellularRAT"];

  v54 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularMcc"];
  [v4 setObject:v54 forKeyedSubscript:@"MCC"];

  v55 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularMnc"];
  [v4 setObject:v55 forKeyedSubscript:@"MNC"];

  v56 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_deviceOrientation"];
  [v4 setObject:v56 forKeyedSubscript:@"eDeviceOrientation"];

  v57 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_deviceScreenOn"];
  [v4 setObject:v57 forKeyedSubscript:@"eDeviceScreenOn"];

  v58 = [reportCopy objectForKeyedSubscript:@"e_activity_bundleID"];
  [v4 setObject:v58 forKeyedSubscript:@"effectiveBundleID"];

  v59 = [reportCopy objectForKeyedSubscript:@"e_l2Report_wifiIsApplePersonalHotspot"];
  [v4 setObject:v59 forKeyedSubscript:@"eIsApplePersonalHotspot"];

  v60 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularSliceActive"];
  [v4 setObject:v60 forKeyedSubscript:@"eIsCellularSlice"];

  v61 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_motionState"];
  [v4 setObject:v61 forKeyedSubscript:@"eMotionState"];

  v62 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_thermalPressure"];
  [v4 setObject:v62 forKeyedSubscript:@"eThermalPressure"];

  v63 = [reportCopy objectForKeyedSubscript:@"e_l2Report_wifiRadioTechnology"];
  [v4 setObject:v63 forKeyedSubscript:@"eWifiTechnology"];

  v64 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularOutranksWifi"];
  [v4 setObject:v64 forKeyedSubscript:@"eCellularOutrank"];

  v65 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularOutrankPrimaryReason"];
  [v4 setObject:v65 forKeyedSubscript:@"eCellularOutrankPrimaryReason"];

  v66 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_batteryAbsoluteCapacity"];
  [v66 doubleValue];
  v68 = v67;

  v69 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_batteryAbsoluteCapacity"];
  [v69 doubleValue];
  v71 = v70;

  v72 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_batteryVoltage"];
  [v72 doubleValue];
  v74 = v73;

  v75 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_batteryVoltage"];
  [v75 doubleValue];
  v77 = v76;

  v78 = [reportCopy objectForKeyedSubscript:@"e_durationMsecs"];
  [v78 doubleValue];
  v80 = v79;

  v81 = v80 / 1000.0;
  if (v80 <= 0.0)
  {
    [v4 setObject:&unk_2847EFE10 forKeyedSubscript:@"powerConsumed"];
  }

  else
  {
    v82 = [MEMORY[0x277CCABB0] numberWithDouble:(v68 * v74 - v71 * v77) * 3.6 / v80];
    [v4 setObject:v82 forKeyedSubscript:@"powerConsumed"];
  }

  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v80];
  [v4 setObject:v83 forKeyedSubscript:@"durationInMs"];

  if (v81 <= 10.0)
  {
    v85 = MEMORY[0x277CCABB0];
    v86 = ceil(v81 + v81);
  }

  else
  {
    if (v81 <= 17.0)
    {
      v85 = MEMORY[0x277CCABB0];
      v87 = v81 + -10.0;
      v88 = 20.0;
    }

    else if (v81 <= 25.0)
    {
      v85 = MEMORY[0x277CCABB0];
      v87 = ceil((v81 + -17.0) * 0.5);
      v88 = 27.0;
    }

    else
    {
      if (v81 > 60.0)
      {
        if (v81 <= 120.0)
        {
          v84 = &unk_2847EF7E8;
        }

        else if (v81 <= 240.0)
        {
          v84 = &unk_2847EF800;
        }

        else if (v81 <= 300.0)
        {
          v84 = &unk_2847EF818;
        }

        else if (v81 <= 600.0)
        {
          v84 = &unk_2847EF830;
        }

        else if (v81 > 1800.0)
        {
          v84 = &unk_2847EF860;
        }

        else
        {
          v84 = &unk_2847EF848;
        }

        [v4 setObject:v84 forKeyedSubscript:@"durationInSecondsBins"];
        goto LABEL_63;
      }

      v85 = MEMORY[0x277CCABB0];
      v87 = ceil((v81 + -25.0) / 5.0);
      v88 = 31.0;
    }

    v86 = v87 + v88;
  }

  v89 = [v85 numberWithDouble:v86];
  [v4 setObject:v89 forKeyedSubscript:@"durationInSecondsBins"];

LABEL_63:
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__6;
  v110 = __Block_byref_object_dispose__6;
  v111 = 0;
  v90 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_batteryAccumulator_durations"];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_455;
  v93[3] = &unk_27898C758;
  v93[4] = &v106;
  [v90 enumerateObjectsUsingBlock:v93];

  [v4 setObject:v107[5] forKeyedSubscript:@"sdmState"];
  v91 = [reportCopy objectForKeyedSubscript:@"e_l2Report_activeRadio"];
  [v4 setObject:v91 forKeyedSubscript:@"activeRadio"];

  _Block_object_dispose(&v106, 8);

  return v4;
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"smoothedRTT"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = [v5 objectForKeyedSubscript:@"dataStallCount"];
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"transactionMetrics"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_3;
  v7[3] = &unk_27898CB80;
  v8 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24) == 1)
  {
    *(v5 + 24) = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"background"];
    *(*(*(a1 + 48) + 8) + 24) = [v6 BOOLValue];
  }
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"totalBytesRead"];
  *(*(*(a1 + 32) + 8) + 24) += [v4 longValue];

  v5 = [v3 objectForKeyedSubscript:@"totalBytesWritten"];

  *(*(*(a1 + 40) + 8) + 24) += [v5 longValue];
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_455(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v6 = [v18 objectForKeyedSubscript:@"name"];
  v7 = [v6 isEqualToString:@"cellDataStatus"];

  v8 = v18;
  if (v7)
  {
    v9 = [v18 objectForKeyedSubscript:@"durations"];
    v10 = @"5GOn";
    v11 = [v9 objectForKeyedSubscript:@"5GOn"];

    if (v11 || ([v18 objectForKeyedSubscript:@"durations"], v12 = objc_claimAutoreleasedReturnValue(), v10 = @"5GAuto", objc_msgSend(v12, "objectForKeyedSubscript:", @"5GAuto"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
    }

    else
    {
      v16 = [v18 objectForKeyedSubscript:@"durations"];
      v10 = @"LTE";
      v17 = [v16 objectForKeyedSubscript:@"LTE"];

      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      if (!v17)
      {
        *(v14 + 40) = @"NA";
        goto LABEL_6;
      }
    }

    *(v14 + 40) = v10;
LABEL_6:

    *a4 = 1;
    v8 = v18;
  }
}

- (void)_uploadCompleteNWActivityMetrics
{
  v71 = *MEMORY[0x277D85DE8];
  _findNWActivityMetricsForUploading = [(NWActivityHelper *)self _findNWActivityMetricsForUploading];
  v4 = _findNWActivityMetricsForUploading;
  if (_findNWActivityMetricsForUploading && (_findNWActivityMetricsForUploading = [_findNWActivityMetricsForUploading count]) != 0)
  {
    v5 = activityLogHandle(_findNWActivityMetricsForUploading);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v70 = [v4 count];
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Found %ld metrics to upload", buf, 0xCu);
    }

    analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
    mainObjectContext = [analyticsWorkspace mainObjectContext];

    if (mainObjectContext)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v46 = v4;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v63;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v63 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v62 + 1) + 8 * i);
            uuid = [v15 uuid];

            if (uuid)
            {
              uuid2 = [v15 uuid];
              [v9 addObject:uuid2];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v12);
      }

      v61 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      v18 = v9;
      v50 = [v18 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v50)
      {
        v19 = 0;
        v49 = *v59;
        v47 = v18;
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v59 != v49)
            {
              objc_enumerationMutation(v18);
            }

            v21 = *(*(&v58 + 1) + 8 * j);
            v22 = objc_autoreleasePoolPush();
            v23 = activityLogHandle(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v70 = v21;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "Processing activity %@", buf, 0xCu);
            }

            v57 = v19;
            v24 = [(NWActivityHelper *)self _fetchFragmentsForUUID:v21 fromContext:mainObjectContext withError:&v57];
            v25 = v57;

            if (v24)
            {
              v51 = v22;
              v26 = [(NWActivityHelper *)self _createSupermetricFromFragments:v24 forMetricUUID:v21];
              if (v26)
              {
                [NWActivityAlgosScore processNWActivitySuperMetric:v26];
                v48 = v26;
                dictionaryRepresentation = [v26 dictionaryRepresentation];
                v28 = activityLogHandle(dictionaryRepresentation);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v70 = dictionaryRepresentation;
                  _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "Generated report: \n%@", buf, 0xCu);
                }

                [(NWActivityHelper *)self sendReportToMetricStream:dictionaryRepresentation];
                if (nw_activity_should_report_to_destination())
                {
                  v29 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "Sending supermetric report to destination two", buf, 2u);
                  }

                  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [NWActivitySuperMetric flattenObject:dictionaryRepresentation intoDictionary:v30 atPath:&stru_2847966D8];
                  AnalyticsSendEvent();
                }

                if (nw_activity_should_report_to_destination())
                {
                  v31 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "Sending supermetric report to destination three", buf, 2u);
                  }

                  v32 = _CFXPCCreateXPCObjectFromCFObject();
                  v33 = metricsLogHandle;
                  if (v32)
                  {
                    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v70 = v32;
                      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "Generated supermetric report for STAnalytics: %@", buf, 0xCu);
                    }

                    SecTrustReportNetworkingAnalytics();
                  }

                  else if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Failed to generate report for STAnalytics", buf, 2u);
                  }
                }

                v34 = metricsLogHandle;
                if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Checking libnetcore for destination four", buf, 2u);
                }

                if (nw_activity_should_report_to_destination())
                {
                  v35 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "Sending NWActivity summary report to destination four", buf, 2u);
                  }

                  v36 = [(NWActivityHelper *)self _getNWActivitySummaryReport:dictionaryRepresentation];
                  v37 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v70 = v36;
                    _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEBUG, "Generated NWActivity summary report: %@", buf, 0xCu);
                  }

                  AnalyticsSendEvent();
                }

                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v38 = v24;
                v39 = [v38 countByEnumeratingWithState:&v53 objects:v66 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v54;
                  do
                  {
                    for (k = 0; k != v40; ++k)
                    {
                      if (*v54 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      [(NWActivityHelper *)self _deleteNWActivityFragment:*(*(&v53 + 1) + 8 * k) fromContext:mainObjectContext];
                    }

                    v40 = [v38 countByEnumeratingWithState:&v53 objects:v66 count:16];
                  }

                  while (v40);
                }

                v52 = v25;
                v43 = [mainObjectContext save:&v52];
                v19 = v52;

                if ((v43 & 1) == 0)
                {
                  v45 = activityLogHandle(v44);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v70 = v19;
                    _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "Failed to delete the metric, error: %@", buf, 0xCu);
                  }
                }

                v18 = v47;
                v26 = v48;
              }

              else
              {
                v19 = v25;
              }

              v22 = v51;
            }

            else
            {
              v19 = v25;
            }

            objc_autoreleasePoolPop(v22);
          }

          v50 = [v18 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v50);
      }

      v4 = v46;
    }

    else
    {
      v18 = activityLogHandle(v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Failed to get context when uploading complete metrics, stopping", buf, 2u);
      }
    }
  }

  else
  {
    mainObjectContext = activityLogHandle(_findNWActivityMetricsForUploading);
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_DEFAULT, "Did not find any metrics to upload", buf, 2u);
    }
  }
}

- (void)sendReportToMetricStream:(id)stream
{
  v14 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (streamCopy)
  {
    v5 = [MEMORY[0x277CCAAA0] isValidJSONObject:streamCopy];
    if (!v5)
    {
      v8 = activityLogHandle(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Report is not valid JSON, dropping", buf, 2u);
      }

      goto LABEL_16;
    }

    v11 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:streamCopy options:0 error:&v11];
    v7 = v11;
    v8 = v7;
    if (v7 || !v6)
    {
      v9 = activityLogHandle(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Failed to create JSON data from metric, dropping: %@", buf, 0xCu);
      }
    }

    else
    {
      if (![(NWActivityHelper *)self shouldSendMetricStream])
      {
        v8 = 0;
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
      v10 = metricstreamLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v8 = 0;
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (BOOL)shouldSendMetricStream
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild])
  {
    has_global_investigation_identifier = nw_activity_has_global_investigation_identifier();
  }

  else
  {
    has_global_investigation_identifier = 0;
  }

  return has_global_investigation_identifier;
}

@end