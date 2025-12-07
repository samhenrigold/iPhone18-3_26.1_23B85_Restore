@interface LNEmbeddedApplicationConnection
+ (NSOperationQueue)sharedOpenApplicationOperationQueue;
- (BOOL)refreshWithOptions:(id)options;
- (LNEmbeddedApplicationConnection)initWithEffectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier appIntentsEnabledOnly:(BOOL)only userIdentity:(id)identity error:(id *)error;
- (id)linkConnectionActionWithOpenApplicationIdentifier:(id)identifier connectionAction:(id)action connectionOperation:(id)operation;
- (id)optionsForAction:(id)action interactionMode:(int64_t)mode source:(unsigned __int16)source sourceOverride:(id)override assistantDismissalPolicy:(int64_t)policy;
- (void)connectWithOptions:(id)options;
- (void)enqueueOpenApplicationOperation:(id)operation;
- (void)openApplicationWithOptions:(id)options connectionAction:(id)action completionHandler:(id)handler;
- (void)resumeOpenApplicationOperationQueue;
@end

@implementation LNEmbeddedApplicationConnection

- (void)resumeOpenApplicationOperationQueue
{
  sharedOpenApplicationOperationQueue = [objc_opt_class() sharedOpenApplicationOperationQueue];
  [sharedOpenApplicationOperationQueue setSuspended:0];
}

+ (NSOperationQueue)sharedOpenApplicationOperationQueue
{
  if (sharedOpenApplicationOperationQueue_onceToken != -1)
  {
    dispatch_once(&sharedOpenApplicationOperationQueue_onceToken, &__block_literal_global_4319);
  }

  v3 = sharedOpenApplicationOperationQueue_operationQueue;

  return v3;
}

- (void)enqueueOpenApplicationOperation:(id)operation
{
  operationCopy = operation;
  if (!operationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEmbeddedApplicationConnection.m" lineNumber:467 description:{@"Invalid parameter not satisfying: %@", @"operation"}];
  }

  sharedOpenApplicationOperationQueue = [objc_opt_class() sharedOpenApplicationOperationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__LNEmbeddedApplicationConnection_enqueueOpenApplicationOperation___block_invoke;
  v9[3] = &unk_1E74B1930;
  v9[4] = self;
  v10 = operationCopy;
  v7 = operationCopy;
  [sharedOpenApplicationOperationQueue addOperationWithBlock:v9];
  [sharedOpenApplicationOperationQueue setSuspended:1];
}

void __67__LNEmbeddedApplicationConnection_enqueueOpenApplicationOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_async(v2, *(a1 + 40));
}

- (id)linkConnectionActionWithOpenApplicationIdentifier:(id)identifier connectionAction:(id)action connectionOperation:(id)operation
{
  identifierCopy = identifier;
  actionCopy = action;
  operationCopy = operation;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v11 = getUILinkConnectionActionClass_softClass;
  v30 = getUILinkConnectionActionClass_softClass;
  if (!getUILinkConnectionActionClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getUILinkConnectionActionClass_block_invoke;
    v26[3] = &unk_1E74B26D0;
    v26[4] = &v27;
    __getUILinkConnectionActionClass_block_invoke(v26);
    v11 = v28[3];
  }

  v12 = v11;
  _Block_object_dispose(&v27, 8);
  v13 = [v11 instancesRespondToSelector:sel_initWithAction_responseQueue_responseHandler_];
  v14 = [v11 alloc];
  if (v13)
  {
    queue = [(LNConnection *)self queue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke;
    v23[3] = &unk_1E74B0FB8;
    v23[4] = self;
    v24 = identifierCopy;
    v25 = operationCopy;
    v16 = operationCopy;
    v17 = identifierCopy;
    v18 = [v14 initWithAction:actionCopy responseQueue:queue responseHandler:v23];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke_65;
    v20[3] = &unk_1E74B0FB8;
    v20[4] = self;
    v21 = identifierCopy;
    v22 = operationCopy;
    v17 = operationCopy;
    queue = identifierCopy;
    v18 = [v14 initWithAction:actionCopy responseHandler:v20];
  }

  return v18;
}

void __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &v8);

  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) logPrefix];
    v7 = *(a1 + 40);
    *buf = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Received UILinkConnectionActionResponse callback on the response queue with action response: %{public}@", buf, 0x20u);
  }

  [*(a1 + 48) finishWithActionResponse:v3 error:0];
  os_activity_scope_leave(&v8);
}

void __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke_65(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &state);

  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) logPrefix];
    v7 = *(a1 + 40);
    *buf = 138543874;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Received UILinkConnectionActionResponse callback with action response: %{public}@", buf, 0x20u);
  }

  v8 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __122__LNEmbeddedApplicationConnection_linkConnectionActionWithOpenApplicationIdentifier_connectionAction_connectionOperation___block_invoke_66;
  v10[3] = &unk_1E74B27A0;
  v11 = *(a1 + 48);
  v12 = v3;
  v9 = v3;
  dispatch_async(v8, v10);

  os_activity_scope_leave(&state);
}

- (void)openApplicationWithOptions:(id)options connectionAction:(id)action completionHandler:(id)handler
{
  v98 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  actionCopy = action;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEmbeddedApplicationConnection.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v12 stringWithFormat:@"Open App Request ID: %@", uUID];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke;
  aBlock[3] = &unk_1E74B0F18;
  aBlock[4] = self;
  v15 = v14;
  v88 = v15;
  v16 = handlerCopy;
  v89 = v16;
  v17 = _Block_copy(aBlock);
  v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([optionsCopy sceneless])
  {
    v18 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleIdentifier = [(LNConnection *)self bundleIdentifier];
    v86 = 0;
    allObjects = [v18 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v86];
    v21 = v86;

    if (v21)
    {
      v17[2](v17, 0, v21);
LABEL_11:

      v27 = actionCopy;
      goto LABEL_54;
    }

    preflightManager = [(LNEmbeddedApplicationConnection *)self preflightManager];
    v25 = [preflightManager requiresPreflightForApplicationRecord:allObjects];

    if (v25)
    {
      v26 = LNConnectionErrorWithCode(1700);
      v17[2](v17, 0, v26);

      goto LABEL_11;
    }

    v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(allObjects, "supportsMultiwindow")}];
    [v75 setObject:v45 forKeyedSubscript:*MEMORY[0x1E69D4460]];

    goto LABEL_29;
  }

  actionSource = [optionsCopy actionSource];
  if (actionSource == 7)
  {
    v23 = MEMORY[0x1E69D4438];
  }

  else
  {
    if (actionSource != 6)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x1E69D4428];
  }

  [v75 setObject:*v23 forKeyedSubscript:*MEMORY[0x1E699F940]];
LABEL_14:
  if (([optionsCopy activateSuspended] & 1) == 0)
  {
    v70 = v16;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    executors = [(LNConnection *)self executors];
    keyEnumerator = [executors keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    v30 = [allObjects countByEnumeratingWithState:&v82 objects:v97 count:16];
    if (v30)
    {
      v31 = v30;
      v71 = v17;
      selfCopy = self;
      v69 = v15;
      v33 = *v83;
      v74 = *MEMORY[0x1E69D4440];
      v73 = *MEMORY[0x1E699F940];
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v83 != v33)
          {
            objc_enumerationMutation(allObjects);
          }

          v35 = *(*(&v82 + 1) + 8 * i);
          executors2 = [(LNConnection *)selfCopy executors];
          v37 = [executors2 objectForKey:v35];

          delegate = [v37 delegate];
          v39 = objc_opt_respondsToSelector();

          if (v39)
          {
            delegate2 = [v37 delegate];
            v41 = [delegate2 progressIsPersistentInSystemApertureForExecutor:v37];

            if (v41)
            {
              [v75 setObject:v74 forKeyedSubscript:v73];
            }
          }

          delegate3 = [v37 delegate];
          v43 = objc_opt_respondsToSelector();

          if (v43)
          {
            delegate4 = [v37 delegate];
            [delegate4 executorWillLaunchApplicationInForeground:v37];
          }
        }

        v31 = [allObjects countByEnumeratingWithState:&v82 objects:v97 count:16];
      }

      while (v31);
      v15 = v69;
      v16 = v70;
      v17 = v71;
      self = selfCopy;
    }

LABEL_29:
  }

  if ([optionsCopy actionSource] != 8 && objc_msgSend(optionsCopy, "actionSource") != 6)
  {
    [v75 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69D4450]];
  }

  if ([optionsCopy isCameraCaptureAction])
  {
    [v75 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69D4450]];
  }

  assistantDismissalPolicy = [optionsCopy assistantDismissalPolicy];
  if (assistantDismissalPolicy == 1)
  {
    v47 = MEMORY[0x1E695E118];
    goto LABEL_39;
  }

  if (assistantDismissalPolicy == 2)
  {
    v47 = MEMORY[0x1E695E110];
LABEL_39:
    [v75 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69D4450]];
  }

  v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "activateSuspended")}];
  [v75 setObject:v48 forKeyedSubscript:*MEMORY[0x1E699F8E8]];

  v49 = MEMORY[0x1E695E118];
  [v75 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F990]];
  [v75 setObject:v49 forKeyedSubscript:*MEMORY[0x1E699F970]];
  if ([optionsCopy sceneless])
  {
    v50 = &unk_1F0BD7168;
  }

  else
  {
    v50 = &unk_1F0BD7180;
  }

  [v75 setObject:v50 forKeyedSubscript:*MEMORY[0x1E699F930]];
  if ([optionsCopy isCameraCaptureAction])
  {
    [v75 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"__LaunchCameraCapture"];
  }

  v51 = [LNOpenApplicationConnectionOperation alloc];
  openApplicationPriority = [optionsCopy openApplicationPriority];
  queue2 = [(LNConnection *)self queue];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_55;
  v80[3] = &unk_1E74B0F40;
  v80[4] = self;
  v81 = v17;
  v54 = [(LNOpenApplicationConnectionOperation *)v51 initWithPriority:openApplicationPriority queue:queue2 completionHandler:v80];

  if (actionCopy)
  {
    v55 = [(LNEmbeddedApplicationConnection *)self linkConnectionActionWithOpenApplicationIdentifier:v15 connectionAction:actionCopy connectionOperation:v54];
    v96 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
    [v75 setObject:v56 forKeyedSubscript:*MEMORY[0x1E699F8D0]];
  }

  actionSourceOverride = [optionsCopy actionSourceOverride];

  if (actionSourceOverride)
  {
    v58 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      actionSourceOverride2 = [optionsCopy actionSourceOverride];
      *buf = 138543874;
      v91 = logPrefix;
      v92 = 2114;
      selfCopy2 = self;
      v94 = 2114;
      v95 = actionSourceOverride2;
      _os_log_impl(&dword_19763D000, v58, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Overriding launch origin: %{public}@", buf, 0x20u);
    }

    actionSourceOverride3 = [optionsCopy actionSourceOverride];
    [v75 setObject:actionSourceOverride3 forKeyedSubscript:*MEMORY[0x1E699F940]];
  }

  v62 = [MEMORY[0x1E699FB70] optionsWithDictionary:v75];
  v63 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    logPrefix2 = [(LNConnection *)self logPrefix];
    *buf = 138543874;
    v91 = logPrefix2;
    v92 = 2114;
    selfCopy2 = v15;
    v94 = 2114;
    v95 = v75;
    _os_log_impl(&dword_19763D000, v63, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Opening app using FBSOpenApplicationService with options: %{public}@", buf, 0x20u);
  }

  openApplicationService = [(LNEmbeddedApplicationConnection *)self openApplicationService];
  bundleIdentifier2 = [(LNConnection *)self bundleIdentifier];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_58;
  v76[3] = &unk_1E74B0F90;
  v76[4] = self;
  v77 = v15;
  v78 = v54;
  v27 = actionCopy;
  v79 = actionCopy;
  v67 = v54;
  [openApplicationService openApplication:bundleIdentifier2 withOptions:v62 completion:v76];

LABEL_54:
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) logPrefix];
      v9 = *(a1 + 40);
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v5;
      v10 = "%{public}@ %{public}@ completed with response: %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
LABEL_7:
      v15 = 32;
LABEL_8:
      _os_log_impl(&dword_19763D000, v11, v12, v10, &v18, v15);
    }
  }

  else
  {
    v13 = getLNLogCategoryConnection();
    v7 = v13;
    if (!v6)
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      v8 = [*(a1 + 32) logPrefix];
      v17 = *(a1 + 40);
      v18 = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v17;
      v10 = "%{public}@ %{public}@ completed with no response and no error";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
      v15 = 22;
      goto LABEL_8;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logPrefix];
      v14 = *(a1 + 40);
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v6;
      v10 = "%{public}@ %{public}@ completed with error: %{public}@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

LABEL_9:

  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v16);
  [*(a1 + 32) resumeOpenApplicationOperationQueue];
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_2;
  block[3] = &unk_1E74B2580;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_58(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = [a1[4] activity];
  os_activity_scope_enter(v7, &state);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_2_59;
  v15[3] = &unk_1E74B0F68;
  v15[4] = a1[4];
  v8 = v6;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[7];
  v10 = _Block_copy(v15);
  v10[2](v10, v11, v12, v13, v14);

  os_activity_scope_leave(&state);
}

void __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_2_59(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_3;
  block[3] = &unk_1E74B0F68;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  v12 = a1[8];
  v13 = a1[9];
  dispatch_async(v2, block);
}

uint64_t __97__LNEmbeddedApplicationConnection_openApplicationWithOptions_connectionAction_completionHandler___block_invoke_3(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 48) logPrefix];
      v4 = *(a1 + 56);
      v5 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v3;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      *&buf[24] = v5;
      _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Failed to open app with error: %{public}@", buf, 0x20u);
    }

    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    return [v6 finishWithActionResponse:0 error:v7];
  }

  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 48) logPrefix];
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    *&buf[24] = v12;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Successfully opened app with process handle %{public}@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 48) logPrefix];
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      *&buf[22] = 2114;
      *&buf[24] = v16;
      v17 = "%{public}@ [%{public}@]: OneShot actions don't need to wait for a response, finishing %{public}@";
      v18 = v13;
      v19 = 32;
LABEL_20:
      _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v20 = *(a1 + 72);
  v13 = getLNLogCategoryConnection();
  v21 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!v20)
  {
    if (v21)
    {
      v14 = [*(a1 + 48) logPrefix];
      v27 = *(a1 + 56);
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      v17 = "%{public}@ [%{public}@]: Completing with nil response because connection action wasn't provided";
      v18 = v13;
      v19 = 22;
      goto LABEL_20;
    }

LABEL_21:

    v6 = *(a1 + 64);
    v7 = 0;
    return [v6 finishWithActionResponse:0 error:v7];
  }

  if (v21)
  {
    v22 = [*(a1 + 48) logPrefix];
    v23 = *(a1 + 56);
    v24 = *(a1 + 72);
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 2114;
    *&buf[14] = v23;
    *&buf[22] = 2114;
    *&buf[24] = v24;
    _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Completion will be handled by UILinkConnectionActionResponse to UILinkConnectionAction(%{public}@)", buf, 0x20u);
  }

  v25 = objc_msgSend_auditToken(*(a1 + 40));
  v26 = v25;
  if (v25)
  {
    objc_msgSend_realToken(v25);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v28 = *(a1 + 48);
  *buf = v33;
  *&buf[16] = v34;
  [v28 setAuditToken:{buf, v33, v34}];

  v29 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [*(a1 + 48) logPrefix];
    v31 = *(a1 + 56);
    v32 = *(a1 + 64);
    *buf = 138543874;
    *&buf[4] = v30;
    *&buf[12] = 2114;
    *&buf[14] = v31;
    *&buf[22] = 2114;
    *&buf[24] = v32;
    _os_log_impl(&dword_19763D000, v29, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Enqueuing %{public}@ in order to acquire an assertion", buf, 0x20u);
  }

  return [*(a1 + 48) enqueueConnectionOperation:*(a1 + 64)];
}

- (id)optionsForAction:(id)action interactionMode:(int64_t)mode source:(unsigned __int16)source sourceOverride:(id)override assistantDismissalPolicy:(int64_t)policy
{
  sourceCopy = source;
  v38 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v33.receiver = self;
  v33.super_class = LNEmbeddedApplicationConnection;
  overrideCopy = override;
  v14 = [(LNConnection *)&v33 optionsForAction:actionCopy interactionMode:mode source:sourceCopy sourceOverride:overrideCopy assistantDismissalPolicy:policy];
  presentationStyle = [actionCopy presentationStyle];
  if ((presentationStyle - 1) < 2)
  {
    v16 = 2;
LABEL_3:
    [v14 setOpenApplicationPriority:v16];
    goto LABEL_7;
  }

  if (!presentationStyle)
  {
    [v14 setOpenApplicationPriority:1];
    systemProtocols = [actionCopy systemProtocols];
    pushToTalkTransmissionProtocol = [MEMORY[0x1E69ACA48] pushToTalkTransmissionProtocol];
    v19 = [systemProtocols containsObject:pushToTalkTransmissionProtocol];

    if (v19)
    {
      v16 = 3;
      goto LABEL_3;
    }
  }

LABEL_7:
  v20 = MEMORY[0x1E6963620];
  bundleIdentifier = [(LNConnection *)self bundleIdentifier];
  LODWORD(v20) = [v20 bundleLinkedOnOrAfter2025:bundleIdentifier];

  if (v20)
  {
    v22 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      *buf = 138543362;
      v35 = logPrefix;
      _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_INFO, "%{public}@ App linked on-or-after 2025, always launching sceneless", buf, 0xCu);
    }

    [v14 setSceneless:1];
  }

  else
  {
    presentationStyle2 = [actionCopy presentationStyle];
    if (presentationStyle2 <= 2)
    {
      [v14 setSceneless:1u >> (presentationStyle2 & 7)];
    }

    v25 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      logPrefix2 = [(LNConnection *)self logPrefix];
      sceneless = [v14 sceneless];
      v28 = @"NO";
      if (sceneless)
      {
        v28 = @"YES";
      }

      *buf = 138543618;
      v35 = logPrefix2;
      v36 = 2114;
      v37 = v28;
      _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_INFO, "%{public}@ App linked before 2025, sceneless = %{public}@", buf, 0x16u);
    }
  }

  if (sourceCopy == 3)
  {
    [v14 setAllowsForegroundAppLaunchWhileInCarPlay:0];
  }

  systemProtocols2 = [actionCopy systemProtocols];
  cameraCaptureProtocol = [MEMORY[0x1E69ACA48] cameraCaptureProtocol];
  v31 = [systemProtocols2 containsObject:cameraCaptureProtocol];

  if (v31)
  {
    [v14 setIsCameraCaptureAction:1];
  }

  [v14 setActionSource:sourceCopy];
  [v14 setActionSourceOverride:overrideCopy];

  [v14 setAssistantDismissalPolicy:policy];

  return v14;
}

- (BOOL)refreshWithOptions:(id)options
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = LNEmbeddedApplicationConnection;
  v5 = [(LNConnection *)&v16 refreshWithOptions:optionsCopy];
  if (v5)
  {
    queue = [(LNConnection *)self queue];
    dispatch_assert_queue_V2(queue);

    v7 = optionsCopy;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(LNConnection *)self logPrefix];
      *buf = 138543618;
      v18 = logPrefix;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "%{public}@ refreshWithOptions: %{public}@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke;
    v14[3] = &unk_1E74B27A0;
    v14[4] = self;
    v15 = v9;
    v12 = v9;
    [(LNEmbeddedApplicationConnection *)self enqueueOpenApplicationOperation:v14];
  }

  return v5;
}

uint64_t __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_2;
  v4[3] = &unk_1E74B0EC8;
  v4[4] = v2;
  return [v2 openApplicationWithOptions:v1 connectionAction:0 completionHandler:v4];
}

void __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) state] == 2)
  {
    if (v6)
    {
      [*(a1 + 32) setDisconnectedWithError:v6];
    }

    else
    {
      objc_initWeak(location, *(a1 + 32));
      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_14;
      v13[3] = &unk_1E74B0EF0;
      objc_copyWeak(&v15, location);
      v14 = 0;
      [v11 setUpConnectionContextWithCompletionHandler:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v7 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logPrefix];
      v9 = [*(a1 + 32) state];
      if ((v9 - 1) > 2)
      {
        v10 = @"Not Connected";
      }

      else
      {
        v10 = off_1E74B24A0[v9 - 1];
      }

      v12 = v10;
      *location = 138543618;
      *&location[4] = v8;
      v17 = 2114;
      v18 = v12;
    }
  }
}

void __54__LNEmbeddedApplicationConnection_refreshWithOptions___block_invoke_14(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Failed to set connection context: %@", &v8, 0xCu);
    }

    v7 = [v5 xpcConnection];
    [v7 invalidate];

    [v5 setDisconnectedWithError:*(a1 + 32)];
  }

  else
  {
    [WeakRetained setConnected];
  }
}

- (void)connectWithOptions:(id)options
{
  v18 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = LNEmbeddedApplicationConnection;
  [(LNConnection *)&v13 connectWithOptions:optionsCopy];
  queue = [(LNConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = optionsCopy;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    logPrefix = [(LNConnection *)self logPrefix];
    *buf = 138543618;
    v15 = logPrefix;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_INFO, "%{public}@ connectWithOptions: %{public}@", buf, 0x16u);
  }

  if (![(LNConnection *)self connectUsingProcessIdentifierWithOptions:v6])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke;
    v11[3] = &unk_1E74B27A0;
    v11[4] = self;
    v12 = v8;
    [(LNEmbeddedApplicationConnection *)self enqueueOpenApplicationOperation:v11];
  }
}

void __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 newConnectionAction];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke_2;
  v5[3] = &unk_1E74B0EC8;
  v5[4] = *(a1 + 32);
  [v2 openApplicationWithOptions:v3 connectionAction:v4 completionHandler:v5];
}

void __54__LNEmbeddedApplicationConnection_connectWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) state] == 1)
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 handleConnectionActionResponse:v5];
    }

    else
    {
      [v7 setDisconnectedWithError:v6];
    }
  }

  else
  {
    v8 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) logPrefix];
      v10 = [*(a1 + 32) state];
      if ((v10 - 1) > 2)
      {
        v11 = @"Not Connected";
      }

      else
      {
        v11 = off_1E74B24A0[v10 - 1];
      }

      v12 = v11;
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v12;
    }
  }
}

- (LNEmbeddedApplicationConnection)initWithEffectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier appIntentsEnabledOnly:(BOOL)only userIdentity:(id)identity error:(id *)error
{
  onlyCopy = only;
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  identityCopy = identity;
  v30.receiver = self;
  v30.super_class = LNEmbeddedApplicationConnection;
  v18 = [(LNApplicationConnection *)&v30 initWithEffectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy appIntentsEnabledOnly:onlyCopy userIdentity:identityCopy error:error];
  if (v18)
  {
    serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
    openApplicationService = v18->_openApplicationService;
    v18->_openApplicationService = serviceWithDefaultShellEndpoint;

    if (!v18->_openApplicationService)
    {
      v21 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        logPrefix = [(LNConnection *)v18 logPrefix];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = logPrefix;
        _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_ERROR, "%{public}@ openApplicationService failed to initialize", &buf, 0xCu);
      }
    }

    v23 = dispatch_get_global_queue(17, 0);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v24 = getPDCPreflightManagerClass_softClass;
    v34 = getPDCPreflightManagerClass_softClass;
    if (!getPDCPreflightManagerClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v36 = __getPDCPreflightManagerClass_block_invoke;
      v37 = &unk_1E74B26D0;
      v38 = &v31;
      __getPDCPreflightManagerClass_block_invoke(&buf);
      v24 = v32[3];
    }

    v25 = v24;
    _Block_object_dispose(&v31, 8);
    v26 = [[v24 alloc] initWithTargetQueue:v23];
    preflightManager = v18->_preflightManager;
    v18->_preflightManager = v26;

    v28 = v18;
  }

  return v18;
}

uint64_t __70__LNEmbeddedApplicationConnection_sharedOpenApplicationOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedOpenApplicationOperationQueue_operationQueue;
  sharedOpenApplicationOperationQueue_operationQueue = v0;

  v2 = sharedOpenApplicationOperationQueue_operationQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

@end