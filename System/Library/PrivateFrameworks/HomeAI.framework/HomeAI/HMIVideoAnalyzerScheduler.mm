@interface HMIVideoAnalyzerScheduler
+ (id)sharedInstance;
- (BOOL)_shouldSkipLogState;
- (HMIVideoAnalyzerScheduler)init;
- (HMIVideoAnalyzerScheduler)initWithTimer:(id)timer;
- (NSArray)analyzerConfigurations;
- (NSArray)analyzerStates;
- (NSArray)analyzers;
- (id)analyzerWithConfiguration:(id)configuration block:(id)block;
- (id)reducedConfiguration:(id)configuration;
- (id)reducedConfiguration:(id)configuration analyzers:(id)analyzers;
- (int64_t)_getPeakPowerPressureLevel;
- (void)_compactInternalAnalyzers;
- (void)_logState;
- (void)_updateAnalyzer:(id)analyzer withIndex:(unint64_t)index;
- (void)registerAnalyzer:(id)analyzer;
- (void)systemResourceUsageDidUpdate:(int64_t)update maxNumberOfAnalyzers:(unint64_t)analyzers maxAnalysisFPS:(float)s;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIVideoAnalyzerScheduler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMIVideoAnalyzerScheduler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __43__HMIVideoAnalyzerScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (HMIVideoAnalyzerScheduler)init
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:? options:?];
  v4 = [(HMIVideoAnalyzerScheduler *)self initWithTimer:?];

  return v4;
}

- (HMIVideoAnalyzerScheduler)initWithTimer:(id)timer
{
  timerCopy = timer;
  v22.receiver = self;
  v22.super_class = HMIVideoAnalyzerScheduler;
  v6 = [(HMIVideoAnalyzerScheduler *)&v22 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  v6->_lock._os_unfair_lock_opaque = 0;
  v6->_registerLock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v6->_tick, timer);
  [(HMFTimer *)v7->_tick setDelegate:?];
  weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  internalAnalyzers = v7->_internalAnalyzers;
  v7->_internalAnalyzers = weakObjectsPointerArray;

  v10 = objc_alloc_init(HMISystemResourceUsageMonitor);
  usageMonitor = v7->_usageMonitor;
  v7->_usageMonitor = v10;

  [(HMISystemResourceUsageMonitor *)v7->_usageMonitor setDelegate:?];
  [(HMISystemResourceUsageMonitor *)v7->_usageMonitor start];
  v7->_ignoreThermalAndSystemResourceUsageLevel = 0;
  if (+[HMIPreference isProductTypeB620])
  {
    v12 = 3;
  }

  else if (+[HMIPreference isAudioAccessory])
  {
    v12 = 2;
  }

  else
  {
    v12 = 5;
  }

  v7->_maxH264VideoDecoders = v12;
  v13 = +[HMIPreference isAudioAccessory];
  v14 = 4;
  if (v13)
  {
    v14 = 2;
  }

  v7->_maxH264VideoEncoders = v14;
  v7->_maxH265VideoEncoders = 0;
  v15 = +[HMIPreference sharedInstance];
  if ([v15 BOOLPreferenceForKey:? defaultValue:?])
  {
    if (+[HMIPreference isProductTypeJ305](HMIPreference, "isProductTypeJ305") || +[HMIPreference isProductTypeJ105])
    {
    }

    else
    {
      v21 = +[HMIPreference isProductTypeJ255];

      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v7->_maxH265VideoEncoders = v7->_maxH264VideoEncoders;
    v7->_maxH264VideoEncoders = 0;
  }

  else
  {
  }

LABEL_15:
  v16 = +[HMIPreference sharedInstance];
  v17 = [v16 numberPreferenceForKey:?];

  if (v17)
  {
    v7->_maxH265VideoEncoders = [v17 unsignedIntegerValue];
  }

  v18 = +[HMIPreference sharedInstance];
  v19 = [v18 numberPreferenceForKey:?];

  if (v19)
  {
    v7->_maxH264VideoEncoders = [v19 unsignedIntegerValue];
  }

LABEL_20:
  return v7;
}

- (void)registerAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  os_unfair_lock_lock_with_options();
  [(NSPointerArray *)self->_internalAnalyzers hmf_addObject:?];
  [(HMFTimer *)self->_tick resume];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)analyzerWithConfiguration:(id)configuration block:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  v8 = [(HMIVideoAnalyzerScheduler *)self reducedConfiguration:?];

  v9 = blockCopy[2](blockCopy, v8);
  [(HMIVideoAnalyzerScheduler *)self registerAnalyzer:?];
  os_unfair_lock_unlock(&self->_registerLock);

  return v9;
}

- (NSArray)analyzerConfigurations
{
  v3 = objc_autoreleasePoolPush();
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v5 = [analyzers na_map:?];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (NSArray)analyzerStates
{
  v3 = objc_autoreleasePoolPush();
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v5 = [analyzers na_map:?];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)reducedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v6 = [HMIVideoAnalyzerScheduler reducedConfiguration:"reducedConfiguration:analyzers:" analyzers:?];

  return v6;
}

- (id)reducedConfiguration:(id)configuration analyzers:(id)analyzers
{
  v64 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  analyzersCopy = analyzers;
  if ([configurationCopy allowReducedConfiguration])
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = __60__HMIVideoAnalyzerScheduler_reducedConfiguration_analyzers___block_invoke;
    v47 = &unk_278754F50;
    v48 = &v59;
    v49 = &v55;
    v50 = &v51;
    [analyzersCopy na_each:?];
    v8 = [configurationCopy copy];
    if ([v8 initialDecodeMode])
    {
      v9 = v60[3];
      if (v9 >= [(HMIVideoAnalyzerScheduler *)self maxH264VideoDecoders])
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = v60[3];
          *buf = 138543618;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Cannot decode additional streams using H.264, %lu H.264 decoders are already being used.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        [v8 setInitialDecodeMode:?];
      }
    }

    if ([v8 initialDecodeMode])
    {
      if ([v8 transcode])
      {
        v15 = v52[3];
        if (v15 >= [(HMIVideoAnalyzerScheduler *)self maxH265VideoEncoders])
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = HMFGetLogIdentifier();
            v20 = v52[3];
            *buf = 138543618;
            *&buf[4] = v19;
            *&buf[12] = 2048;
            *&buf[14] = v20;
            _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Cannot transcode additional streams using H.265, %lu H.265 encoders are already being used, trying with H.264.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v21 = v56[3];
          if (v21 >= [(HMIVideoAnalyzerScheduler *)selfCopy2 maxH264VideoEncoders])
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy2;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              v26 = v56[3];
              *buf = 138543618;
              *&buf[4] = v25;
              *&buf[12] = 2048;
              *&buf[14] = v26;
              _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Cannot transcode additional streams, %lu H.264 encoders are already being used.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            [v8 setTranscode:?];
          }

          else
          {
            ++v56[3];
            [v8 setTranscodeCodecType:?];
          }
        }

        else
        {
          ++v52[3];
          [v8 setTranscodeCodecType:?];
        }
      }

      if (v8)
      {
        [&v41 timelapseInterval];
        if ((v42 & 0x100000000) != 0)
        {
          v27 = v52[3];
          if (v27 >= [(HMIVideoAnalyzerScheduler *)self maxH265VideoEncoders])
          {
            v30 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v33 = HMFGetLogIdentifier();
              v34 = v52[3];
              *buf = 138543618;
              *&buf[4] = v33;
              *&buf[12] = 2048;
              *&buf[14] = v34;
              _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_DEBUG, "%{public}@Cannot encode timelapse using H.265, %lu H.265 encoders are already being used, trying with H.264.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            v35 = v56[3];
            if (v35 >= [(HMIVideoAnalyzerScheduler *)selfCopy3 maxH264VideoEncoders])
            {
              v36 = objc_autoreleasePoolPush();
              v37 = selfCopy3;
              v38 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = HMFGetLogIdentifier();
                v40 = v56[3];
                *buf = 138543618;
                *&buf[4] = v39;
                *&buf[12] = 2048;
                *&buf[14] = v40;
                _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_INFO, "%{public}@Cannot encode timelapse, %lu H.264 encoders are already being used.", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v36);
              *buf = *MEMORY[0x277CC0898];
              *&buf[16] = *(MEMORY[0x277CC0898] + 16);
              [v8 setTimelapseInterval:?];
            }

            else
            {
              ++v56[3];
              [v8 setTimelapseCodecType:?];
            }
          }

          else
          {
            ++v52[3];
            [v8 setTimelapseCodecType:?];
          }
        }
      }

      else
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
      }
    }

    else
    {
      [v8 setTranscode:?];
      *buf = *MEMORY[0x277CC0898];
      *&buf[16] = *(MEMORY[0x277CC0898] + 16);
      [v8 setTimelapseInterval:?];
    }

    if (![(HMIVideoAnalyzerScheduler *)self ignoreThermalAndSystemResourceUsageLevel:v41])
    {
      v28 = +[HMIPreference sharedInstance];
      [v28 maxAnalysisFPSForSystemResourceUsageLevel:?];

      [configurationCopy analysisFPS];
      [v8 setAnalysisFPS:?];
    }

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
  }

  else
  {
    v8 = configurationCopy;
  }

  return v8;
}

void __60__HMIVideoAnalyzerScheduler_reducedConfiguration_analyzers___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 decodeMode])
  {
    ++*(*(a1[4] + 8) + 24);
  }

  v4 = [v3 configuration];
  v5 = [v4 transcode];

  if (v5)
  {
    v6 = [v3 configuration];
    v7 = [v6 transcodeCodecType];

    if (v7 == 1635148593)
    {
      v8 = 5;
    }

    else
    {
      v9 = [v3 configuration];
      v10 = [v9 transcodeCodecType];

      if (v10 != 1752589105)
      {
        goto LABEL_9;
      }

      v8 = 6;
    }

    ++*(*(a1[v8] + 8) + 24);
  }

LABEL_9:
  v11 = [v3 configuration];
  if (v11)
  {
    [&v18 timelapseInterval];
    v12 = BYTE4(v19);

    if (v12)
    {
      v13 = [v3 configuration];
      v14 = [v13 timelapseCodecType];

      if (v14 == 1635148593)
      {
        v15 = a1[5];
LABEL_16:
        ++*(*(v15 + 8) + 24);
        goto LABEL_17;
      }

      v16 = [v3 configuration];
      v17 = [v16 timelapseCodecType];

      if (v17 == 1752589105)
      {
        v15 = a1[6];
        goto LABEL_16;
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

LABEL_17:
}

- (void)_compactInternalAnalyzers
{
  [(NSPointerArray *)self->_internalAnalyzers addPointer:?];
  internalAnalyzers = self->_internalAnalyzers;

  [(NSPointerArray *)internalAnalyzers compact];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  [(HMIVideoAnalyzerScheduler *)self _compactInternalAnalyzers];
  if (![(NSPointerArray *)self->_internalAnalyzers count])
  {
    [(HMFTimer *)self->_tick suspend];
  }

  os_unfair_lock_unlock(&self->_lock);
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  [analyzers enumerateObjectsUsingBlock:?];
  [(HMIVideoAnalyzerScheduler *)self _logState];

  objc_autoreleasePoolPop(v5);
}

- (void)systemResourceUsageDidUpdate:(int64_t)update maxNumberOfAnalyzers:(unint64_t)analyzers maxAnalysisFPS:(float)s
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerScheduler *)self ignoreThermalAndSystemResourceUsageLevel])
  {
    self->_maxH264VideoDecoders = analyzers;
    if (self->_usageLevel != update)
    {
      self->_usageLevel = update;
      [(HMIVideoAnalyzerScheduler *)self maxH264VideoDecoders];
      if (update > 1)
      {
        if (update != 3)
        {
          return;
        }

        v13 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@Enforcing bypass restriction on ongoing analysis sessions", &buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v18 = 0x2020000000;
        v19 = 0;
        os_unfair_lock_lock_with_options();
        analyzers = [(HMIVideoAnalyzerScheduler *)selfCopy2 analyzers];
        [analyzers na_each:?];
      }

      else
      {
        v8 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Lifting bypass restriction on ongoing analysis sessions", &buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v18 = 0x2020000000;
        v19 = 0;
        os_unfair_lock_lock_with_options();
        analyzers2 = [(HMIVideoAnalyzerScheduler *)selfCopy2 analyzers];
        [analyzers2 na_each:?];
        [analyzers2 na_each:?];
      }

      os_unfair_lock_unlock(&selfCopy2->_registerLock);
      _Block_object_dispose(&buf, 8);
    }
  }
}

void *__94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 decodeMode];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 24) < *(a1 + 40))
  {
    v6 = v3;
    v3 = [v3 decodeMode];
    v4 = v6;
    if (!v3)
    {
      v3 = [v6 setDecodeMode:?];
      v4 = v6;
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke_55(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 decodeMode])
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
    if (v4 >= *(a1 + 40))
    {
      [v5 setDecodeMode:?];
    }

    else
    {
      *(v3 + 24) = v4 + 1;
    }
  }
}

- (void)_updateAnalyzer:(id)analyzer withIndex:(unint64_t)index
{
  analyzerCopy = analyzer;
  if ([analyzerCopy monitored])
  {
    [analyzerCopy delay];
    if (v5 > 16.0 && [analyzerCopy decodeMode])
    {
      [analyzerCopy setDecodeMode:?];
    }

    if (![(HMIVideoAnalyzerScheduler *)self ignoreThermalAndSystemResourceUsageLevel])
    {
      [(HMISystemResourceUsageMonitor *)self->_usageMonitor maxAnalysisFPS];
    }

    [analyzerCopy setAnalysisFPS:?];
  }
}

- (BOOL)_shouldSkipLogState
{
  logStateCount = [(HMIVideoAnalyzerScheduler *)self logStateCount];
  [(HMIVideoAnalyzerScheduler *)self logStateCount];
  [(HMIVideoAnalyzerScheduler *)self setLogStateCount:?];
  v4 = +[HMIPreference sharedInstance];
  v5 = [v4 numberPreferenceForKey:? defaultValue:?];
  integerValue = [v5 integerValue];

  return logStateCount % integerValue != 0;
}

- (int64_t)_getPeakPowerPressureLevel
{
  if (!+[HMIPreference isProductTypeJ255])
  {
    return -1;
  }

  v2 = +[HMIPeakPowerPressureMonitor sharedInstance];
  peakPowerPressureLevel = [v2 peakPowerPressureLevel];

  return peakPowerPressureLevel;
}

- (void)_logState
{
  v85 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerScheduler *)self _shouldSkipLogState])
  {
    usageLevel = self->_usageLevel;
    if (usageLevel > 3)
    {
      v4 = @"Undefined";
    }

    else
    {
      v4 = off_278755058[usageLevel];
    }

    v79 = 0;
    v80[0] = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    HMIGetMemoryFootprint(v80, &v79);
    v5 = +[HMIPreference sharedInstance];
    v6 = [v5 BOOLPreferenceForKey:? defaultValue:?];

    if (v6)
    {
      v7 = HMIGetProcessID(@"mediaserverd");
      HMIGetMemoryFootprintForProcessID(v7, &v76, &v75);
      v8 = HMIGetProcessID(@"homed");
      HMIGetMemoryFootprintForProcessID(v8, &v78, &v77);
    }

    v9 = objc_autoreleasePoolPush();
    analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
    firstObject = [analyzers firstObject];

    if (firstObject)
    {
      v72 = v9;
      [analyzers na_each:?];
      v12 = +[HMIPreference sharedInstance];
      v13 = [v12 BOOLPreferenceForKey:? defaultValue:?];

      v14 = 0x278751000;
      v73 = analyzers;
      if (v13)
      {
        v15 = [MEMORY[0x277CCAB68] stringWithString:?];
        [v15 appendFormat:v4];
        v16 = +[HMIPreference sharedInstance];
        [v16 isIdle];
        v17 = HMFBooleanToString();
        [v15 appendFormat:v17];

        processInfo = [MEMORY[0x277CCAC38] processInfo];
        processName = [processInfo processName];
        [v15 appendFormat:processName, v80[0] >> 20, v79 >> 20];

        v20 = +[HMIPreference sharedInstance];
        LODWORD(processName) = [v20 BOOLPreferenceForKey:? defaultValue:?];

        if (processName)
        {
          [v15 appendFormat:v76 >> 20, v75 >> 20];
          [v15 appendFormat:v78 >> 20, v77 >> 20];
        }

        v21 = +[HMIThermalMonitor sharedInstance];
        [v15 appendFormat:objc_msgSend(v21, "thermalLevel")];

        [v15 appendFormat:-[HMIVideoAnalyzerScheduler _getPeakPowerPressureLevel](self, "_getPeakPowerPressureLevel")];
        v22 = HMIIsDebug();
        v23 = @"Release";
        if (v22)
        {
          v23 = @"Debug";
        }

        [v15 appendFormat:v23];
        [v15 appendFormat:-[HMIVideoAnalyzerScheduler maxH264VideoDecoders](self, "maxH264VideoDecoders")];
        v24 = objc_autoreleasePoolPush();
        selfCopy = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v82 = v27;
          v83 = 2112;
          v84 = v15;
          _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

          analyzers = v73;
        }

        objc_autoreleasePoolPop(v24);
        firstObject2 = [analyzers firstObject];
        state = [firstObject2 state];
        tableColumns = [state tableColumns];

        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          [tableColumns componentsJoinedByString:?];
          v36 = v35 = v4;
          *buf = 138543618;
          v82 = v34;
          v83 = 2112;
          v84 = v36;
          _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

          v4 = v35;
        }

        objc_autoreleasePoolPop(v31);
        v74 = tableColumns;
        v37 = tableColumns;
        analyzers = v73;
        [v73 na_each:?];

        v14 = 0x278751000uLL;
      }

      v67 = MEMORY[0x277CBEB38];
      v80[24] = v4;
      v80[17] = @"usage";
      v80[18] = @"idle";
      v38 = MEMORY[0x277CCABB0];
      v71 = +[HMIPreference sharedInstance];
      [v71 isIdle];
      v70 = [v38 numberWithBool:?];
      v80[25] = v70;
      processInfo2 = [MEMORY[0x277CCAC38] processInfo];
      processName2 = [processInfo2 processName];
      v80[19] = processName2;
      v80[13] = @"footprint";
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
      v80[15] = v39;
      v80[14] = @"maxFootprint";
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
      v80[16] = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v80[26] = v41;
      v80[20] = @"thermalLevel";
      v42 = MEMORY[0x277CCABB0];
      sharedInstance = [*(v14 + 3488) sharedInstance];
      [sharedInstance thermalLevel];
      v44 = [v42 numberWithUnsignedInteger:?];
      v80[27] = v44;
      v80[21] = @"peakPowerPressureLevel";
      v45 = MEMORY[0x277CCABB0];
      [(HMIVideoAnalyzerScheduler *)self _getPeakPowerPressureLevel];
      v46 = [v45 numberWithInteger:?];
      v80[28] = v46;
      v80[22] = @"build";
      v47 = HMIIsDebug();
      v48 = @"Release";
      if (v47)
      {
        v48 = @"Debug";
      }

      v80[29] = v48;
      v80[23] = @"analyzers";
      v49 = [analyzers na_map:?];
      v80[30] = v49;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v51 = [v67 dictionaryWithDictionary:?];

      v52 = +[HMIPreference sharedInstance];
      v53 = [v52 BOOLPreferenceForKey:? defaultValue:?];

      if (v53)
      {
        v80[9] = @"mediaserverd";
        v80[5] = @"footprint";
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v80[6] = @"maxFootprint";
        v80[7] = v54;
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v80[8] = v55;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        v80[10] = @"homed";
        v80[11] = v56;
        v80[1] = @"footprint";
        v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v80[2] = @"maxFootprint";
        v80[3] = v57;
        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v80[4] = v58;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        v80[12] = v59;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        [v51 addEntriesFromDictionary:?];
      }

      v61 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
      v62 = objc_autoreleasePoolPush();
      v63 = objc_alloc_init(HMIVideoAnalyzerSchedulerJSONLogger);
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = HMFGetLogIdentifier();
        v66 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];
        *buf = 138543618;
        v82 = v65;
        v83 = 2112;
        v84 = v66;
        _os_log_impl(&dword_22D12F000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v62);
      v9 = v72;
      analyzers = v73;
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __38__HMIVideoAnalyzerScheduler__logState__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 state];
  [v2 check];
}

void __38__HMIVideoAnalyzerScheduler__logState__block_invoke_121(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = [v4 tableValues];

  v6 = [MEMORY[0x277CBEB18] array];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __38__HMIVideoAnalyzerScheduler__logState__block_invoke_2;
  v16 = &unk_278755010;
  v17 = *(a1 + 32);
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:{v13, 3221225472, __38__HMIVideoAnalyzerScheduler__logState__block_invoke_2, &unk_278755010}];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 componentsJoinedByString:?];
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

void __38__HMIVideoAnalyzerScheduler__logState__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v5 = [v4 length];

  if ([v10 length] <= v5)
  {
    [v10 length];
    v7 = [&stru_284057FB8 stringByPaddingToLength:? withString:? startingAtIndex:?];
    v8 = *(a1 + 40);
    v9 = [v7 stringByAppendingString:?];
    [v8 addObject:?];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [v10 substringToIndex:?];
    [v6 addObject:?];
  }
}

id __38__HMIVideoAnalyzerScheduler__logState__block_invoke_157(uint64_t a1, void *a2)
{
  v2 = [a2 state];
  v3 = [v2 JSONObject];

  return v3;
}

- (NSArray)analyzers
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSPointerArray *)self->_internalAnalyzers allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

@end