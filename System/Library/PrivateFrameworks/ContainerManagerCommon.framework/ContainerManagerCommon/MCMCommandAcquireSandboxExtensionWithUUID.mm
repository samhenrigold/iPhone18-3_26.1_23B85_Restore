@interface MCMCommandAcquireSandboxExtensionWithUUID
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (MCMCommandAcquireSandboxExtensionWithUUID)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity error:(id *)error;
- (void)execute;
@end

@implementation MCMCommandAcquireSandboxExtensionWithUUID

- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  pathCopy = path;
  v10 = [MCMSandboxExtension alloc];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  v13 = [(MCMSandboxExtension *)v10 initWithClientIdentity:clientIdentity containerPath:pathCopy containerIdentity:identityCopy];

  if (v13)
  {
    [(MCMSandboxExtension *)v13 setUseLegacyExtensionPolicy:0];
    [(MCMSandboxExtension *)v13 setUseProxiedClientForTarget:1];
    v14 = [(MCMSandboxExtension *)v13 tokenForPart:0 partDomain:0 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)execute
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  concreteContainerIdentity = [(MCMCommandAcquireSandboxExtensionWithUUID *)self concreteContainerIdentity];
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v29 = 0;
  v7 = [containerCache entryForContainerIdentity:concreteContainerIdentity error:&v29];
  v8 = v29;

  v27 = v7;
  if (!v7)
  {
    v12 = 0;
    metadataMinimal = 0;
    goto LABEL_8;
  }

  metadataMinimal = [v7 metadataMinimal];
  containerPath = [metadataMinimal containerPath];
  containerIdentity = [metadataMinimal containerIdentity];
  v28 = v8;
  v12 = [(MCMCommandAcquireSandboxExtensionWithUUID *)self _tokenForContainerPath:containerPath containerIdentity:containerIdentity error:&v28];
  v13 = v28;

  if (v12)
  {
    LOBYTE(v7) = 1;
LABEL_7:
    v8 = v13;
    goto LABEL_8;
  }

  if (v13)
  {
    v12 = 0;
    LOBYTE(v7) = 0;
    goto LABEL_7;
  }

  v8 = [[MCMError alloc] initWithErrorType:72 category:3];
  v12 = 0;
  LOBYTE(v7) = 0;
LABEL_8:
  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v31 = v12 != 0;
    v32 = 2112;
    v33 = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "Acquire sandbox extension result: %d, error = %@", buf, 0x12u);
  }

  v15 = [MCMResultAcquireSandboxExtensionWithUUID alloc];
  v16 = v15;
  if (v7)
  {
    userIdentity = [metadataMinimal userIdentity];
    personaUniqueString = [userIdentity personaUniqueString];
    containerPath2 = [metadataMinimal containerPath];
    [containerPath2 containerDataURL];
    v19 = metadataMinimal;
    selfCopy = self;
    v21 = concreteContainerIdentity;
    v23 = v22 = v3;
    v24 = [(MCMResultAcquireSandboxExtensionWithUUID *)v16 initWithSandboxToken:v12 personaUniqueString:personaUniqueString url:v23];

    v3 = v22;
    concreteContainerIdentity = v21;
    self = selfCopy;
    metadataMinimal = v19;
  }

  else
  {
    v24 = [(MCMResultBase *)v15 initWithError:v8];
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v24];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  concreteContainerIdentity = [(MCMCommandAcquireSandboxExtensionWithUUID *)self concreteContainerIdentity];
  v6 = [clientIdentity isAllowedToPerformOperationType:0 containerIdentity:concreteContainerIdentity part:0 partDomain:0 access:2];

  return v6 != 0;
}

- (MCMCommandAcquireSandboxExtensionWithUUID)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandAcquireSandboxExtensionWithUUID;
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