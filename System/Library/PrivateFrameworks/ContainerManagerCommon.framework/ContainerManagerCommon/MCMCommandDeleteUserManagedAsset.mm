@interface MCMCommandDeleteUserManagedAsset
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandDeleteUserManagedAsset)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandDeleteUserManagedAsset

- (void)execute
{
  v70 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  containerIdentity = [(MCMCommandDeleteUserManagedAsset *)self containerIdentity];
  identifier = [containerIdentity identifier];

  containerIdentity2 = [(MCMCommandDeleteUserManagedAsset *)self containerIdentity];
  userIdentity = [containerIdentity2 userIdentity];

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  containerIdentity3 = [(MCMCommandDeleteUserManagedAsset *)self containerIdentity];
  v65 = 0;
  v9 = [containerCache entryForContainerIdentity:containerIdentity3 error:&v65];
  v10 = v65;

  v64 = v10;
  v56 = v9;
  v11 = [v9 metadataWithError:&v64];
  v12 = v64;

  v57 = identifier;
  if (!v11)
  {
    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v67 = identifier;
      v68 = 2112;
      v69 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to create app data container for user managed assets path for %@: %@", buf, 0x16u);
    }

    v29 = 0;
    v25 = 0;
    v54 = 0;
    v55 = 0;
    v59 = 0;
    v26 = 0;
    goto LABEL_31;
  }

  containerPath = [v11 containerPath];
  if (!containerPath || (v14 = containerPath, [v11 userManagedAssetsDirName], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    v34 = [[MCMError alloc] initWithErrorType:11];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "No userManagedAssetsDirName or URL in container metadata object: %@", buf, 0xCu);
    }

    v29 = 0;
    v25 = 0;
    v54 = 0;
    v55 = 0;
    v59 = 0;
    v26 = 0;
    goto LABEL_30;
  }

  containerPath2 = [v11 containerPath];
  containerDataURL = [containerPath2 containerDataURL];
  v18 = [containerDataURL URLByAppendingPathComponent:@"Library" isDirectory:1];

  userManagedAssetsDirName = [v11 userManagedAssetsDirName];
  v55 = v18;
  v20 = [v18 URLByAppendingPathComponent:userManagedAssetsDirName isDirectory:1];

  sourceRelativePath = [(MCMCommandDeleteUserManagedAsset *)self sourceRelativePath];
  v22 = [v20 URLByAppendingPathComponent:sourceRelativePath isDirectory:0];
  absoluteURL = [v22 absoluteURL];

  v24 = +[MCMFileManager defaultManager];
  v63 = 0;
  v59 = absoluteURL;
  v25 = [v24 realPathForURL:absoluteURL isDirectory:0 error:&v63];
  v26 = v63;

  v54 = v20;
  if (!v25)
  {
    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path = [v59 path];
      *buf = 138412546;
      v67 = path;
      v68 = 2112;
      v69 = v26;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Unable to get realpath for resource %@; error = %@", buf, 0x16u);
    }

    v29 = 0;
    v25 = 0;
    goto LABEL_30;
  }

  v27 = +[MCMFileManager defaultManager];
  absoluteURL2 = [v20 absoluteURL];
  v62 = v26;
  v29 = [v27 realPathForURL:absoluteURL2 isDirectory:1 error:&v62];
  v30 = v62;

  if (!v29)
  {
    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path2 = [v59 path];
      *buf = 138412546;
      v67 = path2;
      v68 = 2112;
      v69 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Unable to get realpath for resource %@; error = %@", buf, 0x16u);
    }

    v29 = 0;
    goto LABEL_29;
  }

  path3 = [v29 path];
  path4 = [v25 path];
  v33 = [path3 isEqualToString:path4];

  if (v33)
  {
    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path5 = [v29 path];
      *buf = 138412290;
      v67 = path5;
      v37 = "Illegal attempt to delete user managed assets directory at %@";
LABEL_26:
      v44 = v35;
      v45 = 12;
LABEL_27:
      _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, v37, buf, v45);
    }
  }

  else
  {
    path6 = [v25 path];
    path7 = [v29 path];
    v40 = [path6 hasPrefix:path7];

    if (v40)
    {
      context2 = [(MCMCommand *)self context];
      containerFactory = [context2 containerFactory];
      v61 = v12;
      v53 = [containerFactory deleteURL:v25 forUserIdentity:userIdentity error:&v61];
      v34 = v61;

      if (v53)
      {
        v43 = 1;
        goto LABEL_32;
      }

      v35 = container_log_handle_for_category();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      path5 = [v25 path];
      *buf = 138412546;
      v67 = path5;
      v68 = 2112;
      v69 = v34;
      v37 = "Failed to remove asset at %@; error = %@";
      v44 = v35;
      v45 = 22;
      goto LABEL_27;
    }

    v34 = [[MCMError alloc] initWithErrorType:10];

    v35 = container_log_handle_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      path5 = [v25 path];
      *buf = 138412290;
      v67 = path5;
      v37 = "Illegal attempt to delete asset not residing in user managed assets directory %@";
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = v30;
LABEL_30:
  v12 = v34;
LABEL_31:

  v43 = 0;
  v30 = v26;
  v34 = v12;
LABEL_32:
  v46 = container_log_handle_for_category();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    sourceRelativePath2 = [(MCMCommandDeleteUserManagedAsset *)self sourceRelativePath];
    *buf = 138412546;
    v67 = sourceRelativePath2;
    v68 = 2112;
    v69 = v34;
    _os_log_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_DEFAULT, "Delete user managed asset [%@], error = %@", buf, 0x16u);
  }

  if (v43)
  {
    v48 = objc_opt_new();
  }

  else
  {
    v48 = [[MCMResultBase alloc] initWithError:v34];
  }

  v49 = v48;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v49];

  objc_autoreleasePoolPop(context);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToAccessUserAssets = [clientIdentity isAllowedToAccessUserAssets];

  return isAllowedToAccessUserAssets;
}

- (MCMCommandDeleteUserManagedAsset)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MCMCommandDeleteUserManagedAsset;
  v9 = [(MCMCommand *)&v15 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    containerIdentity = v9->_containerIdentity;
    v9->_containerIdentity = containerIdentity;

    sourceRelativePath = [messageCopy sourceRelativePath];
    sourceRelativePath = v9->_sourceRelativePath;
    v9->_sourceRelativePath = sourceRelativePath;
  }

  return v9;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end