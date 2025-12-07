@interface MCMCommandDeleteContainerContent
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteContainerContent)initWithContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandDeleteContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandDeleteContainerContent

- (void)execute
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v100 = 0;
  containerIdentity = [(MCMCommandDeleteContainerContent *)self containerIdentity];
  containerClass = [containerIdentity containerClass];
  identifier = [containerIdentity identifier];
  v7 = containerClass > 0xB || ((1 << containerClass) & 0xED4) == 0;
  v86 = identifier;
  if (v7)
  {
    v43 = identifier;
    v44 = container_log_handle_for_category();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v102 = containerClass;
      v103 = 2112;
      v104 = v43;
      _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Can't wipe container non-data container of type: %llu, identifier: %@", buf, 0x16u);
    }

    v11 = [[MCMError alloc] initWithErrorType:11 category:3];
    goto LABEL_26;
  }

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v99 = 0;
  v10 = [containerCache entryForContainerIdentity:containerIdentity error:&v99];
  v11 = v99;

  if (!v10)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v102 = containerIdentity;
      v103 = 2112;
      v104 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Failed to lookup existing container during wipe; identity: %@, error: %@", buf, 0x16u);
    }

LABEL_26:
    v20 = 0;
    v84 = 0;
    v85 = 0;
    v87 = 0;
    v88 = 0;
    v21 = 0;
    v22 = 0;
    v83 = 0;
    containerRootURL2 = 0;
    v90 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_27;
  }

  v98 = v11;
  v85 = v10;
  v12 = [v10 metadataWithError:&v98];
  v13 = v98;

  if (v12)
  {
    info = [v12 info];
    v15 = [info objectForKeyedSubscript:@"com.apple.MobileInstallation.ContentProtectionClass"];

    v84 = v15;
    v16 = v3;
    if (v15)
    {
      intValue = [v15 intValue];
    }

    else
    {
      intValue = 0xFFFFFFFFLL;
    }

    containerPath = [v12 containerPath];
    selfCopy = self;
    context2 = [(MCMCommand *)self context];
    containerFactory = [context2 containerFactory];
    v28 = v12;
    v29 = containerFactory;
    v87 = v28;
    containerIdentity2 = [v28 containerIdentity];
    v96 = v13;
    v97 = containerPath;
    v31 = [v29 createStagedContainerForContainerIdentity:containerIdentity2 finalContainerPath:&v97 dataProtectionClass:intValue error:&v96];
    v21 = v97;

    v11 = v96;
    if (v31)
    {
      v88 = v31;
      containerPath2 = [v31 containerPath];
      v80 = v21;
      containerRootURL = [(MCMError *)v21 containerRootURL];
      v90 = containerPath2;
      containerRootURL2 = [containerPath2 containerRootURL];
      v34 = [MCMContainerCacheEntry birthtimeForURL:containerRootURL];
      v3 = v16;
      if (v34 | v35)
      {
        birthtime = v34;
        v41 = v35;
        self = selfCopy;
      }

      else
      {
        v36 = +[MCMFileManager defaultManager];
        v95 = 0;
        v37 = [v36 fsNodeOfURL:containerRootURL followSymlinks:0 error:&v95];
        v38 = v95;

        self = selfCopy;
        if (v37)
        {
          birthtime = [v37 birthtime];
          v41 = v40;
        }

        else
        {
          v50 = container_log_handle_for_category();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v102 = containerRootURL;
            v103 = 2112;
            v104 = v38;
            _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "Could not read fs node for old container at [%@] (non-fatal); error = %@", buf, 0x16u);
          }

          v41 = 0;
          birthtime = 0;
        }
      }

      if (birthtime | v41)
      {
        [MCMContainerCacheEntry setBirthtime:birthtime forURL:v41, containerRootURL2];
      }

      v51 = +[MCMFileManager defaultManager];
      v94 = 0;
      v52 = [v51 replaceItemAtDestinationURL:containerRootURL withSourceURL:containerRootURL2 swapped:&v100 error:&v94];
      v53 = v94;

      v83 = v53;
      if (v52)
      {
        v23 = [v88 metadataByChangingContainerPath:v21];
        v93 = v11;
        v54 = [v23 verifyWithError:&v93];
        v55 = v93;

        if (v54)
        {
          v56 = v3;
          context3 = [(MCMCommand *)self context];
          [context3 containerCache];
          v59 = v58 = v55;
          v92 = v58;
          v24 = [v59 addContainerMetadata:v23 error:&v92];
          v11 = v92;

          if (v24)
          {
            v22 = containerRootURL;
            v20 = 1;
            v3 = v56;
            v21 = v80;
            goto LABEL_53;
          }

          v55 = [[MCMError alloc] initWithErrorType:45];

          containerRootURL4 = container_log_handle_for_category();
          v22 = containerRootURL;
          if (os_log_type_enabled(containerRootURL4, OS_LOG_TYPE_ERROR))
          {
            containerPath3 = [v23 containerPath];
            containerRootURL3 = [containerPath3 containerRootURL];
            [containerRootURL3 path];
            v76 = v75 = v55;
            *buf = 138412802;
            v102 = v23;
            v103 = 2112;
            v104 = v76;
            v105 = 2112;
            v106 = v75;
            _os_log_error_impl(&dword_1DF2C3000, containerRootURL4, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@; error = %@", buf, 0x20u);

            v55 = v75;
          }

          v3 = v56;
          v21 = v80;
        }

        else
        {
          containerRootURL4 = container_log_handle_for_category();
          v22 = containerRootURL;
          if (os_log_type_enabled(containerRootURL4, OS_LOG_TYPE_ERROR))
          {
            shortDescription = [v23 shortDescription];
            *buf = 138412546;
            v102 = shortDescription;
            v103 = 2112;
            v104 = v55;
            _os_log_error_impl(&dword_1DF2C3000, containerRootURL4, OS_LOG_TYPE_ERROR, "Failed to verify new metadata; metadata = %@, error = %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v60 = container_log_handle_for_category();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v102 = v53;
          _os_log_error_impl(&dword_1DF2C3000, v60, OS_LOG_TYPE_ERROR, "Failed to swap containers during wipe; error: %@", buf, 0xCu);
        }

        v22 = containerRootURL;

        v61 = [MCMError alloc];
        containerRootURL4 = [(MCMError *)v21 containerRootURL];
        v55 = [(MCMError *)v61 initWithNSError:v53 url:containerRootURL4 defaultErrorType:15];

        v23 = 0;
      }

      v24 = 0;
      v20 = 0;
      v11 = v55;
LABEL_53:
      if (v90)
      {
        if (v100 == 1)
        {
          v79 = v3;
          context4 = [(MCMCommand *)self context];
          containerFactory2 = [context4 containerFactory];
          containerRootURL5 = [v90 containerRootURL];
          userIdentity = [v90 userIdentity];
          v91 = 0;
          v77 = [containerFactory2 deleteURL:containerRootURL5 forUserIdentity:userIdentity error:&v91];
          v82 = v91;

          if ((v77 & 1) == 0)
          {
            v67 = container_log_handle_for_category();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              containerRootURL6 = [v90 containerRootURL];
              path = [containerRootURL6 path];
              *buf = 138412546;
              v102 = path;
              v103 = 2112;
              v104 = v82;
              _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, "Failed to remove staging container during wipe: %@; error = %@", buf, 0x16u);
            }
          }

          v68 = [MCMCommandOperationReclaimDiskSpace alloc];
          context5 = [(MCMCommand *)self context];
          v70 = [(MCMCommandOperationReclaimDiskSpace *)v68 initWithAsynchronously:1 context:context5 resultPromise:0];

          [(MCMCommandOperationReclaimDiskSpace *)v70 execute];
          v3 = v79;
          v21 = v80;
        }
      }

      else
      {
        v90 = 0;
      }

      goto LABEL_27;
    }

    v42 = container_log_handle_for_category();
    v3 = v16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v102 = v87;
      v103 = 2112;
      v104 = v21;
      v105 = 2112;
      v106 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Failed to create staging container during wipe; metadata: %@, existingContainerPath: %@, error: %@", buf, 0x20u);
    }

    v20 = 0;
    v22 = 0;
    v83 = 0;
    v88 = 0;
    containerRootURL2 = 0;
    v90 = 0;
    v23 = 0;
    v24 = 0;
    self = selfCopy;
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v102 = containerIdentity;
      v103 = 2112;
      v104 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to read existing container metadata during wipe; identity: %@, error: %@", buf, 0x16u);
    }

    v20 = 0;
    v87 = 0;
    v88 = 0;
    v21 = 0;
    v22 = 0;
    v83 = 0;
    v84 = 0;
    containerRootURL2 = 0;
    v90 = 0;
    v23 = 0;
    v24 = 0;
    v11 = v13;
  }

LABEL_27:
  v45 = container_log_handle_for_category();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v102 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_DEBUG, "Delete content result; error = %@", buf, 0xCu);
  }

  if (v20)
  {
    v46 = v21;
    v47 = objc_opt_new();
  }

  else
  {
    v46 = v21;
    v47 = [[MCMResultBase alloc] initWithError:v11];
  }

  v48 = v47;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v48];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  containerIdentity = [(MCMCommandDeleteContainerContent *)self containerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:3 containerIdentity:containerIdentity part:0 partDomain:0 access:0];

  return v6 != 0;
}

- (MCMCommandDeleteContainerContent)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandDeleteContainerContent;
  v9 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;
  }

  return v9;
}

- (MCMCommandDeleteContainerContent)initWithContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v14 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = MCMCommandDeleteContainerContent;
  v10 = [(MCMCommand *)&v13 initWithContext:context resultPromise:promise];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_containerIdentity, identity);
  }

  return v11;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end