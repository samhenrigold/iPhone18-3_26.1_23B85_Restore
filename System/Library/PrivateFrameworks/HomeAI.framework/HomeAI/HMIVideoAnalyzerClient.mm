@interface HMIVideoAnalyzerClient
- (HMIVideoAnalyzerClient)initWithConfiguration:(id)configuration identifier:(id)identifier;
- (id)ensureSession;
- (void)_didFailWithError:(id)error;
- (void)_sendMessage:(SEL)message arguments:(id)arguments asynchronous:(BOOL)asynchronous completionHandler:(id)handler;
- (void)_sendMessageWithOptions:(id)options asynchronous:(BOOL)asynchronous completionHandler:(id)handler;
- (void)analyzeFragment:(id)fragment configuration:(id)configuration;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)handler;
- (void)setAnalysisFPS:(double)s;
- (void)setBoosted:(BOOL)boosted;
- (void)setDecodeMode:(int64_t)mode;
- (void)setEncode:(BOOL)encode;
- (void)setMonitored:(BOOL)monitored;
@end

@implementation HMIVideoAnalyzerClient

- (HMIVideoAnalyzerClient)initWithConfiguration:(id)configuration identifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HMIVideoAnalyzerClient;
  v4 = [(HMIVideoAnalyzer *)&v10 initWithConfiguration:configuration identifier:identifier];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("HMIVideoAnalyzerClient", v5);
    workQueue = v4->_workQueue;
    v4->_workQueue = v6;

    session = v4->_session;
    v4->_session = 0;

    v4->_sessionCreationAttempted = 0;
    v4->_hasFailed = 0;
  }

  return v4;
}

- (id)ensureSession
{
  v37 = *MEMORY[0x277D85DE8];
  session = [(HMIVideoAnalyzerClient *)self session];
  if (session)
  {

LABEL_4:
    session2 = [(HMIVideoAnalyzerClient *)self session];
    goto LABEL_5;
  }

  if ([(HMIVideoAnalyzerClient *)self sessionCreationAttempted])
  {
    goto LABEL_4;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Creating Remote Session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(&location, selfCopy);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v10 = getVCPHomeKitAnalysisSessionClass_softClass;
  v29 = getVCPHomeKitAnalysisSessionClass_softClass;
  if (!getVCPHomeKitAnalysisSessionClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getVCPHomeKitAnalysisSessionClass_block_invoke;
    v35 = &unk_2787529F8;
    v36 = &v26;
    __getVCPHomeKitAnalysisSessionClass_block_invoke(buf);
    v10 = v27[3];
  }

  v11 = v10;
  _Block_object_dispose(&v26, 8);
  v30 = @"configuration";
  configuration = [(HMIVideoAnalyzer *)selfCopy configuration];
  v31 = @"identifier";
  v32 = configuration;
  identifier = [(HMIVideoAnalyzer *)selfCopy identifier];
  v33 = identifier;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v23[1] = MEMORY[0x277D85DD0];
  v23[2] = 3221225472;
  v23[3] = __39__HMIVideoAnalyzerClient_ensureSession__block_invoke;
  v23[4] = &unk_278755D20;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(v23, &location);
  v15 = [v10 sessionWithProperties:? withResultsHandler:? andInterruptionHandler:?];
  [(HMIVideoAnalyzerClient *)selfCopy setSession:?];

  session3 = [(HMIVideoAnalyzerClient *)selfCopy session];
  LODWORD(configuration) = session3 == 0;

  if (configuration)
  {
    v17 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];
    [(HMIVideoAnalyzerClient *)selfCopy _didFailWithError:?];
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    session4 = [(HMIVideoAnalyzerClient *)v19 session];
    *buf = 138543618;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = session4;
    _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Created Remote Session %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [(HMIVideoAnalyzerClient *)v19 setSessionCreationAttempted:?];
  session2 = [(HMIVideoAnalyzerClient *)v19 session];
  objc_destroyWeak(v23);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
LABEL_5:

  return session2;
}

void __39__HMIVideoAnalyzerClient_ensureSession__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received Result: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v6 delegate];
  v10 = [v3 objectForKeyedSubscript:?];
  v11 = NSSelectorFromString(v10);
  if (v11 == sel_analyzer_didAnalyzeFrameWithResult_)
  {
    v12 = [v3 objectForKeyedSubscript:?];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_22;
    }

    v13 = [v12 objectAtIndexedSubscript:?];
    [v9 analyzer:? didAnalyzeFrameWithResult:?];
LABEL_21:

    goto LABEL_22;
  }

  if (v11 == sel_analyzer_didAnalyzeFragmentWithResult_)
  {
    v12 = [v3 objectForKeyedSubscript:?];
    v16 = [v12 objectAtIndexedSubscript:?];
    v17 = [v6 homePersonManager];
    v18 = [v6 analysisStateManager];
    v13 = [v6 finalizeFragmentResult:? homePersonManager:? analysisStateManager:?];

    if (objc_opt_respondsToSelector())
    {
      [v9 analyzer:? didAnalyzeFragmentWithResult:?];
    }

    goto LABEL_21;
  }

  if (v11 == sel_analyzer_didFailWithError_)
  {
    v12 = [v3 objectForKeyedSubscript:?];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_22;
    }

    v13 = [v12 objectAtIndexedSubscript:?];
    [v9 analyzer:? didFailWithError:?];
    goto LABEL_21;
  }

  if (v11 == sel_analyzer_didCreateTimelapseFragment_)
  {
    v12 = [v3 objectForKeyedSubscript:?];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 objectAtIndexedSubscript:?];
      [v9 analyzer:? didCreateTimelapseFragment:?];
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v11 == sel_analyzer_didProduceAnalysisStateUpdate_)
  {
    v12 = [v3 objectForKeyedSubscript:?];
    v13 = [v12 objectAtIndexedSubscript:?];
    v14 = [v6 analysisStateManager];

    if (v14 && v13)
    {
      v15 = [v6 analysisStateManager];
      [v15 publishLocalState:?];
    }

    if (objc_opt_respondsToSelector())
    {
      [v9 analyzer:? didProduceAnalysisStateUpdate:?];
    }

    goto LABEL_21;
  }

LABEL_23:
}

void __39__HMIVideoAnalyzerClient_ensureSession__block_invoke_228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];
  [WeakRetained _didFailWithError:?];
}

- (void)_didFailWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(HMIVideoAnalyzerClient *)self hasFailed])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Analyzer has already failed.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    HMIErrorLog(self, errorCopy);
    delegate = [(HMIVideoAnalyzer *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate analyzer:? didFailWithError:?];
    }

    [(HMIVideoAnalyzerClient *)self setHasFailed:?];
  }
}

- (void)_sendMessageWithOptions:(id)options asynchronous:(BOOL)asynchronous completionHandler:(id)handler
{
  asynchronousCopy = asynchronous;
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v13;
    v28 = 2112;
    v29 = optionsCopy;
    _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Sending Message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  ensureSession = [(HMIVideoAnalyzerClient *)selfCopy ensureSession];
  v15 = ensureSession;
  if (ensureSession)
  {
    workQueue = selfCopy->_workQueue;
    if (asynchronousCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke;
      block[3] = &unk_2787526C0;
      v23 = ensureSession;
      v24 = optionsCopy;
      v25 = handlerCopy;
      dispatch_async(workQueue, block);

      v17 = v23;
    }

    else
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_3;
      v18[3] = &unk_2787526C0;
      v19 = ensureSession;
      v20 = optionsCopy;
      v21 = handlerCopy;
      dispatch_sync(workQueue, v18);

      v17 = v19;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:? description:?];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }
}

void __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  [v1 processMessageWithOptions:? andCompletionHandler:?];
}

uint64_t __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v5 = MEMORY[0x277D85DD0];
  v6 = *(a1 + 48);
  v4 = v2;
  [v3 processMessageWithOptions:v5 andCompletionHandler:{3221225472, __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_4, &unk_278755D70}];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __81__HMIVideoAnalyzerClient__sendMessageWithOptions_asynchronous_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (void)_sendMessage:(SEL)message arguments:(id)arguments asynchronous:(BOOL)asynchronous completionHandler:(id)handler
{
  argumentsCopy = arguments;
  handlerCopy = handler;
  v13 = NSStringFromSelector(message);
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v12 = [v11 mutableCopy];

  if (argumentsCopy)
  {
    [v12 setObject:? forKey:?];
  }

  [HMIVideoAnalyzerClient _sendMessageWithOptions:"_sendMessageWithOptions:asynchronous:completionHandler:" asynchronous:? completionHandler:?];
}

- (void)analyzeFragment:(id)fragment configuration:(id)configuration
{
  v6 = MEMORY[0x277CBEA60];
  configurationCopy = configuration;
  fragmentCopy = fragment;
  v9 = [v6 arrayWithObjects:? count:?];

  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:completionHandler:" arguments:? asynchronous:? completionHandler:?];
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:completionHandler:" arguments:? asynchronous:? completionHandler:?];
}

- (void)setAnalysisFPS:(double)s
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:?];
  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:" arguments:? asynchronous:?];
}

- (void)setMonitored:(BOOL)monitored
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:?];
  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:" arguments:? asynchronous:?];
}

- (void)setEncode:(BOOL)encode
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:?];
  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:" arguments:? asynchronous:?];
}

- (void)setDecodeMode:(int64_t)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:?];
  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:" arguments:? asynchronous:?];
}

- (void)setBoosted:(BOOL)boosted
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:?];
  [HMIVideoAnalyzerClient _sendMessage:"_sendMessage:arguments:asynchronous:" arguments:? asynchronous:?];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Invalidating XPC Connection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  session = [(HMIVideoAnalyzerClient *)selfCopy session];

  if (session)
  {
    session2 = [(HMIVideoAnalyzerClient *)selfCopy session];
    [session2 invalidate];
  }

  v9.receiver = selfCopy;
  v9.super_class = HMIVideoAnalyzerClient;
  [(HMIVideoAnalyzer *)&v9 dealloc];
}

@end