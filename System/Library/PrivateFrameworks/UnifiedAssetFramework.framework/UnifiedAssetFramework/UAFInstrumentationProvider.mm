@interface UAFInstrumentationProvider
+ (BOOL)_assetSetsComplete:(id)complete assetSetCompleteness:(id)completeness;
+ (BOOL)isSiriAnalyticsAvailable;
+ (id)_getAssetSpecifiersForSubscription:(id)subscription assetSetUsages:(id)usages;
+ (id)_getMADownloadErrors:(id)errors assetSetName:(id)name assetSetID:(id)d;
+ (id)getSerialQueue;
+ (void)_emitAssetDailyStatusEvent:(id)event entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type;
+ (void)_emitSubscriptionComplete:(id)complete subscriber:(id)subscriber user:(id)user assetSets:(id)sets;
+ (void)_emitSubscriptionCompleteForAssetSet:(id)set;
+ (void)logAvailableAssetDailyStatus;
+ (void)logDownloadTriggerEventWithLanguage:(id)language hasExistingAssets:(BOOL)assets retryCount:(unsigned int)count;
+ (void)logSiriSubscription:(id)subscription subscriber:(id)subscriber subscription:(id)a5 userId:(unsigned int)id locale:(id)locale mode:(unint64_t)mode unsubscribed:(BOOL)unsubscribed;
+ (void)logSubscriptionCompleteForSubscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user;
+ (void)logUAFAssetSetDailyStatus:(id)status entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type;
@end

@implementation UAFInstrumentationProvider

+ (id)getSerialQueue
{
  if (_MergedGlobals_16 != -1)
  {
    dispatch_once(&_MergedGlobals_16, &__block_literal_global_17);
  }

  v3 = qword_1ED7D1220;

  return v3;
}

void __44__UAFInstrumentationProvider_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFInstrumentationProvider.Serial", v2);
  v1 = qword_1ED7D1220;
  qword_1ED7D1220 = v0;
}

+ (void)logSiriSubscription:(id)subscription subscriber:(id)subscriber subscription:(id)a5 userId:(unsigned int)id locale:(id)locale mode:(unint64_t)mode unsubscribed:(BOOL)unsubscribed
{
  v11 = *&id;
  v39 = *MEMORY[0x1E69E9840];
  v15 = a5;
  localeCopy = locale;
  subscriberCopy = subscriber;
  subscriptionCopy = subscription;
  v19 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"Subscribed";
    *buf = 136315650;
    v34 = "+[UAFInstrumentationProvider logSiriSubscription:subscriber:subscription:userId:locale:mode:unsubscribed:]";
    if (unsubscribed)
    {
      v20 = @"Unsubscribed";
    }

    v35 = 1024;
    v36 = v11;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Writing Siri subscription state to AIR for user: %u. SubscriptionStatus: %{public}@", buf, 0x1Cu);
  }

  v21 = objc_opt_new();
  [v21 setObject:@"com.apple.siri" forKeyedSubscript:@"useCaseIdentifier"];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  [v21 setObject:v22 forKeyedSubscript:@"mode"];

  [v21 setObject:localeCopy forKeyedSubscript:@"locale"];
  [v21 setObject:subscriptionCopy forKeyedSubscript:@"subscriptionName"];

  [v21 setObject:subscriberCopy forKeyedSubscript:@"subscriberName"];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
  [v21 setObject:v23 forKeyedSubscript:@"userIdentifier"];

  if (unsubscribed)
  {
    v24 = &unk_1F3B73200;
  }

  else
  {
    v24 = &unk_1F3B73218;
  }

  [v21 setObject:v24 forKeyedSubscript:@"action"];
  [v21 setObject:&unk_1F3B73218 forKeyedSubscript:@"trigger"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v21 setObject:uUID forKeyedSubscript:@"batchIdentifier"];

  if (v15)
  {
    v26 = +[UAFConfigurationManager defaultManager];
    v32 = v15;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v28 = [v26 applySubscriptions:v27];

    allKeys = [v28 allKeys];
    [v21 setObject:allKeys forKeyedSubscript:@"assetSetIdentifiers"];

    v30 = [self _getAssetSpecifiersForSubscription:v15 assetSetUsages:v28];
    [v21 setObject:v30 forKeyedSubscript:@"resourceSpecifiers"];
  }

  [UAFAppleIntelligenceReporting recordEvent:v21];
  v31 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "+[UAFInstrumentationProvider logSiriSubscription:subscriber:subscription:userId:locale:mode:unsubscribed:]";
    _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Sent Siri subscription state to AIR", buf, 0xCu);
  }
}

+ (id)_getAssetSpecifiersForSubscription:(id)subscription assetSetUsages:(id)usages
{
  v35 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [usagesCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = +[UAFConfigurationManager defaultManager];
        v12 = [v11 getAssetSet:v10];

        v32 = v10;
        v13 = [usagesCopy objectForKeyedSubscript:v10];
        v33 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v15 = [UAFAutoAssetManager getSpecifiers:v12 assetSetUsages:v14 experiment:0];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v24;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(v16);
              }

              [v5 addObject:*(*(&v23 + 1) + 8 * j)];
            }

            v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v18);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (void)logUAFAssetSetDailyStatus:(id)status entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type
{
  v15 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  [self _emitAssetDailyStatusEvent:statusCopy entries:entries assetSetDailyStatusEventType:type];
  v9 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    assetSetIdentifier = [statusCopy assetSetIdentifier];
    v11 = 136315394;
    v12 = "+[UAFInstrumentationProvider logUAFAssetSetDailyStatus:entries:assetSetDailyStatusEventType:]";
    v13 = 2114;
    v14 = assetSetIdentifier;
    _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_INFO, "%s Emitted DailyStatusEvent message for asset set: %{public}@", &v11, 0x16u);
  }
}

+ (id)_getMADownloadErrors:(id)errors assetSetName:(id)name assetSetID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  nameCopy = name;
  dCopy = d;
  v10 = objc_opt_new();
  availableForUseError = [errorsCopy availableForUseError];

  if (!availableForUseError)
  {
    goto LABEL_11;
  }

  availableForUseError2 = [errorsCopy availableForUseError];
  domain = [availableForUseError2 domain];
  if (![domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    goto LABEL_9;
  }

  availableForUseError3 = [errorsCopy availableForUseError];
  if ([availableForUseError3 code] != 6107)
  {

LABEL_9:
    goto LABEL_10;
  }

  [errorsCopy availableForUseError];
  v15 = dCopy;
  v17 = v16 = nameCopy;
  userInfo = [v17 userInfo];

  nameCopy = v16;
  dCopy = v15;

  if (!userInfo)
  {
LABEL_10:
    v24 = MEMORY[0x1E696AD98];
    availableForUseError4 = [errorsCopy availableForUseError];
    v26 = [v24 numberWithLong:{objc_msgSend(availableForUseError4, "code")}];
    [v10 addObject:v26];

    goto LABEL_11;
  }

  availableForUseError5 = [errorsCopy availableForUseError];
  userInfo2 = [availableForUseError5 userInfo];
  v21 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v22 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v21, "code")}];
  [v10 addObject:v22];

  v23 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v47 = "+[UAFInstrumentationProvider _getMADownloadErrors:assetSetName:assetSetID:]";
    v48 = 1024;
    code = [v21 code];
    v50 = 2114;
    v51 = nameCopy;
    v52 = 2114;
    v53 = v15;
    _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s Underlying error: %u found while logging MA download error for asset set %{public}@ with ID: %{public}@:", buf, 0x26u);
  }

LABEL_11:
  newerVersionError = [errorsCopy newerVersionError];

  if (!newerVersionError)
  {
    goto LABEL_20;
  }

  if (!availableForUseError)
  {
LABEL_18:
    [errorsCopy newerVersionError];
    v38 = v37 = dCopy;
    userInfo3 = [v38 userInfo];
    newerVersionError2 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v40 = MEMORY[0x1E696AD98];
    code2 = [newerVersionError2 code];
    v42 = v40;
    dCopy = v37;
    domain2 = [v42 numberWithLong:code2];
    [v10 addObject:domain2];
    goto LABEL_19;
  }

  newerVersionError2 = [errorsCopy newerVersionError];
  domain2 = [newerVersionError2 domain];
  availableForUseError6 = [errorsCopy availableForUseError];
  domain3 = [availableForUseError6 domain];
  if (![domain2 isEqualToString:domain3])
  {

    goto LABEL_19;
  }

  v44 = dCopy;
  v45 = nameCopy;
  newerVersionError3 = [errorsCopy newerVersionError];
  code3 = [newerVersionError3 code];
  availableForUseError7 = [errorsCopy availableForUseError];
  if (code3 != [availableForUseError7 code])
  {
    newerVersionError4 = [errorsCopy newerVersionError];
    userInfo4 = [newerVersionError4 userInfo];

    dCopy = v44;
    nameCopy = v45;
    if (!userInfo4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  dCopy = v44;
  nameCopy = v45;
LABEL_19:

LABEL_20:

  return v10;
}

+ (void)logAvailableAssetDailyStatus
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[UAFInstrumentationProvider logAvailableAssetDailyStatus]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Logging asset daily status.", &v5, 0xCu);
  }

  [self _emitAssetDailyStatusEvent:0 entries:0 assetSetDailyStatusEventType:1];
  v4 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[UAFInstrumentationProvider logAvailableAssetDailyStatus]";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Emitted scheduled AvailableAssetDailyStatus message", &v5, 0xCu);
  }
}

+ (void)_emitAssetDailyStatusEvent:(id)event entries:(id)entries assetSetDailyStatusEventType:(unint64_t)type
{
  v48 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  entriesCopy = entries;
  v10 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "+[UAFInstrumentationProvider _emitAssetDailyStatusEvent:entries:assetSetDailyStatusEventType:]";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Using Biome for logging asset status", buf, 0xCu);
  }

  if (type != 3)
  {
    if (type == 1)
    {
      +[UAFBiomeInstrumenter logScheduledDailyAssetStatus];
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  assetSetIdentifier = [eventCopy assetSetIdentifier];
  v12 = [assetSetIdentifier isEqualToString:@"CAReportingAssetSet"];

  if (!v12)
  {
LABEL_15:
    v25 = objc_autoreleasePoolPush();
    v36 = 0;
    v26 = [eventCopy currentSetStatusSync:&v36];
    v27 = v36;
    if (v27)
    {
      v28 = UAFGetLogCategory(&UAFLogContextInstrumentation);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        assetSetIdentifier2 = [eventCopy assetSetIdentifier];
        *buf = 136315650;
        v42 = "+[UAFInstrumentationProvider _emitAssetDailyStatusEvent:entries:assetSetDailyStatusEventType:]";
        v43 = 2114;
        v44 = assetSetIdentifier2;
        v45 = 2114;
        v46 = v27;
        _os_log_debug_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEBUG, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v25);
    assetSetIdentifier3 = [eventCopy assetSetIdentifier];
    downloadedCatalogCachedAssetSetID = [v26 downloadedCatalogCachedAssetSetID];
    v31 = [self _getMADownloadErrors:v26 assetSetName:assetSetIdentifier3 assetSetID:downloadedCatalogCachedAssetSetID];

    downloadedCatalogCachedAssetSetID2 = [v26 downloadedCatalogCachedAssetSetID];
    +[UAFBiomeInstrumenter logAssetSetDownloadEvent:assetSetId:entries:errorCodes:fromPSUS:assetSetDailyStatusEventType:](UAFBiomeInstrumenter, "logAssetSetDownloadEvent:assetSetId:entries:errorCodes:fromPSUS:assetSetDailyStatusEventType:", eventCopy, downloadedCatalogCachedAssetSetID2, entriesCopy, v31, [v26 latestDownloadedAtomicInstanceFromPreSUStaging], type);

    if (type == 3)
    {
      assetSetIdentifier4 = [eventCopy assetSetIdentifier];
      [self _emitSubscriptionCompleteForAssetSet:assetSetIdentifier4];
    }

    goto LABEL_21;
  }

  v13 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = entriesCopy;
  v14 = entriesCopy;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        fullAssetSelector = [v19 fullAssetSelector];
        assetVersion = [fullAssetSelector assetVersion];
        fullAssetSelector2 = [v19 fullAssetSelector];
        assetSpecifier = [fullAssetSelector2 assetSpecifier];
        [v13 setObject:assetVersion forKeyedSubscript:assetSpecifier];
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v16);
  }

  assetSetIdentifier5 = [eventCopy assetSetIdentifier];
  [UAFCoreAnalyticsInstrumenter logUAFAssetSetState:assetSetIdentifier5 assetSpecifiersAndVersions:v13];

  entriesCopy = v35;
LABEL_21:
}

+ (BOOL)isSiriAnalyticsAvailable
{
  v2 = objc_opt_class();
  if (v2)
  {
    v2 = objc_opt_class();
    if (v2)
    {
      LOBYTE(v2) = objc_opt_class() != 0;
    }
  }

  return v2;
}

+ (void)logDownloadTriggerEventWithLanguage:(id)language hasExistingAssets:(BOOL)assets retryCount:(unsigned int)count
{
  v5 = *&count;
  assetsCopy = assets;
  v25 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([objc_opt_class() isSiriAnalyticsAvailable])
  {
    uppercaseString = [languageCopy uppercaseString];
    v9 = [uppercaseString stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LOCALE_%@", v9];

    v11 = v10;
    if (([v11 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"]& 1) != 0)
    {
      v12 = 0;
    }

    else if (([v11 isEqualToString:@"LOCALE_AR_AE"]& 1) != 0)
    {
      v12 = 1;
    }

    else if (([v11 isEqualToString:@"LOCALE_AR_SA"]& 1) != 0)
    {
      v12 = 2;
    }

    else if (([v11 isEqualToString:@"LOCALE_CA_ES"]& 1) != 0)
    {
      v12 = 3;
    }

    else if (([v11 isEqualToString:@"LOCALE_CS_CZ"]& 1) != 0)
    {
      v12 = 4;
    }

    else if (([v11 isEqualToString:@"LOCALE_DA_DK"]& 1) != 0)
    {
      v12 = 5;
    }

    else if (([v11 isEqualToString:@"LOCALE_DE_AT"]& 1) != 0)
    {
      v12 = 6;
    }

    else if (([v11 isEqualToString:@"LOCALE_DE_CH"]& 1) != 0)
    {
      v12 = 7;
    }

    else if (([v11 isEqualToString:@"LOCALE_DE_DE"]& 1) != 0)
    {
      v12 = 8;
    }

    else if (([v11 isEqualToString:@"LOCALE_EL_GR"]& 1) != 0)
    {
      v12 = 9;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_AE"]& 1) != 0)
    {
      v12 = 10;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_AU"]& 1) != 0)
    {
      v12 = 11;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_CA"]& 1) != 0)
    {
      v12 = 12;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_GB"]& 1) != 0)
    {
      v12 = 13;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_ID"]& 1) != 0)
    {
      v12 = 14;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_IE"]& 1) != 0)
    {
      v12 = 15;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_IN"]& 1) != 0)
    {
      v12 = 16;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_MY"]& 1) != 0)
    {
      v12 = 17;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_NZ"]& 1) != 0)
    {
      v12 = 18;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_PH"]& 1) != 0)
    {
      v12 = 19;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_SG"]& 1) != 0)
    {
      v12 = 20;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_SA"]& 1) != 0)
    {
      v12 = 21;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_US"]& 1) != 0)
    {
      v12 = 22;
    }

    else if (([v11 isEqualToString:@"LOCALE_EN_ZA"]& 1) != 0)
    {
      v12 = 23;
    }

    else if (([v11 isEqualToString:@"LOCALE_ES_CL"]& 1) != 0)
    {
      v12 = 24;
    }

    else if (([v11 isEqualToString:@"LOCALE_ES_CO"]& 1) != 0)
    {
      v12 = 25;
    }

    else if (([v11 isEqualToString:@"LOCALE_ES_ES"]& 1) != 0)
    {
      v12 = 26;
    }

    else if (([v11 isEqualToString:@"LOCALE_ES_MX"]& 1) != 0)
    {
      v12 = 27;
    }

    else if (([v11 isEqualToString:@"LOCALE_ES_US"]& 1) != 0)
    {
      v12 = 28;
    }

    else if (([v11 isEqualToString:@"LOCALE_FI_FI"]& 1) != 0)
    {
      v12 = 29;
    }

    else if (([v11 isEqualToString:@"LOCALE_FR_BE"]& 1) != 0)
    {
      v12 = 30;
    }

    else if (([v11 isEqualToString:@"LOCALE_FR_CA"]& 1) != 0)
    {
      v12 = 31;
    }

    else if (([v11 isEqualToString:@"LOCALE_FR_CH"]& 1) != 0)
    {
      v12 = 32;
    }

    else if (([v11 isEqualToString:@"LOCALE_FR_FR"]& 1) != 0)
    {
      v12 = 33;
    }

    else if (([v11 isEqualToString:@"LOCALE_HE_IL"]& 1) != 0)
    {
      v12 = 34;
    }

    else if (([v11 isEqualToString:@"LOCALE_HI_IN"]& 1) != 0)
    {
      v12 = 35;
    }

    else if (([v11 isEqualToString:@"LOCALE_HR_HR"]& 1) != 0)
    {
      v12 = 36;
    }

    else if (([v11 isEqualToString:@"LOCALE_HU_HU"]& 1) != 0)
    {
      v12 = 37;
    }

    else if (([v11 isEqualToString:@"LOCALE_ID_ID"]& 1) != 0)
    {
      v12 = 38;
    }

    else if (([v11 isEqualToString:@"LOCALE_IT_CH"]& 1) != 0)
    {
      v12 = 39;
    }

    else if (([v11 isEqualToString:@"LOCALE_IT_IT"]& 1) != 0)
    {
      v12 = 40;
    }

    else if (([v11 isEqualToString:@"LOCALE_JA_JP"]& 1) != 0)
    {
      v12 = 41;
    }

    else if (([v11 isEqualToString:@"LOCALE_KO_KR"]& 1) != 0)
    {
      v12 = 42;
    }

    else if (([v11 isEqualToString:@"LOCALE_MS_MY"]& 1) != 0)
    {
      v12 = 43;
    }

    else if (([v11 isEqualToString:@"LOCALE_NB_NO"]& 1) != 0)
    {
      v12 = 44;
    }

    else if (([v11 isEqualToString:@"LOCALE_NL_BE"]& 1) != 0)
    {
      v12 = 45;
    }

    else if (([v11 isEqualToString:@"LOCALE_NL_NL"]& 1) != 0)
    {
      v12 = 46;
    }

    else if (([v11 isEqualToString:@"LOCALE_PL_PL"]& 1) != 0)
    {
      v12 = 47;
    }

    else if (([v11 isEqualToString:@"LOCALE_PT_BR"]& 1) != 0)
    {
      v12 = 48;
    }

    else if (([v11 isEqualToString:@"LOCALE_PT_PT"]& 1) != 0)
    {
      v12 = 49;
    }

    else if (([v11 isEqualToString:@"LOCALE_RO_RO"]& 1) != 0)
    {
      v12 = 50;
    }

    else if (([v11 isEqualToString:@"LOCALE_RU_RU"]& 1) != 0)
    {
      v12 = 51;
    }

    else if (([v11 isEqualToString:@"LOCALE_SK_SK"]& 1) != 0)
    {
      v12 = 52;
    }

    else if (([v11 isEqualToString:@"LOCALE_SV_SE"]& 1) != 0)
    {
      v12 = 53;
    }

    else if (([v11 isEqualToString:@"LOCALE_TH_TH"]& 1) != 0)
    {
      v12 = 54;
    }

    else if (([v11 isEqualToString:@"LOCALE_TR_TR"]& 1) != 0)
    {
      v12 = 55;
    }

    else if (([v11 isEqualToString:@"LOCALE_UK_UA"]& 1) != 0)
    {
      v12 = 56;
    }

    else if (([v11 isEqualToString:@"LOCALE_VI_VN"]& 1) != 0)
    {
      v12 = 57;
    }

    else if (([v11 isEqualToString:@"LOCALE_WUU_CN"]& 1) != 0)
    {
      v12 = 58;
    }

    else if (([v11 isEqualToString:@"LOCALE_YUE_CN"]& 1) != 0)
    {
      v12 = 59;
    }

    else if (([v11 isEqualToString:@"LOCALE_ZH_CN"]& 1) != 0)
    {
      v12 = 60;
    }

    else if (([v11 isEqualToString:@"LOCALE_ZH_HK"]& 1) != 0)
    {
      v12 = 61;
    }

    else if ([v11 isEqualToString:@"LOCALE_ZH_TW"])
    {
      v12 = 62;
    }

    else
    {
      v12 = 0;
    }

    v13 = objc_alloc_init(MEMORY[0x1E69CF528]);
    [v13 setLocale:v12];
    [v13 setExistingAssets:assetsCopy];
    [v13 setRetryCount:v5];
    v14 = objc_alloc_init(MEMORY[0x1E69CF520]);
    [v14 setImmediateDownloadTriggered:v13];
    v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = "+[UAFInstrumentationProvider logDownloadTriggerEventWithLanguage:hasExistingAssets:retryCount:]";
      v19 = 2114;
      v20 = languageCopy;
      v21 = 1024;
      v22 = assetsCopy;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s #settings Emitting SADSchemaSADImmediateDownloadTriggered event: language=%{public}@ hasExistingAssets=%u retryCount=%d", buf, 0x22u);
    }

    mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
    [mEMORY[0x1E69CE1F0] emitMessage:v14];
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "+[UAFInstrumentationProvider logDownloadTriggerEventWithLanguage:hasExistingAssets:retryCount:]";
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Can't log download trigger event with language as this system doesn't support SiriAnalytics.", buf, 0xCu);
    }
  }
}

+ (BOOL)_assetSetsComplete:(id)complete assetSetCompleteness:(id)completeness
{
  v25 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  completenessCopy = completeness;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = completeCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [completenessCopy objectForKeyedSubscript:{v12, v20}];

        if (!v13)
        {
          v14 = [UAFAutoAssetManager assetSetComplete:v12];
          v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
          [completenessCopy setObject:v15 forKeyedSubscript:v12];
        }

        v16 = [completenessCopy objectForKeyedSubscript:v12];
        bOOLValue = [v16 BOOLValue];

        if (!bOOLValue)
        {
          v18 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_13:

  return v18;
}

+ (void)_emitSubscriptionComplete:(id)complete subscriber:(id)subscriber user:(id)user assetSets:(id)sets
{
  v27 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  subscriberCopy = subscriber;
  userCopy = user;
  setsCopy = sets;
  v13 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "+[UAFInstrumentationProvider _emitSubscriptionComplete:subscriber:user:assetSets:]";
    v21 = 2114;
    v22 = completeCopy;
    v23 = 2114;
    v24 = subscriberCopy;
    v25 = 2114;
    v26 = userCopy;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Subscription %{public}@ for subscriber %{public}@ for user %{public}@ complete", buf, 0x2Au);
  }

  v14 = objc_opt_new();
  [v14 setObject:completeCopy forKeyedSubscript:@"subscriptionName"];
  [v14 setObject:subscriberCopy forKeyedSubscript:@"subscriberName"];
  [v14 setObject:&unk_1F3B73230 forKeyedSubscript:@"downloadStatus"];
  [v14 setObject:setsCopy forKeyedSubscript:@"assetSetIdentifiers"];

  v18 = 0;
  v15 = [UAFUser uidForUser:userCopy error:&v18];
  v16 = v18;
  if (v16)
  {
    v17 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[UAFInstrumentationProvider _emitSubscriptionComplete:subscriber:user:assetSets:]";
      v21 = 2114;
      v22 = v16;
      _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Error %{public}@ occurred while fetching the user, so not emitting subscription complete AIR event", buf, 0x16u);
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v15, "unsignedIntValue")}];
    [v14 setObject:v17 forKeyedSubscript:@"userIdentifier"];
  }

  [UAFAppleIntelligenceReporting recordEvent:v14];
}

+ (void)_emitSubscriptionCompleteForAssetSet:(id)set
{
  v66 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = objc_autoreleasePoolPush();
  v6 = +[UAFSubscriptionStoreManager defaultManager];
  v52 = 0;
  v7 = [v6 getAllSubscriptions:&v52];
  v8 = v52;

  if (!v8)
  {
    selfCopy = self;
    log = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v27 = v7;
    obj = v7;
    v29 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
    if (!v29)
    {
      goto LABEL_33;
    }

    v28 = *v49;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v9;
        v10 = *(*(&v48 + 1) + 8 * v9);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v38 = v10;
        v31 = [obj objectForKeyedSubscript:?];
        v34 = [v31 countByEnumeratingWithState:&v44 objects:v64 count:16];
        if (v34)
        {
          v32 = *v45;
          do
          {
            v11 = 0;
            do
            {
              if (*v45 != v32)
              {
                objc_enumerationMutation(v31);
              }

              v35 = v11;
              v12 = *(*(&v44 + 1) + 8 * v11);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v13 = [obj objectForKeyedSubscript:v38];
              v37 = v12;
              v14 = [v13 objectForKeyedSubscript:v12];

              v15 = [v14 countByEnumeratingWithState:&v40 objects:v63 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v41;
                do
                {
                  v18 = 0;
                  do
                  {
                    if (*v41 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v40 + 1) + 8 * v18);
                    v20 = +[UAFConfigurationManager defaultManager];
                    v62 = v19;
                    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
                    v22 = [v20 applySubscriptions:v21];

                    v23 = [v22 objectForKeyedSubscript:setCopy];

                    if (v23)
                    {
                      if ([UAFInstrumentationProvider _assetSetsComplete:v22 assetSetCompleteness:log])
                      {
                        name = [v19 name];
                        v53 = setCopy;
                        name2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
                        [selfCopy _emitSubscriptionComplete:name subscriber:v37 user:v38 assetSets:name2];
                        goto LABEL_22;
                      }

                      name = UAFGetLogCategory(&UAFLogContextInstrumentation);
                      if (os_log_type_enabled(name, OS_LOG_TYPE_DEBUG))
                      {
                        name2 = [v19 name];
                        *buf = 136315906;
                        v55 = "+[UAFInstrumentationProvider _emitSubscriptionCompleteForAssetSet:]";
                        v56 = 2114;
                        v57 = name2;
                        v58 = 2114;
                        v59 = v37;
                        v60 = 2114;
                        v61 = v38;
                        _os_log_debug_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_DEBUG, "%s Subscription %{public}@ for subscriber %{public}@ for user %{public}@ not yet complete", buf, 0x2Au);
LABEL_22:
                      }
                    }

                    ++v18;
                  }

                  while (v16 != v18);
                  v26 = [v14 countByEnumeratingWithState:&v40 objects:v63 count:16];
                  v16 = v26;
                }

                while (v26);
              }

              v11 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [v31 countByEnumeratingWithState:&v44 objects:v64 count:16];
          }

          while (v34);
        }

        v9 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
      if (!v29)
      {
LABEL_33:

        v7 = v27;
        v8 = 0;
        goto LABEL_34;
      }
    }
  }

  log = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v55 = "+[UAFInstrumentationProvider _emitSubscriptionCompleteForAssetSet:]";
    v56 = 2114;
    v57 = v8;
    _os_log_error_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_ERROR, "%s Could not read subscriptions from database: %{public}@", buf, 0x16u);
  }

LABEL_34:

  objc_autoreleasePoolPop(v5);
}

+ (void)logSubscriptionCompleteForSubscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user
{
  v40 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  subscriberCopy = subscriber;
  userCopy = user;
  v8 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = subscriptionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v27;
    *&v11 = 136315906;
    v22 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v16 = +[UAFConfigurationManager defaultManager];
        v38 = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        v18 = [v16 applySubscriptions:v17];

        if ([UAFInstrumentationProvider _assetSetsComplete:v18 assetSetCompleteness:v8])
        {
          name = [v15 name];
          allKeys = [v18 allKeys];
          [self _emitSubscriptionComplete:name subscriber:subscriberCopy user:userCopy assetSets:allKeys];
LABEL_8:

          goto LABEL_10;
        }

        name = UAFGetLogCategory(&UAFLogContextInstrumentation);
        if (os_log_type_enabled(name, OS_LOG_TYPE_DEBUG))
        {
          allKeys = [v15 name];
          *buf = v22;
          v31 = "+[UAFInstrumentationProvider logSubscriptionCompleteForSubscriptions:subscriber:user:]";
          v32 = 2114;
          v33 = allKeys;
          v34 = 2114;
          v35 = subscriberCopy;
          v36 = 2114;
          v37 = userCopy;
          _os_log_debug_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_DEBUG, "%s Subscription %{public}@ for subscriber %{public}@ for user %{public}@ not yet complete", buf, 0x2Au);
          goto LABEL_8;
        }

LABEL_10:

        ++v14;
      }

      while (v12 != v14);
      v21 = [v9 countByEnumeratingWithState:&v26 objects:v39 count:16];
      v12 = v21;
    }

    while (v21);
  }
}

@end