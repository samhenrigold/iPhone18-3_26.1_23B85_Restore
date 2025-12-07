@interface AFSiriDataSharingSensitivityManager
+ (id)shared;
- (AFSiriDataSharingSensitivityManager)init;
- (BOOL)_isRequestSensitiveForUnknownPolicy;
- (BOOL)_isRequestSensitiveWithPolicy:(int64_t)policy optInStatus:(int64_t)status siriLanguageCode:(id)code;
- (BOOL)_isTrialConfigEnabledWithNamespaceId:(int)id factorName:(id)name;
- (BOOL)isOptedOutOfMTE;
- (BOOL)isRequestSensitiveWithPolicy:(int64_t)policy optInStatus:(int64_t)status siriLanguageCode:(id)code;
- (void)_registerUpdateHandler;
@end

@implementation AFSiriDataSharingSensitivityManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, &__block_literal_global_38722);
  }

  v3 = shared_shared;

  return v3;
}

- (BOOL)isOptedOutOfMTE
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[AFSiriDataSharingSensitivityManager isOptedOutOfMTE]";
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #MTEOptOut device is opted out of uploading MTE.", &v4, 0xCu);
  }

  return 1;
}

- (BOOL)_isRequestSensitiveForUnknownPolicy
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[AFSiriDataSharingSensitivityManager _isRequestSensitiveForUnknownPolicy]";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Unknown sensitivity policy used. This should not happen! Assuming non-sensitive.", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)_isRequestSensitiveWithPolicy:(int64_t)policy optInStatus:(int64_t)status siriLanguageCode:(id)code
{
  codeCopy = code;
  if (status == 1)
  {
    goto LABEL_2;
  }

  switch(policy)
  {
    case 0:
      _isRequestSensitiveForUnknownPolicy = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveForUnknownPolicy];
      goto LABEL_9;
    case 3:
      _isRequestSensitiveForUnknownPolicy = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveForSensitiveDomainWithSamplingPolicyForLanguage:codeCopy];
      goto LABEL_9;
    case 2:
      _isRequestSensitiveForUnknownPolicy = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveForSensitiveDomainPolicy];
LABEL_9:
      v9 = _isRequestSensitiveForUnknownPolicy;
      goto LABEL_10;
  }

LABEL_2:
  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)_isTrialConfigEnabledWithNamespaceId:(int)id factorName:(id)name
{
  v4 = *&id;
  v24[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [getTRINamespaceClass() namespaceNameFromId:v4];
  v8 = [(TRIClient *)self->_client levelForFactor:nameCopy withNamespaceName:v7];
  v9 = v8;
  if (v8)
  {
    bOOLeanValue = [v8 BOOLeanValue];
    v11 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = v11;
      v14 = [v12 numberWithBool:bOOLeanValue];
      v17 = 136315650;
      v18 = "[AFSiriDataSharingSensitivityManager _isTrialConfigEnabledWithNamespaceId:factorName:]";
      v19 = 2112;
      v20 = nameCopy;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s TRILevel %@: %@", &v17, 0x20u);
    }
  }

  else
  {
    v15 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[AFSiriDataSharingSensitivityManager _isTrialConfigEnabledWithNamespaceId:factorName:]";
      v19 = 2112;
      v20 = nameCopy;
      _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s TRILevel not found for factor: %@. Assuming feature disabled.", &v17, 0x16u);
    }

    v23 = @"Factor";
    v24[0] = nameCopy;
    bOOLeanValue = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    AnalyticsSendEvent();

    LOBYTE(bOOLeanValue) = 0;
  }

  return bOOLeanValue;
}

- (void)_registerUpdateHandler
{
  v16 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[AFSiriDataSharingSensitivityManager _registerUpdateHandler]";
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Registering update handler", buf, 0xCu);
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __61__AFSiriDataSharingSensitivityManager__registerUpdateHandler__block_invoke;
  v11 = &unk_1E7347978;
  objc_copyWeak(&v12, &location);
  v4 = MEMORY[0x193AFB7B0](&v8);
  client = self->_client;
  v6 = [getTRINamespaceClass() namespaceNameFromId:{1571, v8, v9, v10, v11}];
  v7 = [(TRIClient *)client addUpdateHandlerForNamespaceName:v6 usingBlock:v4];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__AFSiriDataSharingSensitivityManager__registerUpdateHandler__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 namespaceName];
    v9 = 136315394;
    v10 = "[AFSiriDataSharingSensitivityManager _registerUpdateHandler]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s New update for %@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] refresh];
  }
}

- (BOOL)isRequestSensitiveWithPolicy:(int64_t)policy optInStatus:(int64_t)status siriLanguageCode:(id)code
{
  v28 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if (+[AFFeatureFlags isOptOutLogRedactionEnabled])
  {
    v9 = [(AFSiriDataSharingSensitivityManager *)self _isRequestSensitiveWithPolicy:policy optInStatus:status siriLanguageCode:codeCopy];
    v10 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if ((policy - 1) > 2)
      {
        v12 = @"AFSiriDataSharingSensitivityPolicyUnknown";
      }

      else
      {
        v12 = off_1E73479B0[policy - 1];
      }

      v14 = v10;
      if (status > 3)
      {
        v15 = @"(unknown)";
      }

      else
      {
        v15 = off_1E7348978[status];
      }

      v16 = v15;
      v18 = 136316162;
      v19 = "[AFSiriDataSharingSensitivityManager isRequestSensitiveWithPolicy:optInStatus:siriLanguageCode:]";
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = codeCopy;
      _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s Request is sensitive:%@ with policy:%@, optInStatus:%@, siriLanguage:%@", &v18, 0x34u);
    }
  }

  else
  {
    v13 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[AFSiriDataSharingSensitivityManager isRequestSensitiveWithPolicy:optInStatus:siriLanguageCode:]";
      _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s FeatureFlag opt_out_log_redaction disabled. Skipping.", &v18, 0xCu);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

- (AFSiriDataSharingSensitivityManager)init
{
  v8.receiver = self;
  v8.super_class = AFSiriDataSharingSensitivityManager;
  v2 = [(AFSiriDataSharingSensitivityManager *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getTRIClientClass_softClass;
    v13 = getTRIClientClass_softClass;
    if (!getTRIClientClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getTRIClientClass_block_invoke;
      v9[3] = &unk_1E7349228;
      v9[4] = &v10;
      __getTRIClientClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [v3 clientWithIdentifier:317];
    client = v2->_client;
    v2->_client = v5;

    [(AFSiriDataSharingSensitivityManager *)v2 _registerUpdateHandler];
  }

  return v2;
}

void __45__AFSiriDataSharingSensitivityManager_shared__block_invoke()
{
  v0 = objc_alloc_init(AFSiriDataSharingSensitivityManager);
  v1 = shared_shared;
  shared_shared = v0;
}

@end