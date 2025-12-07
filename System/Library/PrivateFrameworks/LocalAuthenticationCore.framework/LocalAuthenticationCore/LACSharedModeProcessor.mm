@interface LACSharedModeProcessor
- (BOOL)canProcessRequest:(id)request;
- (LACSharedModeProcessor)initWithReplyQueue:(id)queue dataSource:(id)source policyTraitsManager:(id)manager policyCoordinator:(id)coordinator;
- (void)_processRequest:(id)request completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACSharedModeProcessor

- (LACSharedModeProcessor)initWithReplyQueue:(id)queue dataSource:(id)source policyTraitsManager:(id)manager policyCoordinator:(id)coordinator
{
  queueCopy = queue;
  sourceCopy = source;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = LACSharedModeProcessor;
  v15 = [(LACSharedModeProcessor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_replyQueue, queue);
    objc_storeStrong(&v16->_dataSource, source);
    objc_storeStrong(&v16->_policyTraitsManager, manager);
    objc_storeStrong(&v16->_policyCoordinator, coordinator);
  }

  return v16;
}

- (BOOL)canProcessRequest:(id)request
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [requestCopy acl];
  if (v5 && (v6 = v5, [requestCopy acl], v7 = objc_claimAutoreleasedReturnValue(), v8 = +[LACAccessControl checkACLAllowsAll:](LACAccessControl, "checkACLAllowsAll:", v7), v7, v6, v8))
  {
    v10 = LACLogSharedMode(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ not needed for this request type", &v13, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = [(LACSharedModeProcessor *)self canProcessRequest:requestCopy];
  if (v11)
  {
    v12 = LACLogSharedMode(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ will start", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__LACSharedModeProcessor_processRequest_configuration_completion___block_invoke;
    v14[3] = &unk_1E7A95568;
    objc_copyWeak(&v17, buf);
    v16 = completionCopy;
    v15 = requestCopy;
    [(LACSharedModeProcessor *)self _processRequest:v15 completion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = [LACEvaluationResult resultWithNext:requestCopy];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

void __66__LACSharedModeProcessor_processRequest_configuration_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = LACLogSharedMode(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = 138543362;
    v7 = WeakRetained;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [LACEvaluationResult resultWithNext:*(a1 + 32)];
  (*(v4 + 16))(v4, v5);
}

- (void)_processRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dataSource = self->_dataSource;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__LACSharedModeProcessor__processRequest_completion___block_invoke;
  v15[3] = &unk_1E7A96010;
  v9 = requestCopy;
  v16 = v9;
  v10 = __53__LACSharedModeProcessor__processRequest_completion___block_invoke(v15);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__LACSharedModeProcessor__processRequest_completion___block_invoke_2;
  v12[3] = &unk_1E7A95D98;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [(LACSharedModeDataSource *)dataSource fetchSharedModeWithOptions:v10 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

LACMutableSharedModeDataSourceRequestOptions *__53__LACSharedModeProcessor__processRequest_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LACMutableSharedModeDataSourceRequestOptions);
  v3 = [*(a1 + 32) options];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
  v5 = [v3 objectForKeyedSubscript:v4];
  -[LACMutableSharedModeDataSourceRequestOptions setIsPreflight:](v2, "setIsPreflight:", [v5 BOOLValue]);

  return v2;
}

void __53__LACSharedModeProcessor__processRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [*(WeakRetained + 4) policyTraitsForSharedMode:v3];
    v7 = v5[3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__LACSharedModeProcessor__processRequest_completion___block_invoke_3;
    v8[3] = &unk_1E7A957C0;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [v7 updatePolicyEvaluationWithTraits:v6 completion:v8];

    objc_destroyWeak(&v10);
  }
}

void __53__LACSharedModeProcessor__processRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogSharedMode(v3);
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = 138543618;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%{public}@ Policy update for shared mode finished err=%{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end