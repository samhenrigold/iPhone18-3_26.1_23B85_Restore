@interface MCMCommandSetInfoValue
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandSetInfoValue)initWithKey:(id)key value:(id)value containerIdentity:(id)identity context:(id)context resultPromise:(id)promise;
- (MCMCommandSetInfoValue)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandSetInfoValue

- (void)execute
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  concreteContainerIdentity = [(MCMCommandSetInfoValue *)self concreteContainerIdentity];
  v5 = [(MCMCommandSetInfoValue *)self key];
  value = [(MCMCommandSetInfoValue *)self value];
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v33 = value;
  if (!v8)
  {
    v32 = concreteContainerIdentity;
    v14 = [[MCMError alloc] initWithErrorType:38];
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Can't set nil or non-NSString key: %@", buf, 0xCu);
    }

    v16 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v37 = 0;
  v11 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v37];
  v12 = v37;

  v36 = v12;
  v13 = [v11 metadataWithError:&v36];
  v14 = v36;

  if (!v13)
  {
    v32 = concreteContainerIdentity;
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v32;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "No Container with identity: %@", buf, 0xCu);
    }

    v16 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v15 = [v13 metadataBySettingInfoValue:value forKey:v7];
  v16 = v15;
  if (v13 != v15)
  {
    v32 = concreteContainerIdentity;
    v35 = v14;
    v17 = [v15 writeMetadataToDiskWithError:&v35];
    v18 = v35;

    if (v17)
    {
      v30 = v3;
      context2 = [(MCMCommand *)self context];
      containerCache2 = [context2 containerCache];
      v34 = v18;
      v21 = [containerCache2 addContainerMetadata:v16 error:&v34];
      v14 = v34;

      if (v21)
      {
        v3 = v30;
        concreteContainerIdentity = v32;
        goto LABEL_10;
      }

      v23 = container_log_handle_for_category();
      v3 = v30;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        containerPath = [v13 containerPath];
        containerRootURL = [containerPath containerRootURL];
        path = [containerRootURL path];
        *buf = 138412546;
        v39 = v16;
        v40 = 2112;
        v41 = path;
        _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@", buf, 0x16u);

        v3 = v30;
      }
    }

    else
    {
      v23 = container_log_handle_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        containerPath2 = [v13 containerPath];
        containerRootURL2 = [containerPath2 containerRootURL];
        path2 = [containerRootURL2 path];
        *buf = 138412802;
        v39 = v16;
        v40 = 2112;
        v41 = path2;
        v42 = 2112;
        v43 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Failed to write updated metadata: %@, url: %@, error = %@", buf, 0x20u);
      }

      v14 = v18;
    }

LABEL_22:

    v22 = [[MCMResultBase alloc] initWithError:v14];
    concreteContainerIdentity = v32;
    goto LABEL_23;
  }

LABEL_10:
  v22 = objc_opt_new();
LABEL_23:
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v22];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  LOBYTE(context) = [clientIdentity isAllowedToAccessInfoMetadata];
  return context;
}

- (MCMCommandSetInfoValue)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = MCMCommandSetInfoValue;
  v9 = [(MCMCommand *)&v17 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    concreteContainerIdentity = [messageCopy concreteContainerIdentity];
    concreteContainerIdentity = v9->_concreteContainerIdentity;
    v9->_concreteContainerIdentity = concreteContainerIdentity;

    v12 = [messageCopy key];
    key = v9->_key;
    v9->_key = v12;

    value = [messageCopy value];
    value = v9->_value;
    v9->_value = value;
  }

  return v9;
}

- (MCMCommandSetInfoValue)initWithKey:(id)key value:(id)value containerIdentity:(id)identity context:(id)context resultPromise:(id)promise
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  identityCopy = identity;
  v19.receiver = self;
  v19.super_class = MCMCommandSetInfoValue;
  v16 = [(MCMCommand *)&v19 initWithContext:context resultPromise:promise];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    objc_storeStrong(&v17->_value, value);
    objc_storeStrong(&v17->_concreteContainerIdentity, identity);
  }

  return v17;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end