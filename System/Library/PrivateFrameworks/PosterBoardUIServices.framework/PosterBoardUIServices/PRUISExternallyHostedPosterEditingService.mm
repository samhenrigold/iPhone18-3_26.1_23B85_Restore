@interface PRUISExternallyHostedPosterEditingService
+ (BOOL)isExternalEditingSupported;
- (PRUISExternallyHostedPosterEditingService)init;
- (PRUISExternallyHostedPosterEditingServiceDelegate)delegate;
- (id)_serviceInterfaceWithError:(id *)error;
- (void)beginEditingWithRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)didEndEditingWithResponse:(id)response;
- (void)init;
- (void)sendRequestDismissalActionWithRequest:(id)request;
- (void)willEndEditingWithResponse:(id)response;
@end

@implementation PRUISExternallyHostedPosterEditingService

+ (BOOL)isExternalEditingSupported
{
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  v3 = [mEMORY[0x1E698E730] deviceClass] == 2;

  return v3;
}

- (PRUISExternallyHostedPosterEditingService)init
{
  v22.receiver = self;
  v22.super_class = PRUISExternallyHostedPosterEditingService;
  v2 = [(PRUISExternallyHostedPosterEditingService *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v4 = PRUISExternallyHostedPosterEditingServiceInterface(v2);
    v5 = MEMORY[0x1E698F498];
    identifier = [v4 identifier];
    v7 = [v5 endpointForMachName:@"com.apple.posterboardui.services" service:identifier instance:0];

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    if (v7)
    {
      v11 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
      serviceConnection = v3->_serviceConnection;
      v3->_serviceConnection = v11;

      objc_initWeak(&location, v3);
      v13 = v3->_serviceConnection;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__PRUISExternallyHostedPosterEditingService_init__block_invoke;
      v16[3] = &unk_1E83A8D88;
      v17 = v4;
      v18 = v3;
      v19 = v10;
      objc_copyWeak(&v20, &location);
      [(BSServiceConnectionClient *)v13 configureConnection:v16];
      objc_destroyWeak(&v20);

      objc_destroyWeak(&location);
    }

    else
    {
      v14 = PRUISLogRemoteEditing(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PRUISExternallyHostedPosterEditingService *)v10 init];
      }
    }
  }

  return v3;
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v4 = PRUISDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_2;
  v8[3] = &unk_1E83A8D38;
  v9 = *(a1 + 48);
  objc_copyWeak(&v10, (a1 + 56));
  [v3 setInterruptionHandler:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4;
  v5[3] = &unk_1E83A8D60;
  v6 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 56));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v10);
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PRUISLogRemoteEditing(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 138543618;
    v6 = v3;
    v7 = 2048;
    v8 = WeakRetained;
    _os_log_impl(&dword_1CAE63000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> interrupted", &v5, 0x16u);
  }
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4(uint64_t a1)
{
  v2 = PRUISLogRemoteEditing(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4_cold_1(a1);
  }
}

- (void)dealloc
{
  [(PRUISExternallyHostedPosterEditingService *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISExternallyHostedPosterEditingService;
  [(PRUISExternallyHostedPosterEditingService *)&v3 dealloc];
}

- (void)willEndEditingWithResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = responseCopy;
  v5 = responseCopy;
  v6 = WeakRetained;
  BSDispatchMain();
}

- (void)didEndEditingWithResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = responseCopy;
  v5 = responseCopy;
  v6 = WeakRetained;
  BSDispatchMain();
}

- (void)beginEditingWithRequest:(id)request completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v9 = completionCopy;
  if (requestCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRUISExternallyHostedPosterEditingService beginEditingWithRequest:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRUISExternallyHostedPosterEditingService beginEditingWithRequest:completion:];
LABEL_3:
  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [PRUISExternallyHostedPosterEditingService beginEditingWithRequest:completion:];
  }

  v12 = requestCopy;
  v21 = 0;
  v13 = [(PRUISExternallyHostedPosterEditingService *)self _serviceInterfaceWithError:&v21];
  v14 = v21;
  v15 = v14;
  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke;
    v18[3] = &unk_1E83A8DB0;
    v20 = a2;
    v18[4] = self;
    v19 = v9;
    [v13 beginEditingWithEntryPointWrapper:v12 completion:v18];
  }

  else if (v9)
  {
    v14 = (v9)[2](v9, v14);
  }

  if (v15)
  {
    v16 = PRUISLogRemoteEditing(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138543874;
      v23 = v17;
      v24 = 2114;
      selfCopy = self;
      v26 = 2114;
      v27 = v15;
      _os_log_error_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_ERROR, "calling %{public}@ on %{public}@, error: %{public}@", buf, 0x20u);
    }
  }
}

void __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRUISLogRemoteEditing(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendRequestDismissalActionWithRequest:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (!requestCopy)
  {
    [PRUISExternallyHostedPosterEditingService sendRequestDismissalActionWithRequest:];
  }

  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [PRUISExternallyHostedPosterEditingService sendRequestDismissalActionWithRequest:];
  }

  v8 = requestCopy;
  v14 = 0;
  v9 = [(PRUISExternallyHostedPosterEditingService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  v11 = v10;
  if (v9)
  {
    v10 = [v9 sendRequestDismissalActionWithEntryPointWrapper:v8];
  }

  if (v11)
  {
    v12 = PRUISLogRemoteEditing(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138543874;
      v16 = v13;
      v17 = 2114;
      selfCopy = self;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_ERROR, "calling %{public}@ on %{public}@, error: %{public}@", buf, 0x20u);
    }
  }
}

- (id)_serviceInterfaceWithError:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  p_serviceConnection = &self->_serviceConnection;
  [(BSServiceConnectionClient *)self->_serviceConnection activate];
  v6 = *p_serviceConnection;
  v7 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [(BSServiceConnectionClient *)v6 remoteTargetWithLaunchingAssertionAttributes:v8];

  if (!v9)
  {
    v11 = PRUISLogRemoteEditing(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PRUISExternallyHostedPosterEditingService _serviceInterfaceWithError:?];
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *error = [v12 errorWithDomain:v14 code:1 userInfo:0];
    }
  }

  return v9;
}

- (PRUISExternallyHostedPosterEditingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1CAE63000, log, OS_LOG_TYPE_ERROR, "%{public}@:%p> failed to lookup endpoint", &v3, 0x16u);
}

void __49__PRUISExternallyHostedPosterEditingService_init__block_invoke_4_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *v9 = 138543618;
  *&v9[4] = v1;
  *&v9[12] = 2048;
  *&v9[14] = WeakRetained;
  OUTLINED_FUNCTION_1_5(&dword_1CAE63000, v3, v4, "<%{public}@:%p> remotely invalidated", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

- (void)beginEditingWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:@"editingRequest" object:? file:? lineNumber:? description:?];
}

- (void)beginEditingWithRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)beginEditingWithRequest:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __80__PRUISExternallyHostedPosterEditingService_beginEditingWithRequest_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_5();
  v4 = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(*(v1 + 48));
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(&dword_1CAE63000, v0, OS_LOG_TYPE_DEBUG, "received reply to %{public}@ on %{public}@", v3, 0x16u);
}

- (void)sendRequestDismissalActionWithRequest:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:@"editingRequest" object:? file:? lineNumber:? description:?];
}

- (void)sendRequestDismissalActionWithRequest:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_serviceInterfaceWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_5(&dword_1CAE63000, v3, v4, "%{public}@ failed to create proxy for connection: %{public}@", v5, v6, v7, v8);
}

@end