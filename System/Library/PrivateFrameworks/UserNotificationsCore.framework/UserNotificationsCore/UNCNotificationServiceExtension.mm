@interface UNCNotificationServiceExtension
+ (BOOL)isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:(id)identifier;
+ (id)_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter;
+ (id)_extensionIdentifiersToPerExtensionQueues;
+ (void)_allowAccessToNotificationCenterForServiceExtensionWithIdentifier:(id)identifier;
+ (void)_disallowAccessToNotificationCenterForServiceExtensionWithIdentifier:(id)identifier;
- (LSPlugInKitProxy)proxy;
- (OS_dispatch_queue)queue;
- (id)_initWithExtension:(id)extension serviceTime:(double)time graceTime:(double)graceTime;
- (id)mutateContentForNotificationRequest:(id)request error:(id *)error;
- (void)cleanUp;
@end

@implementation UNCNotificationServiceExtension

+ (id)_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter
{
  if (_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter_onceToken != -1)
  {
    +[UNCNotificationServiceExtension _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter];
  }

  v3 = _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter_instance;

  return v3;
}

uint64_t __98__UNCNotificationServiceExtension__extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter__block_invoke()
{
  _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter_instance = [MEMORY[0x1E696AB50] set];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionIdentifiersToPerExtensionQueues
{
  if (_extensionIdentifiersToPerExtensionQueues_onceToken[0] != -1)
  {
    +[UNCNotificationServiceExtension _extensionIdentifiersToPerExtensionQueues];
  }

  v3 = _extensionIdentifiersToPerExtensionQueues_instance;

  return v3;
}

uint64_t __76__UNCNotificationServiceExtension__extensionIdentifiersToPerExtensionQueues__block_invoke()
{
  _extensionIdentifiersToPerExtensionQueues_instance = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isAccessToNotificationCenterAllowedForServiceExtensionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter = [self _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter];
  objc_sync_enter(_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter);
  v6 = [_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter countForObject:identifierCopy] != 0;
  objc_sync_exit(_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter);

  return v6;
}

+ (void)_allowAccessToNotificationCenterForServiceExtensionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter = [self _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter];
  objc_sync_enter(_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter);
  [_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter addObject:identifierCopy];
  v6 = *MEMORY[0x1E6983398];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = identifierCopy;
    v9 = 2048;
    v10 = [_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter countForObject:identifierCopy];
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Incremented notification center access to service extension: %ld", &v7, 0x16u);
  }

  objc_sync_exit(_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter);
}

+ (void)_disallowAccessToNotificationCenterForServiceExtensionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter = [self _extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter];
  objc_sync_enter(_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter);
  [_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter removeObject:identifierCopy];
  v6 = *MEMORY[0x1E6983398];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = identifierCopy;
    v9 = 2048;
    v10 = [_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter countForObject:identifierCopy];
    _os_log_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decremented notification center access to service extension: %ld", &v7, 0x16u);
  }

  objc_sync_exit(_extensionIdentifiersCurrentlyAllowedAccessToNotificationCenter);
}

- (id)_initWithExtension:(id)extension serviceTime:(double)time graceTime:(double)graceTime
{
  extensionCopy = extension;
  v13.receiver = self;
  v13.super_class = UNCNotificationServiceExtension;
  v10 = [(UNCNotificationServiceExtension *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_extension, extension);
    v11[4] = time;
    v11[5] = graceTime;
  }

  return v11;
}

- (LSPlugInKitProxy)proxy
{
  identifier = [(NSExtension *)self->_extension identifier];
  v3 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:identifier];

  return v3;
}

- (OS_dispatch_queue)queue
{
  identifier = [(NSExtension *)self->_extension identifier];
  _extensionIdentifiersToPerExtensionQueues = [objc_opt_class() _extensionIdentifiersToPerExtensionQueues];
  objc_sync_enter(_extensionIdentifiersToPerExtensionQueues);
  v4 = [_extensionIdentifiersToPerExtensionQueues objectForKeyedSubscript:identifier];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.usernotifications.serviceextension.%@", identifier];
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create(uTF8String, v7);

    [_extensionIdentifiersToPerExtensionQueues setObject:v4 forKeyedSubscript:identifier];
  }

  objc_sync_exit(_extensionIdentifiersToPerExtensionQueues);

  return v4;
}

- (id)mutateContentForNotificationRequest:(id)request error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v66 = 0;
  v67[0] = &v66;
  v67[1] = 0x3032000000;
  v67[2] = __Block_byref_object_copy__11;
  v67[3] = __Block_byref_object_dispose__11;
  v68 = 0;
  identifier = [(NSExtension *)self->_extension identifier];
  v6 = dispatch_get_global_queue(21, 0);
  v7 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.usernotifications.serviceextension.startuptimer"];
  serviceTime = self->_serviceTime;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke;
  v63[3] = &unk_1E85D7C58;
  v9 = identifier;
  v64 = v9;
  selfCopy = self;
  [v7 scheduleWithFireInterval:v6 leewayInterval:v63 queue:serviceTime handler:0.0];
  v44 = v6;
  BSAbsoluteMachTimeNow();
  v11 = v10;
  extension = self->_extension;
  v13 = v67[0];
  obj = *(v67[0] + 40);
  v14 = [(NSExtension *)extension beginExtensionRequestWithOptions:1 inputItems:0 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  [v7 invalidate];

  v15 = objc_opt_class();
  v16 = v14;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [(NSExtension *)self->_extension _extensionContextForUUID:v18];
  hostContext = self->_hostContext;
  self->_hostContext = v19;

  if (self->_hostContext)
  {
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3810000000;
    v60[3] = &unk_1DA993602;
    v61 = 0;
    v21 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.usernotifications.serviceextension.errorwatchdogtimer"];
    v41 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.usernotifications.serviceextension.gracewatchdogtimer"];
    if ([(NSExtension *)self->_extension uns_isExtensionSessionBeingDebugged:v18])
    {
      v22 = *MEMORY[0x1E6983398];
      if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v70 = v9;
        v71 = 2114;
        v72 = v18;
        _os_log_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Extension is being debugged, will skip scheduling timers: sessionUUID=%{public}@", buf, 0x16u);
      }

      v23 = v21;
    }

    else
    {
      BSAbsoluteMachTimeNow();
      v26 = v25;
      v27 = self->_serviceTime;
      [v21 invalidate];
      v23 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.usernotifications.serviceextension.startuperrortimer"];

      v28 = fmax(v27 - (v26 - v11), 0.0);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_25;
      v56[3] = &unk_1E85D7C80;
      v59 = v60;
      v56[4] = self;
      v29 = v9;
      v57 = v29;
      v30 = v18;
      v58 = v30;
      [v23 scheduleWithFireInterval:v44 leewayInterval:v56 queue:v28 handler:0.0];
      v31 = fmax(v28 - self->_graceTime, 0.0);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_26;
      v54[3] = &unk_1E85D7C58;
      v54[4] = self;
      v32 = v30;
      v55 = v32;
      [v41 scheduleWithFireInterval:v44 leewayInterval:v54 queue:v31 handler:0.0];
      v33 = *MEMORY[0x1E6983398];
      if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v70 = v29;
        v71 = 2114;
        v72 = v32;
        v73 = 2048;
        v74 = v28;
        v75 = 2048;
        v76 = v31;
        _os_log_impl(&dword_1DA7A9000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] Extension started, scheduled timers: sessionUUID=%{public}@, serviceTime=%lf, graceTime=%lf", buf, 0x2Au);
      }
    }

    [objc_opt_class() _allowAccessToNotificationCenterForServiceExtensionWithIdentifier:v9];
    _auxiliaryConnection = [(NSExtensionContext *)self->_hostContext _auxiliaryConnection];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_27;
    v49[3] = &unk_1E85D7CA8;
    v49[4] = self;
    v35 = v9;
    v50 = v35;
    v52 = v60;
    v53 = &v66;
    v36 = v18;
    v51 = v36;
    v37 = [_auxiliaryConnection synchronousRemoteObjectProxyWithErrorHandler:v49];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_29;
    v45[3] = &unk_1E85D7CD0;
    v45[4] = self;
    v46 = v35;
    v48 = v60;
    v47 = v36;
    [v37 didReceiveNotificationRequest:requestCopy withCompletionHandler:v45];

    [v23 invalidate];
    [v41 invalidate];

    _Block_object_dispose(v60, 8);
  }

  else
  {
    v24 = *MEMORY[0x1E6983398];
    if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
    {
      [(UNCNotificationServiceExtension *)v9 mutateContentForNotificationRequest:v67 error:v24];
    }
  }

  if (error)
  {
    v38 = *(v67[0] + 40);
    if (v38)
    {
      *error = v38;
    }
  }

  v39 = self->_mutatedContent;

  _Block_object_dispose(&v66, 8);

  return v39;
}

uint64_t __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E6983398];
  if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
  {
    __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_cold_1(a1, v2);
  }

  return [*(*(a1 + 40) + 8) _kill:9];
}

void *__77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_25(void *result)
{
  if ((atomic_exchange((*(result[7] + 8) + 48), 1u) & 1) == 0)
  {
    v1 = result;
    v2 = result[4];
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;

    v4 = *MEMORY[0x1E6983398];
    if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
    {
      __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_25_cold_1(v1, v4);
    }

    return [*(v1[4] + 8) cancelExtensionRequestWithIdentifier:v1[6]];
  }

  return result;
}

void __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_26(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6983398];
  if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1DA7A9000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entering grace time: sessionUUID=%{public}@", &v9, 0x16u);
  }

  v7 = [*(*(a1 + 32) + 16) _auxiliaryConnection];
  v8 = [v7 remoteObjectProxy];
  [v8 serviceExtensionTimeWillExpire];
}

void __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_27(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  [objc_opt_class() _disallowAccessToNotificationCenterForServiceExtensionWithIdentifier:a1[5]];
  if ((atomic_exchange((*(a1[7] + 8) + 48), 1u) & 1) == 0)
  {
    v5 = a1[4];
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;

    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    v7 = *MEMORY[0x1E6983398];
    if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      v9 = a1[6];
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Service extension connection encountered an error: sessionUUID=%{public}@, error=%{public}@", &v10, 0x20u);
    }
  }
}

void __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_29(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [objc_opt_class() _disallowAccessToNotificationCenterForServiceExtensionWithIdentifier:a1[5]];
  if ((atomic_exchange((*(a1[7] + 8) + 48), 1u) & 1) == 0)
  {
    v4 = [v3 copy];
    v5 = a1[4];
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v7 = *MEMORY[0x1E6983398];
    if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = a1[6];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension delivered mutated content: sessionUUID=%{public}@", &v10, 0x16u);
    }
  }
}

- (void)cleanUp
{
  if (self->_mutatedContent)
  {
    _auxiliaryConnection = [(NSExtensionContext *)self->_hostContext _auxiliaryConnection];
    remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
    [remoteObjectProxy deleteAttachmentFilesInContentIfNecessary:self->_mutatedContent];

    mutatedContent = self->_mutatedContent;
    self->_mutatedContent = 0;
  }

  _auxiliaryConnection2 = [(NSExtensionContext *)self->_hostContext _auxiliaryConnection];
  remoteObjectProxy2 = [_auxiliaryConnection2 remoteObjectProxy];
  [remoteObjectProxy2 serviceExtensionPerformCleanup];

  hostContext = self->_hostContext;
  self->_hostContext = 0;
}

- (void)mutateContentForNotificationRequest:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 40);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Could not start an extension session: error=%{public}@", &v4, 0x16u);
}

void __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Extension will be killed because it used its runtime in starting up", &v3, 0xCu);
}

void __77__UNCNotificationServiceExtension_mutateContentForNotificationRequest_error___block_invoke_25_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Service extension exceeded allowed time: sessionUUID=%{public}@", &v4, 0x16u);
}

@end