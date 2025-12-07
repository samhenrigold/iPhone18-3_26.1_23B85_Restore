@interface UAFManagedSubscriptions
+ (BOOL)_deviceSupportsGenerativeModelSystems;
+ (id)_assistantUsageAliasForMode:(unint64_t)mode;
+ (id)createHoldSubscription:(id)subscription;
+ (id)getConcurrentQueue;
+ (id)getExistingSubscription:(id)subscription subscriber:(id)subscriber;
+ (id)managePlatformSubscription;
+ (id)manageSubscription:(id)subscription subscriber:(id)subscriber assetSets:(id)sets usageAliases:(id)aliases useHold:(BOOL)hold userInitiated:(BOOL)initiated;
+ (id)morphunUsagesForLocale:(id)locale;
+ (id)validateUsageAlias:(id)alias usageAliasValue:(id)value;
+ (void)_stageAssetsUponPlatformAssetSetUpdate;
+ (void)manageAssistantSubscription:(id)subscription withMode:(unint64_t)mode;
+ (void)manageGMSSiriLanguageSubscription:(BOOL)subscription language:(id)language mode:(unint64_t)mode;
+ (void)manageMorphunSystemLocaleSubscription:(id)subscription;
+ (void)manageNLSystemLanguageSubscription:(id)subscription;
+ (void)manageSummarizationKitSubscription;
@end

@implementation UAFManagedSubscriptions

+ (id)getConcurrentQueue
{
  if (qword_1ED7D11F0 != -1)
  {
    dispatch_once(&qword_1ED7D11F0, &__block_literal_global_15);
  }

  v3 = qword_1ED7D11F8;

  return v3;
}

void __45__UAFManagedSubscriptions_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFManagedSubscriptions.Concurrent", v2);
  v1 = qword_1ED7D11F8;
  qword_1ED7D11F8 = v0;
}

+ (id)getExistingSubscription:(id)subscription subscriber:(id)subscriber
{
  v19 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  [UAFAssetSetManager getSubscriptions:subscriber storeManager:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:subscriptionCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)validateUsageAlias:(id)alias usageAliasValue:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  valueCopy = value;
  if (valueCopy)
  {
    v7 = +[UAFConfigurationManager defaultManager];
    v8 = [v7 getUsageAlias:aliasCopy includeDeprecatedValues:0];

    if (!v8)
    {
      goto LABEL_9;
    }

    values = [v8 values];
    v10 = [values objectForKeyedSubscript:valueCopy];

    if (!v10)
    {
      v11 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "+[UAFManagedSubscriptions validateUsageAlias:usageAliasValue:]";
        v23 = 2114;
        v24 = aliasCopy;
        v25 = 2114;
        v26 = valueCopy;
        _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
      }

      v12 = +[UAFConfigurationManager defaultManager];
      v13 = [v12 getUsageAlias:aliasCopy includeDeprecatedValues:1];

      v8 = v13;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    values2 = [v8 values];
    v15 = [values2 objectForKeyedSubscript:valueCopy];

    if (v15)
    {
      v19 = aliasCopy;
      v20 = valueCopy;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
LABEL_9:
      v17 = UAFGetLogCategory(&UAFLogContextSubscription);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "+[UAFManagedSubscriptions validateUsageAlias:usageAliasValue:]";
        v23 = 2114;
        v24 = valueCopy;
        v25 = 2114;
        v26 = aliasCopy;
        _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Usage Alias Value %{public}@ for Usage Alias %{public}@ does not exist, treating value as nil", buf, 0x20u);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)createHoldSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  name = [subscriptionCopy name];
  v5 = [name stringByAppendingString:@".hold"];

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:172800.0];
  v7 = [UAFAssetSetSubscription alloc];
  assetSets = [subscriptionCopy assetSets];
  usageAliases = [subscriptionCopy usageAliases];

  v10 = [(UAFAssetSetSubscription *)v7 initWithName:v5 assetSets:assetSets usageAliases:usageAliases expires:v6];

  return v10;
}

+ (id)manageSubscription:(id)subscription subscriber:(id)subscriber assetSets:(id)sets usageAliases:(id)aliases useHold:(BOOL)hold userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  holdCopy = hold;
  v59[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  subscriberCopy = subscriber;
  setsCopy = sets;
  aliasesCopy = aliases;
  v17 = [UAFManagedSubscriptions getExistingSubscription:subscriptionCopy subscriber:subscriberCopy];
  v18 = v17;
  if (setsCopy | aliasesCopy)
  {
    v39 = initiatedCopy;
    v25 = [[UAFAssetSetSubscription alloc] initWithName:subscriptionCopy assetSets:setsCopy usageAliases:aliasesCopy];
    v26 = [(UAFAssetSetSubscription *)v25 isEqual:v18];
    v27 = UAFGetLogCategory(&UAFLogContextSubscription);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        name = [(UAFAssetSetSubscription *)v25 name];
        *buf = 136315650;
        v49 = "+[UAFManagedSubscriptions manageSubscription:subscriber:assetSets:usageAliases:useHold:userInitiated:]";
        v50 = 2114;
        v51 = name;
        v52 = 2114;
        v53 = subscriberCopy;
        _os_log_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_DEFAULT, "%s Not updating subscription %{public}@ for subscriber %{public}@ as it is up to date", buf, 0x20u);
      }
    }

    else
    {
      if (v28)
      {
        name2 = [(UAFAssetSetSubscription *)v25 name];
        *buf = 136316162;
        v49 = "+[UAFManagedSubscriptions manageSubscription:subscriber:assetSets:usageAliases:useHold:userInitiated:]";
        v50 = 2114;
        v51 = name2;
        v52 = 2114;
        v53 = subscriberCopy;
        v54 = 2114;
        v55 = v25;
        v56 = 2114;
        v57 = v18;
        _os_log_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_DEFAULT, "%s Updating subscription %{public}@ for subscriber %{public}@ as it is not up to date: %{public}@ != %{public}@", buf, 0x34u);
      }

      v27 = [UAFManagedSubscriptions createHoldSubscription:v18];
      v47 = v25;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      if (v18 && v27)
      {
        v46[0] = v25;
        v46[1] = v27;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];

        v31 = v32;
      }

      v33 = dispatch_group_create();
      dispatch_group_enter(v33);
      v34 = +[UAFAssetSetManager sharedManager];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __102__UAFManagedSubscriptions_manageSubscription_subscriber_assetSets_usageAliases_useHold_userInitiated___block_invoke_362;
      v40[3] = &unk_1E7FFD5D0;
      v41 = v33;
      v35 = v33;
      [v34 subscribe:subscriberCopy subscriptions:v31 user:0 userInitiated:v39 queue:0 completion:v40];

      dispatch_group_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (!v17)
    {
      v25 = 0;
      goto LABEL_21;
    }

    v19 = dispatch_group_create();
    if (holdCopy)
    {
      v20 = [UAFManagedSubscriptions createHoldSubscription:v18];
      if (v20)
      {
        dispatch_group_enter(v19);
        v21 = +[UAFAssetSetManager sharedManager];
        v59[0] = v20;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __102__UAFManagedSubscriptions_manageSubscription_subscriber_assetSets_usageAliases_useHold_userInitiated___block_invoke;
        v44[3] = &unk_1E7FFD5D0;
        v23 = v19;
        v45 = v23;
        [v21 subscribe:subscriberCopy subscriptions:v22 user:0 userInitiated:0 queue:0 completion:v44];

        dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
        v24 = v45;
      }

      else
      {
        v24 = UAFGetLogCategory(&UAFLogContextSubscription);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v49 = "+[UAFManagedSubscriptions manageSubscription:subscriber:assetSets:usageAliases:useHold:userInitiated:]";
          _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Not creating hold subscription, as hold sub unexpectedly nil", buf, 0xCu);
        }
      }
    }

    dispatch_group_enter(v19);
    v36 = +[UAFAssetSetManager sharedManager];
    v58 = subscriptionCopy;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __102__UAFManagedSubscriptions_manageSubscription_subscriber_assetSets_usageAliases_useHold_userInitiated___block_invoke_361;
    v42[3] = &unk_1E7FFD5D0;
    v43 = v19;
    v27 = v19;
    [v36 unsubscribe:subscriberCopy subscriptionNames:v37 user:0 userInitiated:0 queue:0 completion:v42];

    dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    v25 = 0;
  }

LABEL_21:

  return v25;
}

void __102__UAFManagedSubscriptions_manageSubscription_subscriber_assetSets_usageAliases_useHold_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[UAFManagedSubscriptions manageSubscription:subscriber:assetSets:usageAliases:useHold:userInitiated:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed at creating hold subscription: %@", &v5, 0x16u);
    }
  }
}

void __102__UAFManagedSubscriptions_manageSubscription_subscriber_assetSets_usageAliases_useHold_userInitiated___block_invoke_361(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[UAFManagedSubscriptions manageSubscription:subscriber:assetSets:usageAliases:useHold:userInitiated:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed at unsubscribing: %@", &v5, 0x16u);
    }
  }
}

void __102__UAFManagedSubscriptions_manageSubscription_subscriber_assetSets_usageAliases_useHold_userInitiated___block_invoke_362(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[UAFManagedSubscriptions manageSubscription:subscriber:assetSets:usageAliases:useHold:userInitiated:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Failed at subscribing: %@", &v5, 0x16u);
    }
  }
}

+ (id)morphunUsagesForLocale:(id)locale
{
  v12[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if (localeCopy && ([getMorphunAssetsClass() isLocaleEmbedded:localeCopy] & 1) == 0 && objc_msgSend(getMorphunAssetsClass(), "isLocaleDownloadSupported:", localeCopy))
  {
    v4 = [getMorphunAssetsClass() getFactorNameForLocale:localeCopy];
    if ([v4 hasPrefix:@"com.apple.siri.nl.morphun."])
    {
      v5 = [v4 substringFromIndex:{objc_msgSend(@"com.apple.siri.nl.morphun.", "length")}];
      v10 = v5;
      v11 = @"com.apple.siri.understanding";
      v9 = @"morphun.language";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_assistantUsageAliasForMode:(unint64_t)mode
{
  if (mode > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7FFE938[mode];
  }
}

+ (void)manageAssistantSubscription:(id)subscription withMode:(unint64_t)mode
{
  v25 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  v6 = [UAFManagedSubscriptions _assistantUsageAliasForMode:mode];
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:subscriptionCopy];
  v8 = [UAFManagedSubscriptions morphunUsagesForLocale:v7];
  v9 = [UAFManagedSubscriptions validateUsageAlias:v6 usageAliasValue:subscriptionCopy];
  v10 = [UAFManagedSubscriptions manageSubscription:@"language" subscriber:@"com.apple.siri.assistant" assetSets:v8 usageAliases:v9 useHold:1 userInitiated:1];
  v11 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "+[UAFManagedSubscriptions manageAssistantSubscription:withMode:]";
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Emitting Siri subscription change AIR event", buf, 0xCu);
  }

  v12 = +[UAFInstrumentationProvider getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__UAFManagedSubscriptions_manageAssistantSubscription_withMode___block_invoke;
  block[3] = &unk_1E7FFE900;
  v18 = v10;
  v19 = subscriptionCopy;
  v21 = v9;
  modeCopy = mode;
  v20 = v8;
  v13 = v9;
  v14 = v8;
  v15 = subscriptionCopy;
  v16 = v10;
  dispatch_async(v12, block);
}

uint64_t __64__UAFManagedSubscriptions_manageAssistantSubscription_withMode___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = getuid();
  v4 = a1[5];
  if (!a1[6])
  {
    if (a1[7])
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 1;
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = a1[4] == 0;
LABEL_10:
  LOBYTE(v8) = v5;
  return [UAFInstrumentationProvider logSiriSubscription:"logSiriSubscription:subscriber:subscription:userId:locale:mode:unsubscribed:" subscriber:@"language" subscription:@"com.apple.siri.assistant" userId:v2 locale:v3 mode:v8 unsubscribed:?];
}

+ (void)manageNLSystemLanguageSubscription:(id)subscription
{
  v3 = MEMORY[0x1E695DF58];
  subscriptionCopy = subscription;
  v8 = [v3 localeWithLocaleIdentifier:subscriptionCopy];
  v5 = [UAFManagedSubscriptions morphunUsagesForLocale:?];
  v6 = [UAFManagedSubscriptions validateUsageAlias:@"com.apple.siri.nl.system.language" usageAliasValue:subscriptionCopy];

  if (!v6)
  {

    v5 = 0;
  }

  v7 = [UAFManagedSubscriptions manageSubscription:@"system.language" subscriber:@"com.apple.siri.nl" assetSets:v5 usageAliases:v6 useHold:1 userInitiated:1];
}

+ (void)manageMorphunSystemLocaleSubscription:(id)subscription
{
  v4 = [UAFManagedSubscriptions morphunUsagesForLocale:subscription];
  v3 = [UAFManagedSubscriptions manageSubscription:@"system.locale" subscriber:@"com.apple.siri.morphun" assetSets:v4 usageAliases:0 useHold:1 userInitiated:1];
}

+ (void)_stageAssetsUponPlatformAssetSetUpdate
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "+[UAFManagedSubscriptions _stageAssetsUponPlatformAssetSetUpdate]";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Staging assets due to receiving MA notification for platform assets", buf, 0xCu);
  }

  v3 = +[UAFSubscriptionStoreManager defaultManager];
  v7 = 0;
  v4 = [v3 getAllSubscriptions:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "+[UAFManagedSubscriptions _stageAssetsUponPlatformAssetSetUpdate]";
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to get all subscriptions due to error: %{public}@. Stopping staging", buf, 0x16u);
    }
  }

  else
  {
    v6 = [UAFSubscriptionStoreManager flattenSubscriptions:v4];
    [UAFAutoAssetManager stageAssetsWithNewSubscriptions:v6 oldSubscriptions:0 knownAutoAssetSets:0 usedAutoAssetSets:0 autoAssetSets:0];
  }
}

+ (id)managePlatformSubscription
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = +[UAFAssetSetManager sharedManager];
  v3 = +[UAFAutoAssetManager getSerialQueue];
  v4 = [v2 observeAssetSet:@"com.apple.siri.uaf.platform" queue:v3 handler:&__block_literal_global_368];

  v22 = @"com.apple.siri.uaf.platform";
  v23[0] = MEMORY[0x1E695E0F8];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v6 = [[UAFAssetSetSubscription alloc] initWithName:@"platform" assetSets:v5 usageAliases:0 expires:0];
  v16 = 0;
  v7 = [UAFUser systemUserWithNode:0 error:&v16];
  v8 = v16;
  if (v7)
  {
    v17 = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v10 = [UAFAssetSetManager subscribe:@"com.apple.siri.uaf" subscriptions:v9 user:v7 storeManager:0 configurationManager:0 userInitiated:0];

    if (v10)
    {
      goto LABEL_7;
    }

    v11 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "+[UAFManagedSubscriptions managePlatformSubscription]";
      v12 = "%s Could not create platform asset subscription";
      v13 = v11;
      v14 = 12;
LABEL_11:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[UAFManagedSubscriptions managePlatformSubscription]";
      v20 = 2114;
      v21 = v8;
      v12 = "%s Could not determine system user, failing to create platform subscription: %{public}@";
      v13 = v11;
      v14 = 22;
      goto LABEL_11;
    }
  }

LABEL_7:

  return v4;
}

void __53__UAFManagedSubscriptions_managePlatformSubscription__block_invoke()
{
  v0 = _os_activity_create(&dword_1BCF2C000, "UAF.stagingDueToPlatformAssetUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_apply(v0, &__block_literal_global_370);
}

+ (BOOL)_deviceSupportsGenerativeModelSystems
{
  if (qword_1ED7D1200 != -1)
  {
    dispatch_once(&qword_1ED7D1200, &__block_literal_global_373);
  }

  return _MergedGlobals_15;
}

uint64_t __64__UAFManagedSubscriptions__deviceSupportsGenerativeModelSystems__block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_15 = result;
  return result;
}

+ (void)manageSummarizationKitSubscription
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (+[UAFManagedSubscriptions _deviceSupportsGenerativeModelSystems])
  {
    v4 = @"com.apple.summarizationkit";
    v5[0] = MEMORY[0x1E695E0F8];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
    v3 = [UAFManagedSubscriptions manageSubscription:@"configuration" subscriber:@"com.apple.summarizationkit" assetSets:v2 usageAliases:0 useHold:1 userInitiated:1];
  }
}

+ (void)manageGMSSiriLanguageSubscription:(BOOL)subscription language:(id)language mode:(unint64_t)mode
{
  subscriptionCopy = subscription;
  v17[1] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v8 = [UAFManagedSubscriptions _assistantUsageAliasForMode:mode];
  if (subscriptionCopy)
  {
    v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:languageCopy];
    v10 = [UAFManagedSubscriptions morphunUsagesForLocale:v9];
    v11 = [UAFManagedSubscriptions validateUsageAlias:v8 usageAliasValue:languageCopy];
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v10 = 0;
  }

  v12 = [UAFManagedSubscriptions manageSubscription:@"language" subscriber:@"com.apple.siri.intelligenceengine" assetSets:v10 usageAliases:v11 useHold:1 userInitiated:1];
  if (v12)
  {
    v13 = +[UAFConfigurationManager defaultManager];
    v17[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v15 = [v13 applySubscriptions:v14];

    allKeys = [v15 allKeys];
  }
}

@end