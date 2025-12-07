@interface MCMCommandStageSharedContent
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandStageSharedContent)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandStageSharedContent

- (void)execute
{
  v99 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  userIdentityCache = [context userIdentityCache];
  defaultUserIdentity = [userIdentityCache defaultUserIdentity];

  v90 = 1;
  context2 = [(MCMCommand *)self context];
  globalConfiguration = [context2 globalConfiguration];
  staticConfig = [globalConfiguration staticConfig];
  v9 = [staticConfig configForContainerClass:13];

  identifier = [(MCMCommandStageSharedContent *)self identifier];
  context3 = [(MCMCommand *)self context];
  userIdentityCache2 = [context3 userIdentityCache];
  v85 = defaultUserIdentity;
  v13 = [MCMContainerIdentity containerIdentityWithUserIdentity:defaultUserIdentity identifier:identifier containerConfig:v9 platform:0 userIdentityCache:userIdentityCache2 error:&v90];

  if (!v13)
  {
    v17 = [MCMError alloc];
    v18 = [(MCMError *)v17 initWithErrorType:v90];
LABEL_12:
    v22 = 0;
    v23 = 0;
    v84 = 0;
LABEL_13:
    v24 = 0;
    v25 = 0;
    v83 = 0;
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v14 = containermanager_copy_global_configuration();
  systemContainerMode = [v14 systemContainerMode];

  if (!systemContainerMode)
  {
    v18 = [[MCMError alloc] initWithErrorType:72];
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "System containers are not supported", buf, 2u);
    }

    goto LABEL_11;
  }

  sourceRelativePath = [(MCMCommandStageSharedContent *)self sourceRelativePath];
  if ([sourceRelativePath containsDotDotPathComponents])
  {

    goto LABEL_9;
  }

  destinationRelativePath = [(MCMCommandStageSharedContent *)self destinationRelativePath];
  containsDotDotPathComponents = [destinationRelativePath containsDotDotPathComponents];

  if (containsDotDotPathComponents)
  {
LABEL_9:
    v18 = [[MCMError alloc] initWithErrorType:38];
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sourceRelativePath2 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
      destinationRelativePath2 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
      *buf = 138412546;
      v92 = sourceRelativePath2;
      v93 = 2112;
      v94 = destinationRelativePath2;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Paths can't contain dots. source: %@, dest: %@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  context4 = [(MCMCommand *)self context];
  clientIdentity = [context4 clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  systemGroupIdentifiers = [entitlements systemGroupIdentifiers];

  identifier2 = [v13 identifier];
  v84 = systemGroupIdentifiers;
  LOBYTE(clientIdentity) = [systemGroupIdentifiers containsObject:identifier2];

  if ((clientIdentity & 1) == 0)
  {
    v18 = +[MCMError notEntitled];
    v62 = container_log_handle_for_category();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      context5 = [(MCMCommand *)self context];
      clientIdentity2 = [context5 clientIdentity];
      identifier3 = [v13 identifier];
      *buf = 138412546;
      v92 = clientIdentity2;
      v93 = 2112;
      v94 = identifier3;
      _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "%@ not entitled for system group container %@", buf, 0x16u);
    }

    v22 = 0;
    v23 = 0;
    goto LABEL_13;
  }

  context6 = [(MCMCommand *)self context];
  containerCache = [context6 containerCache];
  v89 = 0;
  v40 = [containerCache entryForContainerIdentity:v13 error:&v89];
  v41 = v89;

  v83 = v40;
  metadataMinimal = [v40 metadataMinimal];
  if (!metadataMinimal)
  {
    v18 = [[MCMError alloc] initWithErrorType:21];

    v63 = container_log_handle_for_category();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      identifier4 = [v13 identifier];
      *buf = 138412546;
      v92 = identifier4;
      v93 = 2112;
      v94 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "System group container with identifier %@ not found: %@", buf, 0x16u);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v25 = metadataMinimal;
  v80 = v41;
  containerPath = [metadataMinimal containerPath];
  containerDataURL = [containerPath containerDataURL];
  sourceRelativePath3 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
  v23 = [containerDataURL URLByAppendingPathComponent:sourceRelativePath3 isDirectory:0];

  containerPath2 = [v25 containerPath];
  containerDataURL2 = [containerPath2 containerDataURL];
  destinationRelativePath3 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
  v22 = [containerDataURL2 URLByAppendingPathComponent:destinationRelativePath3 isDirectory:0];

  v49 = +[MCMFileManager defaultManager];
  containerPath3 = [v25 containerPath];
  containerDataURL3 = [containerPath3 containerDataURL];
  v52 = [v49 realPathForURL:v23 ifChildOfURL:containerDataURL3];

  if (!v52)
  {
    v18 = [[MCMError alloc] initWithErrorType:10];

    v66 = container_log_handle_for_category();
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
LABEL_37:

      v24 = 0;
      goto LABEL_14;
    }

    identifier5 = [v13 identifier];
    containerPath4 = [v25 containerPath];
    containerDataURL4 = [containerPath4 containerDataURL];
    *buf = 138412802;
    v92 = v23;
    v93 = 2112;
    v94 = identifier5;
    v95 = 2112;
    v96 = containerDataURL4;
    v69 = "Invalid source URL %@ for %@ at %@";
LABEL_43:
    _os_log_error_impl(&dword_1DF2C3000, v66, OS_LOG_TYPE_ERROR, v69, buf, 0x20u);

    goto LABEL_37;
  }

  v53 = +[MCMFileManager defaultManager];
  containerPath5 = [v25 containerPath];
  containerDataURL5 = [containerPath5 containerDataURL];
  v56 = [v53 realPathForURL:v22 ifChildOfURL:containerDataURL5];

  if (!v56)
  {
    v18 = [[MCMError alloc] initWithErrorType:10];

    v66 = container_log_handle_for_category();
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    identifier5 = [v13 identifier];
    containerPath4 = [v25 containerPath];
    containerDataURL4 = [containerPath4 containerDataURL];
    *buf = 138412802;
    v92 = v22;
    v93 = 2112;
    v94 = identifier5;
    v95 = 2112;
    v96 = containerDataURL4;
    v69 = "Invalid dest URL %@ for %@ at %@";
    goto LABEL_43;
  }

  v57 = +[MCMFileManager defaultManager];
  v88 = 0;
  v58 = [v57 standardizeACLsAtURL:v23 isSystemContainer:0 error:&v88];
  v26 = v88;

  if ((v58 & 1) == 0)
  {
    v18 = [[MCMError alloc] initWithErrorType:63];

    v70 = container_log_handle_for_category();
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    identifier6 = [v13 identifier];
    path = [v23 path];
    *buf = 138412802;
    v92 = identifier6;
    v93 = 2112;
    v94 = path;
    v72 = path;
    v95 = 2112;
    v96 = v26;
    _os_log_error_impl(&dword_1DF2C3000, v70, OS_LOG_TYPE_ERROR, "Failed to standardize ACLs for %@ at %@: %@", buf, 0x20u);

LABEL_45:
    goto LABEL_41;
  }

  v59 = +[MCMFileManager defaultManager];
  v87 = v26;
  v60 = [v59 moveItemAtURL:v23 toURL:v22 error:&v87];
  v61 = v87;

  if (v60)
  {
    v22 = v22;
    v24 = v22;
    v26 = v61;
    v18 = v80;
    goto LABEL_15;
  }

  v26 = v61;
  v18 = [[MCMError alloc] initWithErrorType:64];

  v70 = container_log_handle_for_category();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    identifier6 = [v13 identifier];
    path2 = [v23 path];
    path3 = [v22 path];
    *buf = 138413058;
    v92 = identifier6;
    v93 = 2112;
    v94 = path2;
    v95 = 2112;
    v96 = path3;
    v78 = path3;
    v97 = 2112;
    v98 = v26;
    _os_log_error_impl(&dword_1DF2C3000, v70, OS_LOG_TYPE_ERROR, "Failed move for %@ from %@ to: %@: %@", buf, 0x2Au);

    goto LABEL_45;
  }

LABEL_41:

  v24 = 0;
LABEL_15:
  v27 = container_log_handle_for_category();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v92 = v24;
    v93 = 2112;
    v94 = v18;
    _os_log_debug_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEBUG, "Stage shared content result: %@, error = %@", buf, 0x16u);
  }

  v28 = [MCMResultWithURLBase alloc];
  if (v24)
  {
    v29 = [(MCMResultWithURLBase *)v28 initWithURL:v24 existed:1 sandboxToken:0];
  }

  else
  {
    v29 = [(MCMResultBase *)v28 initWithError:v18];
  }

  v30 = v29;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v30];

  objc_autoreleasePoolPop(context);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToStageSharedContent = [clientIdentity isAllowedToStageSharedContent];

  return isAllowedToStageSharedContent;
}

- (MCMCommandStageSharedContent)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MCMCommandStageSharedContent;
  v9 = [(MCMCommand *)&v17 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    identifier = [messageCopy identifier];
    identifier = v9->_identifier;
    v9->_identifier = identifier;

    sourceRelativePath = [messageCopy sourceRelativePath];
    sourceRelativePath = v9->_sourceRelativePath;
    v9->_sourceRelativePath = sourceRelativePath;

    destinationRelativePath = [messageCopy destinationRelativePath];
    destinationRelativePath = v9->_destinationRelativePath;
    v9->_destinationRelativePath = destinationRelativePath;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end