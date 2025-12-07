@interface MCMCommandOpenPrimordialDataContainer
+ (Class)incomingMessageClass;
- (MCMCommandOpenPrimordialDataContainer)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandOpenPrimordialDataContainer

- (void)execute
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    context = [(MCMCommand *)self context];
    clientIdentity = [context clientIdentity];
    codeSignInfo = [clientIdentity codeSignInfo];
    identifier = [codeSignInfo identifier];
    containerIdentity = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    containerClass = [containerIdentity containerClass];
    containerIdentity2 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    [containerIdentity2 identifier];
    v40 = v39 = v3;
    extension = [(MCMCommandOpenPrimordialDataContainer *)self extension];
    v42 = "app";
    *buf = 138544130;
    *&buf[12] = 2048;
    *&buf[4] = identifier;
    if (extension)
    {
      v42 = "extension";
    }

    *&buf[14] = containerClass;
    *&buf[22] = 2114;
    *&buf[24] = v40;
    v54 = 2082;
    v55 = v42;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Fetching primordial container for '%{public}@' with identifier '%llu:%{public}@' (%{public}s)", buf, 0x2Au);

    v3 = v39;
  }

  error = [(MCMCommandOpenPrimordialDataContainer *)self error];

  if (error)
  {
    error2 = [(MCMCommandOpenPrimordialDataContainer *)self error];
LABEL_4:
    existed = 0;
    v8 = 0;
LABEL_5:
    containerDataURL = 0;
    goto LABEL_6;
  }

  error2 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];

  if (!error2)
  {
    goto LABEL_4;
  }

  context2 = [(MCMCommand *)self context];
  containerFactory = [context2 containerFactory];
  containerIdentity3 = [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
  v52 = 0;
  v8 = [containerFactory containerForContainerIdentity:containerIdentity3 createIfNecessary:1 error:&v52];
  error2 = v52;

  if (!v8)
  {
    existed = 0;
    goto LABEL_5;
  }

  metadataMinimal = [v8 metadataMinimal];
  existed = [metadataMinimal existed];
  containerPath = [metadataMinimal containerPath];
  containerDataURL = [containerPath containerDataURL];

  if (containerDataURL)
  {
    v26 = v8;
    context3 = [(MCMCommand *)self context];
    clientIdentity2 = [context3 clientIdentity];
    proximateClient = [clientIdentity2 proximateClient];
    v30 = proximateClient;
    if (proximateClient)
    {
      objc_msgSend_auditToken(proximateClient);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    [containerDataURL fileSystemRepresentation];
    v43 = sandbox_set_container_path_for_audit_token();

    if (v43)
    {
      v8 = v26;
      if (![(MCMCommandOpenPrimordialDataContainer *)self testMode]&& ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) == 0 && *__error() != 45))
      {
        v44 = container_log_handle_for_category();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          v46 = *__error();
          *buf = 67109376;
          *&buf[4] = v43;
          *&buf[8] = 1024;
          *&buf[10] = v46;
          _os_log_fault_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_FAULT, "sandbox_set_container_path_for_audit_token() failed with error %d / %d.", buf, 0xEu);
        }

        v45 = [[MCMError alloc] initWithErrorType:65];
        containerDataURL = 0;
        error2 = v45;
      }
    }

    else
    {
      v8 = v26;
    }
  }

LABEL_6:
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = containerDataURL;
    v12 = error2;
    if (existed)
    {
      v13 = @"Fetched";
    }

    else
    {
      v13 = @"Created";
    }

    context4 = [(MCMCommand *)self context];
    [context4 clientIdentity];
    v14 = v49 = v8;
    codeSignInfo2 = [v14 codeSignInfo];
    identifier2 = [codeSignInfo2 identifier];
    [(MCMCommandOpenPrimordialDataContainer *)self containerIdentity];
    selfCopy = self;
    v17 = v48 = v3;
    [v17 identifier];
    v19 = v18 = existed;
    *buf = 138544130;
    *&buf[4] = v13;
    error2 = v12;
    containerDataURL = v11;
    *&buf[12] = 2114;
    *&buf[14] = identifier2;
    *&buf[22] = 2114;
    *&buf[24] = v19;
    v54 = 2112;
    v55 = error2;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ primordial container for '%{public}@' with identifier '%{public}@': error = %@", buf, 0x2Au);

    existed = v18;
    v3 = v48;
    self = selfCopy;

    v8 = v49;
  }

  if (containerDataURL)
  {
    v20 = [[MCMResultWithURLBase alloc] initWithURL:containerDataURL existed:existed sandboxToken:0];
  }

  else
  {
    if (!error2)
    {
      error2 = +[MCMError unsupported];
    }

    v20 = [(MCMResultBase *)[MCMResultWithURLBase alloc] initWithError:error2];
  }

  v31 = v20;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v31];

  objc_autoreleasePoolPop(v3);
}

- (MCMCommandOpenPrimordialDataContainer)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v59 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  v54.receiver = self;
  v54.super_class = MCMCommandOpenPrimordialDataContainer;
  v10 = [(MCMCommand *)&v54 initWithMessage:messageCopy context:contextCopy reply:reply];
  if (v10)
  {
    v11 = messageCopy;
    useCodeSignDatabase = [v11 useCodeSignDatabase];
    clientIdentity = [contextCopy clientIdentity];
    codeSignInfo = [clientIdentity codeSignInfo];
    v53 = 1;
    entitlements = [codeSignInfo entitlements];
    containerRequiredIdentifier = [entitlements containerRequiredIdentifier];

    if (containerRequiredIdentifier)
    {
LABEL_3:
      v10->_testMode = [clientIdentity isAllowedToTest] & useCodeSignDatabase;
      v17 = [gCodeSigningMapping dataContainerTypeForIdentifier:containerRequiredIdentifier];
      if (!v17)
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v56 = containerRequiredIdentifier;
          _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEFAULT, "Unknown data container type for identifier (%{public}@), assuming app", buf, 0xCu);
        }

        v17 = 2;
      }

      v51 = contextCopy;
      v52 = codeSignInfo;
      v10->_extension = v17 == 4;
      context = [(MCMCommand *)v10 context];
      globalConfiguration = [context globalConfiguration];
      staticConfig = [globalConfiguration staticConfig];
      v22 = [staticConfig configForContainerClass:v17];

      userIdentity = [clientIdentity userIdentity];
      v50 = messageCopy;
      if ([userIdentity isNoSpecificPersona])
      {
        userIdentityCache = [contextCopy userIdentityCache];
        posixUser = [userIdentity posixUser];
        [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:posixUser];
        v27 = v26 = clientIdentity;

        userIdentity = v27;
        clientIdentity = v26;
      }

      codeSignInfo = v52;
      if (userIdentity)
      {
        v28 = clientIdentity;
        platform = [v11 platform];
        context2 = [(MCMCommand *)v10 context];
        [context2 userIdentityCache];
        v32 = v31 = v11;
        codeSignInfo = v52;
        v33 = platform;
        clientIdentity = v28;
        v34 = [MCMContainerIdentity containerIdentityWithUserIdentity:userIdentity identifier:containerRequiredIdentifier containerConfig:v22 platform:v33 transient:0 userIdentityCache:v32 error:&v53];
        containerIdentity = v10->_containerIdentity;
        v10->_containerIdentity = v34;

        v11 = v31;
        if (v53 != 1)
        {
          v36 = [MCMError alloc];
          v37 = [(MCMError *)v36 initWithErrorType:v53];
          error = v10->_error;
          v10->_error = v37;
        }
      }

      messageCopy = v50;
      contextCopy = v51;
      goto LABEL_23;
    }

    entitlements2 = [codeSignInfo entitlements];
    requestsNoContainer = [entitlements2 requestsNoContainer];

    if (requestsNoContainer)
    {
      v41 = container_log_handle_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        posixPID = [clientIdentity posixPID];
        *buf = 138543618;
        v56 = codeSignInfo;
        v57 = 1024;
        v58 = posixPID;
        _os_log_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEFAULT, "Client (%{public}@, %d) requests no container with no-container entitlement", buf, 0x12u);
      }

      v43 = [MCMError alloc];
      v44 = 96;
    }

    else
    {
      identifier = [codeSignInfo identifier];
      if (identifier)
      {
        containerRequiredIdentifier = identifier;
        goto LABEL_3;
      }

      v46 = container_log_handle_for_category();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        posixPID2 = [clientIdentity posixPID];
        *buf = 67109120;
        LODWORD(v56) = posixPID2;
        _os_log_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_DEFAULT, "No container-required or codesign identifier -- no container possible for client %d", buf, 8u);
      }

      v43 = [MCMError alloc];
      v44 = 18;
    }

    v48 = [(MCMError *)v43 initWithErrorType:v44];
    containerRequiredIdentifier = v10->_error;
    v10->_error = v48;
LABEL_23:
  }

  return v10;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end