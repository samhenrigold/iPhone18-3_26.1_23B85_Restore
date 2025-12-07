@interface PowerTableManager
+ (BOOL)assetSupportedOnCurrentBuild:(id)build;
+ (BOOL)build:(id)build inRangeStarting:(id)starting ending:(id)ending;
+ (id)newPowerTableResultAsString:(int64_t)string;
+ (id)restoreVersionFromOSVersion:(id)version;
+ (int64_t)assetCheckTaskInterval;
- (BOOL)bluetoothAudioStreamingActive;
- (BOOL)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote;
- (BOOL)discoverBluetoothAudioStreaming;
- (BOOL)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready;
- (NSArray)pathsToUse;
- (NSString)btAssetVersion;
- (NSString)wifiAssetVersion;
- (PowerTableManager)initWithQueue:(id)queue delegate:(id)delegate;
- (int64_t)performChipLevelValidationForPowerTableEvaluationSession:(id)session reason:(id *)reason;
- (void)activate;
- (void)checkForNewPowerTablesWithCompletion:(id)completion;
- (void)log;
- (void)powerTableEvaluationSessionDidEnd:(id)end state:(int64_t)state;
- (void)powerTableEvaluationSessionWillEnd:(id)end state:(int64_t)state reason:(id)reason;
- (void)purgeUnsupportedAssetsFromStore:(id)store;
- (void)reportEvaluationOutcome:(id)outcome reason:(id)reason newAssetVersions:(id)versions previousAssetVersions:(id)assetVersions;
- (void)runBackgroundTaskWithIdentifier:(id)identifier completion:(id)completion;
- (void)validateNewAssets:(id)assets completion:(id)completion;
@end

@implementation PowerTableManager

- (PowerTableManager)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v10 = _os_feature_enabled_impl();
  if (v10)
  {
    v23.receiver = self;
    v23.super_class = PowerTableManager;
    v11 = [(PowerTableManager *)&v23 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_dispatchQueue, queue);
      objc_storeWeak(&v12->_delegate, delegateCopy);
      v13 = [[PowerTableAssetStore alloc] initWithSubsystem:0];
      v24[0] = v13;
      v14 = [[PowerTableAssetStore alloc] initWithSubsystem:1];
      v24[1] = v14;
      v15 = [NSArray arrayWithObjects:v24 count:2];
      assetStores = v12->_assetStores;
      v12->_assetStores = v15;

      v17 = -[BackgroundTaskScheduler initWithIdentifier:interval:queue:delegate:]([BackgroundTaskScheduler alloc], "initWithIdentifier:interval:queue:delegate:", @"com.apple.centaurid.PowerTableAssetCheck", [objc_opt_class() assetCheckTaskInterval], v12->_dispatchQueue, v12);
      assetCheckTaskScheduler = v12->_assetCheckTaskScheduler;
      v12->_assetCheckTaskScheduler = v17;

      [(BackgroundTaskScheduler *)v12->_assetCheckTaskScheduler setRequiresUserInactivity:1];
    }
  }

  else
  {
    v19 = sub_100025204(v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      *buf = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: feature disabled", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)activate
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_assetStores;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 activate];
        [(PowerTableManager *)self purgeUnsupportedAssetsFromStore:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  objc_initWeak(buf, self);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004AD0;
  block[3] = &unk_10005C750;
  objc_copyWeak(&v15, buf);
  dispatch_async(dispatchQueue, block);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)checkForNewPowerTablesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100025204(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v35 = v7;
    v36 = 2114;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_evaluationSession)
  {
    v10 = sub_100025204(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002916C(self, a2);
    }

    [(PowerTableEvaluationSession *)self->_evaluationSession log];
    completionCopy[2](completionCopy, 3);
  }

  else
  {
    v30 = os_transaction_create();
    if (!v30)
    {
      sub_100029228(self, a2);
    }

    v11 = +[NSDate now];
    lastCheckDate = self->_lastCheckDate;
    self->_lastCheckDate = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    if ([(NSArray *)self->_assetStores count])
    {
      v14 = 0;
      do
      {
        v15 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v14];
        [v15 refresh];

        v16 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v14];
        [(PowerTableManager *)self purgeUnsupportedAssetsFromStore:v16];

        v17 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v14];
        availableAsset = [v17 availableAsset];

        if (availableAsset)
        {
          v19 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v14];
          v20 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v14];
          availableAsset2 = [v20 availableAsset];
          v22 = [v19 stageAsset:availableAsset2];

          if (v22)
          {
            v23 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v14];
            stagedAsset = [v23 stagedAsset];
            v25 = [NSNumber numberWithUnsignedInteger:v14];
            [v13 setObject:stagedAsset forKey:v25];
          }
        }

        ++v14;
      }

      while (v14 < [(NSArray *)self->_assetStores count]);
    }

    if ([v13 count])
    {
      objc_initWeak(buf, self);
      v26 = [v13 copy];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100004F98;
      v31[3] = &unk_10005C778;
      objc_copyWeak(&v33, buf);
      v32 = completionCopy;
      [(PowerTableManager *)self validateNewAssets:v26 completion:v31];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    else
    {
      v27 = sub_100025204(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [objc_opt_class() description];
        v29 = NSStringFromSelector(a2);
        *buf = 138543618;
        v35 = v28;
        v36 = 2114;
        v37 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no new assets", buf, 0x16u);
      }

      self->_lastCheckResult = 0;
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (BOOL)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready
{
  readyCopy = ready;
  evaluationSession = self->_evaluationSession;
  if (evaluationSession)
  {

    return [(PowerTableEvaluationSession *)evaluationSession setReadiness:ready forClient:client session:session];
  }

  else
  {
    v9 = sub_100025204(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_opt_class() description];
      v11 = NSStringFromSelector(a2);
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      clientCopy = client;
      v19 = 1024;
      v20 = readyCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no evaluation session in progress, ignoring client %ld ready: %u", &v13, 0x26u);
    }

    return 1;
  }
}

- (BOOL)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote
{
  voteCopy = vote;
  evaluationSession = self->_evaluationSession;
  if (evaluationSession)
  {

    return [(PowerTableEvaluationSession *)evaluationSession setVote:vote forClient:client session:session];
  }

  else
  {
    v9 = sub_100025204(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_opt_class() description];
      v11 = NSStringFromSelector(a2);
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      clientCopy = client;
      v19 = 1024;
      v20 = voteCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no evaluation session in progress, ignoring client %ld vote: %u", &v13, 0x26u);
    }

    return 1;
  }
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    lastCheckDate = self->_lastCheckDate;
    if (lastCheckDate)
    {
      v8 = [objc_opt_class() newPowerTableResultAsString:self->_lastCheckResult];
    }

    else
    {
      v8 = @"n/a";
    }

    btDiscoveryInProgress = self->_btDiscoveryInProgress;
    btDiscoveryResult = self->_btDiscoveryResult;
    v11 = self->_evaluationSession != 0;
    v19 = 138544898;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    v23 = 2114;
    v24 = lastCheckDate;
    v25 = 2112;
    v26 = v8;
    v27 = 1024;
    v28 = btDiscoveryInProgress;
    v29 = 1024;
    v30 = btDiscoveryResult;
    v31 = 1024;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: last check: %{public}@, result %@, discovery in progress %u, last discovery result %u, evaluation in progress %u", &v19, 0x3Cu);
    if (lastCheckDate)
    {
    }
  }

  v13 = sub_100025204(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    pathsToUse = [(PowerTableManager *)self pathsToUse];
    v19 = 138543874;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = pathsToUse;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: paths to use: %{public}@", &v19, 0x20u);
  }

  if ([(NSArray *)self->_assetStores count])
  {
    v17 = 0;
    do
    {
      v18 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v17];
      [v18 log];

      ++v17;
    }

    while (v17 < [(NSArray *)self->_assetStores count]);
  }

  [(BackgroundTaskScheduler *)self->_assetCheckTaskScheduler log];
  [(PowerTableEvaluationSession *)self->_evaluationSession log];
}

- (NSArray)pathsToUse
{
  v3 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_assetStores;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *v19;
  do
  {
    v8 = 0;
    do
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if (self->_evaluationSession && ([*(*(&v18 + 1) + 8 * v8) stagedAsset], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        stagedAsset = [v9 stagedAsset];
      }

      else
      {
        activeAsset = [v9 activeAsset];

        if (!activeAsset)
        {
          goto LABEL_12;
        }

        stagedAsset = [v9 activeAsset];
      }

      v13 = stagedAsset;
      v14 = [v9 pathForAsset:stagedAsset];
      [(NSArray *)v3 addObject:v14];

LABEL_12:
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v6 = [(NSArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v6);
LABEL_14:

  if ([(NSArray *)v3 count])
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (NSString)wifiAssetVersion
{
  v3 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:0];
  v4 = v3;
  if (self->_evaluationSession)
  {
    stagedAsset = [v3 stagedAsset];

    if (stagedAsset)
    {
      stagedAsset2 = [v4 stagedAsset];
LABEL_6:
      v8 = stagedAsset2;
      version = [stagedAsset2 version];

      goto LABEL_8;
    }
  }

  activeAsset = [v4 activeAsset];

  if (activeAsset)
  {
    stagedAsset2 = [v4 activeAsset];
    goto LABEL_6;
  }

  version = &stru_10005D038;
LABEL_8:

  return version;
}

- (NSString)btAssetVersion
{
  v3 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:1];
  v4 = v3;
  if (self->_evaluationSession)
  {
    stagedAsset = [v3 stagedAsset];

    if (stagedAsset)
    {
      stagedAsset2 = [v4 stagedAsset];
LABEL_6:
      v8 = stagedAsset2;
      version = [stagedAsset2 version];

      goto LABEL_8;
    }
  }

  activeAsset = [v4 activeAsset];

  if (activeAsset)
  {
    stagedAsset2 = [v4 activeAsset];
    goto LABEL_6;
  }

  version = &stru_10005D038;
LABEL_8:

  return version;
}

- (void)validateNewAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v8 = sub_100025204(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    *buf = 138543874;
    v50 = v9;
    v51 = 2114;
    v52 = v10;
    v53 = 2048;
    v54 = [assetsCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %lu new asset(s) need validation", buf, 0x20u);
  }

  aSelector = a2;

  v11 = objc_alloc_init(NSMutableArray);
  v12 = objc_alloc_init(NSMutableArray);
  if ([(NSArray *)self->_assetStores count])
  {
    v13 = 0;
    do
    {
      v14 = [NSNumber numberWithUnsignedInteger:v13];
      v15 = [assetsCopy objectForKey:v14];

      if (v15)
      {
        version = [v15 version];
        [v11 addObject:version];
      }

      else
      {
        v17 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        activeAsset = [v17 activeAsset];

        if (activeAsset)
        {
          v19 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
          activeAsset2 = [v19 activeAsset];
          version2 = [activeAsset2 version];
          [v11 addObject:version2];
        }

        else
        {
          [v11 addObject:&stru_10005D038];
        }
      }

      v22 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
      activeAsset3 = [v22 activeAsset];

      if (activeAsset3)
      {
        v24 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v13];
        activeAsset4 = [v24 activeAsset];
        version3 = [activeAsset4 version];
        [v12 addObject:version3];
      }

      else
      {
        [v12 addObject:&stru_10005D038];
      }

      ++v13;
    }

    while (v13 < [(NSArray *)self->_assetStores count]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v28 = WeakRetained;
  if (WeakRetained)
  {
    v48 = 0;
    v29 = [WeakRetained readyForNewPowerTableValidationWithReason:&v48];
    v30 = v48;
    v31 = v30;
    if (v29)
    {
      bluetoothAudioStreamingActive = [(PowerTableManager *)self bluetoothAudioStreamingActive];
      if (bluetoothAudioStreamingActive)
      {
        v33 = sub_100025204(bluetoothAudioStreamingActive);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [objc_opt_class() description];
          v35 = NSStringFromSelector(aSelector);
          *buf = 138543618;
          v50 = v34;
          v51 = 2114;
          v52 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: bailing due to active audio streaming", buf, 0x16u);
        }

        [(PowerTableManager *)self reportEvaluationOutcome:@"Aborted" reason:@"chipLevelNotReady:btAudioStreaming" newAssetVersions:v11 previousAssetVersions:v12];
        v36 = completionCopy;
        (*(completionCopy + 2))(completionCopy, 3);
      }

      else
      {
        v36 = completionCopy;
        v42 = objc_retainBlock(completionCopy);
        clientCompletionForNewPowerTableCheck = self->_clientCompletionForNewPowerTableCheck;
        self->_clientCompletionForNewPowerTableCheck = v42;

        v44 = [[PowerTableEvaluationSession alloc] initWithQueue:self->_dispatchQueue newAssetVersions:v11 previousAssetVersions:v12 delegate:self];
        evaluationSession = self->_evaluationSession;
        self->_evaluationSession = v44;

        [(PowerTableEvaluationSession *)self->_evaluationSession activate];
      }
    }

    else
    {
      v38 = sub_100025204(v30);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [objc_opt_class() description];
        v40 = NSStringFromSelector(aSelector);
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: delegate not ready", buf, 0x16u);
      }

      v36 = completionCopy;
      if (v31)
      {
        v41 = [@"chipLevelNotReady" stringByAppendingFormat:@":%@", v31];
      }

      else
      {
        v41 = @"chipLevelNotReady";
      }

      [(PowerTableManager *)self reportEvaluationOutcome:@"Aborted" reason:v41 newAssetVersions:v11 previousAssetVersions:v12];
      (*(completionCopy + 2))(completionCopy, 3);
    }
  }

  else
  {
    v37 = sub_100025204(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }

    v36 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 3);
  }
}

- (void)purgeUnsupportedAssetsFromStore:(id)store
{
  storeCopy = store;
  availableAsset = [storeCopy availableAsset];
  if (availableAsset)
  {
    v5 = availableAsset;
    v6 = objc_opt_class();
    availableAsset2 = [storeCopy availableAsset];
    LOBYTE(v6) = [v6 assetSupportedOnCurrentBuild:availableAsset2];

    if ((v6 & 1) == 0)
    {
      availableAsset3 = [storeCopy availableAsset];
      [storeCopy purgeAsset:availableAsset3];
    }
  }

  activeAsset = [storeCopy activeAsset];
  if (activeAsset)
  {
    v10 = activeAsset;
    v11 = objc_opt_class();
    activeAsset2 = [storeCopy activeAsset];
    LOBYTE(v11) = [v11 assetSupportedOnCurrentBuild:activeAsset2];

    if ((v11 & 1) == 0)
    {
      activeAsset3 = [storeCopy activeAsset];
      [storeCopy purgeAsset:activeAsset3];
    }
  }

  stagedAsset = [storeCopy stagedAsset];
  if (stagedAsset)
  {
    v15 = stagedAsset;
    v16 = objc_opt_class();
    stagedAsset2 = [storeCopy stagedAsset];
    LOBYTE(v16) = [v16 assetSupportedOnCurrentBuild:stagedAsset2];

    if ((v16 & 1) == 0)
    {
      stagedAsset3 = [storeCopy stagedAsset];
      [storeCopy purgeAsset:stagedAsset3];
    }
  }

  rejectedAssets = [storeCopy rejectedAssets];

  if (rejectedAssets)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    rejectedAssets2 = [storeCopy rejectedAssets];
    v21 = [rejectedAssets2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        v24 = 0;
        do
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(rejectedAssets2);
          }

          v25 = *(*(&v26 + 1) + 8 * v24);
          if (([objc_opt_class() assetSupportedOnCurrentBuild:v25] & 1) == 0)
          {
            [storeCopy purgeAsset:v25];
          }

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [rejectedAssets2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v22);
    }
  }
}

- (BOOL)discoverBluetoothAudioStreaming
{
  v2 = sub_100025204(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [objc_opt_class() description];
    v4 = NSStringFromSelector(a2);
    *buf = 138543618;
    v43 = v3;
    v44 = 2114;
    v45 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: starting discovery", buf, 0x16u);
  }

  v40 = 0;
  v5 = [CBDiscovery devicesWithDiscoveryFlags:0x200000 error:&v40];
  v6 = v40;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100025204(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_opt_class() description];
      v33 = NSStringFromSelector(a2);
      *buf = 138543874;
      v43 = v32;
      v44 = 2114;
      v45 = v33;
      v46 = 2114;
      v47 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: discovery failed: %{public}@", buf, 0x20u);
    }
  }

  v9 = sub_100025204(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    v12 = [v5 count];
    *buf = 138543874;
    v43 = v10;
    v44 = 2114;
    v45 = v11;
    v46 = 2048;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: discovered %lu connected devices", buf, 0x20u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v34 = v7;
    v16 = 0;
    v17 = *v37;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v13);
        }

        audioStreamState = [*(*(&v36 + 1) + 8 * i) audioStreamState];
        if ((audioStreamState & 0xFFFFFFFE) == 2)
        {
          v20 = audioStreamState;
          v21 = sub_100025204(audioStreamState);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [objc_opt_class() description];
            v23 = NSStringFromSelector(a2);
            v24 = v23;
            *buf = 138543874;
            v25 = "A2DP";
            if (v20 == 3)
            {
              v25 = "SCO";
            }

            v43 = v22;
            v44 = 2114;
            v45 = v23;
            v46 = 2080;
            v47 = v25;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: found a device streaming audio with %s", buf, 0x20u);
          }

          v16 = 1;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v15);

    v7 = v34;
    if (v16)
    {
      v27 = 1;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v28 = sub_100025204(v26);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [objc_opt_class() description];
    v30 = NSStringFromSelector(a2);
    *buf = 138543618;
    v43 = v29;
    v44 = 2114;
    v45 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no devices streaming audio", buf, 0x16u);
  }

  v27 = 0;
LABEL_28:

  return v27;
}

- (BOOL)bluetoothAudioStreamingActive
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (!objc_opt_class())
  {
    selfCopy = sub_100025204(0);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10002940C();
    }

    goto LABEL_17;
  }

  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  if (selfCopy->_btDiscoveryInProgress)
  {
    v17 = sub_100025204(v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1000293C0();
    }

    goto LABEL_16;
  }

  v6 = dispatch_semaphore_create(0);
  if (!v6)
  {
    v17 = sub_100025204(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029374();
    }

LABEL_16:

    objc_sync_exit(selfCopy);
LABEL_17:
    v14 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  selfCopy->_btDiscoveryInProgress = 1;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000068BC;
  block[3] = &unk_10005C7A0;
  block[4] = selfCopy;
  v26 = &v27;
  v9 = v7;
  v25 = v9;
  dispatch_async(v8, block);

  objc_sync_exit(selfCopy);
  v10 = dispatch_time(0, 1000000000);
  v11 = dispatch_semaphore_wait(v9, v10);
  if (v11)
  {
    v20 = sub_100025204(v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1000292DC();
    }

    v14 = 0;
  }

  else
  {
    v12 = selfCopy;
    v13 = objc_sync_enter(v12);
    if (selfCopy->_btDiscoveryInProgress)
    {
      v22 = sub_100025204(v13);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029328();
      }

      v14 = 0;
    }

    else
    {
      v14 = *(v28 + 24);
    }

    objc_sync_exit(v12);
  }

  selfCopy = v9;
LABEL_9:

  _Block_object_dispose(&v27, 8);
  return v14 & 1;
}

- (void)reportEvaluationOutcome:(id)outcome reason:(id)reason newAssetVersions:(id)versions previousAssetVersions:(id)assetVersions
{
  outcomeCopy = outcome;
  reasonCopy = reason;
  versionsCopy = versions;
  assetVersionsCopy = assetVersions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [versionsCopy componentsJoinedByString:@""];;
  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 dictionaryForKey:@"PowerTableValidationAttempts"];

  v16 = [v15 objectForKeyedSubscript:v13];
  unsignedIntegerValue = [v16 unsignedIntegerValue];
  LODWORD(reason) = [outcomeCopy isEqualToString:@"Aborted"];
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = v18;
  if (reason)
  {
    v24 = v13;
    v20 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
    v25 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v19 setObject:v21 forKey:@"PowerTableValidationAttempts"];
  }

  else
  {
    [v18 removeObjectForKey:@"PowerTableValidationAttempts"];
  }

  if (WeakRetained)
  {
    [WeakRetained reportNewPowerTableEvaluationOutcome:outcomeCopy reason:reasonCopy attempts:unsignedIntegerValue + 1 newAssetVersions:versionsCopy previousAssetVersions:assetVersionsCopy];
  }
}

+ (BOOL)assetSupportedOnCurrentBuild:(id)build
{
  buildCopy = build;
  v6 = +[SUCoreDevice sharedDevice];
  productVersion = [v6 productVersion];

  v9 = productVersion;
  if (!productVersion)
  {
    v33 = sub_100025204(v8);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000294F8();
    }

    goto LABEL_23;
  }

  v10 = [self restoreVersionFromOSVersion:productVersion];
  if (!v10)
  {
    v33 = sub_100025204(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      v41 = v33;
      v43 = v42 = productVersion;
      v44 = NSStringFromSelector(a2);
      *buf = 138543874;
      v65 = v43;
      v66 = 2114;
      v67 = v44;
      v68 = 2114;
      v69 = v42;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid current OS: %{public}@", buf, 0x20u);

      v9 = v42;
      v33 = v41;
    }

LABEL_23:
    v30 = 0;
    v26 = 0;
    lastSupportedBuild = 0;
    firstSupportedBuild = 0;
    v16 = 0;
    v13 = 0;
    v63 = 0;
LABEL_44:

    v37 = 0;
    goto LABEL_18;
  }

  v11 = v10;
  firstSupportedOS = [buildCopy firstSupportedOS];
  v13 = [self restoreVersionFromOSVersion:firstSupportedOS];

  v63 = v11;
  if (!v13)
  {
    v33 = sub_100025204(v14);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v45 = [objc_opt_class() description];
      v46 = NSStringFromSelector(a2);
      firstSupportedOS2 = [buildCopy firstSupportedOS];
      *buf = 138543874;
      v65 = v45;
      v66 = 2114;
      v67 = v46;
      v68 = 2114;
      v69 = firstSupportedOS2;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid firstSupportedOS: %{public}@", buf, 0x20u);
    }

    v30 = 0;
    v26 = 0;
    lastSupportedBuild = 0;
    firstSupportedBuild = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_44;
  }

  lastSupportedOS = [buildCopy lastSupportedOS];
  v16 = [self restoreVersionFromOSVersion:lastSupportedOS];

  if (!v16)
  {
    v33 = sub_100025204(v17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v48 = [objc_opt_class() description];
      v49 = NSStringFromSelector(a2);
      lastSupportedOS2 = [buildCopy lastSupportedOS];
      *buf = 138543874;
      v65 = v48;
      v66 = 2114;
      v67 = v49;
      v68 = 2114;
      v69 = lastSupportedOS2;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid lastSupportedOS: %{public}@", buf, 0x20u);
    }

    v30 = 0;
    v26 = 0;
    lastSupportedBuild = 0;
    firstSupportedBuild = 0;
    v16 = 0;
    goto LABEL_44;
  }

  v18 = [self build:v11 inRangeStarting:v13 ending:v16];
  if ((v18 & 1) == 0)
  {
    v33 = sub_100025204(v18);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [objc_opt_class() description];
      v40 = NSStringFromSelector(a2);
      *buf = 138543618;
      v65 = v39;
      v66 = 2114;
      v67 = v40;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: out of OS range", buf, 0x16u);
    }

    goto LABEL_34;
  }

  firstSupportedBuild = [buildCopy firstSupportedBuild];
  if (!firstSupportedBuild)
  {
    v30 = 0;
    v26 = 0;
    lastSupportedBuild = 0;
    goto LABEL_17;
  }

  lastSupportedBuild = [buildCopy lastSupportedBuild];

  if (!lastSupportedBuild)
  {
    v30 = 0;
    v26 = 0;
    firstSupportedBuild = 0;
    goto LABEL_17;
  }

  v21 = +[SUCoreDevice sharedDevice];
  firstSupportedBuild = [v21 restoreVersion];

  if (!firstSupportedBuild)
  {
    v33 = sub_100025204(v22);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100029458();
    }

LABEL_34:
    v30 = 0;
    v26 = 0;
    lastSupportedBuild = 0;
    firstSupportedBuild = 0;
    goto LABEL_44;
  }

  v62 = v9;
  v23 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:firstSupportedBuild];
  if (!v23)
  {
    v33 = sub_100025204(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v51 = [objc_opt_class() description];
      v52 = NSStringFromSelector(a2);
      *buf = 138543874;
      v65 = v51;
      v66 = 2114;
      v67 = v52;
      v68 = 2114;
      v69 = firstSupportedBuild;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid current build: %{public}@", buf, 0x20u);
    }

    v30 = 0;
    v26 = 0;
    lastSupportedBuild = 0;
    goto LABEL_44;
  }

  lastSupportedBuild = v23;
  aSelector = a2;
  v24 = [SUCoreRestoreVersion alloc];
  firstSupportedBuild2 = [buildCopy firstSupportedBuild];
  v26 = [v24 initWithRestoreVersion:firstSupportedBuild2];

  if (!v26)
  {
    v33 = sub_100025204(v27);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      v54 = v53 = v33;
      v55 = NSStringFromSelector(aSelector);
      firstSupportedBuild3 = [buildCopy firstSupportedBuild];
      *buf = 138543874;
      v65 = v54;
      v66 = 2114;
      v67 = v55;
      v68 = 2114;
      v69 = firstSupportedBuild3;
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid firstSupportedBuild: %{public}@", buf, 0x20u);

      v33 = v53;
    }

    v30 = 0;
    v26 = 0;
    goto LABEL_44;
  }

  v28 = [SUCoreRestoreVersion alloc];
  lastSupportedBuild2 = [buildCopy lastSupportedBuild];
  v30 = [v28 initWithRestoreVersion:lastSupportedBuild2];

  if (!v30)
  {
    v33 = sub_100025204(v31);
    v9 = v62;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      v58 = v57 = v33;
      v59 = NSStringFromSelector(aSelector);
      lastSupportedBuild3 = [buildCopy lastSupportedBuild];
      *buf = 138543874;
      v65 = v58;
      v66 = 2114;
      v67 = v59;
      v68 = 2114;
      v69 = lastSupportedBuild3;
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid lastSupportedBuild: %{public}@", buf, 0x20u);

      v9 = v62;
      v33 = v57;
    }

    v30 = 0;
    goto LABEL_44;
  }

  v32 = [self build:lastSupportedBuild inRangeStarting:v26 ending:v30];
  v9 = v62;
  if ((v32 & 1) == 0)
  {
    v33 = sub_100025204(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      [objc_opt_class() description];
      v35 = v34 = v33;
      v36 = NSStringFromSelector(aSelector);
      *buf = 138543618;
      v65 = v35;
      v66 = 2114;
      v67 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: out of specific build range", buf, 0x16u);

      v9 = v62;
      v33 = v34;
    }

    goto LABEL_44;
  }

LABEL_17:
  v37 = 1;
LABEL_18:

  return v37;
}

+ (BOOL)build:(id)build inRangeStarting:(id)starting ending:(id)ending
{
  buildCopy = build;
  startingCopy = starting;
  endingCopy = ending;
  v11 = [buildCopy isComparable:startingCopy];
  if ((v11 & 1) == 0)
  {
    v14 = sub_100025204(v11);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v23 = [objc_opt_class() description];
    v24 = NSStringFromSelector(a2);
    summary = [buildCopy summary];
    summary2 = [startingCopy summary];
    v30 = 138544130;
    v31 = v23;
    v32 = 2114;
    v33 = v24;
    v34 = 2114;
    v35 = summary;
    v36 = 2114;
    v37 = summary2;
    v27 = "%{public}@::%{public}@: %{public}@ not comparible with range start %{public}@";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v27, &v30, 0x2Au);
LABEL_19:

    goto LABEL_20;
  }

  v12 = [buildCopy isComparable:endingCopy];
  if ((v12 & 1) == 0)
  {
    v14 = sub_100025204(v12);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v23 = [objc_opt_class() description];
    v24 = NSStringFromSelector(a2);
    summary = [buildCopy summary];
    summary2 = [endingCopy summary];
    v30 = 138544130;
    v31 = v23;
    v32 = 2114;
    v33 = v24;
    v34 = 2114;
    v35 = summary;
    v36 = 2114;
    v37 = summary2;
    v27 = "%{public}@::%{public}@: %{public}@ not comparible with range end %{public}@";
    goto LABEL_13;
  }

  if ([buildCopy compare:startingCopy] == -1)
  {
    v14 = sub_100025204(-1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [objc_opt_class() description];
      v24 = NSStringFromSelector(a2);
      summary = [buildCopy summary];
      summary2 = [startingCopy summary];
      summary3 = [endingCopy summary];
      v30 = 138544386;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = summary;
      v36 = 2114;
      v37 = summary2;
      v38 = 2114;
      v39 = summary3;
      v29 = "%{public}@::%{public}@: %{public}@ older than range [%{public}@, %{public}@]";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v29, &v30, 0x34u);

      goto LABEL_19;
    }

LABEL_20:
    v21 = 0;
    goto LABEL_8;
  }

  v13 = [buildCopy compare:endingCopy];
  v14 = sub_100025204(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v15)
    {
      v23 = [objc_opt_class() description];
      v24 = NSStringFromSelector(a2);
      summary = [buildCopy summary];
      summary2 = [startingCopy summary];
      summary3 = [endingCopy summary];
      v30 = 138544386;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = summary;
      v36 = 2114;
      v37 = summary2;
      v38 = 2114;
      v39 = summary3;
      v29 = "%{public}@::%{public}@: %{public}@ newer than range [%{public}@, %{public}@]";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v15)
  {
    v16 = [objc_opt_class() description];
    v17 = NSStringFromSelector(a2);
    summary4 = [buildCopy summary];
    summary5 = [startingCopy summary];
    summary6 = [endingCopy summary];
    v30 = 138544386;
    v31 = v16;
    v32 = 2114;
    v33 = v17;
    v34 = 2114;
    v35 = summary4;
    v36 = 2114;
    v37 = summary5;
    v38 = 2114;
    v39 = summary6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@ in range [%{public}@, %{public}@]", &v30, 0x34u);
  }

  v21 = 1;
LABEL_8:

  return v21;
}

+ (id)restoreVersionFromOSVersion:(id)version
{
  versionCopy = version;
  if (![versionCopy length])
  {
    sub_100029750(self);
LABEL_14:
    v13 = 0;
    v12 = 0;
    v7 = 0;
    v6 = 0;
LABEL_16:
    v14 = 0;
    goto LABEL_11;
  }

  if ([versionCopy containsString:{@", "}])
  {
    sub_100029690(self);
    goto LABEL_14;
  }

  v6 = [versionCopy componentsSeparatedByString:@"."];
  if ([v6 count] >= 6)
  {
    sub_100029598(self, a2);
    v13 = 0;
    v12 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v7 = [NSMutableArray arrayWithCapacity:5];
  for (i = 0; i != 5; ++i)
  {
    if (i >= [v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", i), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", &stru_10005D038), v9, (v10 & 1) != 0))
    {
      [v7 addObject:@"0"];
    }

    else
    {
      v11 = [v6 objectAtIndexedSubscript:i];
      [v7 addObject:v11];
    }
  }

  v12 = [v7 componentsJoinedByString:@"."];
  v13 = [NSString stringWithFormat:@"%@, 0", v12];
  v14 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v13];
LABEL_11:
  v15 = v14;

  return v14;
}

+ (int64_t)assetCheckTaskInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"PowerTableAssetCheckTaskInterval"];

  v6 = sub_100025204(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v7)
    {
      v4 = 3600;
      goto LABEL_8;
    }

    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v4 = 3600;
    v17 = 3600;
    v10 = "%{public}@::%{public}@: defaulting to %ld seconds";
    goto LABEL_6;
  }

  if (v7)
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = v4;
    v10 = "%{public}@::%{public}@: overriding to %ld seconds";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x20u);
  }

LABEL_8:

  return v4;
}

+ (id)newPowerTableResultAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"NoNewPowerTablesAvailable";
  }

  else
  {
    return *(&off_10005C7E8 + string - 1);
  }
}

- (void)runBackgroundTaskWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (identifier == @"com.apple.centaurid.PowerTableAssetCheck")
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100007C8C;
    v8[3] = &unk_10005C7C8;
    v9 = completionCopy;
    [(PowerTableManager *)self checkForNewPowerTablesWithCompletion:v8];
  }
}

- (int64_t)performChipLevelValidationForPowerTableEvaluationSession:(id)session reason:(id *)reason
{
  sessionCopy = session;
  if (([sessionCopy isEqual:self->_evaluationSession] & 1) == 0)
  {
    sub_100029810(self);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    v17 = sub_100025204(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }

    *reason = @"noDelegate";
    goto LABEL_16;
  }

  v32 = 0;
  v10 = [WeakRetained readyForNewPowerTableValidationWithReason:&v32];
  v11 = v32;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    v18 = sub_100025204(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [objc_opt_class() description];
      v20 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v19;
      v35 = 2114;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: delegate not ready", buf, 0x16u);
    }

    *reason = @"chipLevelNotReady";
    if (!v12)
    {
      goto LABEL_16;
    }

    *reason = [@"chipLevelNotReady" stringByAppendingFormat:@":%@", v12];
LABEL_15:

LABEL_16:
    v21 = 2;
    goto LABEL_17;
  }

  bluetoothAudioStreamingActive = [(PowerTableManager *)self bluetoothAudioStreamingActive];
  if (bluetoothAudioStreamingActive)
  {
    v14 = sub_100025204(bluetoothAudioStreamingActive);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [objc_opt_class() description];
      v16 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v15;
      v35 = 2114;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: bailing due to active audio streaming", buf, 0x16u);
    }

    *reason = @"btAudioStreaming";
    goto LABEL_15;
  }

  v31 = v12;
  v23 = [v9 validateNewPowerTables:&v31];
  v24 = v31;

  v26 = sub_100025204(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [objc_opt_class() description];
    v28 = NSStringFromSelector(a2);
    v29 = v28;
    v30 = @"failed";
    *buf = 138543874;
    v34 = v27;
    if (v23)
    {
      v30 = @"passed";
    }

    v35 = 2114;
    v36 = v28;
    v37 = 2112;
    v38 = v30;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: validation %@", buf, 0x20u);
  }

  if ((v23 & 1) == 0)
  {
    *reason = @"chipLevelFailed";
    if (v24)
    {
      *reason = [@"chipLevelFailed" stringByAppendingFormat:@":%@", v24];
    }
  }

  v21 = v23 ^ 1;

LABEL_17:
  return v21;
}

- (void)powerTableEvaluationSessionWillEnd:(id)end state:(int64_t)state reason:(id)reason
{
  endCopy = end;
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [endCopy isEqual:self->_evaluationSession];
  if (v11)
  {
    switch(state)
    {
      case 4:
        v25 = [(NSArray *)self->_assetStores count];
        if (v25)
        {
          for (i = 0; i < v25; ++i)
          {
            v27 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:i];
            stagedAsset = [v27 stagedAsset];

            if (stagedAsset)
            {
              v29 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:i];
              v30 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:i];
              stagedAsset2 = [v30 stagedAsset];
              [v29 rejectStagedAsset:stagedAsset2];
            }

            v25 = [(NSArray *)self->_assetStores count];
          }
        }

        if (WeakRetained)
        {
          [WeakRetained reloadPowerTables];
        }

        else
        {
          v32 = sub_100025204(v25);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000298B8();
          }
        }

        v13 = @"Rejected";
        goto LABEL_30;
      case 5:
        if ([(NSArray *)self->_assetStores count])
        {
          v19 = 0;
          v13 = @"Accepted";
          do
          {
            v20 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v19];
            stagedAsset3 = [v20 stagedAsset];

            if (stagedAsset3)
            {
              v22 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v19];
              v23 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v19];
              stagedAsset4 = [v23 stagedAsset];
              [v22 commitStagedAsset:stagedAsset4];
            }

            ++v19;
          }

          while (v19 < [(NSArray *)self->_assetStores count]);
        }

        else
        {
          v13 = @"Accepted";
        }

        goto LABEL_30;
      case 6:
        if ([(NSArray *)self->_assetStores count])
        {
          v12 = 0;
          v13 = @"Aborted";
          do
          {
            v14 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v12];
            stagedAsset5 = [v14 stagedAsset];

            if (stagedAsset5)
            {
              v16 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v12];
              v17 = [(NSArray *)self->_assetStores objectAtIndexedSubscript:v12];
              stagedAsset6 = [v17 stagedAsset];
              [v16 unstageStagedAsset:stagedAsset6];
            }

            ++v12;
          }

          while (v12 < [(NSArray *)self->_assetStores count]);
        }

        else
        {
          v13 = @"Aborted";
        }

LABEL_30:
        assetVersionsUnderEvaluation = [endCopy assetVersionsUnderEvaluation];
        previousKnownGoodAssetVersions = [endCopy previousKnownGoodAssetVersions];
        [(PowerTableManager *)self reportEvaluationOutcome:v13 reason:reasonCopy newAssetVersions:assetVersionsUnderEvaluation previousAssetVersions:previousKnownGoodAssetVersions];

        return;
    }
  }

  else
  {
    sub_100029810(self);
  }

  v35 = sub_100025204(v11);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_100028EEC();
  }

  v36 = abort_report_np("assertion failure: NO -- invalid state");
  [(PowerTableManager *)v36 powerTableEvaluationSessionDidEnd:v37 state:v38, v39];
}

- (void)powerTableEvaluationSessionDidEnd:(id)end state:(int64_t)state
{
  endCopy = end;
  if (([endCopy isEqual:self->_evaluationSession] & 1) == 0)
  {
    sub_100029810(self);
    goto LABEL_8;
  }

  clientCompletionForNewPowerTableCheck = self->_clientCompletionForNewPowerTableCheck;
  if (!clientCompletionForNewPowerTableCheck)
  {
LABEL_8:
    sub_100029958(self);
    goto LABEL_9;
  }

  if ((state - 4) < 3)
  {
    clientCompletionForNewPowerTableCheck[2](clientCompletionForNewPowerTableCheck, qword_100036458[state - 4]);
    evaluationSession = self->_evaluationSession;
    self->_evaluationSession = 0;

    v8 = self->_clientCompletionForNewPowerTableCheck;
    self->_clientCompletionForNewPowerTableCheck = 0;

    [(PowerTableManager *)self log];

    return;
  }

LABEL_9:
  v9 = sub_100025204(clientCompletionForNewPowerTableCheck);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100028EEC();
  }

  v10 = abort_report_np("assertion failure: NO -- invalid state");
  [(PowerTableManager *)v10 .cxx_destruct];
}

@end