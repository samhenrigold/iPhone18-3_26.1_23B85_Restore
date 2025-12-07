@interface AMUIPosterUpdater
+ (id)defaultUpdater;
- (AMUIPosterUpdater)init;
- (BOOL)updateInfograph:(id)infograph forPosterConfiguration:(id)configuration completion:(id)completion;
- (void)_clearInflightAndFireNextRequest;
- (void)_lock_fireInfographUpdate:(id)update;
@end

@implementation AMUIPosterUpdater

+ (id)defaultUpdater
{
  if (defaultUpdater_onceToken != -1)
  {
    +[AMUIPosterUpdater defaultUpdater];
  }

  v3 = defaultUpdater_defaultUpdater;

  return v3;
}

uint64_t __35__AMUIPosterUpdater_defaultUpdater__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultUpdater_defaultUpdater;
  defaultUpdater_defaultUpdater = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (AMUIPosterUpdater)init
{
  v3.receiver = self;
  v3.super_class = AMUIPosterUpdater;
  result = [(AMUIPosterUpdater *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)updateInfograph:(id)infograph forPosterConfiguration:(id)configuration completion:(id)completion
{
  v35[1] = *MEMORY[0x277D85DE8];
  infographCopy = infograph;
  configurationCopy = configuration;
  completionCopy = completion;
  v12 = infographCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v12)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  v13 = configurationCopy;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!v13)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  if (!completionCopy)
  {
    [AMUIPosterUpdater updateInfograph:a2 forPosterConfiguration:? completion:?];
  }

  v14 = [v13 pr_loadAmbientWidgetLayoutWithError:0];
  widgetLayoutIconState = [v14 widgetLayoutIconState];
  v16 = [widgetLayoutIconState isEqual:v12];

  if (v16)
  {
    completionCopy[2](completionCopy, v13, 0);
  }

  else
  {
    v17 = [_AMUIPosterUpdate alloc];
    v18 = [MEMORY[0x277D3E9C8] posterUpdateAmbientWidgets:v12];
    v34 = @"infograph";
    v35[0] = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v20 = [(_AMUIPosterUpdate *)v17 initWithPosterConfiguration:v13 update:v18 userInfo:v19];

    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_inflightInfographConfigurationUpdate)
    {
      p_lock_pendingInfographConfigurationUpdate = &self->_lock_pendingInfographConfigurationUpdate;
      if (self->_lock_pendingInfographConfigurationUpdate)
      {
        v23 = [(_AMUIPosterUpdate *)v20 isEqual:?];
        v24 = v23;
        v25 = AMUILogInfograph(v23);
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
        if (v24)
        {
          if (v26)
          {
            [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
          }

          [(_AMUIPosterUpdate *)*p_lock_pendingInfographConfigurationUpdate appendCompletion:completionCopy];
        }

        else
        {
          if (v26)
          {
            [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
          }

          v29 = *p_lock_pendingInfographConfigurationUpdate;
          v30 = v20;
          v31 = *p_lock_pendingInfographConfigurationUpdate;
          *p_lock_pendingInfographConfigurationUpdate = v30;
          v32 = v29;

          [(_AMUIPosterUpdate *)v30 adoptCompletionsFromStaleUpdate:v32];
          [(_AMUIPosterUpdate *)v32 cancel];
        }
      }

      else
      {
        v28 = AMUILogInfograph(v21);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
        }

        objc_storeStrong(&self->_lock_pendingInfographConfigurationUpdate, v20);
      }
    }

    else
    {
      v27 = AMUILogInfograph([(_AMUIPosterUpdate *)v20 appendCompletion:completionCopy]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [AMUIPosterUpdater updateInfograph:forPosterConfiguration:completion:];
      }

      [(AMUIPosterUpdater *)self _lock_fireInfographUpdate:v20];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return 1;
}

- (void)_clearInflightAndFireNextRequest
{
  v3 = AMUILogInfograph(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [AMUIPosterUpdater _clearInflightAndFireNextRequest];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_inflightInfographConfigurationUpdate = self->_lock_inflightInfographConfigurationUpdate;
  self->_lock_inflightInfographConfigurationUpdate = 0;

  lock_pendingInfographConfigurationUpdate = self->_lock_pendingInfographConfigurationUpdate;
  self->_lock_pendingInfographConfigurationUpdate = 0;
  v6 = lock_pendingInfographConfigurationUpdate;

  [(AMUIPosterUpdater *)self _lock_fireInfographUpdate:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_fireInfographUpdate:(id)update
{
  updateCopy = update;
  if (self->_lock_inflightInfographConfigurationUpdate)
  {
    [AMUIPosterUpdater _lock_fireInfographUpdate:a2];
  }

  objc_storeStrong(&self->_lock_inflightInfographConfigurationUpdate, update);
  v8 = AMUILogInfograph(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AMUIPosterUpdater _lock_fireInfographUpdate:];
  }

  lock_service = self->_lock_service;
  if (updateCopy)
  {
    if (!lock_service)
    {
      v10 = objc_opt_new();
      v11 = self->_lock_service;
      self->_lock_service = v10;
    }

    objc_initWeak(&location, self);
    v12 = self->_lock_service;
    posterConfiguration = [updateCopy posterConfiguration];
    update = [updateCopy update];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke;
    v15[3] = &unk_278C760B8;
    objc_copyWeak(&v17, &location);
    v16 = updateCopy;
    [(PRSService *)v12 updatePosterConfiguration:posterConfiguration update:update completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_lock_service = 0;
  }
}

void __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AMUILogInfograph(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_1(v9, v10);
    }
  }

  else if (v11)
  {
    __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_2(v7, v8, v10);
  }

  objc_copyWeak(&v15, (a1 + 40));
  v12 = v9;
  v13 = *(a1 + 32);
  v14 = v7;
  BSDispatchMain();

  objc_destroyWeak(&v15);
}

uint64_t __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _clearInflightAndFireNextRequest];

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 fireCompletionBlocksWithUpdatedPosterConfiguration:v5 error:v4];
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSDictionaryClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateInfograph:(char *)a1 forPosterConfiguration:completion:.cold.9(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_fireInfographUpdate:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_inflightInfographConfigurationUpdate == nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2_0(&dword_23F38B000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Failed to update infograph configuration with error:%@", &v2, 0xCu);
}

void __47__AMUIPosterUpdater__lock_fireInfographUpdate___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23F38B000, log, OS_LOG_TYPE_ERROR, "Successfully updated infograph configuration:%@ with update:%@", &v3, 0x16u);
}

@end