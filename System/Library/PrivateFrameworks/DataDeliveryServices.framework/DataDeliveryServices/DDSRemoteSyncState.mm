@interface DDSRemoteSyncState
+ (double)timeIntervalUntilNextRegularUpdate;
- (BOOL)shouldInitiateRegularUpdateCycle;
- (BOOL)shouldRequestCompleteRefresh;
- (DDSRemoteSyncState)initWithDelegate:(id)delegate assetType:(id)type;
- (DDSRemoteSyncStateDelegate)delegate;
- (NSString)metadataSyncStatePreferenceKey;
- (NSString)scheduleRetryIdentifier;
- (NSString)scheduleUpdateIdentifier;
- (double)nextUpdateTimeIntervalForAttemptCount:(unint64_t)count;
- (double)timeBetweenSyncs;
- (void)beganUpdateCycle;
- (void)completedUpdateCycleWithError:(id)error;
- (void)loadState;
- (void)loadStateAndScheduleUpdate;
- (void)performScheduledActivityWithIdentifier:(id)identifier;
- (void)requestCompleteRefresh;
- (void)requestRetry;
- (void)requestUpdate;
- (void)resetState;
- (void)saveState;
- (void)scheduleRegularUpdate;
- (void)scheduleRetry;
@end

@implementation DDSRemoteSyncState

- (DDSRemoteSyncState)initWithDelegate:(id)delegate assetType:(id)type
{
  delegateCopy = delegate;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = DDSRemoteSyncState;
  v8 = [(DDSRemoteSyncState *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_assetType = typeCopy;
    [(DDSRemoteSyncState *)v8 setDelegate:delegateCopy];
    v10 = objc_alloc_init(DDSBackgroundActivityScheduler);
    [(DDSRemoteSyncState *)v9 setScheduler:v10];

    scheduler = [(DDSRemoteSyncState *)v9 scheduler];
    [scheduler setDelegate:v9];

    date = [MEMORY[0x1E695DF00] date];
    [(DDSRemoteSyncState *)v9 setDate:date];

    buildVersionString = [objc_opt_class() buildVersionString];
    [(DDSRemoteSyncState *)v9 setBuildVersion:buildVersionString];

    [(DDSRemoteSyncState *)v9 setSyncStatus:0];
  }

  return v9;
}

- (void)loadStateAndScheduleUpdate
{
  [(DDSRemoteSyncState *)self loadState];
  [(DDSRemoteSyncState *)self scheduleRegularUpdate];
  if ([(DDSRemoteSyncState *)self shouldRequestCompleteRefresh])
  {

    [(DDSRemoteSyncState *)self requestCompleteRefresh];
  }

  else if ([(DDSRemoteSyncState *)self shouldInitiateRegularUpdateCycle])
  {

    [(DDSRemoteSyncState *)self requestUpdate];
  }
}

- (NSString)scheduleUpdateIdentifier
{
  assetType = [(DDSRemoteSyncState *)self assetType];
  v4 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"com.apple.DataDeliveryServices.update";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"com.apple.DataDeliveryServices.update", assetType2];
  }

  return v5;
}

- (NSString)scheduleRetryIdentifier
{
  assetType = [(DDSRemoteSyncState *)self assetType];
  v4 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"com.apple.DataDeliveryServices.retry";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"com.apple.DataDeliveryServices.retry", assetType2];
  }

  return v5;
}

- (void)scheduleRegularUpdate
{
  [(DDSRemoteSyncState *)self timeBetweenSyncs];
  v4 = v3;
  scheduler = [(DDSRemoteSyncState *)self scheduler];
  scheduleUpdateIdentifier = [(DDSRemoteSyncState *)self scheduleUpdateIdentifier];
  [scheduler scheduleActivityWithIdentifier:scheduleUpdateIdentifier interval:v4 tolerance:v4 * 0.5];
}

- (void)scheduleRetry
{
  [(DDSRemoteSyncState *)self nextUpdateTimeIntervalForAttemptCount:[(DDSRemoteSyncState *)self attemptCount]];
  v4 = v3;
  scheduler = [(DDSRemoteSyncState *)self scheduler];
  scheduleRetryIdentifier = [(DDSRemoteSyncState *)self scheduleRetryIdentifier];
  [scheduler scheduleActivityWithIdentifier:scheduleRetryIdentifier interval:v4 tolerance:v4 * 0.5];
}

- (BOOL)shouldRequestCompleteRefresh
{
  v15 = *MEMORY[0x1E69E9840];
  buildVersionString = [objc_opt_class() buildVersionString];
  buildVersion = [(DDSRemoteSyncState *)self buildVersion];
  v5 = [buildVersionString isEqualToString:buildVersion];

  if ((v5 & 1) == 0)
  {
    v7 = UpdateLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      buildVersion2 = [(DDSRemoteSyncState *)self buildVersion];
      v11 = 138412546;
      v12 = buildVersionString;
      v13 = 2112;
      v14 = buildVersion2;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Determined new build version: %@, previously on: %@", &v11, 0x16u);
    }

    buildVersionString2 = [objc_opt_class() buildVersionString];
    [(DDSRemoteSyncState *)self setBuildVersion:buildVersionString2];
  }

  return v5 ^ 1;
}

- (BOOL)shouldInitiateRegularUpdateCycle
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(DDSRemoteSyncState *)self syncStatus]|| (v3 = [(DDSRemoteSyncState *)self attemptCount], v3 > 9))
  {
    date = [(DDSRemoteSyncState *)self date];
    [date timeIntervalSinceNow];
    v5 = v7 < -86400.0;

    v4 = UpdateLog(v8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      date2 = [(DDSRemoteSyncState *)self date];
      [date2 timeIntervalSinceNow];
      v11 = -v10;
      date3 = [(DDSRemoteSyncState *)self date];
      v14 = 134218242;
      v15 = v11;
      v16 = 2112;
      v17 = date3;
      _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Time elapsed since last update: %f, date: %@", &v14, 0x16u);
    }
  }

  else
  {
    v4 = UpdateLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Triggering regular asset update request as previous request seems to have failed", &v14, 2u);
    }

    v5 = 1;
  }

  return v5;
}

- (void)beganUpdateCycle
{
  if ([(DDSRemoteSyncState *)self syncStatus]!= 1)
  {

    [(DDSRemoteSyncState *)self setSyncStatus:1];
  }
}

- (void)completedUpdateCycleWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(DDSRemoteSyncState *)self setDate:date];

    selfCopy2 = self;
    v8 = 2;
LABEL_9:
    [(DDSRemoteSyncState *)selfCopy2 setSyncStatus:v8];
    [(DDSRemoteSyncState *)self setAttemptCount:0];
    goto LABEL_10;
  }

  attemptCount = [(DDSRemoteSyncState *)self attemptCount];
  if (attemptCount > 9)
  {
    v9 = UpdateLog(attemptCount);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Sync failed, giving up for today", v11, 2u);
    }

    selfCopy2 = self;
    v8 = 3;
    goto LABEL_9;
  }

  if ([(DDSRemoteSyncState *)self syncStatus]== 1)
  {
    [(DDSRemoteSyncState *)self setSyncStatus:0];
    [(DDSRemoteSyncState *)self setAttemptCount:[(DDSRemoteSyncState *)self attemptCount]+ 1];
    [(DDSRemoteSyncState *)self scheduleRetry];
  }

  else if (![(DDSRemoteSyncState *)self syncStatus])
  {
    v10 = UpdateLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Retry already scheduled", buf, 2u);
    }
  }

LABEL_10:
  [(DDSRemoteSyncState *)self saveState];
}

- (void)requestUpdate
{
  delegate = [(DDSRemoteSyncState *)self delegate];
  assetType = [(DDSRemoteSyncState *)self assetType];
  [delegate remoteSyncStateRequestsUpdateForAssetType:assetType];
}

- (void)requestRetry
{
  v3 = UpdateLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting retry...", v6, 2u);
  }

  delegate = [(DDSRemoteSyncState *)self delegate];
  assetType = [(DDSRemoteSyncState *)self assetType];
  [delegate remoteSyncStateRequestsRetryForAssetType:assetType];
}

- (void)requestCompleteRefresh
{
  v3 = UpdateLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting complete refresh...", v6, 2u);
  }

  delegate = [(DDSRemoteSyncState *)self delegate];
  assetType = [(DDSRemoteSyncState *)self assetType];
  [delegate remoteSyncStateRequestsResetForAssetType:assetType];
}

- (void)performScheduledActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scheduleUpdateIdentifier = [(DDSRemoteSyncState *)self scheduleUpdateIdentifier];
  v5 = [identifierCopy isEqualToString:scheduleUpdateIdentifier];

  if (v5)
  {
    [(DDSRemoteSyncState *)self resetState];
    [(DDSRemoteSyncState *)self requestUpdate];
    [(DDSRemoteSyncState *)self scheduleRegularUpdate];
  }

  else
  {
    scheduleRetryIdentifier = [(DDSRemoteSyncState *)self scheduleRetryIdentifier];
    v7 = [identifierCopy isEqualToString:scheduleRetryIdentifier];

    if (v7)
    {
      [(DDSRemoteSyncState *)self requestRetry];
    }
  }
}

- (NSString)metadataSyncStatePreferenceKey
{
  assetType = [(DDSRemoteSyncState *)self assetType];
  v4 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"MetadataSyncState";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"MetadataSyncState", assetType2];
  }

  return v5;
}

- (void)resetState
{
  [(DDSRemoteSyncState *)self setSyncStatus:0];
  [(DDSRemoteSyncState *)self setAttemptCount:0];

  [(DDSRemoteSyncState *)self saveState];
}

- (void)loadState
{
  v35 = *MEMORY[0x1E69E9840];
  metadataSyncStatePreferenceKey = [(DDSRemoteSyncState *)self metadataSyncStatePreferenceKey];
  v4 = DDSGetPreferenceObjectForKey(metadataSyncStatePreferenceKey);

  v5 = [v4 objectForKey:@"Date"];
  v6 = v5;
  if (v5)
  {
    date = v5;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v8 = date;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [DDSRemoteSyncState loadState];
  }

  date2 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 earlierDate:date2];
  [(DDSRemoteSyncState *)self setDate:v10];

  v11 = [v4 objectForKey:@"BuildVersion"];
  v12 = v11;
  if (v11)
  {
    buildVersionString = v11;
  }

  else
  {
    buildVersionString = [objc_opt_class() buildVersionString];
  }

  v14 = buildVersionString;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [DDSRemoteSyncState loadState];
  }

  [(DDSRemoteSyncState *)self setBuildVersion:v14];
  v15 = [v4 objectForKey:@"Status"];
  integerValue = [v15 integerValue];

  if (integerValue == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = integerValue;
  }

  if (integerValue <= 3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 2;
  }

  [(DDSRemoteSyncState *)self setSyncStatus:v18];
  v19 = [v4 objectForKey:@"AttemptCount"];
  integerValue2 = [v19 integerValue];

  if (integerValue2 < 0)
  {
    [DDSRemoteSyncState loadState];
  }

  v21 = UpdateLog([(DDSRemoteSyncState *)self setAttemptCount:integerValue2]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    assetType = [(DDSRemoteSyncState *)self assetType];
    date3 = [(DDSRemoteSyncState *)self date];
    buildVersion = [(DDSRemoteSyncState *)self buildVersion];
    v25 = 138544386;
    v26 = assetType;
    v27 = 2114;
    v28 = date3;
    v29 = 2114;
    v30 = buildVersion;
    v31 = 2050;
    attemptCount = [(DDSRemoteSyncState *)self attemptCount];
    v33 = 2050;
    syncStatus = [(DDSRemoteSyncState *)self syncStatus];
    _os_log_impl(&dword_1DF7C6000, v21, OS_LOG_TYPE_DEFAULT, "Loaded sync state for asset type: %{public}@ (date: %{public}@, buildVersion: %{public}@, attempts: %{public}lu, status: %{public}lu)", &v25, 0x34u);
  }
}

- (void)saveState
{
  v17 = *MEMORY[0x1E69E9840];
  assetType = [self assetType];
  date = [self date];
  buildVersion = [self buildVersion];
  v7 = 138544386;
  v8 = assetType;
  v9 = 2114;
  v10 = date;
  v11 = 2114;
  v12 = buildVersion;
  v13 = 2050;
  attemptCount = [self attemptCount];
  v15 = 2050;
  syncStatus = [self syncStatus];
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Saving sync state for asset type: %{public}@ (date: %{public}@, buildVersion: %{public}@, attempts: %{public}lu, status: %{public}lu", &v7, 0x34u);
}

- (double)nextUpdateTimeIntervalForAttemptCount:(unint64_t)count
{
  if (count - 1 > 7)
  {
    return 10800.0;
  }

  else
  {
    return dbl_1DF7EDC30[count - 1];
  }
}

+ (double)timeIntervalUntilNextRegularUpdate
{
  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:30 fromDate:date];

  v5 = [v2 dateFromComponents:v4];
  v6 = arc4random() % 3;
  v7 = arc4random() % 0x3C;
  v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v8 setDay:1];
  [v8 setHour:v6 + 2];
  [v8 setMinute:v7];
  v9 = [v2 dateByAddingComponents:v8 toDate:v5 options:0];
  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceDate:v9];
  v12 = fabs(v11);

  return v12;
}

- (double)timeBetweenSyncs
{
  v2 = DDSGetPreferenceIntForKey(@"timerOverrideDuration");
  if (v2 >= 1)
  {
    return v2;
  }

  v4 = objc_opt_class();

  [v4 timeIntervalUntilNextRegularUpdate];
  return result;
}

- (DDSRemoteSyncStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end