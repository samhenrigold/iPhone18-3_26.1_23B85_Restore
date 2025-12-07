@interface TRIRunningXPCActivityDescriptor
- (TRIRunningXPCActivityDescriptor)initWithActivity:(id)activity capabilities:(unint64_t)capabilities name:(id)name;
- (id)initForImmediateWorkWithCapabilities:(unint64_t)capabilities;
@end

@implementation TRIRunningXPCActivityDescriptor

- (TRIRunningXPCActivityDescriptor)initWithActivity:(id)activity capabilities:(unint64_t)capabilities name:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  v12 = nameCopy;
  if (activityCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCActivitySupport.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"activity"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCActivitySupport.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v34.receiver = self;
  v34.super_class = TRIRunningXPCActivityDescriptor;
  v13 = [(TRIRunningXPCActivityDescriptor *)&v34 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_activity, activity);
    objc_storeStrong(&v14->_name, name);
    v14->_capabilities = capabilities;
    v14->_generationCount = atomic_fetch_add(nextActivityGenerationCount, 1u);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__TRIRunningXPCActivityDescriptor_initWithActivity_capabilities_name___block_invoke;
    v31[3] = &unk_279DE01E0;
    v15 = activityCopy;
    v32 = v15;
    v16 = v12;
    v33 = v16;
    v17 = MEMORY[0x2743948D0](v31);
    shouldDefer = v14->_shouldDefer;
    v14->_shouldDefer = v17;

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __70__TRIRunningXPCActivityDescriptor_initWithActivity_capabilities_name___block_invoke_23;
    v28[3] = &unk_279DE0208;
    v29 = v15;
    v19 = v16;
    v30 = v19;
    v20 = MEMORY[0x2743948D0](v28);
    completion = v14->_completion;
    v14->_completion = v20;

    if (![v19 UTF8String])
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v14 file:@"TRIXPCActivitySupport.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"txnName"}];
    }

    v22 = os_transaction_create();
    txn = v14->_txn;
    v14->_txn = v22;
  }

  return v14;
}

BOOL __70__TRIRunningXPCActivityDescriptor_initWithActivity_capabilities_name___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  should_defer = xpc_activity_should_defer(*(a1 + 32));
  if (should_defer)
  {
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "Deferral requested for activity %{public}@", &v6, 0xCu);
    }
  }

  return should_defer;
}

void __70__TRIRunningXPCActivityDescriptor_initWithActivity_capabilities_name___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  state = xpc_activity_get_state(*(a1 + 32));
  if (a2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  v6 = xpc_activity_set_state(*(a1 + 32), v5);
  v7 = TRILogCategory_Server();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [TRIXPCActivitySupport nameForActivityState:v5];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "XPC activity %{public}@ completion with state %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 40);
    v12 = [TRIXPCActivitySupport nameForActivityState:state];
    v13 = [TRIXPCActivitySupport nameForActivityState:v5];
    v14 = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "XPC activity %{public}@ completion: unable to transition state %{public}@ --> %{public}@", &v14, 0x20u);
  }
}

- (id)initForImmediateWorkWithCapabilities:(unint64_t)capabilities
{
  v18.receiver = self;
  v18.super_class = TRIRunningXPCActivityDescriptor;
  v5 = [(TRIRunningXPCActivityDescriptor *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v9 = [v6 stringWithFormat:@"com.apple.triald.immediate.%@", uUIDString];
    name = v5->_name;
    v5->_name = v9;

    activity = v5->_activity;
    v5->_activity = 0;

    shouldDefer = v5->_shouldDefer;
    v5->_shouldDefer = &__block_literal_global_7;

    completion = v5->_completion;
    v5->_completion = &__block_literal_global_35;

    v5->_capabilities = capabilities;
    if (![(NSString *)v5->_name UTF8String])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"TRIXPCActivitySupport.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"txnName"}];
    }

    v14 = os_transaction_create();
    txn = v5->_txn;
    v5->_txn = v14;
  }

  return v5;
}

void __72__TRIRunningXPCActivityDescriptor_initForImmediateWorkWithCapabilities___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "internal testing activity completing with status %tu", &v4, 0xCu);
  }
}

@end