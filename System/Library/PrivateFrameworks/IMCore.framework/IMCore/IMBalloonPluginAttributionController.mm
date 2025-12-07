@interface IMBalloonPluginAttributionController
+ (id)sharedInstance;
- (BOOL)shouldShowAttributionForBundleID:(id)d;
- (IMBalloonPluginAttributionController)init;
- (id)_currentTimestamp;
- (void)_handleInstalledPluginsChanged;
- (void)_purgeLeastRecentlySeenAppBundleIDsIfNecessary;
- (void)_saveToFile;
- (void)didShowAttributionForBundleIDs:(id)ds;
- (void)startExpiryTimer;
@end

@implementation IMBalloonPluginAttributionController

+ (id)sharedInstance
{
  if (qword_1ED767918 != -1)
  {
    sub_1A84DF1B8();
  }

  v3 = qword_1ED7678B8;

  return v3;
}

- (IMBalloonPluginAttributionController)init
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = IMBalloonPluginAttributionController;
  v2 = [(IMBalloonPluginAttributionController *)&v24 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = sub_1A8284DE8(v2);
    v6 = [v4 dictionaryWithContentsOfFile:v5];
    expiredBundleIDToTimestampMap = v3->_expiredBundleIDToTimestampMap;
    v3->_expiredBundleIDToTimestampMap = v6;

    if (!v3->_expiredBundleIDToTimestampMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v9 = v3->_expiredBundleIDToTimestampMap;
      v3->_expiredBundleIDToTimestampMap = Mutable;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIDsDisplayingAttribution = v3->_bundleIDsDisplayingAttribution;
    v3->_bundleIDsDisplayingAttribution = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleInstalledPluginsChanged name:@"__kIMBalloonPluginManagerInstalledAppsChangedNotification" object:0];

    [(IMBalloonPluginAttributionController *)v3 setHasPerformedFirstAppExtensionLoad:0];
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v13 = [IMBalloonPluginManager sharedInstance:0];
    allPlugins = [v13 allPlugins];

    v15 = [allPlugins countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(allPlugins);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(IMBalloonPluginAttributionController *)v3 setHasPerformedFirstAppExtensionLoad:1];
            goto LABEL_14;
          }
        }

        v16 = [allPlugins countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v3;
}

- (void)startExpiryTimer
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  bundleIDsDisplayingAttribution = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
  allKeys = [bundleIDsDisplayingAttribution allKeys];
  v6 = [allKeys __imArrayByFilteringWithBlock:&unk_1F1B6DD60];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        bundleIDsDisplayingAttribution2 = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
        v14 = [bundleIDsDisplayingAttribution2 objectForKey:v12];
        bOOLValue = [v14 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          bundleIDsDisplayingAttribution3 = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
          [bundleIDsDisplayingAttribution3 setObject:MEMORY[0x1E695E118] forKey:v12];

          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    [(IMBalloonPluginAttributionController *)self _expiryTimeout];
    v17 = array;
    im_dispatch_after();
  }
}

- (void)didShowAttributionForBundleIDs:(id)ds
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E69A69F0];
    v9 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(dsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 containsString:v8])
        {
          bundleIDsDisplayingAttribution = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
          v13 = [bundleIDsDisplayingAttribution objectForKey:v11];

          if (!v13)
          {
            bundleIDsDisplayingAttribution2 = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
            [bundleIDsDisplayingAttribution2 setObject:v9 forKey:v11];
          }
        }
      }

      v6 = [dsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldShowAttributionForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy containsString:*MEMORY[0x1E69A6A20]] & 1) != 0 || (objc_msgSend(dCopy, "containsString:", *MEMORY[0x1E69A6A08]))
  {
    goto LABEL_3;
  }

  if (([dCopy containsString:*MEMORY[0x1E69A69C8]] & 1) != 0 || (objc_msgSend(dCopy, "containsString:", *MEMORY[0x1E69A68F8]) & 1) != 0 || (objc_msgSend(dCopy, "containsString:", *MEMORY[0x1E69A6980]) & 1) != 0 || (IMIsRunningInUnitTesting() & 1) == 0 && !-[IMBalloonPluginAttributionController hasPerformedFirstAppExtensionLoad](self, "hasPerformedFirstAppExtensionLoad"))
  {
    v5 = 0;
    goto LABEL_8;
  }

  bundleIDsDisplayingAttribution = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
  v8 = [bundleIDsDisplayingAttribution objectForKey:dCopy];

  if (v8)
  {
LABEL_3:
    v5 = 1;
  }

  else
  {
    v9 = +[IMBalloonPluginManager sharedInstance];
    v10 = [v9 balloonPluginForBundleID:dCopy];

    identifier = [v10 identifier];
    v12 = [identifier isEqualToString:dCopy];

    if ((v12 & 1) != 0 || ![dCopy containsString:*MEMORY[0x1E69A69F0]])
    {
      v5 = 0;
    }

    else
    {
      expiredBundleIDToTimestampMap = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
      v14 = [expiredBundleIDToTimestampMap objectForKey:dCopy];
      v5 = v14 == 0;
    }
  }

LABEL_8:

  return v5;
}

- (id)_currentTimestamp
{
  v2 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  return [v2 numberWithDouble:?];
}

- (void)_saveToFile
{
  v9[1] = *MEMORY[0x1E69E9840];
  expiredBundleIDToTimestampMap = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
  v3 = sub_1A8284DE8(expiredBundleIDToTimestampMap);
  [expiredBundleIDToTimestampMap writeToFile:v3 atomically:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = *MEMORY[0x1E696A3A0];
  v9[0] = *MEMORY[0x1E696A388];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = sub_1A8284DE8(v5);
  v7 = 0;
  [defaultManager setAttributes:v5 ofItemAtPath:v6 error:&v7];
}

- (void)_purgeLeastRecentlySeenAppBundleIDsIfNecessary
{
  expiredBundleIDToTimestampMap = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
  v4 = [expiredBundleIDToTimestampMap count] - 100;

  if (v4 >= 1)
  {
    expiredBundleIDToTimestampMap2 = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
    allKeys = [expiredBundleIDToTimestampMap2 allKeys];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A8285890;
    v12[3] = &unk_1E78104A0;
    v12[4] = self;
    v7 = [allKeys sortedArrayUsingComparator:v12];

    for (i = 0; i != v4; ++i)
    {
      v9 = [v7 objectAtIndexedSubscript:i];
      expiredBundleIDToTimestampMap3 = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
      [expiredBundleIDToTimestampMap3 removeObjectForKey:v9];

      bundleIDsDisplayingAttribution = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
      [bundleIDsDisplayingAttribution removeObjectForKey:v9];
    }
  }
}

- (void)_handleInstalledPluginsChanged
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = +[IMBalloonPluginManager sharedInstance];
  allPlugins = [v4 allPlugins];
  v6 = [allPlugins __imArrayByApplyingBlock:&unk_1F1B6DD80];
  v7 = [v3 setWithArray:v6];

  hasPerformedFirstAppExtensionLoad = [(IMBalloonPluginAttributionController *)self hasPerformedFirstAppExtensionLoad];
  if (!hasPerformedFirstAppExtensionLoad)
  {
    if (![v7 count])
    {
      goto LABEL_19;
    }

    [(IMBalloonPluginAttributionController *)self setHasPerformedFirstAppExtensionLoad:1];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  expiredBundleIDToTimestampMap = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
  allKeys = [expiredBundleIDToTimestampMap allKeys];

  v11 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {

    if (hasPerformedFirstAppExtensionLoad)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = v11;
  v22 = 0;
  v13 = !hasPerformedFirstAppExtensionLoad;
  v14 = *v24;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(allKeys);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      if ([v7 containsObject:v16])
      {
        expiredBundleIDToTimestampMap2 = [(IMBalloonPluginAttributionController *)self expiredBundleIDToTimestampMap];
        [expiredBundleIDToTimestampMap2 removeObjectForKey:v16];

        v22 = 1;
      }

      bundleIDsDisplayingAttribution = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
      v19 = [bundleIDsDisplayingAttribution objectForKey:v16];

      if (v19)
      {
        bundleIDsDisplayingAttribution2 = [(IMBalloonPluginAttributionController *)self bundleIDsDisplayingAttribution];
        [bundleIDsDisplayingAttribution2 removeObjectForKey:v16];

        v13 = 1;
      }
    }

    v12 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);

  if (v22)
  {
    [(IMBalloonPluginAttributionController *)self _saveToFile];
  }

  if (v13)
  {
LABEL_18:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMBalloonPluginAttributionChangedNotification" object:0];
  }

LABEL_19:
}

@end