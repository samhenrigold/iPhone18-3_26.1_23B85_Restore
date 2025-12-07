@interface MCMCommandCrashTest
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandCrashTest)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandCrashTest

- (void)execute
{
  v75 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = containermanager_copy_global_configuration();
  csIdentifier = [v3 csIdentifier];

  context = [(MCMCommand *)self context];
  v68 = 1;
  v6 = containermanager_copy_global_configuration();
  v7 = 12;
  v8 = [v6 dispositionForContainerClass:12];

  if (v8 != 1)
  {
    v9 = containermanager_copy_global_configuration();
    v7 = 10;
    [v9 dispositionForContainerClass:10];
  }

  context2 = [(MCMCommand *)self context];
  globalConfiguration = [context2 globalConfiguration];
  staticConfig = [globalConfiguration staticConfig];
  v13 = [staticConfig configForContainerClass:v7];

  userIdentityCache = [context userIdentityCache];
  userIdentityForPersonalPersona = [userIdentityCache userIdentityForPersonalPersona];
  active_platform = dyld_get_active_platform();
  context3 = [(MCMCommand *)self context];
  userIdentityCache2 = [context3 userIdentityCache];
  v63 = v13;
  v19 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentityForPersonalPersona identifier:csIdentifier containerConfig:v13 platform:active_platform userIdentityCache:userIdentityCache2 error:&v68];

  containerFactory = [context containerFactory];
  v67 = 0;
  v21 = [containerFactory containerForContainerIdentity:v19 createIfNecessary:1 error:&v67];
  v22 = v67;

  v66 = v22;
  v23 = [v21 metadataWithError:&v66];
  v24 = v66;

  v64 = csIdentifier;
  if (!v23)
  {
    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = csIdentifier;
      v73 = 2112;
      v74 = v24;
      _os_log_error_impl(&dword_1DF2C3000, &v31->super, OS_LOG_TYPE_ERROR, "Failed to create or lookup lookup existing container for retry test: %@; error = %@", buf, 0x16u);
    }

    v62 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_20;
  }

  v61 = v21;
  if (![(MCMCommandCrashTest *)self crashCount])
  {
    v34 = v19;
    v62 = 0;
    v33 = 0;
LABEL_16:
    v31 = objc_alloc_init(MCMResultPromise);
    containerIdentity = [v23 containerIdentity];
    v69 = containerIdentity;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
    v32 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v40 removeAllCodeSignInfo:0 context:context resultPromise:v31];

    [v32 execute];
    result = [(MCMResultPromise *)v31 result];
    error = [result error];

    if (!error)
    {

      v46 = objc_opt_new();
      v19 = v34;
      v21 = v61;
      goto LABEL_22;
    }

    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      containerPath = [v23 containerPath];
      containerRootURL = [containerPath containerRootURL];
      path = [containerRootURL path];
      result2 = [(MCMResultPromise *)v31 result];
      error2 = [result2 error];
      *buf = 138412546;
      *&buf[4] = path;
      v73 = 2112;
      v74 = error2;
      v50 = error2;
      _os_log_error_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_ERROR, "Failed to delete retry container at [%@]; error = %@", buf, 0x16u);
    }

    result3 = [(MCMResultPromise *)v31 result];
    error3 = [result3 error];

    v24 = error3;
    v19 = v34;
    v21 = v61;
LABEL_20:

    v46 = [[MCMResultBase alloc] initWithError:v24];
LABEL_22:
    v47 = container_log_handle_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = 0;
      v73 = 2112;
      v74 = v24;
      _os_log_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEFAULT, "Restart result: %llu, error = %@", buf, 0x16u);
    }

    resultPromise = [(MCMCommand *)self resultPromise];
    [resultPromise completeWithResult:v46];

    objc_autoreleasePoolPop(context);
    return;
  }

  info = [v23 info];
  v26 = [info objectForKeyedSubscript:@"CrashCounter"];

  v62 = v26;
  if (v26)
  {
    info2 = [v23 info];
    v28 = [info2 objectForKeyedSubscript:@"CrashCounter"];
    unsignedIntValue = [v28 unsignedIntValue];

    crashCount = unsignedIntValue - 1;
  }

  else
  {
    crashCount = [(MCMCommandCrashTest *)self crashCount];
  }

  v35 = container_log_handle_for_category();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = crashCount;
    _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Restarts remaining in retry test: %llu", buf, 0xCu);
  }

  v36 = [MCMCommandSetInfoValue alloc];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:crashCount];
  containerIdentity2 = [v23 containerIdentity];
  v33 = [(MCMCommandSetInfoValue *)v36 initWithKey:@"CrashCounter" value:v37 containerIdentity:containerIdentity2 context:context resultPromise:0];

  [(MCMCommandSetInfoValue *)v33 execute];
  if (!crashCount)
  {
    v34 = v19;
    goto LABEL_16;
  }

  if ([(MCMCommandCrashTest *)self setTestLocks])
  {
    v51 = +[MCMTestLocks sharedInstance];
    [v51 setEnabled:1];
    [v51 acquireLock:{-[MCMCommandCrashTest setTestLocks](self, "setTestLocks")}];
  }

  [objc_alloc_init(MCMRuntimeState) persist];
  v52 = container_log_handle_for_category();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_DEFAULT, "Restarting", buf, 2u);
  }

  *buf = 1;
  if (sysctlbyname("kern.crash_behavior_test_mode", 0, 0, buf, 8uLL) < 0)
  {
    v53 = *__error();
    v54 = container_log_handle_for_category();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *v70 = 67109120;
      v71 = v53;
      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Could not enable crash test mode, error = %{darwin.errno}d", v70, 8u);
    }
  }

  usleep(0x7A120u);
  v55 = abort_with_reason();
  [(MCMCommandCrashTest *)v55 preflightClientAllowed];
}

- (BOOL)preflightClientAllowed
{
  v3 = containermanager_copy_global_configuration();
  isInternalImage = [v3 isInternalImage];

  if (!isInternalImage)
  {
    return 0;
  }

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToTest = [clientIdentity isAllowedToTest];

  return isAllowedToTest;
}

- (MCMCommandCrashTest)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MCMCommandCrashTest;
  v9 = [(MCMCommand *)&v11 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v9->_crashCount = [messageCopy crashCount];
    v9->_setTestLocks = [messageCopy setTestLocks];
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end