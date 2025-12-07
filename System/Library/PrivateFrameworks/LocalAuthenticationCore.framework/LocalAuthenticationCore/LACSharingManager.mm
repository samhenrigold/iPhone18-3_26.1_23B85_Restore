@interface LACSharingManager
+ (BOOL)isSharingError:(id)error;
- (LACSharingManager)initWithReplyQueue:(id)queue;
- (LACSharingManagerDelegate)delegate;
- (id)_authenticationBackgroundTaskForRequest:(id)request;
- (id)_canAuthenticateBackgroundTaskWithCompanion:(int64_t)companion;
- (id)authenticateWithRequest:(id)request;
- (id)getPairedDevicesBackgroundTaskForCompanion:(int64_t)companion;
- (unint64_t)_authenticationTypeForCompanion:(int64_t)companion;
- (unint64_t)_pairedDeviceTypeForCompanion:(int64_t)companion;
- (void)_authenticateWithRequest:(id)request completion:(id)completion;
- (void)_canAuthenticateWithCompanion:(int64_t)companion completion:(id)completion;
- (void)_failSessionWithID:(id)d error:(id)error;
- (void)_pairedDevicesForCompanion:(int64_t)companion completion:(id)completion;
- (void)_runPairedDevicesBackgroundTaskForCompanion:(int64_t)companion completion:(id)completion;
- (void)canAuthenticateWithCompanion:(int64_t)companion completion:(id)completion;
- (void)cancelSessionWithID:(id)d;
- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d;
- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error;
- (void)manager:(id)manager didStartAuthenticationForSessionWithID:(id)d;
- (void)pairedDevicesForCompanion:(int64_t)companion completion:(id)completion;
@end

@implementation LACSharingManager

- (LACSharingManager)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = LACSharingManager;
  v6 = [(LACSharingManager *)&v17 init];
  if (v6)
  {
    if (getSFAuthenticationManagerClass())
    {
      v7 = [objc_alloc(getSFAuthenticationManagerClass()) initWithQueue:queueCopy];
      sharingManager = v6->_sharingManager;
      v6->_sharingManager = v7;

      [(SFAuthenticationManager *)v6->_sharingManager setDelegate:v6];
    }

    else
    {
      v9 = v6->_sharingManager;
      v6->_sharingManager = 0;
    }

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    canAuthenticateSessions = v6->_canAuthenticateSessions;
    v6->_canAuthenticateSessions = strongToStrongObjectsMapTable;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v13];
    workQueue = v6->_workQueue;
    v6->_workQueue = v14;

    objc_storeStrong(&v6->_replyQueue, queue);
  }

  return v6;
}

- (id)authenticateWithRequest:(id)request
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = LACLogABM(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientInfo = [requestCopy clientInfo];
    bundleId = [clientInfo bundleId];
    clientInfo2 = [requestCopy clientInfo];
    displayName = [clientInfo2 displayName];
    v10 = NSStringFromLACCompanionType([requestCopy companionType]);
    v25 = 138543874;
    v26 = bundleId;
    v27 = 2114;
    v28 = displayName;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Initiating companion authentication for bundleID: %{public}@ app name: %{public}@ companion:%{public}@", &v25, 0x20u);
  }

  v11 = [(LACSharingManager *)self _authenticationBackgroundTaskForRequest:requestCopy];
  v12 = [v11 runSynchronouslyWithTimeout:1.0];
  v13 = LACLogABM(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    clientInfo3 = [requestCopy clientInfo];
    bundleId2 = [clientInfo3 bundleId];
    clientInfo4 = [requestCopy clientInfo];
    displayName2 = [clientInfo4 displayName];
    v18 = NSStringFromLACCompanionType([requestCopy companionType]);
    v25 = 138544130;
    v26 = bundleId2;
    v27 = 2114;
    v28 = displayName2;
    v29 = 2114;
    v30 = v18;
    v31 = 2114;
    v32 = v12;
    _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "Authentication for bundleID: %{public}@ app name: %{public}@ companion:%{public}@ returned: %{public}@", &v25, 0x2Au);
  }

  value = [v12 value];
  error = [v12 error];

  if (error || !value)
  {
    v21 = objc_opt_new();
    error2 = [v12 error];
    v23 = [LACError errorWithCode:-1 underlyingError:error2];

    [(LACSharingManager *)self _failSessionWithID:v21 error:v23];
  }

  else
  {
    v21 = value;
  }

  return v21;
}

- (void)canAuthenticateWithCompanion:(int64_t)companion completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = LACLogABM(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACCompanionType(companion);
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Initiating canAuthenticate call for companion:%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(LACSharingManager *)self _canAuthenticateBackgroundTaskWithCompanion:companion];
  replyQueue = self->_replyQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__LACSharingManager_canAuthenticateWithCompanion_completion___block_invoke;
  v13[3] = &unk_1E7A960D0;
  objc_copyWeak(v16, buf);
  v16[1] = companion;
  v11 = completionCopy;
  v15 = v11;
  v12 = v9;
  v14 = v12;
  [v12 runWithTimeout:replyQueue queue:v13 completion:0.1];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

void __61__LACSharingManager_canAuthenticateWithCompanion_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = LACLogABM(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromLACCompanionType(*(a1 + 56));
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "CanAuthenticate for companion:%{public}@ returned: %{public}@", &v10, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = [v3 value];
    (*(v8 + 16))(v8, [v9 BOOLValue]);
  }
}

- (void)cancelSessionWithID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = LACLogABM(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = dCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Canceling authentication for sessionID: %{public}@", buf, 0xCu);
  }

  if (self->_sharingManager)
  {
    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__LACSharingManager_cancelSessionWithID___block_invoke;
    v8[3] = &unk_1E7A95F68;
    objc_copyWeak(&v10, buf);
    v9 = dCopy;
    dispatch_async(workQueue, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = [LACError errorWithCode:-4];
    [(LACSharingManager *)self _failSessionWithID:dCopy error:v7];
  }
}

void __41__LACSharingManager_cancelSessionWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] cancelAuthenticationSessionWithID:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)pairedDevicesForCompanion:(int64_t)companion completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = LACLogABM(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACCompanionType(companion);
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Fetching paired devices for companion:%{public}@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__LACSharingManager_pairedDevicesForCompanion_completion___block_invoke;
  v10[3] = &unk_1E7A960F8;
  v11 = completionCopy;
  companionCopy = companion;
  v9 = completionCopy;
  [(LACSharingManager *)self _runPairedDevicesBackgroundTaskForCompanion:companion completion:v10];
}

void __58__LACSharingManager_pairedDevicesForCompanion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogABM(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACCompanionType(*(a1 + 40));
    v9 = v8;
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Paired devices for companion:%{public}@ returned: %@", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)isSharingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getSFAuthenticationErrorCodeDomainSymbolLoc_ptr;
  v14 = getSFAuthenticationErrorCodeDomainSymbolLoc_ptr;
  if (!getSFAuthenticationErrorCodeDomainSymbolLoc_ptr)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSFAuthenticationErrorCodeDomainSymbolLoc_block_invoke;
    v10[3] = &unk_1E7A955D8;
    v10[4] = &v11;
    __getSFAuthenticationErrorCodeDomainSymbolLoc_block_invoke(v10);
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
    +[LACSharingManager isSharingError:];
    v9 = v8;
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v9);
  }

  v6 = [domain isEqualToString:*v5];

  return v6;
}

- (void)manager:(id)manager didStartAuthenticationForSessionWithID:(id)d
{
  dCopy = d;
  v5 = [(NSMapTable *)self->_canAuthenticateSessions objectForKey:?];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained manager:self didStartSessionWithID:dCopy];
  }
}

- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [(NSMapTable *)self->_canAuthenticateSessions objectForKey:dCopy];
  if (v6)
  {
    v7 = LACLogABM([(NSMapTable *)self->_canAuthenticateSessions removeObjectForKey:dCopy]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_INFO, "Can authenticate success for sessionID:%{public}@", &v11, 0xCu);
    }

    v8 = [LACBackgroundTaskResult alloc];
    v9 = [(LACBackgroundTaskResult *)v8 initWithValue:MEMORY[0x1E695E118]];
    (v6)[2](v6, v9);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained manager:self didCompleteSessionWithID:dCopy];
  }
}

- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  v9 = [(NSMapTable *)self->_canAuthenticateSessions objectForKey:dCopy];
  if (v9)
  {
    v10 = LACLogABM([(NSMapTable *)self->_canAuthenticateSessions removeObjectForKey:dCopy]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138543618;
      v14 = dCopy;
      v15 = 2114;
      v16 = errorCopy;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_INFO, "Can authenticate failure for sessionID:%{public}@ error:%{public}@", &v13, 0x16u);
    }

    v11 = [[LACBackgroundTaskResult alloc] initWithError:errorCopy];
    (v9)[2](v9, v11);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    [WeakRetained manager:self didFailSessionWithID:dCopy error:errorCopy];
  }
}

- (id)getPairedDevicesBackgroundTaskForCompanion:(int64_t)companion
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromLACCompanionType(companion);
  v6 = [v4 stringWithFormat:@"PairedDeviceStateQuery-%@", v5];

  v7 = [LACBackgroundTask alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke;
  v10[3] = &unk_1E7A96148;
  objc_copyWeak(v11, &location);
  v11[1] = companion;
  v8 = [(LACBackgroundTask *)v7 initWithIdentifier:v6 worker:v10];
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);

  return v8;
}

void __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke_2;
    v6[3] = &unk_1E7A96120;
    v7 = v3;
    [WeakRetained _pairedDevicesForCompanion:v5 completion:v6];
  }
}

void __64__LACSharingManager_getPairedDevicesBackgroundTaskForCompanion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [LACBackgroundTaskResult alloc];
  if (v5)
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithError:v5];
  }

  else
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithValue:v10];
  }

  v9 = v8;
  (*(v6 + 16))(v6, v8);
}

- (void)_runPairedDevicesBackgroundTaskForCompanion:(int64_t)companion completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v8 = LACLogABM(inited);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2048;
    v21 = 0x3FD3333333333333;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform query with %.2f sec timeout", buf, 0x16u);
  }

  v9 = [(LACSharingManager *)self getPairedDevicesBackgroundTaskForCompanion:companion];
  replyQueue = self->_replyQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__LACSharingManager__runPairedDevicesBackgroundTaskForCompanion_completion___block_invoke;
  v13[3] = &unk_1E7A958F8;
  objc_copyWeak(&v16, &location);
  v11 = completionCopy;
  v15 = v11;
  v12 = v9;
  v14 = v12;
  [v12 runWithTimeout:replyQueue queue:v13 completion:0.3];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__LACSharingManager__runPairedDevicesBackgroundTaskForCompanion_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = [v7 value];
    v6 = [v7 error];
    (*(v4 + 16))(v4, v5, v6);
  }
}

- (void)_pairedDevicesForCompanion:(int64_t)companion completion:(id)completion
{
  completionCopy = completion;
  if (!self->_sharingManager)
  {
    goto LABEL_6;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = getSFAuthenticationDeviceClass_softClass;
  v22 = getSFAuthenticationDeviceClass_softClass;
  if (!getSFAuthenticationDeviceClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSFAuthenticationDeviceClass_block_invoke;
    v17 = &unk_1E7A955D8;
    v18 = &v19;
    SharingLibraryCore(0);
    v20[3] = objc_getClass("SFAuthenticationDevice");
    getSFAuthenticationDeviceClass_softClass = *(v18[1] + 24);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  if (v7)
  {
    v9 = [(LACSharingManager *)self _pairedDeviceTypeForCompanion:companion];
    sharingManager = self->_sharingManager;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__LACSharingManager__pairedDevicesForCompanion_completion___block_invoke;
    v12[3] = &unk_1E7A96170;
    v13 = completionCopy;
    [(SFAuthenticationManager *)sharingManager listCandidateDevicesForType:v9 completionHandler:v12];
    v11 = v13;
  }

  else
  {
LABEL_6:
    v11 = [LACError errorWithCode:-1 debugDescription:@"Authenticator not available"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __59__LACSharingManager__pairedDevicesForCompanion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogABM(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Listing eligible devices returned: %@", buf, 0xCu);
  }

  v9 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v15 enabledAsKey])
        {
          v16 = [v15 uniqueID];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_authenticationBackgroundTaskForRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromLACCompanionType([requestCopy companionType]);
  clientInfo = [requestCopy clientInfo];
  v8 = [v5 stringWithFormat:@"CompanionAuthentication-%@-%@", v6, clientInfo];

  v9 = [LACBackgroundTask alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke;
  v13[3] = &unk_1E7A95948;
  objc_copyWeak(&v15, &location);
  v10 = requestCopy;
  v14 = v10;
  v11 = [(LACBackgroundTask *)v9 initWithIdentifier:v8 worker:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke_2;
    v6[3] = &unk_1E7A96198;
    v7 = v3;
    [WeakRetained _authenticateWithRequest:v5 completion:v6];
  }
}

void __61__LACSharingManager__authenticationBackgroundTaskForRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [LACBackgroundTaskResult alloc];
  if (v5)
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithError:v5];
  }

  else
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithValue:v10];
  }

  v9 = v8;
  (*(v6 + 16))(v6, v8);
}

- (void)_authenticateWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (self->_sharingManager && getSFAuthenticationOptionsClass())
  {
    v7 = objc_alloc_init(getSFAuthenticationOptionsClass());
    acmContextData = [requestCopy acmContextData];
    [v7 setAcmContext:acmContextData];

    clientInfo = [requestCopy clientInfo];
    bundleId = [clientInfo bundleId];
    v11 = bundleId;
    if (bundleId)
    {
      v12 = bundleId;
    }

    else
    {
      v12 = @"<UNKNOWN>";
    }

    [v7 setBundleID:v12];

    clientInfo2 = [requestCopy clientInfo];
    displayName = [clientInfo2 displayName];
    if (displayName)
    {
      [v7 setAppName:displayName];
    }

    else
    {
      v15 = +[LACMobileGestalt marketingDeviceFamilyName];
      [v7 setAppName:v15];
    }

    [v7 setBiometricOnly:{objc_msgSend(requestCopy, "isFallbackAvailable") ^ 1}];
    v16 = -[SFAuthenticationManager authenticateForType:withOptions:](self->_sharingManager, "authenticateForType:withOptions:", -[LACSharingManager _authenticationTypeForCompanion:](self, "_authenticationTypeForCompanion:", [requestCopy companionType]), v7);
    completionCopy[2](completionCopy, v16, 0);
  }

  else
  {
    v7 = [LACError errorWithCode:-1020 debugDescription:@"Authenticator not available"];
    (completionCopy)[2](completionCopy, 0, v7);
  }
}

- (id)_canAuthenticateBackgroundTaskWithCompanion:(int64_t)companion
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromLACCompanionType(companion);
  v6 = [v4 stringWithFormat:@"CanAuthenticateFor-%@", v5];

  v7 = [LACBackgroundTask alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke;
  v10[3] = &unk_1E7A96148;
  objc_copyWeak(v11, &location);
  v11[1] = companion;
  v8 = [(LACBackgroundTask *)v7 initWithIdentifier:v6 worker:v10];
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);

  return v8;
}

void __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke_2;
    v6[3] = &unk_1E7A961C0;
    v6[4] = WeakRetained;
    v7 = v3;
    [WeakRetained _canAuthenticateWithCompanion:v5 completion:v6];
  }
}

void __65__LACSharingManager__canAuthenticateBackgroundTaskWithCompanion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [[LACBackgroundTaskResult alloc] initWithError:v6];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = LACLogABM(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_INFO, "Can authenticate check started with sessionID:%{public}@", &v12, 0xCu);
    }

    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 8);
    v8 = _Block_copy(v10);
    [v11 setObject:v8 forKey:v5];
  }
}

- (void)_canAuthenticateWithCompanion:(int64_t)companion completion:(id)completion
{
  completionCopy = completion;
  if (self->_sharingManager && getSFAuthenticationOptionsClass())
  {
    v6 = objc_alloc_init(getSFAuthenticationOptionsClass());
    [v6 setCheckLocally:1];
    [v6 setScanTimeout:1];
    v7 = [(SFAuthenticationManager *)self->_sharingManager canAuthenticateForType:[(LACSharingManager *)self _authenticationTypeForCompanion:companion] withOptions:v6];
    completionCopy[2](completionCopy, v7, 0);
  }

  else
  {
    v6 = [LACError errorWithCode:-1020 debugDescription:@"Authenticator not available"];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)_failSessionWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  objc_initWeak(&location, self);
  replyQueue = self->_replyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LACSharingManager__failSessionWithID_error___block_invoke;
  block[3] = &unk_1E7A961E8;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = dCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = dCopy;
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__LACSharingManager__failSessionWithID_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 manager:*(a1 + 32) didFailSessionWithID:*(a1 + 40) error:*(a1 + 48)];

    WeakRetained = v4;
  }
}

- (unint64_t)_authenticationTypeForCompanion:(int64_t)companion
{
  v3 = 14;
  if (companion != 4)
  {
    v3 = 0;
  }

  if (companion == 2)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_pairedDeviceTypeForCompanion:(int64_t)companion
{
  v3 = 12;
  if (companion != 4)
  {
    v3 = 0;
  }

  if (companion == 2)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

- (LACSharingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

+ (void)isSharingError:.cold.1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3_cold_1(v1, v2, v3);
}

@end