@interface SSSpringBoardUtility
+ (BOOL)_getProcessID:(int *)d forApplicationIdentifier:(id)identifier;
+ (BOOL)launchApplicationWithIdentifier:(id)identifier options:(id)options error:(id *)error;
+ (id)_applicationStateMonitor;
+ (id)_dispatchQueue;
+ (id)_dispatchQueueNotifications;
+ (id)_dispatchQueueSpringBoard;
+ (id)_getApplicationInfoForIdentifier:(id)identifier key:(id)key;
+ (id)_stateCache;
+ (void)_setApplicationState:(unsigned int)state forClientID:(id)d;
+ (void)wakeAppUsingRequest:(id)request;
@end

@implementation SSSpringBoardUtility

+ (BOOL)launchApplicationWithIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__17;
  v48 = __Block_byref_object_dispose__17;
  v49 = 0;
  v9 = dispatch_semaphore_create(0);
  v11 = SSVFrontBoardServicesFramework(v9, v10);
  v12 = [SSVWeakLinkedClassForString(&cfstr_Fbssystemservi.isa v11)];
  v38 = MEMORY[0x1E69E9820];
  v39 = 3221225472;
  v40 = __70__SSSpringBoardUtility_launchApplicationWithIdentifier_options_error___block_invoke;
  v41 = &unk_1E84ADE80;
  v43 = &v44;
  v13 = v9;
  v42 = v13;
  [v12 openApplication:identifierCopy options:optionsCopy withResult:&v38];

  v14 = dispatch_time(0, 30000000000);
  v15 = dispatch_semaphore_wait(v13, v14);
  if (v15)
  {
    v17 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v18) = [v17 shouldLog];
    shouldLogToDisk = [v17 shouldLogToDisk];
    oSLogObject = [v17 OSLogObject];
    v21 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v18) = v18 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v22 = objc_opt_class();
      v50 = 138543618;
      v51 = v22;
      v52 = 2114;
      v53 = identifierCopy;
      v23 = v22;
      v24 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, v21, 16, "%{public}@: Timed out while launching application %{public}@.", &v50, 22, v38, v39, v40, v41);

      if (!v24)
      {
LABEL_13:

        goto LABEL_14;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog(v17, @"%@", v25, v26, v27, v28, v29, v30, v21);
    }

    goto LABEL_13;
  }

LABEL_14:
  v31 = SSVFrontBoardServicesFramework(v15, v16);
  v32 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationErrorDomain", v31);
  domain = [v45[5] domain];
  v34 = [domain isEqualToString:v32];

  code = v45[5];
  if (v34)
  {
    code = [code code];
  }

  v36 = code == 0;
  if (error && code)
  {
    *error = v45[5];
  }

  _Block_object_dispose(&v44, 8);
  return v36;
}

void __70__SSSpringBoardUtility_launchApplicationWithIdentifier_options_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)wakeAppUsingRequest:(id)request
{
  requestCopy = request;
  _dispatchQueueSpringBoard = [self _dispatchQueueSpringBoard];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke;
  v7[3] = &unk_1E84ADDB8;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(_dispatchQueueSpringBoard, v7);
}

void __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = +[SSTransactionStore defaultStore];
  [v2 takeKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];

  v3 = [*(a1 + 32) appIdentifier];
  if ([*(a1 + 32) shouldLaunchApp])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = SSVFrontBoardServicesFramework(v4, v5);
    v7 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationOptionKeyActivateSuspended", v6);
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];

    v8 = [*(a1 + 32) launchOptions];
    v10 = v8;
    if (v8)
    {
      v11 = SSVFrontBoardServicesFramework(v8, v9);
      v12 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationOptionKeyPayloadOptions", v11);
      [v4 setObject:v10 forKeyedSubscript:v12];
    }

    v13 = *(a1 + 40);
    v85 = 0;
    v14 = [v13 launchApplicationWithIdentifier:v3 options:v4 error:&v85];
    v15 = v85;
    v16 = v15;
    if (v14)
    {

      goto LABEL_6;
    }

    v47 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    v48 = [v47 shouldLog];
    if ([v47 shouldLogToDisk])
    {
      LODWORD(v49) = v48 | 2;
    }

    else
    {
      LODWORD(v49) = v48;
    }

    v50 = [v47 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v49;
    }

    else
    {
      v49 &= 2u;
    }

    if (v49)
    {
      v51 = objc_opt_class();
      v86 = 138543874;
      v87 = v51;
      v88 = 2114;
      v89 = v3;
      v90 = 2114;
      v91 = *&v16;
      v52 = v51;
      v53 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &dword_1D48BA000, v50, 0, "%{public}@: Could not launch %{public}@. %{public}@", &v86, 32);

      if (!v53)
      {
LABEL_47:

        goto LABEL_48;
      }

      v50 = [MEMORY[0x1E696AEC0] stringWithCString:v53 encoding:4];
      free(v53);
      SSFileLog(v47, @"%@", v54, v55, v56, v57, v58, v59, v50);
    }

    goto LABEL_47;
  }

LABEL_6:
  v84 = 0;
  if ([*(a1 + 40) _getProcessID:&v84 forApplicationIdentifier:v3])
  {
    v17 = [*(a1 + 32) processAssertionIdentifier];
    [*(a1 + 32) processAssertionInterval];
    v19 = v18;
    v20 = [*(a1 + 32) processAssertionReason];
    v21 = v20;
    if (!v17 || !v20 || v19 <= 2.22044605e-16)
    {
      v61 = +[SSTransactionStore defaultStore];
      [v61 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];
LABEL_70:

      goto LABEL_71;
    }

    v22 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = v23 | 2;
    }

    else
    {
      LODWORD(v24) = v23;
    }

    v25 = [v22 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = objc_opt_class();
      v86 = 138544130;
      v87 = v26;
      v88 = 2114;
      v89 = v17;
      v90 = 2050;
      v91 = v19;
      v92 = 2114;
      v93 = v21;
      v27 = v26;
      v28 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_1D48BA000, v25, 1, "%{public}@: Taking process assertion %{public}@ for %{public}.2f seconds with reason %{public}@.", &v86, 42);

      if (!v28)
      {
        goto LABEL_22;
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog(v22, @"%@", v29, v30, v31, v32, v33, v34, v25);
    }

LABEL_22:
    if ([v21 isEqualToString:@"ProcessAssertionReasonBackgroundDownload"])
    {
      v35 = 10;
    }

    else if ([v21 isEqualToString:@"ProcessAssertionReasonTaskCompletion"])
    {
      v35 = 4;
    }

    else
    {
      v35 = 0;
    }

    v62 = objc_alloc(MEMORY[0x1E698D038]);
    v61 = [v62 initWithPID:v84 flags:1 reason:v35 name:v17];
    if ([v61 valid])
    {
      v63 = dispatch_time(0, (v19 * 1000000000.0));
      v64 = [*(a1 + 40) _dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke_18;
      block[3] = &unk_1E84AD6E0;
      v83 = *(a1 + 40);
      v81 = v17;
      v82 = v61;
      dispatch_after(v63, v64, block);

      v65 = v81;
LABEL_69:

      goto LABEL_70;
    }

    v66 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v66)
    {
      v66 = +[SSLogConfig sharedConfig];
    }

    v67 = [v66 shouldLog];
    if ([v66 shouldLogToDisk])
    {
      LODWORD(v68) = v67 | 2;
    }

    else
    {
      LODWORD(v68) = v67;
    }

    v69 = [v66 OSLogObject];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v68 = v68;
    }

    else
    {
      v68 &= 2u;
    }

    if (v68)
    {
      v70 = objc_opt_class();
      v86 = 138543618;
      v87 = v70;
      v88 = 2114;
      v89 = v17;
      v71 = v70;
      LODWORD(v79) = 22;
      v72 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &dword_1D48BA000, v69, 16, "%{public}@: Could not take process assertion %{public}@.", &v86, v79);

      if (!v72)
      {
LABEL_68:

        v65 = +[SSTransactionStore defaultStore];
        [v65 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];
        goto LABEL_69;
      }

      v69 = [MEMORY[0x1E696AEC0] stringWithCString:v72 encoding:4];
      free(v72);
      SSFileLog(v66, @"%@", v73, v74, v75, v76, v77, v78, v69);
    }

    goto LABEL_68;
  }

  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v36 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v37) = v36 | 2;
  }

  else
  {
    LODWORD(v37) = v36;
  }

  v10 = [v4 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v37 = v37;
  }

  else
  {
    v37 &= 2u;
  }

  if (!v37)
  {
    goto LABEL_48;
  }

  v38 = objc_opt_class();
  v86 = 138543618;
  v87 = v38;
  v88 = 2114;
  v89 = v3;
  v39 = v38;
  v40 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_1D48BA000, v10, 16, "%{public}@: No PID for app ID %{public}@.", &v86, 22);

  if (v40)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
    free(v40);
    SSFileLog(v4, @"%@", v41, v42, v43, v44, v45, v46, v10);
LABEL_48:
  }

  v60 = +[SSTransactionStore defaultStore];
  [v60 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];

LABEL_71:
}

void __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke_18(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  v17 = 138543618;
  v18 = v6;
  v19 = 2112;
  v20 = v7;
  v8 = v6;
  v9 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, v5, 1, "%{public}@: Releasing power assertion %@.", &v17, 22);

  if (v9)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v2, @"%@", v10, v11, v12, v13, v14, v15, v5);
LABEL_12:
  }

  [*(a1 + 40) invalidate];
  v16 = +[SSTransactionStore defaultStore];
  [v16 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];
}

+ (id)_applicationStateMonitor
{
  _dispatchQueueSpringBoard = [self _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(_dispatchQueueSpringBoard);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_applicationStateMonitor_onceToken != -1)
  {
    dispatch_once(&_applicationStateMonitor_onceToken, block);
  }

  v4 = _applicationStateMonitor_sApplicationStateMonitor;

  return v4;
}

void __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:0 states:0];
  v3 = _applicationStateMonitor_sApplicationStateMonitor;
  _applicationStateMonitor_sApplicationStateMonitor = v2;

  objc_initWeak(&location, *(a1 + 32));
  v4 = _applicationStateMonitor_sApplicationStateMonitor;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke_2;
  v5[3] = &unk_1E84AE568;
  objc_copyWeak(&v6, &location);
  [v4 setHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  v5 = [v4 unsignedIntValue];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];

  [WeakRetained _setApplicationState:v5 forClientID:v6];
}

+ (id)_dispatchQueue
{
  if (_dispatchQueue_onceToken != -1)
  {
    +[SSSpringBoardUtility _dispatchQueue];
  }

  v3 = _dispatchQueue_sDispatchQueue;

  return v3;
}

void __38__SSSpringBoardUtility__dispatchQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSSpringBoardUtility", 0);
  v1 = _dispatchQueue_sDispatchQueue;
  _dispatchQueue_sDispatchQueue = v0;
}

+ (id)_dispatchQueueNotifications
{
  if (_dispatchQueueNotifications_onceToken != -1)
  {
    +[SSSpringBoardUtility _dispatchQueueNotifications];
  }

  v3 = _dispatchQueueNotifications_sDispatchQueue;

  return v3;
}

void __51__SSSpringBoardUtility__dispatchQueueNotifications__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSSpringBoardUtility.Notifications", 0);
  v1 = _dispatchQueueNotifications_sDispatchQueue;
  _dispatchQueueNotifications_sDispatchQueue = v0;
}

+ (id)_dispatchQueueSpringBoard
{
  if (_dispatchQueueSpringBoard_onceToken != -1)
  {
    +[SSSpringBoardUtility _dispatchQueueSpringBoard];
  }

  v3 = _dispatchQueueSpringBoard_sDispatchQueueSpringBoard;

  return v3;
}

void __49__SSSpringBoardUtility__dispatchQueueSpringBoard__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSSpringBoardUtility.SpringBoard", 0);
  v1 = _dispatchQueueSpringBoard_sDispatchQueueSpringBoard;
  _dispatchQueueSpringBoard_sDispatchQueueSpringBoard = v0;
}

+ (id)_getApplicationInfoForIdentifier:(id)identifier key:(id)key
{
  v46 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  _dispatchQueueSpringBoard = [self _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(_dispatchQueueSpringBoard);

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__17;
  v38 = __Block_byref_object_dispose__17;
  v39 = 0;
  _applicationStateMonitor = [self _applicationStateMonitor];
  v10 = dispatch_semaphore_create(0);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__SSSpringBoardUtility__getApplicationInfoForIdentifier_key___block_invoke;
  v30[3] = &unk_1E84AE590;
  v33 = &v34;
  v11 = keyCopy;
  v31 = v11;
  v12 = v10;
  v32 = v12;
  [_applicationStateMonitor applicationInfoForApplication:identifierCopy completion:v30];
  v13 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v15) = [v14 shouldLog];
    shouldLogToDisk = [v14 shouldLogToDisk];
    oSLogObject = [v14 OSLogObject];
    v18 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v15) = v15 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = objc_opt_class();
      v40 = 138412802;
      v41 = v19;
      v42 = 2114;
      v43 = identifierCopy;
      v44 = 2114;
      v45 = v11;
      v20 = v19;
      v21 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1D48BA000, v18, 16, "%@: Timed out while getting application info. identifier = %{public}@ key = %{public}@", &v40, 32);

      if (!v21)
      {
LABEL_13:

        goto LABEL_14;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog(v14, @"%@", v22, v23, v24, v25, v26, v27, v18);
    }

    goto LABEL_13;
  }

LABEL_14:
  v28 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v28;
}

void __61__SSSpringBoardUtility__getApplicationInfoForIdentifier_key___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 objectForKey:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)_getProcessID:(int *)d forApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _dispatchQueueSpringBoard = [self _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(_dispatchQueueSpringBoard);

  v8 = [self _getApplicationInfoForIdentifier:identifierCopy key:*MEMORY[0x1E698D018]];

  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  if (d && (v9 & 1) != 0)
  {
    *d = [v8 intValue];
  }

  return v10 & 1;
}

+ (void)_setApplicationState:(unsigned int)state forClientID:(id)d
{
  dCopy = d;
  _dispatchQueueSpringBoard = [self _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(_dispatchQueueSpringBoard);

  _dispatchQueue = [self _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke;
  block[3] = &unk_1E84AE5B8;
  stateCopy = state;
  v11 = dCopy;
  selfCopy = self;
  v9 = dCopy;
  dispatch_async(_dispatchQueue, block);
}

void __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:*(a1 + 48)];
  v3 = [*(a1 + 40) _stateCache];
  [v3 setObject:v2 forKey:*(a1 + 32)];

  v4 = [*(a1 + 40) _dispatchQueueNotifications];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke_2;
  block[3] = &unk_1E84AD6E0;
  v7 = *(a1 + 32);
  v8 = v2;
  v9 = *(a1 + 40);
  v5 = v2;
  dispatch_async(v4, block);
}

void __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke_2(void *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D010];
  v6[0] = *MEMORY[0x1E698CFF8];
  v6[1] = v2;
  v3 = a1[5];
  v7[0] = a1[4];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"SSSpringBoardUtilityApplicationStateChangeNotification" object:a1[6] userInfo:v4];
}

+ (id)_stateCache
{
  if (_stateCache_onceToken != -1)
  {
    +[SSSpringBoardUtility _stateCache];
  }

  v3 = _stateCache_sStateCache;

  return v3;
}

void __35__SSSpringBoardUtility__stateCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _stateCache_sStateCache;
  _stateCache_sStateCache = v0;
}

@end