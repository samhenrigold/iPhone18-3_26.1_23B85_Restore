@interface SOAuthorizationCore
+ (BOOL)_canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions;
+ (BOOL)_doAKshouldProcessURL:(id)l;
+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code;
+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions;
+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code useInternalExtensions:(BOOL)extensions;
+ (void)_canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions completion:(id)completion;
+ (void)_doAKshouldProcessURL:(id)l completion:(id)completion;
+ (void)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions completion:(id)completion;
+ (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion;
+ (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion;
- (SOAuthorizationCore)init;
- (SOAuthorizationCoreDelegate)delegate;
- (SOAuthorizationRequestParametersCore)requestParametersCore;
- (id)createSecKeysFromSecKeyProxyEndpoints:(id)endpoints error:(id *)error;
- (id)debugDescription;
- (id)kerberosProfiles;
- (id)realms;
- (void)_addNoUserInterfaceToAuthorizationOptionsInRequestParameters;
- (void)_cancelAuthorization;
- (void)_finishAuthorization:(id)authorization withCredential:(id)credential error:(id)error;
- (void)beginAuthorizationWithOperation:(id)operation url:(id)url httpHeaders:(id)headers httpBody:(id)body;
- (void)beginAuthorizationWithParameters:(id)parameters;
- (void)beginAuthorizationWithParameters:(id)parameters completion:(id)completion;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)beginAuthorizationWithURL:(id)l httpHeaders:(id)headers httpBody:(id)body;
- (void)cancelAuthorization;
- (void)debugHintsWithCompletion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)performBlockOnDelegateQueue:(id)queue;
- (void)setRequestParametersCore:(id)core;
@end

@implementation SOAuthorizationCore

- (SOAuthorizationCore)init
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SOAuthorizationCore init]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = SOAuthorizationCore;
  v4 = [(SOAuthorizationCore *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(SOClient);
    client = v4->_client;
    v4->_client = v5;

    v4->_enableUserInteraction = 1;
  }

  return v4;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode___block_invoke;
  v9[3] = &unk_1E836CDF0;
  v10 = lCopy;
  v11 = &v14;
  selfCopy = self;
  codeCopy = code;
  v7 = lCopy;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v9);

  LOBYTE(self) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return self;
}

void *__67__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 48) canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) useInternalExtensions:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code useInternalExtensions:(BOOL)extensions
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __89__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke;
  activity_block[3] = &unk_1E836CE18;
  v12 = lCopy;
  v13 = &v17;
  selfCopy = self;
  codeCopy = code;
  extensionsCopy = extensions;
  v9 = lCopy;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  LOBYTE(code) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return code;
}

void *__89__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 48) canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) callerBundleIdentifier:0 useInternalExtensions:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions
{
  lCopy = l;
  identifierCopy = identifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke;
  v15[3] = &unk_1E836CE40;
  v18 = &v22;
  codeCopy = code;
  v16 = lCopy;
  v17 = identifierCopy;
  extensionsCopy = extensions;
  selfCopy = self;
  v12 = identifierCopy;
  v13 = lCopy;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v15);

  LOBYTE(code) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return code;
}

void __112__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [SOAuthorizationCore _canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) callerBundleIdentifier:*(a1 + 40) useInternalExtensions:*(a1 + 72)];
  *(*(*(a1 + 48) + 8) + 24) = v2;
  v3 = SO_LOG_SOAuthorizationCore(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = @"NO";
    if (*(a1 + 72))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = *(a1 + 56);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v6 = @"YES";
    }

    v9 = *(a1 + 64);
    v10 = 136316931;
    v11 = "+[SOAuthorizationCore canPerformAuthorizationWithURL:responseCode:callerBundleIdentifier:useInternalExtensions:]_block_invoke";
    v12 = 2160;
    v13 = 1752392040;
    v14 = 2117;
    v15 = v4;
    v16 = 1024;
    v17 = v8;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEBUG, "%s %{sensitive, mask.hash}@, responseCode = %d, callerBundleIdentifier = %{public}@, useInternalExtensions = %{public}@, result = %{public}@ on %@", &v10, 0x4Eu);
  }
}

+ (void)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke;
  v18[3] = &unk_1E836CE90;
  v19 = lCopy;
  v20 = identifierCopy;
  extensionsCopy = extensions;
  codeCopy = code;
  selfCopy = self;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = lCopy;
  _os_activity_initiate(&dword_1CA238000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v18);
}

void __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2;
  v10[3] = &unk_1E836CE68;
  v6 = v3;
  v7 = *(a1 + 56);
  v11 = v6;
  v14 = v7;
  v8 = *(a1 + 40);
  v16 = *(a1 + 72);
  v9 = *(a1 + 64);
  v12 = v8;
  v15 = v9;
  v13 = *(a1 + 48);
  [SOAuthorizationCore _canPerformAuthorizationWithURL:v6 responseCode:v2 callerBundleIdentifier:v4 useInternalExtensions:v5 completion:v10];
}

uint64_t __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = SO_LOG_SOAuthorizationCore(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __123__SOAuthorizationCore_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
  v12[3] = &unk_1E836CEB8;
  v12[4] = self;
  v13 = lCopy;
  v14 = completionCopy;
  codeCopy = code;
  v10 = completionCopy;
  v11 = lCopy;
  _os_activity_initiate(&dword_1CA238000, "getAuthorizationHintsWithURL", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_2;
  v4[3] = &unk_1E836CBE0;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 getAuthorizationHintsWithURL:v1 responseCode:v3 completion:v4];
}

void __76__SOAuthorizationCore_getAuthorizationHintsWithURL_responseCode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorizationCore(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138478083;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "getAuthorizationHintsWithURL: authorizationHints = %{private}@, error = %{public}@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)beginAuthorizationWithURL:(id)l httpHeaders:(id)headers httpBody:(id)body
{
  v17 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  headersCopy = headers;
  lCopy = l;
  v11 = SO_LOG_SOAuthorizationCore(lCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SOAuthorizationCore beginAuthorizationWithURL:httpHeaders:httpBody:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v13, 0x16u);
  }

  v12 = objc_alloc_init(SOAuthorizationParametersCore);
  [(SOAuthorizationParametersCore *)v12 setUrl:lCopy];

  [(SOAuthorizationParametersCore *)v12 setHttpHeaders:headersCopy];
  [(SOAuthorizationParametersCore *)v12 setHttpBody:bodyCopy];

  [(SOAuthorizationParametersCore *)v12 setUseInternalExtensions:1];
  [(SOAuthorizationCore *)self beginAuthorizationWithParameters:v12];
}

- (void)beginAuthorizationWithOperation:(id)operation url:(id)url httpHeaders:(id)headers httpBody:(id)body
{
  v20 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  headersCopy = headers;
  urlCopy = url;
  operationCopy = operation;
  v14 = SO_LOG_SOAuthorizationCore(operationCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SOAuthorizationCore beginAuthorizationWithOperation:url:httpHeaders:httpBody:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v14, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v16, 0x16u);
  }

  v15 = objc_alloc_init(SOAuthorizationParametersCore);
  [(SOAuthorizationParametersCore *)v15 setOperation:operationCopy];

  [(SOAuthorizationParametersCore *)v15 setUrl:urlCopy];
  [(SOAuthorizationParametersCore *)v15 setHttpHeaders:headersCopy];

  [(SOAuthorizationParametersCore *)v15 setHttpBody:bodyCopy];
  [(SOAuthorizationParametersCore *)v15 setUseInternalExtensions:1];
  [(SOAuthorizationCore *)self beginAuthorizationWithParameters:v15];
}

- (void)beginAuthorizationWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SOAuthorizationCore_beginAuthorizationWithParameters___block_invoke;
  v6[3] = &unk_1E836CEE0;
  v6[4] = self;
  v7 = parametersCopy;
  v5 = parametersCopy;
  [(SOAuthorizationCore *)self beginAuthorizationWithParameters:v5 completion:v6];
}

void __56__SOAuthorizationCore_beginAuthorizationWithParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 identifier];
  [v4 _finishAuthorization:v8 withCredential:v7 error:v6];
}

- (void)cancelAuthorization
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[SOAuthorizationCore cancelAuthorization]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __42__SOAuthorizationCore_cancelAuthorization__block_invoke;
  activity_block[3] = &unk_1E836CF08;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1CA238000, "cancelAuthorization", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (id)debugDescription
{
  v2 = +[SOConfigurationClient defaultClient];
  configuration = [v2 configuration];
  v4 = [configuration description];

  return v4;
}

+ (BOOL)_canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions
{
  extensionsCopy = extensions;
  lCopy = l;
  identifierCopy = identifier;
  if (+[SOUtils isAppSSOServiceAvailable])
  {
    if (extensionsCopy && ([self _doAKshouldProcessURL:lCopy] & 1) != 0)
    {
      v12 = 1;
    }

    else
    {
      v13 = +[SOConfigurationClient defaultClient];
      v12 = [v13 willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)_canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions completion:(id)completion
{
  extensionsCopy = extensions;
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  if (+[SOUtils isAppSSOServiceAvailable])
  {
    if (extensionsCopy)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke;
      v19[3] = &unk_1E836CF58;
      v22 = completionCopy;
      v20 = lCopy;
      codeCopy = code;
      v21 = identifierCopy;
      [self _doAKshouldProcessURL:v20 completion:v19];

      v15 = v22;
    }

    else
    {
      v16 = +[SOConfigurationClient defaultClient];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_3;
      v17[3] = &unk_1E836CF30;
      v18 = completionCopy;
      [v16 willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy completion:v17];

      v15 = v18;
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = +[SOConfigurationClient defaultClient];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __124__SOAuthorizationCore__canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2;
    v8[3] = &unk_1E836CF30;
    v7 = *(a1 + 56);
    v9 = *(a1 + 48);
    [v4 willHandleURL:v5 responseCode:v7 callerBundleIdentifier:v6 completion:v8];
  }
}

+ (BOOL)_doAKshouldProcessURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    lCopy = [MEMORY[0x1E698DCE0] shouldProcessURL:lCopy];
    v6 = lCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = SO_LOG_SOAuthorizationCore(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = "+[SOAuthorizationCore _doAKshouldProcessURL:]";
    v12 = 2160;
    v9 = @"NO";
    v13 = 1752392040;
    v14 = 2117;
    v10 = 136316163;
    if (v6)
    {
      v9 = @"YES";
    }

    v15 = v5;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEBUG, "%s URL = %{sensitive, mask.hash}@, result = %@ on %@", &v10, 0x34u);
  }

  return v6;
}

+ (void)_doAKshouldProcessURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  if (lCopy)
  {
    v9 = MEMORY[0x1E698DCE0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke;
    v10[3] = &unk_1E836CF80;
    v11 = lCopy;
    selfCopy = self;
    v12 = v8;
    [v9 shouldProcessURL:v11 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SO_LOG_SOAuthorizationCore(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__SOAuthorizationCore__doAKshouldProcessURL_completion___block_invoke_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_cancelAuthorization
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorizationCore(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = a2;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "cancelAuthorizationWithCompletion: success = %d, error = %{public}@", buf, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = v8;
    v10 = objc_sync_enter(v9);
    if (*(*v7 + 2))
    {
      v11 = SO_LOG_SOAuthorizationCore(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __43__SOAuthorizationCore__cancelAuthorization__block_invoke_cold_1();
      }

      v12 = *(*v7 + 2);
      *(*v7 + 2) = 0;

      objc_sync_exit(v9);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18;
      v14[3] = &unk_1E836CF08;
      v14[4] = *v7;
      v13 = MEMORY[0x1CCA9D280](v14);
      [*v7 performBlockOnDelegateQueue:v13];
    }

    else
    {
      objc_sync_exit(v9);
    }
  }
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = objc_opt_respondsToSelector();
    if (v3)
    {
      v4 = SO_LOG_SOAuthorizationCore(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_1();
      }

      [v2 authorizationDidCancel:*(a1 + 32)];
    }
  }

  else
  {
    v5 = SO_LOG_SOAuthorizationCore(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_2();
    }
  }
}

- (void)_finishAuthorization:(id)authorization withCredential:(id)credential error:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  credentialCopy = credential;
  errorCopy = error;
  v11 = SO_LOG_SOAuthorizationCore(errorCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    requestParametersCore = self->_requestParametersCore;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 136316675;
    v28 = "[SOAuthorizationCore _finishAuthorization:withCredential:error:]";
    v29 = 2114;
    v30 = authorizationCopy;
    v31 = 2113;
    v32 = credentialCopy;
    v33 = 2114;
    v34 = errorCopy;
    v35 = 2114;
    v36 = requestParametersCore;
    v37 = 2114;
    v38 = WeakRetained;
    v39 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@, credentialCore = %{private}@, error = %{public}@, requestParametersCore = %{public}@, delegate = %{public}@ on %@", buf, 0x48u);
  }

  selfCopy2 = self;
  v15 = objc_sync_enter(selfCopy2);
  v16 = selfCopy2->_requestParametersCore;
  if (v16)
  {
    selfCopy2->_requestParametersCore = 0;

    objc_sync_exit(selfCopy2);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke;
    v22 = &unk_1E836CFD0;
    v23 = selfCopy2;
    v24 = errorCopy;
    v25 = credentialCopy;
    v26 = authorizationCopy;
    v17 = MEMORY[0x1CCA9D280](&v19);
    [(SOAuthorizationCore *)selfCopy2 performBlockOnDelegateQueue:v17, v19, v20, v21, v22, v23];
  }

  else
  {
    v18 = SO_LOG_SOAuthorizationCore(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationCore _finishAuthorization:withCredential:error:];
    }

    objc_sync_exit(selfCopy2);
  }
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = (a1 + 40);
    v3 = *(a1 + 40);
    if (v3)
    {
      if ([SOErrorHelper error:v3 hasCode:-2])
      {
        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v6 = SO_LOG_SOAuthorizationCore(v5);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_4();
          }

          v5 = [v2 authorizationDidCancel:*(a1 + 32)];
        }

        goto LABEL_53;
      }

      if ([SOErrorHelper error:*v4 hasCode:-5])
      {
        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v20 = SO_LOG_SOAuthorizationCore(v5);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (![SOErrorHelper error:*v4 hasCode:-9])
        {
          v5 = objc_opt_respondsToSelector();
          if (v5)
          {
            v25 = SO_LOG_SOAuthorizationCore(v5);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_1();
            }

            v5 = [v2 authorization:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
          }

          goto LABEL_53;
        }

        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v20 = SO_LOG_SOAuthorizationCore(v5);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
LABEL_25:
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_2();
          }

LABEL_26:

          v5 = [v2 authorizationDidNotHandle:*(a1 + 32)];
        }
      }

LABEL_53:
      v33 = SO_LOG_SOAuthorizationCore(v5);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_12();
      }

      v34 = *(a1 + 32);
      v35 = *(a1 + 56);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_38;
      v38[3] = &unk_1E836CFA8;
      v38[4] = v34;
      [v34 finishAuthorization:v35 completion:v38];
      goto LABEL_56;
    }

    v8 = *(a1 + 48);
    if (!v8)
    {
      v5 = objc_opt_respondsToSelector();
      if (v5)
      {
        v21 = SO_LOG_SOAuthorizationCore(v5);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_11();
        }

        v5 = [v2 authorizationDidComplete:*(a1 + 32)];
      }

      goto LABEL_53;
    }

    v9 = [v8 secKeyProxyEndpoints];

    if (v9)
    {
      v5 = objc_opt_respondsToSelector();
      if ((v5 & 1) == 0)
      {
        goto LABEL_53;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 48) secKeyProxyEndpoints];
      v39 = 0;
      v12 = [v10 createSecKeysFromSecKeyProxyEndpoints:v11 error:&v39];
      v13 = v39;

      if (v12)
      {
        v15 = objc_alloc_init(SOAuthorizationResultCore);
        v16 = [*(a1 + 48) httpAuthorizationHeaders];
        [(SOAuthorizationResultCore *)v15 setHttpAuthorizationHeaders:v16];

        v17 = [*(a1 + 48) httpResponse];
        [(SOAuthorizationResultCore *)v15 setHttpResponse:v17];

        v18 = [*(a1 + 48) httpBody];
        [(SOAuthorizationResultCore *)v15 setHttpBody:v18];

        v19 = SO_LOG_SOAuthorizationCore([(SOAuthorizationResultCore *)v15 setPrivateKeys:v12]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_5();
        }

        [v2 authorization:*(a1 + 32) didCompleteWithAuthorizationResult:v15];
      }

      else
      {
        v30 = SO_LOG_SOAuthorizationCore(v14);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_6();
        }

        v31 = objc_opt_respondsToSelector();
        if (v31)
        {
          v32 = SO_LOG_SOAuthorizationCore(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_7();
          }

          [v2 authorization:*(a1 + 32) didCompleteWithError:v13];
        }
      }
    }

    else
    {
      v22 = [*(a1 + 48) httpAuthorizationHeaders];

      if (v22)
      {
        v5 = objc_opt_respondsToSelector();
        if ((v5 & 1) == 0)
        {
          goto LABEL_53;
        }

        v23 = SO_LOG_SOAuthorizationCore(v5);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_8();
        }

        v24 = *(a1 + 32);
        v13 = [*(a1 + 48) httpAuthorizationHeaders];
        [v2 authorization:v24 didCompleteWithHTTPAuthorizationHeaders:v13];
      }

      else
      {
        v26 = [*(a1 + 48) httpResponse];

        if (v26)
        {
          v5 = objc_opt_respondsToSelector();
          if ((v5 & 1) == 0)
          {
            goto LABEL_53;
          }

          v27 = SO_LOG_SOAuthorizationCore(v5);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_9();
          }

          v28 = *(a1 + 32);
          v13 = [*(a1 + 48) httpResponse];
          v29 = [*(a1 + 48) httpBody];
          [v2 authorization:v28 didCompleteWithHTTPResponse:v13 httpBody:v29];
        }

        else
        {
          v5 = objc_opt_respondsToSelector();
          if ((v5 & 1) == 0)
          {
            goto LABEL_53;
          }

          v36 = SO_LOG_SOAuthorizationCore(v5);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_10();
          }

          v37 = *(a1 + 32);
          v13 = [SOErrorHelper errorWithCode:-1000 message:@"Invalid credential"];
          [v2 authorization:v37 didCompleteWithError:v13];
        }
      }
    }

    goto LABEL_53;
  }

  v7 = SO_LOG_SOAuthorizationCore(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_13();
  }

LABEL_56:
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_38(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorizationCore(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_debug_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ has finished (success: %d, error: %{public}@)", &v8, 0x1Cu);
  }
}

- (SOAuthorizationCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SOAuthorizationRequestParametersCore)requestParametersCore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_requestParametersCore;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRequestParametersCore:(id)core
{
  coreCopy = core;
  obj = self;
  objc_sync_enter(obj);
  requestParametersCore = obj->_requestParametersCore;
  obj->_requestParametersCore = coreCopy;

  objc_sync_exit(obj);
}

- (void)beginAuthorizationWithParameters:(id)parameters completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SOAuthorizationCore(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [parametersCopy identifier];
    operation = [parametersCopy operation];
    v9 = [parametersCopy url];
    httpHeaders = [parametersCopy httpHeaders];
    httpBody = [parametersCopy httpBody];
    auditTokenData = [parametersCopy auditTokenData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    enableUserInteraction = self->_enableUserInteraction;
    *buf = 136317699;
    v27 = "[SOAuthorizationCore(Core) beginAuthorizationWithParameters:completion:]";
    v28 = 2114;
    v29 = identifier;
    v30 = 2114;
    v31 = operation;
    v32 = 2160;
    v33 = 1752392040;
    v34 = 2117;
    v35 = v9;
    v36 = 2113;
    v37 = httpHeaders;
    v38 = 2113;
    v39 = httpBody;
    v40 = 2114;
    v41 = auditTokenData;
    v42 = 2114;
    v43 = WeakRetained;
    v44 = 1024;
    v45 = enableUserInteraction;
    v46 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier = %{public}@, operation = %{public}@, url = %{sensitive, mask.hash}@, httpHeaders = %{private}@, httpBody = %{private}@, auditToken = %{public}@, delegate = %{public}@, enableUI = %d on %@", buf, 0x6Cu);
  }

  selfCopy2 = self;
  v16 = objc_sync_enter(selfCopy2);
  if (selfCopy2->_requestParametersCore)
  {
    v17 = SO_LOG_SOAuthorizationCore(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = selfCopy2;
      _os_log_impl(&dword_1CA238000, v17, OS_LOG_TYPE_DEFAULT, "%@ is already authorizing => ignoring a new authorization request", buf, 0xCu);
    }

    if (completionCopy)
    {
      selfCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is already authorizing => ignoring a new authorization request", selfCopy2];
      v19 = [SOErrorHelper silentInternalErrorWithMessage:selfCopy2];
      completionCopy[2](completionCopy, 0, v19);
    }

    objc_sync_exit(selfCopy2);
  }

  else
  {
    v20 = [[SOAuthorizationRequestParametersCore alloc] initWithAuthorizationParametersCore:parametersCopy];
    requestParametersCore = selfCopy2->_requestParametersCore;
    selfCopy2->_requestParametersCore = v20;

    [(SOAuthorizationRequestParametersCore *)selfCopy2->_requestParametersCore setAuthorizationOptions:selfCopy2->_authorizationOptions];
    [(SOAuthorizationRequestParametersCore *)selfCopy2->_requestParametersCore setEnableUserInteraction:selfCopy2->_enableUserInteraction];
    objc_sync_exit(selfCopy2);

    if (!selfCopy2->_enableUserInteraction)
    {
      [(SOAuthorizationCore *)selfCopy2 _addNoUserInterfaceToAuthorizationOptionsInRequestParameters];
    }

    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke;
    activity_block[3] = &unk_1E836CFF8;
    activity_block[4] = selfCopy2;
    v25 = completionCopy;
    _os_activity_initiate(&dword_1CA238000, "beginAuthorizationWithParameters", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

void __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke_2;
  v4[3] = &unk_1E836CC08;
  v5 = *(a1 + 40);
  [v2 performAuthorizationWithRequestParameters:v3 completion:v4];
}

void __73__SOAuthorizationCore_Core__beginAuthorizationWithParameters_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorizationCore(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138478083;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "performAuthorizationWithRequestParameters: credential = %{private}@, error = %{public}@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SOAuthorizationCore(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SOAuthorizationCore(Core) *)parametersCopy beginAuthorizationWithRequestParameters:v8 completion:?];
  }

  requestParametersCore = self->_requestParametersCore;
  self->_requestParametersCore = parametersCopy;
  v10 = parametersCopy;

  if (!self->_enableUserInteraction)
  {
    [(SOAuthorizationCore *)self _addNoUserInterfaceToAuthorizationOptionsInRequestParameters];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__SOAuthorizationCore_Core__beginAuthorizationWithRequestParameters_completion___block_invoke;
  v12[3] = &unk_1E836CFF8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  _os_activity_initiate(&dword_1CA238000, "beginAuthorizationWithParameters", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

- (void)_addNoUserInterfaceToAuthorizationOptionsInRequestParameters
{
  authorizationOptions = [(SOAuthorizationRequestParametersCore *)self->_requestParametersCore authorizationOptions];
  if (authorizationOptions)
  {
    authorizationOptions2 = [(SOAuthorizationRequestParametersCore *)self->_requestParametersCore authorizationOptions];
    dictionary = [authorizationOptions2 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"noUserInterface"];
  [(SOAuthorizationRequestParametersCore *)self->_requestParametersCore setAuthorizationOptions:dictionary];
}

- (void)performBlockOnDelegateQueue:(id)queue
{
  queueCopy = queue;
  v5 = SO_LOG_SOAuthorizationCore(queueCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorizationCore(Core) performBlockOnDelegateQueue:];
  }

  delegateDispatchQueue = self->_delegateDispatchQueue;
  if (delegateDispatchQueue)
  {
    goto LABEL_7;
  }

  if (![MEMORY[0x1E696AF00] isMainThread])
  {
    delegateDispatchQueue = MEMORY[0x1E69E96A0];
LABEL_7:
    dispatch_async(delegateDispatchQueue, queueCopy);
    goto LABEL_8;
  }

  queueCopy[2](queueCopy);
LABEL_8:
}

- (void)debugHintsWithCompletion:(id)completion
{
  v10 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOAuthorizationCore(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOAuthorizationCore(Core) debugHintsWithCompletion:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  [(SOClient *)self->_client debugHintsWithCompletion:completionCopy];
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  completionCopy = completion;
  authorizationCopy = authorization;
  v8 = SO_LOG_SOAuthorizationCore(authorizationCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorizationCore(Core) finishAuthorization:completion:];
  }

  [(SOClient *)self->_client finishAuthorization:authorizationCopy completion:completionCopy];
}

- (id)createSecKeysFromSecKeyProxyEndpoints:(id)endpoints error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  v6 = SO_LOG_SOAuthorizationCore(endpointsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorizationCore(Core) createSecKeysFromSecKeyProxyEndpoints:error:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = endpointsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x1E697AAB0] createKeyFromEndpoint:*(*(&v18 + 1) + 8 * i) error:{error, v18}];
        if (!v13)
        {
          v16 = SO_LOG_SOAuthorizationCore(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [SOAuthorizationCore(Core) createSecKeysFromSecKeyProxyEndpoints:error:];
          }

          v15 = 0;
          goto LABEL_15;
        }

        v14 = v13;
        [array addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = array;
LABEL_15:

  return v15;
}

- (id)realms
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOAuthorizationCore(Kerberos) realms]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  client = self->_client;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__SOAuthorizationCore_Kerberos__realms__block_invoke;
  v10[3] = &unk_1E836D020;
  v10[4] = buf;
  [(SOClient *)client realmsWithCompletion:v10];
  v5 = *(*&buf[8] + 40);
  if (!v5)
  {
    array = [MEMORY[0x1E695DEC8] array];
    v7 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = array;

    v5 = *(*&buf[8] + 40);
  }

  v8 = v5;
  _Block_object_dispose(buf, 8);

  return v8;
}

void __39__SOAuthorizationCore_Kerberos__realms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorizationCore(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "realms = %{public}@, error = %{public}@", &v10, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (id)kerberosProfiles
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationCore(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOAuthorizationCore(Kerberos) kerberosProfiles]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  client = self->_client;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__SOAuthorizationCore_Kerberos__kerberosProfiles__block_invoke;
  v10[3] = &unk_1E836D020;
  v10[4] = buf;
  [(SOClient *)client profilesWithExtensionBundleIdentifier:@"com.apple.AppSSOKerberos.KerberosExtension" completion:v10];
  v5 = *(*&buf[8] + 40);
  if (!v5)
  {
    array = [MEMORY[0x1E695DEC8] array];
    v7 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = array;

    v5 = *(*&buf[8] + 40);
  }

  v8 = v5;
  _Block_object_dispose(buf, 8);

  return v8;
}

+ (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = SO_LOG_SOAuthorizationCore(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "+[SOAuthorizationCore(Process) isExtensionProcessWithAuditToken:completion:]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (isExtensionProcessWithAuditToken_completion__onceToken != -1)
  {
    +[SOAuthorizationCore(Process) isExtensionProcessWithAuditToken:completion:];
  }

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  v8 = *&token->var0[4];
  v12 = *token->var0;
  v13 = v8;
  activity_block[2] = __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_2;
  activity_block[3] = &unk_1E836D048;
  v11 = completionCopy;
  v9 = completionCopy;
  _os_activity_initiate(&dword_1CA238000, "isExtensionProcessWithAuditToken", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke()
{
  isExtensionProcessWithAuditToken_completion__client = objc_alloc_init(SOClient);

  return MEMORY[0x1EEE66BB8]();
}

void __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_2(uint64_t a1)
{
  v2 = isExtensionProcessWithAuditToken_completion__client;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_3;
  v5[3] = &unk_1E836CC58;
  v6 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  [v2 isExtensionProcessWithAuditToken:v4 completion:v5];
}

uint64_t __76__SOAuthorizationCore_Process__isExtensionProcessWithAuditToken_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)isConfigurationActiveForExtensionIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__SOAuthorizationCore_Configuration__isConfigurationActiveForExtensionIdentifier_completion___block_invoke;
  v9[3] = &unk_1E836CFF8;
  v10 = identifierCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = identifierCopy;
  _os_activity_initiate(&dword_1CA238000, "isConfigurationActiveForExtensionIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v9);
}

void __93__SOAuthorizationCore_Configuration__isConfigurationActiveForExtensionIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = +[SOConfigurationClient defaultClient];
  [v2 isConfigurationActiveForExtensionIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__SOAuthorizationCore__cancelAuthorization__block_invoke_18_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_finishAuthorization:withCredential:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_9()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_12()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SOAuthorizationCore__finishAuthorization_withCredential_error___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end