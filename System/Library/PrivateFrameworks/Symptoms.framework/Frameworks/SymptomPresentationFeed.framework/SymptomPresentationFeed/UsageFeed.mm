@interface UsageFeed
- (BOOL)_rollUsageValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key subscriberTag:(unsigned int)tag;
- (BOOL)algosScoreToDateWithOptionsFor:(id)for nameKind:(id)kind startTime:(id)time options:(id)options reply:(id)reply;
- (BOOL)calendarUsageFor:(id)for nameKind:(id)kind dayResolution:(id)resolution daySlot:(unsigned __int16)slot weekSlot:(unsigned __int16)weekSlot reply:(id)reply;
- (BOOL)getNetworkDomainsOptions:(id)options reply:(id)reply;
- (BOOL)getUsageOption:(id)option reply:(id)reply;
- (BOOL)identifierForUUID:(id)d reply:(id)reply;
- (BOOL)networkBitmapsToDateWithOptionsFor:(id)for startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply;
- (BOOL)networkDomainsToDateWithOptionsFor:(id)for nameKind:(id)kind domainType:(unsigned __int16)type startTime:(id)time options:(id)options fetchProperties:(id)properties reply:(id)reply;
- (BOOL)networkDomainsToDateWithOptionsFor:(id)for nameKind:(id)kind domainType:(unsigned __int16)type startTime:(id)time options:(id)options reply:(id)reply;
- (BOOL)performNetworkDomainsActionWithOptions:(id)options reply:(id)reply;
- (BOOL)resetUsageDataFor:(id)for nameKind:(id)kind reply:(id)reply;
- (BOOL)setNetworkDomainsOptions:(id)options reply:(id)reply;
- (BOOL)setUsageOption:(id)option reply:(id)reply;
- (BOOL)typicalUsageFor:(id)for nameKind:(id)kind intervalKind:(unsigned int)intervalKind reply:(id)reply;
- (BOOL)usageToDateFor:(id)for nameKind:(id)kind reply:(id)reply;
- (BOOL)usageToDateWithOptionsFor:(id)for nameKind:(id)kind options:(id)options reply:(id)reply;
- (UsageFeed)initWithWorkspace:(id)workspace;
- (id)_calendarUsagePresentation:(id)presentation nameKind:(id)kind source:(id)source;
- (id)_composeLiveUsagePredicateWithNames:(id)names kind:(id)kind isProcNameKey:(BOOL)key isSweep:(BOOL *)sweep;
- (id)_composePredicateLineWithName:(id)name keyPath:(id)path isSweep:(BOOL *)sweep wantGeneric:(BOOL)generic gotGeneric:(BOOL *)gotGeneric;
- (id)_getUsageKeyWithProcess:(id)process bundleID:(id)d extension:(id)extension isProcNameKey:(BOOL)key showExtension:(BOOL)showExtension;
- (id)_performRollUp:(unsigned int)up andMetadata:(unsigned int)metadata from:(id)from until:(id)until;
- (id)_typicalUsagePresentation:(id)presentation nameKind:(id)kind source:(id)source;
- (id)_usagePresentationWithProcess:(id)process bundleID:(id)d extension:(id)extension source:(double *)source since:(id)since;
- (id)createEndpointEntryFrom:(id)from withKey:(id)key showDetails:(BOOL)details;
- (id)groupRecordsByBundleId:(id)id;
- (id)networkDomainInitiatedTypeString:(unsigned int)string;
- (uint64_t)_batchFetchLimitForDatabase;
- (void)__networkDomainsQueryDomains:(id)domains entityName:(id)name unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions accumulatedResults:(id)results aggregateProperty:(id)property predicate:(id)self0 altAggregateProperty:(id)self1 altPredicate:(id)self2 ipAggregateProperty:(id)self3 replyProcessBlock:(id)self4 callbackBlock:(id)self5;
- (void)__networkDomainsQuerySecondLevelViewDomains:(id)domains entityName:(id)name unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions viewPredicate:(id)predicate callbackBlock:(id)block;
- (void)__networkDomainsQueryWebsites:(id)websites entityName:(id)name verificationContext:(int64_t)context limit:(unint64_t)limit actions:(id)actions viewPredicate:(id)predicate callbackBlock:(id)block;
- (void)_batchFetchCallbackWithResults:(id)results logPrefix:(const char *)prefix entityName:(id)name pred:(id)pred service:(id)service limit:(unint64_t)limit offset:(unint64_t)offset container:(id)self0 actions:(id)self1 reply:(id)self2;
- (void)_legacyNetworkDomainsQueryOnService:(id)service entityName:(id)name pred:(id)pred limit:(unint64_t)limit actions:(id)actions options:(id)options postProcessingBlock:(id)block;
- (void)_networkDomainsQueryViewTypeApp:(id)app entityName:(id)name limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeAppDomains:(id)domains entityName:(id)name bundleIdentifier:(id)identifier unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeAppDomainsOtherContent:(id)content entityName:(id)name bundleIdentifier:(id)identifier unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeAppWebsites:(id)websites entityName:(id)name bundleIdentifier:(id)identifier verificationContext:(int64_t)context limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeDomain:(id)domain entityName:(id)name unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeDomainApps:(id)apps entityName:(id)name domain:(id)domain limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeDomainWebsites:(id)websites entityName:(id)name domain:(id)domain limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeWebsite:(id)website entityName:(id)name verificationContext:(int64_t)context limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeWebsiteApps:(id)apps entityName:(id)name website:(id)website limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeWebsiteDomains:(id)domains entityName:(id)name website:(id)website unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_networkDomainsQueryViewTypeWebsiteHits:(id)hits entityName:(id)name website:(id)website limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block;
- (void)_performNetDomainsQueryOnService:(id)service entityName:(id)name fetchProps:(id)props pred:(id)pred sort:(id)sort actions:(id)actions queryTimer:(id)timer replyProcessBlock:(id)self0 accumulatedResults:(id)self1 callbackBlock:(id)self2;
- (void)_processLiveUsageWithPredicate:(id)predicate attributesBlock:(id)block outcomeBlock:(id)outcomeBlock;
- (void)_processLiveUsageWithUsages:(id)usages attributesBlock:(id)block outcomeBlock:(id)outcomeBlock;
- (void)_rollValuesFrom:(id)from toDict:(id)dict;
- (void)_triggerAutoBugCaptureForSubType:(id)type subtypeContext:(id)context events:(id)events replyBlock:(id)block;
- (void)clearLoggingCounters;
- (void)dealloc;
- (void)displayLoggingCounters:(id)counters;
- (void)prepProcessDataFractionWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata from:(id)from until:(id)until pollInterval:(float)interval;
- (void)prepProcessDataFractionWithTag:(unsigned int)tag from:(id)from until:(id)until pollInterval:(float)interval;
@end

@implementation UsageFeed

- (void)clearLoggingCounters
{
  self->numAppended = 0;
  *&self->numRolledCellCounts = 0u;
  *&self->lastSubscriberTag = 0u;
}

- (uint64_t)_batchFetchLimitForDatabase
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.symptomframework.usagefeed"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 valueForKey:@"db_records_fetch_limit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v3 unsignedIntegerValue];
      v5 = usageLogHandle(unsignedIntegerValue);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = unsignedIntegerValue;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "++ Overriding database fetch limit to %ld", &v7, 0xCu);
      }
    }

    else
    {
      unsignedIntegerValue = 150;
    }
  }

  else
  {
    unsignedIntegerValue = 150;
  }

  return unsignedIntegerValue;
}

- (UsageFeed)initWithWorkspace:(id)workspace
{
  v15 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  v5 = usageLogHandle(workspaceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = workspaceCopy;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "> initWithWorkspace:%@", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = UsageFeed;
  v6 = [(UsageFeed *)&v12 init];
  if (v6)
  {
    if (workspaceCopy)
    {
      defaultWorkspace = workspaceCopy;
    }

    else
    {
      defaultWorkspace = [MEMORY[0x1E69D5130] defaultWorkspace];
    }

    workspace = v6->workspace;
    v6->workspace = defaultWorkspace;

    v9 = [objc_alloc(MEMORY[0x1E69D5198]) initWithWorkspace:v6->workspace withCache:0];
    handleAnalytics = v6->handleAnalytics;
    v6->handleAnalytics = v9;
  }

  return v6;
}

- (void)dealloc
{
  v3 = usageLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> dealloc", buf, 2u);
  }

  self->_delegate = 0;
  v4.receiver = self;
  v4.super_class = UsageFeed;
  [(UsageFeed *)&v4 dealloc];
}

- (void)_triggerAutoBugCaptureForSubType:(id)type subtypeContext:(id)context events:(id)events replyBlock:(id)block
{
  typeCopy = type;
  contextCopy = context;
  eventsCopy = events;
  blockCopy = block;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  v14 = objc_alloc_init(MEMORY[0x1E69D4F80]);
  v15 = v14;
  if (v14)
  {
    if (processName)
    {
      v16 = processName;
    }

    else
    {
      v16 = &stru_1F483F350;
    }

    v17 = [v14 signatureWithDomain:*MEMORY[0x1E69D4FC0] type:*MEMORY[0x1E69D50F8] subType:typeCopy subtypeContext:contextCopy detectedProcess:v16 triggerThresholdValues:0];
    [v15 snapshotWithSignature:v17 delay:eventsCopy events:0 payload:0 actions:blockCopy reply:0.0];
  }
}

- (void)displayLoggingCounters:(id)counters
{
  v26 = *MEMORY[0x1E69E9840];
  countersCopy = counters;
  v5 = usageLogHandle(countersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastSubscriberTag = self->lastSubscriberTag;
    lastSkippedTag = self->lastSkippedTag;
    numUnrolledCellCounts = self->numUnrolledCellCounts;
    numRolledCellCounts = self->numRolledCellCounts;
    numNewlyCreated = self->numNewlyCreated;
    numAppended = self->numAppended;
    v12 = 138413826;
    v13 = countersCopy;
    v14 = 1024;
    v15 = lastSubscriberTag;
    v16 = 1024;
    v17 = lastSkippedTag;
    v18 = 2048;
    v19 = numUnrolledCellCounts;
    v20 = 2048;
    v21 = numRolledCellCounts;
    v22 = 2048;
    v23 = numNewlyCreated;
    v24 = 2048;
    v25 = numAppended;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_INFO, "%@:  cell tag %u last skipped %u  counts: skipped %zu unskipped %zu  created %zu appended %zu", &v12, 0x40u);
  }
}

- (BOOL)_rollUsageValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key subscriberTag:(unsigned int)tag
{
  v114 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  toDictCopy = toDict;
  keyCopy = key;
  if (keyCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = [dictCopy valueForKey:@"wifiIN"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v90 = 0.0;
    v16 = 0;
    if (v15)
    {
      [v14 doubleValue];
    }

    v77 = v16;

    v17 = [dictCopy valueForKey:@"wifiOUT"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      v90 = v18;
    }

    v19 = [dictCopy valueForKey:@"tag"];
    v20 = v19;
    if (!tag || v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v20 unsignedIntValue]== tag)
    {
      v21 = [dictCopy valueForKey:{@"wwanIN", v77}];
      objc_opt_class();
      v82 = 0.0;
      v22 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        [v21 doubleValue];
        v22 = v23;
      }

      v24 = [dictCopy valueForKey:@"wwanOUT"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 doubleValue];
        v82 = v25;
      }

      v80 = 0.0;
      v84 = 0.0;
      v81 = 0.0;
      v85 = 0.0;
      v79 = 0.0;
      v83 = 0.0;
      if ((isKindOfClass & 1) == 0)
      {
        v26 = [dictCopy valueForKey:@"wwanIN_exp"];
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        v85 = 0.0;
        v28 = 0.0;
        if (v27)
        {
          [v26 doubleValue];
        }

        v81 = v28;

        v29 = [dictCopy valueForKey:@"wwanOUT_exp"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 doubleValue];
          v85 = v30;
        }

        v31 = [dictCopy valueForKey:@"xIN"];
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();
        v84 = 0.0;
        v33 = 0.0;
        if (v32)
        {
          [v31 doubleValue];
        }

        v80 = v33;

        v34 = [dictCopy valueForKey:@"xOUT"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v34 doubleValue];
          v84 = v35;
        }

        v36 = [dictCopy valueForKey:@"xIN_exp"];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();
        v83 = 0.0;
        v38 = 0.0;
        if (v37)
        {
          [v36 doubleValue];
        }

        v79 = v38;

        v39 = [dictCopy valueForKey:@"xOUT_exp"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 doubleValue];
          v83 = v40;
        }
      }

      ++self->numRolledCellCounts;
    }

    else
    {
      ++self->numUnrolledCellCounts;
      v22 = 0.0;
      v82 = 0.0;
      self->lastSkippedTag = [v20 unsignedIntValue];
      v80 = 0.0;
      v84 = 0.0;
      v81 = 0.0;
      v85 = 0.0;
      v79 = 0.0;
      v83 = 0.0;
    }

    v88 = 0.0;
    self->lastSubscriberTag = tag;
    v92 = 0.0;
    v86 = 0.0;
    v42 = 0.0;
    v89 = 0.0;
    v93 = 0.0;
    v87 = 0.0;
    v91 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    if ((isKindOfClass & 1) == 0)
    {
      v45 = [dictCopy valueForKey:@"wifiIN_exp"];
      objc_opt_class();
      v46 = objc_opt_isKindOfClass();
      v93 = 0.0;
      v47 = 0.0;
      if (v46)
      {
        [v45 doubleValue];
      }

      v89 = v47;

      v48 = [dictCopy valueForKey:@"wifiOUT_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v48 doubleValue];
        v93 = v49;
      }

      v50 = [dictCopy valueForKey:@"wiredIN"];
      objc_opt_class();
      v51 = objc_opt_isKindOfClass();
      v92 = 0.0;
      v52 = 0.0;
      if (v51)
      {
        [v50 doubleValue];
      }

      v88 = v52;

      v53 = [dictCopy valueForKey:@"wiredOUT"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v53 doubleValue];
        v92 = v54;
      }

      v55 = [dictCopy valueForKey:@"wiredIN_exp"];
      objc_opt_class();
      v56 = objc_opt_isKindOfClass();
      v91 = 0.0;
      v57 = 0.0;
      if (v56)
      {
        [v55 doubleValue];
      }

      v87 = v57;

      v58 = [dictCopy valueForKey:@"wiredOUT_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v58 doubleValue];
        v91 = v59;
      }

      v60 = [dictCopy valueForKey:@"btIN"];
      objc_opt_class();
      v61 = objc_opt_isKindOfClass();
      v62 = 0.0;
      if (v61)
      {
        [v60 doubleValue];
      }

      v86 = v62;

      v63 = [dictCopy valueForKey:@"btOUT"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v63 doubleValue];
        v42 = v64;
      }

      v65 = [dictCopy valueForKey:@"btIN_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v65 doubleValue];
        v43 = v66;
      }

      v67 = [dictCopy valueForKey:@"btOUT_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v67 doubleValue];
        v44 = v68;
      }
    }

    v69 = [toDictCopy objectForKey:keyCopy];
    v70 = v69;
    v41 = v69 == 0;
    if (v69)
    {
      bytes = [v69 bytes];
      v72.f64[0] = v78;
      v72.f64[1] = v90;
      *bytes = vaddq_f64(v72, *bytes);
      *(bytes + 16) = v22 + *(bytes + 16);
      v73.f64[0] = v82;
      v72.f64[0] = v93;
      v72.f64[1] = v81;
      *(bytes + 72) = vaddq_f64(v72, *(bytes + 72));
      v73.f64[1] = v88;
      *(bytes + 24) = vaddq_f64(v73, *(bytes + 24));
      v73.f64[0] = v85;
      v73.f64[1] = v87;
      *(bytes + 88) = vaddq_f64(v73, *(bytes + 88));
      v74 = v43 + *(bytes + 144);
      *(bytes + 136) = v42 + *(bytes + 136);
      *(bytes + 144) = v74;
      *(bytes + 152) = v44 + *(bytes + 152);
      v72.f64[0] = v92;
      v72.f64[1] = v80;
      *(bytes + 40) = vaddq_f64(v72, *(bytes + 40));
      v72.f64[0] = v91;
      v72.f64[1] = v79;
      *(bytes + 104) = vaddq_f64(v72, *(bytes + 104));
      v73.f64[0] = v84;
      v73.f64[1] = v89;
      *(bytes + 56) = vaddq_f64(v73, *(bytes + 56));
      v73.f64[0] = v83;
      v73.f64[1] = v86;
      *(bytes + 120) = vaddq_f64(v73, *(bytes + 120));
      ++self->numAppended;
    }

    else
    {
      *buf = v78;
      v95 = v90;
      v102 = v89;
      v103 = v93;
      v96 = v22;
      v97 = v82;
      v104 = v81;
      v105 = v85;
      v98 = v88;
      v99 = v92;
      v106 = v87;
      v107 = v91;
      v110 = v86;
      v111 = v42;
      v112 = v43;
      v113 = v44;
      v100 = v80;
      v101 = v84;
      v108 = v79;
      v109 = v83;
      v75 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:160];
      [toDictCopy setObject:v75 forKey:keyCopy];

      ++self->numNewlyCreated;
    }
  }

  else
  {
    v20 = usageLogHandle(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C85F9000, v20, OS_LOG_TYPE_ERROR, "Usage key cannot be nil", buf, 2u);
    }

    v41 = 0;
  }

  return v41;
}

- (void)_rollValuesFrom:(id)from toDict:(id)dict
{
  fromCopy = from;
  dictCopy = dict;
  hasProcess = [fromCopy hasProcess];
  bundleName = [hasProcess bundleName];
  hasProcess2 = [fromCopy hasProcess];
  v10 = hasProcess2;
  if (bundleName)
  {
    [hasProcess2 bundleName];
  }

  else
  {
    [hasProcess2 procName];
  }
  v11 = ;

  if (v11)
  {
    wifiIN = [dictCopy objectForKey:v11];
    if (!wifiIN)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      hasProcess3 = [fromCopy hasProcess];
      procName = [hasProcess3 procName];
      hasProcess4 = [fromCopy hasProcess];
      bundleName2 = [hasProcess4 bundleName];
      if (bundleName2)
      {
        hasProcess5 = [fromCopy hasProcess];
        bundleName3 = [hasProcess5 bundleName];
      }

      else
      {
        bundleName3 = [MEMORY[0x1E695DFB0] null];
        hasProcess5 = bundleName3;
      }

      hasProcess6 = [fromCopy hasProcess];
      bundleName4 = [hasProcess6 bundleName];
      if (bundleName4)
      {
        wifiIN = [v13 initWithObjectsAndKeys:{procName, @"procName", bundleName3, @"bundleName", 0}];
      }

      else
      {
        [MEMORY[0x1E695DFB0] null];
        v25 = v26 = hasProcess3;
        wifiIN = [v13 initWithObjectsAndKeys:{procName, @"procName", bundleName3, v25, 0}];

        hasProcess3 = v26;
      }

      if (bundleName2)
      {
      }

      [dictCopy setObject:wifiIN forKey:v11];
    }

    [(UsageFeed *)self _rollUsageValuesFromDict:fromCopy toDict:wifiIN forKey:@"data" subscriberTag:0];
  }

  else
  {
    wifiIN = [fromCopy wifiIN];
    wifiOUT = [fromCopy wifiOUT];
    wwanIN = [fromCopy wwanIN];
    wwanOUT = [fromCopy wwanOUT];
    wiredIN = [fromCopy wiredIN];
    wiredOUT = [fromCopy wiredOUT];
    NSLog(&cfstr_UnableToRollUp.isa, wifiIN, wifiOUT, wwanIN, wwanOUT, wiredIN, wiredOUT);
  }
}

- (id)_performRollUp:(unsigned int)up andMetadata:(unsigned int)metadata from:(id)from until:(id)until
{
  v7 = *&metadata;
  v8 = *&up;
  v29 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  untilCopy = until;
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v23 = fromCopy;
  v13 = [(UsageAnalytics *)self->handleAnalytics usageMarkersWithTag:v8 andMetadata:v7 fromDate:fromCopy untilDate:untilCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        kind = [v18 kind];
        intValue = [kind intValue];

        if (!intValue)
        {
          [(UsageFeed *)self _rollValuesFrom:v18 toDict:v12];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  allValues = [v12 allValues];

  return allValues;
}

- (id)_composePredicateLineWithName:(id)name keyPath:(id)path isSweep:(BOOL *)sweep wantGeneric:(BOOL)generic gotGeneric:(BOOL *)gotGeneric
{
  genericCopy = generic;
  nameCopy = name;
  pathCopy = path;
  v13 = [nameCopy count];
  *sweep = 0;
  *gotGeneric = 0;
  if (nameCopy && v13)
  {
    v14 = MEMORY[0x1E696AE18];
    if (v13 == 1)
    {
      if (genericCopy)
      {
        pathCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == $targetname", pathCopy];
        *gotGeneric = 1;
      }

      else
      {
        anyObject = [nameCopy anyObject];
        pathCopy = [v14 predicateWithFormat:@"%K == %@", pathCopy, anyObject];
      }
    }

    else
    {
      pathCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", pathCopy, nameCopy];
    }
  }

  else
  {
    pathCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", pathCopy];
    *sweep = 1;
  }

  return pathCopy;
}

- (id)_composeLiveUsagePredicateWithNames:(id)names kind:(id)kind isProcNameKey:(BOOL)key isSweep:(BOOL *)sweep
{
  keyCopy = key;
  namesCopy = names;
  kind = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasProcess.%@", kind];
  if (namesCopy && [namesCopy count])
  {
    if (keyCopy)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasProcess.%@", @"bundleName"];
      namesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K IN %@) OR (%K IN %@)", kind, namesCopy, v11, namesCopy];
    }

    else
    {
      namesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", kind, namesCopy];
    }

    v13 = 0;
  }

  else
  {
    namesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", kind];
    v13 = 1;
  }

  *sweep = v13;

  return namesCopy;
}

- (id)_usagePresentationWithProcess:(id)process bundleID:(id)d extension:(id)extension source:(double *)source since:(id)since
{
  processCopy = process;
  dCopy = d;
  extensionCopy = extension;
  sinceCopy = since;
  v29 = MEMORY[0x1E695DF20];
  if (processCopy)
  {
    null2 = @"procName";
    null = processCopy;
    if (dCopy)
    {
LABEL_3:
      null4 = @"bundleName";
      null3 = dCopy;
      goto LABEL_6;
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    null2 = [MEMORY[0x1E695DFB0] null];
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  null3 = [MEMORY[0x1E695DFB0] null];
  null4 = [MEMORY[0x1E695DFB0] null];
LABEL_6:
  v31 = dCopy;
  v48 = sinceCopy;
  v28 = extensionCopy;
  if (extensionCopy)
  {
    null6 = @"extensionName";
    null5 = extensionCopy;
  }

  else
  {
    null5 = [MEMORY[0x1E695DFB0] null];
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:*source];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:source[1]];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:source[8]];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:source[9]];
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:source[16]];
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:source[17]];
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:source[2]];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:source[3]];
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:source[10]];
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:source[11]];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:source[4]];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:source[5]];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:source[12]];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:source[13]];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:source[6]];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:source[7]];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:source[14]];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:source[15]];
  v30 = [v29 dictionaryWithObjectsAndKeys:{null, null2, null3, null4, null5, null6, v27, @"wifiInBytes", v26, @"wifiOutBytes", v47, @"wifiExpInBytes", v46, @"wifiExpOutBytes", v45, @"btInBytes", v44, @"btOutBytes", v43, @"wwanInBytes", v25, @"wwanOutBytes", v42, @"wwanExpInBytes", v41, @"wwanExpOutBytes", v40, @"wiredInBytes", v39, @"wiredOutBytes", v38, @"wiredExpInBytes", v15, @"wiredExpOutBytes", v24, @"awdlInBytes", v16, @"awdlOutBytes", v17, @"awdlExpInBytes", v18, @"awdlExpOutBytes", v19, @"expensiveInBytes", v23, @"expensiveOutBytes", v20, @"expensiveExpInBytes", v21, @"expensiveExpOutBytes", v48, @"sinceTime", 0}];

  if (!v28)
  {
  }

  if (v31)
  {
    if (processCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (processCopy)
    {
      goto LABEL_13;
    }
  }

LABEL_13:

  return v30;
}

- (id)_getUsageKeyWithProcess:(id)process bundleID:(id)d extension:(id)extension isProcNameKey:(BOOL)key showExtension:(BOOL)showExtension
{
  showExtensionCopy = showExtension;
  keyCopy = key;
  processCopy = process;
  dCopy = d;
  extensionCopy = extension;
  v14 = extensionCopy;
  if (extensionCopy)
  {
    v15 = dCopy;
  }

  else
  {
    v15 = processCopy;
  }

  if (!keyCopy)
  {
    v15 = dCopy;
  }

  if (extensionCopy)
  {
    v16 = extensionCopy;
  }

  else
  {
    v16 = dCopy;
  }

  if (keyCopy)
  {
    v16 = processCopy;
  }

  if (showExtensionCopy)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v17;
}

- (void)_processLiveUsageWithUsages:(id)usages attributesBlock:(id)block outcomeBlock:(id)outcomeBlock
{
  v26 = *MEMORY[0x1E69E9840];
  obj = usages;
  blockCopy = block;
  outcomeBlockCopy = outcomeBlock;
  v9 = outcomeBlockCopy;
  if (blockCopy && outcomeBlockCopy)
  {
    v19 = outcomeBlockCopy;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"hasProcess.procName"];
          v16 = [v14 objectForKeyedSubscript:@"hasProcess.bundleName"];
          v17 = [v14 objectForKeyedSubscript:@"hasProcess.extensionName"];
          v18 = [v14 objectForKeyedSubscript:@"hasProcess.firstTimeStamp"];
          blockCopy[2](blockCopy, v14, v15, v16, v17, v18);
        }

        v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v9 = v19;
    v19[2](v19);
  }
}

- (void)_processLiveUsageWithPredicate:(id)predicate attributesBlock:(id)block outcomeBlock:(id)outcomeBlock
{
  v38 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  blockCopy = block;
  outcomeBlockCopy = outcomeBlock;
  v11 = outcomeBlockCopy;
  if (blockCopy && outcomeBlockCopy)
  {
    v30 = outcomeBlockCopy;
    v12 = objc_alloc(MEMORY[0x1E69D5150]);
    workspace = self->workspace;
    entityName = [MEMORY[0x1E69D5140] entityName];
    v15 = [v12 initWithWorkspace:workspace entityName:entityName withCache:0];

    v29 = v15;
    v31 = predicateCopy;
    v16 = [v15 fetchEntitiesFreeForm:predicateCopy sortDesc:0];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v32 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          hasProcess = [v20 hasProcess];
          procName = [hasProcess procName];

          hasProcess2 = [v20 hasProcess];
          bundleName = [hasProcess2 bundleName];

          hasProcess3 = [v20 hasProcess];
          extensionName = [hasProcess3 extensionName];

          hasProcess4 = [v20 hasProcess];
          firstTimeStamp = [hasProcess4 firstTimeStamp];

          blockCopy[2](blockCopy, v16, procName, bundleName, extensionName, firstTimeStamp);
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    v11 = v30;
    v30[2](v30);

    predicateCopy = v31;
  }
}

- (id)_typicalUsagePresentation:(id)presentation nameKind:(id)kind source:(id)source
{
  v28 = MEMORY[0x1E695DF20];
  sourceCopy = source;
  kindCopy = kind;
  presentationCopy = presentation;
  v25 = [sourceCopy valueForKey:@"wifiIN"];
  v24 = [sourceCopy valueForKey:@"wifiIN_mean"];
  v23 = [sourceCopy valueForKey:@"wifiIN_var"];
  v22 = [sourceCopy valueForKey:@"wifiOUT"];
  v51 = [sourceCopy valueForKey:@"wifiOUT_mean"];
  v21 = [sourceCopy valueForKey:@"wifiOUT_var"];
  v50 = [sourceCopy valueForKey:@"btIN"];
  v20 = [sourceCopy valueForKey:@"btOUT"];
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v45 = [sourceCopy valueForKey:@"wiredIN"];
  v44 = [sourceCopy valueForKey:@"wiredIN_mean"];
  v43 = [sourceCopy valueForKey:@"wiredIN_var"];
  v42 = [sourceCopy valueForKey:@"wiredOUT"];
  v41 = [sourceCopy valueForKey:@"wiredOUT_mean"];
  v40 = [sourceCopy valueForKey:@"wiredOUT_var"];
  v39 = [sourceCopy valueForKey:@"wwanIN"];
  v38 = [sourceCopy valueForKey:@"wwanIN_mean"];
  v37 = [sourceCopy valueForKey:@"wwanIN_var"];
  v36 = [sourceCopy valueForKey:@"wwanOUT"];
  v35 = [sourceCopy valueForKey:@"wwanOUT_mean"];
  v34 = [sourceCopy valueForKey:@"wwanOUT_var"];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v17 = [sourceCopy valueForKey:@"firstTimeStamp"];
  v14 = [sourceCopy valueForKey:@"timeStamp"];
  v13 = [sourceCopy valueForKey:@"wifiSampleCount"];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v11 = [sourceCopy valueForKey:@"wiredSampleCount"];
  v10 = [sourceCopy valueForKey:@"wwanSampleCount"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v29 = [v28 dictionaryWithObjectsAndKeys:{presentationCopy, kindCopy, v25, @"wifiInBytes", v24, @"wifiInBytesMean", v23, @"wifiInBytesVar", v22, @"wifiOutBytes", v51, @"wifiOutBytesMean", v21, @"wifiOutBytesVar", v50, @"btInBytes", v20, @"btOutBytes", v49, @"wiredInBytes", v19, @"wiredInBytesMean", v48, @"wiredInBytesVar", v18, @"wiredOutBytes", v47, @"wiredOutBytesMean", v46, @"wiredOutBytesVar", v45, @"awdlInBytes", v44, @"awdlInBytesMean", v43, @"awdlInBytesVar", v42, @"awdlOutBytes", v41, @"awdlOutBytesMean", v40, @"awdlOutBytesVar", v39, @"wwanInBytes", v38, @"wwanInBytesMean", v37, @"wwanInBytesVar", v36, @"wwanOutBytes", v35, @"wwanOutBytesMean", v34, @"wwanOutBytesVar", v33, @"expensiveInBytes", v32, @"expensiveInBytesMean", v31, @"expensiveInBytesVar", v30}];

  return v29;
}

- (id)_calendarUsagePresentation:(id)presentation nameKind:(id)kind source:(id)source
{
  v20 = MEMORY[0x1E695DF20];
  sourceCopy = source;
  kindCopy = kind;
  presentationCopy = presentation;
  v19 = [sourceCopy valueForKey:@"timeOfDaySlot"];
  v18 = [sourceCopy valueForKey:@"dayOfWeek"];
  v10 = [sourceCopy valueForKey:@"tier1"];
  v17 = [sourceCopy valueForKey:@"tier2"];
  v11 = [sourceCopy valueForKey:@"tier3"];
  v12 = [sourceCopy valueForKey:@"tier4"];
  v13 = [sourceCopy valueForKey:@"firstTimeStamp"];
  v14 = [sourceCopy valueForKey:@"timeStamp"];

  v15 = [v20 dictionaryWithObjectsAndKeys:{presentationCopy, kindCopy, v19, @"daySlot", v18, @"weekSlot", v10, @"tier1", v17, @"tier2", v11, @"tier3", v12, @"tier4", v13, @"sinceTime", v14, @"lastTime", 0}];

  return v15;
}

- (void)_batchFetchCallbackWithResults:(id)results logPrefix:(const char *)prefix entityName:(id)name pred:(id)pred service:(id)service limit:(unint64_t)limit offset:(unint64_t)offset container:(id)self0 actions:(id)self1 reply:(id)self2
{
  v52 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  nameCopy = name;
  predCopy = pred;
  serviceCopy = service;
  containerCopy = container;
  actionsCopy = actions;
  replyCopy = reply;
  v23 = replyCopy;
  if (resultsCopy)
  {
    [containerCopy addObjectsFromArray:resultsCopy];
  }

  else
  {
    v24 = usageLogHandle(replyCopy);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      prefixCopy4 = prefix;
      v46 = 2112;
      v47 = nameCopy;
      _os_log_impl(&dword_1C85F9000, v24, OS_LOG_TYPE_DEFAULT, "%s: [%@] Received nil results array for the callback", buf, 0x16u);
    }
  }

  v25 = [resultsCopy count];
  if (v25 >= limit)
  {
    limit = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:offset + limit];
    [actionsCopy setObject:limit forKeyedSubscript:*MEMORY[0x1E69D52A8]];

    v30 = usageLogHandle(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [resultsCopy count];
      *buf = 136315906;
      prefixCopy4 = prefix;
      v46 = 2112;
      v47 = nameCopy;
      v48 = 2048;
      v49 = v31;
      v50 = 2048;
      v51 = offset + limit;
      _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_DEFAULT, "%s: [%@] Fetched records in this batch %lu, starting next batch from offset %lu", buf, 0x2Au);
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __115__UsageFeed__batchFetchCallbackWithResults_logPrefix_entityName_pred_service_limit_offset_container_actions_reply___block_invoke;
    v34[3] = &unk_1E83193C8;
    v34[4] = self;
    prefixCopy3 = prefix;
    v35 = nameCopy;
    v36 = predCopy;
    v37 = serviceCopy;
    limitCopy = limit;
    v43 = offset + limit;
    v38 = containerCopy;
    v39 = actionsCopy;
    v40 = v23;
    [v37 performQueryOnEntity:v35 pred:v36 sort:0 actions:v39 reply:v34];
  }

  else
  {
    v26 = usageLogHandle(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [resultsCopy count];
      *buf = 136315650;
      prefixCopy4 = prefix;
      v46 = 2112;
      v47 = nameCopy;
      v48 = 2048;
      v49 = v27;
      _os_log_impl(&dword_1C85F9000, v26, OS_LOG_TYPE_DEFAULT, "%s: [%@] Fetched records in last batch %lu, no more fetches left", buf, 0x20u);
    }

    if (v23)
    {
      (v23)[2](v23, containerCopy, 0);
    }
  }
}

- (void)prepProcessDataFractionWithTag:(unsigned int)tag from:(id)from until:(id)until pollInterval:(float)interval
{
  v8 = *&tag;
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  untilCopy = until;
  v12 = usageLogHandle(untilCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = 67109890;
    v14[1] = v8;
    v15 = 2112;
    v16 = fromCopy;
    v17 = 2112;
    v18 = untilCopy;
    v19 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_1C85F9000, v12, OS_LOG_TYPE_DEBUG, "> prepProcessDataFractionWithTag:%d from:%@ until:%@ pollInterval:%.2lf", v14, 0x26u);
  }

  *&v13 = interval;
  [(UsageFeed *)self prepProcessDataFractionWithTag:v8 andMetadata:0 from:fromCopy until:untilCopy pollInterval:v13];
}

- (void)prepProcessDataFractionWithTag:(unsigned int)tag andMetadata:(unsigned int)metadata from:(id)from until:(id)until pollInterval:(float)interval
{
  v9 = *&metadata;
  v10 = *&tag;
  v29 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  untilCopy = until;
  v14 = usageLogHandle(untilCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110146;
    v20 = v10;
    v21 = 1024;
    v22 = v9;
    v23 = 2112;
    v24 = fromCopy;
    v25 = 2112;
    v26 = untilCopy;
    v27 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "> prepProcessDataFractionWithTag:%d andMetadata:%d from:%@ until:%@ pollInterval:%.2lf", buf, 0x2Cu);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];

  if (!connection)
  {
    v16 = [(UsageFeed *)self _performRollUp:v10 andMetadata:v9 from:fromCopy until:untilCopy];
    processFeedData = self->_processFeedData;
    self->_processFeedData = v16;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__UsageFeed_prepProcessDataFractionWithTag_andMetadata_from_until_pollInterval___block_invoke;
    block[3] = &unk_1E8318E78;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __80__UsageFeed_prepProcessDataFractionWithTag_andMetadata_from_until_pollInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v7 = usageLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "delegate callback newFeedProcessData:", v9, 2u);
      }

      v8 = [*(a1 + 32) delegate];
      [v8 performSelector:sel_newFeedProcessData_ withObject:*(a1 + 32)];
    }
  }
}

- (BOOL)networkBitmapsToDateWithOptionsFor:(id)for startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply
{
  v39 = *MEMORY[0x1E69E9840];
  forCopy = for;
  optionsCopy = options;
  replyCopy = reply;
  v15 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413314;
    v30 = forCopy;
    v31 = 2048;
    timeCopy2 = time;
    v33 = 2048;
    endTimeCopy2 = endTime;
    v35 = 2112;
    v36 = optionsCopy;
    v37 = 2048;
    v38 = v16;
    _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "> networkBitmapsToDateWithOptionsFor:%@ startTime:%llu endTime:%llu options:%@ reply:%p", buf, 0x34u);
  }

  if (replyCopy)
  {
    if (time == -1 || endTime > time && endTime - time > 7)
    {
      connection = [(AnalyticsWorkspace *)self->workspace connection];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke;
      v27[3] = &unk_1E8318D20;
      v18 = replyCopy;
      v28 = v18;
      v19 = [connection remoteObjectProxyWithErrorHandler:v27];

      v21 = v19 != 0;
      if (v19)
      {
        v22 = usageLogHandle(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v30 = forCopy;
          v31 = 2048;
          timeCopy2 = time;
          v33 = 2048;
          endTimeCopy2 = endTime;
          v35 = 2112;
          v36 = optionsCopy;
          _os_log_impl(&dword_1C85F9000, v22, OS_LOG_TYPE_DEBUG, "getNetworkBitmapsWithNames:%@ startTime:%llu endTime:%llu options:%@", buf, 0x2Au);
        }

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke_406;
        v25[3] = &unk_1E8318D98;
        v26 = v18;
        [v19 getNetworkBitmapsWithNames:forCopy startTime:time endTime:endTime options:optionsCopy reply:v25];
      }

      v23 = v28;
    }

    else
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v23);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for networkBitmapsToDateWithOptionsFor:startTime:endTime:options:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke_406(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = usageLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "getNetworkBitmapsWithNames:startTime:endTime:options:reply: received callback with error:%@ outcome:%@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)usageToDateFor:(id)for nameKind:(id)kind reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  replyCopy = reply;
  v11 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](replyCopy);
    v15 = 138412802;
    v16 = forCopy;
    v17 = 2112;
    v18 = kindCopy;
    v19 = 2048;
    v20 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> usageToDateFor:%@ nameKind:%@ reply:%p", &v15, 0x20u);
  }

  v13 = [(UsageFeed *)self usageToDateWithOptionsFor:forCopy nameKind:kindCopy options:0 reply:replyCopy];
  return v13;
}

- (BOOL)usageToDateWithOptionsFor:(id)for nameKind:(id)kind options:(id)options reply:(id)reply
{
  v118 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  optionsCopy = options;
  replyCopy = reply;
  v14 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413058;
    v111 = forCopy;
    v112 = 2112;
    v113 = kindCopy;
    v114 = 2112;
    v115 = optionsCopy;
    v116 = 2048;
    v117 = v15;
    _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "> usageToDateWithOptionsFor:%@ nameKind:%@ options:%@ reply:%p", buf, 0x2Au);
  }

  v16 = [kindCopy isEqualToString:@"procName"];
  v17 = [kindCopy isEqualToString:@"bundleName"];
  if ((v16 & 1) != 0 || v17)
  {
    v109 = 0;
    v19 = [(UsageFeed *)self _composeLiveUsagePredicateWithNames:forCopy kind:kindCopy isProcNameKey:v16 isSweep:&v109];
    v18 = v19 != 0;
    if (!v19)
    {
LABEL_36:

      goto LABEL_37;
    }

    [(UsageFeed *)self clearLoggingCounters];
    v73 = replyCopy;
    v74 = forCopy;
    v71 = optionsCopy;
    v69 = v19;
    if (optionsCopy)
    {
      v20 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D53A8]];
      v21 = v20;
      if (v20)
      {
        bOOLValue = [v20 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v23 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D53B0]];
      v24 = v23;
      if (v23)
      {
        unsignedIntValue = [v23 unsignedIntValue];
      }

      else
      {
        unsignedIntValue = 0;
      }

      v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5298]];
      v26 = v25;
      if (v25)
      {
        bOOLValue2 = [v25 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }
    }

    else
    {
      unsignedIntValue = 0;
      bOOLValue2 = 0;
      bOOLValue = 0;
    }

    v68 = v18;
    v75 = objc_alloc(MEMORY[0x1E695DF90]);
    v27 = MEMORY[0x1E69D5208];
    v28 = v109;
    v29 = MEMORY[0x1E69D53B8];
    if (v109 == 1)
    {
      null = *MEMORY[0x1E69D53B8];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      if ((v109 & 1) == 0)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v32 = 0;
        goto LABEL_24;
      }
    }

    null2 = *v29;
    v32 = 1;
LABEL_24:
    v33 = *v27;
    if (bOOLValue)
    {
      v70 = [v75 initWithObjectsAndKeys:{v33, @"hasProcess.firstTimeStamp", v33, @"hasProcess.procName", v33, @"hasProcess.bundleName", v33, @"hasProcess.extensionName", null, null2, *MEMORY[0x1E69D53A8], *MEMORY[0x1E69D53A8], 0}];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      null4 = [MEMORY[0x1E695DFB0] null];
      v70 = [v75 initWithObjectsAndKeys:{v33, @"hasProcess.firstTimeStamp", v33, @"hasProcess.procName", v33, @"hasProcess.bundleName", v33, @"hasProcess.extensionName", null, null2, null3, null4, 0}];
    }

    if ((v32 & 1) == 0)
    {
    }

    v72 = kindCopy;
    if ((v28 & 1) == 0)
    {
    }

    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke;
    v107[3] = &unk_1E8318D20;
    v37 = v73;
    v108 = v37;
    v76 = [connection remoteObjectProxyWithErrorHandler:v107];

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_408;
    v96[3] = &unk_1E8319410;
    v96[4] = self;
    v105 = v16;
    v106 = bOOLValue2;
    v97 = v74;
    v98 = kindCopy;
    optionsCopy = v71;
    v99 = v71;
    v42 = v38;
    v100 = v42;
    v104 = unsignedIntValue;
    v43 = v41;
    v101 = v43;
    v44 = v39;
    v102 = v44;
    v45 = v40;
    v103 = v45;
    v46 = MEMORY[0x1CCA78840](v96);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_446;
    v87[3] = &unk_1E8319460;
    v67 = v42;
    v88 = v67;
    selfCopy = self;
    selfCopy2 = self;
    v94 = v16;
    v48 = v44;
    v90 = v48;
    v95 = bOOLValue2;
    v49 = v45;
    v91 = v49;
    v50 = v43;
    v92 = v50;
    v93 = v37;
    v51 = MEMORY[0x1CCA78840](v87);
    v52 = v51;
    v65 = v48;
    if (v76)
    {
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      LimitFor = [(UsageFeed *)selfCopy2 _batchFetchLimitForDatabase];
      entityName = [MEMORY[0x1E69D5140] entityName];
      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:LimitFor];
      [v70 setObject:v57 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      [v70 setObject:v58 forKeyedSubscript:*MEMORY[0x1E69D52A8]];

      v60 = usageLogHandle(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v111 = v69;
        v112 = 2112;
        v113 = v70;
        _os_log_impl(&dword_1C85F9000, v60, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:LiveUsage pred:%@ sort:nil actions:%@", buf, 0x16u);
      }

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_449;
      v77[3] = &unk_1E83194B0;
      v77[4] = selfCopy2;
      v78 = entityName;
      v79 = v69;
      v85 = LimitFor;
      v86 = 0;
      v80 = v76;
      v81 = v63;
      v82 = v70;
      v83 = v46;
      v84 = v52;
      v61 = v63;
      v62 = entityName;
      [v80 performQueryOnEntity:v62 pred:v79 sort:0 actions:v82 reply:v77];

      v19 = v69;
      forCopy = v74;
      optionsCopy = v71;
    }

    else
    {
      v53 = usageLogHandle(v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C85F9000, v53, OS_LOG_TYPE_DEBUG, "nil XPC service (local query)", buf, 2u);
      }

      [(UsageFeed *)selfCopy2 displayLoggingCounters:@"usageToDateWithOptionsFor: service was nil"];
      v19 = v69;
      [(UsageFeed *)selfCopy2 _processLiveUsageWithPredicate:v69 attributesBlock:v46 outcomeBlock:v52];
      forCopy = v74;
    }

    kindCopy = v72;
    replyCopy = v73;
    v18 = v68;

    goto LABEL_36;
  }

  v18 = 0;
LABEL_37:

  return v18;
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for usageToDateWithOptionsFor:nameKind:kind:options:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_408(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [*(a1 + 32) _getUsageKeyWithProcess:v12 bundleID:v13 extension:v14 isProcNameKey:*(a1 + 100) showExtension:*(a1 + 101)];
  if (!v16)
  {
    v20 = usageLogHandle(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 100);
      v22 = *(a1 + 101);
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      *buf = 138479619;
      v56 = v12;
      v57 = 2113;
      v58 = v13;
      v59 = 2113;
      v60 = v14;
      v61 = 1024;
      v62 = v21;
      v63 = 1024;
      v64 = v22;
      v65 = 2113;
      v66 = v23;
      v67 = 2112;
      v68 = v24;
      v69 = 2112;
      v70 = v25;
      _os_log_impl(&dword_1C85F9000, v20, OS_LOG_TYPE_ERROR, "Usage key should not be nil: process=%{private}@, bundleID=%{private}@, extension=%{private}@, isProcNameKey=%d, showExtension=%d (names=%{private}@, kind=%@, opt=%@)", buf, 0x4Au);
    }

    v52[0] = @"process";
    v26 = v12;
    if (!v12)
    {
      v26 = [MEMORY[0x1E695DFB0] null];
    }

    v43 = v26;
    v53[0] = v26;
    v52[1] = @"bundleID";
    v27 = v13;
    if (!v13)
    {
      v27 = [MEMORY[0x1E695DFB0] null];
    }

    v42 = v27;
    v53[1] = v27;
    v52[2] = @"extension";
    v28 = v14;
    if (!v14)
    {
      v28 = [MEMORY[0x1E695DFB0] null];
    }

    v46 = v15;
    v41 = v28;
    v53[2] = v28;
    v52[3] = @"isProcNameKey";
    v45 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 100)];
    v53[3] = v45;
    v52[4] = @"showExtension";
    v44 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 101)];
    v53[4] = v44;
    v52[5] = @"SPI parameters";
    v50[0] = @"names";
    v29 = [*(a1 + 40) allObjects];
    v30 = v29;
    if (!v29)
    {
      v29 = [MEMORY[0x1E695DFB0] null];
    }

    v47 = v13;
    v40 = v29;
    v51[0] = v29;
    v50[1] = @"kind";
    v31 = *(a1 + 48);
    v32 = v31;
    if (!v31)
    {
      v32 = [MEMORY[0x1E695DFB0] null];
    }

    v48 = v12;
    v49 = v11;
    v38 = v32;
    v51[1] = v32;
    v50[2] = @"options";
    v33 = *(a1 + 56);
    v34 = v33;
    if (!v33)
    {
      v34 = [MEMORY[0x1E695DFB0] null];
    }

    v51[2] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:{3, v38}];
    v53[5] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:6];
    v54 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];

    if (!v33)
    {
    }

    v12 = v48;
    if (!v31)
    {
    }

    v13 = v47;
    if (!v30)
    {
    }

    v15 = v46;
    if (v14)
    {
      if (v47)
      {
        goto LABEL_34;
      }
    }

    else
    {

      if (v47)
      {
LABEL_34:
        if (v48)
        {
LABEL_35:
          [*(a1 + 32) _triggerAutoBugCaptureForSubType:@"Network usage key is nil" subtypeContext:@"usageToDateWithOptionsFor" events:v37 replyBlock:&__block_literal_global_1];

          v11 = v49;
          goto LABEL_36;
        }

LABEL_39:

        goto LABEL_35;
      }
    }

    if (v48)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  [*(a1 + 32) _rollUsageValuesFromDict:v11 toDict:*(a1 + 64) forKey:v16 subscriberTag:*(a1 + 96)];
  if (v15)
  {
    v17 = [*(a1 + 72) objectForKeyedSubscript:v16];

    if (!v17)
    {
      [*(a1 + 72) setObject:v15 forKeyedSubscript:v16];
    }
  }

  if (v13)
  {
    v18 = [*(a1 + 80) objectForKeyedSubscript:v16];

    if (!v18)
    {
      [*(a1 + 80) setObject:v13 forKeyedSubscript:v16];
    }
  }

  if (v14)
  {
    if (*(a1 + 101))
    {
      v19 = [*(a1 + 88) objectForKeyedSubscript:v16];

      if (!v19)
      {
        [*(a1 + 88) setObject:v14 forKeyedSubscript:v16];
      }
    }
  }

LABEL_36:
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_443(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = usageLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEFAULT, "Usage key is nil. ABC response: %@", &v4, 0xCu);
  }
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_446(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2;
  v10[3] = &unk_1E8319438;
  v14 = *(a1 + 80);
  v9 = *(a1 + 40);
  v4 = *(&v9 + 1);
  v15 = *(a1 + 81);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = v2;
  v8 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v10];
  (*(*(a1 + 72) + 16))();
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = [a3 bytes];
  if (*(a1 + 72))
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) objectForKeyedSubscript:?];
  v9 = *(a1 + 73);
  if (v9 == 1)
  {
    v10 = [*(a1 + 48) objectForKeyedSubscript:v13];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 56) objectForKeyedSubscript:v13];
  v12 = [v7 _usagePresentationWithProcess:v6 bundleID:v8 extension:v10 source:v5 since:v11];

  if (v9)
  {
  }

  [*(a1 + 64) addObject:v12];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_449(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2_451;
  v12[3] = &unk_1E8319488;
  v12[4] = v3;
  v13 = v9;
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  [v3 _batchFetchCallbackWithResults:a2 logPrefix:"Usage" entityName:v4 pred:v5 service:v6 limit:v7 offset:v8 container:v13 actions:v10 reply:v12];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2_451(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134218242;
    v6 = [v3 count];
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with %lu usages:%@", &v5, 0x16u);
  }

  [*(a1 + 32) displayLoggingCounters:@"usageToDateWithOptionsFor: service non-nil"];
  [*(a1 + 32) _processLiveUsageWithUsages:*(a1 + 40) attributesBlock:*(a1 + 48) outcomeBlock:*(a1 + 56)];
}

- (BOOL)typicalUsageFor:(id)for nameKind:(id)kind intervalKind:(unsigned int)intervalKind reply:(id)reply
{
  v88 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  replyCopy = reply;
  v13 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413058;
    v81 = forCopy;
    v82 = 2112;
    v83 = kindCopy;
    v84 = 1024;
    intervalKindCopy = intervalKind;
    v86 = 2048;
    v87 = v14;
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "> typicalUsageFor:%@ nameKind:%@ intervalKind:%d reply:%p", buf, 0x26u);
  }

  v78 = 0;
  v15 = [kindCopy isEqualToString:@"bundleName"];
  v16 = 0;
  if (!intervalKind && v15)
  {
    [(UsageFeed *)self clearLoggingCounters];
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (forCopy)
    {
      v18 = [forCopy count] == 1;
    }

    else
    {
      v18 = 0;
    }

    v77 = 0;
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %lu", @"intervalType", 0];
    v20 = [(UsageFeed *)self _composePredicateLineWithName:forCopy keyPath:@"hasApp.bundleName" isSweep:&v78 wantGeneric:v18 gotGeneric:&v77];
    v21 = v20;
    if (v19)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    v16 = !v22;
    if (v22)
    {
LABEL_43:

      goto LABEL_44;
    }

    v63 = v16;
    v65 = kindCopy;
    v68 = forCopy;
    v62 = v19;
    [v17 addObject:v19];
    v61 = v21;
    [v17 addObject:v21];
    v64 = v17;
    v66 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v17];
    v23 = MEMORY[0x1E69D5208];
    v59 = MEMORY[0x1E695DF20];
    v24 = v78;
    v25 = MEMORY[0x1E69D53B8];
    v67 = replyCopy;
    if (v78 == 1)
    {
      null = *MEMORY[0x1E69D53B8];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      if ((v78 & 1) == 0)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v28 = 0;
        goto LABEL_20;
      }
    }

    null2 = *v25;
    v28 = 1;
LABEL_20:
    v29 = *v23;
    forCopy = v68;
    if (v77 == 1)
    {
      [v68 anyObject];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v30 = ;
    v31 = v30;
    if (v77 == 1)
    {
      v32 = [v59 dictionaryWithObjectsAndKeys:{v29, @"hasApp.bundleName", null, null2, v30, *MEMORY[0x1E69D5360], 0}];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v32 = [v59 dictionaryWithObjectsAndKeys:{v29, @"hasApp.bundleName", null, null2, v31, null3, 0}];
    }

    if ((v28 & 1) == 0)
    {
    }

    if ((v24 & 1) == 0)
    {
    }

    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke;
    v75[3] = &unk_1E8318D20;
    replyCopy = v67;
    v35 = v67;
    v76 = v35;
    v36 = [connection remoteObjectProxyWithErrorHandler:v75];

    if (v36)
    {
      v38 = usageLogHandle(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v81 = v32;
        _os_log_impl(&dword_1C85F9000, v38, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:AppTypicalUsage pred:pred sort:nil actions:%@", buf, 0xCu);
      }

      entityName = [MEMORY[0x1E69D5178] entityName];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke_470;
      v73[3] = &unk_1E8318AC8;
      v73[4] = self;
      v74 = v35;
      v40 = v66;
      [v36 performQueryOnEntity:entityName pred:v66 sort:0 actions:v32 reply:v73];

      v17 = v64;
      kindCopy = v65;
      v16 = v63;
      v21 = v61;
      v19 = v62;
    }

    else
    {
      v58 = v35;
      v60 = v32;
      v41 = objc_alloc(MEMORY[0x1E69D5150]);
      workspace = self->workspace;
      entityName2 = [MEMORY[0x1E69D5178] entityName];
      v44 = [v41 initWithWorkspace:workspace entityName:entityName2 withCache:0];

      v57 = v44;
      v45 = [v44 fetchEntitiesFreeForm:v66 sortDesc:0];
      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v47 = v45;
      v48 = [v47 countByEnumeratingWithState:&v69 objects:v79 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v70;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v70 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v69 + 1) + 8 * i);
            hasApp = [v52 hasApp];
            bundleName = [hasApp bundleName];
            v55 = [(UsageFeed *)self _typicalUsagePresentation:bundleName nameKind:@"bundleName" source:v52];

            [v46 addObject:v55];
          }

          v49 = [v47 countByEnumeratingWithState:&v69 objects:v79 count:16];
        }

        while (v49);
      }

      [(UsageFeed *)self displayLoggingCounters:@"typicalUsageFor: service is nil"];
      v58[2](v58, v46);

      replyCopy = v67;
      forCopy = v68;
      v17 = v64;
      kindCopy = v65;
      v16 = v63;
      v21 = v61;
      v19 = v62;
      v40 = v66;
      v36 = 0;
      v32 = v60;
    }

    goto LABEL_43;
  }

LABEL_44:

  return v16;
}

void __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for typicalUsageFor:nameKind:intervalKind:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke_470(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = usageLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = v2;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * j);
              if ([v14 rangeOfString:@"bundleName"] != 0x7FFFFFFFFFFFFFFFLL && v15 != 0)
              {
                v17 = [v7 objectForKey:v14];
                v18 = [*(a1 + 32) _typicalUsagePresentation:v17 nameKind:@"bundleName" source:v7];
                [v20 addObject:v18];

                goto LABEL_20;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v11);
        }

LABEL_20:
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) displayLoggingCounters:@"typicalUsageFor: service non-nil"];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)calendarUsageFor:(id)for nameKind:(id)kind dayResolution:(id)resolution daySlot:(unsigned __int16)slot weekSlot:(unsigned __int16)weekSlot reply:(id)reply
{
  weekSlotCopy = weekSlot;
  slotCopy = slot;
  v138 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  resolutionCopy = resolution;
  replyCopy = reply;
  v16 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = replyCopy;
    v18 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413570;
    v127 = forCopy;
    v128 = 2112;
    v129 = kindCopy;
    v130 = 2112;
    v131 = resolutionCopy;
    v132 = 1024;
    v133 = slotCopy;
    v134 = 1024;
    v135 = weekSlotCopy;
    v136 = 2048;
    v137 = v18;
    _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "> calendarUsageFor:%@ nameKind:%@ dayResolution:%@ daySlot:%d weekSlot:%d reply:%p", buf, 0x36u);

    replyCopy = v17;
  }

  v123 = 0;
  if ([kindCopy isEqualToString:@"bundleName"] && objc_msgSend(resolutionCopy, "isEqualToString:", @"96slots"))
  {
    v98 = [MEMORY[0x1E695DFD8] setWithObjects:{@"tier1", @"tier2", @"tier3", @"tier4", @"tier5", 0}];
    v90 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    if (slotCopy != 0xFFFF)
    {
      slotCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %hu", @"timeOfDaySlot", slotCopy];
      if (slotCopy)
      {
        [v90 addObject:slotCopy];
      }
    }

    if ((weekSlotCopy - 1) <= 0xFFFD)
    {
      weekSlotCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %hu", @"dayOfWeek", weekSlotCopy];
      if (weekSlotCopy)
      {
        [v90 addObject:weekSlotCopy];
      }
    }

    if (forCopy)
    {
      [forCopy count];
    }

    v122 = 0;
    v23 = [UsageFeed _composePredicateLineWithName:"_composePredicateLineWithName:keyPath:isSweep:wantGeneric:gotGeneric:" keyPath:? isSweep:? wantGeneric:? gotGeneric:?];
    v89 = v23 != 0;
    if (v23)
    {
      v94 = v19;
      v95 = weekSlotCopy;
      selfCopy = self;
      v97 = kindCopy;
      v87 = replyCopy;
      [v90 addObject:v23];
      v88 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v90];
      v24 = MEMORY[0x1E69D5208];
      v25 = MEMORY[0x1E695DF20];
      v85 = v23;
      if (v123 == 1)
      {
        null = *MEMORY[0x1E69D53B8];
        null2 = *MEMORY[0x1E69D53B8];
        v28 = 1;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
        null2 = [MEMORY[0x1E695DFB0] null];
        v28 = 0;
      }

      v29 = *v24;
      if (v122 == 1)
      {
        [forCopy anyObject];
      }

      else
      {
        [MEMORY[0x1E695DFB0] null];
      }
      v30 = ;
      v31 = v30;
      if (v122 == 1)
      {
        v86 = [v25 dictionaryWithObjectsAndKeys:{v29, @"hasApp.bundleName", null, null2, v30, *MEMORY[0x1E69D5360], 0}];
      }

      else
      {
        null3 = [MEMORY[0x1E695DFB0] null];
        v86 = [v25 dictionaryWithObjectsAndKeys:{v29, @"hasApp.bundleName", null, null2, v31, null3, 0}];
      }

      v33 = selfCopy;

      replyCopy = v87;
      if ((v28 & 1) == 0)
      {
      }

      connection = [(AnalyticsWorkspace *)selfCopy->workspace connection];
      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 3221225472;
      v120[2] = __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke;
      v120[3] = &unk_1E8318D20;
      v83 = v87;
      v121 = v83;
      v35 = [connection remoteObjectProxyWithErrorHandler:v120];

      v37 = usageLogHandle(v36);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
      v84 = v35;
      if (v35)
      {
        kindCopy = v97;
        if (v38)
        {
          *buf = 138412546;
          v127 = v88;
          v128 = 2112;
          v129 = v86;
          _os_log_impl(&dword_1C85F9000, v37, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:AppCalendarUsage pred:%@ sort:nil actions:%@", buf, 0x16u);
        }

        entityName = [MEMORY[0x1E69D5158] entityName];
        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_482;
        v114[3] = &unk_1E83194D8;
        v119 = v95;
        v115 = v19;
        v116 = v98;
        v117 = selfCopy;
        v118 = v83;
        v40 = v35;
        v41 = v88;
        v42 = v86;
        [v84 performQueryOnEntity:entityName pred:v88 sort:0 actions:v86 reply:v114];

        v43 = v115;
      }

      else
      {
        kindCopy = v97;
        v44 = v95;
        if (v38)
        {
          *buf = 0;
          _os_log_impl(&dword_1C85F9000, v37, OS_LOG_TYPE_DEBUG, "nil XPC service (local query)", buf, 2u);
        }

        v45 = objc_alloc(MEMORY[0x1E69D5150]);
        workspace = selfCopy->workspace;
        entityName2 = [MEMORY[0x1E69D5158] entityName];
        v48 = [v45 initWithWorkspace:workspace entityName:entityName2 withCache:0];

        v82 = v48;
        v49 = [v48 fetchEntitiesFreeForm:v88 sortDesc:0];
        v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v51 = v49;
        v102 = [v51 countByEnumeratingWithState:&v110 objects:v125 count:16];
        if (v102)
        {
          v52 = *v111;
          v93 = v50;
          v99 = *v111;
          v100 = v51;
          do
          {
            v53 = 0;
            do
            {
              if (*v111 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v103 = v53;
              v54 = *(*(&v110 + 1) + 8 * v53);
              if (v44)
              {
                hasApp = [*(*(&v110 + 1) + 8 * v53) hasApp];
                bundleName = [hasApp bundleName];
                v57 = [(UsageFeed *)v33 _calendarUsagePresentation:bundleName nameKind:@"bundleName" source:v54];

                [v50 addObject:v57];
              }

              else
              {
                v58 = MEMORY[0x1E696AEC0];
                hasApp2 = [v54 hasApp];
                bundleName2 = [hasApp2 bundleName];
                timeOfDaySlot = [v54 timeOfDaySlot];
                v62 = [v58 stringWithFormat:@"%@, %d", bundleName2, objc_msgSend(timeOfDaySlot, "unsignedShortValue")];

                v63 = [v19 objectForKeyedSubscript:v62];
                if (v63)
                {
                  v101 = v62;
                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v64 = v98;
                  v65 = [v64 countByEnumeratingWithState:&v106 objects:v124 count:16];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = *v107;
                    do
                    {
                      for (i = 0; i != v66; ++i)
                      {
                        if (*v107 != v67)
                        {
                          objc_enumerationMutation(v64);
                        }

                        v69 = *(*(&v106 + 1) + 8 * i);
                        v70 = [v63 objectForKeyedSubscript:v69];
                        unsignedIntValue = [v70 unsignedIntValue];

                        v72 = [v54 valueForKey:v69];
                        unsignedIntValue2 = [v72 unsignedIntValue];

                        v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(unsignedIntValue2 + unsignedIntValue)];
                        [v63 setObject:v74 forKeyedSubscript:v69];
                      }

                      v66 = [v64 countByEnumeratingWithState:&v106 objects:v124 count:16];
                    }

                    while (v66);
                  }

                  firstTimeStamp = [v54 firstTimeStamp];
                  v76 = [v63 objectForKeyedSubscript:@"firstTimeStamp"];
                  v77 = [firstTimeStamp earlierDate:v76];

                  timeStamp = [v54 timeStamp];
                  v79 = [v63 objectForKeyedSubscript:@"timeStamp"];
                  v80 = [timeStamp laterDate:v79];

                  [v63 setObject:v77 forKeyedSubscript:@"firstTimeStamp"];
                  [v63 setObject:v80 forKeyedSubscript:@"timeStamp"];

                  v33 = selfCopy;
                  kindCopy = v97;
                  v19 = v94;
                  v44 = v95;
                  v50 = v93;
                  v57 = v101;
                }

                else
                {
                  [v19 setObject:v54 forKeyedSubscript:v62];
                  v57 = v62;
                }

                v52 = v99;
                v51 = v100;
              }

              v53 = v103 + 1;
            }

            while (v103 + 1 != v102);
            v102 = [v51 countByEnumeratingWithState:&v110 objects:v125 count:16];
          }

          while (v102);
        }

        if (!v44)
        {
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 3221225472;
          v104[2] = __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_490;
          v104[3] = &unk_1E8318BB8;
          v104[4] = v33;
          v105 = v50;
          [v19 enumerateKeysAndObjectsUsingBlock:v104];
        }

        (*(v83 + 2))(v83, v50);

        replyCopy = v87;
        v41 = v88;
        v42 = v86;
        v40 = 0;
        v43 = v82;
      }

      v23 = v85;
    }

    v22 = v89;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for calendarUsageFor:nameKind:dayResolution:daySlot:weekSlot:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_482(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v71 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v50 = *v64;
    v45 = v5;
    v46 = a1;
    v44 = v6;
    do
    {
      v9 = 0;
      v47 = v8;
      do
      {
        if (*v64 != v50)
        {
          objc_enumerationMutation(v6);
        }

        v51 = v9;
        v10 = *(*(&v63 + 1) + 8 * v9);
        v11 = [v10 allKeys];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        obj = v11;
        v12 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v60;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v60 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v59 + 1) + 8 * i);
              if ([v16 rangeOfString:@"bundleName"] != 0x7FFFFFFFFFFFFFFFLL && v17 != 0)
              {
                v19 = [v10 objectForKeyedSubscript:v16];
                v20 = v19;
                if (*(a1 + 64))
                {
                  v21 = [*(a1 + 48) _calendarUsagePresentation:v19 nameKind:@"bundleName" source:v10];
                  [v5 addObject:v21];
                }

                else
                {
                  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v23 = [v10 objectForKeyedSubscript:@"timeOfDaySlot"];
                  v21 = [v22 initWithFormat:@"%@, %d", v20, objc_msgSend(v23, "unsignedShortValue")];

                  v24 = [*(a1 + 32) objectForKey:v21];
                  if (v24)
                  {
                    v25 = v24;
                    v48 = v21;
                    v49 = v20;
                    v57 = 0u;
                    v58 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v26 = *(a1 + 40);
                    v27 = [v26 countByEnumeratingWithState:&v55 objects:v67 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v56;
                      do
                      {
                        for (j = 0; j != v28; ++j)
                        {
                          if (*v56 != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = *(*(&v55 + 1) + 8 * j);
                          v32 = [v25 objectForKeyedSubscript:v31];
                          v33 = [v32 unsignedIntValue];

                          v34 = [v10 objectForKeyedSubscript:v31];
                          v35 = [v34 unsignedIntValue];

                          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v35 + v33)];
                          [v25 setObject:v36 forKeyedSubscript:v31];
                        }

                        v28 = [v26 countByEnumeratingWithState:&v55 objects:v67 count:16];
                      }

                      while (v28);
                    }

                    v37 = [v10 objectForKeyedSubscript:@"firstTimeStamp"];
                    v38 = [v25 objectForKeyedSubscript:@"firstTimeStamp"];
                    v39 = [v37 earlierDate:v38];

                    v40 = [v10 objectForKeyedSubscript:@"timeStamp"];
                    v41 = [v25 objectForKeyedSubscript:@"timeStamp"];
                    v42 = [v40 laterDate:v41];

                    [v25 setObject:v39 forKeyedSubscript:@"firstTimeStamp"];
                    [v25 setObject:v42 forKeyedSubscript:@"timeStamp"];

                    v5 = v45;
                    a1 = v46;
                    v6 = v44;
                    v8 = v47;
                    v21 = v48;
                    v20 = v49;
                  }

                  else
                  {
                    [*(a1 + 32) setObject:v10 forKeyedSubscript:v21];
                  }
                }

                goto LABEL_34;
              }
            }

            v13 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:

        v9 = v51 + 1;
      }

      while (v51 + 1 != v8);
      v8 = [v6 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v8);
  }

  if (!*(a1 + 64))
  {
    v43 = *(a1 + 32);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_486;
    v53[3] = &unk_1E8318BB8;
    v53[4] = *(a1 + 48);
    v54 = v5;
    [v43 enumerateKeysAndObjectsUsingBlock:v53];
  }

  (*(*(a1 + 56) + 16))();
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_486(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 componentsSeparatedByString:{@", "}];
  v8 = [v6 objectAtIndex:0];

  v7 = [*(a1 + 32) _calendarUsagePresentation:v8 nameKind:@"bundleName" source:v5];

  [*(a1 + 40) addObject:v7];
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_490(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 componentsSeparatedByString:{@", "}];
  v8 = [v6 objectAtIndex:0];

  v7 = [*(a1 + 32) _calendarUsagePresentation:v8 nameKind:@"bundleName" source:v5];

  [*(a1 + 40) addObject:v7];
}

- (BOOL)algosScoreToDateWithOptionsFor:(id)for nameKind:(id)kind startTime:(id)time options:(id)options reply:(id)reply
{
  v58 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  timeCopy = time;
  optionsCopy = options;
  replyCopy = reply;
  v17 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413314;
    v49 = forCopy;
    v50 = 2112;
    v51 = kindCopy;
    v52 = 2112;
    v53 = timeCopy;
    v54 = 2112;
    v55 = optionsCopy;
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "> algosScoreToDateWithOptionsFor:%@ nameKind:%@ startTime:%@ options:%@ reply:%p", buf, 0x34u);
  }

  if (replyCopy && [kindCopy isEqualToString:@"bundleName"])
  {
    v47 = 0;
    if (forCopy)
    {
      v19 = [forCopy count] == 1;
    }

    else
    {
      v19 = 0;
    }

    v46 = 0;
    v21 = [(UsageFeed *)self _composePredicateLineWithName:forCopy keyPath:@"hasApp.bundleName" isSweep:&v47 wantGeneric:v19 gotGeneric:&v46];
    if (!v21)
    {
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v41 = v21;
    v22 = MEMORY[0x1E69D5208];
    v39 = MEMORY[0x1E695DF20];
    v23 = MEMORY[0x1E69D53B8];
    v37 = v47;
    if (v47 == 1)
    {
      null = *MEMORY[0x1E69D53B8];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      if ((v47 & 1) == 0)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v36 = 0;
        goto LABEL_16;
      }
    }

    null2 = *v23;
    v36 = 1;
LABEL_16:
    v25 = *v22;
    if (v46 == 1)
    {
      [forCopy anyObject];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v26 = ;
    v27 = v26;
    if (v46 == 1)
    {
      v40 = [v39 dictionaryWithObjectsAndKeys:{v25, @"hasApp.bundleName", null, null2, v26, *MEMORY[0x1E69D5360], 0}];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v40 = [v39 dictionaryWithObjectsAndKeys:{v25, @"hasApp.bundleName", null, null2, v27, null3, 0}];
    }

    if ((v36 & 1) == 0)
    {
    }

    if ((v37 & 1) == 0)
    {
    }

    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke;
    v44[3] = &unk_1E8318D20;
    v30 = replyCopy;
    v45 = v30;
    v31 = [connection remoteObjectProxyWithErrorHandler:v44];

    v20 = v31 != 0;
    if (v31)
    {
      v33 = usageLogHandle(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v49 = v41;
        v50 = 2112;
        v51 = v40;
        _os_log_impl(&dword_1C85F9000, v33, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:AppExperience pred:%@ sort:nil actions:%@", buf, 0x16u);
      }

      entityName = [MEMORY[0x1E69D5170] entityName];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke_492;
      v42[3] = &unk_1E8319500;
      v43 = v30;
      [v31 performQueryOnEntity:entityName pred:v41 sort:0 actions:v40 reply:v42];
    }

    v21 = v41;
    goto LABEL_31;
  }

  v20 = 0;
LABEL_32:

  return v20;
}

void __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for algosScoreToDateWithOptionsFor:nameKind:startTime:options:reply: %@", &v6, 0xCu);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke_492(uint64_t a1, void *a2)
{
  v25 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = usageLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v2;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
  }

  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        v6 = [v5 allKeys];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v31 + 1) + 8 * i);
              if ([v12 rangeOfString:@"bundleName"] != 0x7FFFFFFFFFFFFFFFLL && v13 != 0)
              {
                v15 = [v5 objectForKeyedSubscript:@"firstTimeStamp"];
                if (v15)
                {
                  v16 = v15;
                  v17 = [v5 objectForKeyedSubscript:@"timeStamp"];

                  if (v17)
                  {
                    v18 = [v5 objectForKey:v12];
                    v19 = [v27 objectForKeyedSubscript:v18];
                    v20 = [v5 mutableCopy];
                    v21 = [v5 objectForKey:@"hasApp.bundleName"];
                    [v20 setObject:v21 forKey:@"bundleName"];

                    [v20 removeObjectForKey:@"hasApp.bundleName"];
                    v22 = [v5 objectForKey:@"firstTimeStamp"];
                    [v20 setObject:v22 forKey:@"sinceTime"];

                    [v20 removeObjectForKey:@"firstTimeStamp"];
                    v23 = [v5 objectForKey:@"timeStamp"];
                    [v20 setObject:v23 forKey:@"lastTime"];

                    [v20 removeObjectForKey:@"timeStamp"];
                    if (v19)
                    {
                      [v19 addObject:v20];
                    }

                    else
                    {
                      v24 = objc_opt_new();
                      [v24 addObject:v20];
                      [v27 setObject:v24 forKeyedSubscript:v18];
                    }

                    goto LABEL_26;
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        v4 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  (*(*(v25 + 32) + 16))();
}

- (BOOL)setUsageOption:(id)option reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  replyCopy = reply;
  v8 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v21 = optionCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> setUsageOption:%@ reply:%p", buf, 0x16u);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34__UsageFeed_setUsageOption_reply___block_invoke;
  v18[3] = &unk_1E8318D20;
  v11 = replyCopy;
  v19 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v18];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53C0], 0}];
    v14 = usageLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v21 = optionCopy;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "setOption:%@ inScopes:%@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34__UsageFeed_setUsageOption_reply___block_invoke_493;
    v16[3] = &unk_1E8319528;
    v17 = v11;
    [v12 setOption:optionCopy inScopes:v13 reply:v16];
  }

  return v12 != 0;
}

void __34__UsageFeed_setUsageOption_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setUsageOption:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __34__UsageFeed_setUsageOption_reply___block_invoke_493(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "setOption:inScopes:reply: received callback with before:%@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)getUsageOption:(id)option reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  replyCopy = reply;
  v8 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v21 = optionCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> getUsageOption:%@ reply:%p", buf, 0x16u);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34__UsageFeed_getUsageOption_reply___block_invoke;
  v18[3] = &unk_1E8318D20;
  v11 = replyCopy;
  v19 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v18];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53C0], 0}];
    v14 = usageLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v21 = optionCopy;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "getOption:%@ inScopes:%@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __34__UsageFeed_getUsageOption_reply___block_invoke_494;
    v16[3] = &unk_1E8319528;
    v17 = v11;
    [v12 getOption:optionCopy inScopes:v13 reply:v16];
  }

  return v12 != 0;
}

void __34__UsageFeed_getUsageOption_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for getUsageOption:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __34__UsageFeed_getUsageOption_reply___block_invoke_494(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "getOption:inScopes:reply: received callback with current:%@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)resetUsageDataFor:(id)for nameKind:(id)kind reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  replyCopy = reply;
  v11 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138478339;
    v25 = forCopy;
    v26 = 2112;
    v27 = kindCopy;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> resetUsageDataFor:%{private}@ nameKind:%@ reply:%p", buf, 0x20u);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke;
  v22[3] = &unk_1E8318D20;
  v14 = replyCopy;
  v23 = v14;
  v15 = [connection remoteObjectProxyWithErrorHandler:v22];

  if (v15)
  {
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53C0], 0}];
    allObjects = [forCopy allObjects];
    v18 = usageLogHandle(allObjects);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v25 = allObjects;
      v26 = 2112;
      v27 = kindCopy;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1C85F9000, v18, OS_LOG_TYPE_DEBUG, "resetDataFor:%@ nameKind:%@ inScopes:%@", buf, 0x20u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke_495;
    v20[3] = &unk_1E8318D70;
    v21 = v14;
    [v15 resetDataFor:allObjects nameKind:kindCopy inScopes:v16 reply:v20];
  }

  return v15 != 0;
}

void __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for resetUsageDataFor:nameKind:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke_495(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = usageLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "resetDataFor:nameKind:inScopes:reply: received callback with result:%{BOOL}d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)identifierForUUID:(id)d reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v8 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v23 = dCopy;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> identifierForUUID:%@ reply:%p", buf, 0x16u);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];

  if (connection)
  {
    connection2 = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37__UsageFeed_identifierForUUID_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v12 = replyCopy;
    v21 = v12;
    v13 = [connection2 remoteObjectProxyWithErrorHandler:v20];

    v15 = v13 != 0;
    if (v13)
    {
      v16 = usageLogHandle(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = dCopy;
        _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "identifierForUUID:%@", buf, 0xCu);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __37__UsageFeed_identifierForUUID_reply___block_invoke_497;
      v18[3] = &unk_1E8319550;
      v19 = v12;
      [v13 identifierForUUID:dCopy reply:v18];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __37__UsageFeed_identifierForUUID_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __37__UsageFeed_identifierForUUID_reply___block_invoke_497(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = usageLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "identifierForUUID:reply: received callback with error:%@ name:%@ kind:%@", &v11, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_performNetDomainsQueryOnService:(id)service entityName:(id)name fetchProps:(id)props pred:(id)pred sort:(id)sort actions:(id)actions queryTimer:(id)timer replyProcessBlock:(id)self0 accumulatedResults:(id)self1 callbackBlock:(id)self2
{
  v64 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  nameCopy = name;
  propsCopy = props;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  blockCopy = block;
  resultsCopy = results;
  callbackBlockCopy = callbackBlock;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__1;
  v52[4] = __Block_byref_object_dispose__1;
  v53 = MEMORY[0x1CCA78840]();
  v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v25 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke;
  handler[3] = &unk_1E8319578;
  v26 = v24;
  v48 = v26;
  v27 = nameCopy;
  v49 = v27;
  v28 = predCopy;
  v50 = v28;
  v51 = v52;
  dispatch_source_set_event_handler(v26, handler);
  v30 = usageLogHandle(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v55 = v26;
    _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Activating timer %p", buf, 0xCu);
  }

  dispatch_activate(v26);
  v32 = usageLogHandle(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v55 = v27;
    v56 = 2112;
    v57 = propsCopy;
    v58 = 2112;
    v59 = v28;
    v60 = 2112;
    v61 = sortCopy;
    v62 = 2112;
    v63 = actionsCopy;
    _os_log_impl(&dword_1C85F9000, v32, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:%@ fetchRequestProperties:%@ pred:%@ sort:%@ actions:%@", buf, 0x34u);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke_576;
  v40[3] = &unk_1E83195A0;
  v33 = v26;
  v41 = v33;
  v34 = v27;
  v42 = v34;
  v35 = resultsCopy;
  v43 = v35;
  v36 = blockCopy;
  v44 = v36;
  v37 = callbackBlockCopy;
  v45 = v37;
  v46 = v52;
  [serviceCopy performQueryOnEntity:v34 fetchRequestProperties:propsCopy pred:v28 sort:sortCopy actions:actionsCopy reply:v40];

  _Block_object_dispose(v52, 8);
}

void __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = usageLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v14 = 134217984;
    v15 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Cancelling timer %p after firing", &v14, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v5 = usageLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) description];
    v8 = v7;
    v9 = &stru_1F483F350;
    if (v7)
    {
      v9 = v7;
    }

    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "%@: Timed out while waiting for XPC response. %@", &v14, 0x16u);
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v10 + 16))(v10, MEMORY[0x1E695E0F8], v11, 0);

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

void __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke_576(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_source_testcancel(*(a1 + 32));
  v5 = usageLogHandle(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "%@: Timeout timer already fired; will not process XPC reply for performance", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Deactivating timer %p", buf, 0xCu);
    }

    dispatch_source_cancel(*(a1 + 32));
    v10 = usageLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:fetchRequestProperties:pred:sort:actions:reply: received callback with results:%@", buf, 0xCu);
    }

    v11 = v3;
    v12 = *(a1 + 48);
    v5 = v11;
    if (v12)
    {
      [v12 addObjectsFromArray:v11];
      v5 = *(a1 + 48);
    }

    v13 = *(a1 + 56);
    if (!v13 || (*(v13 + 16))(v13, *(a1 + 32), v11, *(a1 + 48), *(a1 + 64)))
    {
      if (!v5)
      {
        v5 = MEMORY[0x1E695E0F0];
      }

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v5, "count", *MEMORY[0x1E69D5268], *MEMORY[0x1E69D5270], v5)}];
      v20[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:2];

      v16 = *(*(*(a1 + 72) + 8) + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, v15, 0, 0);
        v17 = *(*(a1 + 72) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }
    }
  }
}

- (BOOL)networkDomainsToDateWithOptionsFor:(id)for nameKind:(id)kind domainType:(unsigned __int16)type startTime:(id)time options:(id)options fetchProperties:(id)properties reply:(id)reply
{
  v83 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  timeCopy = time;
  optionsCopy = options;
  propertiesCopy = properties;
  replyCopy = reply;
  v16 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412802;
    v74 = optionsCopy;
    v75 = 2112;
    v76 = propertiesCopy;
    v77 = 2048;
    v78 = v17;
    _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "> networkDomainsToDateWithOptionsFor:nameKind:domainType:startTime: options:%@ fetchProperties:%@ reply:%p", buf, 0x20u);
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__577;
  v71 = __Block_byref_object_dispose__578;
  v72 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke;
  v64[3] = &unk_1E83195C8;
  v66 = &v67;
  v48 = replyCopy;
  v65 = v48;
  v18 = MEMORY[0x1CCA78840](v64);
  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_580;
  v62[3] = &unk_1E8318D20;
  v20 = v18;
  v63 = v20;
  v21 = [connection remoteObjectProxyWithErrorHandler:v62];

  if (v21)
  {
    entityName = [MEMORY[0x1E69D5160] entityName];
    v23 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53B8], 0}];
    v24 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5248]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v24;
    }

    else
    {
      v50 = 0;
    }

    v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5240]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v25;
    }

    else
    {
      v49 = 0;
    }

    v26 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5238]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v24;
      v28 = v26;
      integerValue = [v28 integerValue];

      v24 = v27;
    }

    else
    {
      integerValue = 0;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    [v23 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    v44 = v24;

    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__1;
    v60[4] = __Block_byref_object_dispose__1;
    v61 = MEMORY[0x1CCA78840](v20);
    v31 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v32 = v68[5];
    v68[5] = v31;

    v33 = v68[5];
    v34 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v35 = v68[5];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_583;
    handler[3] = &unk_1E83195F0;
    v58 = &v67;
    v36 = entityName;
    v57 = v36;
    v59 = v60;
    dispatch_source_set_event_handler(v35, handler);
    v38 = usageLogHandle(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = v68[5];
      *buf = 134217984;
      v74 = v39;
      _os_log_impl(&dword_1C85F9000, v38, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Activating timer %p", buf, 0xCu);
    }

    dispatch_activate(v68[5]);
    v41 = usageLogHandle(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v74 = v36;
      v75 = 2112;
      v76 = propertiesCopy;
      v77 = 2112;
      v78 = v49;
      v79 = 2112;
      v80 = v50;
      v81 = 2112;
      v82 = v23;
      _os_log_impl(&dword_1C85F9000, v41, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:%@ fetchRequestProperties:%@ pred:%@ sort:%@ actions:%@", buf, 0x34u);
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_584;
    v52[3] = &unk_1E8319618;
    v54 = &v67;
    v42 = v36;
    v53 = v42;
    v55 = v60;
    [v21 performQueryOnEntity:v42 fetchRequestProperties:propertiesCopy pred:v49 sort:v50 actions:v23 reply:v52];

    _Block_object_dispose(v60, 8);
  }

  _Block_object_dispose(&v67, 8);
  return v21 != 0;
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = usageLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEFAULT, "AppDomainUsage: Forcing callback due to error %@", &v13, 0xCu);
    }
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  if (v12 && !dispatch_source_testcancel(*(v11 + 40)))
  {
    dispatch_source_cancel(v12);
  }

  (*(*(a1 + 32) + 16))();
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_580(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1CCA78840](*(a1 + 32));
  v5 = usageLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "AppDomainUsage: Remote proxy error %@", &v8, 0xCu);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v4)[2](v4, v6, v7, 1);
  }
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_583(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = usageLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Cancelling timer %p after firing", &v11, 0xCu);
  }

  dispatch_source_cancel(*(*(a1[5] + 8) + 40));
  v5 = usageLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = &stru_1F483F350;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "%@: Timed out while waiting for XPC response. %@", &v11, 0x16u);
  }

  v7 = *(*(a1[6] + 8) + 40);
  if (v7)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v7 + 16))(v7, MEMORY[0x1E695E0F8], v8, 0);

    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_584(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 40);
  v5 = dispatch_source_testcancel(v4);
  if (v5)
  {
    v6 = usageLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = a1[4];
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "%@: Timeout timer already fired; will not process XPC reply for performance", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v9 = usageLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:fetchRequestProperties:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count", *MEMORY[0x1E69D5268], *MEMORY[0x1E69D5270], v3)}];
    v15[1] = v10;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:2];

    v11 = *(*(a1[6] + 8) + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v6, 0, 0);
      v12 = *(a1[6] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;
    }
  }
}

- (BOOL)networkDomainsToDateWithOptionsFor:(id)for nameKind:(id)kind domainType:(unsigned __int16)type startTime:(id)time options:(id)options reply:(id)reply
{
  v79 = *MEMORY[0x1E69E9840];
  forCopy = for;
  kindCopy = kind;
  timeCopy = time;
  optionsCopy = options;
  replyCopy = reply;
  v16 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413314;
    *&buf[4] = forCopy;
    *&buf[12] = 2112;
    *&buf[14] = kindCopy;
    *&buf[22] = 2112;
    v77 = timeCopy;
    *v78 = 2112;
    *&v78[2] = optionsCopy;
    *&v78[10] = 2048;
    *&v78[12] = v17;
    _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "> networkDomainsToDateWithOptionsFor:%@ nameKind:%@ domainType: startTime:%@ options:%@ reply:%p", buf, 0x34u);
  }

  if (replyCopy && [kindCopy isEqualToString:@"bundleName"])
  {
    v71 = 0;
    v55 = [(UsageFeed *)self _composePredicateLineWithName:forCopy keyPath:@"bundleName" isSweep:&v71 + 1 wantGeneric:0 gotGeneric:&v71];
    if (!v55)
    {
      v19 = 0;
LABEL_80:

      goto LABEL_81;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v77 = __Block_byref_object_copy__577;
    *v78 = __Block_byref_object_dispose__578;
    *&v78[8] = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2020000000;
    v70 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__1;
    v67 = __Block_byref_object_dispose__1;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke;
    v59[3] = &unk_1E8319640;
    v61 = buf;
    v62 = v69;
    v60 = replyCopy;
    v68 = MEMORY[0x1CCA78840](v59);
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke_587;
    v58[3] = &unk_1E8319668;
    v58[4] = &v63;
    v54 = [connection remoteObjectProxyWithErrorHandler:v58];

    v19 = v54 != 0;
    if (!v54)
    {
LABEL_79:

      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(v69, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_80;
    }

    entityName = [MEMORY[0x1E69D5160] entityName];
    v20 = HIBYTE(v71);
    v21 = MEMORY[0x1E69D53B8];
    v50 = MEMORY[0x1E695DF90];
    if (HIBYTE(v71) == 1)
    {
      null = *MEMORY[0x1E69D53B8];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      if ((v71 & 0x100) == 0)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v48 = 0;
LABEL_14:
        if (v71 == 1)
        {
          [forCopy anyObject];
        }

        else
        {
          [MEMORY[0x1E695DFB0] null];
        }
        v23 = ;
        v24 = v71;
        if (v71 == 1)
        {
          null3 = *MEMORY[0x1E69D5360];
        }

        else
        {
          null3 = [MEMORY[0x1E695DFB0] null];
        }

        v43 = [v50 dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5208], @"bundleName", null, null2, v23, null3, 0}];
        if ((v24 & 1) == 0)
        {
        }

        v19 = 1;
        if ((v48 & 1) == 0)
        {
        }

        if ((v20 & 1) == 0)
        {
        }

        v53 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5258]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v53;
          integerValue = [v26 integerValue];
        }

        else
        {
          integerValue = 0;
        }

        v28 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5238]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
          integerValue2 = [v29 integerValue];
        }

        else
        {
          integerValue2 = 0;
        }

        v51 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5220]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v51;
        }

        else
        {
          v41 = 0;
        }

        v49 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5230]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v49;
        }

        else
        {
          v39 = 0;
        }

        v47 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5260]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v47;
        }

        else
        {
          v40 = 0;
        }

        v46 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5228]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          integerValue3 = [v46 integerValue];
        }

        else
        {
          integerValue3 = 3;
        }

        v45 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D5250]];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          isKindOfClass = [v45 integerValue];
          v32 = isKindOfClass;
        }

        else
        {
          v32 = 0;
        }

        v33 = usageLogHandle(isKindOfClass);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *v72 = 134218240;
          v73 = integerValue;
          v74 = 2048;
          v75 = integerValue2;
          _os_log_impl(&dword_1C85F9000, v33, OS_LOG_TYPE_INFO, "Processing request for view type: %ld with limit: %ld", v72, 0x16u);
        }

        if (integerValue > 5)
        {
          if (integerValue <= 8)
          {
            if (integerValue == 6)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeAppDomainsOtherContent:v54 entityName:entityName bundleIdentifier:v41 unnamedDomainsOption:v32 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
            }

            else if (integerValue == 7)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsiteHits:v54 entityName:entityName website:v40 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
            }

            else
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsiteDomains:v54 entityName:entityName website:v40 unnamedDomainsOption:v32 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
            }

            goto LABEL_78;
          }

          switch(integerValue)
          {
            case 9:
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsiteApps:v54 entityName:entityName website:v40 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
              goto LABEL_78;
            case 10:
              [(UsageFeed *)self _networkDomainsQueryViewTypeDomainApps:v54 entityName:entityName domain:v39 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
              goto LABEL_78;
            case 11:
              [(UsageFeed *)self _networkDomainsQueryViewTypeDomainWebsites:v54 entityName:entityName domain:v39 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
              goto LABEL_78;
          }
        }

        else
        {
          if (integerValue > 2)
          {
            if (integerValue == 3)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeDomain:v54 entityName:entityName unnamedDomainsOption:v32 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
            }

            else if (integerValue == 4)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeAppDomains:v54 entityName:entityName bundleIdentifier:v41 unnamedDomainsOption:v32 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
            }

            else
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeAppWebsites:v54 entityName:entityName bundleIdentifier:v41 verificationContext:integerValue3 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
            }

            goto LABEL_78;
          }

          switch(integerValue)
          {
            case 0:
              [(UsageFeed *)self _legacyNetworkDomainsQueryOnService:v54 entityName:entityName pred:v55 limit:150 actions:v43 options:optionsCopy postProcessingBlock:v64[5]];
              goto LABEL_78;
            case 1:
              [(UsageFeed *)self _networkDomainsQueryViewTypeApp:v54 entityName:entityName limit:integerValue2 actions:v43 callbackBlock:v64[5]];
              goto LABEL_78;
            case 2:
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsite:v54 entityName:entityName verificationContext:integerValue3 limit:integerValue2 actions:v43 callbackBlock:v64[5]];
LABEL_78:

              goto LABEL_79;
          }
        }

        v35 = usageLogHandle(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *v72 = 134217984;
          v73 = integerValue;
          _os_log_impl(&dword_1C85F9000, v35, OS_LOG_TYPE_ERROR, "Currently unable to process view type: %ld", v72, 0xCu);
        }

        v36 = v64[5];
        if (v36)
        {
          (*(v36 + 16))(v36, 0, 0, 0);
          v37 = v64[5];
          v64[5] = 0;
        }

        goto LABEL_78;
      }
    }

    null2 = *v21;
    v48 = 1;
    goto LABEL_14;
  }

  v19 = 0;
LABEL_81:

  return v19;
}

void __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke(void *a1, void *a2, void *a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = usageLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEFAULT, "AppDomainUsage: Forcing callback due to error %@", &v20, 0xCu);
    }
  }

  v11 = *(*(a1[5] + 8) + 40);
  if (v11)
  {
    v11 = dispatch_source_testcancel(v11);
    if (!v11)
    {
      v12 = usageLogHandle(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(*(a1[5] + 8) + 40);
        v20 = 134217984;
        v21 = v13;
        _os_log_impl(&dword_1C85F9000, v12, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Disabling active timer in callback (%p)", &v20, 0xCu);
      }

      dispatch_source_cancel(*(*(a1[5] + 8) + 40));
    }
  }

  v14 = usageLogHandle(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = "YES";
    if (!*(*(a1[6] + 8) + 24))
    {
      v15 = "NO";
    }

    v16 = *(*(a1[5] + 8) + 40);
    v20 = 136315394;
    v21 = v15;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Callback block already called: %s (%p)", &v20, 0x16u);
  }

  v18 = *(a1[6] + 8);
  if (*(v18 + 24))
  {
    v19 = usageLogHandle(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C85F9000, v19, OS_LOG_TYPE_INFO, "AppDomainUsage: Ignoring duplicate callback", &v20, 2u);
    }
  }

  else
  {
    *(v18 + 24) = 1;
    (*(a1[4] + 16))();
  }
}

void __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke_587(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1CCA78840](*(*(*(a1 + 32) + 8) + 40));
  v5 = usageLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "AppDomainUsage: Remote proxy error %@", &v8, 0xCu);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v4)[2](v4, v6, v7, 1);
  }
}

- (void)_networkDomainsQueryViewTypeApp:(id)app entityName:(id)name limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v40[2] = *MEMORY[0x1E69E9840];
  appCopy = app;
  nameCopy = name;
  actionsCopy = actions;
  blockCopy = block;
  v31 = countOfDistinctKeyDescriptor();
  v14 = entityKeyPathForNameDescriptor();
  v15 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v15 addAggregateProperty:v31];
  [v15 addAggregateProperty:v14];
  [v15 addGroupByProperty:@"bundleName"];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleName != NULL"];
  v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  v17 = MEMORY[0x1E696AB28];
  v40[0] = v16;
  v40[1] = v30;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v27 = [v17 andPredicateWithSubpredicates:v18];

  v19 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"count" ascending:0];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v20 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke;
  v32[3] = &unk_1E8319740;
  v38 = nameCopy;
  limitCopy = limit;
  v33 = v14;
  v34 = v16;
  v35 = actionsCopy;
  selfCopy = self;
  v37 = appCopy;
  v21 = nameCopy;
  v22 = appCopy;
  v23 = actionsCopy;
  v24 = v16;
  v25 = v14;
  v26 = MEMORY[0x1CCA78840](v32);
  [(UsageFeed *)self _performNetDomainsQueryOnService:v22 entityName:v21 fetchProps:v15 pred:v27 sort:v19 actions:v23 queryTimer:0 replyProcessBlock:v26 accumulatedResults:0 callbackBlock:blockCopy];
}

BOOL __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v44[3] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = [v9 count];
  v12 = *(a1 + 80) - 1;
  if (v12 >= v11)
  {
    v35 = *(a1 + 80) - 1;
    v36 = v11;
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v9];
    v14 = entityConstValueForNameDescriptor();
    v15 = objc_alloc_init(MEMORY[0x1E69D5138]);
    v34 = v14;
    v16 = v14;
    v17 = v13;
    [v15 addAggregateProperty:v16];
    [v15 addAggregateProperty:*(a1 + 32)];
    [v15 addGroupByProperty:@"bundleName"];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_623;
    v41[3] = &unk_1E83196F0;
    v19 = v18;
    v42 = v19;
    [v17 enumerateObjectsUsingBlock:v41];
    if ([v19 count])
    {
      v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (bundleName IN %@)", v19];
    }

    else
    {
      v20 = 0;
    }

    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 2];
    v37 = v10;
    v38 = v8;
    v33 = v21;
    if (v20)
    {
      v44[0] = *(a1 + 40);
      v44[1] = v21;
      v44[2] = v20;
      v22 = MEMORY[0x1E695DEC8];
      v23 = v44;
      v24 = 3;
    }

    else
    {
      v43[0] = *(a1 + 40);
      v43[1] = v21;
      v22 = MEMORY[0x1E695DEC8];
      v23 = v43;
      v24 = 2;
    }

    v25 = [v22 arrayWithObjects:v23 count:v24];
    v26 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v25];
    v27 = *(a1 + 80);
    if (v27)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v27 - objc_msgSend(v9, "count")}];
      [*(a1 + 48) setObject:v28 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_2;
    v39[3] = &unk_1E8319718;
    v40 = v17;
    v29 = v17;
    v30 = MEMORY[0x1CCA78840](v39);
    v10 = v37;
    [*(a1 + 56) _performNetDomainsQueryOnService:*(a1 + 64) entityName:*(a1 + 72) fetchProps:v15 pred:v26 sort:0 actions:*(a1 + 48) queryTimer:v38 replyProcessBlock:v30 accumulatedResults:0 callbackBlock:v37];

    v8 = v38;
    v12 = v35;
    v11 = v36;
  }

  v31 = v12 < v11;

  return v31;
}

void __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_623(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"bundleName"];
  [v2 addObject:v3];
}

uint64_t __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = usageLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_DEBUG, "Adding additional entries %@ to %@", buf, 0x16u);
  }

  [*(a1 + 32) addObjectsFromArray:v7];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count", *MEMORY[0x1E69D5268], *MEMORY[0x1E69D5270], *(a1 + 32))}];
  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:2];

  if (v8)
  {
    (*(v8 + 2))(v8, v12, 0, 0);
  }

  return 0;
}

- (void)__networkDomainsQueryWebsites:(id)websites entityName:(id)name verificationContext:(int64_t)context limit:(unint64_t)limit actions:(id)actions viewPredicate:(id)predicate callbackBlock:(id)block
{
  v32[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  blockCopy = block;
  actionsCopy = actions;
  nameCopy = name;
  websitesCopy = websites;
  v17 = countOfDistinctKeyDescriptor();
  v18 = *MEMORY[0x1E69D5280];
  v19 = functionOnKeyDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  v30 = v17;
  [v20 addAggregateProperty:v17];
  [v20 addAggregateProperty:v19];
  [v20 addGroupByProperty:@"context"];
  [v20 addFetchProperty:@"context"];
  v21 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v18 ascending:0];
  v22 = (*(predicateForVerificationContext + 2))(predicateForVerificationContext, context, v20);
  v23 = v22;
  if (v22)
  {
    v24 = MEMORY[0x1E696AB28];
    v32[0] = predicateCopy;
    v32[1] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];
  }

  else
  {
    v26 = predicateCopy;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v27 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:websitesCopy entityName:nameCopy fetchProps:v20 pred:v26 sort:v21 actions:actionsCopy queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeWebsite:(id)website entityName:(id)name verificationContext:(int64_t)context limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v14 = MEMORY[0x1E696AE18];
  blockCopy = block;
  actionsCopy = actions;
  nameCopy = name;
  websiteCopy = website;
  v19 = [v14 predicateWithFormat:@"kind == %d AND context != ''", 2];
  [(UsageFeed *)self __networkDomainsQueryWebsites:websiteCopy entityName:nameCopy verificationContext:context limit:limit actions:actionsCopy viewPredicate:v19 callbackBlock:blockCopy];
}

- (void)__networkDomainsQueryDomains:(id)domains entityName:(id)name unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions accumulatedResults:(id)results aggregateProperty:(id)property predicate:(id)self0 altAggregateProperty:(id)self1 altPredicate:(id)self2 ipAggregateProperty:(id)self3 replyProcessBlock:(id)self4 callbackBlock:(id)self5
{
  v71[2] = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  nameCopy = name;
  actionsCopy = actions;
  resultsCopy = results;
  predicateCopy = predicate;
  aggregatePropertyCopy = aggregateProperty;
  altPredicateCopy = altPredicate;
  ipAggregatePropertyCopy = ipAggregateProperty;
  blockCopy = block;
  v23 = MEMORY[0x1E69D5138];
  callbackBlockCopy = callbackBlock;
  propertyCopy = property;
  v25 = objc_alloc_init(v23);
  [v25 addAggregateProperty:propertyCopy];

  if (ipAggregatePropertyCopy)
  {
    [v25 addAggregateProperty:ipAggregatePropertyCopy];
  }

  else
  {
    [v25 addGroupByProperty:@"domain"];
    [v25 addFetchProperty:@"domain"];
  }

  [v25 addGroupByProperty:@"domainOwner"];
  [v25 addFetchProperty:@"domainOwner"];
  [v25 addGroupByProperty:@"domainType"];
  v44 = v25;
  [v25 addFetchProperty:@"domainType"];
  v42 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"count" ascending:0];
  v26 = (*(predicateForUnnamedDomains + 2))(predicateForUnnamedDomains, option);
  v27 = v26;
  if (v26)
  {
    v28 = MEMORY[0x1E696AB28];
    v71[0] = predicateCopy;
    v71[1] = v26;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
    v46 = [v28 andPredicateWithSubpredicates:v29];
  }

  else
  {
    v46 = predicateCopy;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v30 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v56 = predicateCopy;
  if (resultsCopy)
  {
    v31 = resultsCopy;
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v32 = v31;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke;
  v58[3] = &unk_1E8319808;
  v59 = v31;
  v60 = aggregatePropertyCopy;
  v61 = ipAggregatePropertyCopy;
  v62 = v27;
  v69 = blockCopy;
  limitCopy = limit;
  v63 = altPredicateCopy;
  v64 = actionsCopy;
  selfCopy = self;
  v66 = domainsCopy;
  v33 = ipAggregatePropertyCopy;
  v34 = altPredicateCopy;
  v67 = nameCopy;
  v68 = v42;
  v41 = v42;
  v35 = nameCopy;
  v36 = domainsCopy;
  v37 = actionsCopy;
  v52 = blockCopy;
  v50 = v34;
  v48 = v27;
  v43 = v33;
  v38 = aggregatePropertyCopy;
  v39 = v32;
  v40 = MEMORY[0x1CCA78840](v58);
  [(UsageFeed *)self _performNetDomainsQueryOnService:v36 entityName:v35 fetchProps:v44 pred:v46 sort:v41 actions:v37 queryTimer:0 replyProcessBlock:v40 accumulatedResults:0 callbackBlock:callbackBlockCopy];
}

uint64_t __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v65[3] = *MEMORY[0x1E69E9840];
  v33 = a2;
  v9 = a3;
  v34 = a4;
  v36 = a5;
  [*(a1 + 32) addObjectsFromArray:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v10 addAggregateProperty:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [v10 addAggregateProperty:?];
  }

  else
  {
    [v10 addGroupByProperty:@"domain"];
    [v10 addFetchProperty:@"domain"];
  }

  [v10 addGroupByProperty:@"domainOwner"];
  [v10 addFetchProperty:@"domainOwner"];
  [v10 addGroupByProperty:@"domainType"];
  [v10 addFetchProperty:@"domainType"];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2;
  v61[3] = &unk_1E83196F0;
  v12 = v11;
  v62 = v12;
  v35 = v9;
  [v9 enumerateObjectsUsingBlock:v61];
  if ([v12 count] && (objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"(domain IN %@)", v12), (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = MEMORY[0x1E696AB28];
    v14 = *(a1 + 56);
    if (v14)
    {
      v65[0] = *(a1 + 64);
      v65[1] = v38;
      v65[2] = v14;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
    }

    else
    {
      v64[0] = *(a1 + 64);
      v64[1] = v38;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    }
    v15 = ;
    v37 = [v13 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = MEMORY[0x1E696AB28];
      v63[0] = *(a1 + 64);
      v63[1] = v16;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      v37 = [v17 andPredicateWithSubpredicates:v18];
    }

    else
    {
      v37 = *(a1 + 64);
    }

    v38 = 0;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__1;
  v59 = __Block_byref_object_dispose__1;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_3;
  v52[3] = &unk_1E8319768;
  v53 = *(a1 + 32);
  v54 = *(a1 + 112);
  v60 = MEMORY[0x1CCA78840](v52);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_4;
  v39[3] = &unk_1E83197E0;
  v19 = *(a1 + 32);
  v20 = *(a1 + 120);
  v40 = v19;
  v51 = v20;
  v41 = *(a1 + 56);
  v42 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v43 = v21;
  v44 = v22;
  v45 = *(a1 + 88);
  v46 = *(a1 + 96);
  v23 = v10;
  v47 = v23;
  v48 = *(a1 + 104);
  v50 = &v55;
  v49 = *(a1 + 112);
  v24 = MEMORY[0x1CCA78840](v39);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  v29 = *(a1 + 72);
  v30 = [v35 count];
  v31 = v24;
  if (!v30)
  {
    v31 = v56[5];
  }

  [v25 _performNetDomainsQueryOnService:v26 entityName:v27 fetchProps:v23 pred:v37 sort:v28 actions:v29 queryTimer:v33 replyProcessBlock:v31 accumulatedResults:v34 callbackBlock:v36];

  _Block_object_dispose(&v55, 8);
  return 0;
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"domain"];
  [v2 addObject:v3];
}

uint64_t __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  [*(a1 + 32) addObjectsFromArray:v9];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v9, *(a1 + 32), v10);
  }

  else
  {
    v12 = [*(a1 + 32) sortedArrayUsingComparator:countDescSortComparator];
    v13 = *MEMORY[0x1E69D5270];
    v17[0] = *MEMORY[0x1E69D5268];
    v17[1] = v13;
    v18[0] = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v18[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    if (v10)
    {
      (*(v10 + 2))(v10, v15, 0, 0);
    }

    v10 = v12;
  }

  return 0;
}

uint64_t __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v57 = a2;
  v8 = a3;
  v9 = a5;
  v10 = [v8 mutableCopy];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = usageLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v70 = [v8 count];
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "Processing %ld overlapping domains", buf, 0xCu);
  }

  v14 = *(a1 + 32);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_651;
  v60[3] = &unk_1E83197B8;
  v15 = v10;
  v61 = v15;
  v16 = v11;
  v62 = v16;
  v17 = v12;
  v63 = v17;
  [v14 enumerateObjectsUsingBlock:v60];
  v18 = [v17 count];
  if (v18)
  {
    v19 = usageLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      *buf = 138412290;
      v70 = v20;
      _os_log_impl(&dword_1C85F9000, v19, OS_LOG_TYPE_DEBUG, "Current results: %@", buf, 0xCu);
    }

    v22 = usageLogHandle(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = v17;
      _os_log_impl(&dword_1C85F9000, v22, OS_LOG_TYPE_DEBUG, "Removing modified results: %@", buf, 0xCu);
    }

    v23 = *(a1 + 32);
    v24 = [v17 allObjects];
    [v23 removeObjectsInArray:v24];

    v26 = usageLogHandle(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v70 = v27;
      _os_log_impl(&dword_1C85F9000, v26, OS_LOG_TYPE_DEBUG, "Removed (new) total results: %@", buf, 0xCu);
    }
  }

  v28 = [v16 count];
  if (v28)
  {
    v29 = usageLogHandle(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v70 = v16;
      _os_log_impl(&dword_1C85F9000, v29, OS_LOG_TYPE_DEBUG, "Adding modified domains: %@", buf, 0xCu);
    }

    v30 = usageLogHandle([*(a1 + 32) addObjectsFromArray:v16]);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 32);
      *buf = 138412290;
      v70 = v31;
      _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_DEBUG, "Added (new) total results: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 120) - 1 >= [*(a1 + 32) count])
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = *(a1 + 32);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_654;
    v58[3] = &unk_1E83196F0;
    v36 = v34;
    v59 = v36;
    [v35 enumerateObjectsUsingBlock:v58];
    v56 = v15;
    if ([v36 count] && (objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"NOT (domain IN %@)", v36), (v37 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v38 = v37;
      v39 = MEMORY[0x1E696AB28];
      v40 = *(a1 + 40);
      if (v40)
      {
        v68[0] = *(a1 + 48);
        v68[1] = v37;
        v68[2] = v40;
        v41 = MEMORY[0x1E695DEC8];
        v42 = v68;
        v43 = 3;
      }

      else
      {
        v67[0] = *(a1 + 48);
        v67[1] = v37;
        v41 = MEMORY[0x1E695DEC8];
        v42 = v67;
        v43 = 2;
      }

      v52 = [v41 arrayWithObjects:v42 count:v43];
      v47 = [v39 andPredicateWithSubpredicates:v52];
    }

    else
    {
      v44 = *(a1 + 40);
      if (v44)
      {
        v45 = MEMORY[0x1E696AB28];
        v66[0] = *(a1 + 48);
        v66[1] = v44;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
        v47 = [v45 andPredicateWithSubpredicates:v46];
      }

      else
      {
        v47 = *(a1 + 48);
      }

      v38 = 0;
    }

    v53 = *(a1 + 120);
    if (v53)
    {
      v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v53 - objc_msgSend(*(a1 + 32), "count")}];
      [*(a1 + 56) setObject:v54 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    }

    v33 = v57;
    [*(a1 + 64) _performNetDomainsQueryOnService:*(a1 + 72) entityName:*(a1 + 80) fetchProps:*(a1 + 88) pred:v47 sort:*(a1 + 96) actions:*(a1 + 56) queryTimer:v57 replyProcessBlock:*(*(*(a1 + 112) + 8) + 40) accumulatedResults:0 callbackBlock:v9];

    v15 = v56;
  }

  else
  {
    v32 = *(a1 + 104);
    if (v32)
    {
      v33 = v57;
      (*(v32 + 16))(v32, v57, v8, *(a1 + 32), v9);
    }

    else
    {
      v48 = [*(a1 + 32) sortedArrayUsingComparator:countDescSortComparator];
      v49 = *MEMORY[0x1E69D5270];
      v64[0] = *MEMORY[0x1E69D5268];
      v64[1] = v49;
      v65[0] = v48;
      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
      v65[1] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];

      if (v9)
      {
        (*(v9 + 2))(v9, v51, 0, 0);
      }

      v9 = v48;
      v33 = v57;
    }
  }

  return 0;
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_651(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (![a1[4] count])
  {
    *a4 = 1;
  }

  v7 = [v6 objectForKeyedSubscript:@"domain"];
  v8 = [v6 objectForKeyedSubscript:@"domainOwner"];
  v9 = [v6 objectForKeyedSubscript:@"domainType"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -1;
  v10 = a1[4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2_652;
  v15[3] = &unk_1E8319790;
  v11 = v7;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = v6;
  v19 = v14;
  v20 = a1[5];
  v21 = a1[6];
  v22 = &v23;
  [v10 enumerateObjectsUsingBlock:v15];
  if ((v24[3] & 0x8000000000000000) == 0)
  {
    [a1[4] removeObjectAtIndex:?];
  }

  _Block_object_dispose(&v23, 8);
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2_652(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"domain"];
  v9 = [v7 objectForKeyedSubscript:@"domainOwner"];
  v10 = [v7 objectForKeyedSubscript:@"domainType"];
  if ([*(a1 + 32) isEqualToString:v8] && objc_msgSend(*(a1 + 40), "isEqualToString:", v9) && objc_msgSend(*(a1 + 48), "isEqual:", v10))
  {
    v15 = [*(a1 + 56) objectForKeyedSubscript:@"count"];
    v14 = [v7 objectForKeyedSubscript:@"count"];
    v11 = usageLogHandle(v14);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = [v10 intValue];
      v22 = 2048;
      v23 = [v15 integerValue];
      v24 = 2048;
      v25 = [v14 integerValue];
      _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_INFO, "Found overlapping domain %@ (%@) <%d> [%ld + %ld]", buf, 0x30u);
    }

    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 56)];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "integerValue") + objc_msgSend(v15, "integerValue")}];
    [v12 setObject:v13 forKeyedSubscript:@"count"];

    [*(a1 + 64) addObject:v12];
    [*(a1 + 72) addObject:*(a1 + 56)];
    [*(a1 + 72) addObject:v7];
    *(*(*(a1 + 80) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_654(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"domain"];
  [v2 addObject:v3];
}

- (void)_networkDomainsQueryViewTypeDomain:(id)domain entityName:(id)name unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  domainCopy = domain;
  nameCopy = name;
  actionsCopy = actions;
  blockCopy = block;
  v15 = countOfDistinctKeyDescriptor();
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  v17 = countOfDistinctKeyDescriptor();
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d AND context != ''", 2];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke;
  v54[3] = &unk_1E8319830;
  v54[4] = self;
  v19 = domainCopy;
  v55 = v19;
  v20 = nameCopy;
  v56 = v20;
  limitCopy = limit;
  v21 = actionsCopy;
  v57 = v21;
  v22 = v15;
  v58 = v22;
  v23 = v16;
  v59 = v23;
  v24 = v17;
  v60 = v24;
  v25 = v18;
  v61 = v25;
  v26 = MEMORY[0x1CCA78840](v54);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_2;
  v42[3] = &unk_1E8319858;
  v43 = v23;
  v44 = v25;
  selfCopy = self;
  selfCopy2 = self;
  v46 = v19;
  optionCopy = option;
  limitCopy2 = limit;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  v50 = v24;
  v27 = v26;
  v51 = v27;
  v36 = v24;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = v25;
  v33 = v23;
  v34 = MEMORY[0x1CCA78840](v42);
  if (limit || option == 1)
  {
    v35 = MEMORY[0x1CCA78840]();
  }

  else
  {
    v35 = 0;
  }

  [(UsageFeed *)selfCopy __networkDomainsQueryDomains:v31 entityName:v30 unnamedDomainsOption:option limit:limit actions:v29 accumulatedResults:v39 aggregateProperty:v36 predicate:v32 altAggregateProperty:v28 altPredicate:v33 ipAggregateProperty:0 replyProcessBlock:v35 callbackBlock:blockCopy];
}

uint64_t __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a5;
  v8 = a4;
  v9 = entityConstValueForNameDescriptor();
  [*(a1 + 32) __networkDomainsQueryDomains:*(a1 + 40) entityName:*(a1 + 48) unnamedDomainsOption:3 limit:*(a1 + 96) actions:*(a1 + 56) accumulatedResults:v8 aggregateProperty:*(a1 + 64) predicate:*(a1 + 72) altAggregateProperty:*(a1 + 80) altPredicate:*(a1 + 88) ipAggregateProperty:v9 replyProcessBlock:0 callbackBlock:v7];

  return 0;
}

uint64_t __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_3;
  v22[3] = &unk_1E83196F0;
  v10 = v9;
  v23 = v10;
  [v7 enumerateObjectsUsingBlock:v22];
  if ([v10 count])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (domain IN %@)", v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v11)
  {
    v14 = MEMORY[0x1E696AB28];
    v25[0] = *(a1 + 32);
    v25[1] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = MEMORY[0x1E696AB28];
    v24[0] = *(a1 + 40);
    v24[1] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];

    v12 = v16;
    v13 = v19;
  }

  if (*(a1 + 104) == 1)
  {
    v20 = *(a1 + 96);
  }

  else
  {
    v20 = 0;
  }

  [*(a1 + 48) __networkDomainsQueryDomains:*(a1 + 56) entityName:*(a1 + 64) unnamedDomainsOption:*(a1 + 80) limit:v12 actions:*(a1 + 88) accumulatedResults:v13 aggregateProperty:0 predicate:v20 altAggregateProperty:v8 altPredicate:? ipAggregateProperty:? replyProcessBlock:? callbackBlock:?];

  return 0;
}

void __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"domain"];
  [v2 addObject:v3];
}

- (void)__networkDomainsQuerySecondLevelViewDomains:(id)domains entityName:(id)name unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions viewPredicate:(id)predicate callbackBlock:(id)block
{
  v60[2] = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  nameCopy = name;
  actionsCopy = actions;
  predicateCopy = predicate;
  v17 = *MEMORY[0x1E69D5280];
  blockCopy = block;
  v18 = functionOnKeyDescriptor();
  v19 = functionOnKeyDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v18];
  [v20 addAggregateProperty:v19];
  [v20 addGroupByProperty:@"domain"];
  [v20 addFetchProperty:@"domain"];
  [v20 addGroupByProperty:@"domainOwner"];
  [v20 addFetchProperty:@"domainOwner"];
  [v20 addGroupByProperty:@"domainType"];
  [v20 addFetchProperty:@"domainType"];
  v21 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v17 ascending:0];
  v22 = (*(predicateForUnnamedDomains + 2))(predicateForUnnamedDomains, option);
  v44 = v22;
  if (v22)
  {
    v42 = MEMORY[0x1E696AB28];
    v60[0] = predicateCopy;
    v60[1] = v22;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    v23 = v21;
    v24 = v19;
    v25 = actionsCopy;
    v26 = v18;
    v27 = predicateCopy;
    optionCopy = option;
    limitCopy = limit;
    v31 = v30 = domainsCopy;
    v43 = [v42 andPredicateWithSubpredicates:v31];

    domainsCopy = v30;
    limit = limitCopy;
    option = optionCopy;
    predicateCopy = v27;
    v18 = v26;
    actionsCopy = v25;
    v19 = v24;
    v21 = v23;
  }

  else
  {
    v43 = predicateCopy;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v32 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __147__UsageFeed_NetworkDomains____networkDomainsQuerySecondLevelViewDomains_entityName_unnamedDomainsOption_limit_actions_viewPredicate_callbackBlock___block_invoke;
  v49[3] = &unk_1E8319880;
  v50 = v18;
  v51 = v19;
  v52 = predicateCopy;
  selfCopy = self;
  v54 = domainsCopy;
  v55 = nameCopy;
  v56 = v21;
  v57 = actionsCopy;
  v58 = v33;
  optionCopy2 = option;
  v34 = v33;
  v35 = actionsCopy;
  v36 = v21;
  v37 = nameCopy;
  v38 = domainsCopy;
  v46 = predicateCopy;
  v41 = v19;
  v39 = v18;
  v40 = MEMORY[0x1CCA78840](v49);
  [(UsageFeed *)self _performNetDomainsQueryOnService:v38 entityName:v37 fetchProps:v20 pred:v43 sort:v36 actions:v35 queryTimer:0 replyProcessBlock:v40 accumulatedResults:v34 callbackBlock:blockCopy];
}

BOOL __147__UsageFeed_NetworkDomains____networkDomainsQuerySecondLevelViewDomains_entityName_unnamedDomainsOption_limit_actions_viewPredicate_callbackBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 104);
  if (v5 == 1)
  {
    v7 = a5;
    v8 = entityConstValueForNameDescriptor();
    v9 = objc_alloc_init(MEMORY[0x1E69D5138]);
    [v9 addAggregateProperty:*(a1 + 32)];
    [v9 addAggregateProperty:*(a1 + 40)];
    [v9 addAggregateProperty:v8];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainClassification == %d", 2];
    v11 = MEMORY[0x1E696AB28];
    v15[0] = *(a1 + 48);
    v15[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    [*(a1 + 56) _performNetDomainsQueryOnService:*(a1 + 64) entityName:*(a1 + 72) fetchProps:v9 pred:v13 sort:*(a1 + 80) actions:*(a1 + 88) queryTimer:0 replyProcessBlock:0 accumulatedResults:*(a1 + 96) callbackBlock:v7];
  }

  return v5 != 1;
}

- (void)_networkDomainsQueryViewTypeAppDomains:(id)domains entityName:(id)name bundleIdentifier:(id)identifier unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v16 = MEMORY[0x1E696AE18];
  blockCopy = block;
  actionsCopy = actions;
  nameCopy = name;
  domainsCopy = domains;
  identifier = [v16 predicateWithFormat:@"kind == %d AND bundleName == %@", 1, identifier];
  [(UsageFeed *)self __networkDomainsQuerySecondLevelViewDomains:domainsCopy entityName:nameCopy unnamedDomainsOption:option limit:limit actions:actionsCopy viewPredicate:identifier callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeAppWebsites:(id)websites entityName:(id)name bundleIdentifier:(id)identifier verificationContext:(int64_t)context limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v16 = MEMORY[0x1E696AE18];
  blockCopy = block;
  actionsCopy = actions;
  nameCopy = name;
  websitesCopy = websites;
  identifier = [v16 predicateWithFormat:@"kind == %d AND context != '' AND bundleName == %@", 2, identifier];
  [(UsageFeed *)self __networkDomainsQueryWebsites:websitesCopy entityName:nameCopy verificationContext:context limit:limit actions:actionsCopy viewPredicate:identifier callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeAppDomainsOtherContent:(id)content entityName:(id)name bundleIdentifier:(id)identifier unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v16 = MEMORY[0x1E696AE18];
  blockCopy = block;
  actionsCopy = actions;
  nameCopy = name;
  contentCopy = content;
  identifier = [v16 predicateWithFormat:@"context == '' AND kind == %d AND bundleName == %@", 2, identifier];
  [(UsageFeed *)self __networkDomainsQuerySecondLevelViewDomains:contentCopy entityName:nameCopy unnamedDomainsOption:option limit:limit actions:actionsCopy viewPredicate:identifier callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeWebsiteHits:(id)hits entityName:(id)name website:(id)website limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  blockCopy = block;
  actionsCopy = actions;
  websiteCopy = website;
  nameCopy = name;
  hitsCopy = hits;
  v23 = functionOnKeyDescriptor();
  v19 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v19 addAggregateProperty:v23];
  [v19 addGroupByProperty:@"context"];
  websiteCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"*.%@", websiteCopy];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"context == %@ AND (domain == %@ OR domain LIKE %@)", websiteCopy, websiteCopy, websiteCopy];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v22 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:hitsCopy entityName:nameCopy fetchProps:v19 pred:v21 sort:0 actions:actionsCopy queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeWebsiteDomains:(id)domains entityName:(id)name website:(id)website unnamedDomainsOption:(int64_t)option limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v16 = MEMORY[0x1E696AE18];
  blockCopy = block;
  actionsCopy = actions;
  nameCopy = name;
  domainsCopy = domains;
  website = [v16 predicateWithFormat:@"context == %@", website];
  [(UsageFeed *)self __networkDomainsQuerySecondLevelViewDomains:domainsCopy entityName:nameCopy unnamedDomainsOption:option limit:limit actions:actionsCopy viewPredicate:website callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeWebsiteApps:(id)apps entityName:(id)name website:(id)website limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v12 = *MEMORY[0x1E69D5218];
  blockCopy = block;
  actionsCopy = actions;
  websiteCopy = website;
  nameCopy = name;
  appsCopy = apps;
  v26 = functionOnKeyDescriptor();
  v18 = functionOnKeyDescriptor();
  v19 = entityKeyPathForNameDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v26];
  [v20 addAggregateProperty:v19];
  [v20 addAggregateProperty:v18];
  [v20 addGroupByProperty:@"bundleName"];
  websiteCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"context == %@ AND bundleName != NULL", websiteCopy];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v12 ascending:0];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:appsCopy entityName:nameCopy fetchProps:v20 pred:websiteCopy sort:v22 actions:actionsCopy queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeDomainApps:(id)apps entityName:(id)name domain:(id)domain limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v13 = *MEMORY[0x1E69D5210];
  blockCopy = block;
  actionsCopy = actions;
  domainCopy = domain;
  nameCopy = name;
  appsCopy = apps;
  v25 = functionOnKeyDescriptor();
  v19 = entityKeyPathForNameDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v25];
  [v20 addAggregateProperty:v19];
  [v20 addGroupByProperty:@"bundleName"];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ AND bundleName != NULL AND kind == %d", domainCopy, 1];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v13 ascending:0];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:appsCopy entityName:nameCopy fetchProps:v20 pred:v21 sort:v22 actions:actionsCopy queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:blockCopy];
}

- (void)_networkDomainsQueryViewTypeDomainWebsites:(id)websites entityName:(id)name domain:(id)domain limit:(unint64_t)limit actions:(id)actions callbackBlock:(id)block
{
  v14 = *MEMORY[0x1E69D5210];
  blockCopy = block;
  actionsCopy = actions;
  domainCopy = domain;
  nameCopy = name;
  websitesCopy = websites;
  v24 = functionOnKeyDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v24];
  [v20 addGroupByProperty:@"context"];
  [v20 addFetchProperty:@"context"];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ AND context != '' AND kind == %d", domainCopy, 2];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v14 ascending:0];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:websitesCopy entityName:nameCopy fetchProps:v20 pred:v21 sort:v22 actions:actionsCopy queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:blockCopy];
}

- (void)_legacyNetworkDomainsQueryOnService:(id)service entityName:(id)name pred:(id)pred limit:(unint64_t)limit actions:(id)actions options:(id)options postProcessingBlock:(id)block
{
  v71 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  nameCopy = name;
  predCopy = pred;
  actionsCopy = actions;
  optionsCopy = options;
  blockCopy = block;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__577;
  v63 = __Block_byref_object_dispose__578;
  v64 = 0;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__1;
  v57[4] = __Block_byref_object_dispose__1;
  v58 = MEMORY[0x1CCA78840](blockCopy);
  v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v21 = v60[5];
  v60[5] = v20;

  v22 = v60[5];
  v23 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v24 = v60[5];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke;
  handler[3] = &unk_1E83195F0;
  v55 = &v59;
  v25 = nameCopy;
  v54 = v25;
  v56 = v57;
  dispatch_source_set_event_handler(v24, handler);
  v27 = usageLogHandle(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = v60[5];
    *buf = 134217984;
    v66 = v28;
    _os_log_impl(&dword_1C85F9000, v27, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Activating timer %p", buf, 0xCu);
  }

  dispatch_activate(v60[5]);
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
  [actionsCopy setObject:v29 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  [actionsCopy setObject:v30 forKeyedSubscript:*MEMORY[0x1E69D52A8]];

  v32 = usageLogHandle(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v66 = v25;
    v67 = 2048;
    limitCopy = limit;
    v69 = 2048;
    v70 = 0;
    _os_log_impl(&dword_1C85F9000, v32, OS_LOG_TYPE_DEFAULT, "%@: Will fetch %lu records per batch, starting first batch from offset %lu", buf, 0x20u);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_691;
  v41[3] = &unk_1E83198F8;
  v49 = &v59;
  v33 = v25;
  v42 = v33;
  selfCopy = self;
  v34 = predCopy;
  v44 = v34;
  v35 = serviceCopy;
  v45 = v35;
  limitCopy2 = limit;
  v52 = 0;
  v36 = v19;
  v46 = v36;
  v37 = actionsCopy;
  v47 = v37;
  v38 = optionsCopy;
  v48 = v38;
  v50 = v57;
  [v35 performQueryOnEntity:v33 pred:v34 sort:0 actions:v37 reply:v41];

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v59, 8);
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = usageLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Cancelling timer %p after firing", &v11, 0xCu);
  }

  dispatch_source_cancel(*(*(a1[5] + 8) + 40));
  v5 = usageLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = &stru_1F483F350;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "%@: Timed out while waiting for XPC response. %@", &v11, 0x16u);
  }

  v7 = *(*(a1[6] + 8) + 40);
  if (v7)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v7 + 16))(v7, MEMORY[0x1E695E0F8], v8, 0);

    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_691(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 88) + 8) + 40);
  v5 = dispatch_source_testcancel(v4);
  if (v5)
  {
    v6 = usageLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "%@: Timeout timer already fired; will not process XPC reply for performance", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 104);
    v12 = *(a1 + 112);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v19 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_693;
    v20[3] = &unk_1E83198D0;
    v15 = v8;
    v16 = *(a1 + 40);
    v21 = v15;
    v22 = v16;
    v23 = *(a1 + 80);
    v24 = *(a1 + 72);
    v25 = *(a1 + 56);
    v17 = *(a1 + 48);
    v18 = *(a1 + 96);
    v26 = v17;
    v27 = v18;
    [v9 _batchFetchCallbackWithResults:v3 logPrefix:"AppDomainUsage" entityName:v15 pred:v19 service:v10 limit:v11 offset:v12 container:v13 actions:v14 reply:v20];

    v6 = v21;
  }
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_693(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (v3)
  {
    v6 = usageLogHandle(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v25 = v7;
      v26 = 2048;
      v27 = [v3 count];
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEFAULT, "%@: All batch fetches complete, records fetched %lu", buf, 0x16u);
    }

    v8 = [*(a1 + 40) groupRecordsByBundleId:v3];

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69D5278]];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = [v10 BOOLValue];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    [*(a1 + 56) setObject:&unk_1F4841BD8 forKeyedSubscript:*MEMORY[0x1E69D52A8]];
    [*(a1 + 56) setObject:&unk_1F4841BD8 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    v15 = *(a1 + 64);
    v16 = [MEMORY[0x1E69D5168] entityName];
    v17 = *(a1 + 72);
    v18 = *(a1 + 56);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_695;
    v20[3] = &unk_1E83198A8;
    v20[4] = *(a1 + 40);
    v23 = v11;
    v5 = v8;
    v19 = *(a1 + 80);
    v21 = v5;
    v22 = v19;
    [v15 performQueryOnEntity:v16 pred:v17 sort:0 actions:v18 reply:v20];
  }

  else
  {
    v12 = *(*(*(a1 + 80) + 8) + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v5, 0, 0);
      v13 = *(*(a1 + 80) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }
  }
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_695(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (obj)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v23)
    {
      v3 = @"bundleName";
      v22 = *v32;
      do
      {
        v4 = 0;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v4;
          v5 = *(*(&v31 + 1) + 8 * v4);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = [v5 allKeys];
          v6 = [v26 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v28;
            v25 = v5;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v28 != v8)
                {
                  objc_enumerationMutation(v26);
                }

                v10 = *(*(&v27 + 1) + 8 * i);
                if ([v10 containsString:v3])
                {
                  v11 = [*(a1 + 32) createEndpointEntryFrom:v5 withKey:@"UnresolvedEndpoints" showDetails:*(a1 + 56)];
                  v12 = [*(a1 + 32) createEndpointEntryFrom:v5 withKey:@"ResolvedEndpoints" showDetails:*(a1 + 56)];
                  v13 = [v5 objectForKeyedSubscript:v10];
                  v14 = [*(a1 + 40) objectForKeyedSubscript:v13];
                  v15 = v14;
                  if (v14)
                  {
                    [v14 addObject:v11];
                    [v15 addObject:v12];
                  }

                  else
                  {
                    v16 = v3;
                    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [v17 addObject:v11];
                    [v17 addObject:v12];
                    [*(a1 + 40) setObject:v17 forKeyedSubscript:v13];

                    v3 = v16;
                    v5 = v25;
                  }
                }
              }

              v7 = [v26 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v7);
          }

          v4 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v23);
    }
  }

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, *(a1 + 40), 0, 0);
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;
  }
}

- (BOOL)setNetworkDomainsOptions:(id)options reply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v25 = optionsCopy;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> setNetworkDomainsOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v21 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v20];

    if (v12)
    {
      v22 = *MEMORY[0x1E69D5388];
      null = [MEMORY[0x1E695DFB0] null];
      v23 = null;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v16 = usageLogHandle(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = optionsCopy;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "setOption:%@ inScopes:%@", buf, 0x16u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke_702;
      v18[3] = &unk_1E8319528;
      v19 = v11;
      [v12 setOption:optionsCopy inScopes:v14 reply:v18];
    }
  }

  return replyCopy != 0;
}

void __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setNetworkDomainsOptions:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke_702(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "setOption:inScopes:reply: received callback with before:%@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)getNetworkDomainsOptions:(id)options reply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v25 = optionsCopy;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> getNetworkDomainsOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v21 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v20];

    if (v12)
    {
      v22 = *MEMORY[0x1E69D5388];
      null = [MEMORY[0x1E695DFB0] null];
      v23 = null;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v16 = usageLogHandle(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = optionsCopy;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "getOption:%@ inScopes:%@", buf, 0x16u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke_703;
      v18[3] = &unk_1E8319528;
      v19 = v11;
      [v12 getOption:optionsCopy inScopes:v14 reply:v18];
    }
  }

  return replyCopy != 0;
}

void __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for getNetworkDomainsOptions:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke_703(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "getOption:inScopes:reply: received callback with current:%@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)performNetworkDomainsActionWithOptions:(id)options reply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = usageLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v25 = optionsCopy;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> performNetworkDomainsActionWithOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v21 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v20];

    if (v12)
    {
      v22 = *MEMORY[0x1E69D5388];
      null = [MEMORY[0x1E695DFB0] null];
      v23 = null;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v16 = usageLogHandle(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = optionsCopy;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "performActionWithOptions:%@ inScopes:%@", buf, 0x16u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke_704;
      v18[3] = &unk_1E8318D98;
      v19 = v11;
      [v12 performActionWithOptions:optionsCopy inScopes:v14 reply:v18];
    }
  }

  return replyCopy != 0;
}

void __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for performNetworkDomainsActionWithOptions:reply: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke_704(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = usageLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "performActionWithOptions:inScopes:reply: received callback with error:%@, outcome:%@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)createEndpointEntryFrom:(id)from withKey:(id)key showDetails:(BOOL)details
{
  detailsCopy = details;
  fromCopy = from;
  keyCopy = key;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (fromCopy && keyCopy)
  {
    [v9 setObject:keyCopy forKeyedSubscript:@"domain"];
    v11 = [fromCopy objectForKeyedSubscript:keyCopy];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (detailsCopy)
        {
          [v10 setObject:v11 forKeyedSubscript:@"hits"];
        }

        else
        {
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          [v10 setObject:v12 forKeyedSubscript:@"hits"];
        }
      }
    }

    v13 = [fromCopy objectForKeyedSubscript:@"hasApp.bundleName"];
    [v10 setObject:v13 forKeyedSubscript:@"bundleID"];

    v14 = [fromCopy objectForKeyedSubscript:@"timeStamp"];
    [v10 setObject:v14 forKeyedSubscript:@"timeStamp"];

    v15 = [fromCopy objectForKeyedSubscript:@"firstTimeStamp"];
    [v10 setObject:v15 forKeyedSubscript:@"firstTimeStamp"];

    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"domainOwner"];
    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"context"];
    [v10 setObject:&unk_1F4841BD8 forKeyedSubscript:@"contextVerificationType"];
    [v10 setObject:&unk_1F4841BD8 forKeyedSubscript:@"domainClassification"];
    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"domainType"];
    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"initiatedType"];
  }

  return v10;
}

- (id)networkDomainInitiatedTypeString:(unsigned int)string
{
  v3 = @"Unknown";
  if (string == 2)
  {
    v3 = @"NonAppInitiated";
  }

  if (string == 1)
  {
    return @"AppInitiated";
  }

  else
  {
    return v3;
  }
}

- (id)groupRecordsByBundleId:(id)id
{
  v114 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = idCopy;
  v64 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (v64)
  {
    v63 = *v106;
    v66 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v106 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v5;
        v6 = *(*(&v105 + 1) + 8 * v5);
        allKeys = [v6 allKeys];
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v73 = [allKeys countByEnumeratingWithState:&v101 objects:v112 count:16];
        v8 = 0;
        if (v73)
        {
          v72 = *v102;
          v67 = allKeys;
          do
          {
            v9 = 0;
            do
            {
              if (*v102 != v72)
              {
                v10 = v9;
                objc_enumerationMutation(allKeys);
                v9 = v10;
              }

              v74 = v9;
              v11 = *(*(&v101 + 1) + 8 * v9);
              if ([v11 containsString:@"bundleName"])
              {
                v12 = [v6 objectForKey:v11];

                v8 = v12;
                v13 = [v4 objectForKeyedSubscript:v12];
                v70 = v13;
                if (!v13)
                {
                  v47 = objc_opt_new();
                  v48 = v8;
                  v49 = [v6 mutableCopy];
                  [v47 addObject:v49];

                  v8 = v48;
                  [v4 setObject:v47 forKeyedSubscript:v48];
                  goto LABEL_47;
                }

                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v14 = v13;
                v77 = [v14 countByEnumeratingWithState:&v97 objects:v111 count:16];
                if (!v77)
                {

                  goto LABEL_46;
                }

                v68 = v12;
                v69 = 0;
                v75 = *v98;
                v76 = v14;
                while (2)
                {
                  v15 = 0;
LABEL_16:
                  if (*v98 != v75)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v16 = *(*(&v97 + 1) + 8 * v15);
                  v81 = [v16 objectForKeyedSubscript:@"domain"];
                  v87 = [v6 objectForKeyedSubscript:@"domain"];
                  v17 = [v16 objectForKeyedSubscript:@"kind"];
                  unsignedIntegerValue = [v17 unsignedIntegerValue];

                  v19 = [v6 objectForKeyedSubscript:@"kind"];
                  unsignedIntegerValue2 = [v19 unsignedIntegerValue];

                  v21 = [v16 objectForKeyedSubscript:@"domainType"];
                  unsignedIntegerValue3 = [v21 unsignedIntegerValue];

                  v22 = [v6 objectForKeyedSubscript:@"domainType"];
                  unsignedIntegerValue4 = [v22 unsignedIntegerValue];

                  v85 = [v16 objectForKeyedSubscript:@"context"];
                  v83 = [v6 objectForKeyedSubscript:@"context"];
                  [v16 objectForKeyedSubscript:@"contextVerificationType"];
                  v25 = v24 = v6;
                  integerValue = [v25 integerValue];

                  v26 = [v24 objectForKeyedSubscript:@"contextVerificationType"];
                  integerValue2 = [v26 integerValue];

                  v27 = [v16 objectForKeyedSubscript:@"domainClassification"];
                  integerValue3 = [v27 integerValue];

                  v6 = v24;
                  v29 = [v24 objectForKeyedSubscript:@"domainClassification"];
                  integerValue4 = [v29 integerValue];

                  if (unsignedIntegerValue == unsignedIntegerValue2)
                  {
                    v31 = 1;
                    v33 = v83;
                    v32 = v85;
                    if (unsignedIntegerValue3 != unsignedIntegerValue4)
                    {
                      v14 = v76;
                      v34 = v81;
                      v35 = v87;
                      goto LABEL_37;
                    }

                    v34 = v81;
                    v35 = v87;
                    if (!v87 || !v81 || ![v81 isEqualToString:v87] || !v83 || !v85 || !objc_msgSend(v85, "isEqualToString:", v83) || integerValue != integerValue2)
                    {
                      v14 = v76;
                      goto LABEL_37;
                    }

                    v36 = integerValue3 == integerValue4;
                    v14 = v76;
                    if (!v36)
                    {
LABEL_37:

                      if (!v31)
                      {
                        goto LABEL_42;
                      }

                      if (v77 == ++v15)
                      {
                        v46 = [v14 countByEnumeratingWithState:&v97 objects:v111 count:16];
                        v77 = v46;
                        if (!v46)
                        {
LABEL_42:

                          v4 = v66;
                          allKeys = v67;
                          v8 = v68;
                          if (v69)
                          {
LABEL_48:

                            goto LABEL_49;
                          }

LABEL_46:
                          v47 = [v6 mutableCopy];
                          [v14 addObject:v47];
LABEL_47:

                          goto LABEL_48;
                        }

                        continue;
                      }

                      goto LABEL_16;
                    }

                    v37 = [v16 objectForKeyedSubscript:@"hits"];
                    unsignedIntegerValue5 = [v37 unsignedIntegerValue];

                    v39 = [v6 objectForKeyedSubscript:@"hits"];
                    unsignedIntegerValue6 = [v39 unsignedIntegerValue];

                    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue6 + unsignedIntegerValue5];
                    [v16 setObject:v41 forKeyedSubscript:@"hits"];

                    v42 = [v16 objectForKeyedSubscript:@"firstTimeStamp"];
                    v43 = [v6 objectForKeyedSubscript:@"firstTimeStamp"];
                    if ([v43 compare:v42] == -1)
                    {
                      [v16 setObject:v43 forKeyedSubscript:@"firstTimeStamp"];
                    }

                    v44 = [v16 objectForKeyedSubscript:@"timeStamp"];
                    v45 = [v6 objectForKeyedSubscript:@"timeStamp"];
                    if ([v45 compare:v44] == 1)
                    {
                      [v16 setObject:v45 forKeyedSubscript:@"timeStamp"];
                    }

                    v31 = 0;
                    v69 = 1;
                  }

                  else
                  {
                    v31 = 1;
                    v14 = v76;
                    v34 = v81;
                  }

                  break;
                }

                v32 = v85;
                v35 = v87;
                v33 = v83;
                goto LABEL_37;
              }

LABEL_49:
              v9 = v74 + 1;
            }

            while (v74 + 1 != v73);
            v73 = [allKeys countByEnumeratingWithState:&v101 objects:v112 count:16];
          }

          while (v73);
        }

        v5 = v65 + 1;
      }

      while (v65 + 1 != v64);
      v64 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
    }

    while (v64);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v50 = v4;
  v86 = [v50 countByEnumeratingWithState:&v93 objects:v110 count:16];
  if (v86)
  {
    v82 = *v94;
    v84 = v50;
    do
    {
      v51 = 0;
      do
      {
        if (*v94 != v82)
        {
          objc_enumerationMutation(v50);
        }

        v88 = v51;
        v52 = *(*(&v93 + 1) + 8 * v51);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v53 = [v50 objectForKeyedSubscript:v52];
        v54 = [v53 countByEnumeratingWithState:&v89 objects:v109 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v90;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v90 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v89 + 1) + 8 * i);
              v59 = [v58 objectForKeyedSubscript:@"kind"];
              v60 = -[UsageFeed networkDomainInitiatedTypeString:](self, "networkDomainInitiatedTypeString:", [v59 unsignedIntValue]);

              [v58 setObject:0 forKeyedSubscript:@"kind"];
              [v58 setObject:v60 forKeyedSubscript:@"initiatedType"];
              [v58 setObject:v52 forKeyedSubscript:@"bundleID"];
              [v58 setObject:0 forKeyedSubscript:@"bundleName"];
              [v58 setObject:0 forKeyedSubscript:@"effectiveUserId"];
            }

            v55 = [v53 countByEnumeratingWithState:&v89 objects:v109 count:16];
          }

          while (v55);
        }

        v51 = v88 + 1;
        v50 = v84;
      }

      while (v88 + 1 != v86);
      v86 = [v84 countByEnumeratingWithState:&v93 objects:v110 count:16];
    }

    while (v86);
  }

  return v50;
}

@end