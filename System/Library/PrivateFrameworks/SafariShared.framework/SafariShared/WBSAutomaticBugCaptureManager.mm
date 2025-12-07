@interface WBSAutomaticBugCaptureManager
+ (id)sharedManager;
- (WBSAutomaticBugCaptureManager)init;
- (void)_startLoggingSessionForDomain:(id)domain detectedProcess:(id)process type:(id)type subType:(id)subType context:(id)context duration:(double)duration;
@end

@implementation WBSAutomaticBugCaptureManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WBSAutomaticBugCaptureManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __46__WBSAutomaticBugCaptureManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSAutomaticBugCaptureManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (WBSAutomaticBugCaptureManager)init
{
  if (isABCAvailable_onceToken != -1)
  {
    [WBSAutomaticBugCaptureManager init];
  }

  if (isABCAvailable_isABCAvailable == 1 && (v7.receiver = self, v7.super_class = WBSAutomaticBugCaptureManager, (self = [(WBSAutomaticBugCaptureManager *)&v7 init]) != 0))
  {
    v3 = [objc_alloc(MEMORY[0x1E69D4F80]) initWithQueue:0];
    reporter = self->_reporter;
    self->_reporter = v3;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_startLoggingSessionForDomain:(id)domain detectedProcess:(id)process type:(id)type subType:(id)subType context:(id)context duration:(double)duration
{
  domainCopy = domain;
  processCopy = process;
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  v19 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__WBSAutomaticBugCaptureManager__startLoggingSessionForDomain_detectedProcess_type_subType_context_duration___block_invoke;
  block[3] = &unk_1E7FB6B30;
  block[4] = self;
  v26 = domainCopy;
  v27 = typeCopy;
  v28 = subTypeCopy;
  v29 = processCopy;
  v30 = contextCopy;
  durationCopy = duration;
  v20 = contextCopy;
  v21 = processCopy;
  v22 = subTypeCopy;
  v23 = typeCopy;
  v24 = domainCopy;
  dispatch_async(v19, block);
}

void __109__WBSAutomaticBugCaptureManager__startLoggingSessionForDomain_detectedProcess_type_subType_context_duration___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) signatureWithDomain:a1[5] type:a1[6] subType:a1[7] detectedProcess:a1[8] triggerThresholdValues:0];
  v3 = (a1 + 9);
  [v2 setObject:a1[9] forKeyedSubscript:*MEMORY[0x1E69D50E8]];
  v4 = *(a1[4] + 8);
  v5 = v3[1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__WBSAutomaticBugCaptureManager__startLoggingSessionForDomain_detectedProcess_type_subType_context_duration___block_invoke_2;
  v9[3] = &unk_1E7FB6B08;
  v10 = *v3;
  v6 = [v4 snapshotWithSignature:v2 duration:0 event:0 payload:v9 reply:v5];
  if ((v6 & 1) == 0)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoBugCapture(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __109__WBSAutomaticBugCaptureManager__startLoggingSessionForDomain_detectedProcess_type_subType_context_duration___block_invoke_cold_1(v3, v8);
    }
  }
}

void __109__WBSAutomaticBugCaptureManager__startLoggingSessionForDomain_detectedProcess_type_subType_context_duration___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXAutoBugCapture(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138543619;
    v8 = v6;
    v9 = 2113;
    v10 = v3;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Got a response from [SDRDiagnosticReporter snapshotWithSignature:...] with context '%{public}@': %{private}@", &v7, 0x16u);
  }
}

void __109__WBSAutomaticBugCaptureManager__startLoggingSessionForDomain_detectedProcess_type_subType_context_duration___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Calling [SDRDiagnosticReporter snapshotWithSignature:...] with context '%{public}@' failed", &v3, 0xCu);
}

@end