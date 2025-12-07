@interface ASCMetrics
+ (ASCMetrics)sharedMetrics;
- (ASCMetrics)initWithConnection:(id)connection;
- (id)processMetricsData:(id)data pageFields:(id)fields activity:(id)activity;
- (id)processViewMetrics:(id)metrics atInvocationPoint:(id)point withActivity:(id)activity;
- (id)processViewRenderWithPredicate:(id)predicate;
- (id)recordCampaignToken:(id)token providerToken:(id)providerToken withLockup:(id)lockup;
- (id)recordQToken:(id)token campaignToken:(id)campaignToken advertisementID:(id)d withLockup:(id)lockup;
- (void)daemonConnectionWasLost:(id)lost;
- (void)dealloc;
- (void)logErrorMessage:(id)message;
@end

@implementation ASCMetrics

+ (ASCMetrics)sharedMetrics
{
  if (sharedMetrics_onceToken != -1)
  {
    +[ASCMetrics sharedMetrics];
  }

  v3 = sharedMetrics_sharedMetrics;

  return v3;
}

void __27__ASCMetrics_sharedMetrics__block_invoke()
{
  v0 = [ASCMetrics alloc];
  v3 = +[ASCServicesConnection sharedConnection];
  v1 = [(ASCMetrics *)v0 initWithConnection:v3];
  v2 = sharedMetrics_sharedMetrics;
  sharedMetrics_sharedMetrics = v1;
}

- (ASCMetrics)initWithConnection:(id)connection
{
  connectionCopy = connection;
  +[ASCEligibility assertCurrentProcessEligibility];
  v13.receiver = self;
  v13.super_class = ASCMetrics;
  v6 = [(ASCMetrics *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = objc_alloc_init(ASCPendingPromises);
    pendingProcesses = v7->_pendingProcesses;
    v7->_pendingProcesses = v8;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_daemonConnectionWasLost_ name:0x2827A4CB8 object:connectionCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_daemonConnectionWasLost_ name:0x2827A4CD8 object:connectionCopy];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCMetrics;
  [(ASCMetrics *)&v4 dealloc];
}

- (void)daemonConnectionWasLost:(id)lost
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Connection to daemon was lost";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 initWithDomain:0x2827A05D8 code:1 userInfo:v5];

  pendingProcesses = [(ASCMetrics *)self pendingProcesses];
  [pendingProcesses finishAllWithError:v6];
}

- (id)processMetricsData:(id)data pageFields:(id)fields activity:(id)activity
{
  dataCopy = data;
  fieldsCopy = fields;
  activityCopy = activity;
  pendingProcesses = [(ASCMetrics *)self pendingProcesses];
  objc_initWeak(&location, pendingProcesses);

  v12 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  connection = [(ASCMetrics *)self connection];
  metricsService = [connection metricsService];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__ASCMetrics_processMetricsData_pageFields_activity___block_invoke;
  v25[3] = &unk_2781CBBA8;
  objc_copyWeak(&v30, &location);
  v15 = v12;
  v26 = v15;
  v16 = dataCopy;
  v27 = v16;
  v17 = fieldsCopy;
  v28 = v17;
  v18 = activityCopy;
  v29 = v18;
  [metricsService addSuccessBlock:v25];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __53__ASCMetrics_processMetricsData_pageFields_activity___block_invoke_3;
  v23[3] = &unk_2781CBB80;
  v19 = v15;
  v24 = v19;
  [metricsService addErrorBlock:v23];
  v20 = v24;
  v21 = v19;

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v21;
}

void __53__ASCMetrics_processMetricsData_pageFields_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained addBinaryPromise:*(a1 + 32)];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ASCMetrics_processMetricsData_pageFields_activity___block_invoke_2;
  v8[3] = &unk_2781CBB80;
  v9 = *(a1 + 32);
  [v3 processMetricsData:v5 pageFields:v6 activity:v7 withReplyHandler:v8];
}

uint64_t __53__ASCMetrics_processMetricsData_pageFields_activity___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (id)recordCampaignToken:(id)token providerToken:(id)providerToken withLockup:(id)lockup
{
  v43[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  providerTokenCopy = providerToken;
  lockupCopy = lockup;
  offer = [lockupCopy offer];

  if (offer)
  {
    v13 = ASCOfferGetCodableClasses(v12);
    offer2 = [lockupCopy offer];
    v15 = [v13 containsObject:objc_opt_class()];

    if ((v15 & 1) == 0)
    {
      v16 = MEMORY[0x277CCACA8];
      offer3 = [lockupCopy offer];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v16 stringWithFormat:@"Unsupported custom lockup offer type: %@.", v19];

      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v42 = *MEMORY[0x277CCA450];
      v43[0] = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v23 = [v21 initWithDomain:0x2827A05D8 code:3 userInfo:v22];

      v24 = [MEMORY[0x277CEE420] promiseWithError:v23];

      goto LABEL_6;
    }
  }

  else
  {
  }

  pendingProcesses = [(ASCMetrics *)self pendingProcesses];
  objc_initWeak(&location, pendingProcesses);

  v26 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  connection = [(ASCMetrics *)self connection];
  metricsService = [connection metricsService];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __59__ASCMetrics_recordCampaignToken_providerToken_withLockup___block_invoke;
  v35[3] = &unk_2781CBBA8;
  objc_copyWeak(&v40, &location);
  v29 = v26;
  v36 = v29;
  v37 = tokenCopy;
  v38 = providerTokenCopy;
  v39 = lockupCopy;
  [metricsService addSuccessBlock:v35];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __59__ASCMetrics_recordCampaignToken_providerToken_withLockup___block_invoke_3;
  v33[3] = &unk_2781CBB80;
  v30 = v29;
  v34 = v30;
  [metricsService addErrorBlock:v33];
  v31 = v34;
  v24 = v30;

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
LABEL_6:

  return v24;
}

void __59__ASCMetrics_recordCampaignToken_providerToken_withLockup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained addBinaryPromise:*(a1 + 32)];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ASCMetrics_recordCampaignToken_providerToken_withLockup___block_invoke_2;
  v8[3] = &unk_2781CBB80;
  v9 = *(a1 + 32);
  [v3 recordCampaignToken:v5 providerToken:v6 withLockup:v7 withReplyHandler:v8];
}

uint64_t __59__ASCMetrics_recordCampaignToken_providerToken_withLockup___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (id)recordQToken:(id)token campaignToken:(id)campaignToken advertisementID:(id)d withLockup:(id)lockup
{
  v47[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  campaignTokenCopy = campaignToken;
  dCopy = d;
  lockupCopy = lockup;
  offer = [lockupCopy offer];

  if (offer)
  {
    v16 = ASCOfferGetCodableClasses(v15);
    offer2 = [lockupCopy offer];
    v18 = [v16 containsObject:objc_opt_class()];

    if ((v18 & 1) == 0)
    {
      v19 = MEMORY[0x277CCACA8];
      offer3 = [lockupCopy offer];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v19 stringWithFormat:@"Unsupported custom lockup offer type: %@.", v22];

      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v46 = *MEMORY[0x277CCA450];
      v47[0] = v23;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v26 = [v24 initWithDomain:0x2827A05D8 code:3 userInfo:v25];

      v27 = [MEMORY[0x277CEE420] promiseWithError:v26];

      goto LABEL_6;
    }
  }

  else
  {
  }

  pendingProcesses = [(ASCMetrics *)self pendingProcesses];
  objc_initWeak(&location, pendingProcesses);

  v29 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  connection = [(ASCMetrics *)self connection];
  metricsService = [connection metricsService];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __68__ASCMetrics_recordQToken_campaignToken_advertisementID_withLockup___block_invoke;
  v38[3] = &unk_2781CBBD0;
  objc_copyWeak(&v44, &location);
  v32 = v29;
  v39 = v32;
  v40 = tokenCopy;
  v41 = campaignTokenCopy;
  v42 = dCopy;
  v43 = lockupCopy;
  [metricsService addSuccessBlock:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__ASCMetrics_recordQToken_campaignToken_advertisementID_withLockup___block_invoke_3;
  v36[3] = &unk_2781CBB80;
  v33 = v32;
  v37 = v33;
  [metricsService addErrorBlock:v36];
  v34 = v37;
  v27 = v33;

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
LABEL_6:

  return v27;
}

void __68__ASCMetrics_recordQToken_campaignToken_advertisementID_withLockup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained addBinaryPromise:*(a1 + 32)];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ASCMetrics_recordQToken_campaignToken_advertisementID_withLockup___block_invoke_2;
  v9[3] = &unk_2781CBB80;
  v10 = *(a1 + 32);
  [v3 recordQToken:v5 campaignToken:v6 advertisementID:v7 withLockup:v8 withReplyHandler:v9];
}

uint64_t __68__ASCMetrics_recordQToken_campaignToken_advertisementID_withLockup___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (id)processViewMetrics:(id)metrics atInvocationPoint:(id)point withActivity:(id)activity
{
  v30 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  pointCopy = point;
  activityCopy = activity;
  v11 = [metricsCopy dataForInvocationPoint:pointCopy];
  if ([v11 count])
  {
    v24 = pointCopy;
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          pageFields = [metricsCopy pageFields];
          v20 = [(ASCMetrics *)self processMetricsData:v18 pageFields:pageFields activity:activityCopy];
          [v12 addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    promiseWithSuccess = [MEMORY[0x277CEE420] promiseWithFlattenedPromises:v12];

    v11 = v23;
    pointCopy = v24;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCMetrics processViewMetrics:pointCopy atInvocationPoint:? withActivity:?];
    }

    promiseWithSuccess = [MEMORY[0x277CEE420] promiseWithSuccess];
  }

  return promiseWithSuccess;
}

- (id)processViewRenderWithPredicate:(id)predicate
{
  v25[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if ([predicateCopy isEmpty])
  {
    v5 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"View render signpost predicate is empty.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v7 = [v5 initWithDomain:0x2827A05D8 code:0 userInfo:v6];

    v8 = [MEMORY[0x277CEE420] promiseWithError:v7];
  }

  else
  {
    pendingProcesses = [(ASCMetrics *)self pendingProcesses];
    objc_initWeak(&location, pendingProcesses);

    v10 = objc_alloc_init(MEMORY[0x277CEE5F0]);
    connection = [(ASCMetrics *)self connection];
    metricsService = [connection metricsService];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__ASCMetrics_processViewRenderWithPredicate___block_invoke;
    v19[3] = &unk_2781CBBF8;
    objc_copyWeak(&v22, &location);
    v13 = v10;
    v20 = v13;
    v21 = predicateCopy;
    [metricsService addSuccessBlock:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__ASCMetrics_processViewRenderWithPredicate___block_invoke_3;
    v17[3] = &unk_2781CBB80;
    v14 = v13;
    v18 = v14;
    [metricsService addErrorBlock:v17];
    v15 = v18;
    v8 = v14;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __45__ASCMetrics_processViewRenderWithPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addBinaryPromise:*(a1 + 32)];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASCMetrics_processViewRenderWithPredicate___block_invoke_2;
  v6[3] = &unk_2781CBB80;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v3 processViewRenderWithPredicate:v5 withReplyHandler:v6];
}

uint64_t __45__ASCMetrics_processViewRenderWithPredicate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (void)logErrorMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy count])
  {
    connection = [(ASCMetrics *)self connection];
    metricsService = [connection metricsService];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__ASCMetrics_logErrorMessage___block_invoke;
    v7[3] = &unk_2781CBC20;
    v8 = messageCopy;
    [metricsService addSuccessBlock:v7];
  }
}

- (void)processViewMetrics:(uint64_t)a1 atInvocationPoint:withActivity:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "No metrics for invocation point %@, skipping XPC call", &v1, 0xCu);
}

@end