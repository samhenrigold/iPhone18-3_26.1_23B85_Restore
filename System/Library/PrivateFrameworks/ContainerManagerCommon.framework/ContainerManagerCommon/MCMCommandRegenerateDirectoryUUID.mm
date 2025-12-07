@interface MCMCommandRegenerateDirectoryUUID
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandRegenerateDirectoryUUID)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandRegenerateDirectoryUUID)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (id)regenerateDirectoryUUIDNoCacheUpdateWithMetadata:(id)metadata error:(id *)error;
- (void)execute;
@end

@implementation MCMCommandRegenerateDirectoryUUID

- (id)regenerateDirectoryUUIDNoCacheUpdateWithMetadata:(id)metadata error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  [metadataCopy platform];
  [metadataCopy containerClass];
  [metadataCopy transient];
  if ((container_class_supports_randomized_path() & 1) == 0)
  {
    v25 = [[MCMError alloc] initWithErrorType:72];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v46 = [metadataCopy platform];
      *&v46[4] = 2112;
      *&v46[6] = metadataCopy;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "UUID container paths are unsupported on (%u) for: %@", buf, 0x12u);
    }

    goto LABEL_13;
  }

  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  containerPath = [metadataCopy containerPath];
  containerPathIdentifier = [containerPath containerPathIdentifier];
  v9 = [v6 initWithUUIDString:containerPathIdentifier];

  if (!v9)
  {
    v25 = [[MCMError alloc] initWithErrorType:11];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      containerPath2 = [metadataCopy containerPath];
      containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
      *buf = 138412546;
      *v46 = containerPathIdentifier2;
      *&v46[8] = 2112;
      *&v46[10] = metadataCopy;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Non-UUID last path component: %@ for %@", buf, 0x16u);
    }

LABEL_13:
    v14 = 0;
    v9 = 0;
    v16 = 0;
LABEL_14:

    if (error)
    {
      v27 = v25;
      v24 = 0;
      *error = v25;
    }

    else
    {
      v24 = 0;
    }

    v22 = v16;
    goto LABEL_18;
  }

  v10 = objc_opt_class();
  if ([metadataCopy transient])
  {
    v10 = objc_opt_class();
  }

  containerIdentity = [metadataCopy containerIdentity];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v10 containerPathForContainerIdentity:containerIdentity containerPathIdentifier:uUIDString];

  containerClassPath = [v14 containerClassPath];
  v44 = 0;
  LOBYTE(uUID) = [containerClassPath createIfNecessaryWithError:&v44];
  v16 = v44;

  if ((uUID & 1) == 0)
  {
    v29 = [MCMError alloc];
    containerClassPath2 = [v14 containerClassPath];
    classURL = [containerClassPath2 classURL];
    v25 = [(MCMError *)v29 initWithNSError:v16 url:classURL defaultErrorType:48];

    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      containerClassPath3 = [v14 containerClassPath];
      *buf = 138412546;
      *v46 = containerClassPath3;
      *&v46[8] = 2112;
      *&v46[10] = v16;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to create class path at: %@; error = %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  errorCopy = error;
  v17 = +[MCMFileManager defaultManager];
  containerPath3 = [metadataCopy containerPath];
  containerRootURL = [containerPath3 containerRootURL];
  containerRootURL2 = [v14 containerRootURL];
  v43 = v16;
  v21 = [v17 moveItemAtURL:containerRootURL toURL:containerRootURL2 error:&v43];
  v22 = v43;

  if ((v21 & 1) == 0)
  {
    v33 = [MCMError alloc];
    containerRootURL3 = [v14 containerRootURL];
    v25 = [(MCMError *)v33 initWithNSError:v22 url:containerRootURL3 defaultErrorType:48];

    v26 = container_log_handle_for_category();
    error = errorCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      containerPath4 = [metadataCopy containerPath];
      containerRootURL4 = [containerPath4 containerRootURL];
      path = [containerRootURL4 path];
      containerRootURL5 = [v14 containerRootURL];
      path2 = [containerRootURL5 path];
      *buf = 138412802;
      *v46 = path;
      *&v46[8] = 2112;
      *&v46[10] = path2;
      v47 = 2112;
      v48 = v22;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to move dir: %@ to new UUID dir: %@; error = %@", buf, 0x20u);

      error = errorCopy;
    }

    goto LABEL_27;
  }

  v23 = [metadataCopy metadataByChangingContainerPath:v14];
  error = errorCopy;
  if (!v23)
  {
    v25 = [[MCMError alloc] initWithErrorType:73];
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v46 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to update metadata for regenerate: %@", buf, 0xCu);
    }

LABEL_27:
    v16 = v22;
    goto LABEL_14;
  }

  v24 = v23;
  v25 = 0;
LABEL_18:

  return v24;
}

- (void)execute
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  concreteContainerIdentity = [(MCMCommandRegenerateDirectoryUUID *)self concreteContainerIdentity];
  v24 = 0;
  v7 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v24];
  v8 = v24;

  metadataMinimal = [v7 metadataMinimal];
  if (metadataMinimal)
  {
    v23 = v8;
    v10 = [(MCMCommandRegenerateDirectoryUUID *)self regenerateDirectoryUUIDNoCacheUpdateWithMetadata:metadataMinimal error:&v23];
    v11 = v23;

    if (v10)
    {
      context2 = [(MCMCommand *)self context];
      containerCache2 = [context2 containerCache];
      v22 = 0;
      v14 = [containerCache2 addContainerMetadata:v10 error:&v22];
      v15 = v22;

      if (!v14)
      {
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v15;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to update container cache for regenerate: %@", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v10 = 0;
    v15 = 0;
    v11 = v8;
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "Roll UUID result: %@, error = %@", buf, 0x16u);
  }

  v18 = [MCMResultWithContainerBase alloc];
  if (v10)
  {
    v19 = [(MCMResultWithContainerBase *)v18 initWithMetadata:v10 sandboxToken:0 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0];
  }

  else
  {
    v19 = [(MCMResultBase *)v18 initWithError:v11];
  }

  v20 = v19;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v20];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  LOBYTE(context) = [clientIdentity isAllowedToRegenerateDirectoryUUIDs];
  return context;
}

- (MCMCommandRegenerateDirectoryUUID)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandRegenerateDirectoryUUID;
  v9 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    concreteContainerIdentity = [messageCopy concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = concreteContainerIdentity;
  }

  return v9;
}

- (MCMCommandRegenerateDirectoryUUID)initWithConcreteContainerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v14 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = MCMCommandRegenerateDirectoryUUID;
  v10 = [(MCMCommand *)&v13 initWithContext:context resultPromise:promise];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_concreteContainerIdentity, identity);
  }

  return v11;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end