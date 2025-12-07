@interface MSDBundleProgressTracker
+ (BOOL)isBundleInstance:(id)instance identicalWithNewBundle:(id)bundle;
+ (void)migratePreferencesFromFactoryDevicesIfNeeded;
+ (void)migratePreferencesFromLegacyDevicesIfNeeded;
+ (void)removeBundleFromPreferences:(id)preferences;
- (BOOL)checkIfAllCriticalComponentsTried;
- (BOOL)getComponentProgressStatus:(id)status;
- (NSMutableDictionary)contentProgress;
- (NSMutableDictionary)installedComponentList;
- (double)getBundleUpdateTime;
- (id)getLastBundleUpdateDate;
- (id)initializeTrackerForBundle:(id)bundle withContentType:(unsigned __int8)type;
- (id)retrieveLegacyContentnIdentifier:(unsigned __int8)identifier;
- (id)retrieveObjectFromPreferences:(unsigned __int8)preferences;
- (int64_t)getAllComponentsForUpdate;
- (void)addToBundleUpdateTime:(double)time;
- (void)flushRecordsToPreferences;
- (void)markBundleInProgressAsCompleted;
- (void)renameBundleInPrgressToBundleInstalled;
- (void)retrieveAndPopulateBundleInfo:(id)info;
- (void)setBundleStateAs:(unsigned __int8)as;
- (void)startBundleUpdateTimer;
- (void)stopBundleUpdateTimer;
- (void)updateComponentProgress:(id)progress withResult:(BOOL)result withAdditionalInfo:(id)info;
- (void)updateDownloadedContent:(unint64_t)content fromSource:(id)source;
@end

@implementation MSDBundleProgressTracker

- (id)initializeTrackerForBundle:(id)bundle withContentType:(unsigned __int8)type
{
  typeCopy = type;
  bundleCopy = bundle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v48 = bundleCopy;
  installationOrder = [bundleCopy installationOrder];
  v8 = objc_alloc_init(NSMutableDictionary);
  [(MSDBundleProgressTracker *)selfCopy setComponentsFromBundle:v8];

  criticalComponents = [v48 criticalComponents];
  [(MSDBundleProgressTracker *)selfCopy setCriticalComponents:criticalComponents];

  v11 = sub_100063A54(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    criticalComponents2 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
    *buf = 134217984;
    *v56 = [criticalComponents2 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "criticalComponents count:%ld", buf, 0xCu);
  }

  criticalComponents3 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
  v14 = criticalComponents3 == 0;

  if (v14)
  {
    v15 = [(MSDBundleProgressTracker *)selfCopy setCriticalComponents:installationOrder];
  }

  v16 = sub_100063A54(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    criticalComponents4 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
    v18 = [criticalComponents4 count];
    *buf = 134217984;
    *v56 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "installation order items are:%ld", buf, 0xCu);
  }

  v19 = [(MSDBundleProgressTracker *)selfCopy retrieveLegacyContentnIdentifier:typeCopy];
  [(MSDBundleProgressTracker *)selfCopy setContentIdentifierString:v19];

  v21 = sub_100063A54(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v56 = typeCopy;
    *&v56[4] = 2114;
    *&v56[6] = v48;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "initializing tracker:%d %{public}@", buf, 0x12u);
  }

  [(MSDBundleProgressTracker *)selfCopy retrieveAndPopulateBundleInfo:v48];
  bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
  v23 = [bundleInfo objectForKey:@"ManifestVersion"];
  v49 = [MSDSignedManifest appsPrefixForManifestVersion:v23];

  v25 = sub_100063A54(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v56 = "[MSDBundleProgressTracker initializeTrackerForBundle:withContentType:]";
    *&v56[8] = 2114;
    *&v56[10] = v49;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s - installationOrderAppsPrefix:  %{public}@", buf, 0x16u);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = installationOrder;
  v26 = 0;
  v27 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v27)
  {
    v47 = *v51;
    do
    {
      v28 = 0;
      v29 = v26;
      do
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v50 + 1) + 8 * v28);
        criticalComponents5 = [(MSDBundleProgressTracker *)selfCopy criticalComponents];
        v32 = [criticalComponents5 containsObject:v30];

        if ([v30 hasPrefix:v49])
        {
          v33 = [v30 substringFromIndex:{objc_msgSend(v49, "length")}];

          v34 = [v48 getComponentVersion:v33];
          goto LABEL_20;
        }

        if ([v48 isItemStandAlonePackage:v30])
        {
          v33 = [v30 substringFromIndex:{objc_msgSend(@"/Packages/", "length")}];

          v34 = [v48 getStandAlonePackageVersion:v33];
LABEL_20:
          v35 = v34;
          if (v34)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v33 = v30;
LABEL_23:
        v35 = @"1";
LABEL_24:
        bundleInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
        v37 = [bundleInfo2 objectForKey:@"ManifestVersion"];
        v26 = [MSDSignedManifest getComponentFromPath:v33 forManifestVersion:v37];

        v38 = [NSNumber numberWithBool:v32];
        v39 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v35, @"Version", &__NSDictionary0__struct, @"DebugInfo", &off_10017AEA0, @"Status", v38, @"CriticalComponent", 0];

        componentsFromBundle = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
        [componentsFromBundle setObject:v39 forKey:v26];

        v28 = v28 + 1;
        v29 = v26;
      }

      while (v27 != v28);
      v27 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v27);
  }

  [(MSDBundleProgressTracker *)selfCopy setPercentageProgress:0];
  v41 = objc_alloc_init(NSMutableDictionary);
  [(MSDBundleProgressTracker *)selfCopy setDownloadedContentSource:v41];

  [(MSDBundleProgressTracker *)selfCopy setBundleState:1];
  [(MSDBundleProgressTracker *)selfCopy setBundleType:typeCopy];
  [(MSDBundleProgressTracker *)selfCopy addBundleSpecificCompoments:typeCopy];
  componentsFromBundle2 = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
  -[MSDBundleProgressTracker setTotalComponents:](selfCopy, "setTotalComponents:", [componentsFromBundle2 count]);

  [(MSDBundleProgressTracker *)selfCopy setComponentsSuccessful:0];
  [(MSDBundleProgressTracker *)selfCopy setLastBundleUpdateDate:@"<unknown>"];
  v43 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"startTime", &off_10017AEB8, @"totalTimeTaken", 0];
  [(MSDBundleProgressTracker *)selfCopy setBundleTimerInfo:v43];

  [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  objc_sync_exit(selfCopy);

  return selfCopy;
}

- (id)retrieveObjectFromPreferences:(unsigned __int8)preferences
{
  preferencesCopy = preferences;
  selfCopy = self;
  v5 = objc_sync_enter(selfCopy);
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v33 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "loadFromPreferences called:%d", buf, 8u);
  }

  [(MSDBundleProgressTracker *)selfCopy setPreInstalledContent:0];
  v7 = [(MSDBundleProgressTracker *)selfCopy retrieveLegacyContentnIdentifier:preferencesCopy];
  [(MSDBundleProgressTracker *)selfCopy setContentIdentifierString:v7];

  v8 = +[MSDPreferencesFile sharedInstance];
  contentIdentifierString = [(MSDBundleProgressTracker *)selfCopy contentIdentifierString];
  v10 = [v8 objectForKey:contentIdentifierString];

  if (v10)
  {
    v11 = [v10 objectForKey:@"ContentStatus"];
    -[MSDBundleProgressTracker setBundleState:](selfCopy, "setBundleState:", [v11 integerValue]);

    v12 = [v10 objectForKey:@"ComponentInfo"];
    [(MSDBundleProgressTracker *)selfCopy setComponentsFromBundle:v12];

    v13 = [v10 objectForKey:@"BundleInfo"];
    [(MSDBundleProgressTracker *)selfCopy setBundleInfo:v13];

    v14 = [v10 objectForKey:@"BundleTimerInfo"];

    if (v14)
    {
      [v10 objectForKey:@"BundleTimerInfo"];
    }

    else
    {
      [NSMutableDictionary dictionaryWithObjectsAndKeys:@"startTime", &off_10017AEB8, @"totalTimeTaken", 0];
    }
    v15 = ;
    [(MSDBundleProgressTracker *)selfCopy setBundleTimerInfo:v15];

    v17 = [v10 objectForKey:@"PreInstalledContent"];
    -[MSDBundleProgressTracker setPreInstalledContent:](selfCopy, "setPreInstalledContent:", [v17 BOOLValue]);

    v18 = [v10 objectForKey:@"ContentSource"];
    v19 = [v18 mutableCopy];
    [(MSDBundleProgressTracker *)selfCopy setDownloadedContentSource:v19];

    v20 = [v10 objectForKey:@"TotalComponents"];
    -[MSDBundleProgressTracker setTotalComponents:](selfCopy, "setTotalComponents:", [v20 integerValue]);

    v21 = [v10 objectForKey:@"SuccessfulComponents"];
    -[MSDBundleProgressTracker setComponentsSuccessful:](selfCopy, "setComponentsSuccessful:", [v21 integerValue]);

    if ([(MSDBundleProgressTracker *)selfCopy totalComponents])
    {
      componentsSuccessful = [(MSDBundleProgressTracker *)selfCopy componentsSuccessful];
      v23 = 100 * componentsSuccessful / [(MSDBundleProgressTracker *)selfCopy totalComponents];
    }

    else
    {
      v23 = 100;
    }

    [(MSDBundleProgressTracker *)selfCopy setPercentageProgress:v23];
    [(MSDBundleProgressTracker *)selfCopy setBundleType:preferencesCopy];
    v24 = [v10 objectForKey:@"LastBundleUpdateDate"];
    [(MSDBundleProgressTracker *)selfCopy setLastBundleUpdateDate:v24];

    lastBundleUpdateDate = [(MSDBundleProgressTracker *)selfCopy lastBundleUpdateDate];
    LODWORD(v24) = lastBundleUpdateDate == 0;

    if (v24)
    {
      [(MSDBundleProgressTracker *)selfCopy setLastBundleUpdateDate:@"<unknown>"];
    }

    bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
    v27 = [bundleInfo objectForKey:@"PreInstalledContent"];

    if (v27)
    {
      bundleInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
      v29 = [bundleInfo2 objectForKey:@"PreInstalledContent"];
      -[MSDBundleProgressTracker setPreInstalledContent:](selfCopy, "setPreInstalledContent:", [v29 BOOLValue]);

      bundleInfo3 = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
      [bundleInfo3 removeObjectForKey:@"PreInstalledContent"];

      [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
    }

    v16 = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  objc_sync_exit(selfCopy);

  return v16;
}

- (void)updateComponentProgress:(id)progress withResult:(BOOL)result withAdditionalInfo:(id)info
{
  resultCopy = result;
  progressCopy = progress;
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v45 = selfCopy;
  bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];

  if (bundleInfo)
  {
    bundleInfo2 = [(MSDBundleProgressTracker *)v45 bundleInfo];
    v12 = [bundleInfo2 objectForKey:@"ManifestVersion"];

    v39 = v12;
    if (v12)
    {
      v42 = [MSDSignedManifest getComponentFromPath:progressCopy forManifestVersion:v12];
      componentsFromBundle = [(MSDBundleProgressTracker *)v45 componentsFromBundle];
      v15 = [componentsFromBundle objectForKey:v42];
      v43 = [v15 mutableCopy];

      v17 = sub_100063A54(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = v42;
        v52 = 1026;
        v53 = resultCopy;
        v54 = 2114;
        v55 = infoCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating component record:%{public}@ result:%{public, BOOL}d info:%{public}@", buf, 0x1Cu);
      }

      if (v43)
      {
        if (resultCopy)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = [NSNumber numberWithUnsignedInteger:v18];
        [v43 setObject:v19 forKey:@"Status"];

        [v43 setObject:infoCopy forKey:@"DebugInfo"];
        componentsFromBundle2 = [(MSDBundleProgressTracker *)v45 componentsFromBundle];
        [componentsFromBundle2 setObject:v43 forKey:v42];
      }

      v21 = +[MSDTargetDevice sharedInstance];
      criticalUpdatePrioritized = [v21 criticalUpdatePrioritized];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      componentsFromBundle3 = [(MSDBundleProgressTracker *)v45 componentsFromBundle];
      v24 = 0;
      v25 = 0;
      v26 = [componentsFromBundle3 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v26)
      {
        v27 = *v47;
        obj = componentsFromBundle3;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v46 + 1) + 8 * i);
            componentsFromBundle4 = [(MSDBundleProgressTracker *)v45 componentsFromBundle];
            v31 = [componentsFromBundle4 objectForKey:v29];

            v32 = [v31 objectForKey:@"Status"];
            LODWORD(componentsFromBundle4) = [v32 intValue];

            v33 = [v31 objectForKey:@"CriticalComponent"];
            bOOLValue = [v33 BOOLValue];

            if (componentsFromBundle4 == 2)
            {
              ++v25;
            }

            if (bOOLValue)
            {
              v35 = v24 + 1;
            }

            else
            {
              v35 = v24;
            }

            if (criticalUpdatePrioritized)
            {
              v24 = v35;
            }

            else
            {
              ++v24;
            }
          }

          componentsFromBundle3 = obj;
          v26 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v26);
      }

      [(MSDBundleProgressTracker *)v45 setComponentsSuccessful:v25];
      if (v24)
      {
        v36 = 100 * [(MSDBundleProgressTracker *)v45 componentsSuccessful]/ v24;
      }

      else
      {
        v36 = 100;
      }

      [(MSDBundleProgressTracker *)v45 setPercentageProgress:v36];
      [(MSDBundleProgressTracker *)v45 flushRecordsToPreferences];
    }

    else
    {
      v38 = sub_100063A54(v13);
      sub_1000CA538(v38, buf);
    }
  }

  else
  {
    v37 = sub_100063A54(v10);
    sub_1000CA5D0(v37, buf);
  }

  objc_sync_exit(v45);
}

- (void)updateDownloadedContent:(unint64_t)content fromSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  downloadedContentSource = [(MSDBundleProgressTracker *)selfCopy downloadedContentSource];
  longLongValue = [downloadedContentSource objectForKey:sourceCopy];

  if (longLongValue)
  {
    downloadedContentSource2 = [(MSDBundleProgressTracker *)selfCopy downloadedContentSource];
    v10 = [downloadedContentSource2 objectForKey:sourceCopy];
    longLongValue = [v10 longLongValue];
  }

  downloadedContentSource3 = [(MSDBundleProgressTracker *)selfCopy downloadedContentSource];
  v12 = [NSNumber numberWithLongLong:&longLongValue[content]];
  [downloadedContentSource3 setObject:v12 forKey:sourceCopy];

  [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  objc_sync_exit(selfCopy);
}

- (void)markBundleInProgressAsCompleted
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MSDBundleProgressTracker *)obj bundleState]== 1)
  {
    totalComponents = [(MSDBundleProgressTracker *)obj totalComponents];
    if (totalComponents == [(MSDBundleProgressTracker *)obj componentsSuccessful])
    {
      v3 = 3;
    }

    else
    {
      v4 = +[MSDTargetDevice sharedInstance];
      criticalUpdatePrioritized = [v4 criticalUpdatePrioritized];

      if (criticalUpdatePrioritized)
      {
        if ([(MSDBundleProgressTracker *)obj checkIfAllCriticalComponentsTried])
        {
          v3 = 5;
        }

        else
        {
          v3 = 6;
        }
      }

      else
      {
        v3 = 4;
      }
    }

    [(MSDBundleProgressTracker *)obj setBundleState:v3];
    v6 = objc_alloc_init(NSDateFormatter);
    [v6 setDateFormat:@"yyyy-MM-dd"];
    v7 = +[NSDate date];
    v8 = [v6 stringFromDate:v7];

    [(MSDBundleProgressTracker *)obj setLastBundleUpdateDate:v8];
  }

  [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
  objc_sync_exit(obj);
}

- (void)renameBundleInPrgressToBundleInstalled
{
  obj = self;
  objc_sync_enter(obj);
  contentIdentifierString = [(MSDBundleProgressTracker *)obj contentIdentifierString];
  v3 = [contentIdentifierString isEqualToString:@"Content.Installing"];

  if (v3)
  {
    [(MSDBundleProgressTracker *)obj setContentIdentifierString:@"Content.Existing"];
    [(MSDBundleProgressTracker *)obj setBundleType:0];
    v4 = +[MSDTargetDevice sharedInstance];
    [v4 setCriticalUpdatePrioritized:0];

    [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
    v5 = +[MSDPreferencesFile sharedInstance];
    [v5 removeObjectForKey:@"Content.Installing"];
  }

  objc_sync_exit(obj);
}

- (void)setBundleStateAs:(unsigned __int8)as
{
  asCopy = as;
  obj = self;
  objc_sync_enter(obj);
  [(MSDBundleProgressTracker *)obj setBundleState:asCopy];
  [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
  objc_sync_exit(obj);
}

- (int64_t)getAllComponentsForUpdate
{
  v3 = +[MSDTargetDevice sharedInstance];
  criticalUpdatePrioritized = [v3 criticalUpdatePrioritized];

  if (criticalUpdatePrioritized)
  {
    criticalComponents = [(MSDBundleProgressTracker *)self criticalComponents];
    v6 = [criticalComponents count];
  }

  else
  {
    totalComponents = [(MSDBundleProgressTracker *)self totalComponents];
    v6 = totalComponents;
  }

  v8 = sub_100063A54(totalComponents);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CA668(self, v6, v8);
  }

  return v6;
}

- (id)getLastBundleUpdateDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastBundleUpdateDate = [(MSDBundleProgressTracker *)selfCopy lastBundleUpdateDate];
  objc_sync_exit(selfCopy);

  return lastBundleUpdateDate;
}

- (double)getBundleUpdateTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleTimerInfo = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v4 = [bundleTimerInfo objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v8 = [bundleTimerInfo2 objectForKey:@"totalTimeTaken"];
  [v8 doubleValue];
  v10 = v9;

  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v11 = [NSDate dateWithTimeIntervalSince1970:v6];
    v12 = +[NSDate now];
    [v12 timeIntervalSinceDate:v11];
    v14 = v13;
  }

  objc_sync_exit(selfCopy);

  return v10 + v14;
}

- (void)addToBundleUpdateTime:(double)time
{
  obj = self;
  objc_sync_enter(obj);
  bundleTimerInfo = [(MSDBundleProgressTracker *)obj bundleTimerInfo];
  v5 = [bundleTimerInfo objectForKey:@"totalTimeTaken"];
  [v5 doubleValue];
  v7 = v6;

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)obj bundleTimerInfo];
  time = [NSNumber numberWithDouble:v7 + time];
  [bundleTimerInfo2 setObject:time forKey:@"totalTimeTaken"];

  [(MSDBundleProgressTracker *)obj flushRecordsToPreferences];
  objc_sync_exit(obj);
}

- (BOOL)getComponentProgressStatus:(id)status
{
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleInfo = [(MSDBundleProgressTracker *)selfCopy bundleInfo];
  v7 = [bundleInfo objectForKey:@"ManifestVersion"];
  v8 = [MSDSignedManifest getComponentFromPath:statusCopy forManifestVersion:v7];

  componentsFromBundle = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
  v10 = [componentsFromBundle objectForKey:v8];

  v11 = [v10 objectForKey:@"Status"];
  v12 = [v11 intValue] == 2;

  objc_sync_exit(selfCopy);
  return v12;
}

- (NSMutableDictionary)installedComponentList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = objc_alloc_init(NSMutableDictionary);
  if (![(MSDBundleProgressTracker *)selfCopy preInstalledContent])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    componentsFromBundle = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
    allKeys = [componentsFromBundle allKeys];

    v5 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        v7 = allKeys;
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v7);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          componentsFromBundle2 = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
          v11 = [componentsFromBundle2 objectForKey:v9];
          v12 = [v11 objectForKey:@"Status"];
          v13 = [v12 integerValue] == 2;

          if (v13)
          {
            componentsFromBundle3 = [(MSDBundleProgressTracker *)selfCopy componentsFromBundle];
            v15 = [componentsFromBundle3 objectForKey:v9];
            v16 = [v15 objectForKey:@"Version"];
            [v18 setObject:v16 forKey:v9];
          }
        }

        allKeys = v7;
        v5 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }
  }

  objc_sync_exit(selfCopy);

  return v18;
}

- (NSMutableDictionary)contentProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(NSMutableDictionary);
  bundleState = [(MSDBundleProgressTracker *)selfCopy bundleState];
  if (bundleState == 5)
  {
    bundleState2 = 3;
  }

  else if (bundleState == 6)
  {
    bundleState2 = 4;
  }

  else
  {
    bundleState2 = [(MSDBundleProgressTracker *)selfCopy bundleState];
  }

  contentIdentifierString = [(MSDBundleProgressTracker *)selfCopy contentIdentifierString];
  v7 = [contentIdentifierString isEqualToString:@"Content.Installing"];

  if (v7)
  {
    v8 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)selfCopy percentageProgress]];
    [v3 setObject:v8 forKey:@"InstalledComponentsPercent"];

    [v3 setObject:&off_10017AEB8 forKey:@"InstalledSizePercent"];
    v9 = [NSNumber numberWithUnsignedChar:bundleState2];
    [v3 setObject:v9 forKey:@"InstallState"];
  }

  else
  {
    contentIdentifierString2 = [(MSDBundleProgressTracker *)selfCopy contentIdentifierString];
    v11 = [contentIdentifierString2 isEqualToString:@"Content.Downloading"];

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)selfCopy percentageProgress]];
    [v3 setObject:v12 forKey:@"DownloadedComponentsPercent"];

    [v3 setObject:&off_10017AEB8 forKey:@"DownloadedSizePercent"];
    v9 = [NSNumber numberWithUnsignedChar:bundleState2];
    [v3 setObject:v9 forKey:@"DownloadState"];
  }

LABEL_11:
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)retrieveAndPopulateBundleInfo:(id)info
{
  infoCopy = info;
  getInfo = [infoCopy getInfo];
  v6 = +[NSMutableDictionary dictionary];
  [(MSDBundleProgressTracker *)self setBundleInfo:v6];

  v7 = [getInfo objectForKey:@"PartNumber"];
  if (v7)
  {
    bundleInfo = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo setObject:v7 forKey:@"PartNumber"];
  }

  v9 = [getInfo objectForKey:@"Revision"];

  if (v9)
  {
    bundleInfo2 = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo2 setObject:v9 forKey:@"Revision"];
  }

  v11 = [getInfo objectForKey:@"BundleName"];

  if (v11)
  {
    bundleInfo3 = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo3 setObject:v11 forKey:@"BundleName"];
  }

  v19 = +[MSDFileDownloadCredentials sharedInstance];
  manifestInfo = [v19 manifestInfo];
  v14 = [manifestInfo objectForKey:@"SigningKey"];

  if (v14)
  {
    bundleInfo4 = [(MSDBundleProgressTracker *)self bundleInfo];
    [bundleInfo4 setObject:v14 forKey:@"SigningKey"];
  }

  bundleInfo5 = [(MSDBundleProgressTracker *)self bundleInfo];
  getVersion = [infoCopy getVersion];

  v18 = [NSNumber numberWithInt:getVersion];
  [bundleInfo5 setObject:v18 forKey:@"ManifestVersion"];
}

- (id)retrieveLegacyContentnIdentifier:(unsigned __int8)identifier
{
  v3 = @"Content.Downloading";
  if (identifier == 2)
  {
    v3 = @"Content.Installing";
  }

  if (identifier)
  {
    return v3;
  }

  else
  {
    return @"Content.Existing";
  }
}

- (void)flushRecordsToPreferences
{
  v15[0] = @"BundleInfo";
  bundleInfo = [(MSDBundleProgressTracker *)self bundleInfo];
  v16[0] = bundleInfo;
  v15[1] = @"PreInstalledContent";
  v3 = [NSNumber numberWithBool:[(MSDBundleProgressTracker *)self preInstalledContent]];
  v16[1] = v3;
  v15[2] = @"ComponentInfo";
  componentsFromBundle = [(MSDBundleProgressTracker *)self componentsFromBundle];
  v16[2] = componentsFromBundle;
  v15[3] = @"ContentStatus";
  v5 = [NSNumber numberWithUnsignedChar:[(MSDBundleProgressTracker *)self bundleState]];
  v16[3] = v5;
  v15[4] = @"ContentSource";
  downloadedContentSource = [(MSDBundleProgressTracker *)self downloadedContentSource];
  v16[4] = downloadedContentSource;
  v15[5] = @"TotalComponents";
  v7 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)self totalComponents]];
  v16[5] = v7;
  v15[6] = @"SuccessfulComponents";
  v8 = [NSNumber numberWithInteger:[(MSDBundleProgressTracker *)self componentsSuccessful]];
  v16[6] = v8;
  v15[7] = @"LastBundleUpdateDate";
  lastBundleUpdateDate = [(MSDBundleProgressTracker *)self lastBundleUpdateDate];
  v16[7] = lastBundleUpdateDate;
  v15[8] = @"BundleTimerInfo";
  bundleTimerInfo = [(MSDBundleProgressTracker *)self bundleTimerInfo];
  v16[8] = bundleTimerInfo;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:9];

  v12 = +[MSDPreferencesFile sharedInstance];
  contentIdentifierString = [(MSDBundleProgressTracker *)self contentIdentifierString];
  [v12 setObject:v11 forKey:contentIdentifierString];
}

- (BOOL)checkIfAllCriticalComponentsTried
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(MSDBundleProgressTracker *)self criticalComponents];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        bundleInfo = [(MSDBundleProgressTracker *)self bundleInfo];
        v9 = [bundleInfo objectForKey:@"ManifestVersion"];
        v10 = [MSDSignedManifest getComponentFromPath:v7 forManifestVersion:v9];

        componentsFromBundle = [(MSDBundleProgressTracker *)self componentsFromBundle];
        v12 = [componentsFromBundle objectForKey:v10];

        if (v12)
        {
          v14 = [v12 objectForKey:@"Status"];
          intValue = [v14 intValue];

          if (!intValue)
          {

            v17 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v16 = sub_100063A54(v13);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Couldn't get componentInfo for: %{public}@, skipping...", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v17 = 1;
LABEL_15:

  v19 = sub_100063A54(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v27) = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Critical components tried:%d", buf, 8u);
  }

  return v17;
}

+ (void)removeBundleFromPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = sub_100063A54(preferencesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removing bundlepreferences:%{public}@", &v6, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  [v5 removeObjectForKey:preferencesCopy];
}

+ (BOOL)isBundleInstance:(id)instance identicalWithNewBundle:(id)bundle
{
  instanceCopy = instance;
  getInfo = [bundle getInfo];
  v7 = +[MSDFileDownloadCredentials sharedInstance];
  v8 = 0;
  if (instanceCopy && bundle)
  {
    v23 = [getInfo objectForKey:@"PartNumber"];
    bundleInfo = [instanceCopy bundleInfo];
    v10 = [bundleInfo objectForKey:@"PartNumber"];

    bundleInfo2 = [instanceCopy bundleInfo];
    v12 = [bundleInfo2 objectForKey:@"Revision"];
    integerValue = [v12 integerValue];

    v14 = [getInfo objectForKey:@"Revision"];
    integerValue2 = [v14 integerValue];

    bundleInfo3 = [instanceCopy bundleInfo];
    v17 = [bundleInfo3 objectForKey:@"SigningKey"];

    manifestInfo = [v7 manifestInfo];
    v19 = [manifestInfo objectForKey:@"SigningKey"];

    v20 = [v23 isEqualToString:v10];
    if (v20 && integerValue == integerValue2 && (v20 = [v19 isEqualToString:v17], v20))
    {
      v21 = sub_100063A54(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "It is the same old bundle.", buf, 2u);
      }

      v8 = 1;
    }

    else
    {
      v21 = sub_100063A54(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "It is not the same old bundle.", v24, 2u);
      }

      v8 = 0;
    }
  }

  return v8;
}

+ (void)migratePreferencesFromLegacyDevicesIfNeeded
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"ContentInstalled"];

  v5 = sub_100063A54(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found the key contentInstalled...", buf, 2u);
    }

    v7 = +[MSDPreferencesFile sharedInstance];
    v8 = [v7 objectForKey:@"Content.Existing"];

    if (v8)
    {
      v9 = +[MSDPreferencesFile sharedInstance];
      v10 = [v9 objectForKey:@"ContentInstalled"];

      if (v10)
      {
        v11 = [v10 objectForKey:@"DemoContent"];
        if (v11)
        {
          v12 = [v10 objectForKey:@"Installed"];
          intValue = [v12 intValue];

          v14 = [v10 objectForKey:@"Total"];
          intValue2 = [v14 intValue];
        }

        else
        {
          intValue2 = 0;
          intValue = 0;
        }
      }

      else
      {
        intValue2 = 0;
        intValue = 0;
      }

      if (intValue == intValue2)
      {
        v17 = 3;
      }

      else
      {
        v17 = 4;
      }

      v18 = +[MSDPreferencesFile sharedInstance];
      v5 = [v18 objectForKey:@"Content.Existing"];

      v16 = objc_alloc_init(NSMutableDictionary);
      v8 = objc_alloc_init(NSMutableDictionary);
      v19 = sub_100063A54(v8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v48 = intValue2;
        v49 = 2048;
        v50 = intValue;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "totalComponents:%ld componentsSuccessful:%ld", buf, 0x16u);
      }

      v20 = [NSNumber numberWithUnsignedChar:v17];
      v21 = [NSNumber numberWithInteger:intValue2];
      v22 = [NSNumber numberWithInteger:intValue];
      v23 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v5, @"BundleInfo", v16, @"ComponentInfo", v20, @"ContentStatus", v8, @"ContentSource", v21, @"TotalComponents", v22, @"SuccessfulComponents", @"<unknown>", @"LastBundleUpdateDate", 0];

      v24 = +[MSDPreferencesFile sharedInstance];
      [v24 setObject:v23 forKey:@"Content.Existing"];
    }

    else
    {
      v16 = 0;
      v5 = 0;
    }

    v25 = +[MSDPreferencesFile sharedInstance];
    v26 = [v25 objectForKey:@"Content.Downloading"];

    if (v26)
    {
      v27 = +[MSDPreferencesFile sharedInstance];
      v28 = [v27 objectForKey:@"BackgroundDownloadedComponents"];

      v29 = +[MSDPreferencesFile sharedInstance];
      v30 = [v29 objectForKey:@"TotalDownloadedContent"];
      intValue3 = [v30 intValue];

      v32 = +[MSDPreferencesFile sharedInstance];
      v33 = [v32 objectForKey:@"Content.Downloading"];

      v34 = objc_alloc_init(NSMutableDictionary);
      v35 = objc_alloc_init(NSMutableDictionary);

      v36 = 100 * [v28 count] / intValue3;
      v37 = [v28 count];
      if (intValue3 == 100)
      {
        v38 = 3;
      }

      else
      {
        v38 = 4;
      }

      v39 = [NSNumber numberWithUnsignedChar:v38];
      v40 = [NSNumber numberWithInteger:v36];
      v41 = [NSNumber numberWithInteger:v37];
      v42 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v33, @"BundleInfo", v34, @"ComponentInfo", v39, @"ContentStatus", v35, @"ContentSource", v40, @"TotalComponents", v41, @"SuccessfulComponents", @"<unknown>", @"LastBundleUpdateDate", 0];

      v43 = +[MSDPreferencesFile sharedInstance];
      [v43 setObject:v42 forKey:@"Content.Existing"];

      v8 = v35;
      v16 = v34;
      v5 = v33;
    }

    v44 = +[MSDPreferencesFile sharedInstance];
    [v44 removeObjectForKey:@"ContentInstalled"];

    v46 = sub_100063A54(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Migrating preferences from legacy device done.", buf, 2u);
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Nothing to migrate in preferences file for legacy device.", buf, 2u);
  }
}

+ (void)migratePreferencesFromFactoryDevicesIfNeeded
{
  v2 = +[MSDHelperAgent sharedInstance];
  v3 = [v2 fileExistsAtPath:@"/private/var/demo_backup/Metadata/Content.plist"];
  if (v3)
  {
    v4 = +[NSMutableDictionary dictionary];
    isKindOfClass = [v2 readPlistFile:@"/private/var/demo_backup/Metadata/Content.plist"];
    v6 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      [v4 addEntriesFromDictionary:v6];
      v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v4, @"BundleInfo", &__kCFBooleanTrue, @"PreInstalledContent", &__NSDictionary0__struct, @"ComponentInfo", &off_10017AED0, @"ContentStatus", &__NSDictionary0__struct, @"ContentSource", &off_10017AEE8, @"TotalComponents", &off_10017AEE8, @"SuccessfulComponents", @"<unknown>", @"LastBundleUpdateDate", 0];
      v8 = +[MSDPreferencesFile sharedInstance];
      [v8 setObject:v7 forKey:@"Content.Existing"];
    }

    else
    {
      v7 = sub_100063A54(isKindOfClass);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot parse Content.plist.", v12, 2u);
      }
    }

    v9 = sub_100063A54([v2 removeFileAtPath:@"/private/var/demo_backup/Metadata/Content.plist"]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating Content.plist for factory device done.", v11, 2u);
    }
  }

  else
  {
    v4 = sub_100063A54(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No Content.plist to migrate for factory device.", buf, 2u);
    }
  }
}

- (void)startBundleUpdateTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleTimerInfo = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v4 = [bundleTimerInfo objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  if (v6 == 0.0)
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting bundle update timer.", v13, 2u);
    }

    v9 = +[NSDate now];
    [v9 timeIntervalSince1970];
    v6 = v10;
  }

  else
  {
    v9 = sub_100063A54(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CA73C(v9);
    }
  }

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v12 = [NSNumber numberWithDouble:v6];
  [bundleTimerInfo2 setObject:v12 forKey:@"startTime"];

  [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  objc_sync_exit(selfCopy);
}

- (void)stopBundleUpdateTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleTimerInfo = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v4 = [bundleTimerInfo objectForKey:@"startTime"];
  [v4 doubleValue];
  v6 = v5;

  bundleTimerInfo2 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
  v8 = [bundleTimerInfo2 objectForKey:@"totalTimeTaken"];
  [v8 doubleValue];
  v10 = v9;

  if (v6 != 0.0)
  {
    v11 = [NSDate dateWithTimeIntervalSince1970:v6];
    v12 = +[NSDate now];
    [v12 timeIntervalSinceDate:v11];
    v14 = v13;

    v16 = sub_100063A54(v15);
    v17 = v10 + v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = +[NSDate now];
      [v18 timeIntervalSinceDate:v11];
      v24 = 134218240;
      v25 = v19;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stopping bundle update timer. Time taken in this attempt: %lf, Total time taken: %lf", &v24, 0x16u);
    }

    bundleTimerInfo3 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
    v21 = [NSNumber numberWithDouble:0.0];
    [bundleTimerInfo3 setObject:v21 forKey:@"startTime"];

    bundleTimerInfo4 = [(MSDBundleProgressTracker *)selfCopy bundleTimerInfo];
    v23 = [NSNumber numberWithDouble:v17];
    [bundleTimerInfo4 setObject:v23 forKey:@"totalTimeTaken"];

    [(MSDBundleProgressTracker *)selfCopy flushRecordsToPreferences];
  }

  objc_sync_exit(selfCopy);
}

@end