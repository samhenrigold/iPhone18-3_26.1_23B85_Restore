@interface FBSystemAppProxyServiceServer
+ (id)sharedInstance;
+ (id)targetQueue;
- (id)_initWithQueue:(id)queue;
- (void)_handleActions:(id)actions forClient:(id)client;
- (void)_handleGetPasscodeLockedOrBlockedStatus:(id)status forClient:(id)client;
- (void)_handleGetProcessHandle:(id)handle forClient:(id)client;
- (void)_handleShutdown:(id)shutdown forClient:(id)client;
- (void)_handleTerminateApplication:(id)application forClient:(id)client;
- (void)_handleTerminateApplicationGroup:(id)group forClient:(id)client;
- (void)noteClientDidConnect:(id)connect withMessage:(id)message;
- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client;
@end

@implementation FBSystemAppProxyServiceServer

+ (id)targetQueue
{
  sharedInstance = [self sharedInstance];
  queue = [sharedInstance queue];

  return queue;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FBSystemAppProxyServiceServer sharedInstance];
  }

  v3 = sharedInstance___SharedInstance;

  return v3;
}

void __47__FBSystemAppProxyServiceServer_sharedInstance__block_invoke()
{
  v0 = MEMORY[0x1E698F4D0];
  v1 = *MEMORY[0x1E699FA18];
  v2 = [MEMORY[0x1E698F500] userInitiated];
  v5 = [v0 queueWithName:v1 serviceQuality:v2];

  v3 = [[FBSystemAppProxyServiceServer alloc] _initWithQueue:v5];
  v4 = sharedInstance___SharedInstance;
  sharedInstance___SharedInstance = v3;
}

- (id)_initWithQueue:(id)queue
{
  v4 = *MEMORY[0x1E699FA18];
  v9.receiver = self;
  v9.super_class = FBSystemAppProxyServiceServer;
  v5 = [(FBSServiceFacility *)&v9 initWithIdentifier:v4 queue:queue];
  if (v5)
  {
    v6 = [[FBServiceClientAuthenticator alloc] initWithEntitlement:@"com.apple.frontboard.shutdown"];
    shutdownAuthenticator = v5->_shutdownAuthenticator;
    v5->_shutdownAuthenticator = v6;
  }

  return v5;
}

void __84__FBSystemAppProxyServiceServer__handleSystemApplicationBundleIdentifier_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA38];
  v3 = a2;
  v5 = FBSystemAppBundleID(v3);
  v4 = v5;
  xpc_dictionary_set_string(v3, v2, [v5 UTF8String]);
}

- (void)_handleGetPasscodeLockedOrBlockedStatus:(id)status forClient:(id)client
{
  statusCopy = status;
  v5 = +[FBSystemService sharedInstance];
  queue = [v5 queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke;
  v9[3] = &unk_1E783B240;
  v10 = v5;
  v11 = statusCopy;
  v7 = statusCopy;
  v8 = v5;
  [queue performAsync:v9];
}

void __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke_2;
  v2[3] = &unk_1E783B218;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 isPasscodeLockedOrBlockedWithResult:v2];
}

uint64_t __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke_3;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleGetProcessHandle:(id)handle forClient:(id)client
{
  v25 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  clientCopy = client;
  processHandle = [clientCopy processHandle];
  v8 = [processHandle hasEntitlement:@"com.apple.frontboard.application-process-handle"];

  if (v8)
  {
    payload = [handleCopy payload];
    v10 = BSDeserializeStringFromXPCDictionaryWithKey();

    if (v10)
    {
      v11 = +[FBProcessManager sharedInstance];
      v12 = [v11 processesForBundleIdentifier:v10];
      firstObject = [v12 firstObject];

      if (!firstObject)
      {
        v14 = MEMORY[0x1E69C75D0];
        v15 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:v10];
        v16 = [v14 handleForPredicate:v15 error:0];

        if (v16)
        {
          v17 = +[FBProcessManager sharedInstance];
          objc_msgSend_auditToken(v16);
          firstObject = [v17 registerProcessForAuditToken:buf];
        }

        else
        {
          firstObject = 0;
        }
      }
    }

    else
    {
      firstObject = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__FBSystemAppProxyServiceServer__handleGetProcessHandle_forClient___block_invoke;
    v21[3] = &unk_1E783B268;
    v22 = firstObject;
    v20 = firstObject;
    [handleCopy sendReplyMessageWithPacker:v21];
  }

  else
  {
    v10 = FBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      processHandle2 = [clientCopy processHandle];
      v19 = FBSProcessPrettyDescription();
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "[FBSystemService] %{public}@ is not permitted to acquire application process handles.", buf, 0xCu);
    }
  }
}

void __67__FBSystemAppProxyServiceServer__handleGetProcessHandle_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 handle];
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)_handleActions:(id)actions forClient:(id)client
{
  actionsCopy = actions;
  clientCopy = client;
  payload = [actionsCopy payload];
  v8 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  processHandle = [clientCopy processHandle];

  v10 = objc_msgSend_auditToken(processHandle);

  v11 = +[FBSystemService sharedInstance];
  queue = [v11 queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke;
  v17[3] = &unk_1E783B2D8;
  v18 = v11;
  v19 = v8;
  v20 = v10;
  v21 = actionsCopy;
  v13 = actionsCopy;
  v14 = v10;
  v15 = v8;
  v16 = v11;
  [queue performAsync:v17];
}

void __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_2;
  v5[3] = &unk_1E783B2B0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleActions:v3 source:v4 withResult:v5];
}

uint64_t __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_3;
  v4[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v4[4] = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_3(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_dictionary_set_int64(xdict, *MEMORY[0x1E699FA40], v2);
  }
}

- (void)_handleTerminateApplication:(id)application forClient:(id)client
{
  v25 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  processHandle = [client processHandle];
  v7 = objc_msgSend_auditToken(processHandle);

  if ([v7 hasEntitlement:@"com.apple.multitasking.termination"])
  {
    payload = [applicationCopy payload];
    v9 = BSDeserializeStringFromXPCDictionaryWithKey();
    if (v9)
    {
      int64 = xpc_dictionary_get_int64(payload, *MEMORY[0x1E699FA68]);
      v11 = xpc_dictionary_get_BOOL(payload, *MEMORY[0x1E699FA70]);
      v12 = BSDeserializeStringFromXPCDictionaryWithKey();
      v13 = FBLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [v7 pid];
        v14 = BSProcessDescriptionForPID();
        *buf = 138543874;
        v20 = v14;
        v21 = 2114;
        v22 = v9;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Request received from %{public}@ to terminate application %{public}@: %{public}@", buf, 0x20u);
      }

      v15 = +[FBSystemService sharedInstance];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_21;
      v17[3] = &unk_1E783B218;
      v18 = applicationCopy;
      [v15 terminateApplication:v9 forReason:int64 andReport:v11 withDescription:v12 completion:v17];
    }

    else
    {
      [applicationCopy sendReplyMessageWithPacker:&__block_literal_global_19];
    }
  }

  else
  {
    v16 = FBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = @"com.apple.multitasking.termination";
      _os_log_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEFAULT, "Entitlement %@ required to kill applications.", buf, 0xCu);
    }

    [applicationCopy sendReplyMessageWithPacker:&__block_literal_global_16];
  }
}

void __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA40];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v2, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "client not entitled");
}

void __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA40];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v2, 22);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "invalid bundle identifier");
}

uint64_t __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_21(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_2_22;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_2_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  xdict = v3;
  xpc_dictionary_set_int64(v3, *MEMORY[0x1E699FA40], v4);
  if ((*(a1 + 32) & 1) == 0)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "found nothing to terminate");
  }
}

- (void)_handleTerminateApplicationGroup:(id)group forClient:(id)client
{
  v26 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  processHandle = [client processHandle];
  v7 = objc_msgSend_auditToken(processHandle);

  if ([v7 hasEntitlement:@"com.apple.multitasking.termination"])
  {
    payload = [groupCopy payload];
    LODWORD(v9) = xpc_dictionary_get_int64(payload, *MEMORY[0x1E699FA60]);
    int64 = xpc_dictionary_get_int64(payload, *MEMORY[0x1E699FA68]);
    v11 = xpc_dictionary_get_BOOL(payload, *MEMORY[0x1E699FA70]);
    v12 = BSDeserializeStringFromXPCDictionaryWithKey();
    v13 = FBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [v7 pid];
      v14 = BSProcessDescriptionForPID();
      v9 = v9;
      v15 = FBSApplicationTerminationGroupDescription();
      *buf = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Request received from %{public}@ to terminate %{public}@: %{public}@", buf, 0x20u);
    }

    else
    {
      v9 = v9;
    }

    v17 = +[FBSystemService sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_26;
    v18[3] = &unk_1E783B218;
    v19 = groupCopy;
    [v17 terminateApplicationGroup:v9 forReason:int64 andReport:v11 withDescription:v12 completion:v18];
  }

  else
  {
    v16 = FBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"com.apple.multitasking.termination";
      _os_log_impl(&dword_1A89DD000, v16, OS_LOG_TYPE_DEFAULT, "Entitlement %@ required to kill applications.", buf, 0xCu);
    }

    [groupCopy sendReplyMessageWithPacker:&__block_literal_global_25];
  }
}

void __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA40];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v2, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "client not entitled");
}

uint64_t __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_26(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  xdict = v3;
  xpc_dictionary_set_int64(v3, *MEMORY[0x1E699FA40], v4);
  if ((*(a1 + 32) & 1) == 0)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "found nothing to terminate");
  }
}

- (void)_handleShutdown:(id)shutdown forClient:(id)client
{
  v27 = *MEMORY[0x1E69E9840];
  shutdownCopy = shutdown;
  clientCopy = client;
  shutdownAuthenticator = self->_shutdownAuthenticator;
  v22 = 0;
  v9 = [(FBServiceClientAuthenticator *)shutdownAuthenticator authenticateClient:clientCopy error:&v22];
  v10 = v22;
  if (v9)
  {
    v11 = +[FBSystemService sharedInstance];
    queue = [v11 queue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__FBSystemAppProxyServiceServer__handleShutdown_forClient___block_invoke;
    v18[3] = &unk_1E783B300;
    v19 = shutdownCopy;
    v20 = clientCopy;
    v21 = v11;
    v13 = v11;
    [queue performAsync:v18];
  }

  else
  {
    v13 = FBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = [clientCopy processHandle];
      v15 = FBSProcessPrettyDescription();
      userInfo = [v10 userInfo];
      v17 = [userInfo objectForKey:*MEMORY[0x1E696A588]];
      *buf = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "[FBSystemService] %{public}@ is not permitted to initate system shutdown: %{public}@", buf, 0x16u);
    }
  }
}

void __59__FBSystemAppProxyServiceServer__handleShutdown_forClient___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) payload];
  v3 = BSDeserializeBSXPCEncodableObjectFromXPCDictionary();

  v4 = FBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Request received to shutdown system from client: %{public}@ with options: %{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) processHandle];
  [v6 shutdownWithOptions:v3 origin:v7];
}

- (void)noteClientDidConnect:(id)connect withMessage:(id)message
{
  v5 = MEMORY[0x1E699FCF8];
  connectCopy = connect;
  v8 = [v5 messageWithPacker:&__block_literal_global_29];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:connectCopy];

  [(FBSServiceFacility *)self sendMessage:v8 withType:0 toClients:v7];
}

void __66__FBSystemAppProxyServiceServer_noteClientDidConnect_withMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698E740];
  v3 = a2;
  v4 = [v2 processHandle];
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)noteDidReceiveMessage:(id)message withType:(int64_t)type fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  if (!clientCopy)
  {
    [FBSystemAppProxyServiceServer noteDidReceiveMessage:a2 withType:self fromClient:?];
  }

  v10 = clientCopy;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        [(FBSystemAppProxyServiceServer *)self _handleGetPasscodeLockedOrBlockedStatus:messageCopy forClient:clientCopy];
      }

      else if (type == 2)
      {
        [(FBSystemAppProxyServiceServer *)self _handleGetProcessHandle:messageCopy forClient:clientCopy];
      }
    }

    else
    {
      [(FBSystemAppProxyServiceServer *)self _handleSystemApplicationBundleIdentifier:messageCopy forClient:clientCopy];
    }
  }

  else if (type > 4)
  {
    if (type == 5)
    {
      [(FBSystemAppProxyServiceServer *)self _handleTerminateApplicationGroup:messageCopy forClient:clientCopy];
    }

    else if (type == 6)
    {
      [(FBSystemAppProxyServiceServer *)self _handleShutdown:messageCopy forClient:clientCopy];
    }
  }

  else if (type == 3)
  {
    [(FBSystemAppProxyServiceServer *)self _handleActions:messageCopy forClient:clientCopy];
  }

  else
  {
    [(FBSystemAppProxyServiceServer *)self _handleTerminateApplication:messageCopy forClient:clientCopy];
  }
}

- (void)noteDidReceiveMessage:(const char *)a1 withType:(uint64_t)a2 fromClient:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"client"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSystemAppProxyServiceServer.m";
    v16 = 1024;
    v17 = 254;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end