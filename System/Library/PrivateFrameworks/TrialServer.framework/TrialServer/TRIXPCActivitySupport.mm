@interface TRIXPCActivitySupport
+ (BOOL)unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor:(id)descriptor;
+ (id)_registeredActivities;
+ (id)nameForActivityState:(int64_t)state;
+ (void)assertRegistrationOfLaunchdPlistActivities:(id)activities;
+ (void)registerActivityWithLaunchDaemonDescriptor:(id)descriptor checkInBlock:(id)block asyncHandler:(id)handler;
@end

@implementation TRIXPCActivitySupport

+ (id)nameForActivityState:(int64_t)state
{
  if (state >= 6)
  {
    state = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"XPC_ACTIVITY_STATE_%ld", state];
  }

  else
  {
    state = off_279DE0330[state];
  }

  return state;
}

+ (id)_registeredActivities
{
  if (qword_2815976E0 != -1)
  {
    dispatch_once(&qword_2815976E0, &__block_literal_global_110);
  }

  v3 = _MergedGlobals_31;

  return v3;
}

void __46__TRIXPCActivitySupport__registeredActivities__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = _MergedGlobals_31;
  _MergedGlobals_31 = v3;

  objc_autoreleasePoolPop(v0);
}

+ (void)registerActivityWithLaunchDaemonDescriptor:(id)descriptor checkInBlock:(id)block asyncHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  blockCopy = block;
  handlerCopy = handler;
  name = [descriptorCopy name];
  v13 = +[TRIXPCActivitySupport _registeredActivities];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke;
  v30[3] = &unk_279DE0270;
  v14 = name;
  v31 = v14;
  v15 = handlerCopy;
  v32 = v15;
  [v13 runWithLockAcquired:v30];
  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "register xpc activity handler for %{public}@", buf, 0xCu);
  }

  uTF8String = [v14 UTF8String];
  if (!uTF8String)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCActivitySupport.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"utf8Name"}];
  }

  v18 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke_117;
  handler[3] = &unk_279DE0298;
  v25 = v14;
  v26 = descriptorCopy;
  v28 = v15;
  selfCopy = self;
  v27 = blockCopy;
  v19 = v15;
  v20 = descriptorCopy;
  v21 = blockCopy;
  v22 = v14;
  xpc_activity_register(uTF8String, v18, handler);
}

void __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = MEMORY[0x2743948D0](v3);
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

void __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke_117(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = [MEMORY[0x277D42598] isClassCLocked];
    v10 = TRILogCategory_Server();
    v11 = v10;
    if (!v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v23 = 138543362;
        v24 = v17;
        _os_log_impl(&dword_26F567000, &v11->super, OS_LOG_TYPE_DEFAULT, "Run activity for %{public}@", &v23, 0xCu);
      }

      v11 = -[TRIRunningXPCActivityDescriptor initWithActivity:capabilities:name:]([TRIRunningXPCActivityDescriptor alloc], "initWithActivity:capabilities:name:", v3, [*(a1 + 40) supportedTaskCapabilities], *(a1 + 32));
      v18 = xpc_activity_get_state(v3);
      if (!xpc_activity_set_state(v3, 4))
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 32);
          v21 = [*(a1 + 64) nameForActivityState:v18];
          v22 = [*(a1 + 64) nameForActivityState:4];
          v23 = 138543874;
          v24 = v20;
          v25 = 2114;
          v26 = v21;
          v27 = 2114;
          v28 = v22;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "XPC activity %{public}@ start: unable to transition state %{public}@ --> %{public}@", &v23, 0x20u);
        }
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_20;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v23 = 138543362;
      v24 = v12;
      v13 = "Attempted to run activity %{public}@ before first unlock, doing nothing";
      p_super = &v11->super;
      v15 = 12;
LABEL_12:
      _os_log_error_impl(&dword_26F567000, p_super, OS_LOG_TYPE_ERROR, v13, &v23, v15);
    }

LABEL_20:

    goto LABEL_21;
  }

  v5 = state;
  if (state)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v23 = 138543618;
      v24 = v16;
      v25 = 2048;
      v26 = v5;
      v13 = "%{public}@ - unexpected xpc activity state: %ld";
      p_super = &v11->super;
      v15 = 22;
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v23 = 138543362;
    v24 = v7;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Checking in for %{public}@", &v23, 0xCu);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

LABEL_21:
}

+ (void)assertRegistrationOfLaunchdPlistActivities:(id)activities
{
  activitiesCopy = activities;
  v6 = +[TRIXPCActivitySupport _registeredActivities];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__TRIXPCActivitySupport_assertRegistrationOfLaunchdPlistActivities___block_invoke;
  v8[3] = &unk_279DE02C0;
  v9 = activitiesCopy;
  v10 = a2;
  selfCopy = self;
  v7 = activitiesCopy;
  [v6 runWithLockAcquired:v8];
}

void __68__TRIXPCActivitySupport_assertRegistrationOfLaunchdPlistActivities___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v3 allKeys];
  v6 = [v4 initWithArray:v5];

  if (([*(a1 + 32) isSubsetOfSet:v6] & 1) == 0)
  {
    v15 = v3;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            v13 = TRILogCategory_Server();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v21 = v12;
              _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "descriptor %{public}@ is not registered", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"TRIXPCActivitySupport.m" lineNumber:216 description:@"failed assertRegistrationOfLaunchdPlistActivities"];

    v3 = v15;
  }
}

+ (BOOL)unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor:(id)descriptor
{
  v32 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v6 = +[TRIXPCActivitySupport _registeredActivities];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke;
  v21[3] = &unk_279DE02E8;
  v23 = &v24;
  v7 = descriptorCopy;
  v22 = v7;
  [v6 runWithLockAcquired:v21];
  v8 = v25[5];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86250], 0);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86270], 0);
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = [v7 name];
      *buf = 138543362;
      v31 = name;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Registering TOTALLY SKETCHY IMMEDIATE ACTIVITY FOR TESTING: %{public}@", buf, 0xCu);
    }

    name2 = [v7 name];
    v13 = name2;
    uTF8String = [name2 UTF8String];

    if (!uTF8String)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCActivitySupport.m" lineNumber:240 description:{@"Expression was unexpectedly nil/false: %@", @"descriptor.name.UTF8String"}];
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke_131;
    handler[3] = &unk_279DE0310;
    v19 = v7;
    v20 = &v24;
    xpc_activity_register(uTF8String, v9, handler);
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      name3 = [v7 name];
      *buf = 138543362;
      v31 = name3;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to immediately schedule %{public}@: activity not yet registered", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);
  return v8 != 0;
}

void __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 name];
  v5 = [v4 objectForKeyedSubscript:v8];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke_131(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) name];
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Running TOTALLY SKETCHY IMMEDIATE ACTIVITY FOR TESTING: %{public}@", &v10, 0xCu);
    }

    v6 = [*(a1 + 32) supportedTaskCapabilities];
    v7 = [TRIRunningXPCActivityDescriptor alloc];
    v8 = [*(a1 + 32) name];
    v9 = [(TRIRunningXPCActivityDescriptor *)v7 initWithActivity:v3 capabilities:v6 | 0x1B name:v8];

    xpc_activity_set_state(v3, 4);
    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }
}

@end