@interface ATXGlobalAppModeAffinityModel
+ (ATXGlobalAppModeAffinityModel)modelWithAllInstalledAppsKnownToSpringBoard;
- (ATXGlobalAppModeAffinityModel)initWithBundleIds:(id)ids;
- (double)_priorForMode:(unint64_t)mode bundleIdIndex:(int)index priors:(id)priors;
- (double)scoreForMode:(unint64_t)mode bundleId:(id)id scalingFactor:(double)factor;
- (id)_computePriors;
- (id)loadGlobalPriorsAsset;
- (unint64_t)modeIndexForMode:(unint64_t)mode;
- (void)_normalizePriors:(id)priors maximumPrior:(double)prior;
- (void)dealloc;
- (void)loadGlobalPriorsAsset;
- (void)unloadGlobalPriorsAsset;
@end

@implementation ATXGlobalAppModeAffinityModel

+ (ATXGlobalAppModeAffinityModel)modelWithAllInstalledAppsKnownToSpringBoard
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v3 allInstalledAppsKnownToSpringBoard];
  v5 = [v2 initWithArray:allInstalledAppsKnownToSpringBoard];

  v6 = [objc_alloc(objc_opt_class()) initWithBundleIds:v5];

  return v6;
}

- (ATXGlobalAppModeAffinityModel)initWithBundleIds:(id)ids
{
  idsCopy = ids;
  v15.receiver = self;
  v15.super_class = ATXGlobalAppModeAffinityModel;
  v5 = [(ATXGlobalAppModeAffinityModel *)&v15 init];
  if (v5)
  {
    v6 = [idsCopy copy];
    bundleIds = v5->_bundleIds;
    v5->_bundleIds = v6;

    v8 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsIndex"];
    index = v5->_index;
    v5->_index = v8;

    _computePriors = [(ATXGlobalAppModeAffinityModel *)v5 _computePriors];
    normalizedPriors = v5->_normalizedPriors;
    v5->_normalizedPriors = _computePriors;

    mEMORY[0x277CEBC88] = [MEMORY[0x277CEBC88] sharedInstance];
    memoryPressureMonitor = v5->_memoryPressureMonitor;
    v5->_memoryPressureMonitor = mEMORY[0x277CEBC88];

    [(ATXMemoryPressureMonitor *)v5->_memoryPressureMonitor registerObserver:v5];
  }

  return v5;
}

- (void)dealloc
{
  [(ATXMemoryPressureMonitor *)self->_memoryPressureMonitor unregisterObserver:self];
  memoryPressureMonitor = self->_memoryPressureMonitor;
  self->_memoryPressureMonitor = 0;

  v4.receiver = self;
  v4.super_class = ATXGlobalAppModeAffinityModel;
  [(ATXGlobalAppModeAffinityModel *)&v4 dealloc];
}

- (id)loadGlobalPriorsAsset
{
  v2 = [MEMORY[0x277CEB3C0] pathForResource:@"ATXGlobalAppModeAffinity_v0" ofType:@"dat" isDirectory:0];
  if (v2)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2 options:1 error:&v9];
    v4 = v9;
    v5 = v4;
    if (v4)
    {
      v6 = __atxlog_handle_modes(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ATXGlobalAppModeAffinityModel *)v5 loadGlobalPriorsAsset];
      }
    }

    else
    {
      if (v3)
      {
        v7 = v3;
        goto LABEL_11;
      }

      v6 = __atxlog_handle_modes(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ATXGlobalAppModeAffinityModel *)v6 loadGlobalPriorsAsset];
      }
    }

    v7 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v5 = __atxlog_handle_modes(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXGlobalAppModeAffinityModel *)v5 loadGlobalPriorsAsset];
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (id)_computePriors
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_modes(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXGlobalAppModeAffinityModel: _computePriors", buf, 2u);
  }

  loadGlobalPriorsAsset = [(ATXGlobalAppModeAffinityModel *)self loadGlobalPriorsAsset];
  if (loadGlobalPriorsAsset)
  {
    v29 = objc_opt_new();
    supportedModeTypes = [objc_opt_class() supportedModeTypes];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_bundleIds;
    v26 = [(NSSet *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v26)
    {
      v25 = *v36;
      v4 = 0.0;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v35 + 1) + 8 * i);
          v7 = [(ATXGlobalAppModeAffinityModel *)self indexForBundleId:v6];
          if (v7)
          {
            v8 = v7;
            v27 = i;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v28 = supportedModeTypes;
            v9 = [v28 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v32;
              do
              {
                for (j = 0; j != v10; ++j)
                {
                  if (*v32 != v11)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v13 = *(*(&v31 + 1) + 8 * j);
                  integerValue = [v13 integerValue];
                  [(ATXGlobalAppModeAffinityModel *)self _priorForMode:integerValue bundleIdIndex:v8 priors:loadGlobalPriorsAsset];
                  v16 = v15;
                  v17 = [[ATXGlobalAppModeAffinityPrior alloc] initWithMode:integerValue prior:v6 bundleId:v15];
                  v18 = MEMORY[0x277D42648];
                  v19 = [MEMORY[0x277CCABB0] numberWithInt:v8];
                  v20 = [v18 tupleWithFirst:v19 second:v13];

                  [v29 setObject:v17 forKeyedSubscript:v20];
                  if (v4 < v16)
                  {
                    v4 = v16;
                  }
                }

                v10 = [v28 countByEnumeratingWithState:&v31 objects:v40 count:16];
              }

              while (v10);
            }

            i = v27;
          }
        }

        v26 = [(NSSet *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v26);
    }

    else
    {
      v4 = 0.0;
    }

    [(ATXGlobalAppModeAffinityModel *)self _normalizePriors:v29 maximumPrior:v4];
    v21 = [v29 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)unloadGlobalPriorsAsset
{
  obj = self;
  objc_sync_enter(obj);
  normalizedPriors = obj->_normalizedPriors;
  obj->_normalizedPriors = 0;

  obj->_assetOffloadedDueToMemoryPressure = 1;
  objc_sync_exit(obj);
}

- (void)_normalizePriors:(id)priors maximumPrior:(double)prior
{
  v41 = *MEMORY[0x277D85DE8];
  priorsCopy = priors;
  v6 = __atxlog_handle_modes(priorsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXGlobalAppModeAffinityModel: _normalizePriors:maximumPrior", buf, 2u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_bundleIds;
  v28 = [(NSSet *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v28)
  {
    v7 = fmin(prior, 500.0);
    v26 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v8;
        v9 = [(ATXGlobalAppModeAffinityModel *)self indexForBundleId:*(*(&v34 + 1) + 8 * v8)];
        supportedModeTypes = [objc_opt_class() supportedModeTypes];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = [supportedModeTypes countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v31;
          do
          {
            v14 = 0;
            do
            {
              if (*v31 != v13)
              {
                objc_enumerationMutation(supportedModeTypes);
              }

              v15 = *(*(&v30 + 1) + 8 * v14);
              v16 = MEMORY[0x277D42648];
              v17 = [MEMORY[0x277CCABB0] numberWithInt:v9];
              v18 = [v16 tupleWithFirst:v17 second:v15];

              v19 = [priorsCopy objectForKeyedSubscript:v18];

              if (v19)
              {
                v20 = [priorsCopy objectForKeyedSubscript:v18];
                [v20 prior];
                v22 = fmin(v21, 500.0);
                if (v22 < -500.0)
                {
                  v22 = -500.0;
                }

                v23 = v22 / v7;
                v24 = [priorsCopy objectForKeyedSubscript:v18];
                [v24 setPrior:v23];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [supportedModeTypes countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v12);
        }

        v8 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [(NSSet *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v28);
  }
}

- (double)scoreForMode:(unint64_t)mode bundleId:(id)id scalingFactor:(double)factor
{
  idCopy = id;
  selfCopy = self;
  v10 = objc_sync_enter(selfCopy);
  if (!selfCopy->_normalizedPriors && selfCopy->_assetOffloadedDueToMemoryPressure)
  {
    v11 = __atxlog_handle_modes(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "ATXGlobalAppModeAffinityModel: loading global priors after it was previously offloaded due to memory pressure.", v23, 2u);
    }

    _computePriors = [(ATXGlobalAppModeAffinityModel *)selfCopy _computePriors];
    normalizedPriors = selfCopy->_normalizedPriors;
    selfCopy->_normalizedPriors = _computePriors;

    selfCopy->_assetOffloadedDueToMemoryPressure = 0;
  }

  v14 = [(ATXGlobalAppModeAffinityModel *)selfCopy indexForBundleId:idCopy];
  v15 = MEMORY[0x277D42648];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  v18 = [v15 tupleWithFirst:v16 second:v17];

  v19 = [(NSDictionary *)selfCopy->_normalizedPriors objectForKeyedSubscript:v18];
  [v19 prior];
  v21 = v20 * factor;

  objc_sync_exit(selfCopy);
  return v21;
}

- (double)_priorForMode:(unint64_t)mode bundleIdIndex:(int)index priors:(id)priors
{
  priorsCopy = priors;
  if (priorsCopy)
  {
    v15 = 0;
    v9 = [(ATXGlobalAppModeAffinityModel *)self modeIndexForMode:mode];
    v10 = 0.0;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      supportedModeTypes = [objc_opt_class() supportedModeTypes];
      v13 = 4 * (v11 + (index - 1) * [supportedModeTypes count]);

      [priorsCopy getBytes:&v15 range:{v13, 4}];
      v10 = v15 / 10000.0;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (unint64_t)modeIndexForMode:(unint64_t)mode
{
  supportedModeTypes = [objc_opt_class() supportedModeTypes];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  v6 = [supportedModeTypes indexOfObject:v5];

  return v6;
}

- (void)loadGlobalPriorsAsset
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"ATXGlobalAppModeAffinity_v0";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXGlobalAppModeAffinityModel: Unable to find path for %@", &v1, 0xCu);
}

@end