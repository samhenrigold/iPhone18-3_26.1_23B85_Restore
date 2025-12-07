@interface PRUISPosterSnapshotController
+ (id)sharedIncomingCallSnapshotController;
- (PRUISPosterSnapshotController)initWithCache:(id)cache instanceIdentifier:(id)identifier;
- (PRUISPosterSnapshotController)initWithCacheURL:(id)l;
- (PRUISPosterSnapshotController)initWithSQLiteCache:(id)cache instanceIdentifier:(id)identifier extensionProvider:(id)provider;
- (id)acquireKeepActiveAssertionForReason:(id)reason;
- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error;
- (void)executeSnapshotRequest:(id)request completion:(id)completion;
- (void)executeSnapshotRequest:(id)request completionBlock:(id)block;
@end

@implementation PRUISPosterSnapshotController

- (PRUISPosterSnapshotController)initWithCacheURL:(id)l
{
  lCopy = l;
  v5 = [[PRUISPosterSnapshotFilesystemCache alloc] initWithURL:lCopy];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v7 = [(PRUISPosterSnapshotController *)self initWithCache:v5 instanceIdentifier:uUID];

  return v7;
}

- (PRUISPosterSnapshotController)initWithCache:(id)cache instanceIdentifier:(id)identifier
{
  cacheCopy = cache;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PRUISPosterSnapshotController;
  v9 = [(PRUISPosterSnapshotController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, cache);
    underlyingCache = [cacheCopy underlyingCache];
    PRUISPosterSnapshotControllerSharedInit(v10, underlyingCache, identifierCopy, 0);
  }

  return v10;
}

- (PRUISPosterSnapshotController)initWithSQLiteCache:(id)cache instanceIdentifier:(id)identifier extensionProvider:(id)provider
{
  cacheCopy = cache;
  identifierCopy = identifier;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = PRUISPosterSnapshotController;
  v12 = [(PRUISPosterSnapshotController *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cache, cache);
    underlyingCache = [cacheCopy underlyingCache];
    PRUISPosterSnapshotControllerSharedInit(v13, underlyingCache, identifierCopy, providerCopy);
  }

  return v13;
}

- (void)executeSnapshotRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PRUISPosterSnapshotController_executeSnapshotRequest_completion___block_invoke;
  v8[3] = &unk_1E83A7128;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PRUISPosterSnapshotController *)self executeSnapshotRequest:request completionBlock:v8];
}

- (void)executeSnapshotRequest:(id)request completionBlock:(id)block
{
  v59[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  blockCopy = block;
  if (!self->_snapshotController)
  {
    v7 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A588];
    v59[0] = @"Underlying snapshot controller was nil";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.PosterBoardUIServices.PosterSnapshotControllerErrorDomain" code:2 userInfo:v8];

    v11 = PRUISLogSnapshotting(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterSnapshotController *)self executeSnapshotRequest:v9 completionBlock:v11];
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, requestCopy, 0, v9, 0);
    }
  }

  attachmentConfiguration = [requestCopy attachmentConfiguration];
  attachments = [attachmentConfiguration attachments];
  v14 = [attachments count];

  v15 = objc_opt_new();
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy_;
  v54[4] = __Block_byref_object_dispose_;
  v55 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = -10000;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v16 = dispatch_group_create();
  if (!v14)
  {
    goto LABEL_10;
  }

  attachmentConfiguration2 = [requestCopy attachmentConfiguration];
  attachmentHostWindowScene = [attachmentConfiguration2 attachmentHostWindowScene];
  v19 = v48[5];
  v48[5] = attachmentHostWindowScene;

  v20 = attachmentHostWindowScene;
  if (v20)
  {
    dispatch_group_enter(v16);
    aBlock[6] = MEMORY[0x1E69E9820];
    aBlock[7] = 3221225472;
    aBlock[8] = __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke;
    aBlock[9] = &unk_1E83A7150;
    v45 = v54;
    v41 = requestCopy;
    v42 = v20;
    v46 = v53;
    v43 = v15;
    v44 = v16;
    BSDispatchMain();

LABEL_10:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_3;
    aBlock[3] = &unk_1E83A7178;
    v21 = v14 == 0;
    aBlock[4] = v54;
    aBlock[5] = &v47;
    v22 = _Block_copy(aBlock);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_5;
    v37[3] = &unk_1E83A71A0;
    v23 = v22;
    v38 = v23;
    v39 = blockCopy;
    v24 = _Block_copy(v37);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_6;
    v32[3] = &unk_1E83A71F0;
    v33 = requestCopy;
    v34 = v15;
    v25 = v24;
    selfCopy = self;
    v36 = v25;
    v26 = _Block_copy(v32);
    v27 = v26;
    if (v21)
    {
      (*(v26 + 2))(v26);
    }

    else
    {
      snapshotWorkloop = [MEMORY[0x1E69C51F0] snapshotWorkloop];
      dispatch_group_notify(v16, snapshotWorkloop, v27);
    }

    goto LABEL_14;
  }

  if (!blockCopy)
  {
    goto LABEL_15;
  }

  v29 = MEMORY[0x1E696ABC0];
  v56 = *MEMORY[0x1E696A588];
  v57 = @"No attachment host window scene specified; abort";
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v23 = [v29 errorWithDomain:@"com.apple.PosterBoardUIServices.PosterSnapshotControllerErrorDomain" code:1 userInfo:v30];

  (*(blockCopy + 2))(blockCopy, requestCopy, 0, v23, 0);
LABEL_14:

LABEL_15:
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v54, 8);
}

void __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DDA98];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_2;
  v9[3] = &unk_1E83A7150;
  v12 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 _performBlockAfterCATransactionCommits:v9];
}

void __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) screen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  MaxX = CGRectGetMaxX(v39);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [*(a1 + 32) attachmentConfiguration];
  v16 = [v15 attachments];
  v17 = [v16 sortedArrayUsingSelector:sel_compare_];

  obj = v17;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = v7 + MaxX * 10.0;
    v32 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        v23 = [[_PRUISSecureSnapshotWindow alloc] initWithWindowScene:*(a1 + 40)];
        [(_PRUISSecureSnapshotWindow *)v23 setFrame:v20, v9, v11, v13];
        v24 = objc_opt_new();
        [(_PRUISSecureSnapshotWindow *)v23 setRootViewController:v24];

        [(_PRUISSecureSnapshotWindow *)v23 setWindowLevel:*(*(*(a1 + 72) + 8) + 24)];
        [(_PRUISSecureSnapshotWindow *)v23 setHidden:0];
        [*(*(*(a1 + 64) + 8) + 40) addObject:v23];
        v25 = [v22 view];
        [(_PRUISSecureSnapshotWindow *)v23 addSubview:v25];

        v26 = objc_alloc(MEMORY[0x1E69C5598]);
        v27 = [(_PRUISSecureSnapshotWindow *)v23 _contextId];
        v28 = [v22 view];
        v29 = [v28 layer];
        v30 = [v26 initWithContextId:v27 renderId:CALayerGetRenderId() level:{objc_msgSend(v22, "level")}];

        [*(a1 + 48) addObject:v30];
        --*(*(*(a1 + 72) + 8) + 24);

        ++v21;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  dispatch_group_leave(*(a1 + 56));
}

void __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * v6++) setHidden:{1, v11}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  (*(*(a1 + 32) + 16))();
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v13, v9, v10, v11);
  }
}

void __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_6(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 priority];
  v4 = *(a1 + 40);
  v17 = 0;
  v5 = [v2 buildPUISnapshotRequestForPriority:v3 sceneAttachments:v4 error:&v17];
  v6 = v17;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = PRUISLogSnapshotting(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 48);
      *buf = 138543874;
      v19 = v9;
      v20 = 2050;
      v21 = v10;
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}p] executing snapshot request: %{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 48);
    v12 = *(v11 + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_16;
    v13[3] = &unk_1E83A71C8;
    v13[4] = v11;
    v14 = v5;
    v16 = *(a1 + 56);
    v15 = *(a1 + 32);
    [v12 executeSnapshotRequest:v14 completion:v13];
  }
}

void __72__PRUISPosterSnapshotController_executeSnapshotRequest_completionBlock___block_invoke_16(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = PRUISLogSnapshotting(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = a1[4];
    v15 = a1[5];
    v20 = 138544386;
    v21 = v13;
    v22 = 2050;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}p] completed execution of snapshot request: %{public}@, resultError: %{public}@, cacheError: %{public}@", &v20, 0x34u);
  }

  v18 = a1 + 6;
  v16 = a1[6];
  v17 = v18[1];
  v19 = [[PRUISPosterSnapshotResult alloc] initWith_PRUISPosterSnapshotResult:v10];

  (*(v17 + 16))(v17, v16, v19, v8, v9);
}

- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error
{
  v4 = [(PRUISPosterSnapshotController *)self currentSnapshotBundleForRequest:request error:error];
  prPosterSnapshotBundle = [v4 prPosterSnapshotBundle];

  return prPosterSnapshotBundle;
}

- (id)acquireKeepActiveAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [(BSSimpleAssertion *)[PRUISPosterSnapshotControllerActiveAssertion alloc] initWithIdentifier:@"Keep Active Assertion" forReason:reasonCopy invalidationBlock:&__block_literal_global];

  return v4;
}

+ (id)sharedIncomingCallSnapshotController
{
  if (sharedIncomingCallSnapshotController___onceToken != -1)
  {
    +[PRUISPosterSnapshotController(IncomingCallAdditions) sharedIncomingCallSnapshotController];
  }

  v3 = sharedIncomingCallSnapshotController___sharedSnapshotController;

  return v3;
}

void __92__PRUISPosterSnapshotController_IncomingCallAdditions__sharedIncomingCallSnapshotController__block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DECAF000-0000-0000-0000-000000000002"];
  v0 = +[PRUISPosterSnapshotFilesystemCache incomingCallSnapshotCache];
  v1 = [[PRUISPosterSnapshotController alloc] initWithCache:v0 instanceIdentifier:v3];
  v2 = sharedIncomingCallSnapshotController___sharedSnapshotController;
  sharedIncomingCallSnapshotController___sharedSnapshotController = v1;
}

- (void)executeSnapshotRequest:(NSObject *)a3 completionBlock:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138543874;
  v9 = v7;
  v10 = 2050;
  v11 = a1;
  v12 = 2114;
  v13 = a2;
  _os_log_error_impl(&dword_1CAE63000, a3, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}p] cannot execute snapshot because underlying snapshot controller was nil: %{public}@", &v8, 0x20u);
}

@end