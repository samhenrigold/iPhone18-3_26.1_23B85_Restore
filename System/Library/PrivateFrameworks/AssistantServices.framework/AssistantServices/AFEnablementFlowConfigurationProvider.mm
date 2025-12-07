@interface AFEnablementFlowConfigurationProvider
+ (id)_createConfigurationForParameters:(id)parameters;
+ (void)_emitEnablementFlowLoggingForConfigurationParameters:(id)parameters didEnable:(BOOL)enable;
- (AFEnablementFlowConfigurationProvider)init;
- (id)_storedRecognitionLanguageCode;
- (id)_storedVoiceInfo;
- (void)_resolveIfNewUserWithParameters:(id)parameters forRecognitionLanguages:(id)languages completion:(id)completion;
- (void)_resolveVoiceSelection:(id)selection forRecognitionLanguages:(id)languages completion:(id)completion;
- (void)configurationForEnablementFlow:(int64_t)flow recognitionLanguageCodes:(id)codes completion:(id)completion;
@end

@implementation AFEnablementFlowConfigurationProvider

- (id)_storedVoiceInfo
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 _outputVoiceWithFallback:0];

  return v3;
}

- (id)_storedRecognitionLanguageCode
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 _languageCodeWithFallback:0];

  return v3;
}

- (void)_resolveVoiceSelection:(id)selection forRecognitionLanguages:(id)languages completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  languagesCopy = languages;
  completionCopy = completion;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__35499;
  v49 = __Block_byref_object_dispose__35500;
  v30 = selectionCopy;
  v50 = v30;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v52 = "[AFEnablementFlowConfigurationProvider _resolveVoiceSelection:forRecognitionLanguages:completion:]";
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = languagesCopy;
  v10 = [obj countByEnumeratingWithState:&v41 objects:v59 count:16];
  if (v10)
  {
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = AFOutputVoiceLanguageForRecognitionLanguage(v13);
        v15 = MEMORY[0x1E695DEC8];
        v16 = [AFVoiceInfo allVoicesForSiriSessionLanguage:v14];
        v17 = [v15 arrayWithArray:v16];

        v18 = MEMORY[0x1E696AE18];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke;
        v39[3] = &unk_1E73473C0;
        v19 = v14;
        v40 = v19;
        v20 = [v18 predicateWithBlock:v39];
        v21 = [v17 filteredArrayUsingPredicate:v20];

        v22 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v52 = "[AFEnablementFlowConfigurationProvider _resolveVoiceSelection:forRecognitionLanguages:completion:]";
          v53 = 2112;
          v54 = v21;
          v55 = 2112;
          v56 = v19;
          v57 = 2112;
          v58 = v13;
          _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s Output voices %@ for default output language %@ for recognition language %@", buf, 0x2Au);
        }

        if (v21)
        {
          [array addObjectsFromArray:v21];
        }

        if ([v21 count] >= 2)
        {
          v23 = [v46[5] mutatedCopyWithMutator:&__block_literal_global_82_35507];
          v24 = v46[5];
          v46[5] = v23;
        }

        v25 = v46[5];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke_2;
        v35[3] = &unk_1E73473E8;
        v38 = &v45;
        v26 = v21;
        v36 = v26;
        v37 = v13;
        v27 = [v25 mutatedCopyWithMutator:v35];
        v28 = v46[5];
        v46[5] = v27;
      }

      v10 = [obj countByEnumeratingWithState:&v41 objects:v59 count:16];
    }

    while (v10);
  }

  v29 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:v46[5]];
  completionCopy[2](completionCopy, v29);

  _Block_object_dispose(&v45, 8);
}

uint64_t __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 languageCode];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

void __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = a2;
  v6 = [v4 outputVoiceCountForRecognitionLanguage];
  v8 = [v3 dictionaryWithDictionary:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [v8 setObject:v7 forKey:*(a1 + 40)];

  [v5 setOutputVoiceCountForRecognitionLanguage:v8];
}

- (void)_resolveIfNewUserWithParameters:(id)parameters forRecognitionLanguages:(id)languages completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  languagesCopy = languages;
  completionCopy = completion;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__35499;
  v35 = __Block_byref_object_dispose__35500;
  v11 = parametersCopy;
  v36 = v11;
  v12 = [v11 mutatedCopyWithMutator:&__block_literal_global_35514];
  v13 = v32[5];
  v32[5] = v12;

  if ([v32[5] enablementFlow] == 9)
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]";
      _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s Tinker Enablement flow, treat as new user", buf, 0xCu);
    }

    v15 = [v32[5] mutatedCopyWithMutator:&__block_literal_global_60_35516];
    v16 = v32[5];
    v32[5] = v15;

    [(AFEnablementFlowConfigurationProvider *)self _resolveVoiceSelection:v32[5] forRecognitionLanguages:languagesCopy completion:completionCopy];
  }

  else
  {
    _storedRecognitionLanguageCode = [(AFEnablementFlowConfigurationProvider *)self _storedRecognitionLanguageCode];
    _storedVoiceInfo = [(AFEnablementFlowConfigurationProvider *)self _storedVoiceInfo];
    if (_storedRecognitionLanguageCode | _storedVoiceInfo)
    {
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v38 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]";
        v39 = 2112;
        v40 = _storedRecognitionLanguageCode;
        v41 = 2112;
        v42 = _storedVoiceInfo;
        _os_log_impl(&dword_1912FE000, v19, OS_LOG_TYPE_INFO, "%s Not a new user. Language Stored: %@, outputVoice stored: %@", buf, 0x20u);
      }

      v20 = [v32[5] mutatedCopyWithMutator:&__block_literal_global_63_35518];
      v21 = v32[5];
      v32[5] = v20;

      v22 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:v32[5]];
      completionCopy[2](completionCopy, v22);
    }

    else
    {
      objc_initWeak(&location, self);
      v23 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v38 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]";
        _os_log_impl(&dword_1912FE000, v23, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
      }

      settingsConnection = self->_settingsConnection;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_65;
      v25[3] = &unk_1E7347398;
      objc_copyWeak(&v29, &location);
      v28 = &v31;
      v27 = completionCopy;
      v26 = languagesCopy;
      [(AFSettingsConnection *)settingsConnection hasEverSetLanguageCodeWithCompletion:v25];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  _Block_object_dispose(&v31, 8);
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_65(uint64_t a1, int a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]_block_invoke";
    v29 = 1024;
    v30 = a2;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s hasEverSetLanguageCode: %d, error:%@", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [*(*(*(a1 + 48) + 8) + 40) mutatedCopyWithMutator:&__block_literal_global_68_35522];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!WeakRetained)
  {
    v17 = [*(*(*(a1 + 48) + 8) + 40) mutatedCopyWithMutator:&__block_literal_global_70];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

LABEL_8:
    v20 = *(a1 + 40);
    v21 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:*(*(*(a1 + 48) + 8) + 40)];
    (*(v20 + 16))(v20, v21);

    goto LABEL_9;
  }

  if (!v5)
  {
    if (!a2)
    {
      v22 = [*(*(*(a1 + 48) + 8) + 40) mutatedCopyWithMutator:&__block_literal_global_73];
      v23 = *(*(a1 + 48) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      [WeakRetained _resolveVoiceSelection:*(*(*(a1 + 48) + 8) + 40) forRecognitionLanguages:*(a1 + 32) completion:*(a1 + 40)];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_3;
  v25[3] = &unk_1E7347370;
  v26 = v5;
  v12 = [v11 mutatedCopyWithMutator:v25];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1 + 40);
  v16 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:*(*(*(a1 + 48) + 8) + 40)];
  (*(v15 + 16))(v15, v16);

LABEL_9:
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [AFError errorWithCode:41];
  [v2 setUserStatusFetchError:v3];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_66(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 now];
  [v3 setDateEndedResolvingUserStatus:v4];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_61(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 now];
  [v3 setDateEndedResolvingUserStatus:v4];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = a2;
  v3 = [v2 now];
  [v4 setDateEndedResolvingUserStatus:v3];

  [v4 setNewUser:1];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 now];
  [v3 setDateStartedResolvingUserStatus:v4];
}

- (void)configurationForEnablementFlow:(int64_t)flow recognitionLanguageCodes:(id)codes completion:(id)completion
{
  completionCopy = completion;
  codesCopy = codes;
  v10 = [AFEnablementConfigurationProviderParameters alloc];
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  LOBYTE(v12) = 0;
  v13 = [(AFEnablementConfigurationProviderParameters *)v10 initWithEnablementFlow:flow newUser:0 userStatusFetchError:0 dateStartedResolvingUserStatus:0 dateEndedResolvingUserStatus:0 experiment:0 experimentFetchError:0 dateStartedResolvingExperiment:0 dateEndedResolvingExperiment:0 outputVoiceCountForRecognitionLanguage:dictionary recognitionLanguageWithMultipleOutputVoicesExists:v12];

  [(AFEnablementFlowConfigurationProvider *)self _resolveIfNewUserWithParameters:v13 forRecognitionLanguages:codesCopy completion:completionCopy];
}

- (AFEnablementFlowConfigurationProvider)init
{
  v6.receiver = self;
  v6.super_class = AFEnablementFlowConfigurationProvider;
  v2 = [(AFEnablementFlowConfigurationProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AFSettingsConnection);
    settingsConnection = v2->_settingsConnection;
    v2->_settingsConnection = v3;
  }

  return v2;
}

+ (void)_emitEnablementFlowLoggingForConfigurationParameters:(id)parameters didEnable:(BOOL)enable
{
  parametersCopy = parameters;
  userStatusFetchError = [parametersCopy userStatusFetchError];
  [parametersCopy enablementFlow];
  v8 = parametersCopy;
  v6 = userStatusFetchError;
  v7 = parametersCopy;
  AnalyticsSendEventLazy();
}

id __104__AFEnablementFlowConfigurationProvider__emitEnablementFlowLoggingForConfigurationParameters_didEnable___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 48);
  if (v3 > 9)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E73465B0[v3];
  }

  v5 = v4;
  [v2 setObject:v5 forKey:@"flow"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "newUser")}];
  [v2 setObject:v6 forKey:@"newUser"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v2 setObject:v7 forKey:@"didEnable"];

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v8, "code")];
    [v2 setObject:v9 forKey:@"errorCode"];
  }

  return v2;
}

+ (id)_createConfigurationForParameters:(id)parameters
{
  v23 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "+[AFEnablementFlowConfigurationProvider _createConfigurationForParameters:]";
    v21 = 2112;
    v22 = parametersCopy;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  userStatusFetchError = [parametersCopy userStatusFetchError];
  if (userStatusFetchError)
  {

LABEL_9:
    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  experimentFetchError = [parametersCopy experimentFetchError];

  if (experimentFetchError || ![parametersCopy recognitionLanguageWithMultipleOutputVoicesExists])
  {
    goto LABEL_9;
  }

  if ([parametersCopy newUser])
  {
    v7 = +[AFEnablementFlowConfigurationProvider _shouldAllowRandomVoiceSelectionForEnablementFlow:](AFEnablementFlowConfigurationProvider, "_shouldAllowRandomVoiceSelectionForEnablementFlow:", [parametersCopy enablementFlow]);
    v8 = 1;
  }

  else
  {
    v15 = +[AFPreferences sharedPreferences];
    shouldSkipIntelligenceVoiceSelectionUpsell = [v15 shouldSkipIntelligenceVoiceSelectionUpsell];

    v7 = shouldSkipIntelligenceVoiceSelectionUpsell ^ 1u;
    v8 = v7;
  }

LABEL_10:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__AFEnablementFlowConfigurationProvider__createConfigurationForParameters___block_invoke;
  v17[3] = &unk_1E7347818;
  v18 = parametersCopy;
  v9 = parametersCopy;
  v10 = MEMORY[0x193AFB7B0](v17);
  v11 = [AFEnablementConfiguration alloc];
  outputVoiceCountForRecognitionLanguage = [v9 outputVoiceCountForRecognitionLanguage];
  v13 = [(AFEnablementConfiguration *)v11 initWithRequiresVoiceSelection:v8 voiceSelectionAllowsChooseForMe:v7 voiceCountForRecognitionLanguage:outputVoiceCountForRecognitionLanguage completionLoggingBlock:v10];

  return v13;
}

@end