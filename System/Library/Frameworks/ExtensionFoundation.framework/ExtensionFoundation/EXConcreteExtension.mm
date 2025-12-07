@interface EXConcreteExtension
+ (BOOL)_evaluateActivationRule:(id)rule withDictionaryIfItMatchesActiveWebPageAlternative:(id)alternative matchResult:(int64_t *)result;
+ (BOOL)_evaluateActivationRule:(id)rule withExtensionItemsRepresentation:(id)representation error:(id *)error;
+ (BOOL)_evaluateActivationRule:(id)rule withInputItemsIfTheyMatchActiveWebPageAlternative:(id)alternative matchResult:(int64_t *)result;
+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)workarounds withExtensionItemsRepresentation:(id)representation;
+ (BOOL)_genericValuesMatchActiveWebPageAlternativeWithExtensionItems:(id)items attachmentsLens:(id)lens registeredTypeIdentifiersLens:(id)identifiersLens isActiveWebPageAttachmentCheck:(id)check;
+ (BOOL)_matchingDictionaryMatchesActiveWebPageAlternative:(id)alternative;
+ (BOOL)evaluateActivationRule:(id)rule withExtensionItemsRepresentation:(id)representation;
+ (id)_dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:(id)identifier fromMatchingDictionary:(id)dictionary;
+ (id)_inputItemsByApplyingActiveWebPageAlternative:(id)alternative ifNeededByActivationRule:(id)rule;
+ (id)beginMatchingExtensionsWithAttributes:(id)attributes completion:(id)completion;
+ (id)extensionWithIdentifier:(id)identifier excludingDisabledExtensions:(BOOL)extensions error:(id *)error;
+ (id)extensionsWithMatchingAttributes:(id)attributes error:(id *)error;
+ (id)globalStateQueueForExtension:(id)extension;
+ (void)endMatchingExtensions:(id)extensions;
+ (void)extensionWithURL:(id)l completion:(id)completion;
+ (void)extensionWithUUID:(id)d completion:(id)completion;
+ (void)extensionsWithMatchingAttributes:(id)attributes synchronously:(BOOL)synchronously completion:(id)completion;
+ (void)initialize;
+ (void)initializeFiltering;
- (BOOL)_beginUsingAndCreateExtensionAssertionWithRequest:(id)request error:(id *)error;
- (BOOL)_isMarkedNew;
- (BOOL)_isPhotoServiceAccessGranted;
- (BOOL)_isSystemExtension;
- (BOOL)_wantsProcessPerRequest;
- (BOOL)isEqual:(id)equal;
- (BOOL)makeExtensionContextAndXPCConnectionForRequest:(id)request error:(id *)error;
- (Class)_hostContextClass;
- (EXConcreteExtension)init;
- (NSBundle)_extensionBundle;
- (NSDictionary)_extensionState;
- (double)requestTeardownDelay;
- (id)_bareExtensionServiceConnection;
- (id)_beginExtensionRequest:(id)request error:(id *)error;
- (id)_extensionContextForUUID:(id)d;
- (id)_initWithPKPlugin:(id)plugin identity:(id)identity;
- (id)_itemProviderForPayload:(id)payload extensionContext:(id)context;
- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items error:(id *)error;
- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint error:(id *)error;
- (id)description;
- (id)extensionContexts;
- (id)icons;
- (id)objectForInfoDictionaryKey:(id)key;
- (id)requestCancellationBlock;
- (id)requestCompletionBlock;
- (id)requestInterruptionBlock;
- (int)_plugInProcessIdentifier;
- (int)pidForRequestIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)_bareExtensionServiceConnection;
- (void)_beginExtensionRequest:(id)request completion:(id)completion;
- (void)_cancelRequestWithError:(id)error forExtensionContextWithUUID:(id)d completion:(id)completion;
- (void)_completeRequestReturningItems:(id)items forExtensionContextWithUUID:(id)d completion:(id)completion;
- (void)_didCreateExtensionContext:(id)context;
- (void)_didShowExtensionManagementInterface;
- (void)_didShowNewExtensionIndicator;
- (void)_dropAssertion;
- (void)_extensionBundle;
- (void)_hostContextClass;
- (void)_hostDidBecomeActiveNote:(id)note;
- (void)_hostDidEnterBackgroundNote:(id)note;
- (void)_hostWillEnterForegroundNote:(id)note;
- (void)_hostWillResignActiveNote:(id)note;
- (void)_isPhotoServiceAccessGranted;
- (void)_isSystemExtension;
- (void)_kill:(int)_kill;
- (void)_loadItemForPayload:(id)payload contextIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_loadPreviewImageForPayload:(id)payload contextIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_reallyBeginExtensionRequest:(id)request completion:(id)completion;
- (void)_reallyBeginExtensionRequest:(id)request synchronously:(BOOL)synchronously completion:(id)completion;
- (void)_resetExtensionState;
- (void)_safelyBeginUsing:(id)using;
- (void)_safelyBeginUsingSynchronously:(BOOL)synchronously request:(id)request readyHandler:(id)handler;
- (void)_safelyBeginUsingWithRequest:(id)request readyHandler:(id)handler;
- (void)_safelyEndUsingRequestWithPKUUID:(id)d processAssertion:(id)assertion continuation:(id)continuation;
- (void)_setExtensionState:(id)state;
- (void)_wantsProcessPerRequest;
- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items completion:(id)completion;
- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint completion:(id)completion;
- (void)cancelExtensionRequestWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)setRequestCancellationBlock:(id)block;
- (void)setRequestCompletionBlock:(id)block;
- (void)setRequestInterruptionBlock:(id)block;
@end

@implementation EXConcreteExtension

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    [self initializeFiltering];
    v3 = *MEMORY[0x1E695E890];
    CFPreferencesGetAppBooleanValue(@"EXAssertionLoggingEnabled", *MEMORY[0x1E695E890], 0);
    EXConcreteExtensionDiscoveryLoggingEnabled = CFPreferencesGetAppBooleanValue(@"NSExtensionDiscoveryLoggingEnabled", v3, 0) != 0;
    v4 = os_log_create("com.apple.foundation.NSExtension", "connection");
    v5 = EXConcreteExtensionLogCategoryConnection;
    EXConcreteExtensionLogCategoryConnection = v4;

    v6 = os_log_create("com.apple.foundation.NSExtension", "context");
    v7 = EXConcreteExtensionLogCategoryContext;
    EXConcreteExtensionLogCategoryContext = v6;

    v8 = os_log_create("com.apple.foundation.NSExtension", "discovery");
    v9 = EXConcreteExtensionLogCategoryDiscovery;
    EXConcreteExtensionLogCategoryDiscovery = v8;

    EXConcreteExtensionLogCategoryPlugIn = os_log_create("com.apple.foundation.NSExtension", "plugin");

    MEMORY[0x1EEE66BB8]();
  }
}

+ (void)initializeFiltering
{
  _EXExtensionUseAlternateRules = CFPreferencesCopyAppValue(@"NSExtensionUseAlternateRules", *MEMORY[0x1E695E890]);

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_wantsProcessPerRequest
{
  infoDictionary = [(EXConcreteExtension *)self infoDictionary];

  if (!infoDictionary)
  {
    v5 = _EXDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension _wantsProcessPerRequest];
    }
  }

  infoDictionary2 = [(EXConcreteExtension *)self infoDictionary];
  v7 = [infoDictionary2 objectForKey:@"XPCService"];

  v8 = [v7 objectForKey:@"_MultipleInstances"];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (unint64_t)hash
{
  uuid = [(PKPlugIn *)self->__plugIn uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = EXConcreteExtension;
  v4 = [(EXConcreteExtension *)&v8 description];
  identifier = [(EXConcreteExtension *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {id = %@}", v4, identifier];

  return v6;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->__extensionServiceConnections allValues];
  v4 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        [v8 setInvalidationHandler:0];
        [v8 setInterruptionHandler:0];
        [v8 invalidate];
      }

      v5 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v9 = +[_EXDefaults sharedInstance];
  platformShouldExhibitEmbeddedBehavior = [v9 platformShouldExhibitEmbeddedBehavior];

  if (platformShouldExhibitEmbeddedBehavior && self->_observingHostAppStateChanges)
  {
    Class = objc_getClass("UIApplication");
    if (Class)
    {
      v12 = [(objc_class *)Class performSelector:sel_sharedApplication];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:v12];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:v12];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:v12];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:v12];
    }

    self->_observingHostAppStateChanges = 0;
  }

  v17.receiver = self;
  v17.super_class = EXConcreteExtension;
  [(EXConcreteExtension *)&v17 dealloc];
}

- (NSBundle)_extensionBundle
{
  extensionBundle = self->__extensionBundle;
  if (extensionBundle)
  {
LABEL_8:
    v12 = extensionBundle;
    goto LABEL_9;
  }

  plugIn = self->__plugIn;
  v15 = 0;
  v5 = [(PKPlugIn *)plugIn useBundle:0 error:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v8 = [(PKPlugIn *)self->__plugIn url];
    if (!v8)
    {
      v9 = _EXDefaultLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _extensionBundle];
      }
    }

    v10 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v8];
    v11 = self->__extensionBundle;
    self->__extensionBundle = v10;

    extensionBundle = self->__extensionBundle;
    goto LABEL_8;
  }

  v14 = _EXDefaultLog(v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(EXConcreteExtension *)v7 _extensionBundle];
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (Class)_hostContextClass
{
  v3 = [(NSDictionary *)self->_infoDictionary objectForKey:@"NSExtension"];
  v4 = [v3 objectForKey:@"NSExtensionContextHostClass"];
  if (v4)
  {
    v5 = v4;

LABEL_4:
    Class = objc_getClass([v5 UTF8String]);
    goto LABEL_5;
  }

  v5 = [(NSDictionary *)self->_infoDictionary objectForKey:@"NSExtensionContextHostClass"];

  if (v5)
  {
    goto LABEL_4;
  }

  Class = objc_opt_class();
LABEL_5:
  v7 = Class;
  if (!Class)
  {
    v8 = _EXDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(EXConcreteExtension *)v5 _hostContextClass];
    }
  }

  v9 = v7;

  return v7;
}

- (int)_plugInProcessIdentifier
{
  pluginConnection = [(PKPlugIn *)self->__plugIn pluginConnection];
  processIdentifier = [pluginConnection processIdentifier];

  return processIdentifier;
}

- (id)requestCompletionBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestCompletionBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (double)requestTeardownDelay
{
  infoDictionary = [(EXConcreteExtension *)self infoDictionary];
  v3 = [infoDictionary objectForKey:@"NSExtension"];

  v4 = [v3 objectForKey:@"NSExtensionDisableTeardownDelay"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 5.0;
  }

  return v6;
}

- (id)_bareExtensionServiceConnection
{
  v14[2] = *MEMORY[0x1E69E9840];
  _extensionBundle = [(EXConcreteExtension *)self _extensionBundle];
  bundleIdentifier = [_extensionBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    bundleIdentifier = [(EXConcreteExtension *)self identifier];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", bundleIdentifier, *MEMORY[0x1E696A2A8]];
  v6 = _EXLegacyLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension _bareExtensionServiceConnection];
  }

  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:v5];
  v8 = [EXExtensionContextImplementation _extensionContextVendorProtocolWithAllowedErrorClasses:self->__allowedErrorClasses];
  [v7 setRemoteObjectInterface:v8];

  v9 = [EXExtensionContextImplementation _extensionContextHostProtocolWithAllowedErrorClasses:self->__allowedErrorClasses];
  [v7 setExportedInterface:v9];

  [v7 setExportedObject:self];
  _wantsProcessPerRequest = [(EXConcreteExtension *)self _wantsProcessPerRequest];
  if (_wantsProcessPerRequest)
  {
    if (!self->_connectionUUID)
    {
      v11 = _EXDefaultLog(_wantsProcessPerRequest);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _bareExtensionServiceConnection];
      }
    }

    _xpcConnection = [v7 _xpcConnection];
    v14[0] = 0;
    v14[1] = 0;
    [(NSUUID *)self->_connectionUUID getUUIDBytes:v14];
    xpc_connection_set_oneshot_instance();
  }

  return v7;
}

- (void)setRequestCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [blockCopy copy];

  requestCompletionBlock = self->_requestCompletionBlock;
  self->_requestCompletionBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (void)setRequestCancellationBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [blockCopy copy];

  requestCancellationBlock = self->_requestCancellationBlock;
  self->_requestCancellationBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestCancellationBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestCancellationBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setRequestInterruptionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_requestBlockLock);
  v5 = [blockCopy copy];

  requestInterruptionBlock = self->_requestInterruptionBlock;
  self->_requestInterruptionBlock = v5;

  os_unfair_lock_unlock(&self->_requestBlockLock);
}

- (id)requestInterruptionBlock
{
  os_unfair_lock_lock(&self->_requestBlockLock);
  v3 = _Block_copy(self->_requestInterruptionBlock);
  os_unfair_lock_unlock(&self->_requestBlockLock);
  v4 = _Block_copy(v3);

  return v4;
}

+ (id)extensionsWithMatchingAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__EXConcreteExtension_extensionsWithMatchingAttributes_error___block_invoke;
  v8[3] = &unk_1E6E4D988;
  v8[4] = &v15;
  v8[5] = &v9;
  [EXConcreteExtension extensionsWithMatchingAttributes:attributesCopy synchronously:1 completion:v8];
  if (error)
  {
    *error = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __62__EXConcreteExtension_extensionsWithMatchingAttributes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

+ (void)extensionsWithMatchingAttributes:(id)attributes synchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  completionCopy = completion;
  if (synchronouslyCopy)
  {
    v8 = 1024;
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x1E69C4A88];
  attributesCopy = attributes;
  defaultHost = [v9 defaultHost];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__EXConcreteExtension_extensionsWithMatchingAttributes_synchronously_completion___block_invoke;
  v13[3] = &unk_1E6E4D9B0;
  v14 = completionCopy;
  v12 = completionCopy;
  [defaultHost discoverPlugInsForAttributes:attributesCopy flags:v8 found:v13];
}

void __81__EXConcreteExtension_extensionsWithMatchingAttributes_synchronously_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [EXConcreteExtension alloc];
          v15 = [(EXConcreteExtension *)v14 _initWithPKPlugin:v13, v18];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v16 = *(a1 + 32);
  v17 = [v7 allObjects];
  (*(v16 + 16))(v16, v17, v6);
}

+ (id)extensionWithIdentifier:(id)identifier excludingDisabledExtensions:(BOOL)extensions error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (extensions)
  {
    v18[0] = *MEMORY[0x1E696A2E0];
    v18[1] = @"NSUserElection";
    v19[0] = identifier;
    v7 = MEMORY[0x1E696AD98];
    identifierCopy = identifier;
    identifierCopy3 = [v7 numberWithInteger:1];
    stringValue = [identifierCopy3 stringValue];
    v19[1] = stringValue;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v16 = *MEMORY[0x1E696A2E0];
    identifierCopy2 = identifier;
    v12 = MEMORY[0x1E695DF20];
    identifierCopy3 = identifier;
    v11 = [v12 dictionaryWithObjects:&identifierCopy2 forKeys:&v16 count:1];
  }

  v13 = [self extensionsWithMatchingAttributes:v11 error:error];
  firstObject = [v13 firstObject];

  return firstObject;
}

+ (void)extensionWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  defaultHost = [MEMORY[0x1E69C4A88] defaultHost];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke;
  v10[3] = &unk_1E6E4DA00;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [defaultHost findPlugInByUUID:v9 reply:v10];
}

void __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2;
  v10[3] = &unk_1E6E4D9D8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  _os_activity_initiate(&dword_1847D1000, "discovering extensions", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [[EXConcreteExtension alloc] _initWithPKPlugin:a1[4]];
    v3 = _EXLegacyLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v6 = 138543618;
      v7 = v2;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "discovered extension: %{public}@, uuid: %{public}@", &v6, 0x16u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v5 = _EXLegacyLog(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1();
    }

    (*(a1[7] + 16))();
  }
}

+ (void)extensionWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  defaultHost = [MEMORY[0x1E69C4A88] defaultHost];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EXConcreteExtension_extensionWithURL_completion___block_invoke;
  v10[3] = &unk_1E6E4DA00;
  v11 = lCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = lCopy;
  [defaultHost findPlugInByPathURL:v9 reply:v10];
}

void __51__EXConcreteExtension_extensionWithURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EXConcreteExtension_extensionWithURL_completion___block_invoke_2;
  v10[3] = &unk_1E6E4D9D8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  _os_activity_initiate(&dword_1847D1000, "discovering extensions", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __51__EXConcreteExtension_extensionWithURL_completion___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [[EXConcreteExtension alloc] _initWithPKPlugin:a1[4]];
    v3 = _EXLegacyLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v6 = 138543618;
      v7 = v2;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "discovered extension: %{public}@, url: %{public}@", &v6, 0x16u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v5 = _EXLegacyLog(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1();
    }

    (*(a1[7] + 16))();
  }
}

+ (id)beginMatchingExtensionsWithAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  defaultHost = [MEMORY[0x1E69C4A88] defaultHost];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke;
  v12[3] = &unk_1E6E4DA28;
  v13 = attributesCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = attributesCopy;
  v10 = [defaultHost continuouslyDiscoverPlugInsForAttributes:v9 flags:0 found:v12];

  return v10;
}

void __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke_2;
  v10[3] = &unk_1E6E4D9D8;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v8 = v6;
  v9 = v5;
  _os_activity_initiate(&dword_1847D1000, "discovering extensions", OS_ACTIVITY_FLAG_DEFAULT, v10);
}

void __72__EXConcreteExtension_beginMatchingExtensionsWithAttributes_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v9 = [EXConcreteExtension alloc];
          v10 = [(EXConcreteExtension *)v9 _initWithPKPlugin:v8, v18];
          [v2 addObject:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v5);
    }

    v12 = _EXLegacyLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      v23 = v13;
      v24 = 2114;
      v25 = v2;
      _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEFAULT, "discovered extensions: attributes %@, extensionSet %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = [v2 allObjects];
      (*(v14 + 16))(v14, v15, 0);
    }
  }

  else
  {
    v16 = _EXLegacyLog(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __52__EXConcreteExtension_extensionWithUUID_completion___block_invoke_2_cold_1();
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, *(a1 + 48));
    }
  }
}

+ (void)endMatchingExtensions:(id)extensions
{
  v3 = MEMORY[0x1E69C4A88];
  extensionsCopy = extensions;
  defaultHost = [v3 defaultHost];
  [defaultHost cancelPlugInDiscovery:extensionsCopy];
}

+ (id)globalStateQueueForExtension:(id)extension
{
  v3 = +[_EXDefaults sharedInstance];
  platformShouldExhibitEmbeddedBehavior = [v3 platformShouldExhibitEmbeddedBehavior];

  if (platformShouldExhibitEmbeddedBehavior && dyld_program_sdk_at_least())
  {
    if (globalStateQueueForExtension__onceToken != -1)
    {
      +[EXConcreteExtension globalStateQueueForExtension:];
    }

    v5 = globalStateQueueForExtension__dedicatedQueue;
  }

  else
  {
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return v5;
}

uint64_t __52__EXConcreteExtension_globalStateQueueForExtension___block_invoke()
{
  globalStateQueueForExtension__dedicatedQueue = dispatch_queue_create("com.apple.extension.global-state-queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithPKPlugin:(id)plugin identity:(id)identity
{
  v52 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  identityCopy = identity;
  v50.receiver = self;
  v50.super_class = EXConcreteExtension;
  _init = [(EXConcreteExtension *)&v50 _init];
  v9 = _init;
  if (_init)
  {
    *(_init + 4) = 0;
    objc_storeStrong(_init + 3, identity);
    identifier = [pluginCopy identifier];
    v11 = [identifier copy];
    v12 = v9[4];
    v9[4] = v11;

    version = [pluginCopy version];
    v14 = [version copy];
    v15 = v9[5];
    v9[5] = v14;

    attributes = [pluginCopy attributes];
    v17 = [attributes copy];
    v18 = v9[6];
    v9[6] = v17;

    bundleInfoDictionary = [pluginCopy bundleInfoDictionary];
    v20 = [bundleInfoDictionary copy];
    v21 = v9[7];
    v9[7] = v20;

    localizedName = [pluginCopy localizedName];
    v23 = [localizedName copy];
    v24 = v9[8];
    v9[8] = v23;

    localizedShortName = [pluginCopy localizedShortName];
    v26 = [localizedShortName copy];
    v27 = v9[9];
    v9[9] = v26;

    v28 = [v9[6] objectForKey:*MEMORY[0x1E696A2F8]];
    v29 = [v28 copy];
    v30 = v9[10];
    v9[10] = v29;

    v31 = v9[11];
    v45 = 11;
    v9[11] = 0;

    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    launchPersonas = [pluginCopy launchPersonas];
    v34 = [launchPersonas countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v47;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v47 != v36)
          {
            objc_enumerationMutation(launchPersonas);
          }

          personaUniqueString = [*(*(&v46 + 1) + 8 * i) personaUniqueString];
          v39 = [_EXPersona personaWithPersonaUniqueString:personaUniqueString];
          [v32 addObject:v39];
        }

        v35 = [launchPersonas countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v35);
    }

    objc_storeStrong(v9 + 13, v32);
    if ([v9 _wantsProcessPerRequest])
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v41 = v9[v45];
      v9[v45] = uUID;

      v42 = [pluginCopy createInstanceWithUUID:v9[v45]];
    }

    else
    {
      v42 = pluginCopy;
    }

    v43 = v9[12];
    v9[12] = v42;

    *(v9 + 2) = 0;
  }

  return v9;
}

- (EXConcreteExtension)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unable to create null NSExtensions!" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(PKPlugIn *)self->__plugIn uuid];
    _plugIn = [equalCopy _plugIn];
    uuid2 = [_plugIn uuid];

    v8 = [uuid isEqual:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reallyBeginExtensionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v19 = 0;
  v8 = [(EXConcreteExtension *)self makeExtensionContextAndXPCConnectionForRequest:requestCopy error:&v19];
  v9 = v19;
  if (v8)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke;
    v17[3] = &unk_1E6E4DA98;
    v17[4] = self;
    v18 = completionCopy;
    v10 = completionCopy;
    [(EXConcreteExtension *)self _reallyBeginExtensionRequest:requestCopy synchronously:0 completion:v17];
    v11 = v18;
  }

  else
  {
    v12 = [EXConcreteExtension globalStateQueueForExtension:self];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke_3;
    block[3] = &unk_1E6E4DAC0;
    v16 = completionCopy;
    v15 = v9;
    v13 = completionCopy;
    dispatch_async(v12, block);

    v11 = v16;
  }
}

void __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EXConcreteExtension__reallyBeginExtensionRequest_completion___block_invoke_2;
  block[3] = &unk_1E6E4DA70;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (BOOL)makeExtensionContextAndXPCConnectionForRequest:(id)request error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = _EXLegacyLog(requestCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
  }

  os_unfair_lock_lock(&self->_unfairLock);
  _hostContextClass = [(EXConcreteExtension *)self _hostContextClass];
  v8 = [_hostContextClass alloc];
  inputItems = [requestCopy inputItems];
  v10 = [v8 initWithInputItems:inputItems];

  if (!v10)
  {
    v12 = _EXDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = NSStringFromClass(_hostContextClass);
      [(EXConcreteExtension *)v13 makeExtensionContextAndXPCConnectionForRequest:buf error:v12];
    }
  }

  _UUID = [v10 _UUID];
  internalImplementation = [v10 internalImplementation];
  [internalImplementation setExtensionRequest:requestCopy];
  extensionContexts = self->__extensionContexts;
  if (!extensionContexts)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = self->__extensionContexts;
    self->__extensionContexts = v17;

    extensionContexts = self->__extensionContexts;
  }

  [(NSMutableDictionary *)extensionContexts setObject:v10 forKey:_UUID];
  _bareExtensionServiceConnection = [(EXConcreteExtension *)self _bareExtensionServiceConnection];
  extensionServiceConnections = self->__extensionServiceConnections;
  if (!extensionServiceConnections)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = self->__extensionServiceConnections;
    self->__extensionServiceConnections = v21;

    extensionServiceConnections = self->__extensionServiceConnections;
  }

  [(NSMutableDictionary *)extensionServiceConnections setObject:_bareExtensionServiceConnection forKey:_UUID];
  objc_initWeak(&location, self);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke;
  v58[3] = &unk_1E6E4DAE8;
  objc_copyWeak(&v60, &location);
  v23 = _UUID;
  v59 = v23;
  [_bareExtensionServiceConnection setInterruptionHandler:v58];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_68;
  v55[3] = &unk_1E6E4DAE8;
  objc_copyWeak(&v57, &location);
  v24 = v23;
  v56 = v24;
  [_bareExtensionServiceConnection setInvalidationHandler:v55];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);

  os_unfair_lock_unlock(&self->_unfairLock);
  v26 = v10 != 0;
  if (v10)
  {
    v27 = [requestCopy setContext:v10];
  }

  else
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A278];
      requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to make extension context for extension: %@ request: %@", self, requestCopy];
      v67 = requestCopy;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      *error = [v28 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v30];
    }

    v31 = _EXLegacyLog(v25);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
    }
  }

  if (_bareExtensionServiceConnection)
  {
    [requestCopy setXpcConnection:_bareExtensionServiceConnection];
    assertion = [requestCopy assertion];
    valid = [assertion valid];

    if (valid)
    {
      [_bareExtensionServiceConnection resume];
      goto LABEL_30;
    }

    v39 = _EXLegacyLog(v34);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:v10 error:self];
    }

    if (error)
    {
      v40 = MEMORY[0x1E696ABC0];
      v64 = *MEMORY[0x1E696A278];
      v41 = MEMORY[0x1E696AEC0];
      _UUID2 = [v10 _UUID];
      identifier = [(EXConcreteExtension *)self identifier];
      v44 = [v41 stringWithFormat:@"Extension assertion was invalidated! request: %@ plugin_identifier: %@", _UUID2, identifier];;
      v65 = v44;
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      *error = [v40 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v45];
    }
  }

  else
  {
    v35 = _EXLegacyLog(v27);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
    }

    if (error)
    {
      v36 = MEMORY[0x1E696ABC0];
      v62 = *MEMORY[0x1E696A278];
      requestCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to make XPC connection for extension: %@ request: %@", self, requestCopy];
      v63 = requestCopy2;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      *error = [v36 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v38];
    }
  }

  v26 = 0;
LABEL_30:
  v46 = +[_EXDefaults sharedInstance];
  if (![v46 allowSimulatedJetsam])
  {
LABEL_35:

    goto LABEL_36;
  }

  options = [requestCopy options];

  if (options >= 0)
  {
    goto LABEL_36;
  }

  [(EXConcreteExtension *)self _plugInProcessIdentifier];
  v49 = terminate_with_reason();
  v50 = v49 == 0;
  v46 = _EXLegacyLog(v49);
  v51 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
  if (!v50)
  {
    if (v51)
    {
      [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:v46 error:?];
    }

    goto LABEL_35;
  }

  if (v51)
  {
    [EXConcreteExtension makeExtensionContextAndXPCConnectionForRequest:error:];
  }

  v48 = sleep(1u);
LABEL_36:
  v52 = _EXLegacyLog(v48);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    [(EXConcreteExtension *)self makeExtensionContextAndXPCConnectionForRequest:requestCopy error:v52];
  }

  return v26;
}

void __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [EXConcreteExtension globalStateQueueForExtension:WeakRetained];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_2;
    v4[3] = &unk_1E6E4DAE8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v6);
  }
}

void __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _EXLegacyLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 identifier];
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1847D1000, v4, OS_LOG_TYPE_DEFAULT, "extension connection was interrupted! request: %{public}@; plugin_identifier: %{public}@", &v9, 0x16u);
    }

    v7 = [v3 requestInterruptionBlock];
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7, *(a1 + 32));
    }

    EXConcreteExtensionErrorCleanupHandler(v3, *(a1 + 32));
  }
}

void __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_68(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _EXLegacyLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 identifier];
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1847D1000, v4, OS_LOG_TYPE_DEFAULT, "extension connection was invalidated! request: %{public}@; plugin_identifier: %{public}@", buf, 0x16u);
    }

    v8 = _sharedSafePluginQueue(v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__EXConcreteExtension_makeExtensionContextAndXPCConnectionForRequest_error___block_invoke_69;
    v9[3] = &unk_1E6E4DB10;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, v9);
  }
}

- (void)_reallyBeginExtensionRequest:(id)request synchronously:(BOOL)synchronously completion:(id)completion
{
  synchronouslyCopy = synchronously;
  v40 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v10 = _EXLegacyLog(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v25 = "NO";
    *buf = 138543874;
    selfCopy = self;
    if (synchronouslyCopy)
    {
      v25 = "YES";
    }

    v36 = 2114;
    v37 = requestCopy;
    v38 = 2082;
    v39 = v25;
    _os_log_debug_impl(&dword_1847D1000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ really begining request: %{public}@ synchronously: %{public}s", buf, 0x20u);
  }

  selfCopy2 = self;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke;
  aBlock[3] = &unk_1E6E4DB38;
  v11 = completionCopy;
  v33 = v11;
  v12 = _Block_copy(aBlock);
  xpcConnection = [requestCopy xpcConnection];
  context = [requestCopy context];
  inputItems = [context inputItems];
  endpoint = [requestCopy endpoint];
  if (synchronouslyCopy)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  }
  v17 = ;
  v26 = v12;
  internalImplementation = [context internalImplementation];
  [internalImplementation _setExtensionVendorProxy:v17];
  if (endpoint)
  {
    endpoint2 = endpoint;
  }

  else
  {
    _auxiliaryListener = [internalImplementation _auxiliaryListener];
    endpoint2 = [_auxiliaryListener endpoint];
  }

  _UUID = [context _UUID];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84;
  v28[3] = &unk_1E6E4DB60;
  v28[4] = selfCopy2;
  v29 = requestCopy;
  v30 = context;
  v31 = v11;
  v22 = v11;
  v23 = context;
  v24 = requestCopy;
  [v17 _beginRequestWithExtensionItems:inputItems listenerEndpoint:endpoint2 withContextUUID:_UUID completion:v28];
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _EXLegacyLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _EXLegacyLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84_cold_1();
  }

  v8 = [*(a1 + 48) _UUID];
  v9 = [v8 isEqual:v5];

  if ((v9 & 1) == 0)
  {
    v11 = _EXLegacyLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84_cold_2(v11);
    }
  }

  if (v5)
  {
    [*(a1 + 32) _didCreateExtensionContext:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  v10 = objc_opt_new();
  [v10 setOptions:options];
  [v10 setInputItems:itemsCopy];

  [(EXConcreteExtension *)self _beginExtensionRequest:v10 completion:completionCopy];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items error:(id *)error
{
  itemsCopy = items;
  v9 = objc_opt_new();
  [v9 setOptions:options];
  [v9 setInputItems:itemsCopy];

  v10 = [(EXConcreteExtension *)self _beginExtensionRequest:v9 error:error];

  return v10;
}

- (void)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  endpointCopy = endpoint;
  itemsCopy = items;
  v13 = objc_opt_new();
  [v13 setOptions:options];
  [v13 setInputItems:itemsCopy];

  [v13 setEndpoint:endpointCopy];
  [(EXConcreteExtension *)self _beginExtensionRequest:v13 completion:completionCopy];
}

- (id)beginExtensionRequestWithOptions:(unint64_t)options inputItems:(id)items listenerEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  itemsCopy = items;
  v12 = objc_opt_new();
  [v12 setOptions:options];
  [v12 setInputItems:itemsCopy];

  [v12 setEndpoint:endpointCopy];
  v13 = [(EXConcreteExtension *)self _beginExtensionRequest:v12 error:error];

  return v13;
}

- (void)_beginExtensionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _EXRegistrationLog(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = _EXRegistrationLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "async extension request", "", buf, 2u);
  }

  v14 = _EXLegacyLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension _beginExtensionRequest:completion:];
  }

  [requestCopy applyActiveWebPageAlternativeIfNeededForExtension:self];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke;
  v21 = &unk_1E6E4DBD8;
  selfCopy = self;
  v23 = requestCopy;
  v24 = completionCopy;
  v25 = v9;
  v15 = completionCopy;
  v16 = requestCopy;
  v17 = _Block_copy(&v18);
  [(EXConcreteExtension *)self _safelyBeginUsingWithRequest:v16 readyHandler:v17, v18, v19, v20, v21, selfCopy];
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2;
  v12[3] = &unk_1E6E4DBB0;
  v13 = v6;
  v14 = *(a1 + 40);
  v15 = v5;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16 = *(a1 + 32);
  v18 = v8;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _EXLegacyLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2_cold_1();
    }

    v4 = _EXRegistrationLog(v3);
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_INTERVAL_END, v6, "async extension request'", "", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    [*(a1 + 40) setAssertion:*(a1 + 48)];
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3;
    v12[3] = &unk_1E6E4DB88;
    v15 = buf;
    v16 = v18;
    v9 = v8;
    v11 = *(a1 + 64);
    v10 = *(a1 + 72);
    v13 = v9;
    v17 = v10;
    v14 = v11;
    [v7 _reallyBeginExtensionRequest:v9 completion:v12];

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    if (v6)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v10 = _EXLegacyLog(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_4();
      }
    }

    else
    {
      v10 = _EXLegacyLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_5();
      }
    }

    v15 = _EXRegistrationLog(v14);
    v16 = v15;
    v17 = a1[8];
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_1847D1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "async extension request'", "", v18, 2u);
    }

    (*(a1[5] + 16))();
    v9 = a1[6];
    goto LABEL_18;
  }

  if (v6)
  {
    v8 = _EXLegacyLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_1();
    }

    v9 = a1[7];
LABEL_18:
    *(*(v9 + 8) + 24) = 1;
    goto LABEL_22;
  }

  v11 = *(*(a1[7] + 8) + 24);
  v12 = _EXLegacyLog(0);
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_3();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_2();
  }

LABEL_22:
}

- (id)_beginExtensionRequest:(id)request error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = _EXRegistrationLog(requestCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = _EXRegistrationLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "synchronus extension request", "", buf, 2u);
  }

  v13 = _EXLegacyLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension _beginExtensionRequest:error:];
  }

  *buf = 0;
  v31 = buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v14 = [(EXConcreteExtension *)self _beginUsingAndCreateExtensionAssertionWithRequest:requestCopy error:error];
  if (v14)
  {
    v14 = [(EXConcreteExtension *)self makeExtensionContextAndXPCConnectionForRequest:requestCopy error:error];
    if (v14)
    {
      *v36 = 0;
      *&v36[8] = v36;
      *&v36[16] = 0x3032000000;
      v37 = __Block_byref_object_copy_;
      v38 = __Block_byref_object_dispose_;
      v39 = 0;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __52__EXConcreteExtension__beginExtensionRequest_error___block_invoke;
      v29[3] = &unk_1E6E4DC00;
      v29[4] = v36;
      v29[5] = buf;
      [(EXConcreteExtension *)self _reallyBeginExtensionRequest:requestCopy synchronously:1 completion:v29];
      context = [requestCopy context];

      if (context)
      {
        context2 = [requestCopy context];
        [(EXConcreteExtension *)self _didCreateExtensionContext:context2];
      }

      v17 = *(*&v36[8] + 40);
      if (v17)
      {
        if (!error)
        {
          goto LABEL_22;
        }
      }

      else if (!error || *(v31 + 5))
      {
        goto LABEL_22;
      }

      *error = v17;
LABEL_22:
      _Block_object_dispose(v36, 8);

      goto LABEL_23;
    }
  }

  v18 = _EXLegacyLog(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (error)
    {
      v19 = *error;
    }

    else
    {
      v19 = 0;
    }

    *v36 = 138543362;
    *&v36[4] = v19;
    _os_log_impl(&dword_1847D1000, v18, OS_LOG_TYPE_DEFAULT, "Failed to begin using with error: %{public}@", v36, 0xCu);
  }

LABEL_23:
  v21 = _EXLegacyLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(v31 + 5);
    if (error)
    {
      v28 = *error;
    }

    else
    {
      v28 = 0;
    }

    *v36 = 138543874;
    *&v36[4] = requestCopy;
    *&v36[12] = 2114;
    *&v36[14] = v27;
    *&v36[22] = 2114;
    v37 = v28;
    _os_log_debug_impl(&dword_1847D1000, v21, OS_LOG_TYPE_DEBUG, "completed synchronus begin extension request %{public}@ with identifier: %{public}@ error: %{public}@", v36, 0x20u);
  }

  v23 = _EXRegistrationLog(v22);
  v24 = v23;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v24, OS_SIGNPOST_INTERVAL_END, v8, "synchronus extension request'", "", v36, 2u);
  }

  v25 = *(v31 + 5);
  _Block_object_dispose(buf, 8);

  return v25;
}

void __52__EXConcreteExtension__beginExtensionRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)cancelExtensionRequestWithIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A2B8];
  v17 = *MEMORY[0x1E696A578];
  v18[0] = @"Extension cancelled by host.";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v8 = [v5 errorWithDomain:v6 code:-2 userInfo:v7];

  requestCancellationBlock = [(EXConcreteExtension *)self requestCancellationBlock];
  v10 = requestCancellationBlock;
  if (requestCancellationBlock)
  {
    (*(requestCancellationBlock + 16))(requestCancellationBlock, identifierCopy, v8);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__EXConcreteExtension_cancelExtensionRequestWithIdentifier___block_invoke;
  aBlock[3] = &unk_1E6E4DB10;
  aBlock[4] = self;
  v11 = identifierCopy;
  v16 = v11;
  v12 = _Block_copy(aBlock);
  _requestPostCompletionBlock = [(EXConcreteExtension *)self _requestPostCompletionBlock];

  if (_requestPostCompletionBlock)
  {
    _requestPostCompletionBlock2 = [(EXConcreteExtension *)self _requestPostCompletionBlock];
    (_requestPostCompletionBlock2)[2](_requestPostCompletionBlock2, v11, v12);
  }

  else
  {
    v12[2](v12);
  }
}

void __60__EXConcreteExtension_cancelExtensionRequestWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__EXConcreteExtension_cancelExtensionRequestWithIdentifier___block_invoke_2;
  v4[3] = &unk_1E6E4DB10;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

- (int)pidForRequestIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMutableDictionary *)self->__extensionServiceConnections objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = _EXLegacyLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = identifierCopy;
      _os_log_impl(&dword_1847D1000, v6, OS_LOG_TYPE_DEFAULT, "nil service connection for UUID: %{public}@", &v9, 0xCu);
    }
  }

  processIdentifier = [v5 processIdentifier];

  os_unfair_lock_unlock(&self->_unfairLock);
  return processIdentifier;
}

- (void)_didCreateExtensionContext:(id)context
{
  contextCopy = context;
  v5 = +[_EXDefaults sharedInstance];
  platformShouldExhibitEmbeddedBehavior = [v5 platformShouldExhibitEmbeddedBehavior];

  if (!platformShouldExhibitEmbeddedBehavior)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![objc_opt_class() _shouldSendHostApplicationStateNotifications])
  {
    goto LABEL_8;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v9 = [infoDictionary objectForKeyedSubscript:@"_EXIgnoreHostAppStateChanges"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v12 = _EXDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEFAULT, "Disallowing host app state observation due to Info.plist override.", buf, 2u);
    }

LABEL_8:
    v13 = 1;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  os_unfair_lock_lock(&self->_unfairLock);
  if ((v13 & 1) == 0 && !self->_observingHostAppStateChanges)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__EXConcreteExtension__didCreateExtensionContext___block_invoke;
    block[3] = &unk_1E6E4DC28;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    self->_observingHostAppStateChanges = 1;
  }

  os_unfair_lock_unlock(&self->_unfairLock);
LABEL_14:
}

void __50__EXConcreteExtension__didCreateExtensionContext___block_invoke(uint64_t a1)
{
  Class = objc_getClass("UIApplication");
  if (Class)
  {
    v7 = [(objc_class *)Class performSelector:sel_sharedApplication];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel__hostWillEnterForegroundNote_ name:@"UIApplicationWillEnterForegroundNotification" object:v7];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__hostDidEnterBackgroundNote_ name:@"UIApplicationDidEnterBackgroundNotification" object:v7];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:sel__hostWillResignActiveNote_ name:@"UIApplicationWillResignActiveNotification" object:v7];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:*(a1 + 32) selector:sel__hostDidBecomeActiveNote_ name:@"UIApplicationDidBecomeActiveNotification" object:v7];
  }
}

- (id)objectForInfoDictionaryKey:(id)key
{
  v29[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  plugIn = self->__plugIn;
  v29[0] = keyCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v7 = plugIn;
  v8 = v6;
  v9 = v8;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  if (!v7)
  {
    v10 = _EXDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension objectForInfoDictionaryKey:];
    }
  }

  v11 = dispatch_semaphore_create(0);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __EXConcreteExtensionGetLocalizedInfoDictionaryObjectForPlugInAndKeys_block_invoke;
  v20 = &unk_1E6E4DED0;
  v22 = &v23;
  v12 = v11;
  v21 = v12;
  [(PKPlugIn *)v7 localizedInfoDictionaryForKeys:v9 completion:&v17];
  if (dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL))
  {
    NSLog(&cfstr_TimedOutAttemp.isa, v17, v18, v19, v20);
  }

  v13 = v21;
  v14 = v24[5];

  _Block_object_dispose(&v23, 8);
  v15 = [v14 objectForKey:keyCopy];

  return v15;
}

- (id)icons
{
  if (objc_opt_respondsToSelector())
  {
    __UIKit_upcall_icons = [(EXConcreteExtension *)self __UIKit_upcall_icons];
  }

  else
  {
    __UIKit_upcall_icons = 0;
  }

  return __UIKit_upcall_icons;
}

- (id)_extensionContextForUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMutableDictionary *)self->__extensionContexts objectForKey:dCopy];
  os_unfair_lock_unlock(&self->_unfairLock);

  return v5;
}

- (id)_itemProviderForPayload:(id)payload extensionContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = [payload objectForKeyedSubscript:0x1EF28A810];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  inputItems = [contextCopy inputItems];
  v24 = [inputItems countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v8 = *v31;
    v22 = *v31;
    v23 = contextCopy;
    v25 = inputItems;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(inputItems);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        attachments = [v10 attachments];
        v12 = [attachments countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(attachments);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              _loadOperator = [v16 _loadOperator];
              identifier = [_loadOperator identifier];
              v19 = [identifier isEqual:v6];

              if (v19)
              {
                v20 = v16;

                contextCopy = v23;
                inputItems = v25;
                goto LABEL_19;
              }
            }

            v13 = [attachments countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        inputItems = v25;
        v8 = v22;
      }

      v20 = 0;
      contextCopy = v23;
      v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  return v20;
}

- (BOOL)_isPhotoServiceAccessGranted
{
  v15 = *MEMORY[0x1E69E9840];
  uuid = [(PKPlugIn *)self->__plugIn uuid];
  if (!uuid)
  {
    v3 = _EXDefaultLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension _isPhotoServiceAccessGranted];
    }
  }

  v4 = +[_EXServiceClient sharedInstance];
  v10 = 0;
  v5 = [v4 photoServiceAuthorizationStatusForExtensionUUID:uuid error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v8 = _EXDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = uuid;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEFAULT, "Cannot access privacy settings for %{public}@ with error %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)_completeRequestReturningItems:(id)items forExtensionContextWithUUID:(id)d completion:(id)completion
{
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1847D1000, "completing extension request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = _os_activity_create(&dword_1847D1000, "tear down extension request", v11, OS_ACTIVITY_FLAG_DEFAULT);
  v13 = [EXConcreteExtension globalStateQueueForExtension:self];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke;
  v19[3] = &unk_1E6E4DCA0;
  v20 = v11;
  selfCopy = self;
  v22 = dCopy;
  v23 = itemsCopy;
  v24 = v12;
  v25 = completionCopy;
  v14 = v12;
  v15 = completionCopy;
  v16 = itemsCopy;
  v17 = dCopy;
  v18 = v11;
  dispatch_async(v13, v19);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [*(a1 + 40) requestCompletionBlock];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = EXConcreteExtensionFilterItemsWithMCProfile(*(a1 + 40), *(a1 + 56));
    (v2)[2](v2, v3, v4);
  }

  v5 = [*(a1 + 40) _requestPostCompletionBlockWithItems];

  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 _requestPostCompletionBlockWithItems];
    v8 = *(a1 + 48);
    v9 = EXConcreteExtensionFilterItemsWithMCProfile(*(a1 + 40), *(a1 + 56));
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_2;
    v21[3] = &unk_1E6E4DC50;
    v10 = *(a1 + 48);
    v21[4] = *(a1 + 40);
    v22 = v10;
    v23 = *(a1 + 72);
    (v7)[2](v7, v8, v9, v21);
    v11 = &v22;
    v12 = &v23;
  }

  else
  {
    v13 = [v6 _requestPostCompletionBlock];

    v14 = *(a1 + 40);
    if (!v13)
    {
      EXConcreteExtensionTearDownRequestCompletion(v14, *(a1 + 48), *(a1 + 72));
      goto LABEL_8;
    }

    v15 = [v14 _requestPostCompletionBlock];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_4;
    v17[3] = &unk_1E6E4DC78;
    v16 = *(a1 + 48);
    v17[4] = *(a1 + 40);
    v18 = *(a1 + 64);
    v19 = *(a1 + 48);
    v20 = *(a1 + 72);
    (v15)[2](v15, v16, v17);
    v11 = &v18;
    v12 = &v19;

    v7 = v20;
  }

LABEL_8:
  os_activity_scope_leave(&state);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v2 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_3;
  block[3] = &unk_1E6E4DC50;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_4(uint64_t a1)
{
  v2 = [EXConcreteExtension globalStateQueueForExtension:*(a1 + 32)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_5;
  block[3] = &unk_1E6E4DC78;
  *&v3 = *(a1 + 40);
  *(&v3 + 1) = *(a1 + 32);
  v7 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __93__EXConcreteExtension__completeRequestReturningItems_forExtensionContextWithUUID_completion___block_invoke_5(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v2);
  EXConcreteExtensionTearDownRequestCompletion(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  os_activity_scope_leave(&v2);
}

- (void)_cancelRequestWithError:(id)error forExtensionContextWithUUID:(id)d completion:(id)completion
{
  errorCopy = error;
  dCopy = d;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1847D1000, "cancelling extension request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = [EXConcreteExtension globalStateQueueForExtension:self];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke;
  block[3] = &unk_1E6E4DCC8;
  v18 = v11;
  selfCopy = self;
  v20 = dCopy;
  v21 = errorCopy;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = errorCopy;
  v15 = dCopy;
  v16 = v11;
  dispatch_async(v12, block);
}

void __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = [*(a1 + 40) requestCancellationBlock];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 56));
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke_2;
  aBlock[3] = &unk_1E6E4DA70;
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14 = v4;
  aBlock[4] = v5;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 40) _requestPostCompletionBlockWithItems];

  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [v9 _requestPostCompletionBlockWithItems];
    (v10)[2](v10, *(a1 + 48), 0, v7);
  }

  else
  {
    v11 = [v9 _requestPostCompletionBlock];

    if (!v11)
    {
      v7[2](v7);
      goto LABEL_8;
    }

    v10 = [*(a1 + 40) _requestPostCompletionBlock];
    (v10[2])(v10, *(a1 + 48), v7);
  }

LABEL_8:
  os_activity_scope_leave(&state);
}

void __86__EXConcreteExtension__cancelRequestWithError_forExtensionContextWithUUID_completion___block_invoke_2(void *a1)
{
  v2 = _EXLegacyLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "in completeTearDown block", v6, 2u);
  }

  (*(a1[6] + 16))();
  v4 = a1[4];
  v3 = a1[5];
  [v4 requestTeardownDelay];
  EXConcreteExtensionTearDownRequestWithIdentifier(v4, v3, v5);
}

- (void)_loadItemForPayload:(id)payload contextIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  v10 = [(EXConcreteExtension *)self _extensionContextForUUID:identifier];
  v11 = [(EXConcreteExtension *)self _itemProviderForPayload:payloadCopy extensionContext:v10];
  v12 = [payloadCopy objectForKeyedSubscript:0x1EF28A830];
  v13 = [payloadCopy objectForKeyedSubscript:0x1EF28A850];
  Class = objc_getClass([v13 UTF8String]);
  v15 = [payloadCopy objectForKeyedSubscript:0x1EF28A870];

  v31 = 0u;
  v32 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v17 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v28 = v31;
  v22[2] = __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke;
  v22[3] = &unk_1E6E4DD18;
  v26 = handlerCopy;
  v27 = Class;
  v23 = v11;
  v24 = v12;
  v30 = 1;
  v29 = v32;
  v25 = v15;
  v18 = handlerCopy;
  v19 = v15;
  v20 = v12;
  v21 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v22);
}

void __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_1E6E4DCF0;
  v12 = *(a1 + 104);
  v8 = v3;
  v6 = *(a1 + 88);
  v10 = *(a1 + 72);
  v11 = v6;
  v9 = *(a1 + 56);
  [v4 _loadItemOfClass:v2 forTypeIdentifier:v8 options:v5 coerceForCoding:1 completionHandler:v7];
}

void __79__EXConcreteExtension__loadItemForPayload_contextIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 80) == 1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      if (UTTypeConformsTo(v6, *MEMORY[0x1E69638B8]) && _NSIsNSData())
      {
        v7 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:v15 typeIdentifier:*(a1 + 32) error:0];
        v8 = v7;
        if (v7)
        {
          v9 = *(a1 + 64);
          v16 = *(a1 + 48);
          v17 = v9;
          v10 = EXConcreteExtensionGetSandboxedResourceForItemIfNeeded(v7, &v16, 0);
          v11 = v10;
          if (v10)
          {
            v12 = v10;

            v15 = v12;
          }
        }
      }
    }
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v14;
  EXConcreteExtensionCompleteItemLoading(v15, &v16, v5, v13);
}

- (void)_loadPreviewImageForPayload:(id)payload contextIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  payloadCopy = payload;
  v10 = [(EXConcreteExtension *)self _extensionContextForUUID:identifier];
  v11 = [(EXConcreteExtension *)self _itemProviderForPayload:payloadCopy extensionContext:v10];
  v12 = [payloadCopy objectForKeyedSubscript:0x1EF28A850];
  Class = objc_getClass([v12 UTF8String]);
  v14 = [payloadCopy objectForKeyedSubscript:0x1EF28A870];

  v27 = 0u;
  v28 = 0u;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v16 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke;
  v20[3] = &unk_1E6E4DD68;
  v21 = v11;
  v22 = v14;
  v25 = v27;
  v26 = v28;
  v23 = handlerCopy;
  v24 = Class;
  v17 = handlerCopy;
  v18 = v14;
  v19 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

void __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v3 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = v3;
  v5[2] = __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E6E4DD40;
  v4 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v1 _loadPreviewImageOfClass:v4 options:v2 coerceForCoding:1 completionHandler:v5];
}

void __87__EXConcreteExtension__loadPreviewImageForPayload_contextIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v4;
  EXConcreteExtensionCompleteItemLoading(a2, v5, a3, v3);
}

- (void)_openURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__EXConcreteExtension__openURL_completion___block_invoke;
    block[3] = &unk_1E6E4DC50;
    block[4] = self;
    v9 = lCopy;
    v10 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __43__EXConcreteExtension__openURL_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = _Block_copy(*(a1 + 48));
  [v1 performSelector:sel___UI_upcall_openURL_completion_ withObject:v2 withObject:v3];
}

- (BOOL)_isSystemExtension
{
  infoDictionary = [(EXConcreteExtension *)self infoDictionary];

  if (!infoDictionary)
  {
    v5 = _EXDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [EXConcreteExtension _isSystemExtension];
    }
  }

  infoDictionary2 = [(EXConcreteExtension *)self infoDictionary];
  v7 = [infoDictionary2 objectForKey:@"XPCService"];

  v8 = [v7 objectForKey:@"ServiceType"];
  v9 = [v8 isEqualToString:@"System"];

  return v9;
}

- (void)_safelyBeginUsing:(id)using
{
  usingCopy = using;
  v5 = objc_opt_new();
  [v5 setOptions:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EXConcreteExtension__safelyBeginUsing___block_invoke;
  v7[3] = &unk_1E6E4DD90;
  v8 = usingCopy;
  v6 = usingCopy;
  [(EXConcreteExtension *)self _safelyBeginUsingWithRequest:v5 readyHandler:v7];
}

- (void)_safelyBeginUsingSynchronously:(BOOL)synchronously request:(id)request readyHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  v78 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v10 = _sharedSafePluginQueue(handlerCopy);
  dispatch_assert_queue_V2(v10);

  plugIn = self->__plugIn;
  if (plugIn && ![(PKPlugIn *)plugIn spent])
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x3010000000;
    v66 = 0;
    v67 = 0;
    v65 = &unk_1848DD1FB;
    v48 = _os_activity_create(&dword_1847D1000, "begin using plugin", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v48, v63 + 2);
    v50 = synchronouslyCopy;
    if (useAssertions())
    {
      objc_initWeak(location, requestCopy);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke;
      aBlock[3] = &unk_1E6E4DDB8;
      objc_copyWeak(&v61, location);
      v17 = _Block_copy(aBlock);
      objc_destroyWeak(&v61);
      objc_destroyWeak(location);
    }

    else
    {
      v17 = 0;
    }

    if (useAssertions())
    {
      identifier = [(EXConcreteExtension *)self identifier];
      selfCopy = self;
      v20 = identifier;
      if ([(EXConcreteExtension *)selfCopy _wantsProcessPerRequest])
      {
        v21 = 0;
      }

      else
      {
        v68 = 0;
        v69 = &v68;
        v70 = 0x2020000000;
        v71 = 0;
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __EXConcreteExtensionGetProcessIdentifierForExtensionIdentifier_block_invoke;
        v75 = &unk_1E6E4DF58;
        v77 = &v68;
        v23 = v20;
        v76 = v23;
        safelyAccessPidForExtensionIdentiferDictionary(location);
        v21 = *(v69 + 6);
        if (v21 <= 0)
        {
          if ([(EXConcreteExtension *)selfCopy _isSystemExtension])
          {
            v24 = v23;
            if (EXConcreteExtensionResolveSystemExtensionPIDByIdentifier_onceToken != -1)
            {
              [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
            }

            v25 = v24;
            uTF8String = [v24 UTF8String];
            v27 = xpc_connection_create(uTF8String, EXConcreteExtensionResolveSystemExtensionPIDByIdentifier_resolution_queue);
            if (v27)
            {
              v21 = [EXXPCUtil servicePidFromXPCConnection:v27];
              xpc_connection_set_event_handler(v27, &__block_literal_global_424);
              xpc_connection_activate(v27);
            }

            else
            {
              v21 = 0;
            }

            *(v69 + 6) = v21;
          }

          else
          {
            v21 = *(v69 + 6);
          }
        }

        _Block_object_dispose(&v68, 8);
      }

      v28 = _NSAcquireProcessAssertionForPIDWithOptions(v21, [requestCopy options], v17);
      v22 = v28;
      if (v28)
      {
        v29 = _EXLegacyLog(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *location = 138543618;
          *&location[4] = v22;
          *&location[12] = 1024;
          *&location[14] = v21;
          _os_log_impl(&dword_1847D1000, v29, OS_LOG_TYPE_DEFAULT, "Aquired asertion %{public}@ for running extension with pid %d", location, 0x12u);
        }
      }
    }

    else
    {
      v22 = 0;
      LODWORD(v21) = -1;
    }

    v30 = self->__plugIn;
    if (!v30)
    {
      v31 = _EXDefaultLog(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
      }

      v30 = self->__plugIn;
    }

    spent = [(PKPlugIn *)v30 spent];
    if (spent)
    {
      v33 = _EXDefaultLog(spent);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
      }
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142;
    v53[3] = &unk_1E6E4DDE0;
    v53[4] = self;
    v34 = v22;
    v54 = v34;
    v59 = v21;
    v35 = requestCopy;
    v55 = v35;
    v36 = v17;
    v56 = v36;
    v57 = handlerCopy;
    v58 = &v62;
    v37 = _Block_copy(v53);
    v38 = self->__plugIn;
    v39 = _EXLegacyLog(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      pkUUID = [v35 pkUUID];
      [(EXConcreteExtension *)v38 _safelyBeginUsingSynchronously:pkUUID request:location readyHandler:v39];
    }

    v41 = MEMORY[0x1E69C4A90];
    pkUUID2 = [v35 pkUUID];
    persona = [v35 persona];
    v44 = [v41 launchRequestWithUUID:pkUUID2 launchPersona:persona];

    sandboxProfileName = [v35 sandboxProfileName];
    [(PKPlugIn *)v38 setSandboxProfile:sandboxProfileName];

    if (v50)
    {
      if (objc_opt_respondsToSelector())
      {
        v52 = 0;
        v46 = &v52;
        [(PKPlugIn *)v38 beginUsingRequest:v44 error:&v52];
      }

      else
      {
        v51 = 0;
        v46 = &v51;
        [(PKPlugIn *)v38 beginUsingWithError:&v51];
      }

      v47 = *v46;
      v37[2](v37, v47);
    }

    else if (objc_opt_respondsToSelector())
    {
      [(PKPlugIn *)v38 beginUsingRequest:v44 completion:v37];
    }

    else
    {
      [(PKPlugIn *)v38 beginUsing:v37];
    }

    _Block_object_dispose(&v62, 8);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v72 = *MEMORY[0x1E696A278];
    v73 = @"The plugin has been invalidated.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E696A2B8] code:-1 userInfo:v13];

    v16 = _EXLegacyLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [EXConcreteExtension _safelyBeginUsingSynchronously:request:readyHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _EXLegacyLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 xpcConnection];
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_1847D1000, v3, OS_LOG_TYPE_DEFAULT, "Assertion invalidated: Invalidating XPC connection %{public}@ ", &v6, 0xCu);
    }

    v5 = [v2 xpcConnection];
    [v5 invalidate];
  }
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = useAssertions();
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = [*(a1 + 32) _plugInProcessIdentifier];
    v8 = v7;
    if (!v7)
    {
      v9 = _EXLegacyLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_1();
      }
    }

    v10 = [*(*(a1 + 32) + 96) pluginConnection];
    v11 = [v10 _xpcConnection];
    [*(a1 + 32) set_stashedPlugInConnection:v11];

    v12 = *(a1 + 40);
    if (v12 && v8 == *(a1 + 80))
    {
      v5 = v12;
LABEL_12:
      v15 = v5;
      goto LABEL_18;
    }

    [v12 invalidate];
    v13 = *v6;
    v14 = [*v6 identifier];
    if (([v13 _wantsProcessPerRequest] & 1) == 0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __EXConcreteExtensionSetProcessIdentifierForExtensionIdentifier_block_invoke;
      v28 = &unk_1E6E4DFA0;
      v29 = v14;
      v30 = v8;
      safelyAccessPidForExtensionIdentiferDictionary(buf);
    }

    v5 = _NSAcquireProcessAssertionForPIDWithOptions(v8, [*(a1 + 48) options], *(a1 + 56));
    if (v5)
    {
      goto LABEL_12;
    }

    v16 = _EXLegacyLog(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v24 = *(*v6 + 12);
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 1024;
      *&buf[14] = v8;
      _os_log_error_impl(&dword_1847D1000, v16, OS_LOG_TYPE_ERROR, "Failed to acquire assertion for plugin: %{public}@ pid: %d", buf, 0x12u);
    }

    if (!v3)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A2B8];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"The plugin cannot be restarted.";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v3 = [v17 errorWithDomain:v18 code:-1 userInfo:v19];
    }
  }

  v15 = 0;
LABEL_18:
  v20 = _EXLegacyLog(v5);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_2(a1, v3, v20);
  }

  (*(*(a1 + 64) + 16))();
  v21 = useAssertions();
  if (!v15 && v21)
  {
    v22 = _EXLegacyLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_3(a1);
    }

    v21 = [*(a1 + 32) _kill:9];
  }

  if (v3)
  {
    v23 = _EXLegacyLog(v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_4(a1);
    }

    [v15 invalidate];
    [*(a1 + 32) _kill:9];
  }

  os_activity_scope_leave((*(*(a1 + 72) + 8) + 32));

  objc_autoreleasePoolPop(v4);
}

- (void)_safelyBeginUsingWithRequest:(id)request readyHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = _sharedSafePluginQueue(handlerCopy);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__EXConcreteExtension__safelyBeginUsingWithRequest_readyHandler___block_invoke;
  block[3] = &unk_1E6E4DC50;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(v8, block);
}

- (BOOL)_beginUsingAndCreateExtensionAssertionWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = _sharedSafePluginQueue(requestCopy);
  dispatch_assert_queue_not_V2(v7);

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v9 = _sharedSafePluginQueue(v8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke;
  block[3] = &unk_1E6E4DE30;
  block[4] = self;
  v10 = requestCopy;
  v16 = v10;
  v17 = &v18;
  dispatch_sync(v9, block);

  assertion = [v10 assertion];
  if (assertion)
  {

LABEL_3:
    v12 = 1;
    goto LABEL_4;
  }

  v14 = v19[5];
  if (!v14)
  {
    goto LABEL_3;
  }

  v12 = 0;
  if (error)
  {
    *error = v14;
  }

LABEL_4:

  _Block_object_dispose(&v18, 8);
  return v12;
}

void __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke_2;
  v6[3] = &unk_1E6E4DE08;
  v4 = v2;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v3 _safelyBeginUsingSynchronously:1 request:v4 readyHandler:v6];
}

void __79__EXConcreteExtension__beginUsingAndCreateExtensionAssertionWithRequest_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setAssertion:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_safelyEndUsingRequestWithPKUUID:(id)d processAssertion:(id)assertion continuation:(id)continuation
{
  dCopy = d;
  continuationCopy = continuation;
  v9 = _sharedSafePluginQueue(continuationCopy);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke;
  block[3] = &unk_1E6E4DE58;
  v13 = dCopy;
  v14 = continuationCopy;
  block[4] = self;
  v10 = dCopy;
  v11 = continuationCopy;
  dispatch_async(v9, block);
}

void __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = v2;
    v4 = _EXLegacyLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_1();
    }

    if (objc_opt_respondsToSelector())
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_153;
      v14[3] = &unk_1E6E4DB38;
      v5 = &v15;
      v6 = *(a1 + 40);
      v15 = *(a1 + 48);
      [v3 endUsingRequest:v6 completion:v14];
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_2;
      v12[3] = &unk_1E6E4DB38;
      v5 = &v13;
      v13 = *(a1 + 48);
      [v3 endUsing:v12];
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A2B8];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"The plugin has been invalidated.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v3 = [v7 errorWithDomain:v8 code:-1 userInfo:v9];

    v11 = _EXLegacyLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_kill:(int)_kill
{
  v3 = *&_kill;
  v5 = _EXLegacyLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EXConcreteExtension _kill:];
  }

  pluginConnection = [(PKPlugIn *)self->__plugIn pluginConnection];
  [pluginConnection _killConnection:v3];

  _stashedPlugInConnection = [(EXConcreteExtension *)self _stashedPlugInConnection];

  if (_stashedPlugInConnection)
  {
    _stashedPlugInConnection2 = [(EXConcreteExtension *)self _stashedPlugInConnection];
    xpc_connection_kill();

    [(EXConcreteExtension *)self set_stashedPlugInConnection:0];
  }
}

- (id)extensionContexts
{
  os_unfair_lock_lock(&self->_unfairLock);
  allValues = [(NSMutableDictionary *)self->__extensionContexts allValues];
  os_unfair_lock_unlock(&self->_unfairLock);

  return allValues;
}

- (void)_dropAssertion
{
  v3 = _sharedSafePluginQueue(self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EXConcreteExtension__dropAssertion__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __37__EXConcreteExtension__dropAssertion__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) internalImplementation];
        v7 = [v6 _processAssertion];
        [v7 invalidate];
        [v6 _setProcessAssertion:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)_hostWillEnterForegroundNote:(id)note
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__EXConcreteExtension__hostWillEnterForegroundNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __52__EXConcreteExtension__hostWillEnterForegroundNote___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostWillEnterForegroundForContextUUID:v9 completion:&__block_literal_global_155];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)_hostDidEnterBackgroundNote:(id)note
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__EXConcreteExtension__hostDidEnterBackgroundNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __51__EXConcreteExtension__hostDidEnterBackgroundNote___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostDidEnterBackgroundForContextUUID:v9 completion:&__block_literal_global_157];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)_hostWillResignActiveNote:(id)note
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__EXConcreteExtension__hostWillResignActiveNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __49__EXConcreteExtension__hostWillResignActiveNote___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostWillResignActiveForContextUUID:v9 completion:&__block_literal_global_159];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)_hostDidBecomeActiveNote:(id)note
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__EXConcreteExtension__hostDidBecomeActiveNote___block_invoke;
  v3[3] = &unk_1E6E4DC28;
  v3[4] = self;
  EXConcreteExtensionDispatchSyncFromMainQueueToGlobalStateQueue(self, v3);
}

void __48__EXConcreteExtension__hostDidBecomeActiveNote___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) extensionContexts];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 internalImplementation];
        v8 = [v7 _extensionVendorProxy];
        v9 = [v6 _UUID];
        [v8 _hostDidBecomeActiveForContextUUID:v9 completion:&__block_literal_global_161];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (NSDictionary)_extensionState
{
  _plugIn = [(EXConcreteExtension *)self _plugIn];
  extensionState = [_plugIn extensionState];
  v4 = [extensionState copy];

  return v4;
}

- (void)_setExtensionState:(id)state
{
  v5 = [state copy];
  _plugIn = [(EXConcreteExtension *)self _plugIn];
  [_plugIn setExtensionState:v5];
}

- (BOOL)_isMarkedNew
{
  _plugIn = [(EXConcreteExtension *)self _plugIn];
  userElection = [_plugIn userElection];

  if (userElection)
  {
    return 0;
  }

  _plugIn2 = [(EXConcreteExtension *)self _plugIn];
  v7 = [_plugIn2 valueForKey:@"extensionState"];

  v8 = [v7 objectForKeyedSubscript:@"lastDateManagedOn"];

  if (v8)
  {
    v5 = 0;
  }

  else
  {
    v9 = [v7 objectForKeyedSubscript:@"firstDateIndicatedFor"];
    if (v9)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v12 = [currentCalendar components:16 fromDate:v9 toDate:date options:0];

      v5 = [v12 day] < 2;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)_didShowExtensionManagementInterface
{
  _extensionState = [(EXConcreteExtension *)self _extensionState];
  v5 = [_extensionState mutableCopy];

  date = [MEMORY[0x1E695DF00] date];
  [v5 setObject:date forKey:@"lastDateManagedOn"];

  [(EXConcreteExtension *)self willChangeValueForKey:@"markedNew"];
  [(EXConcreteExtension *)self _setExtensionState:v5];
  [(EXConcreteExtension *)self didChangeValueForKey:@"markedNew"];
}

- (void)_didShowNewExtensionIndicator
{
  _extensionState = [(EXConcreteExtension *)self _extensionState];
  v6 = [_extensionState mutableCopy];

  v4 = [v6 objectForKey:@"firstDateIndicatedFor"];

  if (!v4)
  {
    date = [MEMORY[0x1E695DF00] date];
    [v6 setObject:date forKey:@"firstDateIndicatedFor"];

    [(EXConcreteExtension *)self willChangeValueForKey:@"markedNew"];
    [(EXConcreteExtension *)self _setExtensionState:v6];
    [(EXConcreteExtension *)self didChangeValueForKey:@"markedNew"];
  }
}

- (void)_resetExtensionState
{
  [(EXConcreteExtension *)self willChangeValueForKey:@"markedNew"];
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  [(EXConcreteExtension *)self _setExtensionState:dictionary];

  [(EXConcreteExtension *)self didChangeValueForKey:@"markedNew"];
}

+ (id)_inputItemsByApplyingActiveWebPageAlternative:(id)alternative ifNeededByActivationRule:(id)rule
{
  alternativeCopy = alternative;
  v11 = 0;
  if ([self _evaluateActivationRule:rule withInputItemsIfTheyMatchActiveWebPageAlternative:alternativeCopy matchResult:&v11])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __131__EXConcreteExtension_NSExtensionActiveWebPageAlternative___inputItemsByApplyingActiveWebPageAlternative_ifNeededByActivationRule___block_invoke;
    v10[3] = &__block_descriptor_40_e42_B24__0__NSExtensionItem_8__NSDictionary_16l;
    v10[4] = v11;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v10];
    v8 = [alternativeCopy filteredArrayUsingPredicate:v7];

    alternativeCopy = v8;
  }

  return alternativeCopy;
}

uint64_t __131__EXConcreteExtension_NSExtensionActiveWebPageAlternative___inputItemsByApplyingActiveWebPageAlternative_ifNeededByActivationRule___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 attachments];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (*(a1 + 32) == 1)
        {
          v10 = [*(*(&v18 + 1) + 8 * i) registeredTypeIdentifiers];
          v11 = [v10 containsObject:@"com.apple.webarchive"];

          if (!v11)
          {
            goto LABEL_19;
          }
        }

        v12 = [v3 userInfo];
        v13 = [v12 objectForKeyedSubscript:@"supportsJavaScript"];

        if (*(a1 + 32) == 2)
        {
          v14 = [v9 registeredTypeIdentifiers];
          if (![v14 containsObject:@"public.url"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

LABEL_19:
            v16 = 0;
            goto LABEL_20;
          }

          v15 = [v13 BOOLValue];

          if (!v15)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_20:

  return v16;
}

+ (BOOL)_matchingDictionaryMatchesActiveWebPageAlternative:(id)alternative
{
  v4 = [alternative objectForKeyedSubscript:@"extensionItems"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [self _genericValuesMatchActiveWebPageAlternativeWithExtensionItems:v6 attachmentsLens:&__block_literal_global_1 registeredTypeIdentifiersLens:&__block_literal_global_34 isActiveWebPageAttachmentCheck:&__block_literal_global_37];
  return v7;
}

void *__111__EXConcreteExtension_NSExtensionActiveWebPageAlternative___matchingDictionaryMatchesActiveWebPageAlternative___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"attachments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *__111__EXConcreteExtension_NSExtensionActiveWebPageAlternative___matchingDictionaryMatchesActiveWebPageAlternative___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"registeredTypeIdentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __111__EXConcreteExtension_NSExtensionActiveWebPageAlternative___matchingDictionaryMatchesActiveWebPageAlternative___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 objectForKeyedSubscript:@"registeredTypeIdentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 containsObject:@"com.apple.active-webpage"];
  return v6;
}

uint64_t __101__EXConcreteExtension_NSExtensionActiveWebPageAlternative___inputItemsMatchActiveWebPageAlternative___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"supportsJavaScript"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 BOOLValue];
  if (v9)
  {
    v10 = [v4 registeredTypeIdentifiers];
    v11 = [v10 containsObject:@"public.url"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_genericValuesMatchActiveWebPageAlternativeWithExtensionItems:(id)items attachmentsLens:(id)lens registeredTypeIdentifiersLens:(id)identifiersLens isActiveWebPageAttachmentCheck:(id)check
{
  itemsCopy = items;
  lensCopy = lens;
  identifiersLensCopy = identifiersLens;
  checkCopy = check;
  if ([itemsCopy count] == 2)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __199__EXConcreteExtension_NSExtensionActiveWebPageAlternative___genericValuesMatchActiveWebPageAlternativeWithExtensionItems_attachmentsLens_registeredTypeIdentifiersLens_isActiveWebPageAttachmentCheck___block_invoke;
    aBlock[3] = &unk_1E6E4E198;
    v22 = lensCopy;
    v23 = identifiersLensCopy;
    v25 = &v31;
    v26 = &v27;
    v24 = checkCopy;
    v13 = _Block_copy(aBlock);
    v14 = [itemsCopy objectAtIndexedSubscript:0];
    v13[2](v13, v14, 0);

    v15 = [itemsCopy objectAtIndexedSubscript:1];
    v13[2](v13, v15, 1);

    v16 = v32[3];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v18 = v28[3];
      v17 = v18 != 0x7FFFFFFFFFFFFFFFLL && v16 != v18;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __199__EXConcreteExtension_NSExtensionActiveWebPageAlternative___genericValuesMatchActiveWebPageAlternativeWithExtensionItems_attachmentsLens_registeredTypeIdentifiersLens_isActiveWebPageAttachmentCheck___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = (*(a1[4] + 16))();
  v6 = v5;
  if (v5 && [v5 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = (*(a1[5] + 16))();
    if (v8)
    {
      v9 = v8;
      if (*(*(a1[7] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && [v8 containsObject:@"com.apple.webarchive"])
      {
        *(*(a1[7] + 8) + 24) = a3;
      }

      if (*(*(a1[8] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && (*(a1[6] + 16))())
      {
        *(*(a1[8] + 8) + 24) = a3;
      }
    }
  }
}

+ (id)_dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:(id)identifier fromMatchingDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"extensionItems"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __141__EXConcreteExtension_NSExtensionActiveWebPageAlternative___dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier_fromMatchingDictionary___block_invoke;
  v16[3] = &unk_1E6E4E1C0;
  v17 = identifierCopy;
  v10 = identifierCopy;
  v11 = [v9 indexesOfObjectsPassingTest:v16];

  if ([v11 count])
  {
    v12 = [dictionaryCopy mutableCopy];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"extensionItems"];
    v14 = [v13 mutableCopy];

    [v14 removeObjectsAtIndexes:v11];
    [v12 setObject:v14 forKey:@"extensionItems"];
  }

  else
  {
    v12 = dictionaryCopy;
  }

  return v12;
}

uint64_t __141__EXConcreteExtension_NSExtensionActiveWebPageAlternative___dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier_fromMatchingDictionary___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"attachments"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v22 = v3;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [v15 objectForKeyedSubscript:@"registeredTypeIdentifiers"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        v19 = [v18 containsObject:*(a1 + 32)];
        if (v19)
        {
          v20 = 0;
          goto LABEL_23;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v20 = 1;
LABEL_23:
    v3 = v22;
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

+ (BOOL)_evaluateActivationRule:(id)rule withInputItemsIfTheyMatchActiveWebPageAlternative:(id)alternative matchResult:(int64_t *)result
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"extensionItems";
  ruleCopy = rule;
  v9 = [alternative valueForKey:@"_matchingDictionaryRepresentation"];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  LOBYTE(result) = [self _evaluateActivationRule:ruleCopy withDictionaryIfItMatchesActiveWebPageAlternative:v10 matchResult:result];

  return result;
}

+ (BOOL)_evaluateActivationRule:(id)rule withDictionaryIfItMatchesActiveWebPageAlternative:(id)alternative matchResult:(int64_t *)result
{
  ruleCopy = rule;
  alternativeCopy = alternative;
  v10 = [self _matchingDictionaryMatchesActiveWebPageAlternative:alternativeCopy];
  if (v10)
  {
    if ([self _evaluateActivationRuleWithoutWorkarounds:ruleCopy withExtensionItemsRepresentation:alternativeCopy])
    {
      *result = 3;
    }

    else
    {
      v11 = [self _dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:@"com.apple.active-webpage" fromMatchingDictionary:alternativeCopy];
      if ([self _evaluateActivationRuleWithoutWorkarounds:ruleCopy withExtensionItemsRepresentation:v11])
      {
        *result = 2;
      }

      else
      {
        v12 = [self _dictionaryIncludingOnlyItemsWithRegisteredTypeIdentifier:@"com.apple.webarchive" fromMatchingDictionary:alternativeCopy];
        *result = [self _evaluateActivationRuleWithoutWorkarounds:ruleCopy withExtensionItemsRepresentation:v12];
      }
    }
  }

  return v10;
}

+ (BOOL)evaluateActivationRule:(id)rule withExtensionItemsRepresentation:(id)representation
{
  ruleCopy = rule;
  representationCopy = representation;
  v10 = 0;
  if ([self _evaluateActivationRule:ruleCopy withDictionaryIfItMatchesActiveWebPageAlternative:representationCopy matchResult:&v10])
  {
    v8 = v10 != 0;
  }

  else
  {
    v8 = [self _evaluateActivationRuleWithoutWorkarounds:ruleCopy withExtensionItemsRepresentation:representationCopy];
  }

  return v8;
}

+ (BOOL)_evaluateActivationRule:(id)rule withExtensionItemsRepresentation:(id)representation error:(id *)error
{
  v11[3] = *MEMORY[0x1E69E9840];
  ruleCopy = rule;
  representationCopy = representation;
  v11[0] = 0;
  if ([self _evaluateActivationRule:ruleCopy withDictionaryIfItMatchesActiveWebPageAlternative:representationCopy matchResult:v11])
  {
    v9 = v11[0] != 0;
  }

  else
  {
    v9 = [self _evaluateActivationRuleWithoutWorkarounds:ruleCopy withExtensionItemsRepresentation:representationCopy];
  }

  return v9;
}

+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)workarounds withExtensionItemsRepresentation:(id)representation
{
  workaroundsCopy = workarounds;
  representationCopy = representation;
  if (workaroundsCopy)
  {
    if (_NSIsNSDictionary())
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 1;
      allValues = [workaroundsCopy allValues];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __109__EXConcreteExtension_Filtering___evaluateActivationRuleWithoutWorkarounds_withExtensionItemsRepresentation___block_invoke;
      v15[3] = &unk_1E6E4E258;
      v15[4] = &v16;
      [allValues enumerateObjectsUsingBlock:v15];

      if (v17[3])
      {
        matched = 0;
LABEL_5:
        _Block_object_dispose(&v16, 8);
LABEL_21:

        goto LABEL_22;
      }

      v10 = +[_EXDefaults sharedInstance];
      platformShouldExhibitEmbeddedBehavior = [v10 platformShouldExhibitEmbeddedBehavior];

      if (platformShouldExhibitEmbeddedBehavior)
      {
        v12 = [workaroundsCopy objectForKey:@"NSExtensionActivationSupportsLocationWithMaxCount"];
        if (v12 && _NSIsNSNumber() && [v12 intValue] >= 1)
        {
          matched = _EXExtensionItemsMatchHackishRepresentationOfSharedLocationExtensionItems(representationCopy);
          if ((matched & 1) != 0 || [workaroundsCopy count] == 1)
          {

            goto LABEL_5;
          }

          v13 = [workaroundsCopy mutableCopy];
          [v13 removeObjectForKey:@"NSExtensionActivationSupportsLocationWithMaxCount"];
        }

        else
        {
          v13 = workaroundsCopy;
        }

        workaroundsCopy = v13;
      }

      _Block_object_dispose(&v16, 8);
      v9 = _EXExtensionPredicateForActivationRule(workaroundsCopy);
    }

    else
    {
      v9 = _EXExtensionPredicateForActivationRule(workaroundsCopy);
      if (!EXExtensionIsPredicateSafeToExecuteWithObject(v9, representationCopy))
      {
        matched = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    matched = [v9 evaluateWithObject:representationCopy];
    goto LABEL_20;
  }

  matched = 0;
LABEL_22:

  return matched;
}

void __109__EXConcreteExtension_Filtering___evaluateActivationRuleWithoutWorkarounds_withExtensionItemsRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 intValue])
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_bareExtensionServiceConnection
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: _connectionUUID is required for process per request!", v2, v3, v4, v5);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(os_log_t)log error:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "extensionContext != nil";
  *(buf + 6) = 2080;
  *(buf + 14) = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXConcreteExtension.m";
  *(buf + 11) = 1024;
  *(buf + 6) = 667;
  *(buf + 14) = 2112;
  *(buf + 30) = a1;
  _os_log_fault_impl(&dword_1847D1000, log, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to initialize extension context class: %@", buf, 0x26u);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(void *)a1 error:(void *)a2 .cold.4(void *a1, void *a2)
{
  v3 = [a1 _UUID];
  v9 = [a2 identifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:error:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(NSObject *)a1 error:.cold.6(NSObject *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1847D1000, a1, OS_LOG_TYPE_DEBUG, "could not terminate extension: %{darwin.errno}d", v3, 8u);
}

- (void)makeExtensionContextAndXPCConnectionForRequest:(NSObject *)a3 error:.cold.8(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a2 context];
  v7 = [a2 xpcConnection];
  v8 = 138412802;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "%@ Finished making extension context: %{public}@ and connection: %{public}@", &v8, 0x20u);
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__EXConcreteExtension__reallyBeginExtensionRequest_synchronously_completion___block_invoke_84_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_beginExtensionRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v2 = 0;
  _os_log_fault_impl(&dword_1847D1000, v0, OS_LOG_TYPE_FAULT, "Async Begin using internal completion handler called multiple times. For unknow reasons. (request ID: %{public}@ error: %{public}@)", v1, 0x16u);
}

void __57__EXConcreteExtension__beginExtensionRequest_completion___block_invoke_3_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_beginExtensionRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)objectForInfoDictionaryKey:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: can't get info dictionary keys from a nil plugin", v2, v3, v4, v5);
}

- (void)_extensionBundle
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: Unable to fetch URL for plugIn!", v2, v3, v4, v5);
}

- (void)_isPhotoServiceAccessGranted
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: PlugIn's UUID is nil!", v2, v3, v4, v5);
}

- (void)_isSystemExtension
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: infoDictionary is not available", v2, v3, v4, v5);
}

- (void)_wantsProcessPerRequest
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: infoDictionary is not available", v2, v3, v4, v5);
}

- (void)_hostContextClass
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 136315906;
  v3 = "extensionContextHostClass != nil";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXConcreteExtension.m";
  v6 = 1024;
  v7 = 1381;
  v8 = 2112;
  selfCopy = self;
  _os_log_fault_impl(&dword_1847D1000, a2, OS_LOG_TYPE_FAULT, "%s - %s:%d: Unable to load host extension context class: %@", &v2, 0x26u);
}

- (void)_safelyBeginUsingSynchronously:request:readyHandler:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: attempting to message a nil plugin!", v2, v3, v4, v5);
}

- (void)_safelyBeginUsingSynchronously:request:readyHandler:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: attempting to message a spent plugin!", v2, v3, v4, v5);
}

- (void)_safelyBeginUsingSynchronously:(uint8_t *)buf request:(os_log_t)log readyHandler:.cold.4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1847D1000, log, OS_LOG_TYPE_DEBUG, "BeginUsing: Calling into PluginKit plugin: %{public}@ requestUUID: %{public}@", buf, 0x16u);
}

- (void)_safelyBeginUsingSynchronously:request:readyHandler:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 48) pkUUID];
  OUTLINED_FUNCTION_1();
  v7 = a2;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "BeginUsing: PluginKit responded for requesr: %{public}@ with error: %{public}@", v6, 0x16u);
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 96) identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __75__EXConcreteExtension__safelyBeginUsingSynchronously_request_readyHandler___block_invoke_142_cold_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 96) identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __86__EXConcreteExtension__safelyEndUsingRequestWithPKUUID_processAssertion_continuation___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12(v0, v1, v2, v3, v4);
}

- (void)_kill:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end