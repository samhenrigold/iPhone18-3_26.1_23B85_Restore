@interface USApplicationUsageMonitor
+ (id)_eventWithBundleIdentifier:(id)identifier startDate:(id)date usageType:(int64_t)type usageTrusted:(BOOL)trusted;
- (USApplicationUsageMonitor)init;
- (void)clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:(id)ds clearAll:(BOOL)all;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)invalidateInstantState;
- (void)obtainCurrentValue;
- (void)platformSpecificStart;
- (void)platformSpecificStop;
- (void)start;
- (void)stop;
- (void)updateActiveApplicationsWithLayout:(id)layout displayType:(unint64_t)type;
- (void)updateAppDataInContextStore;
- (void)updateInUseApplications:(id)applications activeApplications:(id)activeApplications;
@end

@implementation USApplicationUsageMonitor

- (void)updateAppDataInContextStore
{
  v51 = *MEMORY[0x277D85DE8];
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  obj = [(USApplicationUsageMonitor *)self inUseApplicationEvents];
  v39 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v39)
  {
    v37 = *v45;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * i);
        inUseApplicationEvents = [(USApplicationUsageMonitor *)selfCopy inUseApplicationEvents];
        v6 = [inUseApplicationEvents objectForKeyedSubscript:v4];

        startDate = [v6 startDate];
        if (startDate)
        {
          metadata = [v6 metadata];
          appBundleID = [MEMORY[0x277CFE158] appBundleID];
          v10 = [metadata objectForKeyedSubscript:appBundleID];

          stringValue = [v6 stringValue];
          if (v10)
          {
            v41 = stringValue;
            v43 = v4;
          }

          else
          {
            if (!stringValue)
            {
              goto LABEL_20;
            }

            v43 = v4;
            v10 = stringValue;
            v41 = 0;
          }

          metadata2 = [v6 metadata];
          usageType = [MEMORY[0x277CFE1D0] usageType];
          v14 = [metadata2 objectForKeyedSubscript:usageType];
          v15 = v14;
          v16 = &unk_2880871E0;
          if (v14)
          {
            v16 = v14;
          }

          v17 = v16;

          metadata3 = [v6 metadata];
          isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
          v20 = [metadata3 objectForKeyedSubscript:isUsageTrusted];
          v21 = v20;
          v22 = MEMORY[0x277CBEC38];
          if (v20)
          {
            v22 = v20;
          }

          v23 = v22;

          appUsageBundleID = [MEMORY[0x277CFE338] appUsageBundleID];
          v48[0] = appUsageBundleID;
          v42 = v10;
          v49[0] = v10;
          appUsageStartDate = [MEMORY[0x277CFE338] appUsageStartDate];
          v48[1] = appUsageStartDate;
          v49[1] = startDate;
          appUsageType = [MEMORY[0x277CFE338] appUsageType];
          v48[2] = appUsageType;
          v40 = v17;
          v49[2] = v17;
          isUsageTrusted2 = [MEMORY[0x277CFE338] isUsageTrusted];
          v48[3] = isUsageTrusted2;
          v49[3] = v23;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
          v29 = [v28 mutableCopy];

          if (v41)
          {
            clipBundleIDKey = [MEMORY[0x277CFE338] clipBundleIDKey];
            [v29 setObject:v41 forKeyedSubscript:clipBundleIDKey];
          }

          if (([v43 isEqualToString:@"com.apple.springboard.stand-by"] & 1) == 0)
          {
            v31 = [v29 copy];
            [v35 addObject:v31];
          }
        }

LABEL_20:
      }

      v39 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v39);
  }

  keyPathForAppUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppUsageDataDictionaries];
  v33 = [v35 copy];
  userContext = [MEMORY[0x277CFE318] userContext];
  [userContext setObject:v33 forKeyedSubscript:keyPathForAppUsageDataDictionaries];
}

- (void)obtainCurrentValue
{
  monitor = [(USApplicationUsageMonitor *)self monitor];
  currentLayout = [monitor currentLayout];
  [(USApplicationUsageMonitor *)self updateActiveApplicationsWithLayout:currentLayout displayType:0];

  carPlayMonitor = [(USApplicationUsageMonitor *)self carPlayMonitor];
  currentLayout2 = [carPlayMonitor currentLayout];
  [(USApplicationUsageMonitor *)self updateActiveApplicationsWithLayout:currentLayout2 displayType:1];

  externalMonitor = [(USApplicationUsageMonitor *)self externalMonitor];
  currentLayout3 = [externalMonitor currentLayout];
  [(USApplicationUsageMonitor *)self updateActiveApplicationsWithLayout:currentLayout3 displayType:2];
}

- (USApplicationUsageMonitor)init
{
  v11.receiver = self;
  v11.super_class = USApplicationUsageMonitor;
  v2 = [(_DKMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    inUseApplicationEvents = v2->_inUseApplicationEvents;
    v2->_inUseApplicationEvents = MEMORY[0x277CBEC10];

    v5 = BiomeLibrary();
    screenTime = [v5 ScreenTime];
    appUsage = [screenTime AppUsage];
    source = [appUsage source];
    appUsageSource = v3->_appUsageSource;
    v3->_appUsageSource = source;
  }

  return v3;
}

+ (id)_eventWithBundleIdentifier:(id)identifier startDate:(id)date usageType:(int64_t)type usageTrusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v48[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  v11 = dateCopy;
  v12 = 0;
  if (identifierCopy && dateCopy)
  {
    if ([identifierCopy isEqualToString:@"com.apple.springboard.stand-by"])
    {
      v13 = MEMORY[0x277CFE1D8];
      appUsageStream = [MEMORY[0x277CFE298] appUsageStream];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v16 = [MEMORY[0x277CFE1A8] withBundle:@"com.apple.springboard.stand-by"];
      usageType = [MEMORY[0x277CFE1D0] usageType];
      v47[0] = usageType;
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      v48[0] = v18;
      isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
      v47[1] = isUsageTrusted;
      v48[1] = MEMORY[0x277CBEC38];
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v21 = v13;
      v22 = distantFuture;
      v12 = [v21 eventWithStream:appUsageStream startDate:v11 endDate:distantFuture value:v16 metadata:v20];

LABEL_23:
      goto LABEL_24;
    }

    appUsageStream = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    usageType2 = [MEMORY[0x277CFE1D0] usageType];
    [appUsageStream setObject:v23 forKeyedSubscript:usageType2];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:trustedCopy];
    isUsageTrusted2 = [MEMORY[0x277CFE1D0] isUsageTrusted];
    [appUsageStream setObject:v25 forKeyedSubscript:isUsageTrusted2];

    v45 = 0;
    v16 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v45];
    v22 = v45;
    if (v22)
    {
      usageType = [MEMORY[0x277CFE0C8] knowledgeChannel];
      if (os_log_type_enabled(usageType, OS_LOG_TYPE_ERROR))
      {
        [USApplicationUsageMonitor _eventWithBundleIdentifier:identifierCopy startDate:v22 usageType:usageType usageTrusted:?];
      }

      v12 = 0;
      goto LABEL_23;
    }

    shortVersionString = [v16 shortVersionString];
    usageType = shortVersionString;
    if (shortVersionString && [shortVersionString length])
    {
      shortVersionString2 = [MEMORY[0x277CFE178] shortVersionString];
      [appUsageStream setObject:usageType forKeyedSubscript:shortVersionString2];
    }

    exactBundleVersion = [v16 exactBundleVersion];
    if ([exactBundleVersion length])
    {
      exactBundleVersion2 = [MEMORY[0x277CFE178] exactBundleVersion];
      [appUsageStream setObject:exactBundleVersion forKeyedSubscript:exactBundleVersion2];
    }

    appClipMetadata = [v16 appClipMetadata];
    v44 = appClipMetadata;
    if (appClipMetadata)
    {
      parentApplicationIdentifiers = [appClipMetadata parentApplicationIdentifiers];
      firstObject = [parentApplicationIdentifiers firstObject];

      v34 = firstObject;
      v46 = 0;
      if (!CPCopyBundleIdentifierAndTeamFromApplicationIdentifier() || (v35 = v46) == 0)
      {
        knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
        if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_FAULT))
        {
          [USApplicationUsageMonitor _eventWithBundleIdentifier:identifierCopy startDate:knowledgeChannel usageType:? usageTrusted:?];
        }

        v12 = 0;
        goto LABEL_22;
      }

      [MEMORY[0x277CFE158] appBundleID];
      v36 = v43 = v34;
      [appUsageStream setObject:v35 forKeyedSubscript:v36];
    }

    v34 = [appUsageStream copy];
    v37 = MEMORY[0x277CFE1D8];
    knowledgeChannel = [MEMORY[0x277CFE298] appUsageStream];
    distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
    [MEMORY[0x277CFE1A8] withBundle:identifierCopy];
    v40 = v42 = exactBundleVersion;
    v12 = [v37 eventWithStream:knowledgeChannel startDate:v11 endDate:distantFuture2 value:v40 metadata:v34];

    exactBundleVersion = v42;
    v22 = 0;
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:

  return v12;
}

- (void)clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:(id)ds clearAll:(BOOL)all
{
  allCopy = all;
  v64 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  knowledgeChannel = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(knowledgeChannel, OS_LOG_TYPE_DEBUG))
  {
    [USApplicationUsageMonitor clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:dsCopy clearAll:knowledgeChannel];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keyPathForAppWebUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
  v10 = MEMORY[0x277CCAC30];
  appWebUsageBundleID = [MEMORY[0x277CFE338] appWebUsageBundleID];
  v12 = appWebUsageBundleID;
  v49 = dsCopy;
  v50 = v8;
  selfCopy = self;
  if (allCopy)
  {
    [v10 predicateWithFormat:@"SELF.%K != %@", appWebUsageBundleID, 0];
  }

  else
  {
    [v10 predicateWithFormat:@"SELF.%K IN %@", appWebUsageBundleID, dsCopy];
  }
  v13 = ;

  userContext = [MEMORY[0x277CFE318] userContext];
  v47 = v13;
  v48 = keyPathForAppWebUsageDataDictionaries;
  v15 = [userContext removeObjectsMatchingPredicate:v13 fromArrayAtKeyPath:keyPathForAppWebUsageDataDictionaries];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  v17 = 0x277CFE000uLL;
  if (v16)
  {
    v18 = v16;
    v19 = *v56;
    v51 = *v56;
    do
    {
      v20 = 0;
      v53 = v18;
      do
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v55 + 1) + 8 * v20);
        appWebUsageStartDate = [*(v17 + 824) appWebUsageStartDate];
        v23 = [v21 objectForKeyedSubscript:appWebUsageStartDate];

        appWebUsageBundleID2 = [*(v17 + 824) appWebUsageBundleID];
        v25 = [v21 objectForKeyedSubscript:appWebUsageBundleID2];

        if (v23)
        {
          v26 = v25 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
          appWebUsageWepageURL = [*(v17 + 824) appWebUsageWepageURL];
          v29 = [v21 objectForKeyedSubscript:appWebUsageWepageURL];

          if (v29)
          {
            webpageURL = [MEMORY[0x277CFE1D0] webpageURL];
            [v27 setObject:v29 forKeyedSubscript:webpageURL];
          }

          appWebUsageWebDomain = [*(v17 + 824) appWebUsageWebDomain];
          v32 = [v21 objectForKeyedSubscript:appWebUsageWebDomain];

          if (v32)
          {
            webDomain = [MEMORY[0x277CFE1D0] webDomain];
            [v27 setObject:v32 forKeyedSubscript:webDomain];
          }

          isUsageTrusted = [*(v17 + 824) isUsageTrusted];
          v35 = [v21 objectForKeyedSubscript:isUsageTrusted];

          if (v35)
          {
            isUsageTrusted2 = [MEMORY[0x277CFE1D0] isUsageTrusted];
            [v27 setObject:v35 forKeyedSubscript:isUsageTrusted2];
          }

          appWebUsageType = [*(v17 + 824) appWebUsageType];
          v38 = [v21 objectForKeyedSubscript:appWebUsageType];

          if (v38)
          {
            usageType = [MEMORY[0x277CFE1D0] usageType];
            [v27 setObject:v38 forKeyedSubscript:usageType];
          }

          v40 = MEMORY[0x277CFE1D8];
          appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
          v42 = [v40 eventWithStream:appWebUsageStream source:0 startDate:v23 endDate:date identifierStringValue:v25 metadata:v27];

          if (v42)
          {
            [v50 addObject:v42];
          }

          v17 = 0x277CFE000;
          v19 = v51;
          v18 = v53;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v18);
  }

  if ([v50 count])
  {
    knowledgeChannel2 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(knowledgeChannel2, OS_LOG_TYPE_INFO))
    {
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "count")}];
      *buf = 138412546;
      v60 = v44;
      v61 = 2112;
      v62 = v49;
      _os_log_impl(&dword_2707F8000, knowledgeChannel2, OS_LOG_TYPE_INFO, "Cleared %@ events from bundleIDs: %@", buf, 0x16u);
    }

    historicalHandler = [(_DKMonitor *)selfCopy historicalHandler];
    (historicalHandler)[2](historicalHandler, v50);
  }
}

- (void)updateActiveApplicationsWithLayout:(id)layout displayType:(unint64_t)type
{
  layoutCopy = layout;
  queue = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__USApplicationUsageMonitor_updateActiveApplicationsWithLayout_displayType___block_invoke;
  block[3] = &unk_279E09868;
  selfCopy = self;
  typeCopy = type;
  v10 = layoutCopy;
  v8 = layoutCopy;
  dispatch_sync(queue, block);
}

void __76__USApplicationUsageMonitor_updateActiveApplicationsWithLayout_displayType___block_invoke(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) displayBacklightLevel];
  v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [*(v1 + 32) elements];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = v3;
      v25 = v1;
      v8 = *v27;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 bundleIdentifier];
          if (!v11)
          {
            v12 = [v10 identifier];
            v13 = [v12 isEqualToString:@"com.apple.springboard.stand-by"];

            if (v13)
            {
              v11 = @"com.apple.springboard.stand-by";
            }

            else
            {
              v11 = 0;
            }
          }

          v14 = [v10 identifier];
          v15 = [v14 isEqualToString:@"com.apple.lock-screen"];

          if (v15)
          {
            v16 = [MEMORY[0x277CBEB58] set];

            v4 = v16;
            goto LABEL_19;
          }

          if (v11 && ([(__CFString *)v11 isEqualToString:@"com.apple.SleepLockScreen"]& 1) == 0)
          {
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_19:
      v3 = v24;
      v1 = v25;
    }

    v17 = [v4 copy];
    v3 = v17;
  }

  v18 = *(v1 + 48);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      [*(v1 + 40) setActiveExternalApplications:v3];
    }

    else if (v18 == 3)
    {
      [*(v1 + 40) setActiveContinuityApplications:v3];
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      [*(v1 + 40) setActiveCarPlayApplications:v3];
    }
  }

  else
  {
    [*(v1 + 40) setActiveApplications:v3];
  }

  v19 = [*(v1 + 40) activeApplications];
  [v4 unionSet:v19];

  v20 = [*(v1 + 40) activeCarPlayApplications];
  [v4 unionSet:v20];

  v21 = [*(v1 + 40) activeExternalApplications];
  [v4 unionSet:v21];

  v22 = [*(v1 + 40) activeContinuityApplications];
  [v4 unionSet:v22];

  v23 = [v4 copy];
  [*(v1 + 40) updateInUseApplications:v23 activeApplications:0];
}

- (void)platformSpecificStart
{
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__USApplicationUsageMonitor_platformSpecificStart__block_invoke;
  v13[3] = &unk_279E09890;
  v13[4] = self;
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:v13];
  v4 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
  [(USApplicationUsageMonitor *)self setMonitor:v4];

  configurationForCarDisplayMonitor = [MEMORY[0x277D0AD20] configurationForCarDisplayMonitor];

  if (configurationForCarDisplayMonitor)
  {
    [configurationForCarDisplayMonitor setNeedsUserInteractivePriority:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__USApplicationUsageMonitor_platformSpecificStart__block_invoke_2;
    v12[3] = &unk_279E09890;
    v12[4] = self;
    [configurationForCarDisplayMonitor setTransitionHandler:v12];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForCarDisplayMonitor];
    [(USApplicationUsageMonitor *)self setCarPlayMonitor:v6];
  }

  configurationForContinuityDisplay = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];

  if (configurationForContinuityDisplay)
  {
    [configurationForContinuityDisplay setNeedsUserInteractivePriority:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__USApplicationUsageMonitor_platformSpecificStart__block_invoke_3;
    v11[3] = &unk_279E09890;
    v11[4] = self;
    [configurationForContinuityDisplay setTransitionHandler:v11];
    v8 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForContinuityDisplay];
    [(USApplicationUsageMonitor *)self setContinuityMonitor:v8];
  }

  v9 = objc_alloc_init(MEMORY[0x277D0AD38]);
  [(USApplicationUsageMonitor *)self setDisplayMonitor:v9];

  displayMonitor = [(USApplicationUsageMonitor *)self displayMonitor];
  [displayMonitor addObserver:self];
}

- (void)platformSpecificStop
{
  monitor = [(USApplicationUsageMonitor *)self monitor];
  [monitor invalidate];

  [(USApplicationUsageMonitor *)self setMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveApplications:0];
  carPlayMonitor = [(USApplicationUsageMonitor *)self carPlayMonitor];
  [carPlayMonitor invalidate];

  [(USApplicationUsageMonitor *)self setCarPlayMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveCarPlayApplications:0];
  externalMonitor = [(USApplicationUsageMonitor *)self externalMonitor];
  [externalMonitor invalidate];

  [(USApplicationUsageMonitor *)self setExternalMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveExternalApplications:0];
  continuityMonitor = [(USApplicationUsageMonitor *)self continuityMonitor];
  [continuityMonitor invalidate];

  [(USApplicationUsageMonitor *)self setContinuityMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveContinuityApplications:0];
  displayMonitor = [(USApplicationUsageMonitor *)self displayMonitor];
  [displayMonitor removeObserver:self];

  [(USApplicationUsageMonitor *)self setDisplayMonitor:0];
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  v6 = SBSCreateLayoutServiceEndpointForExternalDisplay();
  v7 = [MEMORY[0x277D0AD20] configurationWithEndpoint:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setNeedsUserInteractivePriority:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__USApplicationUsageMonitor_displayMonitor_didConnectIdentity_withConfiguration___block_invoke;
    v12[3] = &unk_279E09890;
    v12[4] = self;
    [v8 setTransitionHandler:v12];
    v9 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v8];
    externalMonitor = [(USApplicationUsageMonitor *)self externalMonitor];

    if (externalMonitor)
    {
      externalMonitor2 = [(USApplicationUsageMonitor *)self externalMonitor];
      [externalMonitor2 invalidate];

      [(USApplicationUsageMonitor *)self setExternalMonitor:0];
    }

    [(USApplicationUsageMonitor *)self setExternalMonitor:v9];
  }
}

- (void)updateInUseApplications:(id)applications activeApplications:(id)activeApplications
{
  v83 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  inUseApplicationEvents = [(USApplicationUsageMonitor *)self inUseApplicationEvents];
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  allKeys = [inUseApplicationEvents allKeys];
  v10 = [v8 initWithArray:allKeys];

  date = [MEMORY[0x277CBEAA8] date];
  if (([applicationsCopy isEqual:v10] & 1) == 0)
  {
    v58 = v10;
    v61 = [inUseApplicationEvents mutableCopy];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v59 = applicationsCopy;
    obj = applicationsCopy;
    v12 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    selfCopy = self;
    v60 = inUseApplicationEvents;
    if (v12)
    {
      v13 = v12;
      v14 = *v77;
      v15 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v77 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v76 + 1) + 8 * i);
          v18 = [inUseApplicationEvents objectForKeyedSubscript:v17];
          if (!v18)
          {
            activeCarPlayApplications = [(USApplicationUsageMonitor *)self activeCarPlayApplications];
            v20 = [activeCarPlayApplications containsObject:v17];

            v21 = v20 ? 3 : 1;
            v18 = [USApplicationUsageMonitor _eventWithBundleIdentifier:v17 startDate:date usageType:v21 usageTrusted:1];
            if (v18)
            {
              [v61 setObject:v18 forKey:v17];
              metadata = [v18 metadata];
              appBundleID = [MEMORY[0x277CFE158] appBundleID];
              v24 = [metadata objectForKeyedSubscript:appBundleID];

              self = selfCopy;
              v25 = [objc_alloc(MEMORY[0x277CF1440]) initWithStarting:v15 absoluteTimestamp:date bundleID:v17 parentBundleID:v24 isUsageTrusted:v15];
              appUsageSource = [(USApplicationUsageMonitor *)selfCopy appUsageSource];
              [date timeIntervalSinceReferenceDate];
              [appUsageSource sendEvent:v25 timestamp:?];

              inUseApplicationEvents = v60;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v13);
    }

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v67 = inUseApplicationEvents;
    v28 = [v67 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v73;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v73 != v30)
          {
            objc_enumerationMutation(v67);
          }

          v32 = *(*(&v72 + 1) + 8 * j);
          if (([obj containsObject:v32] & 1) == 0)
          {
            [v27 addObject:v32];
            [v61 removeObjectForKey:v32];
          }
        }

        v29 = [v67 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v29);
    }

    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v64 = v27;
    v33 = [v64 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v33)
    {
      v34 = v33;
      v65 = *v69;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v69 != v65)
          {
            objc_enumerationMutation(v64);
          }

          v36 = [v67 objectForKeyedSubscript:*(*(&v68 + 1) + 8 * k)];
          [v36 setEndDate:date];
          metadata2 = [v36 metadata];
          appBundleID2 = [MEMORY[0x277CFE158] appBundleID];
          v39 = [metadata2 objectForKeyedSubscript:appBundleID2];

          stringValue = [v36 stringValue];
          v41 = stringValue;
          if (v39)
          {
            v42 = stringValue;
            v41 = v39;
          }

          else
          {
            if (!stringValue)
            {
              goto LABEL_44;
            }

            v42 = 0;
          }

          if (([v41 isEqualToString:@"com.apple.springboard.stand-by"] & 1) == 0)
          {
            [v62 addObject:v36];
          }

          metadata3 = [v36 metadata];
          isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
          v45 = [metadata3 objectForKeyedSubscript:isUsageTrusted];
          v46 = v45;
          v47 = MEMORY[0x277CBEC38];
          if (v45)
          {
            v47 = v45;
          }

          v48 = v47;

          v49 = objc_alloc(MEMORY[0x277CF1440]);
          if (v42)
          {
            v50 = v42;
          }

          else
          {
            v50 = v41;
          }

          if (v42)
          {
            v51 = v41;
          }

          else
          {
            v51 = 0;
          }

          v52 = [v49 initWithStarting:MEMORY[0x277CBEC28] absoluteTimestamp:date bundleID:v50 parentBundleID:v51 isUsageTrusted:v48];

          appUsageSource2 = [(USApplicationUsageMonitor *)selfCopy appUsageSource];
          [date timeIntervalSinceReferenceDate];
          [appUsageSource2 sendEvent:v52 timestamp:?];

LABEL_44:
        }

        v34 = [v64 countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v34);
    }

    v54 = [obj count];
    if ([v64 count] || !v54)
    {
      [(USApplicationUsageMonitor *)selfCopy clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:v64 clearAll:v54 == 0];
    }

    v55 = [v61 copy];
    [(USApplicationUsageMonitor *)selfCopy setInUseApplicationEvents:v55];

    historicalHandler = [(_DKMonitor *)selfCopy historicalHandler];

    applicationsCopy = v59;
    inUseApplicationEvents = v60;
    if (historicalHandler)
    {
      historicalHandler2 = [(_DKMonitor *)selfCopy historicalHandler];
      (historicalHandler2)[2](historicalHandler2, v62);
    }

    [(USApplicationUsageMonitor *)selfCopy updateAppDataInContextStore];
    v10 = v58;
  }
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = USApplicationUsageMonitor;
  if ([(_DKMonitor *)&v6 instantMonitorNeedsActivation])
  {
    [(USApplicationUsageMonitor *)self platformSpecificStart];
    [(USApplicationUsageMonitor *)self obtainCurrentValue];
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __34__USApplicationUsageMonitor_start__block_invoke;
    v3[3] = &unk_279E098E0;
    objc_copyWeak(&v4, &location);
    [(_DKMonitor *)self setShutdownHandler:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __34__USApplicationUsageMonitor_start__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__USApplicationUsageMonitor_start__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__USApplicationUsageMonitor_start__block_invoke_43;
    block[3] = &unk_279E098B8;
    block[4] = v4;
    dispatch_sync(v5, block);
  }
}

void __34__USApplicationUsageMonitor_start__block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] set];
  v2 = [MEMORY[0x277CBEB98] set];
  [v1 updateInUseApplications:v3 activeApplications:v2];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = USApplicationUsageMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(USApplicationUsageMonitor *)self platformSpecificStop];
    [(_DKMonitor *)self setShutdownHandler:0];
  }
}

- (void)invalidateInstantState
{
  queue = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__USApplicationUsageMonitor_invalidateInstantState__block_invoke;
  block[3] = &unk_279E098B8;
  block[4] = self;
  dispatch_sync(queue, block);
}

+ (void)_eventWithBundleIdentifier:(os_log_t)log startDate:usageType:usageTrusted:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2707F8000, log, OS_LOG_TYPE_ERROR, "Failed to lookup LSApplicationRecord for app usage event with bundleID %@: %@", &v3, 0x16u);
}

+ (void)_eventWithBundleIdentifier:(uint64_t)a1 startDate:(NSObject *)a2 usageType:usageTrusted:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_2707F8000, a2, OS_LOG_TYPE_FAULT, "Failed to find app bundleID for app clip usage event with bundleID %@", &v2, 0xCu);
}

- (void)clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:(uint64_t)a1 clearAll:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2707F8000, a2, OS_LOG_TYPE_DEBUG, "Clearing app and media usage for bundleIDs: %@", &v2, 0xCu);
}

@end