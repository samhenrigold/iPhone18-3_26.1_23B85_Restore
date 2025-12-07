@interface DDSAnalytics
+ (BOOL)isInteger:(id)integer;
+ (id)assetDownloadDurationBuckets;
+ (id)roundNumber:(id)number toSignificantDigits:(id)digits;
+ (id)sharedInstance;
- (DDSAnalytics)init;
- (id)bucketForValue:(id)value fromBuckets:(id)buckets;
- (id)dumpAssetLogWithAssertions:(id)assertions installedAssets:(id)assets;
- (id)processName;
- (id)stringForAction:(int)action;
- (void)cancelRecordingForAsset:(id)asset;
- (void)recordAssetAction:(int)action forAsset:(id)asset;
- (void)reportAssetDownloadAnalytic:(id)analytic;
- (void)reportUpdateCycleAnalytic:(id)analytic;
@end

@implementation DDSAnalytics

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[DDSAnalytics sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__DDSAnalytics_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(DDSAnalytics);

  return MEMORY[0x1EEE66BB8]();
}

- (DDSAnalytics)init
{
  v9.receiver = self;
  v9.super_class = DDSAnalytics;
  v2 = [(DDSAnalytics *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    analyticByIdentifier = v2->_analyticByIdentifier;
    v2->_analyticByIdentifier = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.DataDeliveryServices.DDSAnalytics", v5);
    analyticQueue = v2->_analyticQueue;
    v2->_analyticQueue = v6;
  }

  return v2;
}

- (void)cancelRecordingForAsset:(id)asset
{
  v13 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = DefaultLog(assetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [assetCopy uniqueIdentifier];
    *buf = 138412290;
    v12 = uniqueIdentifier;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Cancel recording asset analytic for %@", buf, 0xCu);
  }

  analyticQueue = [(DDSAnalytics *)self analyticQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__DDSAnalytics_cancelRecordingForAsset___block_invoke;
  v9[3] = &unk_1E86C5C70;
  v9[4] = self;
  v10 = assetCopy;
  v8 = assetCopy;
  dispatch_sync(analyticQueue, v9);
}

void __40__DDSAnalytics_cancelRecordingForAsset___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) analyticByIdentifier];
  v2 = [*(a1 + 40) uniqueIdentifier];
  [v3 removeObjectForKey:v2];
}

- (void)recordAssetAction:(int)action forAsset:(id)asset
{
  v4 = *&action;
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v7 = DefaultLog(assetCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(DDSAnalytics *)self stringForAction:v4];
    uniqueIdentifier = [assetCopy uniqueIdentifier];
    *buf = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = uniqueIdentifier;
    _os_log_debug_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEBUG, "Record asset action: %{public}@ for %{public}@", buf, 0x16u);
  }

  analyticQueue = [(DDSAnalytics *)self analyticQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__DDSAnalytics_recordAssetAction_forAsset___block_invoke;
  block[3] = &unk_1E86C62A0;
  block[4] = self;
  v13 = assetCopy;
  v14 = v4;
  v9 = assetCopy;
  dispatch_sync(analyticQueue, block);
}

void __43__DDSAnalytics_recordAssetAction_forAsset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticByIdentifier];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v6 = [v2 objectForKey:v3];

  if (!v6)
  {
    v6 = [[DDSAssetDownloadAnalytic alloc] initWithAsset:*(a1 + 40)];
    v4 = [*(a1 + 32) analyticByIdentifier];
    v5 = [*(a1 + 40) uniqueIdentifier];
    [v4 setObject:v6 forKey:v5];
  }

  [(DDSTimedAnalytic *)v6 updateWithAction:*(a1 + 48)];
  if ((*(a1 + 48) - 3) <= 1)
  {
    [*(a1 + 32) reportAssetDownloadAnalytic:v6];
  }
}

- (void)reportAssetDownloadAnalytic:(id)analytic
{
  analyticCopy = analytic;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(analyticCopy, "durationInSec")}];
  assetDownloadDurationBuckets = [objc_opt_class() assetDownloadDurationBuckets];
  v8 = [(DDSAnalytics *)self bucketForValue:v6 fromBuckets:assetDownloadDurationBuckets];

  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(analyticCopy, "durationInSec")}];
  v11 = [v9 roundNumber:v10 toSignificantDigits:&unk_1F5AC5A48];

  [v5 setObject:v11 forKey:@"aggDuration"];
  [v5 setObject:v8 forKey:@"duration"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(analyticCopy, "success")}];
  [v5 setObject:v12 forKey:@"success"];

  v13 = MEMORY[0x1E696AD98];
  asset = [analyticCopy asset];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(asset, "compatibilityVersion")}];
  [v5 setObject:v15 forKey:@"compatibilityVersion"];

  v16 = MEMORY[0x1E696AD98];
  asset2 = [analyticCopy asset];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(asset2, "contentVersion")}];
  [v5 setObject:v18 forKey:@"contentVersion"];

  asset3 = [analyticCopy asset];
  uniqueIdentifier = [asset3 uniqueIdentifier];
  [v5 setObject:uniqueIdentifier forKey:@"assetName"];

  processName = [(DDSAnalytics *)self processName];
  [v5 setObject:processName forKey:@"process"];

  v23 = DefaultLog(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [(DDSAnalytics *)v5 reportAssetDownloadAnalytic:v23];
  }

  v24 = [@"com.apple.keyboard.dataDeliveryServices." stringByAppendingString:@"assetDownload"];
  v28 = v5;
  v25 = v5;
  AnalyticsSendEventLazy();

  analyticByIdentifier = [(DDSAnalytics *)self analyticByIdentifier];
  identifier = [analyticCopy identifier];
  [analyticByIdentifier removeObjectForKey:identifier];
}

- (void)reportUpdateCycleAnalytic:(id)analytic
{
  analyticCopy = analytic;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(analyticCopy, "durationInSec")}];
  [v5 setObject:v6 forKey:@"duration"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(analyticCopy, "retries")}];
  [v5 setObject:v7 forKey:@"retries"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(analyticCopy, "success")}];
  [v5 setObject:v8 forKey:@"success"];

  processName = [(DDSAnalytics *)self processName];
  [v5 setObject:processName forKey:@"process"];

  v11 = DefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(DDSAnalytics *)v5 reportUpdateCycleAnalytic:v11];
  }

  v12 = [@"com.apple.keyboard.dataDeliveryServices." stringByAppendingString:@"updateCycle"];
  v16 = v5;
  v13 = v5;
  AnalyticsSendEventLazy();

  analyticByIdentifier = [(DDSAnalytics *)self analyticByIdentifier];
  identifier = [analyticCopy identifier];
  [analyticByIdentifier removeObjectForKey:identifier];
}

- (id)dumpAssetLogWithAssertions:(id)assertions installedAssets:(id)assets
{
  v38 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  assetsCopy = assets;
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n"];
  if (DDS_IS_INTERNAL_INSTALL(v8, v9))
  {
    selfCopy = self;
    [v8 appendString:@"***********\n"];
    [v8 appendString:@"Assertions:\n"];
    [v8 appendString:@"***********\n"];
    [v8 appendString:@"***********************************"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = assertionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dumpDescription = [*(*(&v32 + 1) + 8 * i) dumpDescription];
          [v8 appendFormat:@"\n%@\n", dumpDescription];

          [v8 appendString:@"***********************************\n"];
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }

    [v8 appendString:@"\n\n"];
    [v8 appendString:@"*******************\n"];
    [v8 appendString:@"Installed Assets:\n"];
    [v8 appendString:@"*******************\n"];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = assetsCopy;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * j);
          debuggingID = [v21 debuggingID];
          [v8 appendFormat:@"\n%@ (%lu)", debuggingID, objc_msgSend(v21, "contentVersion")];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v18);
    }

    [v8 appendString:@"\n\n"];
    [v8 appendString:@"************\n"];
    [v8 appendString:@"In Progress:\n"];
    [v8 appendString:@"************\n"];
    analyticByIdentifier = [(DDSAnalytics *)selfCopy analyticByIdentifier];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __59__DDSAnalytics_dumpAssetLogWithAssertions_installedAssets___block_invoke;
    v26[3] = &unk_1E86C62F0;
    v26[4] = selfCopy;
    v27 = v8;
    [analyticByIdentifier enumerateKeysAndObjectsUsingBlock:v26];
  }

  return v8;
}

void __59__DDSAnalytics_dumpAssetLogWithAssertions_installedAssets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v11 asset];
    v6 = [v5 debuggingID];

    v4 = v6;
  }

  v7 = objc_alloc(MEMORY[0x1E695DF00]);
  [v11 startTime];
  v8 = [v7 initWithTimeIntervalSince1970:?];
  v9 = DDS_STRING_FROM_DATE(v8);
  v10 = [*(a1 + 32) stringForAction:{objc_msgSend(v11, "lastAction")}];
  [*(a1 + 40) appendFormat:@"\n%@, (start: %@, state: %@ retries: %lu)", v4, v9, v10, objc_msgSend(v11, "retries")];
}

+ (id)assetDownloadDurationBuckets
{
  if (assetDownloadDurationBuckets_onceToken != -1)
  {
    +[DDSAnalytics assetDownloadDurationBuckets];
  }

  v3 = assetDownloadDurationBuckets_sharedAssetDownloadDurationBuckets;

  return v3;
}

void __44__DDSAnalytics_assetDownloadDurationBuckets__block_invoke()
{
  v0 = assetDownloadDurationBuckets_sharedAssetDownloadDurationBuckets;
  assetDownloadDurationBuckets_sharedAssetDownloadDurationBuckets = &unk_1F5AC5AC0;
}

- (id)bucketForValue:(id)value fromBuckets:(id)buckets
{
  valueCopy = value;
  bucketsCopy = buckets;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__DDSAnalytics_bucketForValue_fromBuckets___block_invoke;
  v10[3] = &unk_1E86C6318;
  v12 = &v13;
  v7 = valueCopy;
  v11 = v7;
  [bucketsCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __43__DDSAnalytics_bucketForValue_fromBuckets___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = a2;
  v8 = [*(a1 + 32) compare:*(*(*(a1 + 40) + 8) + 40)];

  *a4 = v8 != 1;
}

+ (id)roundNumber:(id)number toSignificantDigits:(id)digits
{
  numberCopy = number;
  digitsCopy = digits;
  if (!digitsCopy)
  {
    v11 = numberCopy;
    goto LABEL_11;
  }

  v7 = [objc_opt_class() isInteger:numberCopy];
  [numberCopy doubleValue];
  if (v8 == 0.0)
  {
    v9 = MEMORY[0x1E696AD98];
    if (v7)
    {
      v10 = 0;
LABEL_8:
      v11 = [v9 numberWithInt:v10];
      goto LABEL_11;
    }

    v16 = 0.0;
  }

  else
  {
    v12 = v8;
    intValue = [digitsCopy intValue];
    v14 = log10(fabs(v12));
    v15 = __exp10((intValue - vcvtpd_s64_f64(v14)));
    v16 = round(v12 * v15) / v15;
    v9 = MEMORY[0x1E696AD98];
    if (v7)
    {
      v10 = v16;
      goto LABEL_8;
    }
  }

  v11 = [v9 numberWithDouble:v16];
LABEL_11:
  v17 = v11;

  return v17;
}

+ (BOOL)isInteger:(id)integer
{
  integerCopy = integer;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v4 = CFGetTypeID(integerCopy), v4 != CFBooleanGetTypeID()) && memchr("BcsilqCSILQ", *[integerCopy objCType], 0xCuLL) != 0;

  return v5;
}

- (id)processName
{
  if (processName_onceToken != -1)
  {
    [DDSAnalytics processName];
  }

  v3 = processName_processName;

  return v3;
}

void __27__DDSAnalytics_processName__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 processName];
  v1 = processName_processName;
  processName_processName = v0;
}

- (id)stringForAction:(int)action
{
  if (action > 4)
  {
    return 0;
  }

  else
  {
    return off_1E86C6338[action];
  }
}

- (void)reportAssetDownloadAnalytic:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Report asset download analytic: %{public}@", &v2, 0xCu);
}

- (void)reportUpdateCycleAnalytic:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Report update catalog analytic: %{public}@", &v2, 0xCu);
}

@end