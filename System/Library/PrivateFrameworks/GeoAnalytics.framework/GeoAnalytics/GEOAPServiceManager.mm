@interface GEOAPServiceManager
+ (id)sharedManager;
+ (void)useProxyClass:(Class)class;
- (BOOL)AppleInternal;
- (BOOL)evDirectionsFeedbackAllowed;
- (BOOL)evDirectionsFeedbackAuth;
- (BOOL)eventCollectionIsDisabledForCurrentProcess;
- (BOOL)platformDiagAndUsage;
- (BOOL)platformDiagAndUsageOrAppleInternal;
- (BOOL)usageCountCollectionIsDisabledForCurrentProcess;
- (GEOAPServiceManager)init;
- (void)dealloc;
- (void)logToDiagAndUsageUnderBugId:(id)id filePrefix:(id)prefix logData:(id)data;
- (void)reportCuratedCollectionWasViewedWithId:(unint64_t)id completion:(id)completion completionQueue:(id)queue;
- (void)reportDailySettings:(id)settings completionQueue:(id)queue completion:(id)completion;
- (void)reportDailyUsageCountType:(int)type;
- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id completion:(id)completion;
- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id queue:(id)queue completion:(id)completion;
- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completionQueue:(id)queue completion:(id)completion;
- (void)updateSharedStateType:(int)type state:(id)state completion:(id)completion completionQueue:(id)queue;
@end

@implementation GEOAPServiceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_348);
  }

  v3 = _sharedManager;

  return v3;
}

- (GEOAPServiceManager)init
{
  v40.receiver = self;
  v40.super_class = GEOAPServiceManager;
  v2 = [(GEOAPServiceManager *)&v40 init];
  if (v2)
  {
    v3 = _proxyClass;
    if (!_proxyClass)
    {
      v4 = objc_opt_class();
      [v4 useProxyClass:objc_opt_class()];
      v3 = _proxyClass;
    }

    v5 = objc_alloc_init(v3);
    proxy = v2->_proxy;
    v2->_proxy = v5;

    v2->_directionsFeedbackAllowed = 1;
    v2->_evDirectionsFeedbackAllowed = GEOConfigGetBOOL();
    v7 = geo_isolater_create();
    configInfoIsolator = v2->_configInfoIsolator;
    v2->_configInfoIsolator = v7;

    global_queue = geo_get_global_queue();
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __27__GEOAPServiceManager_init__block_invoke;
    v38 = &unk_1E7959638;
    v10 = v2;
    v39 = v10;
    v11 = _GEOConfigAddBlockListenerForKey();
    evDirectionsFeedbackAllowedListener = v10->_evDirectionsFeedbackAllowedListener;
    v10->_evDirectionsFeedbackAllowedListener = v11;

    v10->_evDirectionsFeedbackAuth = GEOConfigGetBOOL();
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __27__GEOAPServiceManager_init__block_invoke_3;
    v33 = &unk_1E7959638;
    v13 = v10;
    v34 = v13;
    v14 = _GEOConfigAddBlockListenerForKey();
    evDirectionsFeedbackAuthListener = v13->_evDirectionsFeedbackAuthListener;
    v13->_evDirectionsFeedbackAuthListener = v14;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __27__GEOAPServiceManager_init__block_invoke_5;
    v28[3] = &unk_1E7959638;
    v16 = v13;
    v29 = v16;
    v17 = MEMORY[0x1AC5A12F0](v28);
    v18 = MEMORY[0x1E69A1610];
    v17[2](v17, *MEMORY[0x1E69A1610], *(MEMORY[0x1E69A1610] + 8));
    v19 = _GEOConfigAddBlockListenerForKey();
    eventCollectionIsDisabledForCurrentProcessListener = v16->_eventCollectionIsDisabledForCurrentProcessListener;
    v16->_eventCollectionIsDisabledForCurrentProcessListener = v19;

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __27__GEOAPServiceManager_init__block_invoke_7;
    v26[3] = &unk_1E7959638;
    v21 = v16;
    v27 = v21;
    v22 = MEMORY[0x1AC5A12F0](v26);
    v22[2](v22, *v18, v18[1]);
    v23 = _GEOConfigAddBlockListenerForKey();
    usageCountCollectionIsDisabledForCurrentProcessListener = v21->_usageCountCollectionIsDisabledForCurrentProcessListener;
    v21->_usageCountCollectionIsDisabledForCurrentProcessListener = v23;
  }

  return v2;
}

uint64_t __36__GEOAPServiceManager_sharedManager__block_invoke()
{
  _sharedManager = objc_alloc_init(GEOAPServiceManager);

  return MEMORY[0x1EEE66BB8]();
}

void __27__GEOAPServiceManager_init__block_invoke_5(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = GEOConfigGetArray();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    if (v4)
    {
      v5 = *v12;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = GEOApplicationIdentifierOrProcessName();
          v9 = [v8 caseInsensitiveCompare:v7] == 0;
          *(v16 + 24) = v9;

          if (v16[3])
          {
            break;
          }
        }

        if (v4 == ++v6)
        {
          v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *(a1 + 32);
  geo_isolate_sync_data();

  _Block_object_dispose(&v15, 8);
}

void __27__GEOAPServiceManager_init__block_invoke_7(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = GEOConfigGetArray();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    if (v4)
    {
      v5 = *v12;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = GEOApplicationIdentifierOrProcessName();
          v9 = [v8 caseInsensitiveCompare:v7] == 0;
          *(v16 + 24) = v9;

          if (v16[3])
          {
            break;
          }
        }

        if (v4 == ++v6)
        {
          v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *(a1 + 32);
  geo_isolate_sync_data();

  _Block_object_dispose(&v15, 8);
}

- (BOOL)usageCountCollectionIsDisabledForCurrentProcess
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync_data();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)eventCollectionIsDisabledForCurrentProcess
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync_data();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)platformDiagAndUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
  v10 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
  if (!getDiagnosticLogSubmissionEnabledSymbolLoc_ptr)
  {
    v3 = CrashReporterSupportLibrary();
    v8[3] = dlsym(v3, "DiagnosticLogSubmissionEnabled");
    getDiagnosticLogSubmissionEnabledSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2();
}

- (BOOL)evDirectionsFeedbackAllowed
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __50__GEOAPServiceManager_evDirectionsFeedbackAllowed__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 10) == 1)
  {
    *(*(*(result + 40) + 8) + 24) = *(v1 + 8);
  }

  return result;
}

- (BOOL)evDirectionsFeedbackAuth
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)logToDiagAndUsageUnderBugId:(id)id filePrefix:(id)prefix logData:(id)data
{
  idCopy = id;
  prefixCopy = prefix;
  dataCopy = data;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__GEOAPServiceManager_logToDiagAndUsageUnderBugId_filePrefix_logData___block_invoke;
  v19[3] = &unk_1E79539C0;
  v10 = dataCopy;
  v20 = v10;
  v11 = idCopy;
  v12 = prefixCopy;
  v13 = v19;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v14 = getOSAWriteLogForSubmissionSymbolLoc_ptr;
  v29 = getOSAWriteLogForSubmissionSymbolLoc_ptr;
  if (!getOSAWriteLogForSubmissionSymbolLoc_ptr)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getOSAWriteLogForSubmissionSymbolLoc_block_invoke;
    v24 = &unk_1E79595B8;
    v25 = &v26;
    v15 = CrashReporterSupportLibrary();
    v16 = dlsym(v15, "OSAWriteLogForSubmission");
    *(v25[1] + 24) = v16;
    getOSAWriteLogForSubmissionSymbolLoc_ptr = *(v25[1] + 24);
    v14 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v14)
  {
    v17 = dlerror();
    v18 = abort_report_np("%s", v17);
    _Block_object_dispose(&v26, 8);
    _Unwind_Resume(v18);
  }

  (v14)(v11, v12, 0, 0, v13);
}

- (BOOL)platformDiagAndUsageOrAppleInternal
{
  if ([(GEOAPServiceManager *)self platformDiagAndUsage])
  {
    return 1;
  }

  return [(GEOAPServiceManager *)self AppleInternal];
}

- (BOOL)AppleInternal
{
  mEMORY[0x1E69A2398] = [MEMORY[0x1E69A2398] sharedPlatform];
  isInternalInstall = [mEMORY[0x1E69A2398] isInternalInstall];

  return isInternalInstall;
}

- (void)reportDailySettings:(id)settings completionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  proxy = self->_proxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__GEOAPServiceManager_reportDailySettings_completionQueue_completion___block_invoke;
  v13[3] = &unk_1E7953998;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = queueCopy;
  v12 = completionCopy;
  [(GEOAPServiceProxy *)proxy reportDailySettings:settings completion:v13];
}

void __70__GEOAPServiceManager_reportDailySettings_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = v3;
    v5 = *(a1 + 32);
    if (v5)
    {
      dispatch_async(v5, v4);
    }

    else
    {
      v4[2](v4);
    }

    v3 = v6;
  }
}

- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id queue:(id)queue completion:(id)completion
{
  v12 = *&type;
  stringCopy = string;
  boolCopy = bool;
  idCopy = id;
  queueCopy = queue;
  completionCopy = completion;
  if (![(GEOAPServiceManager *)self usageCountCollectionIsDisabledForCurrentProcess])
  {
    proxy = self->_proxy;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__GEOAPServiceManager_reportDailyUsageCountType_usageString_usageBool_appId_queue_completion___block_invoke_2;
    v21[3] = &unk_1E7953998;
    v23 = completionCopy;
    v22 = queueCopy;
    [(GEOAPServiceProxy *)proxy reportDailyUsageCountType:v12 usageString:stringCopy usageBool:boolCopy appId:idCopy completion:v21];

    v19 = v23;
LABEL_6:

    goto LABEL_7;
  }

  if (completionCopy)
  {
    if (!queueCopy)
    {
      completionCopy[2](completionCopy);
      goto LABEL_7;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__GEOAPServiceManager_reportDailyUsageCountType_usageString_usageBool_appId_queue_completion___block_invoke;
    block[3] = &unk_1E7959360;
    v25 = completionCopy;
    dispatch_async(queueCopy, block);
    v19 = v25;
    goto LABEL_6;
  }

LABEL_7:
}

void __94__GEOAPServiceManager_reportDailyUsageCountType_usageString_usageBool_appId_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__GEOAPServiceManager_reportDailyUsageCountType_usageString_usageBool_appId_queue_completion___block_invoke_3;
      block[3] = &unk_1E7959360;
      v7 = v4;
      dispatch_async(v5, block);
    }

    else
    {
      v4[2]();
    }
  }
}

- (void)reportDailyUsageCountType:(int)type usageString:(id)string usageBool:(id)bool appId:(id)id completion:(id)completion
{
  v10 = *&type;
  stringCopy = string;
  boolCopy = bool;
  idCopy = id;
  completionCopy = completion;
  if ([(GEOAPServiceManager *)self usageCountCollectionIsDisabledForCurrentProcess])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(GEOAPServiceProxy *)self->_proxy reportDailyUsageCountType:v10 usageString:stringCopy usageBool:boolCopy appId:idCopy completion:completionCopy];
  }
}

- (void)reportDailyUsageCountType:(int)type
{
  v3 = *&type;
  v5 = GEOApplicationIdentifierOrProcessName();
  [(GEOAPServiceManager *)self reportDailyUsageCountType:v3 usageString:0 usageBool:0 appId:v5];
}

- (void)reportLogMsg:(id)msg uploadBatchId:(unint64_t)id completionQueue:(id)queue completion:(id)completion
{
  msgCopy = msg;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = dispatch_get_global_queue(21, 0);
  }

  if (GEOConfigGetBOOL())
  {
    if (completionCopy)
    {
      dispatch_async(queueCopy, completionCopy);
    }
  }

  else
  {
    proxy = self->_proxy;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__GEOAPServiceManager_reportLogMsg_uploadBatchId_completionQueue_completion___block_invoke;
    v14[3] = &unk_1E7959478;
    v16 = completionCopy;
    v15 = queueCopy;
    [(GEOAPServiceProxy *)proxy reportLogMsg:msgCopy uploadBatchId:id completion:v14];
  }
}

void __77__GEOAPServiceManager_reportLogMsg_uploadBatchId_completionQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_async(*(a1 + 32), v1);
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  v3.receiver = self;
  v3.super_class = GEOAPServiceManager;
  [(GEOAPServiceManager *)&v3 dealloc];
}

void __27__GEOAPServiceManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  geo_isolate_sync();
}

void __27__GEOAPServiceManager_init__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  geo_isolate_sync();
}

uint64_t __27__GEOAPServiceManager_init__block_invoke_4(uint64_t a1)
{
  result = GEOConfigGetBOOL();
  *(*(a1 + 32) + 10) = result;
  return result;
}

uint64_t __27__GEOAPServiceManager_init__block_invoke_2(uint64_t a1)
{
  result = GEOConfigGetBOOL();
  *(*(a1 + 32) + 8) = result;
  return result;
}

+ (void)useProxyClass:(Class)class
{
  v4 = &unk_1F2057D08;
  if (_sharedManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v10 = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Assertion failed: !_sharedManager";
      v7 = &v10;
LABEL_10:
      _os_log_fault_impl(&dword_1AB634000, v5, OS_LOG_TYPE_FAULT, v6, v7, 2u);
    }

LABEL_11:
    __break(1u);
    return;
  }

  v8 = v4;
  if (([(objc_class *)class conformsToProtocol:v4]& 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Assertion failed: [proxyClass conformsToProtocol:protocol]";
      v7 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  _proxyClass = class;
}

- (void)reportCuratedCollectionWasViewedWithId:(unint64_t)id completion:(id)completion completionQueue:(id)queue
{
  block = completion;
  queueCopy = queue;
  v7 = block;
  v8 = queueCopy;
  if (block)
  {
    if (!queueCopy)
    {
      global_queue = geo_get_global_queue();
      v7 = block;
      v8 = global_queue;
    }

    dispatch_async(v8, v7);
  }
}

- (void)updateSharedStateType:(int)type state:(id)state completion:(id)completion completionQueue:(id)queue
{
  stateCopy = state;
  completionCopy = completion;
  queueCopy = queue;
  global_queue = queueCopy;
  if (completionCopy)
  {
    if (!queueCopy)
    {
      global_queue = geo_get_global_queue();
    }

    dispatch_async(global_queue, completionCopy);
  }
}

@end