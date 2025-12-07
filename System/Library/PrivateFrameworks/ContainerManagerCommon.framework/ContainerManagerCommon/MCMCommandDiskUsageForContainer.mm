@interface MCMCommandDiskUsageForContainer
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandDiskUsageForContainer)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandDiskUsageForContainer

- (void)execute
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v46 = 1;
  v4 = _os_feature_enabled_impl();
  concreteContainerIdentity = [(MCMCommandDiskUsageForContainer *)self concreteContainerIdentity];
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v45 = 0;
  v8 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v45];
  v9 = v45;

  metadataMinimal = [v8 metadataMinimal];
  if (metadataMinimal)
  {
    v36 = v9;
    containerClass = [concreteContainerIdentity containerClass];
    v12 = 0;
    if (containerClass <= 0xE && ((1 << containerClass) & 0x412A) != 0)
    {
      v13 = [MCMCommandInfoValueForKey alloc];
      context2 = [(MCMCommand *)self context];
      v15 = [(MCMCommandInfoValueForKey *)v13 initWithKey:@"StaticDiskUsage" concreteContainerIdentity:concreteContainerIdentity context:context2 resultPromise:0];

      v12 = [(MCMCommandInfoValueForKey *)v15 infoValueForKeyWithError:&v46];
      if (!v12 && v46 != 24)
      {
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v48 = concreteContainerIdentity;
          v49 = 2048;
          v50 = v46;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Error looking up info value for identity: %@: %llu", buf, 0x16u);
        }
      }
    }

    objc_opt_class();
    v17 = v12;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v37 = v3;

    if (!v18)
    {
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        context3 = [(MCMCommand *)self context];
        clientIdentity = [context3 clientIdentity];
        *buf = 138412290;
        v48 = clientIdentity;
        _os_log_debug_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_DEBUG, "Reply to disk usage handed off to the slow workloop for client [%@]", buf, 0xCu);
      }

      reply = [(MCMCommand *)self reply];
      context4 = [(MCMCommand *)self context];
      clientIdentity2 = [context4 clientIdentity];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __42__MCMCommandDiskUsageForContainer_execute__block_invoke;
      v39[3] = &unk_1E86B04C0;
      v40 = metadataMinimal;
      v44 = v4;
      v41 = concreteContainerIdentity;
      selfCopy = self;
      v43 = v8;
      [reply handoffToSlowWorkloopforClientIdentity:clientIdentity2 withBlock:v39];

      v21 = v40;
      v9 = v36;
      v3 = v37;
      goto LABEL_23;
    }

    v38 = concreteContainerIdentity;
    unsignedLongLongValue = [v17 unsignedLongLongValue];
    v23 = [MCMResultDiskUsageForContainer alloc];
    containerIdentity = [v8 containerIdentity];
    containerClass2 = [containerIdentity containerClass];
    v19 = v8;
    containerIdentity2 = [v8 containerIdentity];
    [containerIdentity2 userIdentity];
    v28 = v27 = metadataMinimal;
    v21 = -[MCMResultDiskUsageForContainer initWithDiskUsageBytes:descendants:containerClass:personaType:](v23, "initWithDiskUsageBytes:descendants:containerClass:personaType:", unsignedLongLongValue, 0, containerClass2, [v28 personaType]);

    metadataMinimal = v27;
    v9 = v36;
    v3 = v37;
    if (v21)
    {
LABEL_19:
      resultPromise = [(MCMCommand *)self resultPromise];
      [resultPromise completeWithResult:v21];

      v8 = v19;
      concreteContainerIdentity = v38;
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
    v38 = concreteContainerIdentity;
    v19 = v8;
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v48 = v9;
      v49 = 2112;
      v50 = v38;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "No Container with identity: error = %@, identity = %@", buf, 0x16u);
    }

    v21 = [(MCMResultBase *)[MCMResultDiskUsageForContainer alloc] initWithError:v9];
    v17 = 0;
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v8 = v19;
  concreteContainerIdentity = v38;
LABEL_24:

  objc_autoreleasePoolPop(v3);
}

void __42__MCMCommandDiskUsageForContainer_execute__block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = +[MCMTestLocks sharedInstance];
  [v2 waitOnLock:8];

  v3 = +[MCMTestLocks sharedInstance];
  [v3 waitOnLock:2];

  v4 = +[MCMFileManager defaultManager];
  v5 = [*(a1 + 32) containerPath];
  v6 = [v5 containerRootURL];
  v7 = [v4 fastDiskUsageForURL:v6];
  v9 = v8;

  if ((*(a1 + 64) & 1) == 0)
  {
    v10 = [*(a1 + 40) containerClass];
    if (v10 <= 0xE && ((1 << v10) & 0x412A) != 0)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__5365;
      v36 = __Block_byref_object_dispose__5366;
      v37 = 0;
      v11 = [*(a1 + 48) reply];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __42__MCMCommandDiskUsageForContainer_execute__block_invoke_8;
      v26[3] = &unk_1E86B0498;
      v30 = v7;
      v31 = v9;
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v27 = v12;
      v28 = v13;
      v29 = &v32;
      [v11 dispatchSyncToFastWorkloopWithBlock:v26];

      v14 = [v33[5] result];
      v15 = [v14 error];

      if (v15)
      {
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v24 = *(a1 + 40);
          v25 = [v14 error];
          *buf = 138412546;
          v39 = v24;
          v40 = 2112;
          v41 = v25;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Error setting info value for identity: %@: %@", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v32, 8);
    }
  }

  v17 = [MCMResultDiskUsageForContainer alloc];
  v18 = [*(a1 + 56) containerIdentity];
  v19 = [v18 containerClass];
  v20 = [*(a1 + 56) containerIdentity];
  v21 = [v20 userIdentity];
  v22 = -[MCMResultDiskUsageForContainer initWithDiskUsageBytes:descendants:containerClass:personaType:](v17, "initWithDiskUsageBytes:descendants:containerClass:personaType:", v7, v9, v19, [v21 personaType]);

  v23 = [*(a1 + 48) resultPromise];
  [v23 completeWithResult:v22];
}

void __42__MCMCommandDiskUsageForContainer_execute__block_invoke_8(uint64_t a1)
{
  v2 = [MCMCommandSetInfoValue alloc];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) context];
  v6 = [(MCMCommandSetInfoValue *)v2 initWithKey:@"StaticDiskUsage" value:v3 containerIdentity:v4 context:v5 resultPromise:*(*(*(a1 + 48) + 8) + 40)];

  [(MCMCommandSetInfoValue *)v6 execute];
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  concreteContainerIdentity = [(MCMCommandDiskUsageForContainer *)self concreteContainerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:0 containerIdentity:concreteContainerIdentity part:0 partDomain:0 access:0];

  return v6 != 0;
}

- (MCMCommandDiskUsageForContainer)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandDiskUsageForContainer;
  v9 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    concreteContainerIdentity = [messageCopy concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = concreteContainerIdentity;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end