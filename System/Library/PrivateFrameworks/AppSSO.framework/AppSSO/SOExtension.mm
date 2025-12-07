@interface SOExtension
- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForSession;
- (BOOL)hasAssociatedDomainsApproved;
- (BOOL)hasURLApprovedAssociatedDomain:(id)domain cache:(id)cache;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExtension:(id)extension;
- (NSArray)authenticationMethods;
- (NSString)containerAppBundleIdentifier;
- (NSString)containerAppPath;
- (NSString)description;
- (NSString)extensionBundleIdentifier;
- (NSString)localizedExtensionDisplayName;
- (NSUUID)sessionID;
- (SOExtension)initWithExtension:(id)extension;
- (id)_contextForSession;
- (id)findDelegateForIdentifier:(id)identifier;
- (int)requestCount;
- (int64_t)extensionRequestsMode;
- (void)_beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)_beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion;
- (void)_connectContextToSessionWithRequestIdentifier:(id)identifier completion:(id)completion;
- (void)_finishAuthorization:(id)authorization withCompletion:(id)completion;
- (void)_finishedSettingUpSession:(id)session;
- (void)_otherVersionError:(id)error;
- (void)_setupExtension;
- (void)_setupNonUISessionIfNecessaryWithCompletion:(id)completion;
- (void)_setupNonUISessionWithCompletion:(id)completion;
- (void)_setupSessionHelperForIOSWithCompletion:(id)completion;
- (void)_setupSessionIfNecessaryWithCompletion:(id)completion;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion;
- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)canPerformRegistrationCompletion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)checkAssociatedDomainsWithCache:(id)cache;
- (void)checkAssociatedDomainsWithCompletion:(id)completion;
- (void)dealloc;
- (void)decrementRequestCount;
- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)incrementRequestCount;
- (void)keyWillRotateForKeyType:(int64_t)type keyProxyEndpoint:(id)endpoint extensionData:(id)data completion:(id)completion;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)presentRegistrationViewControllerWithCompletion:(id)completion;
- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion;
- (void)protocolVersionCompletion:(id)completion;
- (void)registrationDidCancelWithCompletion:(id)completion;
- (void)registrationDidCompleteWithCompletion:(id)completion;
- (void)removeDelegateForRequestIdentifier:(id)identifier;
- (void)removeExpiredEntriesFromCache:(id)cache;
- (void)requestAuthorizationViewControllerWithCompletion:(id)completion;
- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion;
- (void)saveDelegate:(id)delegate forRequestIdentifier:(id)identifier;
- (void)setupNonUISessionWithCompletion:(id)completion;
- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)completion;
- (void)supportedDeviceSigningAlgorithmsCompletion:(id)completion;
- (void)supportedGrantTypesCompletion:(id)completion;
- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)completion;
- (void)unload;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SOExtension

- (SOExtension)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v31.receiver = self;
  v31.super_class = SOExtension;
  v6 = [(SOExtension *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
    v7->_requestCount = 0;
    associatedDomains = v7->_associatedDomains;
    v7->_associatedDomains = 0;

    v9 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    sessionIDLock = v7->_sessionIDLock;
    v7->_sessionIDLock = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    requestCountLock = v7->_requestCountLock;
    v7->_requestCountLock = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    associatedDomainLock = v7->_associatedDomainLock;
    v7->_associatedDomainLock = v13;

    v15 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    extensionDelegatesLock = v7->_extensionDelegatesLock;
    v7->_extensionDelegatesLock = v15;

    v17 = MEMORY[0x1E696AEC0];
    localizedExtensionDisplayName = [(SOExtension *)v7 localizedExtensionDisplayName];
    v19 = [v17 stringWithFormat:@"com.apple.AppSSO.extension-queue-(%@)", localizedExtensionDisplayName];

    v20 = dispatch_queue_create([v19 cStringUsingEncoding:4], 0);
    queue = v7->_queue;
    v7->_queue = v20;

    v22 = MEMORY[0x1E696AEC0];
    localizedExtensionDisplayName2 = [(SOExtension *)v7 localizedExtensionDisplayName];
    v24 = [v22 stringWithFormat:@"com.apple.PlatformSSO.extension-queue-(%@)", localizedExtensionDisplayName2];

    v25 = dispatch_queue_create([v24 cStringUsingEncoding:4], 0);
    pssoQueue = v7->_pssoQueue;
    v7->_pssoQueue = v25;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    extensionDelegates = v7->_extensionDelegates;
    v7->_extensionDelegates = strongToWeakObjectsMapTable;

    [(SOExtension *)v7 _setupExtension];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__otherVersionError_ name:@"com.apple.AppSSO.SOExtension.OtherVersionError" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOExtension;
  [(SOExtension *)&v4 dealloc];
}

- (NSUUID)sessionID
{
  v3 = self->_sessionIDLock;
  objc_sync_enter(v3);
  v4 = self->_sessionID;
  objc_sync_exit(v3);

  return v4;
}

- (int)requestCount
{
  selfCopy = self;
  requestCountLock = [(SOExtension *)self requestCountLock];
  objc_sync_enter(requestCountLock);
  LODWORD(selfCopy) = selfCopy->_requestCount;
  objc_sync_exit(requestCountLock);

  return selfCopy;
}

- (void)incrementRequestCount
{
  v13 = *MEMORY[0x1E69E9840];
  requestCountLock = [(SOExtension *)self requestCountLock];
  v4 = objc_sync_enter(requestCountLock);
  ++self->_requestCount;
  v5 = SO_LOG_SOExtension(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestCount];
    v7 = 136315650;
    v8 = "[SOExtension incrementRequestCount]";
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s count now %{public}@ on %@", &v7, 0x20u);
  }

  objc_sync_exit(requestCountLock);
}

- (void)decrementRequestCount
{
  v15 = *MEMORY[0x1E69E9840];
  requestCountLock = [(SOExtension *)self requestCountLock];
  v4 = objc_sync_enter(requestCountLock);
  requestCount = self->_requestCount;
  if (requestCount <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = requestCount - 1;
  }

  self->_requestCount = v6;
  v7 = SO_LOG_SOExtension(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestCount];
    v9 = 136315650;
    v10 = "[SOExtension decrementRequestCount]";
    v11 = 2114;
    v12 = v8;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s count now %{public}@ on %@", &v9, 0x20u);
  }

  objc_sync_exit(requestCountLock);
}

- (void)_setupExtension
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v5, &location);
  v3 = [(SOExtension *)self extension:v4];
  [v3 setRequestInterruptionBlock:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__SOExtension__setupExtension__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__SOExtension__setupExtension__block_invoke_2;
    v7[3] = &unk_1E813E390;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __30__SOExtension__setupExtension__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30__SOExtension__setupExtension__block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 32) sessionIDLock];
  objc_sync_enter(v3);
  v4 = *(*(a1 + 32) + 8);
  objc_sync_exit(v3);

  v5 = [v4 isEqual:*(a1 + 40)];
  if (v5)
  {
    v6 = SO_LOG_SOExtension(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __30__SOExtension__setupExtension__block_invoke_2_cold_2();
    }

    v7 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v7);
    if (*(*(a1 + 32) + 8))
    {
      v8 = [*(a1 + 32) extension];
      [v8 cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 8)];

      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      *(v9 + 8) = 0;

      v11 = *(*(a1 + 32) + 32);
      *(*(a1 + 32) + 32) = 0;
    }

    objc_sync_exit(v7);

    v12 = [*(a1 + 32) extensionDelegatesLock];
    objc_sync_enter(v12);
    v13 = NSAllMapTableKeys(*(*(a1 + 32) + 40));
    objc_sync_exit(v12);

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          v19 = *(a1 + 32);
          v20 = [getSOErrorHelperClass_0() errorWithCode:-3 message:{@"connection to extension interrupted", v21}];
          [v19 authorization:v18 didCompleteWithCredential:0 error:v20];
        }

        v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }
  }
}

- (void)_otherVersionError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"bundleIdentifier"];
  extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
  v6 = [v4 isEqualToString:extensionBundleIdentifier];

  if (v6)
  {
    v8 = SO_LOG_SOExtension(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "[SOExtension _otherVersionError:]";
      v26 = 2114;
      v27 = v4;
      v28 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
    }

    extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
    objc_sync_enter(extensionDelegatesLock);
    v10 = NSAllMapTableKeys(self->_extensionDelegates);
    objc_sync_exit(extensionDelegatesLock);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [(SOExtension *)self findDelegateForIdentifier:v15];
          if (objc_opt_respondsToSelector())
          {
            [v16 authorizationDidFailWithOtherVersionError:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (void)saveDelegate:(id)delegate forRequestIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  identifierCopy = identifier;
  v8 = SO_LOG_SOExtension(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SOExtension saveDelegate:forRequestIdentifier:]";
    v14 = 2114;
    v15 = identifierCopy;
    v16 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v12, 0x20u);
  }

  extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(extensionDelegatesLock);
  v10 = SO_LOG_SOExtension([(NSMapTable *)self->_extensionDelegates setObject:delegateCopy forKey:identifierCopy]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](self->_extensionDelegates, "count")}];
    v12 = 136315650;
    v13 = "[SOExtension saveDelegate:forRequestIdentifier:]";
    v14 = 2114;
    v15 = v11;
    v16 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s current delegate: %{public}@ on %@", &v12, 0x20u);
  }

  objc_sync_exit(extensionDelegatesLock);
}

- (id)findDelegateForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtension(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SOExtension findDelegateForIdentifier:]";
    v11 = 2114;
    v12 = identifierCopy;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v9, 0x20u);
  }

  extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(extensionDelegatesLock);
  v7 = [(NSMapTable *)self->_extensionDelegates objectForKey:identifierCopy];
  objc_sync_exit(extensionDelegatesLock);

  return v7;
}

- (void)removeDelegateForRequestIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtension(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SOExtension removeDelegateForRequestIdentifier:]";
    v11 = 2114;
    v12 = identifierCopy;
    v13 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v9, 0x20u);
  }

  extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(extensionDelegatesLock);
  v7 = SO_LOG_SOExtension([(NSMapTable *)self->_extensionDelegates removeObjectForKey:identifierCopy]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](self->_extensionDelegates, "count")}];
    v9 = 136315650;
    v10 = "[SOExtension removeDelegateForRequestIdentifier:]";
    v11 = 2114;
    v12 = v8;
    v13 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s current delegates: %{public}@ on %@", &v9, 0x20u);
  }

  objc_sync_exit(extensionDelegatesLock);
}

- (void)setupNonUISessionWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension setupNonUISessionWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SOExtension_setupNonUISessionWithCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

- (void)requestAuthorizationViewControllerWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension requestAuthorizationViewControllerWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SOExtension_requestAuthorizationViewControllerWithCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [parametersCopy identifier];
    *buf = 136315650;
    v17 = "[SOExtension beginAuthorizationWithRequestParameters:completion:]";
    v18 = 2114;
    v19 = identifier;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtension_beginAuthorizationWithRequestParameters_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v14 = parametersCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = parametersCopy;
  dispatch_async(queue, block);
}

- (void)beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SOExtension beginAuthorizationWithServiceXPCEndpoint:completion:]";
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SOExtension_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v13 = endpointCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = endpointCopy;
  dispatch_async(queue, block);
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[SOExtension cancelAuthorization:completion:]";
    v17 = 2114;
    v18 = authorizationCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke;
  block[3] = &unk_1E813E4F0;
  v13 = authorizationCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = authorizationCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v16 = 0;
  v3 = [v2 remoteContextWithError:&v16];
  v4 = v16;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_1();
    }

    v7 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke_26;
    v12[3] = &unk_1E813E4C8;
    v8 = v7;
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v15 = *(a1 + 48);
    [v3 cancelAuthorization:v8 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = [getSOErrorHelperClass_0() errorWithCode:-2];
      (*(v10 + 16))(v10, 0, v11);

      [*(a1 + 32) decrementRequestCount];
    }
  }
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke_2;
  block[3] = &unk_1E813E4A0;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__SOExtension_cancelAuthorization_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__SOExtension_cancelAuthorization_completion___block_invoke_2_cold_1();
  }

  [*(a1 + 56) decrementRequestCount];
  return (*(*(a1 + 64) + 16))();
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  hintsCopy = hints;
  identifierCopy = identifier;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke;
  v14[3] = &unk_1E813E518;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = hintsCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = hintsCopy;
  v13 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findDelegateForIdentifier:*(a1 + 40)];
  v3 = SO_LOG_SOExtension(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1();
  }

  [v2 presentAuthorizationViewControllerWithHints:*(a1 + 48) requestIdentifier:*(a1 + 40) completion:*(a1 + 56)];
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  credentialCopy = credential;
  errorCopy = error;
  v11 = [(SOExtension *)self findDelegateForIdentifier:authorizationCopy];
  v12 = SO_LOG_SOExtension(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413059;
    v24 = v11;
    v25 = 2113;
    v26 = credentialCopy;
    v27 = 2114;
    v28 = authorizationCopy;
    v29 = 2114;
    v30 = errorCopy;
    _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ that extension has finished with credential: %{private}@, identifier: %{public}@, error: %{public}@", buf, 0x2Au);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__SOExtension_authorization_didCompleteWithCredential_error___block_invoke;
  v18[3] = &unk_1E813E540;
  v19 = v11;
  v20 = authorizationCopy;
  v21 = credentialCopy;
  v22 = errorCopy;
  v14 = errorCopy;
  v15 = credentialCopy;
  v16 = authorizationCopy;
  v17 = v11;
  dispatch_async(queue, v18);
}

uint64_t __61__SOExtension_authorization_didCompleteWithCredential_error___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 authorization:v4 didCompleteWithCredential:v5 error:v6];
  }

  return result;
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[SOExtension finishAuthorization:completion:]";
    v17 = 2114;
    v18 = authorizationCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_finishAuthorization_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v13 = authorizationCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = authorizationCopy;
  dispatch_async(queue, block);
}

- (void)_finishAuthorization:(id)authorization withCompletion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[SOExtension _finishAuthorization:withCompletion:]";
    v27 = 2114;
    v28 = authorizationCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  _contextForSession = [(SOExtension *)self _contextForSession];
  v24 = 0;
  v10 = [_contextForSession remoteContextWithError:&v24];
  v11 = v24;
  v12 = v11;
  if (v11)
  {
    v13 = SO_LOG_SOExtension(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    sessionIDLock = [(SOExtension *)self sessionIDLock];
    objc_sync_enter(sessionIDLock);
    if (self->_sessionID)
    {
      objc_sync_exit(sessionIDLock);

      v16 = SO_LOG_SOExtension(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SOExtension _finishAuthorization:withCompletion:];
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke_33;
      v18[3] = &unk_1E813E590;
      v18[4] = self;
      v20 = completionCopy;
      v19 = authorizationCopy;
      [v10 finishAuthorization:v19 completion:v18];
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke;
      block[3] = &unk_1E813E4F0;
      block[4] = self;
      v23 = completionCopy;
      v22 = authorizationCopy;
      dispatch_async(queue, block);

      objc_sync_exit(sessionIDLock);
    }
  }
}

uint64_t __51__SOExtension__finishAuthorization_withCompletion___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__SOExtension__finishAuthorization_withCompletion___block_invoke_cold_1();
  }

  [*(a1 + 32) decrementRequestCount];
  v3 = *(a1 + 48);
  v4 = [getSOErrorHelperClass_0() errorWithCode:-1000 message:@"No extension session ID."];
  (*(v3 + 16))(v3, 0, v4);

  return [*(a1 + 32) removeDelegateForRequestIdentifier:*(a1 + 40)];
}

void __51__SOExtension__finishAuthorization_withCompletion___block_invoke_33(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2;
  block[3] = &unk_1E813E568;
  v14 = a2;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2_cold_1();
  }

  [*(a1 + 40) decrementRequestCount];
  (*(*(a1 + 56) + 16))();
  return [*(a1 + 40) removeDelegateForRequestIdentifier:*(a1 + 48)];
}

- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v6 = [(SOExtension *)self findDelegateForIdentifier:identifier];
  if (self->_remoteViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 requestReauthenticationWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)presentRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [(SOExtension *)self findDelegateForIdentifier:@"platform sso"];
  if (self->_remoteViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 presentRegistrationViewControllerWithCompletion:completionCopy];
  }

  else
  {
    v5 = [getSOErrorHelperClass_0() errorWithCode:-1000 message:@"Presenting registration view controller not allowed."];
    completionCopy[2](completionCopy, 0, v5);
  }
}

- (void)_setupNonUISessionIfNecessaryWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy3 = "[SOExtension _setupNonUISessionIfNecessaryWithCompletion:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  sessionID = self->_sessionID;
  objc_sync_exit(sessionIDLock);

  v9 = SO_LOG_SOExtension(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (sessionID)
  {
    if (v10)
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "Using existing session for extension %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "Setting up new session for extension %@", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__SOExtension__setupNonUISessionIfNecessaryWithCompletion___block_invoke;
    v11[3] = &unk_1E813E5B8;
    v11[4] = self;
    v12 = completionCopy;
    [(SOExtension *)self _setupNonUISessionWithCompletion:v11];
  }
}

void __59__SOExtension__setupNonUISessionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOExtension(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Finished setting up new session for extension %{public}@ with error %{public}@ and session ID %{public}@", &v13, 0x20u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    v10 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v11 = *(a1 + 32);
    v12 = [v11 _contextForSession];
    [v12 setContextExtension:v11];

    objc_sync_exit(v10);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_setupSessionIfNecessaryWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOExtension _setupSessionIfNecessaryWithCompletion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  v7 = self->_sessionID;
  objc_sync_exit(sessionIDLock);

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = SO_LOG_SOExtension(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "Using existing session for extension %@", buf, 0xCu);
  }

  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    completionCopy[2](completionCopy, remoteViewController, 0);
  }

  else
  {
LABEL_8:
    v11 = SO_LOG_SOExtension(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "Setting up new session for extension %@", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__SOExtension__setupSessionIfNecessaryWithCompletion___block_invoke;
    v14[3] = &unk_1E813E5E0;
    v14[4] = self;
    v15 = completionCopy;
    v16 = buf;
    [(SOExtension *)self _setupSessionWithCompletion:v14];
    v12 = *(*&buf[8] + 40);
    v13 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v12, v13);

    _Block_object_dispose(buf, 8);
  }
}

void __54__SOExtension__setupSessionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOExtension(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Finished setting up new session for extension %{public}@ with error %{public}@ and session ID %{public}@", &v13, 0x20u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    v10 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v11 = *(a1 + 32);
    v12 = [v11 _contextForSession];
    [v12 setContextExtension:v11];

    objc_sync_exit(v10);
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

- (void)_finishedSettingUpSession:(id)session
{
  v13 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = SO_LOG_SOExtension(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SOExtension _finishedSettingUpSession:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  objc_storeStrong(&self->_sessionID, session);
  _contextForSession = [(SOExtension *)self _contextForSession];
  [_contextForSession setContextExtension:self];

  objc_sync_exit(sessionIDLock);
}

- (void)_setupNonUISessionWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extension = [(SOExtension *)self extension];
    *buf = 138412290;
    v22 = extension;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "Beginning request for extension %@", buf, 0xCu);
  }

  extension2 = [(SOExtension *)self extension];
  v18 = 0;
  v8 = [extension2 beginExtensionRequestWithInputItems:0 error:&v18];
  v9 = v18;

  if (v9)
  {
    v11 = SO_LOG_SOExtension(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SOExtension _setupNonUISessionWithCompletion:?];
    }

    completionCopy[2](completionCopy, 0, v9);
    domain = [v9 domain];
    if (![domain isEqualToString:*MEMORY[0x1E69C4AD8]])
    {
      goto LABEL_11;
    }

    code = [v9 code];

    if (code == 16)
    {
      v15 = SO_LOG_SOExtension(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEFAULT, "Handling other version error", buf, 2u);
      }

      domain = [MEMORY[0x1E696AD88] defaultCenter];
      v19 = @"bundleIdentifier";
      extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
      v20 = extensionBundleIdentifier;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [domain postNotificationName:@"com.apple.AppSSO.SOExtension.OtherVersionError" object:self userInfo:v17];

LABEL_11:
    }
  }

  else if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v8, 0);
  }
}

- (void)_setupSessionHelperForIOSWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extension = [(SOExtension *)self extension];
    *buf = 138412290;
    v12 = extension;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "Instantiating view controller %@", buf, 0xCu);
  }

  extension2 = [(SOExtension *)self extension];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke;
  v9[3] = &unk_1E813E608;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [extension2 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] listenerEndpoint:0 connectionHandler:v9];
}

void __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = SO_LOG_SOExtension(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), a3);
    [*(*(a1 + 32) + 32) setDelegate:?];
    [*(a1 + 32) _connectContextToSessionWithRequestIdentifier:v7 completion:*(a1 + 40)];
  }
}

- (void)_connectContextToSessionWithRequestIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Passing session ID to remote view", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  remoteViewController = self->_remoteViewController;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke;
  v16[3] = &unk_1E813E630;
  v10 = identifierCopy;
  v17 = v10;
  v18 = buf;
  v11 = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxyWithErrorHandler:v16];
  if (v11)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_49;
    v13[3] = &unk_1E813E658;
    v15 = completionCopy;
    v14 = v10;
    [v11 connectToContextWithSessionID:v14 completion:v13];
  }

  else
  {
    v12 = SO_LOG_SOExtension(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOExtension _connectContextToSessionWithRequestIdentifier:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, *(v20 + 5));
  }

  _Block_object_dispose(buf, 8);
}

void __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOExtension(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  _contextForSession = [(SOExtension *)self _contextForSession];
  v15 = 0;
  v9 = [_contextForSession remoteContextWithError:&v15];
  v10 = v15;
  v11 = SO_LOG_SOExtension(v10);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOExtension _beginAuthorizationWithRequestParameters:completion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke;
    v13[3] = &unk_1E813E6A8;
    v14 = completionCopy;
    [v9 beginAuthorizationWithRequestParameters:parametersCopy completion:v13];
  }
}

void __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2;
  block[3] = &unk_1E813E680;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  _contextForSession = [(SOExtension *)self _contextForSession];
  v15 = 0;
  v9 = [_contextForSession remoteContextWithError:&v15];
  v10 = v15;
  v11 = SO_LOG_SOExtension(v10);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOExtension _beginAuthorizationWithServiceXPCEndpoint:completion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
    v13[3] = &unk_1E813E6A8;
    v14 = completionCopy;
    [v9 beginAuthorizationWithServiceXPCEndpoint:endpointCopy completion:v13];
  }
}

void __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2;
  block[3] = &unk_1E813E680;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)_contextForSession
{
  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  extension = [(SOExtension *)self extension];
  v5 = [extension _extensionContextForUUID:self->_sessionID];

  objc_sync_exit(sessionIDLock);

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForSession
{
  _contextForSession = [(SOExtension *)self _contextForSession];
  _auxiliaryConnection = [_contextForSession _auxiliaryConnection];
  v5 = _auxiliaryConnection;
  if (_auxiliaryConnection)
  {
    [_auxiliaryConnection auditToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (void)unload
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtension(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOExtension unload]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  if (self->_sessionID)
  {
    extension = [(SOExtension *)self extension];
    [extension cancelExtensionRequestWithIdentifier:self->_sessionID];

    sessionID = self->_sessionID;
    self->_sessionID = 0;

    remoteViewController = self->_remoteViewController;
    self->_remoteViewController = 0;
  }

  objc_sync_exit(sessionIDLock);
}

- (NSString)containerAppPath
{
  extension = [(SOExtension *)self extension];
  _plugIn = [extension _plugIn];
  containingUrl = [_plugIn containingUrl];
  path = [containingUrl path];

  return path;
}

- (NSString)localizedExtensionDisplayName
{
  v2 = [(NSExtension *)self->_extension objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  v3 = [v2 copy];

  return v3;
}

- (NSString)containerAppBundleIdentifier
{
  v2 = MEMORY[0x1E696AAE8];
  containerAppPath = [(SOExtension *)self containerAppPath];
  v4 = [v2 bundleWithPath:containerAppPath];
  bundleIdentifier = [v4 bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)extensionBundleIdentifier
{
  extension = [(SOExtension *)self extension];
  identifier = [extension identifier];

  return identifier;
}

- (int64_t)extensionRequestsMode
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _os_feature_enabled_impl();
  if ((v3 & 1) == 0)
  {
    if (!_os_feature_enabled_impl() || ([(SOExtension *)self extensionBundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:v6], v6, !v7))
    {
      infoDictionary = [(NSExtension *)self->_extension infoDictionary];
      v9 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
      v4 = [v9 objectForKeyedSubscript:@"SOExtensionRequestsMode"];

      if (v4)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_11;
        }

        if (([v4 isEqualToString:@"Concurrent"]& 1) != 0)
        {
          goto LABEL_9;
        }

        isKindOfClass = [v4 isEqualToString:@"Queue"];
        if ((isKindOfClass & 1) == 0)
        {
LABEL_11:
          v11 = SO_LOG_SOExtension(isKindOfClass);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138543362;
            v14 = v4;
            _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "invalid SOExtensionRequestsMode: %{public}@, using default", &v13, 0xCu);
          }
        }
      }

      v5 = 1;
      goto LABEL_15;
    }
  }

  v4 = SO_LOG_SOExtension(v3);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v5 = 2;
    goto LABEL_15;
  }

  LOWORD(v13) = 0;
  v5 = 2;
  _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "SOExtensionRequestsModeConcurrent enabled by the feature flag", &v13, 2u);
LABEL_15:

  return v5;
}

- (NSArray)authenticationMethods
{
  v19 = *MEMORY[0x1E69E9840];
  infoDictionary = [(NSExtension *)self->_extension infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  v4 = [v3 objectForKeyedSubscript:@"SOExtensionSSOGrantTypes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 isEqualToString:@"password"])
          {
            [v5 addObject:&unk_1F408FB20];
          }

          if ([v11 isEqualToString:@"urn:ietf:params:oauth:grant-type:jwt-bearer"])
          {
            [v5 addObject:&unk_1F408FB38];
            [v5 addObject:&unk_1F408FB50];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v4 = v13;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeExpiredEntriesFromCache:(id)cache
{
  v23 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [cacheCopy allKeys];
  v5 = [allKeys copy];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [cacheCopy objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x1E695DF00];
          [v11 doubleValue];
          v13 = [v12 dateWithTimeIntervalSince1970:?];
          [v13 timeIntervalSinceNow];
          v15 = v14;
          [&unk_1F408FB08 doubleValue];
          if (v15 < v16 || ([v13 timeIntervalSinceNow], v17 > 0.0))
          {
            [cacheCopy removeObjectForKey:v10];
          }
        }

        else
        {
          [cacheCopy removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)checkAssociatedDomainsWithCache:(id)cache
{
  v76 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  hasAssociatedDomainsApproved = [(SOExtension *)self hasAssociatedDomainsApproved];
  if ((hasAssociatedDomainsApproved & 1) == 0)
  {
    v5 = SO_LOG_SOExtension(hasAssociatedDomainsApproved);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v68 = "[SOExtension checkAssociatedDomainsWithCache:]";
      v69 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
    }

    [(SOExtension *)self removeExpiredEntriesFromCache:cacheCopy];
    associatedDomainLock = [(SOExtension *)self associatedDomainLock];
    objc_sync_enter(associatedDomainLock);
    associatedDomains = self->_associatedDomains;
    self->_associatedDomains = MEMORY[0x1E695E0F0];

    objc_sync_exit(associatedDomainLock);
    extension = [(SOExtension *)self extension];
    _extensionBundle = [extension _extensionBundle];
    bundleURL = [_extensionBundle bundleURL];

    if (!bundleURL)
    {
      v13 = SO_LOG_SOExtension(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:?];
      }

      goto LABEL_50;
    }

    v12 = [MEMORY[0x1E6963678] pluginKitProxyForURL:bundleURL];
    v13 = v12;
    if (!v12)
    {
      containingBundle = SO_LOG_SOExtension(0);
      if (os_log_type_enabled(containingBundle, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      goto LABEL_49;
    }

    containingBundle = [v12 containingBundle];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v16 = SO_LOG_SOExtension(isKindOfClass);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      goto LABEL_48;
    }

    v16 = [containingBundle entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
    if (!v16)
    {
      v18 = SO_LOG_SOExtension(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:containingBundle];
      }

      goto LABEL_47;
    }

    v17 = objc_alloc(MEMORY[0x1E69CDB30]);
    v18 = [v17 initWithServiceType:*MEMORY[0x1E69CDB40] applicationIdentifier:v16 domain:0];
    v66 = 0;
    v19 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v18 error:&v66];
    v20 = v66;
    v60 = v20;
    if (v19)
    {
      location = &self->_associatedDomains;
      v54 = v18;
      v55 = v16;
      selfCopy2 = self;
      v57 = containingBundle;
      v58 = v13;
      v59 = bundleURL;
      array = [MEMORY[0x1E695DF70] array];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v52 = v19;
      v22 = v19;
      v23 = [v22 countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v63;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v63 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v62 + 1) + 8 * i);
            serviceSpecifier = [v27 serviceSpecifier];
            domainHost = [serviceSpecifier domainHost];

            serviceSpecifier2 = [v27 serviceSpecifier];
            domainPort = [serviceSpecifier2 domainPort];

            if (domainPort)
            {
              serviceSpecifier3 = [v27 serviceSpecifier];
              domainPort2 = [serviceSpecifier3 domainPort];
              v34 = [domainHost stringByAppendingFormat:@":%@", domainPort2];

              domainHost = v34;
            }

            isUpdating = [v27 isUpdating];
            if (isUpdating)
            {
              v36 = SO_LOG_SOExtension(isUpdating);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v68 = domainHost;
                _os_log_impl(&dword_1C1317000, v36, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is waiting for an update", buf, 0xCu);
              }
            }

            isApproved = [v27 isApproved];
            if (isApproved)
            {
              v38 = SO_LOG_SOExtension(isApproved);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v68 = domainHost;
                _os_log_impl(&dword_1C1317000, v38, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is approved", buf, 0xCu);
              }

              [array addObject:domainHost];
              v39 = MEMORY[0x1E696AD98];
              date = [MEMORY[0x1E695DF00] date];
              [date timeIntervalSince1970];
              v41 = [v39 numberWithDouble:?];
              [cacheCopy setObject:v41 forKeyedSubscript:domainHost];
            }

            else
            {
              v42 = [cacheCopy objectForKeyedSubscript:domainHost];

              v44 = SO_LOG_SOExtension(v43);
              v45 = v44;
              if (v42)
              {
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v68 = domainHost;
                  _os_log_impl(&dword_1C1317000, v45, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is cached", buf, 0xCu);
                }

                [array addObject:domainHost];
              }

              else
              {
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v68 = domainHost;
                  _os_log_error_impl(&dword_1C1317000, v45, OS_LOG_TYPE_ERROR, "Associated domain: %{public}@ is not approved", buf, 0xCu);
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v62 objects:v75 count:16];
        }

        while (v24);
      }

      associatedDomainLock2 = [(SOExtension *)selfCopy2 associatedDomainLock];
      objc_sync_enter(associatedDomainLock2);
      objc_storeStrong(location, array);
      objc_sync_exit(associatedDomainLock2);

      v48 = SO_LOG_SOExtension(v47);
      v13 = v58;
      v16 = v55;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        containingBundle2 = [v58 containingBundle];
        bundleURL2 = [containingBundle2 bundleURL];
        *buf = 138413058;
        v68 = bundleURL2;
        v69 = 2112;
        selfCopy = array;
        v71 = 2112;
        v72 = v55;
        v73 = 2112;
        v74 = v22;
        _os_log_impl(&dword_1C1317000, v48, OS_LOG_TYPE_INFO, "Associated domain: for app %@: %@, appID: %@, services: %@", buf, 0x2Au);
      }

      bundleURL = v59;
      containingBundle = v57;
      v18 = v54;
      v19 = v52;
    }

    else
    {
      array = SO_LOG_SOExtension(v20);
      if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
      {
        v51 = v60;
        [SOExtension checkAssociatedDomainsWithCache:];
        goto LABEL_46;
      }
    }

    v51 = v60;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
LABEL_50:
  }
}

- (void)checkAssociatedDomainsWithCompletion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  extension = [(SOExtension *)self extension];
  _extensionBundle = [extension _extensionBundle];
  bundleURL = [_extensionBundle bundleURL];

  if (bundleURL)
  {
    v9 = [MEMORY[0x1E6963678] pluginKitProxyForURL:bundleURL];
    v10 = v9;
    if (v9)
    {
      containingBundle = [v9 containingBundle];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v13 = [containingBundle entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
        if (v13)
        {
          v14 = getuid();
          if (v14 == 248)
          {
            v15 = SO_LOG_SOExtension(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_INFO, "Associated domain: Notify swcd", buf, 2u);
            }

            defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
            [defaultCenter postNotificationName:@"CP_SharedWebCredentialsDidChangeNotification" object:0 userInfo:0 options:1];
          }

          v39 = v10;
          v40 = completionCopy;
          v17 = objc_alloc(MEMORY[0x1E69CDB30]);
          v38 = v13;
          v18 = [v17 initWithServiceType:*MEMORY[0x1E69CDB40] applicationIdentifier:v13 domain:0];
          v19 = v18;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = SO_LOG_SOExtension(v18);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [MEMORY[0x1E696AD98] numberWithInt:v20];
              *buf = 138543362;
              v45 = v24;
              _os_log_impl(&dword_1C1317000, v23, OS_LOG_TYPE_INFO, "Associated domain: attempt %{public}@", buf, 0xCu);
            }

            v43 = v22;
            v25 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v19 error:&v43];
            v26 = v43;

            if (![v25 count])
            {
              [MEMORY[0x1E696AF00] sleepForTimeInterval:2.0];
            }

            v18 = [v25 count];
            if (v18)
            {
              break;
            }

            v21 = v25;
            v22 = v26;
            v27 = v20 >= 9;
            v20 = (v20 + 1);
          }

          while (!v27);
          v28 = [v25 count];
          v29 = SO_LOG_SOExtension(v28);
          v30 = v29;
          if (v28)
          {
            completionCopy = v40;
            v13 = v38;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [SOExtension checkAssociatedDomainsWithCompletion:];
            }

            firstObject = [v25 firstObject];
            isApproved = [firstObject isApproved];
            if (isApproved)
            {
              v33 = SO_LOG_SOExtension(isApproved);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                [SOExtension checkAssociatedDomainsWithCompletion:];
              }

              v40[2](v40, 1, 0);
            }

            else
            {
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke;
              v41[3] = &unk_1E813E6D0;
              v42 = v40;
              [firstObject waitForSiteApprovalWithCompletionHandler:v41];
            }
          }

          else
          {
            completionCopy = v40;
            v13 = v38;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [SOExtension checkAssociatedDomainsWithCache:];
            }

            (v40)[2](v40, 0, v26);
          }

          v10 = v39;
        }

        else
        {
          v37 = SO_LOG_SOExtension(0);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [SOExtension checkAssociatedDomainsWithCache:containingBundle];
          }

          v19 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find extension appID"];
          (*(completionCopy + 2))(completionCopy, 0, v19);
        }
      }

      else
      {
        v36 = SO_LOG_SOExtension(isKindOfClass);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [SOExtension checkAssociatedDomainsWithCache:];
        }

        v13 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find app proxy"];
        (*(completionCopy + 2))(completionCopy, 0, v13);
      }
    }

    else
    {
      v35 = SO_LOG_SOExtension(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      containingBundle = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find bundle proxy"];
      (*(completionCopy + 2))(completionCopy, 0, containingBundle);
    }
  }

  else
  {
    v34 = SO_LOG_SOExtension(v8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [SOExtension checkAssociatedDomainsWithCache:?];
    }

    v10 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find bundle URL"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOExtension(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke_cold_1();
  }

  if ([v5 isApproved])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    SOErrorHelperClass_0 = getSOErrorHelperClass_0();
    if (v6)
    {
      [SOErrorHelperClass_0 errorWithCode:-15 message:@"Associated domain check failed" suberror:v6];
    }

    else
    {
      [SOErrorHelperClass_0 errorWithCode:-15 message:@"Associated domain check failed"];
    }
    v10 = ;
    (*(v8 + 16))(v8, 0, v10);
  }
}

- (BOOL)hasURLApprovedAssociatedDomain:(id)domain cache:(id)cache
{
  v32 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  cacheCopy = cache;
  v8 = SO_LOG_SOExtension(cacheCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v25 = "[SOExtension hasURLApprovedAssociatedDomain:cache:]";
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2117;
    v29 = domainCopy;
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  host = [domainCopy host];
  port = [domainCopy port];

  if (port)
  {
    port2 = [domainCopy port];
    v12 = [host stringByAppendingFormat:@":%@", port2];

    host = v12;
  }

  associatedDomains = [(SOExtension *)self associatedDomains];
  v14 = [associatedDomains containsObject:host];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [cacheCopy objectForKeyedSubscript:host];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x1E695DF00];
      [v16 doubleValue];
      v19 = [v18 dateWithTimeIntervalSince1970:?];
      [v19 timeIntervalSinceNow];
      v21 = v20;
      [&unk_1F408FB08 doubleValue];
      v15 = v21 > v22;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)hasAssociatedDomainsApproved
{
  v12 = *MEMORY[0x1E69E9840];
  associatedDomainLock = [(SOExtension *)self associatedDomainLock];
  objc_sync_enter(associatedDomainLock);
  v4 = [(NSArray *)self->_associatedDomains count];
  v5 = SO_LOG_SOExtension(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
    v8 = 138543618;
    v9 = extensionBundleIdentifier;
    v10 = 1024;
    v11 = v4 != 0;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_INFO, "%{public}@ hasAssociatedDomainsApproved = %d", &v8, 0x12u);
  }

  objc_sync_exit(associatedDomainLock);
  return v4 != 0;
}

- (BOOL)isEqualToExtension:(id)extension
{
  extensionCopy = extension;
  extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
  extensionBundleIdentifier2 = [extensionCopy extensionBundleIdentifier];

  LOBYTE(extensionCopy) = [extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2];
  return extensionCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SOExtension *)self isEqualToExtension:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
  _extensionBundle = [(NSExtension *)self->_extension _extensionBundle];
  bundleURL = [_extensionBundle bundleURL];
  path = [bundleURL path];
  v9 = [v3 stringWithFormat:@"<%@:%p, bundleID=%@, path=%@, associatedDomains=%@>", v4, self, extensionBundleIdentifier, path, self->_associatedDomains];

  return v9;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = SO_LOG_SOExtension(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOExtension viewServiceDidTerminateWithError:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (errorCopy)
  {
    extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
    objc_sync_enter(extensionDelegatesLock);
    v7 = NSAllMapTableKeys(self->_extensionDelegates);
    objc_sync_exit(extensionDelegatesLock);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          v13 = [getSOErrorHelperClass_0() errorWithCode:-3 message:{@"connection to extension interrupted", v14}];
          [(SOExtension *)self authorization:v12 didCompleteWithCredential:0 error:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v10 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[SOExtension beginDeviceRegistrationUsingOptions:extensionData:completion:]";
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke;
  v14[3] = &unk_1E813E748;
  v16 = completionCopy;
  optionsCopy = options;
  v14[4] = self;
  v15 = dataCopy;
  v12 = dataCopy;
  v13 = completionCopy;
  dispatch_async(pssoQueue, v14);
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_120;
    v9[3] = &unk_1E813E720;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v8 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v3 beginDeviceRegistrationUsingOptions:v8 extensionData:v7 completion:v9];
  }
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_120(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2;
  block[3] = &unk_1E813E6F8;
  v7 = a2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dataCopy = data;
  completionCopy = completion;
  v15 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[SOExtension beginUserRegistrationUsingUserName:authenticationMethod:options:extensionData:completion:]";
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke;
  v20[3] = &unk_1E813E770;
  v20[4] = self;
  v21 = nameCopy;
  methodCopy = method;
  v23 = completionCopy;
  optionsCopy = options;
  v22 = dataCopy;
  v17 = dataCopy;
  v18 = nameCopy;
  v19 = completionCopy;
  dispatch_async(pssoQueue, v20);
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v13 = 0;
  v3 = [v2 remoteContextWithError:&v13];
  v4 = v13;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 72);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_122;
    v11[3] = &unk_1E813E720;
    v11[4] = *(a1 + 32);
    v10 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v3 beginUserRegistrationUsingUserName:v8 authenticationMethod:v7 options:v10 extensionData:v9 completion:v11];
  }
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_122(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2;
  block[3] = &unk_1E813E6F8;
  v7 = a2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)registrationDidCompleteWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension registrationDidCompleteWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(pssoQueue, v8);
}

void __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123;
    v8[3] = &unk_1E813E658;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 registrationDidCompleteWithCompletion:v8];
  }
}

uint64_t __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)registrationDidCancelWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension registrationDidCancelWithCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SOExtension_registrationDidCancelWithCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __51__SOExtension_registrationDidCancelWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124;
    v8[3] = &unk_1E813E658;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 registrationDidCancelWithCompletion:v8];
  }
}

uint64_t __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124(uint64_t a1)
{
  v2 = SO_LOG_SOExtension(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)supportedGrantTypesCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension supportedGrantTypesCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SOExtension_supportedGrantTypesCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __45__SOExtension_supportedGrantTypesCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __45__SOExtension_supportedGrantTypesCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125;
    v8[3] = &unk_1E813E798;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedGrantTypesCompletion:v8];
  }
}

void __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125_cold_1();
  }
}

- (void)protocolVersionCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension protocolVersionCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SOExtension_protocolVersionCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __41__SOExtension_protocolVersionCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __41__SOExtension_protocolVersionCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SOExtension_protocolVersionCompletion___block_invoke_126;
    v8[3] = &unk_1E813E798;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 protocolVersionCompletion:v8];
  }
}

void __41__SOExtension_protocolVersionCompletion___block_invoke_126(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__SOExtension_protocolVersionCompletion___block_invoke_126_cold_1();
  }
}

- (void)canPerformRegistrationCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension canPerformRegistrationCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SOExtension_canPerformRegistrationCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __48__SOExtension_canPerformRegistrationCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __48__SOExtension_canPerformRegistrationCompletion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__SOExtension_canPerformRegistrationCompletion___block_invoke_127;
    v9[3] = &unk_1E813E7C0;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    v8 = SO_LOG_SOExtension([v3 canPerformRegistrationCompletion:v9]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __48__SOExtension_canPerformRegistrationCompletion___block_invoke_cold_3();
    }
  }
}

uint64_t __48__SOExtension_canPerformRegistrationCompletion___block_invoke_127(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 decrementRequestCount];
}

- (void)supportedDeviceSigningAlgorithmsCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension supportedDeviceSigningAlgorithmsCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedDeviceSigningAlgorithmsCompletion:v8];
  }
}

void __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129_cold_1();
  }
}

- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension supportedDeviceEncryptionAlgorithmsCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedDeviceEncryptionAlgorithmsCompletion:v8];
  }
}

void __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131_cold_1();
  }
}

- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[SOExtension supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke;
  v8[3] = &unk_1E813E450;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:v8];
  }
}

void __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132_cold_1();
  }
}

- (void)keyWillRotateForKeyType:(int64_t)type keyProxyEndpoint:(id)endpoint extensionData:(id)data completion:(id)completion
{
  endpointCopy = endpoint;
  dataCopy = data;
  completionCopy = completion;
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke;
  block[3] = &unk_1E813E810;
  v20 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v18 = endpointCopy;
  v19 = dataCopy;
  v14 = dataCopy;
  v15 = endpointCopy;
  v16 = completionCopy;
  dispatch_async(v13, block);
}

void __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v13 = 0;
  v3 = [v2 remoteContextWithError:&v13];
  v4 = v13;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133;
    v11[3] = &unk_1E813E798;
    v9 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v3 keyWillRotateForKeyType:v9 keyProxyEndpoint:v7 extensionData:v8 completion:v11];
  }
}

void __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133_cold_1();
  }
}

- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  dataCopy = data;
  completionCopy = completion;
  v11 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SOExtension displayNamesForGroups:extensionData:completion:]";
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v12 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke;
  v16[3] = &unk_1E813E860;
  v16[4] = self;
  v17 = groupsCopy;
  v18 = dataCopy;
  v19 = completionCopy;
  v13 = dataCopy;
  v14 = groupsCopy;
  v15 = completionCopy;
  dispatch_async(v12, v16);
}

void __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v12 = 0;
  v3 = [v2 remoteContextWithError:&v12];
  v4 = v12;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134;
    v10[3] = &unk_1E813E838;
    v9 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v3 displayNamesForGroups:v7 extensionData:v8 completion:v10];
  }
}

void __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134_cold_1();
  }
}

- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SOExtension profilePictureForUserUsingExtensionData:completion:]";
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke;
  block[3] = &unk_1E813E4F0;
  v13 = dataCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = dataCopy;
  v11 = completionCopy;
  dispatch_async(v9, block);
}

void __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136;
    v9[3] = &unk_1E813E888;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v3 profilePictureForUserUsingExtensionData:v7 completion:v9];
  }
}

void __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = SO_LOG_SOExtension([*(a1 + 32) decrementRequestCount]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136_cold_1();
  }
}

void __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_setupNonUISessionWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 extension];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v1, v2, "Session with ID %{public}@ was unable to communicate with the remote service because of %{public}@", v3, DWORD2(v3));
}

void __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)checkAssociatedDomainsWithCache:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "Associated domain: failed to get service details for the appID: %{public}@ with error: %{public}@");
}

- (void)checkAssociatedDomainsWithCache:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 bundleURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkAssociatedDomainsWithCache:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 extension];
  v2 = [v1 _extensionBundle];
  v3 = [v2 bundleURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)checkAssociatedDomainsWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)checkAssociatedDomainsWithCompletion:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v0, v1, "Associated domains response: %{public}@, error: %{public}@");
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_1C1317000, v2, v3, "Finished beginDeviceRegistrationUsingLoginManager, result = %{public}@", v4, v5, v6, v7);
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_1C1317000, v2, v3, "Finished beginUserRegistrationUsingLoginManager, result = %{public}@", v4, v5, v6, v7);
}

@end