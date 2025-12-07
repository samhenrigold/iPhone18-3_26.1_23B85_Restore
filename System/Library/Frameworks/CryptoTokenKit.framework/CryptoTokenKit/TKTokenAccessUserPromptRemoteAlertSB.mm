@interface TKTokenAccessUserPromptRemoteAlertSB
+ (BOOL)isAvailable;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (int64_t)promptUserToEvaluateRequest:(id)request error:(id *)error;
- (void)registerTokenAccessRequestCorrelationID:(id)d access:(int64_t)access reply:(id)reply;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation TKTokenAccessUserPromptRemoteAlertSB

+ (BOOL)isAvailable
{
  BSAuditTokenClass = getBSAuditTokenClass();
  if (BSAuditTokenClass && (BSAuditTokenClass = getBSProcessHandleClass()) != 0)
  {
    SBSRemoteAlertConfigurationContextClass = getSBSRemoteAlertConfigurationContextClass();
    if (SBSRemoteAlertConfigurationContextClass)
    {
      SBSRemoteAlertConfigurationContextClass = getSBSRemoteAlertDefinitionClass();
      if (SBSRemoteAlertConfigurationContextClass)
      {
        SBSRemoteAlertConfigurationContextClass = getSBSRemoteAlertHandleClass();
        if (SBSRemoteAlertConfigurationContextClass)
        {
          SBSRemoteAlertConfigurationContextClass = getSBSRemoteAlertPresentationTargetClass();
          if (SBSRemoteAlertConfigurationContextClass)
          {
            SBSRemoteAlertConfigurationContextClass = getSBSRemoteAlertActivationContextClass();
            if (SBSRemoteAlertConfigurationContextClass)
            {
              return 1;
            }
          }
        }
      }
    }

    v5 = TK_LOG_user_prompt(SBSRemoteAlertConfigurationContextClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[(TKTokenAccessUserPromptRemoteAlertSB *)v5];
    }
  }

  else
  {
    v5 = TK_LOG_user_prompt(BSAuditTokenClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[(TKTokenAccessUserPromptRemoteAlertSB *)v5];
    }
  }

  return 0;
}

- (int64_t)promptUserToEvaluateRequest:(id)request error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  self->_grantedAccess = 0;
  objc_storeStrong(&self->_accessRequest, request);
  if (self->_remoteAlertHandle)
  {
    [TKTokenAccessUserPromptRemoteAlertSB promptUserToEvaluateRequest:a2 error:self];
  }

  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  [anonymousListener setDelegate:self];
  [anonymousListener resume];
  v42 = objc_alloc_init(getSBSRemoteAlertConfigurationContextClass());
  endpoint = [anonymousListener endpoint];
  _endpoint = [endpoint _endpoint];
  [v42 setXpcEndpoint:_endpoint];

  v38 = [objc_alloc(getSBSRemoteAlertDefinitionClass()) initWithServiceName:@"com.apple.ctkui" viewControllerClassName:@"TKUITokenAccessPromptVC"];
  v10 = [getSBSRemoteAlertHandleClass() newHandleWithDefinition:v38 configurationContext:v42];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v10;

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self];
  BSAuditTokenClass = getBSAuditTokenClass();
  clientConnection = [requestCopy clientConnection];
  v14 = clientConnection;
  if (clientConnection)
  {
    objc_msgSend_auditToken(clientConnection);
  }

  else
  {
    *location = 0u;
    v45 = 0u;
  }

  v41 = [BSAuditTokenClass tokenFromAuditToken:location];

  v40 = [getBSProcessHandleClass() processHandleForAuditToken:v41];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v15 = getSBSRemoteAlertPresentationTargetPredicateClass_softClass;
  v50 = getSBSRemoteAlertPresentationTargetPredicateClass_softClass;
  if (!getSBSRemoteAlertPresentationTargetPredicateClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    *&v45 = __getSBSRemoteAlertPresentationTargetPredicateClass_block_invoke;
    *(&v45 + 1) = &unk_1E86B6FC0;
    v46 = &v47;
    SpringBoardServicesLibraryCore();
    Class = objc_getClass("SBSRemoteAlertPresentationTargetPredicate");
    *(v46[1] + 24) = Class;
    getSBSRemoteAlertPresentationTargetPredicateClass_softClass = *(v46[1] + 24);
    v15 = v48[3];
  }

  v17 = v15;
  _Block_object_dispose(&v47, 8);
  v18 = [v15 predicateForProcess:v40];
  v19 = [objc_alloc(getSBSRemoteAlertPresentationTargetClass()) initWithTargetPredicate:v18];
  [v19 setShouldDismissOnUILock:1];
  v20 = objc_alloc_init(getSBSRemoteAlertActivationContextClass());
  [v20 setPresentationTarget:v19];
  v21 = [[TKTokenAccessUserPromptInfo alloc] initWithTokenAccessRequest:requestCopy];
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
  v53 = @"kTKTokenAccessUserPromptInfo";
  v54[0] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  [v20 setUserInfo:v23];

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v20];
  v24 = dispatch_semaphore_create(0);
  remoteAlertSemaphore = self->_remoteAlertSemaphore;
  self->_remoteAlertSemaphore = v24;

  objc_initWeak(location, self);
  v26 = self->_remoteAlertSemaphore;
  v27 = dispatch_time(0, 600000000000);
  v28 = dispatch_semaphore_wait(v26, v27);
  if (v28 && (WeakRetained = objc_loadWeakRetained(location), v30 = WeakRetained == 0, WeakRetained, v30))
  {
    v36 = 0;
  }

  else
  {
    if (error)
    {
      grantedAccess = self->_grantedAccess;
      if (grantedAccess != 1)
      {
        if (v28)
        {
          v32 = @"Access request timed out";
        }

        else
        {
          v32 = @"Access request was cancelled";
        }

        if (grantedAccess == 2)
        {
          v33 = @"User denied access";
        }

        else
        {
          v33 = v32;
        }

        v34 = v33;
        v51 = *MEMORY[0x1E696A278];
        v52 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v35];
      }
    }

    [anonymousListener suspend];
    [anonymousListener invalidate];
    v36 = self->_grantedAccess;
  }

  objc_destroyWeak(location);

  return v36;
}

__CFString *__74__TKTokenAccessUserPromptRemoteAlertSB_promptUserToEvaluateRequest_error___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) == 2)
  {
    return @"User denied access";
  }

  if (*(a1 + 40))
  {
    return @"Access request timed out";
  }

  return @"Access request was cancelled";
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1F5A8D070];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    v5 = remoteAlertHandle == activate;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [(TKTokenAccessUserPromptRemoteAlertSB *)a2 remoteAlertHandleDidActivate:?];
  }

  self->_grantedAccess = 0;
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  p_remoteAlertHandle = &self->_remoteAlertHandle;
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    v7 = remoteAlertHandle == deactivate;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
  }

  else
  {
    [TKTokenAccessUserPromptRemoteAlertSB remoteAlertHandleDidDeactivate:];
    remoteAlertHandle = v8;
  }

  [(SBSRemoteAlertHandle *)remoteAlertHandle invalidate];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    v6 = remoteAlertHandle == handle;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [TKTokenAccessUserPromptRemoteAlertSB remoteAlertHandle:didInvalidateWithError:];
    remoteAlertHandle = v8;
  }

  self->_remoteAlertHandle = 0;

  remoteAlertSemaphore = self->_remoteAlertSemaphore;

  dispatch_semaphore_signal(remoteAlertSemaphore);
}

- (void)registerTokenAccessRequestCorrelationID:(id)d access:(int64_t)access reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  correlationID = [(TKTokenAccessRequest *)self->_accessRequest correlationID];
  v12 = [dCopy isEqual:correlationID];

  if ((v12 & 1) == 0)
  {
    [TKTokenAccessUserPromptRemoteAlertSB registerTokenAccessRequestCorrelationID:a2 access:self reply:?];
  }

  correlationID2 = [(TKTokenAccessRequest *)self->_accessRequest correlationID];
  v14 = [dCopy isEqual:correlationID2];

  if (v14)
  {
    self->_grantedAccess = access;
    v15 = [[TKTokenAccessUserPromptInfo alloc] initWithTokenAccessRequest:self->_accessRequest];
    v16 = TK_LOG_user_prompt(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessUserPromptRemoteAlertSB registerTokenAccessRequestCorrelationID:v15 access:&self->_grantedAccess reply:v16];
    }
  }

  replyCopy[2](replyCopy);
  dispatch_semaphore_signal(self->_remoteAlertSemaphore);
}

- (void)promptUserToEvaluateRequest:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:82 description:@"Concurrent remote alerts are not yet supported"];
}

- (void)remoteAlertHandleDidActivate:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:156 description:@"Received message for unexpected alert handle"];
}

- (void)remoteAlertHandleDidDeactivate:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:162 description:@"Received message for unexpected alert handle"];

  *v0 = *v1;
}

- (void)remoteAlertHandle:didInvalidateWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:168 description:@"Received message for unexpected alert handle"];

  *v0 = *v1;
}

- (void)registerTokenAccessRequestCorrelationID:(uint64_t)a1 access:(uint64_t)a2 reply:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKTokenAccessUserPromptRemoteAlertSB.m" lineNumber:179 description:@"Received user response for an unexpected request"];
}

- (void)registerTokenAccessRequestCorrelationID:(void *)a1 access:(uint64_t *)a2 reply:(NSObject *)a3 .cold.2(void *a1, uint64_t *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a1 clientDisplayName];
  v7 = [a1 providerDisplayName];
  v8 = v7;
  v9 = @"unknown";
  v10 = *a2;
  if (*a2 == 2)
  {
    v9 = @"denied";
  }

  v11 = 138412802;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  if (v10 == 1)
  {
    v9 = @"granted";
  }

  v15 = 2112;
  v16 = v9;
  _os_log_debug_impl(&dword_1DF413000, a3, OS_LOG_TYPE_DEBUG, "Request to allow '%@' access to token provided by '%@' was '%@'", &v11, 0x20u);
}

@end