@interface SFAuthenticationManager
- (BOOL)checkDynamicStoreForType:(unint64_t)type;
- (BOOL)declinedToEnableForType:(unint64_t)type;
- (BOOL)isEnabledForType:(unint64_t)type;
- (BOOL)isSupportedForType:(unint64_t)type;
- (BOOL)osFeatureEnabledForType:(unint64_t)type;
- (SFAuthenticationManager)initWithQueue:(id)queue;
- (SFAuthenticationManagerDelegate)delegate;
- (id)authenticateForType:(unint64_t)type;
- (id)authenticateForType:(unint64_t)type withOptions:(id)options;
- (id)canAuthenticateForType:(unint64_t)type withDevice:(id)device;
- (id)canAuthenticateForType:(unint64_t)type withIDSDeviceID:(id)d;
- (id)canAuthenticateForType:(unint64_t)type withOptions:(id)options;
- (id)disableForType:(unint64_t)type device:(id)device;
- (id)disableForType:(unint64_t)type withIDSDeviceID:(id)d;
- (id)dynamicStorePathForType:(unint64_t)type;
- (id)enableForType:(unint64_t)type device:(id)device passcode:(id)passcode;
- (id)enableForType:(unint64_t)type device:(id)device passcodeRef:(id)ref;
- (id)enableForType:(unint64_t)type withIDSDeviceID:(id)d passcode:(id)passcode;
- (id)enableForType:(unint64_t)type withIDSDeviceID:(id)d passcodeRef:(id)ref;
- (id)requestEnablementForType:(unint64_t)type withDevice:(id)device;
- (id)requestEnablementForType:(unint64_t)type withIDSDeviceID:(id)d;
- (void)_handleEnabledDevicesChanged;
- (void)_registerForNotifications;
- (void)cancelAuthenticationSessionWithID:(id)d;
- (void)completedAuthenticationSessionWithID:(id)d;
- (void)disabledAuthenticationSessionWithID:(id)d;
- (void)enabledAuthenticationSessionWithID:(id)d;
- (void)failedApproveSessionWithID:(id)d error:(id)error;
- (void)failedAuthenticationSessionWithID:(id)d error:(id)error;
- (void)failedToDisableDeviceForSessionID:(id)d error:(id)error;
- (void)failedToEnableDeviceForSessionID:(id)d error:(id)error;
- (void)listCandidateDevicesForType:(unint64_t)type completionHandler:(id)handler;
- (void)listEligibleDevicesForType:(unint64_t)type completionHandler:(id)handler;
- (void)manager:(id)manager beganAttemptWithDevice:(id)device;
- (void)manager:(id)manager completedUnlockWithDevice:(id)device;
- (void)manager:(id)manager failedAttemptWithError:(id)error;
- (void)receivedApproveRequestForSessionID:(id)d info:(id)info;
- (void)startObservingForAuthenticationStateChanges:(id)changes queue:(id)queue;
- (void)startedAuthenticationSessionWithID:(id)d;
- (void)stopObservingForAuthenticationStateChanges;
- (void)waitForApprovalRequestsForType:(unint64_t)type;
@end

@implementation SFAuthenticationManager

- (SFAuthenticationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFAuthenticationManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = SFAuthenticationManager;
  v6 = [(SFAuthenticationManager *)&v11 init];
  objc_storeStrong(&v6->_queue, queue);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = objc_alloc_init(SFAutoUnlockManager);
    autoUnlockManager = v6->_autoUnlockManager;
    v6->_autoUnlockManager = v7;

    [(SFAutoUnlockManager *)v6->_autoUnlockManager setDelegate:v6];
  }

  cachedEnabledTypes = v6->_cachedEnabledTypes;
  v6->_cachedEnabledTypes = 0;

  v6->_hasEnabledTypesToken = -1;
  [(SFAuthenticationManager *)v6 _registerForNotifications];

  return v6;
}

- (void)_registerForNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  uTF8String = [@"com.apple.sharing.authentication.enabled-devices-changed" UTF8String];
  queue = self->_queue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __52__SFAuthenticationManager__registerForNotifications__block_invoke;
  handler[3] = &unk_1E788D120;
  objc_copyWeak(&v11, &location);
  notify_register_dispatch(uTF8String, &self->_hasEnabledTypesToken, queue, handler);
  state64 = 0;
  state = notify_get_state(self->_hasEnabledTypesToken, &state64);
  if (state)
  {
    v6 = authentications_log(state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager _registerForNotifications];
    }
  }

  else
  {
    v7 = state64;
    v8 = authentications_log(state);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = state64;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "_hasEnabledTypesToken state %llu", buf, 0xCu);
    }

    if (v7)
    {
      [(SFAuthenticationManager *)self _handleEnabledDevicesChanged];
    }
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__SFAuthenticationManager__registerForNotifications__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    WeakRetained = authentications_log(state);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __52__SFAuthenticationManager__registerForNotifications__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleEnabledDevicesChanged];
  }
}

- (void)_handleEnabledDevicesChanged
{
  v3 = authentications_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "_handleEnabledDevicesChanged", buf, 2u);
  }

  v4 = +[SFCompanionXPCManager sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke;
  v5[3] = &unk_1E788BE50;
  v5[4] = self;
  [v4 unlockManagerWithCompletionHandler:v5];
}

void __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_23];
    v4 = authentications_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Calling in to get enabled devices", buf, 2u);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_461;
    v5[3] = &unk_1E788D148;
    v5[4] = *(a1 + 32);
    [v3 getEnabledAuthenticationTypesWithCompletionHandler:v5];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

void __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_461(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = authentications_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Got enabled types %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)isEnabledForType:(unint64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v5 = dispatch_semaphore_create(0);
  v7 = 0;
  v25 = v5;
  if (type > 4)
  {
    if (type > 0xE)
    {
      goto LABEL_31;
    }

    if (((1 << type) & 0xE0) == 0)
    {
      if (((1 << type) & 0x7000) != 0)
      {
        v8 = [(NSSet *)self->_cachedEnabledTypes containsObject:&unk_1F1D7CDC0];
LABEL_26:
        v7 = v8;
        goto LABEL_31;
      }

      if (((1 << type) & 0xA00) != 0)
      {
        v8 = [(NSSet *)self->_cachedEnabledTypes containsObject:&unk_1F1D7CDA8];
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    v9 = +[SFCompanionXPCManager sharedManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__SFAuthenticationManager_isEnabledForType___block_invoke;
    v19[3] = &unk_1E788D198;
    v19[4] = &v26;
    v19[5] = &v20;
    v19[6] = type;
    [v9 unlockManagerWithCompletionHandler:v19];

    v10 = v21[5];
    v11 = dispatch_time(0, 7000000000);
    v12 = dispatch_semaphore_wait(v10, v11);
    if (!v12)
    {
      v15 = authentications_log(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v27 + 24))
        {
          v16 = "yes";
        }

        else
        {
          v16 = "no";
        }

        *buf = 136315138;
        v31 = v16;
        _os_log_impl(&dword_1A9662000, v15, OS_LOG_TYPE_DEFAULT, "Returning Oneness enabled: %s", buf, 0xCu);
      }

      v7 = *(v27 + 24);
      goto LABEL_31;
    }

    v13 = authentications_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager isEnabledForType:];
    }

LABEL_30:
    v7 = 0;
    goto LABEL_31;
  }

  if (type - 3 < 2)
  {
    v14 = _os_feature_enabled_impl();
    if (v14)
    {
      v8 = [(SFAuthenticationManager *)self checkDynamicStoreForType:type];
      goto LABEL_26;
    }

    v17 = authentications_log(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "feature flag is disabled", buf, 2u);
    }

    goto LABEL_30;
  }

  if (type == 1)
  {
    if (SFDeviceSupportsSiriWatchAuth(v5, v6))
    {
      v8 = +[SFAutoUnlockManager autoUnlockEnabled];
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (type == 2)
  {
    v8 = [(SFAuthenticationManager *)self isSupportedForType:2];
    goto LABEL_26;
  }

LABEL_31:
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v7 & 1;
}

void __44__SFAuthenticationManager_isEnabledForType___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_466];
    v4 = authentications_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __44__SFAuthenticationManager_isEnabledForType___block_invoke_cold_1();
    }

    v5 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__SFAuthenticationManager_isEnabledForType___block_invoke_467;
    v7[3] = &unk_1E788D170;
    v8 = *(a1 + 32);
    [v3 listEligibleDevicesForAuthenticationType:v5 completionHandler:v7];
  }

  else
  {
    v6 = authentications_log(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }

    dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  }
}

void __44__SFAuthenticationManager_isEnabledForType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

void __44__SFAuthenticationManager_isEnabledForType___block_invoke_467(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = authentications_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Got Devices, Checking to see if any are enabled", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v6 = SFDeviceClassCodeGet(v6, v7);
        if (v6 != 1 && (v6 = [v11 canUnlockDevice], (v6 & 1) != 0) || (v6 = SFDeviceClassCodeGet(v6, v12), v6 == 1) && (v6 = objc_msgSend(v11, "unlockEnabled"), v6))
        {
          v13 = authentications_log(v6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v11;
            _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Found device that is eligible, returning true, device: %@", buf, 0xCu);
          }

          *(*(*(a1 + 32) + 8) + 24) = 1;
          dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));

          goto LABEL_18;
        }

        ++v10;
      }

      while (v8 != v10);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      v8 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
LABEL_18:
}

- (id)dynamicStorePathForType:(unint64_t)type
{
  if (type - 3 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"com.apple.sharing:/Authentications/BioArm/Enabled";
  }

  return v4;
}

- (BOOL)checkDynamicStoreForType:(unint64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(SFAuthenticationManager *)self dynamicStorePathForType:type];
  if (!v3)
  {
LABEL_12:
    LOBYTE(bOOLValue) = 0;
    goto LABEL_13;
  }

  TypeID = SCDynamicStoreCopyValue(0, v3);
  v5 = TypeID;
  if (!TypeID || (v6 = CFGetTypeID(TypeID), TypeID = CFDictionaryGetTypeID(), v6 != TypeID))
  {
    v14 = authentications_log(TypeID);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "No value at path: %@", buf, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_12;
  }

  v7 = authentications_log(TypeID);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic store enabled state %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", getuid()];
  v9 = [(__CFString *)v5 objectForKeyedSubscript:v8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(__CFString *)v5 objectForKeyedSubscript:v8];
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v16 = authentications_log(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v18 = v3;
    v19 = 2112;
    v20 = v8;
    v21 = 1024;
    v22 = bOOLValue;
    _os_log_debug_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEBUG, "Dynamic store path: %@, uid: %@, enabled: %d", buf, 0x1Cu);
  }

LABEL_13:
  return bOOLValue;
}

- (BOOL)isSupportedForType:(unint64_t)type
{
  if (type > 4)
  {
    if (type <= 0xE)
    {
      if (((1 << type) & 0xE0) != 0)
      {
        return SFDeviceSupportsMacUnlockPhonePairing(self, a2);
      }

      if (((1 << type) & 0x7000) != 0)
      {
        return SFDeviceSupportsVisionUnlockiOSPairing(self, a2);
      }

      if (((1 << type) & 0xA00) != 0)
      {
        return SFDeviceSupportsGuestModeUnlockPairing(self, a2);
      }
    }

    return 0;
  }

  if (type - 3 < 2)
  {
    return SFDeviceSupportsUnlockClassC(self, a2);
  }

  if (type != 1)
  {
    if (type == 2)
    {
      return SFDeviceSupportsNanoWallet(self, a2);
    }

    return 0;
  }

  return SFDeviceSupportsSiriWatchAuth(self, a2);
}

- (void)listEligibleDevicesForType:(unint64_t)type completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = authentications_log(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SFAuthenticationTypeToString(type);
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "List eligible devices for %@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v10 = [(SFAuthenticationManager *)self isSupportedForType:type];
    if (v10)
    {
      v11 = +[SFCompanionXPCManager sharedManager];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__SFAuthenticationManager_listEligibleDevicesForType_completionHandler___block_invoke;
      v15[3] = &unk_1E788D1E8;
      typeCopy = type;
      v16 = handlerCopy;
      [v11 unlockManagerWithCompletionHandler:v15];

      v12 = v16;
    }

    else
    {
      v13 = authentications_log(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFAuthenticationManager listEligibleDevicesForType:type completionHandler:?];
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
      v14 = [MEMORY[0x1E695DFD8] set];
      (*(handlerCopy + 2))(handlerCopy, v14, v12);
    }
  }

  else
  {
    v12 = authentications_log(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager listEligibleDevicesForType:completionHandler:];
    }
  }
}

void __72__SFAuthenticationManager_listEligibleDevicesForType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_480];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__SFAuthenticationManager_listEligibleDevicesForType_completionHandler___block_invoke_481;
    v5[3] = &unk_1E788D1C0;
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    [v3 listEligibleDevicesForAuthenticationType:v4 completionHandler:v5];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __72__SFAuthenticationManager_listEligibleDevicesForType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (void)listCandidateDevicesForType:(unint64_t)type completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = authentications_log(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SFAuthenticationTypeToString(type);
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "List candidate devices for %@", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v10 = [(SFAuthenticationManager *)self isSupportedForType:type];
    if (v10)
    {
      v11 = +[SFCompanionXPCManager sharedManager];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __73__SFAuthenticationManager_listCandidateDevicesForType_completionHandler___block_invoke;
      v15[3] = &unk_1E788D1E8;
      typeCopy = type;
      v16 = handlerCopy;
      [v11 unlockManagerWithCompletionHandler:v15];

      v12 = v16;
    }

    else
    {
      v13 = authentications_log(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SFAuthenticationManager listEligibleDevicesForType:type completionHandler:?];
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
      v14 = [MEMORY[0x1E695DFD8] set];
      (*(handlerCopy + 2))(handlerCopy, v14, v12);
    }
  }

  else
  {
    v12 = authentications_log(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager listEligibleDevicesForType:completionHandler:];
    }
  }
}

void __73__SFAuthenticationManager_listCandidateDevicesForType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_483_0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__SFAuthenticationManager_listCandidateDevicesForType_completionHandler___block_invoke_484;
    v5[3] = &unk_1E788D1C0;
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    [v3 listEligibleDevicesForAuthenticationType:v4 completionHandler:v5];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __73__SFAuthenticationManager_listCandidateDevicesForType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

void __73__SFAuthenticationManager_listCandidateDevicesForType_completionHandler___block_invoke_484(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = [SFAuthenticationDevice alloc];
        v15 = [(SFAuthenticationDevice *)v14 initWith:v13, v16];
        [v7 addObject:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)osFeatureEnabledForType:(unint64_t)type
{
  v8 = *MEMORY[0x1E69E9840];
  result = 1;
  if (type <= 6)
  {
    if (type - 3 >= 2 && type - 5 >= 2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (type == 7)
  {
LABEL_10:

    return _os_feature_enabled_impl();
  }

  if (type == 9 || type == 11)
  {
    v4 = _os_feature_enabled_impl();
    if (v4)
    {
      return 1;
    }

    else
    {
      v5 = authentications_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = @"DeviceSharing/GuestUserHandover";
        _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "FeatureFlag %@ is not enabled", &v6, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

- (id)enableForType:(unint64_t)type device:(id)device passcode:(id)passcode
{
  passcodeCopy = passcode;
  uniqueID = [device uniqueID];
  v10 = [(SFAuthenticationManager *)self enableForType:type withIDSDeviceID:uniqueID passcode:passcodeCopy];

  return v10;
}

- (id)enableForType:(unint64_t)type device:(id)device passcodeRef:(id)ref
{
  refCopy = ref;
  uniqueID = [device uniqueID];
  v10 = [(SFAuthenticationManager *)self enableForType:type withIDSDeviceID:uniqueID passcodeRef:refCopy];

  return v10;
}

- (id)enableForType:(unint64_t)type withIDSDeviceID:(id)d passcode:(id)passcode
{
  dCopy = d;
  v9 = [passcode dataUsingEncoding:4];
  v10 = [(SFAuthenticationManager *)self enableForType:type withIDSDeviceID:dCopy passcodeRef:v9];

  return v10;
}

- (id)enableForType:(unint64_t)type withIDSDeviceID:(id)d passcodeRef:(id)ref
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  refCopy = ref;
  v10 = authentications_log(refCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SFAuthenticationTypeToString(type);
    *buf = 138412546;
    v27 = v11;
    v28 = 2112;
    v29 = dCopy;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Begin enabling authentication for %@ on %@", buf, 0x16u);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v13 = [(SFAuthenticationManager *)self osFeatureEnabledForType:type];
  if (v13)
  {
    v14 = +[SFCompanionXPCManager sharedManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__SFAuthenticationManager_enableForType_withIDSDeviceID_passcodeRef___block_invoke;
    v21[3] = &unk_1E788D210;
    v21[4] = self;
    typeCopy = type;
    v22 = dCopy;
    v23 = refCopy;
    v15 = uUID;
    v24 = v15;
    [v14 unlockManagerWithCompletionHandler:v21];

    v16 = v15;
  }

  else
  {
    v17 = authentications_log(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager enableForType:withIDSDeviceID:passcodeRef:];
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
    [(SFAuthenticationManager *)self failedToEnableDeviceForSessionID:uUID error:v18];
    v19 = uUID;
  }

  return uUID;
}

void __69__SFAuthenticationManager_enableForType_withIDSDeviceID_passcodeRef___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_496];
    [v7 enableUsingClientProxy:*(a1 + 32) authenticationType:*(a1 + 64) device:*(a1 + 40) passcode:*(a1 + 48) sessionID:*(a1 + 56)];
  }

  else
  {
    v8 = authentications_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }

    [*(a1 + 32) failedToEnableDeviceForSessionID:*(a1 + 56) error:v6];
  }
}

void __69__SFAuthenticationManager_enableForType_withIDSDeviceID_passcodeRef___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (id)requestEnablementForType:(unint64_t)type withDevice:(id)device
{
  uniqueID = [device uniqueID];
  v7 = [(SFAuthenticationManager *)self requestEnablementForType:type withIDSDeviceID:uniqueID];

  return v7;
}

- (id)requestEnablementForType:(unint64_t)type withIDSDeviceID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = authentications_log(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SFAuthenticationTypeToString(type);
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Begin requesting enablement for %@ on %@", buf, 0x16u);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v10 = [(SFAuthenticationManager *)self osFeatureEnabledForType:type];
  if (v10)
  {
    v11 = +[SFCompanionXPCManager sharedManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__SFAuthenticationManager_requestEnablementForType_withIDSDeviceID___block_invoke;
    v18[3] = &unk_1E788D238;
    v18[4] = self;
    typeCopy = type;
    v19 = dCopy;
    v12 = uUID;
    v20 = v12;
    [v11 unlockManagerWithCompletionHandler:v18];

    v13 = v12;
  }

  else
  {
    v14 = authentications_log(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager requestEnablementForType:withIDSDeviceID:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
    [(SFAuthenticationManager *)self failedToEnableDeviceForSessionID:uUID error:v15];
    v16 = uUID;
  }

  return uUID;
}

void __68__SFAuthenticationManager_requestEnablementForType_withIDSDeviceID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_498];
    [v7 requestEnablementUsingClientProxy:*(a1 + 32) authenticationType:*(a1 + 56) device:*(a1 + 40) sessionID:*(a1 + 48)];
  }

  else
  {
    v8 = authentications_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }

    [*(a1 + 32) failedToEnableDeviceForSessionID:*(a1 + 48) error:v6];
  }
}

void __68__SFAuthenticationManager_requestEnablementForType_withIDSDeviceID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (id)disableForType:(unint64_t)type device:(id)device
{
  uniqueID = [device uniqueID];
  v7 = [(SFAuthenticationManager *)self disableForType:type withIDSDeviceID:uniqueID];

  return v7;
}

- (id)disableForType:(unint64_t)type withIDSDeviceID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = authentications_log(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SFAuthenticationTypeToString(type);
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Disabling authentication for %@ on %@", buf, 0x16u);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v10 = [(SFAuthenticationManager *)self osFeatureEnabledForType:type];
  if (v10)
  {
    v11 = +[SFCompanionXPCManager sharedManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__SFAuthenticationManager_disableForType_withIDSDeviceID___block_invoke;
    v18[3] = &unk_1E788D238;
    v18[4] = self;
    typeCopy = type;
    v19 = dCopy;
    v12 = uUID;
    v20 = v12;
    [v11 unlockManagerWithCompletionHandler:v18];

    v13 = v12;
  }

  else
  {
    v14 = authentications_log(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager requestEnablementForType:withIDSDeviceID:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
    [(SFAuthenticationManager *)self failedAuthenticationSessionWithID:uUID error:v15];
    v16 = uUID;
  }

  return uUID;
}

void __58__SFAuthenticationManager_disableForType_withIDSDeviceID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_500];
    [v7 disableUsingClientProxy:*(a1 + 32) authenticationType:*(a1 + 56) device:*(a1 + 40) sessionID:*(a1 + 48)];
  }

  else
  {
    v8 = authentications_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }

    [*(a1 + 32) failedAuthenticationSessionWithID:*(a1 + 48) error:v6];
  }
}

void __58__SFAuthenticationManager_disableForType_withIDSDeviceID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (id)authenticateForType:(unint64_t)type
{
  v5 = objc_alloc_init(SFAuthenticationOptions);
  v6 = [(SFAuthenticationManager *)self authenticateForType:type withOptions:v5];

  return v6;
}

- (id)authenticateForType:(unint64_t)type withOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v8 = authentications_log(uUID);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = SFAuthenticationTypeToString(type);
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Begin authentication for %@", buf, 0xCu);
  }

  v10 = [(SFAuthenticationManager *)self osFeatureEnabledForType:type];
  if (v10)
  {
    v11 = _os_feature_enabled_impl();
    if (type != 1 || (v11 & 1) != 0)
    {
      v15 = +[SFCompanionXPCManager sharedManager];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__SFAuthenticationManager_authenticateForType_withOptions___block_invoke;
      v17[3] = &unk_1E788D238;
      v17[4] = self;
      typeCopy = type;
      v18 = uUID;
      v19 = optionsCopy;
      [v15 unlockManagerWithCompletionHandler:v17];
    }

    else
    {
      autoUnlockManager = [(SFAuthenticationManager *)self autoUnlockManager];
      [autoUnlockManager attemptAutoUnlockForSiri];
    }
  }

  else
  {
    v13 = authentications_log(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Feature Flag disabled", buf, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
    [(SFAuthenticationManager *)self failedAuthenticationSessionWithID:uUID error:v14];
  }

  return uUID;
}

void __59__SFAuthenticationManager_authenticateForType_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_503];
    [v7 authenticateUsingClientProxy:*(a1 + 32) type:*(a1 + 56) sessionID:*(a1 + 40) options:*(a1 + 48)];
  }

  else
  {
    v8 = authentications_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }

    [*(a1 + 32) failedAuthenticationSessionWithID:*(a1 + 40) error:v6];
  }
}

void __59__SFAuthenticationManager_authenticateForType_withOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (id)canAuthenticateForType:(unint64_t)type withDevice:(id)device
{
  uniqueID = [device uniqueID];
  v7 = [(SFAuthenticationManager *)self canAuthenticateForType:type withIDSDeviceID:uniqueID];

  return v7;
}

- (id)canAuthenticateForType:(unint64_t)type withIDSDeviceID:(id)d
{
  dCopy = d;
  v7 = objc_alloc_init(SFAuthenticationOptions);
  [(SFAuthenticationOptions *)v7 setIdsDeviceID:dCopy];

  v8 = [(SFAuthenticationManager *)self canAuthenticateForType:type withOptions:v7];

  return v8;
}

- (id)canAuthenticateForType:(unint64_t)type withOptions:(id)options
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = authentications_log(optionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = SFAuthenticationTypeToString(type);
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = optionsCopy;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Begin requesting readiness check for %@ on %@", buf, 0x16u);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v10 = [(SFAuthenticationManager *)self osFeatureEnabledForType:type];
  if (v10)
  {
    v11 = +[SFCompanionXPCManager sharedManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__SFAuthenticationManager_canAuthenticateForType_withOptions___block_invoke;
    v18[3] = &unk_1E788D238;
    v18[4] = self;
    typeCopy = type;
    v19 = optionsCopy;
    v12 = uUID;
    v20 = v12;
    [v11 unlockManagerWithCompletionHandler:v18];

    v13 = v12;
  }

  else
  {
    v14 = authentications_log(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationManager requestEnablementForType:withIDSDeviceID:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:SFAuthenticationErrorCodeDomain code:19 userInfo:0];
    [(SFAuthenticationManager *)self failedAuthenticationSessionWithID:uUID error:v15];
    v16 = uUID;
  }

  return uUID;
}

void __62__SFAuthenticationManager_canAuthenticateForType_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_505];
    [v7 canAuthenticateUsingClientProxy:*(a1 + 32) authenticationType:*(a1 + 56) options:*(a1 + 40) sessionID:*(a1 + 48)];
  }

  else
  {
    v8 = authentications_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }

    [*(a1 + 32) failedAuthenticationSessionWithID:*(a1 + 48) error:v6];
  }
}

void __62__SFAuthenticationManager_canAuthenticateForType_withOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (void)cancelAuthenticationSessionWithID:(id)d
{
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v5 = +[SFCompanionXPCManager sharedManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SFAuthenticationManager_cancelAuthenticationSessionWithID___block_invoke;
    v7[3] = &unk_1E788BE50;
    v8 = dCopy;
    [v5 unlockManagerWithCompletionHandler:v7];
  }

  else
  {
    autoUnlockManager = [(SFAuthenticationManager *)self autoUnlockManager];
    [autoUnlockManager cancelAutoUnlock];
  }
}

void __61__SFAuthenticationManager_cancelAuthenticationSessionWithID___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_507];
    [v4 cancelAuthenticationSessionWithID:*(a1 + 32)];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __61__SFAuthenticationManager_cancelAuthenticationSessionWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (void)waitForApprovalRequestsForType:(unint64_t)type
{
  v5 = [(SFAuthenticationManager *)self osFeatureEnabledForType:?];
  v6 = v5;
  v7 = authentications_log(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Client registered for approval requests", buf, 2u);
    }

    v8 = +[SFCompanionXPCManager sharedManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SFAuthenticationManager_waitForApprovalRequestsForType___block_invoke;
    v9[3] = &unk_1E788D260;
    v9[4] = self;
    v9[5] = type;
    [v8 unlockManagerWithCompletionHandler:v9];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SFAuthenticationManager waitForApprovalRequestsForType:];
  }
}

void __58__SFAuthenticationManager_waitForApprovalRequestsForType___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_509];
    [v4 registerForApprovalRequestsUsingClientProxy:*(a1 + 32) forType:*(a1 + 40)];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __58__SFAuthenticationManager_waitForApprovalRequestsForType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (void)startObservingForAuthenticationStateChanges:(id)changes queue:(id)queue
{
  queueCopy = queue;
  changesCopy = changes;
  [(SFAuthenticationManager *)self stopObservingForAuthenticationStateChanges];
  v8 = [[SFAuthenticationStateChangesObserver alloc] initWithObserver:changesCopy queue:queueCopy];

  identifier = [(SFAuthenticationStateChangesObserver *)v8 identifier];
  [(SFAuthenticationManager *)self setLatestAuthenticationStateChangeObserverIdentifier:identifier];

  v10 = +[SFCompanionXPCManager sharedManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__SFAuthenticationManager_startObservingForAuthenticationStateChanges_queue___block_invoke;
  v12[3] = &unk_1E788BE50;
  v13 = v8;
  v11 = v8;
  [v10 unlockManagerWithCompletionHandler:v12];
}

void __77__SFAuthenticationManager_startObservingForAuthenticationStateChanges_queue___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_512];
    v3 = *(a1 + 32);
    v4 = [v3 identifier];
    [v6 startObservingAuthentationStateChangesWithObserver:v3 forIdentifier:v4];
  }

  else
  {
    v5 = authentications_log(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __77__SFAuthenticationManager_startObservingForAuthenticationStateChanges_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (void)stopObservingForAuthenticationStateChanges
{
  latestAuthenticationStateChangeObserverIdentifier = [(SFAuthenticationManager *)self latestAuthenticationStateChangeObserverIdentifier];

  if (latestAuthenticationStateChangeObserverIdentifier)
  {
    latestAuthenticationStateChangeObserverIdentifier2 = [(SFAuthenticationManager *)self latestAuthenticationStateChangeObserverIdentifier];
    [(SFAuthenticationManager *)self setLatestAuthenticationStateChangeObserverIdentifier:0];
    v5 = +[SFCompanionXPCManager sharedManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__SFAuthenticationManager_stopObservingForAuthenticationStateChanges__block_invoke;
    v7[3] = &unk_1E788BE50;
    v8 = latestAuthenticationStateChangeObserverIdentifier2;
    v6 = latestAuthenticationStateChangeObserverIdentifier2;
    [v5 unlockManagerWithCompletionHandler:v7];
  }
}

void __69__SFAuthenticationManager_stopObservingForAuthenticationStateChanges__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_514];
    [v4 stopObservingAuthentationStateChangesForIdentifier:*(a1 + 32)];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __69__SFAuthenticationManager_stopObservingForAuthenticationStateChanges__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (BOOL)declinedToEnableForType:(unint64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = authentications_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = SFAuthenticationTypeToString(type);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Stub for declinedToEnableForType:%@", &v7, 0xCu);
  }

  return 0;
}

- (void)manager:(id)manager beganAttemptWithDevice:(id)device
{
  v5 = [(SFAuthenticationManager *)self queue:manager];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SFAuthenticationManager_manager_beganAttemptWithDevice___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(v5, block);
}

void __58__SFAuthenticationManager_manager_beganAttemptWithDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    [v6 manager:v4 didStartAuthenticationForSessionWithID:v5];
  }
}

- (void)manager:(id)manager completedUnlockWithDevice:(id)device
{
  v5 = [(SFAuthenticationManager *)self queue:manager];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SFAuthenticationManager_manager_completedUnlockWithDevice___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(v5, block);
}

void __61__SFAuthenticationManager_manager_completedUnlockWithDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    [v6 manager:v4 didCompleteAuthenticationForSessionWithID:v5];
  }
}

- (void)manager:(id)manager failedAttemptWithError:(id)error
{
  errorCopy = error;
  queue = [(SFAuthenticationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SFAuthenticationManager_manager_failedAttemptWithError___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __58__SFAuthenticationManager_manager_failedAttemptWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) code] == 218 && (objc_msgSend(*(a1 + 40), "delegate"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_respondsToSelector(), v2, (v3 & 1) != 0))
  {
    v9 = [*(a1 + 40) delegate];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    [v9 manager:v4 didCompleteAuthenticationForSessionWithID:v5];
  }

  else
  {
    v6 = [*(a1 + 40) delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v9 = [*(a1 + 40) delegate];
    v8 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AFB0] UUID];
    [v9 manager:v8 didFailAuthenticationForSessionWithID:v5 error:*(a1 + 32)];
  }
}

- (void)enabledAuthenticationSessionWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = authentications_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Notifying client authentication enablement completed for %@", buf, 0xCu);
  }

  queue = [(SFAuthenticationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SFAuthenticationManager_enabledAuthenticationSessionWithID___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __62__SFAuthenticationManager_enabledAuthenticationSessionWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didEnableAuthenticationForSessionWithID:*(a1 + 40)];
  }
}

- (void)failedToEnableDeviceForSessionID:(id)d error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  v8 = authentications_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Notifying client enablement for authentication failed for %@ error: %@", buf, 0x16u);
  }

  queue = [(SFAuthenticationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SFAuthenticationManager_failedToEnableDeviceForSessionID_error___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v13 = dCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __66__SFAuthenticationManager_failedToEnableDeviceForSessionID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didFailToEnableDeviceForSessionWithID:*(a1 + 40) error:*(a1 + 48)];
  }
}

- (void)disabledAuthenticationSessionWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = authentications_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Notifying client authentication disablement completed for %@", buf, 0xCu);
  }

  queue = [(SFAuthenticationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__SFAuthenticationManager_disabledAuthenticationSessionWithID___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __63__SFAuthenticationManager_disabledAuthenticationSessionWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didDisableAuthenticationForSessionWithID:*(a1 + 40)];
  }
}

- (void)failedToDisableDeviceForSessionID:(id)d error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  v8 = authentications_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Notifying client disablement for authentication failed for %@ error: %@", buf, 0x16u);
  }

  queue = [(SFAuthenticationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFAuthenticationManager_failedToDisableDeviceForSessionID_error___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v13 = dCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __67__SFAuthenticationManager_failedToDisableDeviceForSessionID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didFailToDisableDeviceForSessionWithID:*(a1 + 40) error:*(a1 + 48)];
  }
}

- (void)startedAuthenticationSessionWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = authentications_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Notifying client authentication started for %@", buf, 0xCu);
  }

  queue = [(SFAuthenticationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SFAuthenticationManager_startedAuthenticationSessionWithID___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __62__SFAuthenticationManager_startedAuthenticationSessionWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didStartAuthenticationForSessionWithID:*(a1 + 40)];
  }
}

- (void)completedAuthenticationSessionWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = authentications_log(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Notifying client authentication completed for %@", buf, 0xCu);
  }

  queue = [(SFAuthenticationManager *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SFAuthenticationManager_completedAuthenticationSessionWithID___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __64__SFAuthenticationManager_completedAuthenticationSessionWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didCompleteAuthenticationForSessionWithID:*(a1 + 40)];
  }
}

- (void)failedAuthenticationSessionWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v8 = authentications_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SFAuthenticationManager failedAuthenticationSessionWithID:error:];
  }

  queue = [(SFAuthenticationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFAuthenticationManager_failedAuthenticationSessionWithID_error___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v13 = dCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __67__SFAuthenticationManager_failedAuthenticationSessionWithID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didFailAuthenticationForSessionWithID:*(a1 + 40) error:*(a1 + 48)];
  }
}

- (void)receivedApproveRequestForSessionID:(id)d info:(id)info
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  infoCopy = info;
  v8 = authentications_log(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [infoCopy bundleID];
    *buf = 138412546;
    v17 = dCopy;
    v18 = 2112;
    v19 = bundleID;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Notifying client of incoming approve request for sessionID %@ for %@", buf, 0x16u);
  }

  queue = [(SFAuthenticationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v14 = dCopy;
  v15 = infoCopy;
  v11 = infoCopy;
  v12 = dCopy;
  dispatch_async(queue, block);
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) delegate];
  if (v3)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_2;
    v15[3] = &unk_1E788D2B0;
    v8 = &v16;
    v16 = v5;
    [v4 manager:v6 didReceiveRequestToApproveForSessionID:v16 info:v7 completionHandler:v15];
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    v4 = [*(a1 + 32) delegate];
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_537;
    v13[3] = &unk_1E788C170;
    v8 = &v14;
    v14 = v10;
    [v4 manager:v11 didReceiveRequestToApproveForSessionWithID:v14 info:v12 completionHandler:v13];
  }
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[SFCompanionXPCManager sharedManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_3;
  v10[3] = &unk_1E788D288;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  [v7 unlockManagerWithCompletionHandler:v10];
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_533];
    [v4 reportUserApprovalWithACMToken:a1[4] error:a1[5] sessionID:a1[6]];
  }

  else
  {
    v3 = authentications_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_537(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[SFCompanionXPCManager sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_2_538;
  v8[3] = &unk_1E788D2D8;
  v11 = a2;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  [v6 unlockManagerWithCompletionHandler:v8];
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_2_538(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_541];
    if (*(a1 + 48) == 1)
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:1];
    }

    else
    {
      v3 = 0;
    }

    [v5 reportUserApprovalWithACMToken:v3 error:*(a1 + 32) sessionID:*(a1 + 40)];
  }

  else
  {
    v4 = authentications_log(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1();
    }
  }
}

void __67__SFAuthenticationManager_receivedApproveRequestForSessionID_info___block_invoke_3_539(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = authentications_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1();
  }
}

- (void)failedApproveSessionWithID:(id)d error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  v8 = authentications_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "Notifying client approve failed for %@ error: %@", buf, 0x16u);
  }

  queue = [(SFAuthenticationManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFAuthenticationManager_failedApproveSessionWithID_error___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v13 = dCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

void __60__SFAuthenticationManager_failedApproveSessionWithID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didFailApproveForSessionWithID:*(a1 + 40) error:*(a1 + 48)];
  }
}

void __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__SFAuthenticationManager__handleEnabledDevicesChanged__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isEnabledForType:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)listEligibleDevicesForType:(unint64_t)a1 completionHandler:.cold.1(unint64_t a1)
{
  v1 = SFAuthenticationTypeToString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1A9662000, v2, v3, "%@ is unsupported, not calling into sharing", v4, v5, v6, v7);
}

- (void)listEligibleDevicesForType:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enableForType:withIDSDeviceID:passcodeRef:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)requestEnablementForType:withIDSDeviceID:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)waitForApprovalRequestsForType:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)failedAuthenticationSessionWithID:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A9662000, v1, OS_LOG_TYPE_ERROR, "Notifying client authentication failed for %@ error: %@", v2, 0x16u);
}

@end