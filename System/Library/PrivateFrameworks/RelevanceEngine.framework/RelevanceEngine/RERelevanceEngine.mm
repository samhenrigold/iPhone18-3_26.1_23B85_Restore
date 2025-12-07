@interface RERelevanceEngine
+ (void)prewarmWithConfiguration:(id)configuration;
- (BOOL)isRunning;
- (BOOL)isSectionWithNameHistoric:(id)historic;
- (NSArray)subsystems;
- (NSString)description;
- (RERelevanceEngine)initWithConfiguration:(id)configuration;
- (RERelevanceEngine)initWithName:(id)name configuration:(id)configuration;
- (id)dictionaryFromElement:(id)element;
- (id)elementFromDictionary:(id)dictionary;
- (id)featuresForRelevanceProvider:(id)provider;
- (id)historicSectionForSection:(id)section;
- (id)sectionForHistoricSection:(id)section;
- (void)_addSubsystem:(id)subsystem;
- (void)_callbackQueue_notifyLoadingState;
- (void)_captureAndStoreDiagnosticLogs:(id)logs;
- (void)_notifyResumeCompleted;
- (void)_queue_pauseSubsystem:(id)subsystem;
- (void)_queue_resumeSubsystem:(id)subsystem;
- (void)_queue_resumeWithTimeout:(double)timeout completion:(id)completion;
- (void)_removeSubsystem:(id)subsystem;
- (void)activityTracker:(id)tracker didBeginActivity:(id)activity;
- (void)activityTracker:(id)tracker didEndActivity:(id)activity;
- (void)addElement:(id)element section:(id)section;
- (void)addObserver:(id)observer;
- (void)beginActivity:(id)activity forObject:(id)object;
- (void)dealloc;
- (void)endActivity:(id)activity forObject:(id)object;
- (void)enumerateRankedContent:(id)content;
- (void)enumerateRankedContentInSection:(id)section usingBlock:(id)block;
- (void)enumerateSectionDescriptorsWithOptions:(unint64_t)options includeHistoric:(BOOL)historic usingBlock:(id)block;
- (void)gatherMetrics;
- (void)pause;
- (void)pauseForSimulation;
- (void)removeElement:(id)element;
- (void)removeObserver:(id)observer;
- (void)resume;
- (void)resumeFromSimulation;
- (void)resumeWithTimeout:(double)timeout completion:(id)completion;
- (void)storeDiagnosticLogs:(id)logs;
- (void)storeDiagnosticLogsToFile:(id)file;
- (void)updateSectionsWithIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation RERelevanceEngine

+ (void)prewarmWithConfiguration:(id)configuration
{
  v188 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dataSourceLoader = [configurationCopy dataSourceLoader];
  [dataSourceLoader prewarm];

  relevanceProviderManagerLoader = [configurationCopy relevanceProviderManagerLoader];
  [relevanceProviderManagerLoader prewarm];

  REApplicationCachePrewarm();
  v111 = configurationCopy;
  sectionDescriptors = [v111 sectionDescriptors];
  v7 = [sectionDescriptors copy];

  v119 = [MEMORY[0x277CBEB58] set];
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v166 objects:&v182 count:16];
  if (v9)
  {
    v10 = *v167;
    v11 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v167 != v10)
        {
          objc_enumerationMutation(v8);
        }

        name = [*(*(&v166 + 1) + 8 * i) name];
        if ([v119 containsObject:name])
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:{@"Section with name %@ already exists. Please choose a unique name", name}];
        }

        else
        {
          [v119 addObject:name];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v166 objects:&v182 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v162 objects:v181 count:16];
  if (v16)
  {
    v17 = *v163;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v163 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [[_RESectionDescriptor alloc] initWithSectionDescriptor:*(*(&v162 + 1) + 8 * j)];
        [v14 addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v162 objects:v181 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v15;
  v21 = [obj countByEnumeratingWithState:&v158 objects:v180 count:16];
  if (v21)
  {
    v22 = *v159;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v159 != v22)
        {
          objc_enumerationMutation(obj);
        }

        historicSectionDescriptor = [*(*(&v158 + 1) + 8 * k) historicSectionDescriptor];
        if (historicSectionDescriptor)
        {
          v25 = [[_RESectionDescriptor alloc] initWithHistoricSectionDescriptor:historicSectionDescriptor];
          [v20 addObject:v25];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v158 objects:v180 count:16];
    }

    while (v21);
  }

  v112 = +[(REFeatureSet *)REMutableFeatureSet];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  primaryFeatures = [v111 primaryFeatures];
  n = [primaryFeatures countByEnumeratingWithState:&v154 objects:v179 count:16];
  if (n)
  {
    v28 = *v155;
    do
    {
      for (m = 0; m != n; ++m)
      {
        if (*v155 != v28)
        {
          objc_enumerationMutation(primaryFeatures);
        }

        v30 = *(*(&v154 + 1) + 8 * m);
        if ([v30 featureType] == 2)
        {
          v31 = RELogForDomain(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v178 = v30;
            _os_log_impl(&dword_22859F000, v31, OS_LOG_TYPE_DEFAULT, "Skipping loading primary feature %@ from configuration since it isn't a categorcial feature", buf, 0xCu);
          }
        }

        else
        {
          [v112 addFeature:v30];
        }
      }

      n = [primaryFeatures countByEnumeratingWithState:&v154 objects:v179 count:16];
    }

    while (n);
  }

  primaryFeatures2 = [v111 primaryFeatures];
  v120 = [primaryFeatures2 mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v117 = v14;
  v35 = [v117 countByEnumeratingWithState:&v150 objects:buf count:16];
  if (v35)
  {
    v36 = *v151;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v151 != v36)
        {
          objc_enumerationMutation(v117);
        }

        rules = [*(*(&v150 + 1) + 8 * n) rules];
        REExtractRules(rules, array, array2);
      }

      v35 = [v117 countByEnumeratingWithState:&v150 objects:buf count:16];
    }

    while (v35);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v116 = v20;
  v38 = [v116 countByEnumeratingWithState:&v146 objects:v176 count:16];
  if (v38)
  {
    v39 = *v147;
    do
    {
      for (n = 0; n != v38; ++n)
      {
        if (*v147 != v39)
        {
          objc_enumerationMutation(v116);
        }

        rules2 = [*(*(&v146 + 1) + 8 * n) rules];
        REExtractRules(rules2, array, array2);
      }

      v38 = [v116 countByEnumeratingWithState:&v146 objects:v176 count:16];
    }

    while (v38);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v41 = array;
  v42 = [v41 countByEnumeratingWithState:&v142 objects:v175 count:16];
  if (v42)
  {
    v43 = *v143;
    do
    {
      for (ii = 0; ii != v42; ++ii)
      {
        if (*v143 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = *(*(&v142 + 1) + 8 * ii);
        condition = [v45 condition];
        n = [condition _dependentFeatures];
        [v120 unionFeatureSet:n];

        conditionEvaluator = [v45 conditionEvaluator];
      }

      v42 = [v41 countByEnumeratingWithState:&v142 objects:v175 count:16];
    }

    while (v42);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v48 = array2;
  v49 = [v48 countByEnumeratingWithState:&v138 objects:v174 count:16];
  if (v49)
  {
    v50 = *v139;
    do
    {
      for (jj = 0; jj != v49; ++jj)
      {
        if (*v139 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = *(*(&v138 + 1) + 8 * jj);
        leftCondition = [v52 leftCondition];
        _dependentFeatures = [leftCondition _dependentFeatures];
        [v120 unionFeatureSet:_dependentFeatures];

        rightCondition = [v52 rightCondition];
        _dependentFeatures2 = [rightCondition _dependentFeatures];
        [v120 unionFeatureSet:_dependentFeatures2];

        comparison = [v52 comparison];
        n = [comparison _dependentFeatures];
        [v120 unionFeatureSet:n];

        leftConditionEvaluator = [v52 leftConditionEvaluator];
        rightConditionEvaluator = [v52 rightConditionEvaluator];
        comparisonConditionEvaluator = [v52 comparisonConditionEvaluator];
      }

      v49 = [v48 countByEnumeratingWithState:&v138 objects:v174 count:16];
    }

    while (v49);
  }

  v62 = REIntrinsicFeatureSet(v61);
  [v120 unionFeatureSet:v62];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  interactionDescriptors = [v111 interactionDescriptors];
  v64 = [interactionDescriptors countByEnumeratingWithState:&v134 objects:v173 count:16];
  if (v64)
  {
    v65 = *v135;
    do
    {
      for (kk = 0; kk != v64; ++kk)
      {
        if (*v135 != v65)
        {
          objc_enumerationMutation(interactionDescriptors);
        }

        n = *(*(&v134 + 1) + 8 * kk);
        selectionFeature = [n selectionFeature];

        if (selectionFeature)
        {
          selectionFeature2 = [n selectionFeature];
          [v120 addFeature:selectionFeature2];
        }

        identificationFeature = [n identificationFeature];

        if (identificationFeature)
        {
          identificationFeature2 = [n identificationFeature];
          [v120 addFeature:identificationFeature2];
        }

        biasFeature = [n biasFeature];

        if (biasFeature)
        {
          biasFeature2 = [n biasFeature];
          [v120 addFeature:biasFeature2];
        }
      }

      v64 = [interactionDescriptors countByEnumeratingWithState:&v134 objects:v173 count:16];
    }

    while (v64);
  }

  v73 = RERootFeatureSetForFeatures(v120);
  v110 = [v73 mutableCopy];

  v75 = REIntrinsicFeatureSet(v74);
  [v110 unionFeatureSet:v75];

  v109 = [v110 copy];
  v76 = [MEMORY[0x277CBEB58] set];
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v115 = v41;
  v77 = [v115 countByEnumeratingWithState:&v130 objects:v172 count:16];
  if (v77)
  {
    n = *v131;
    do
    {
      for (mm = 0; mm != v77; ++mm)
      {
        if (*v131 != n)
        {
          objc_enumerationMutation(v115);
        }

        condition2 = [*(*(&v130 + 1) + 8 * mm) condition];
        _inflectionFeatureValuePairs = [condition2 _inflectionFeatureValuePairs];
        [v76 unionSet:_inflectionFeatureValuePairs];
      }

      v77 = [v115 countByEnumeratingWithState:&v130 objects:v172 count:16];
    }

    while (v77);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v114 = v48;
  v81 = [v114 countByEnumeratingWithState:&v126 objects:v171 count:16];
  if (v81)
  {
    v82 = *v127;
    do
    {
      for (nn = 0; nn != v81; ++nn)
      {
        if (*v127 != v82)
        {
          objc_enumerationMutation(v114);
        }

        v84 = *(*(&v126 + 1) + 8 * nn);
        leftCondition2 = [v84 leftCondition];
        _inflectionFeatureValuePairs2 = [leftCondition2 _inflectionFeatureValuePairs];
        [v76 unionSet:_inflectionFeatureValuePairs2];

        rightCondition2 = [v84 rightCondition];
        n = [rightCondition2 _inflectionFeatureValuePairs];
        [v76 unionSet:n];

        comparison2 = [v84 comparison];
        _inflectionFeatureValuePairs3 = [comparison2 _inflectionFeatureValuePairs];
        [v76 unionSet:_inflectionFeatureValuePairs3];
      }

      v81 = [v114 countByEnumeratingWithState:&v126 objects:v171 count:16];
    }

    while (v81);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v113 = v76;
  v91 = [v113 countByEnumeratingWithState:&v122 objects:v170 count:16];
  if (v91)
  {
    v92 = *v123;
    do
    {
      for (i1 = 0; i1 != v91; ++i1)
      {
        if (*v123 != v92)
        {
          objc_enumerationMutation(v113);
        }

        v94 = *(*(&v122 + 1) + 8 * i1);
        feature = [v94 feature];
        v96 = [dictionary objectForKeyedSubscript:feature];

        if (!v96)
        {
          v96 = [MEMORY[0x277CBEB98] set];
        }

        v97 = REFeatureValueForTaggedPointer([v94 value]);
        v98 = v97;
        if (!v97)
        {
          n = [MEMORY[0x277CBEB68] null];
          v98 = n;
        }

        v99 = [v96 setByAddingObject:v98];

        if (!v97)
        {
        }

        feature2 = [v94 feature];
        [dictionary setObject:v99 forKeyedSubscript:feature2];
      }

      v91 = [v113 countByEnumeratingWithState:&v122 objects:v170 count:16];
    }

    while (v91);
  }

  v101 = +[REContentRelevanceProviderManager _features];
  v102 = [REFeatureSet featureSetWithFeatures:v101];
  v103 = [v109 intersectsFeatureSet:v102];

  if (v103)
  {
    RETokenizeStringPrewarm();
  }

  v104 = +[RERelevanceProviderManager providerManagerClasses];
  +[RESingleton _incrementSingletonCache];
  v182 = 0;
  v183 = &v182;
  v184 = 0x3032000000;
  v185 = __Block_byref_object_copy__7;
  v186 = __Block_byref_object_dispose__7;
  predictorManager = [v111 predictorManager];
  if (!v183[5])
  {
    v105 = [REPredictor systemPredictorsSupportingFeatureSet:v109 relevanceEngine:0];
    v106 = v183[5];
    v183[5] = v105;
  }

  v107 = dispatch_time(0, 500000000);
  observerQueue = [v111 observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RERelevanceEngine_prewarmWithConfiguration___block_invoke;
  block[3] = &unk_2785F9BC0;
  block[4] = &v182;
  dispatch_after(v107, observerQueue, block);

  _Block_object_dispose(&v182, 8);
}

uint64_t __46__RERelevanceEngine_prewarmWithConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  return +[RESingleton _decrementSingletonCache];
}

- (RERelevanceEngine)initWithConfiguration:(id)configuration
{
  v4 = MEMORY[0x277CCAD78];
  configurationCopy = configuration;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [(RERelevanceEngine *)self initWithName:uUIDString configuration:configurationCopy];

  return v8;
}

- (RERelevanceEngine)initWithName:(id)name configuration:(id)configuration
{
  location[16] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  v222 = nameCopy;
  if (!nameCopy)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Relevance engine name must be non-nil", v8, v9, v10, v11, v12, v13, v204);
  }

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v14 = +[(RESingleton *)RERelevanceEngineDebugger];
  availableEngines = [v14 availableEngines];

  v16 = [availableEngines countByEnumeratingWithState:&v227 objects:v279 count:16];
  if (v16)
  {
    v17 = *v228;
    v18 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v228 != v17)
        {
          objc_enumerationMutation(availableEngines);
        }

        name = [*(*(&v227 + 1) + 8 * i) name];
        v21 = v222;
        v22 = name;
        k = v22;
        if (v22 == v21)
        {

LABEL_12:
          RERaiseInternalException(v18, @"Relevance engine with name %@ already exists", v24, v25, v26, v27, v28, v29, v21);
          continue;
        }

        v23 = [(__CFString *)v21 isEqual:v22];

        if (v23)
        {
          goto LABEL_12;
        }
      }

      v16 = [availableEngines countByEnumeratingWithState:&v227 objects:v279 count:16];
    }

    while (v16);
  }

  v226.receiver = self;
  v226.super_class = RERelevanceEngine;
  val = [(RERelevanceEngine *)&v226 init];

  if (val)
  {
    v30 = [(__CFString *)v222 copy];
    name = val->_name;
    val->_name = v30;

    val->_running = 0;
    val->_automaticallyResumeEngine = 1;
    val->_activityTrackerLock._os_unfair_lock_opaque = 0;
    preferenceDomain = [configurationCopy preferenceDomain];
    if (preferenceDomain)
    {
      v32 = [[_REEngineDefaults alloc] initWithDomain:preferenceDomain];
      defaults = val->_defaults;
      val->_defaults = v32;
    }

    +[RESingleton _incrementSingletonCache];
    v34 = [configurationCopy copy];
    configuration = val->_configuration;
    val->_configuration = v34;

    array = [MEMORY[0x277CBEB18] array];
    subsystems = val->_subsystems;
    val->_subsystems = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    addedElementsByIdentifier = val->_addedElementsByIdentifier;
    val->_addedElementsByIdentifier = dictionary;

    v40 = objc_opt_new();
    logger = val->_logger;
    val->_logger = v40;

    v42 = [[REActivityTracker alloc] initWithDelegate:val];
    [(REActivityTracker *)v42 trackObject:val];
    v43 = v42;

    activityTracker = val->_activityTracker;
    val->_activityTracker = v43;

    v45 = @"engine";
    if (v222)
    {
      v45 = v222;
    }

    v210 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.relevanceengine.%@", v45];
    attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    engineQueue = [(RERelevanceEngineConfiguration *)val->_configuration engineQueue];
    v46 = v210;
    uTF8String = [v210 UTF8String];
    if (engineQueue)
    {
      v48 = dispatch_queue_create_with_target_V2(uTF8String, attr, engineQueue);
    }

    else
    {
      v48 = dispatch_queue_create(uTF8String, attr);
    }

    queue = val->_queue;
    val->_queue = v48;

    observerQueue = [configurationCopy observerQueue];
    if (observerQueue)
    {
      objc_storeStrong(&val->_callbackQueue, observerQueue);
    }

    else
    {
      v51 = MEMORY[0x277D85CD0];
      v52 = MEMORY[0x277D85CD0];
      objc_storeStrong(&val->_callbackQueue, v51);
    }

    v53 = [RERelevanceEnginePreferencesController alloc];
    observerQueue2 = [(RERelevanceEngineConfiguration *)val->_configuration observerQueue];
    v55 = [(RERelevanceEnginePreferencesController *)v53 initWithQueue:observerQueue2];
    preferenceController = val->_preferenceController;
    val->_preferenceController = v55;

    v211 = val->_configuration;
    sectionDescriptors = [(RERelevanceEngineConfiguration *)v211 sectionDescriptors];
    v58 = [sectionDescriptors copy];

    v221 = [MEMORY[0x277CBEB58] set];
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v59 = v58;
    v60 = [v59 countByEnumeratingWithState:&v275 objects:location count:16];
    if (v60)
    {
      k = *v276;
      v61 = *MEMORY[0x277CBE660];
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v276 != k)
          {
            objc_enumerationMutation(v59);
          }

          name2 = [*(*(&v275 + 1) + 8 * j) name];
          if ([v221 containsObject:name2])
          {
            [MEMORY[0x277CBEAD8] raise:v61 format:{@"Section with name %@ already exists. Please choose a unique name", name2}];
          }

          else
          {
            [v221 addObject:name2];
          }
        }

        v60 = [v59 countByEnumeratingWithState:&v275 objects:location count:16];
      }

      while (v60);
    }

    objc_storeStrong(&val->_configurationSectionDescriptors, v58);
    v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v59, "count")}];
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v65 = v59;
    v66 = [v65 countByEnumeratingWithState:&v271 objects:v291 count:16];
    if (v66)
    {
      v67 = *v272;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v272 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v68 = [[_RESectionDescriptor alloc] initWithSectionDescriptor:*(*(&v271 + 1) + 8 * k)];
          [v64 addObject:v68];
        }

        v66 = [v65 countByEnumeratingWithState:&v271 objects:v291 count:16];
      }

      while (v66);
    }

    v69 = [v64 copy];
    sectionDescriptors = val->_sectionDescriptors;
    val->_sectionDescriptors = v69;

    v71 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v64, "count")}];
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    obj = v65;
    v72 = [obj countByEnumeratingWithState:&v267 objects:v290 count:16];
    if (v72)
    {
      k = *v268;
      do
      {
        for (m = 0; m != v72; ++m)
        {
          if (*v268 != k)
          {
            objc_enumerationMutation(obj);
          }

          historicSectionDescriptor = [*(*(&v267 + 1) + 8 * m) historicSectionDescriptor];
          if (historicSectionDescriptor)
          {
            v75 = [[_RESectionDescriptor alloc] initWithHistoricSectionDescriptor:historicSectionDescriptor];
            [v71 addObject:v75];
          }
        }

        v72 = [obj countByEnumeratingWithState:&v267 objects:v290 count:16];
      }

      while (v72);
    }

    v76 = [v71 copy];
    historicSectionDescriptors = val->_historicSectionDescriptors;
    val->_historicSectionDescriptors = v76;

    v214 = +[(REFeatureSet *)REMutableFeatureSet];
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    primaryFeatures = [(RERelevanceEngineConfiguration *)v211 primaryFeatures];
    v79 = [primaryFeatures countByEnumeratingWithState:&v263 objects:v289 count:16];
    if (v79)
    {
      v80 = *v264;
      k = "Skipping loading primary feature %@ from configuration since it isn't a categorcial feature";
      do
      {
        for (n = 0; n != v79; ++n)
        {
          if (*v264 != v80)
          {
            objc_enumerationMutation(primaryFeatures);
          }

          v82 = *(*(&v263 + 1) + 8 * n);
          if ([v82 featureType] == 2)
          {
            v83 = RELogForDomain(0);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v288 = v82;
              _os_log_impl(&dword_22859F000, v83, OS_LOG_TYPE_DEFAULT, "Skipping loading primary feature %@ from configuration since it isn't a categorcial feature", buf, 0xCu);
            }
          }

          else
          {
            [v214 addFeature:v82];
          }
        }

        v79 = [primaryFeatures countByEnumeratingWithState:&v263 objects:v289 count:16];
      }

      while (v79);
    }

    v84 = [v214 copy];
    mlFeatures = val->_mlFeatures;
    val->_mlFeatures = v84;

    primaryFeatures2 = [(RERelevanceEngineConfiguration *)v211 primaryFeatures];
    v223 = [primaryFeatures2 mutableCopy];

    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    v219 = v64;
    v89 = [v219 countByEnumeratingWithState:&v259 objects:buf count:16];
    if (v89)
    {
      v90 = *v260;
      do
      {
        for (k = 0; k != v89; ++k)
        {
          if (*v260 != v90)
          {
            objc_enumerationMutation(v219);
          }

          rules = [*(*(&v259 + 1) + 8 * k) rules];
          REExtractRules(rules, array2, array3);
        }

        v89 = [v219 countByEnumeratingWithState:&v259 objects:buf count:16];
      }

      while (v89);
    }

    v257 = 0u;
    v258 = 0u;
    v255 = 0u;
    v256 = 0u;
    v218 = v71;
    v92 = [v218 countByEnumeratingWithState:&v255 objects:v286 count:16];
    if (v92)
    {
      v93 = *v256;
      do
      {
        for (ii = 0; ii != v92; ++ii)
        {
          if (*v256 != v93)
          {
            objc_enumerationMutation(v218);
          }

          rules2 = [*(*(&v255 + 1) + 8 * ii) rules];
          REExtractRules(rules2, array2, array3);
        }

        v92 = [v218 countByEnumeratingWithState:&v255 objects:v286 count:16];
      }

      while (v92);
    }

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v96 = array2;
    v97 = [v96 countByEnumeratingWithState:&v251 objects:v285 count:16];
    if (v97)
    {
      k = *v252;
      do
      {
        for (jj = 0; jj != v97; ++jj)
        {
          if (*v252 != k)
          {
            objc_enumerationMutation(v96);
          }

          v99 = *(*(&v251 + 1) + 8 * jj);
          condition = [v99 condition];
          _dependentFeatures = [condition _dependentFeatures];
          [v223 unionFeatureSet:_dependentFeatures];

          conditionEvaluator = [v99 conditionEvaluator];
        }

        v97 = [v96 countByEnumeratingWithState:&v251 objects:v285 count:16];
      }

      while (v97);
    }

    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v103 = array3;
    v104 = [v103 countByEnumeratingWithState:&v247 objects:v284 count:16];
    if (v104)
    {
      k = *v248;
      do
      {
        for (kk = 0; kk != v104; ++kk)
        {
          if (*v248 != k)
          {
            objc_enumerationMutation(v103);
          }

          v106 = *(*(&v247 + 1) + 8 * kk);
          leftCondition = [v106 leftCondition];
          _dependentFeatures2 = [leftCondition _dependentFeatures];
          [v223 unionFeatureSet:_dependentFeatures2];

          rightCondition = [v106 rightCondition];
          _dependentFeatures3 = [rightCondition _dependentFeatures];
          [v223 unionFeatureSet:_dependentFeatures3];

          comparison = [v106 comparison];
          _dependentFeatures4 = [comparison _dependentFeatures];
          [v223 unionFeatureSet:_dependentFeatures4];

          leftConditionEvaluator = [v106 leftConditionEvaluator];
          rightConditionEvaluator = [v106 rightConditionEvaluator];
          comparisonConditionEvaluator = [v106 comparisonConditionEvaluator];
        }

        v104 = [v103 countByEnumeratingWithState:&v247 objects:v284 count:16];
      }

      while (v104);
    }

    v117 = REIntrinsicFeatureSet(v116);
    [v223 unionFeatureSet:v117];

    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    interactionDescriptors = [(RERelevanceEngineConfiguration *)v211 interactionDescriptors];
    v119 = [interactionDescriptors countByEnumeratingWithState:&v243 objects:v283 count:16];
    if (v119)
    {
      k = *v244;
      do
      {
        for (mm = 0; mm != v119; ++mm)
        {
          if (*v244 != k)
          {
            objc_enumerationMutation(interactionDescriptors);
          }

          v121 = *(*(&v243 + 1) + 8 * mm);
          selectionFeature = [v121 selectionFeature];

          if (selectionFeature)
          {
            selectionFeature2 = [v121 selectionFeature];
            [v223 addFeature:selectionFeature2];
          }

          identificationFeature = [v121 identificationFeature];

          if (identificationFeature)
          {
            identificationFeature2 = [v121 identificationFeature];
            [v223 addFeature:identificationFeature2];
          }

          biasFeature = [v121 biasFeature];

          if (biasFeature)
          {
            biasFeature2 = [v121 biasFeature];
            [v223 addFeature:biasFeature2];
          }
        }

        v119 = [interactionDescriptors countByEnumeratingWithState:&v243 objects:v283 count:16];
      }

      while (v119);
    }

    v128 = RERootFeatureSetForFeatures(v223);
    v209 = [v128 mutableCopy];

    v130 = REIntrinsicFeatureSet(v129);
    [v209 unionFeatureSet:v130];

    v131 = [v209 copy];
    rootFeatures = val->_rootFeatures;
    val->_rootFeatures = v131;

    v205 = [v223 copy];
    v133 = [MEMORY[0x277CBEB58] set];
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v217 = v96;
    v134 = [v217 countByEnumeratingWithState:&v239 objects:v282 count:16];
    if (v134)
    {
      v135 = *v240;
      do
      {
        for (k = 0; k != v134; ++k)
        {
          if (*v240 != v135)
          {
            objc_enumerationMutation(v217);
          }

          condition2 = [*(*(&v239 + 1) + 8 * k) condition];
          _inflectionFeatureValuePairs = [condition2 _inflectionFeatureValuePairs];
          [v133 unionSet:_inflectionFeatureValuePairs];
        }

        v134 = [v217 countByEnumeratingWithState:&v239 objects:v282 count:16];
      }

      while (v134);
    }

    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    v216 = v103;
    v138 = [v216 countByEnumeratingWithState:&v235 objects:v281 count:16];
    if (v138)
    {
      k = *v236;
      do
      {
        for (nn = 0; nn != v138; ++nn)
        {
          if (*v236 != k)
          {
            objc_enumerationMutation(v216);
          }

          v140 = *(*(&v235 + 1) + 8 * nn);
          leftCondition2 = [v140 leftCondition];
          _inflectionFeatureValuePairs2 = [leftCondition2 _inflectionFeatureValuePairs];
          [v133 unionSet:_inflectionFeatureValuePairs2];

          rightCondition2 = [v140 rightCondition];
          _inflectionFeatureValuePairs3 = [rightCondition2 _inflectionFeatureValuePairs];
          [v133 unionSet:_inflectionFeatureValuePairs3];

          comparison2 = [v140 comparison];
          _inflectionFeatureValuePairs4 = [comparison2 _inflectionFeatureValuePairs];
          [v133 unionSet:_inflectionFeatureValuePairs4];
        }

        v138 = [v216 countByEnumeratingWithState:&v235 objects:v281 count:16];
      }

      while (v138);
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v231 = 0u;
    v215 = v133;
    v148 = [v215 countByEnumeratingWithState:&v231 objects:v280 count:16];
    if (v148)
    {
      v149 = *v232;
      do
      {
        for (i1 = 0; i1 != v148; ++i1)
        {
          if (*v232 != v149)
          {
            objc_enumerationMutation(v215);
          }

          v151 = *(*(&v231 + 1) + 8 * i1);
          feature = [v151 feature];
          v153 = [dictionary2 objectForKeyedSubscript:feature];

          if (!v153)
          {
            v153 = [MEMORY[0x277CBEB98] set];
          }

          v154 = REFeatureValueForTaggedPointer([v151 value]);
          v155 = v154;
          if (!v154)
          {
            k = [MEMORY[0x277CBEB68] null];
            v155 = k;
          }

          v156 = [v153 setByAddingObject:v155];

          if (!v154)
          {
          }

          feature2 = [v151 feature];
          [dictionary2 setObject:v156 forKeyedSubscript:feature2];
        }

        v148 = [v215 countByEnumeratingWithState:&v231 objects:v280 count:16];
      }

      while (v148);
    }

    v158 = [dictionary2 copy];
    inflectionFeatureValues = val->_inflectionFeatureValues;
    val->_inflectionFeatureValues = v158;

    v160 = [v205 mutableCopy];
    v161 = [[REMLModelManager alloc] initWithRelevanceEngine:val];
    modelManager = val->_modelManager;
    val->_modelManager = v161;

    _orderedModelFeatures = [(REMLModelManager *)val->_modelManager _orderedModelFeatures];
    v164 = [_orderedModelFeatures mutableCopy];

    v165 = [REFeatureSet featureSetWithFeatures:v164];
    [v160 minusFeatureSet:v165];

    allFeatures = [v160 allFeatures];
    [v164 addObjectsFromArray:allFeatures];

    v167 = [REFeatureSet featureSetWithFeatures:v164];
    [v160 unionFeatureSet:v167];

    v168 = [REFeatureMapGenerator alloc];
    allFeatures2 = [(REFeatureSet *)val->_rootFeatures allFeatures];
    v170 = [(REFeatureMapGenerator *)v168 initWithFeatureList:allFeatures2];
    inputFeatureMapGenerator = val->_inputFeatureMapGenerator;
    val->_inputFeatureMapGenerator = v170;

    v172 = [[REFeatureMapGenerator alloc] initWithFeatureList:v164];
    outputFeatureMapGenerator = val->_outputFeatureMapGenerator;
    val->_outputFeatureMapGenerator = v172;

    v174 = [[REFeatureTransmuter alloc] initWithInputFeatures:val->_rootFeatures outputFeatures:v160 outputFeatureMapGenerator:val->_outputFeatureMapGenerator];
    featureTransmuter = val->_featureTransmuter;
    val->_featureTransmuter = v174;

    [(RERelevanceEngineLogger *)val->_logger addLoggable:val->_featureTransmuter];
    v176 = [[RELiveElementCoordinator alloc] initWithRelevanceEngine:val];
    coordinator = val->_coordinator;
    val->_coordinator = v176;

    v178 = [REDataSourceManager alloc];
    dataSourceLoader = [configurationCopy dataSourceLoader];
    v180 = [(REDataSourceManager *)v178 initWithRelevanceEngine:val dataSourceLoader:dataSourceLoader withDelegate:val->_coordinator];
    dataSourceManager = val->_dataSourceManager;
    val->_dataSourceManager = v180;

    v182 = [[RETrainingManager alloc] initWithRelevanceEngine:val];
    trainingManager = val->_trainingManager;
    val->_trainingManager = v182;

    v184 = [REEngineLocationManager alloc];
    locationManager = [configurationCopy locationManager];
    v186 = [(REEngineLocationManager *)v184 initWithRelevanceEngine:val locationManager:locationManager];
    locationManager = val->_locationManager;
    val->_locationManager = v186;

    v188 = [REEngineVisitManager alloc];
    locationManager2 = [configurationCopy locationManager];
    v190 = [(REEngineVisitManager *)v188 initWithRelevanceEngine:val locationManager:locationManager2];
    visitManager = val->_visitManager;
    val->_visitManager = v190;

    v192 = [[REDataSourceCatalog alloc] initWithDataSourceManager:val->_dataSourceManager];
    dataSourceCatalog = val->_dataSourceCatalog;
    val->_dataSourceCatalog = v192;

    v194 = +[(RESingleton *)RERelevanceEngineDebugger];
    [v194 _registerEngine:val];

    if (_fetchedInternalBuildOnceToken_0 != -1)
    {
      [RERelevanceEngine initWithName:configuration:];
    }

    if (_isInternalDevice_0 == 1)
    {
      +[RETrainingSimulationCoordinator prewarm];
    }

    [(RERelevanceEngineLogger *)val->_logger addLoggable:?];
    configuration = [(RERelevanceEngine *)val configuration];
    allowsDiagnosticExtension = [configuration allowsDiagnosticExtension];

    if (allowsDiagnosticExtension)
    {
      v197 = +[(RESingleton *)RERelevanceEngineDiagnosticRegistration];
      [v197 checkinEngine:val];
    }

    objc_initWeak(location, val);
    callbackQueue = val->_callbackQueue;
    if ([configurationCopy wantsImmutableContent])
    {
      v199 = 0.0;
    }

    else
    {
      v199 = 0.05;
    }

    v224[0] = MEMORY[0x277D85DD0];
    v224[1] = 3221225472;
    v224[2] = __48__RERelevanceEngine_initWithName_configuration___block_invoke_2;
    v224[3] = &unk_2785F9A90;
    objc_copyWeak(&v225, location);
    v200 = [REUpNextScheduler schedulerWithQueue:callbackQueue delay:v224 updateBlock:v199];
    loadingScheduler = val->_loadingScheduler;
    val->_loadingScheduler = v200;

    objc_destroyWeak(&v225);
    objc_destroyWeak(location);
  }

  v202 = val;

  return v202;
}

uint64_t __48__RERelevanceEngine_initWithName_configuration___block_invoke(uint64_t a1, uint64_t a2)
{
  result = _REGetIsInternalBuild(a1, a2);
  _isInternalDevice_0 = result;
  return result;
}

void __48__RERelevanceEngine_initWithName_configuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callbackQueue_notifyLoadingState];
}

- (void)dealloc
{
  v3 = +[(RESingleton *)RERelevanceEngineDebugger];
  [v3 _unregisterEngine:self];

  +[RESingleton _decrementSingletonCache];
  [(RERelevanceEngineLogger *)self->_logger removeLoggable:self];
  [(RERelevanceEngineLogger *)self->_logger removeLoggable:self->_featureTransmuter];
  v4.receiver = self;
  v4.super_class = RERelevanceEngine;
  [(RERelevanceEngine *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(RERelevanceEngine *)self name];
  v6 = [v3 stringWithFormat:@"<%@ %p> %@", v4, self, name];

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(RERelevanceEngine *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  [(REElementCoordinator *)self->_coordinator addObserver:observerCopy];

  if (self->_automaticallyResumeEngine && [(REElementCoordinator *)self->_coordinator numberOfObservers])
  {
    [(RERelevanceEngine *)self resume];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RERelevanceEngine_addObserver___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer
{
  [(REElementCoordinator *)self->_coordinator removeObserver:observer];
  if (self->_automaticallyResumeEngine && ![(REElementCoordinator *)self->_coordinator numberOfObservers])
  {

    [(RERelevanceEngine *)self pause];
  }
}

- (void)enumerateRankedContent:(id)content
{
  contentCopy = content;
  v5 = contentCopy;
  if (contentCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__RERelevanceEngine_enumerateRankedContent___block_invoke;
    v6[3] = &unk_2785FB598;
    v6[4] = self;
    v7 = contentCopy;
    [(RERelevanceEngine *)self enumerateSectionDescriptorsWithOptions:0 includeHistoric:1 usingBlock:v6];
  }
}

void __44__RERelevanceEngine_enumerateRankedContent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__RERelevanceEngine_enumerateRankedContent___block_invoke_2;
  v6[3] = &unk_2785FB570;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateRankedContentInSection:v5 usingBlock:v6];
}

void __44__RERelevanceEngine_enumerateRankedContent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[RESectionPath alloc] initWithSectionName:*(a1 + 32) element:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateRankedContentInSection:(id)section usingBlock:(id)block
{
  sectionCopy = section;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = [(RERelevanceEngine *)self numberOfElementsInSection:sectionCopy];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [[RESectionPath alloc] initWithSectionName:sectionCopy element:i];
        v11 = [(RERelevanceEngine *)self elementAtPath:v10];
        if (v11)
        {
          blockCopy[2](blockCopy, i, v11);
        }
      }
    }
  }
}

- (void)addElement:(id)element section:(id)section
{
  elementCopy = element;
  sectionCopy = section;
  [(RERelevanceEngineSubsystem *)self->_coordinator beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RERelevanceEngine_addElement_section___block_invoke;
  block[3] = &unk_2785FB070;
  v12 = elementCopy;
  selfCopy = self;
  v14 = sectionCopy;
  v9 = sectionCopy;
  v10 = elementCopy;
  dispatch_async(queue, block);
}

void __40__RERelevanceEngine_addElement_section___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(*(a1 + 40) + 176);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v9 + 1) + 8 * i) isEqualToString:{v2, v9}])
          {

            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [*(*(a1 + 40) + 176) setObject:*(a1 + 32) forKeyedSubscript:v2];
    if (*(a1 + 48))
    {
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = @"defaultSectionIdentifier";
    }

    [*(*(a1 + 40) + 56) addElement:*(a1 + 32) toSection:{v8, v9}];
  }

LABEL_15:
  [*(*(a1 + 40) + 56) endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:?];
}

- (void)removeElement:(id)element
{
  elementCopy = element;
  [(RERelevanceEngineSubsystem *)self->_coordinator beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__RERelevanceEngine_removeElement___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v8 = elementCopy;
  selfCopy = self;
  v6 = elementCopy;
  dispatch_async(queue, v7);
}

void __35__RERelevanceEngine_removeElement___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(*(a1 + 40) + 176);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v9 + 1) + 8 * i) isEqualToString:{v2, v9}])
          {
            v8 = *(a1 + 32);

            [*(*(a1 + 40) + 176) setObject:0 forKeyedSubscript:v2];
            [*(*(a1 + 40) + 56) removeElement:v8];
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_12:
    [*(*(a1 + 40) + 56) endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v9];
  }

  else
  {
    [*(*(a1 + 40) + 56) endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:?];
  }
}

- (BOOL)isRunning
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = selfCopy->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__RERelevanceEngine_isRunning__block_invoke;
  v5[3] = &unk_2785FADB8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_queue_resumeWithTimeout:(double)timeout completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_running)
  {
    v8 = RELogForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Engine is already running!", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    if (completionCopy)
    {
      os_unfair_lock_lock(&self->_activityTrackerLock);
      v9 = [v7 copy];
      resumeCompletionBlock = self->_resumeCompletionBlock;
      self->_resumeCompletionBlock = v9;

      timeoutCopy = 10.0;
      if (timeout >= 10.0)
      {
        timeoutCopy = timeout;
      }

      v12 = dispatch_time(0, (timeoutCopy * 1000000000.0));
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__RERelevanceEngine__queue_resumeWithTimeout_completion___block_invoke;
      block[3] = &unk_2785F9AB8;
      block[4] = self;
      dispatch_after(v12, queue, block);
      os_unfair_lock_unlock(&self->_activityTrackerLock);
    }

    [(RERelevanceEngineSubsystem *)self->_coordinator beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
    v14 = self->_subsystems;
    v15 = RELogForDomain(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NSMutableArray *)v14 componentsJoinedByString:@", "];
      *buf = 138543362;
      v29 = v16;
      _os_log_impl(&dword_22859F000, v15, OS_LOG_TYPE_DEFAULT, "Resuming engine and subsystems: %{public}@", buf, 0xCu);
    }

    self->_running = 1;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v14;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(RERelevanceEngine *)self _queue_resumeSubsystem:*(*(&v22 + 1) + 8 * v21++), v22];
        }

        while (v19 != v21);
        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v19);
    }

    [(RERelevanceEngineSubsystem *)self->_coordinator endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  }
}

- (void)resumeWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RERelevanceEngine_resumeWithTimeout_completion___block_invoke;
  block[3] = &unk_2785FB5C0;
  timeoutCopy = timeout;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)updateSectionsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke;
  block[3] = &unk_2785F99C8;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
}

void __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  [*(*(a1 + 32) + 56) beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:?];
  v3 = *(*(a1 + 32) + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_2;
  v10[3] = &unk_2785FB5E8;
  v11 = v2;
  v12 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_4;
  v6[3] = &unk_2785F99C8;
  v4 = *(a1 + 32);
  v7 = v11;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v11;
  [v3 enumerateElementDataSourceControllers:v10 completion:v6];
}

void __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_3;
  v6[3] = &unk_2785F9AB8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v4 invalidateElementsInSections:v5 completion:v6];
}

void __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_5;
  v4[3] = &unk_2785F9A40;
  v4[4] = v1;
  v5 = *(a1 + 48);
  dispatch_group_notify(v2, v3, v4);
}

void __62__RERelevanceEngine_updateSectionsWithIdentifiers_completion___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 56) endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:?];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);

    dispatch_async(v3, v2);
  }
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RERelevanceEngine_resume__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pause
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__RERelevanceEngine_pause__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __26__RERelevanceEngine_pause__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 216) == 1)
  {
    v3 = *(v1 + 24);
    v4 = RELogForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "Pausing engine and subsystems: %{public}@", buf, 0xCu);
    }

    *(*(a1 + 32) + 216) = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) _queue_pauseSubsystem:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_queue_resumeSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  dispatch_assert_queue_V2(self->_queue);
  if (([subsystemCopy isRunning] & 1) == 0)
  {
    [subsystemCopy setRunning:1];
    [subsystemCopy resume];
  }
}

- (void)_queue_pauseSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  dispatch_assert_queue_V2(self->_queue);
  if ([subsystemCopy isRunning])
  {
    [subsystemCopy setRunning:0];
    [subsystemCopy pause];
  }
}

- (void)activityTracker:(id)tracker didBeginActivity:(id)activity
{
  v11 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v6 = RELogForDomain(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = activityCopy;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEFAULT, "Engine started tracking %{public}@.", buf, 0xCu);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RERelevanceEngine_activityTracker_didBeginActivity___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)activityTracker:(id)tracker didEndActivity:(id)activity
{
  v11 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v6 = RELogForDomain(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = activityCopy;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEFAULT, "Engine finished tracking %{public}@.", buf, 0xCu);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RERelevanceEngine_activityTracker_didEndActivity___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)_callbackQueue_notifyLoadingState
{
  updatedLoading = self->_updatedLoading;
  if (updatedLoading == self->_loading)
  {
    if (!updatedLoading)
    {

      [(RERelevanceEngine *)self _notifyResumeCompleted];
    }
  }

  else
  {
    self->_loading = updatedLoading;
    v4 = RELogForDomain(0);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (updatedLoading)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "Engine started loading new data", buf, 2u);
      }

      coordinator = self->_coordinator;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __54__RERelevanceEngine__callbackQueue_notifyLoadingState__block_invoke;
      v9[3] = &unk_2785FB610;
      v9[4] = self;
      [(REElementCoordinator *)coordinator enumerateObservers:v9];
    }

    else
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "Engine finished loading new data", buf, 2u);
      }

      v7 = self->_coordinator;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __54__RERelevanceEngine__callbackQueue_notifyLoadingState__block_invoke_53;
      v8[3] = &unk_2785FB610;
      v8[4] = self;
      [(REElementCoordinator *)v7 enumerateObservers:v8];
      [(RERelevanceEngine *)self _notifyResumeCompleted];
    }
  }
}

- (void)_notifyResumeCompleted
{
  os_unfair_lock_lock(&self->_activityTrackerLock);
  resumeCompletionBlock = self->_resumeCompletionBlock;
  if (resumeCompletionBlock)
  {
    dispatch_async(self->_callbackQueue, resumeCompletionBlock);
    v4 = self->_resumeCompletionBlock;
    self->_resumeCompletionBlock = 0;
  }

  os_unfair_lock_unlock(&self->_activityTrackerLock);
}

- (id)elementFromDictionary:(id)dictionary
{
  coordinator = self->_coordinator;
  dictionaryCopy = dictionary;
  elementRelevanceEngine = [(RELiveElementCoordinator *)coordinator elementRelevanceEngine];
  relevanceProviderEnvironment = [elementRelevanceEngine relevanceProviderEnvironment];

  v7 = [[REElement alloc] initWithDictionary:dictionaryCopy relevanceProviderGenerator:relevanceProviderEnvironment];

  return v7;
}

- (id)dictionaryFromElement:(id)element
{
  coordinator = self->_coordinator;
  elementCopy = element;
  elementRelevanceEngine = [(RELiveElementCoordinator *)coordinator elementRelevanceEngine];
  relevanceProviderEnvironment = [elementRelevanceEngine relevanceProviderEnvironment];

  v7 = [elementCopy dictionaryEncodingWithRelevanceProviderGenerator:relevanceProviderEnvironment];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = v8;

  return v8;
}

- (void)beginActivity:(id)activity forObject:(id)object
{
  objectCopy = object;
  activityCopy = activity;
  os_unfair_lock_lock(&self->_activityTrackerLock);
  [(REActivityTracker *)self->_activityTracker beginActivity:activityCopy forObject:objectCopy];

  os_unfair_lock_unlock(&self->_activityTrackerLock);
}

- (void)endActivity:(id)activity forObject:(id)object
{
  objectCopy = object;
  activityCopy = activity;
  os_unfair_lock_lock(&self->_activityTrackerLock);
  [(REActivityTracker *)self->_activityTracker endActivity:activityCopy forObject:objectCopy];

  os_unfair_lock_unlock(&self->_activityTrackerLock);
}

- (NSArray)subsystems
{
  v2 = [(NSMutableArray *)self->_subsystems copy];

  return v2;
}

- (BOOL)isSectionWithNameHistoric:(id)historic
{
  v17 = *MEMORY[0x277D85DE8];
  historicCopy = historic;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_historicSectionDescriptors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        name = [*(*(&v12 + 1) + 8 * i) name];
        v10 = [name isEqualToString:historicCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)historicSectionForSection:(id)section
{
  v19 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurationSectionDescriptors;
  name2 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (name2)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != name2; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:sectionCopy];

        if (v11)
        {
          historicSectionDescriptor = [v9 historicSectionDescriptor];
          name2 = [historicSectionDescriptor name];

          goto LABEL_11;
        }
      }

      name2 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (name2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return name2;
}

- (id)sectionForHistoricSection:(id)section
{
  v19 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configurationSectionDescriptors;
  name2 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (name2)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != name2; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        historicSectionDescriptor = [v9 historicSectionDescriptor];
        name = [historicSectionDescriptor name];
        v12 = [name isEqualToString:sectionCopy];

        if (v12)
        {
          name2 = [v9 name];
          goto LABEL_11;
        }
      }

      name2 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (name2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return name2;
}

- (void)enumerateSectionDescriptorsWithOptions:(unint64_t)options includeHistoric:(BOOL)historic usingBlock:(id)block
{
  historicCopy = historic;
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __116__RERelevanceEngine_RERelevanceEngineProperties__enumerateSectionDescriptorsWithOptions_includeHistoric_usingBlock___block_invoke;
    v13[3] = &unk_2785FB638;
    v14 = blockCopy;
    v10 = MEMORY[0x22AABC5E0](v13);
    if (historicCopy)
    {
      if ((options & 2) != 0)
      {
        v11 = 200;
      }

      else
      {
        v11 = 192;
      }

      if ((options & 2) != 0)
      {
        v12 = 192;
      }

      else
      {
        v12 = 200;
      }

      [*(&self->super.isa + v11) enumerateObjectsWithOptions:options usingBlock:v10];
    }

    else
    {
      v12 = 192;
    }

    [*(&self->super.isa + v12) enumerateObjectsWithOptions:options usingBlock:v10];
  }
}

- (void)_addSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  [(NSMutableArray *)self->_subsystems addObject:subsystemCopy];
  os_unfair_lock_lock(&self->_activityTrackerLock);
  [(REActivityTracker *)self->_activityTracker trackObject:subsystemCopy];
  os_unfair_lock_unlock(&self->_activityTrackerLock);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RERelevanceEngine_RESubsystems___addSubsystem___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = subsystemCopy;
  v6 = subsystemCopy;
  dispatch_async(queue, v7);
}

uint64_t __49__RERelevanceEngine_RESubsystems___addSubsystem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[216] == 1)
  {
    return [v2 _queue_resumeSubsystem:v3];
  }

  else
  {
    return [v2 _queue_pauseSubsystem:v3];
  }
}

- (void)_removeSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  [(NSMutableArray *)self->_subsystems removeObject:subsystemCopy];
  os_unfair_lock_lock(&self->_activityTrackerLock);
  [(REActivityTracker *)self->_activityTracker withdrawObject:subsystemCopy];
  os_unfair_lock_unlock(&self->_activityTrackerLock);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RERelevanceEngine_RESubsystems___removeSubsystem___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = subsystemCopy;
  v6 = subsystemCopy;
  dispatch_async(queue, v7);
}

- (void)storeDiagnosticLogs:(id)logs
{
  logsCopy = logs;
  v5 = logsCopy;
  if (logsCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__RERelevanceEngine_RELogging__storeDiagnosticLogs___block_invoke;
    v6[3] = &unk_2785FB660;
    v7 = logsCopy;
    [(RERelevanceEngine *)self _captureAndStoreDiagnosticLogs:v6];
  }
}

- (void)storeDiagnosticLogsToFile:(id)file
{
  fileCopy = file;
  v5 = fileCopy;
  if (fileCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__RERelevanceEngine_RELogging__storeDiagnosticLogsToFile___block_invoke;
    v6[3] = &unk_2785FB660;
    v7 = fileCopy;
    [(RERelevanceEngine *)self _captureAndStoreDiagnosticLogs:v6];
  }
}

- (void)_captureAndStoreDiagnosticLogs:(id)logs
{
  logsCopy = logs;
  if (logsCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    logger = self->_logger;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__RERelevanceEngine_RELogging___captureAndStoreDiagnosticLogs___block_invoke;
    v12[3] = &unk_2785FB688;
    v13 = array;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__RERelevanceEngine_RELogging___captureAndStoreDiagnosticLogs___block_invoke_2;
    v8[3] = &unk_2785F99C8;
    v9 = v13;
    selfCopy = self;
    v11 = logsCopy;
    v7 = v13;
    [(RERelevanceEngineLogger *)logger collectLogs:v12 completion:v8];
  }
}

void __63__RERelevanceEngine_RELogging___captureAndStoreDiagnosticLogs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __63__RERelevanceEngine_RELogging___captureAndStoreDiagnosticLogs___block_invoke_2(uint64_t a1)
{
  v4 = [MEMORY[0x277CCAB68] string];
  while ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) firstObject];
    [*(a1 + 32) removeObjectAtIndex:0];
    [v4 appendString:v2];
  }

  v3 = RENewLogFilePathForTask(*(*(a1 + 40) + 48));
  [v4 writeToFile:v3 atomically:1 encoding:4 error:0];
  (*(*(a1 + 48) + 16))();
}

- (id)featuresForRelevanceProvider:(id)provider
{
  coordinator = self->_coordinator;
  providerCopy = provider;
  elementRelevanceEngine = [(RELiveElementCoordinator *)coordinator elementRelevanceEngine];
  relevanceProviderEnvironment = [elementRelevanceEngine relevanceProviderEnvironment];
  v7 = [relevanceProviderEnvironment featuresForRelevanceProvider:providerCopy];

  return v7;
}

- (void)pauseForSimulation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RERelevanceEngine_RESimulation__pauseForSimulation__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __53__RERelevanceEngine_RESimulation__pauseForSimulation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) pause];
  v2 = *(*(a1 + 32) + 64);

  return [v2 enumerateElementDataSourceControllers:&__block_literal_global_354];
}

void __53__RERelevanceEngine_RESimulation__pauseForSimulation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 elementOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RERelevanceEngine_RESimulation__pauseForSimulation__block_invoke_3;
  block[3] = &unk_2785F9AB8;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void __53__RERelevanceEngine_RESimulation__pauseForSimulation__block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(a1 + 32) allElements];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) identifier];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 identifier];

          v8 = v9;
        }

        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) removeElementsWithIds:v2];
}

- (void)resumeFromSimulation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RERelevanceEngine_RESimulation__resumeFromSimulation__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__RERelevanceEngine_RESimulation__resumeFromSimulation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 216) == 1)
  {
    [*(v1 + 64) resume];
    v1 = *(a1 + 32);
  }

  v3 = *(v1 + 64);

  return [v3 enumerateElementDataSourceControllers:&__block_literal_global_357];
}

- (void)gatherMetrics
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"REDidCollectMetrics" object:0];
}

@end