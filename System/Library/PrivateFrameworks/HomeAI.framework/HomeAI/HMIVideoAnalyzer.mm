@interface HMIVideoAnalyzer
+ (id)allowedClasses;
+ (id)analyzerWithConfiguration:(id)configuration identifier:(id)identifier remote:(BOOL)remote error:(id *)error;
+ (id)analyzerWithOptions:(id)options error:(id *)error;
- (BOOL)boosted;
- (BOOL)encode;
- (BOOL)monitored;
- (HMIVideoAnalyzer)initWithConfiguration:(id)configuration identifier:(id)identifier;
- (HMIVideoAnalyzerDelegate)delegate;
- (double)analysisFPS;
- (double)delay;
- (id)finalizeFragmentResult:(id)result homePersonManager:(id)manager analysisStateManager:(id)stateManager;
- (id)logIdentifier;
- (int64_t)decodeMode;
- (void)analyzeFragment:(id)fragment configuration:(id)configuration;
- (void)cancel;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)handler;
- (void)flush;
- (void)flushAsync;
- (void)handleAssetData:(id)data withOptions:(id)options completionHandler:(id)handler;
- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler;
- (void)setAnalysisFPS:(double)s;
- (void)setBoosted:(BOOL)boosted;
- (void)setDecodeMode:(int64_t)mode;
- (void)setEncode:(BOOL)encode;
- (void)setMonitored:(BOOL)monitored;
@end

@implementation HMIVideoAnalyzer

+ (id)allowedClasses
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:{v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), v22}];
  v4 = [v2 setWithArray:?];

  return v4;
}

+ (id)analyzerWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    +[HMIVideoAnalyzer analyzerWithOptions:error:];
LABEL_13:
    [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    return [(HMIVideoAnalyzer *)v14 analyzerWithConfiguration:v15 identifier:v16 error:v17, v18];
  }

  v9 = [optionsCopy objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = [self analyzerWithConfiguration:? identifier:? remote:? error:?];

  return v12;
}

+ (id)analyzerWithConfiguration:(id)configuration identifier:(id)identifier remote:(BOOL)remote error:(id *)error
{
  remoteCopy = remote;
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  if (remoteCopy)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = configurationCopy;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating analyzer with identifier: %@, configuration: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [HMIVideoAnalyzerClient initWithConfiguration:"initWithConfiguration:identifier:" identifier:?];
  }

  else
  {
    v16 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v18 = MEMORY[0x277D85DD0];
    v19 = identifierCopy;
    v15 = [v16 analyzerWithConfiguration:v18 block:{3221225472, __70__HMIVideoAnalyzer_analyzerWithConfiguration_identifier_remote_error___block_invoke, &unk_278755CD0}];
  }

  return v15;
}

HMIVideoAnalyzerServer *__70__HMIVideoAnalyzer_analyzerWithConfiguration_identifier_remote_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating analyzer with identifier: %@, configuration: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [HMIVideoAnalyzerServer initWithConfiguration:"initWithConfiguration:identifier:" identifier:?];

  return v9;
}

- (HMIVideoAnalyzer)initWithConfiguration:(id)configuration identifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HMIVideoAnalyzer;
  v9 = [(HMIVideoAnalyzer *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_identifier, identifier);
    if ([configurationCopy saveAnalyzerResultsToDisk])
    {
      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v11 setDateFormat:?];
      v12 = [MEMORY[0x277CBEAA8] now];
      v13 = [v11 stringFromDate:?];

      v14 = MEMORY[0x277CCACA8];
      uUIDString = [identifierCopy UUIDString];
      v16 = [v14 stringWithFormat:v13, uUIDString];

      v17 = [[HMIVideoAnalyzerMutableReport alloc] initWithName:?];
      report = v10->_report;
      v10->_report = v17;
    }
  }

  return v10;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  report = [(HMIVideoAnalyzer *)self report];

  if (report)
  {
    v4 = MEMORY[0x277CCACA8];
    report2 = [(HMIVideoAnalyzer *)self report];
    name = [report2 name];
    v7 = [v4 stringWithFormat:name];

    report3 = [(HMIVideoAnalyzer *)self report];
    data = [report3 data];
    [data writeToFile:? atomically:?];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@VideoAnalyzerReport saved (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzer;
  [(HMIVideoAnalyzer *)&v14 dealloc];
}

- (void)handleAssetData:(id)data withOptions:(id)options completionHandler:(id)handler
{
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:v13];
  v15 = [v11 exceptionWithName:? reason:? userInfo:?];
  v16 = v15;

  objc_exception_throw(v15);
}

- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = MEMORY[0x277CBEAD8];
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:v10];
  v12 = [v8 exceptionWithName:? reason:? userInfo:?];
  v13 = v12;

  objc_exception_throw(v12);
}

- (double)delay
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)analyzeFragment:(id)fragment configuration:(id)configuration
{
  fragmentCopy = fragment;
  configurationCopy = configuration;
  v8 = MEMORY[0x277CBEAD8];
  v9 = MEMORY[0x277CCACA8];
  v10 = NSStringFromSelector(a2);
  v11 = [v9 stringWithFormat:v10];
  v12 = [v8 exceptionWithName:? reason:? userInfo:?];
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)flush
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)flushAsync
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)cancel
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)setAnalysisFPS:(double)s
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setMonitored:(BOOL)monitored
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setEncode:(BOOL)encode
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setDecodeMode:(int64_t)mode
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setBoosted:(BOOL)boosted
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 exceptionWithName:? reason:? userInfo:?];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)encode
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)monitored
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (double)analysisFPS
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (int64_t)decodeMode
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)boosted
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)finalizeFragmentResult:(id)result homePersonManager:(id)manager analysisStateManager:(id)stateManager
{
  resultCopy = result;
  managerCopy = manager;
  stateManagerCopy = stateManager;
  if (resultCopy)
  {
    v11 = stateManagerCopy;
    v12 = +[HMIPreference sharedInstance];
    v13 = [v12 BOOLPreferenceForKey:? defaultValue:?];

    if (managerCopy)
    {
      frameResults = [resultCopy frameResults];
      v15 = [frameResults na_flatMap:?];

      v16 = [MEMORY[0x277CBEB98] setWithArray:?];
      [managerCopy handleNewFaceEvents:?];

      if (v13)
      {
        v27 = MEMORY[0x277D85DD0];
        v28 = managerCopy;
        [v15 na_each:{v27, 3221225472, __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke_3, &unk_278755CF8}];
      }
    }

    [HMIAnalytics sendEventsForFragmentResult:?];
    report = [(HMIVideoAnalyzer *)self report];

    if (report)
    {
      report2 = [(HMIVideoAnalyzer *)self report];
      identifier = [(HMIVideoAnalyzer *)self identifier];
      uUIDString = [identifier UUIDString];
      v21 = [uUIDString substringToIndex:?];
      identifier2 = [(HMIVideoAnalyzer *)self identifier];
      uUIDString2 = [identifier2 UUIDString];
      [report2 appendFragmentResult:? forKey:? source:? redactFrames:?];
    }

    return resultCopy;
  }

  else
  {
    v25 = [HMIVideoAnalyzer finalizeFragmentResult:homePersonManager:analysisStateManager:];
    return __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke(v25, v26);
  }
}

id __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  v3 = [v2 na_map:?];
  v4 = [v3 allObjects];

  return v4;
}

id __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 face];

    if (v6)
    {
      v6 = [v5 face];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 UUID];
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 camera];
  [HMIAnalytics videoAnalyzerDidFindFaceEvent:"videoAnalyzerDidFindFaceEvent:homePersonManagerUUID:camera:" homePersonManagerUUID:? camera:?];
}

- (id)logIdentifier
{
  identifier = [(HMIVideoAnalyzer *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (HMIVideoAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end