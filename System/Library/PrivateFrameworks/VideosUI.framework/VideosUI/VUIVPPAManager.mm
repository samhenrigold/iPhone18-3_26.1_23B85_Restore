@interface VUIVPPAManager
+ (BOOL)_isReminderDue:(id)due reminderInterval:(double)interval;
+ (BOOL)channelAlreadyExists:(id)exists channelID:(id)d;
+ (id)_getChannelDetailsForID:(id)d;
+ (id)_getConsentedBrandsFromSettingsStore;
+ (id)_getConsentedChannels;
+ (id)_getDeniedBrandsFromSettingsStore;
+ (id)_getDeniedChannels;
+ (id)addUniqueChannels:(id)channels channels:(id)a4;
+ (id)sharedInstance;
- (BOOL)_isChannelVPPAPromptEligible:(id)eligible;
- (BOOL)_isVPPAPromptDueForConfig:(id)config;
- (VUIVPPAManager)init;
- (id)_appSettingsForChannelID:(id)d externalID:(id)iD;
- (id)_filterOutNotEligibleVPPAChannels:(id)channels;
- (id)_getChannelDetailsFor:(id)for channelsResponse:(id)response;
- (id)_getEligibleBulkChannels;
- (id)_getVPPABulkChannels:(int64_t)channels;
- (id)_rootViewController;
- (id)_subscribedAppBundleIdentifiers;
- (id)_watchlistOrderedChannels;
- (void)_completeConfigurationResponse:(id)response error:(id)error channelDetails:(id)details shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion;
- (void)_fetchConfigurationAndPresentVPPAIfRequired:(id)required shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion;
- (void)_presentVPPAConsentScreen:(id)screen vppaState:(int64_t)state completion:(id)completion;
- (void)_removeNotEligibleChannelFromSettingsStore:(id)store;
- (void)clearVPPAState;
- (void)reloadConfigurationAfterVPPAChange;
- (void)startVPPAConsentFlow:(id)flow consentCancelButtonType:(unint64_t)type shouldForceVPPAPrompt:(BOOL)prompt completion:(id)completion;
- (void)startVPPAConsentFlowForDeeplink:(id)deeplink channelsResponse:(id)response completion:(id)completion;
@end

@implementation VUIVPPAManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_7 != -1)
  {
    +[VUIVPPAManager sharedInstance];
  }

  v3 = sharedInstance___instance_6;

  return v3;
}

void __32__VUIVPPAManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIVPPAManager);
  v1 = sharedInstance___instance_6;
  sharedInstance___instance_6 = v0;
}

- (VUIVPPAManager)init
{
  v3.receiver = self;
  v3.super_class = VUIVPPAManager;
  result = [(VUIVPPAManager *)&v3 init];
  if (result)
  {
    result->_alreadyInProgress = 0;
  }

  return result;
}

- (void)startVPPAConsentFlow:(id)flow consentCancelButtonType:(unint64_t)type shouldForceVPPAPrompt:(BOOL)prompt completion:(id)completion
{
  promptCopy = prompt;
  v29 = *MEMORY[0x1E69E9840];
  flowCopy = flow;
  completionCopy = completion;
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (!ams_DSID)
  {
    v16 = VUIDefaultLogObject(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - User not logged in. Cannot continue.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!flowCopy)
  {
    v16 = VUIDefaultLogObject(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel.", buf, 2u);
    }

LABEL_8:

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_16;
  }

  self->_consentCancelButtonType = type;
  if (_os_feature_enabled_impl())
  {
    v15 = [(VUIVPPAManager *)self _isChannelVPPAPromptEligible:flowCopy];
    if (v15)
    {
      [(VUIVPPAManager *)self _fetchConfigurationAndPresentVPPAIfRequired:flowCopy shouldForceConsentPrompt:promptCopy completion:completionCopy];
    }

    else
    {
      v19 = VUIDefaultLogObject(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name = [flowCopy name];
        *buf = 138412290;
        v28 = name;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    objc_initWeak(buf, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96__VUIVPPAManager_startVPPAConsentFlow_consentCancelButtonType_shouldForceVPPAPrompt_completion___block_invoke;
    v21[3] = &unk_1E8736BA0;
    objc_copyWeak(&v25, buf);
    v22 = flowCopy;
    v18 = mEMORY[0x1E69E1500];
    v23 = v18;
    v24 = completionCopy;
    v26 = promptCopy;
    [v18 loadIfNeededWithCompletion:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

LABEL_16:
}

void __96__VUIVPPAManager_startVPPAConsentFlow_consentCancelButtonType_shouldForceVPPAPrompt_completion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!a2 || ([*(a1 + 32) channelID], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "channelForID:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = *(a1 + 32);
  }

  v7 = [WeakRetained _isChannelVPPAPromptEligible:v6];
  if (v7)
  {
    [WeakRetained _fetchConfigurationAndPresentVPPAIfRequired:v6 shouldForceConsentPrompt:*(a1 + 64) completion:*(a1 + 48)];
  }

  else
  {
    v8 = VUIDefaultLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 name];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &v10, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)clearVPPAState
{
  [(VUIVPPAManager *)self setAccessViewController:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VUIVPPAManager_clearVPPAState__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_getChannelDetailsFor:(id)for channelsResponse:(id)response
{
  responseCopy = response;
  if (response)
  {
    forCopy = for;
    v6 = [responseCopy vui_dictionaryForKey:@"channels"];
    responseCopy = [v6 vui_dictionaryForKey:forCopy];
  }

  return responseCopy;
}

- (void)startVPPAConsentFlowForDeeplink:(id)deeplink channelsResponse:(id)response completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  deeplinkCopy = deeplink;
  responseCopy = response;
  completionCopy = completion;
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (!ams_DSID)
  {
    v18 = VUIDefaultLogObject(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - User not logged in. Cannot continue.", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (!deeplinkCopy)
  {
    v18 = VUIDefaultLogObject(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel ID.", &buf, 2u);
    }

    goto LABEL_17;
  }

  v14 = _os_feature_enabled_impl();
  if (!responseCopy || !v14)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__32;
    v33 = __Block_byref_object_dispose__32;
    v34 = 0;
    mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __78__VUIVPPAManager_startVPPAConsentFlowForDeeplink_channelsResponse_completion___block_invoke;
    v23[3] = &unk_1E8736BC8;
    objc_copyWeak(&v28, &location);
    p_buf = &buf;
    v20 = mEMORY[0x1E69E1500];
    v24 = v20;
    v25 = deeplinkCopy;
    v26 = completionCopy;
    [v20 loadIfNeededWithCompletion:v23];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
    goto LABEL_22;
  }

  v15 = [(VUIVPPAManager *)self _getChannelDetailsFor:deeplinkCopy channelsResponse:responseCopy];
  if (!v15)
  {
    v18 = VUIDefaultLogObject(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel found for channel ID.", &buf, 2u);
    }

LABEL_17:

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_22;
  }

  v16 = [objc_alloc(MEMORY[0x1E69E14F0]) initWithDictionary:v15];
  v17 = [(VUIVPPAManager *)self _isChannelVPPAPromptEligible:v16];
  if (v17)
  {
    [(VUIVPPAManager *)self _fetchConfigurationAndPresentVPPAIfRequired:v16 shouldForceConsentPrompt:0 completion:completionCopy];
  }

  else
  {
    v21 = VUIDefaultLogObject(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      name = [v16 name];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = name;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_22:
}

void __78__VUIVPPAManager_startVPPAConsentFlowForDeeplink_channelsResponse_completion___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [*(a1 + 32) channelForID:*(a1 + 40)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = VUIDefaultLogObject(WeakRetained);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel.", &v12, 2u);
    }

    goto LABEL_11;
  }

  v9 = [v5 _isChannelVPPAPromptEligible:?];
  if ((v9 & 1) == 0)
  {
    v10 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(*(*(a1 + 56) + 8) + 40) name];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &v12, 0xCu);
    }

LABEL_11:

    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  [v5 _fetchConfigurationAndPresentVPPAIfRequired:*(*(*(a1 + 56) + 8) + 40) shouldForceConsentPrompt:0 completion:*(a1 + 48)];
LABEL_12:
}

- (void)reloadConfigurationAfterVPPAChange
{
  if (_os_feature_enabled_impl())
  {

    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:&__block_literal_global_32_2];
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:&__block_literal_global_38_1];
  }
}

void __52__VUIVPPAManager_reloadConfigurationAfterVPPAChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = VUIDefaultLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Failed to fetch init config: %@", &v6, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"VUIVPPADidChangeNotification" object:0 userInfo:0];
  }
}

void __52__VUIVPPAManager_reloadConfigurationAfterVPPAChange__block_invoke_35(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = VUIDefaultLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Failed to fetch init config: %@", &v6, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"VUIVPPADidChangeNotification" object:0 userInfo:0];
  }
}

- (void)_fetchConfigurationAndPresentVPPAIfRequired:(id)required shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion
{
  requiredCopy = required;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke;
    v19[3] = &unk_1E8736BF0;
    v10 = &v22;
    objc_copyWeak(&v22, &location);
    v20 = requiredCopy;
    promptCopy = prompt;
    v21 = completionCopy;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:0 completion:v19];
    v11 = &v20;
    v12 = &v21;
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke_2;
    v14[3] = &unk_1E8736C18;
    v10 = &v17;
    objc_copyWeak(&v17, &location);
    v15 = requiredCopy;
    promptCopy2 = prompt;
    v16 = completionCopy;
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:0 queryParameters:0 completion:v14];
    v11 = &v15;
    v12 = &v16;
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 data];

  if (v6)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
  }

  v8 = objc_alloc(MEMORY[0x1E69E15C0]);
  v9 = [v6 vui_dictionaryForKey:@"data"];
  v10 = [v8 initWithServerResponseDictionary:v9 expirationDate:0 environmentHash:0];

  [WeakRetained _completeConfigurationResponse:v10 error:v5 channelDetails:*(a1 + 32) shouldForceConsentPrompt:*(a1 + 56) completion:*(a1 + 40)];
}

void __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained _completeConfigurationResponse:v5 error:v6 channelDetails:*(a1 + 32) shouldForceConsentPrompt:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    v9 = VUIDefaultLogObject(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Failed to fetch init config: %@", &v10, 0xCu);
    }
  }
}

- (void)_completeConfigurationResponse:(id)response error:(id)error channelDetails:(id)details shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion
{
  responseCopy = response;
  detailsCopy = details;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VUIVPPAManager__completeConfigurationResponse_error_channelDetails_shouldForceConsentPrompt_completion___block_invoke;
  block[3] = &unk_1E8736C40;
  objc_copyWeak(&v23, &location);
  v19 = responseCopy;
  v20 = detailsCopy;
  promptCopy = prompt;
  selfCopy = self;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = detailsCopy;
  v17 = responseCopy;
  dispatch_async(v14, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __106__VUIVPPAManager__completeConfigurationResponse_error_channelDetails_shouldForceConsentPrompt_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) vppaStatus];
  v4 = [*(a1 + 32) vppaStatusString];
  v5 = [MEMORY[0x1E69E15D0] sharedSettings];
  v6 = [*(a1 + 40) channelID];
  v7 = [v5 settingsForChannelID:v6 externalID:0];

  if (v7)
  {
    v9 = [v7 accessStatus] == 1;
    v10 = [v7 accessStatus] == 2;
    v8 = [v7 accessStatus];
    v11 = v8 == 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = 1;
  }

  v12 = VUIDefaultLogObject(v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v3;
    if (v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = @"not found";
    }

    [*(a1 + 40) name];
    v15 = v29 = v11;
    v16 = [*(a1 + 40) isConsented];
    v17 = @"not consented";
    if (v16)
    {
      v17 = @"consented";
    }

    v18 = @"unknown";
    if (v10)
    {
      v18 = @"denied";
    }

    *buf = 138413058;
    v31 = v14;
    v3 = v13;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v17;
    if (v9)
    {
      v19 = @"granted";
    }

    else
    {
      v19 = v18;
    }

    v36 = 2112;
    v37 = v19;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - VPPA state is %@. '%@' cached state: %@, access in settings: %@", buf, 0x2Au);

    v11 = v29;
  }

  if (!v4)
  {
    if (v11)
    {
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else if (!v10 || (*(a1 + 72) & 1) == 0)
    {
      v24 = VUIDefaultLogObject(v20);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

        goto LABEL_37;
      }

      v25 = [*(a1 + 40) name];
      *buf = 138412290;
      v31 = v25;
      v26 = "VUIVPPAManager - No vppaStatus found. %@ is consented or has explicitly denied";
LABEL_35:
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);

      goto LABEL_36;
    }

    v22 = VUIDefaultLogObject(v20);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_31:

LABEL_32:
      [WeakRetained _presentVPPAConsentScreen:*(a1 + 40) vppaState:v3 completion:*(a1 + 56)];
      goto LABEL_39;
    }

LABEL_30:
    v27 = [*(a1 + 40) name];
    *buf = 138412290;
    v31 = v27;
    _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Forcing consent prompt for explicitly denied channel %@", buf, 0xCu);

    goto LABEL_31;
  }

  v21 = [*(a1 + 48) _isVPPAPromptDueForConfig:*(a1 + 32)];
  if (v21)
  {
    v22 = VUIDefaultLogObject(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - bulk consent is due", buf, 2u);
    }

    goto LABEL_31;
  }

  v23 = [*(a1 + 40) isConsented];
  if (v10 || (v23 & 1) == 0)
  {
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_32;
      }

      if (*(a1 + 72))
      {
        v22 = VUIDefaultLogObject(v23);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    v24 = VUIDefaultLogObject(v23);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v25 = [*(a1 + 40) name];
    *buf = 138412290;
    v31 = v25;
    v26 = "VUIVPPAManager - User has explicitly specified consent for %@";
    goto LABEL_35;
  }

LABEL_37:
  v28 = *(a1 + 56);
  if (v28)
  {
    (*(v28 + 16))(v28, 1, 0);
  }

LABEL_39:
}

- (BOOL)_isChannelVPPAPromptEligible:(id)eligible
{
  eligibleCopy = eligible;
  if ([eligibleCopy isWatchListEnabled])
  {
    v4 = [eligibleCopy isFirstParty] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isVPPAPromptDueForConfig:(id)config
{
  configCopy = config;
  vppaStatus = [configCopy vppaStatus];
  vppaSessionDurationInMillis = [configCopy vppaSessionDurationInMillis];

  [vppaSessionDurationInMillis doubleValue];
  v7 = v6 / 1000.0;
  if (v7 <= 0.0)
  {
    v8 = 86400.0;
  }

  else
  {
    v8 = v7;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults objectForKey:@"vppaConsentLastPrompted"];

  v11 = (vppaStatus & 0xFFFFFFFFFFFFFFFELL) == 2 || vppaStatus == 1 && [VUIVPPAManager _isReminderDue:v10 reminderInterval:v8];
  return v11;
}

- (void)_presentVPPAConsentScreen:(id)screen vppaState:(int64_t)state completion:(id)completion
{
  screenCopy = screen;
  completionCopy = completion;
  v10 = VUIDefaultLogObject(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Present consent screen", buf, 2u);
  }

  array = [MEMORY[0x1E695DF70] array];
  [array addObject:screenCopy];
  v12 = [(VUIVPPAManager *)self _getVPPABulkChannels:state];
  _getEligibleBulkChannels = [(VUIVPPAManager *)self _getEligibleBulkChannels];
  v14 = [v12 count];
  if (v14)
  {
    v15 = VUIDefaultLogObject(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Adding VPPA channels", buf, 2u);
    }

    v16 = v12;
LABEL_11:

    v18 = [objc_opt_class() addUniqueChannels:v16 channels:array];

    array = v18;
    goto LABEL_12;
  }

  v17 = [_getEligibleBulkChannels count];
  if (v17)
  {
    v15 = VUIDefaultLogObject(v17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Adding Eligible channels", buf, 2u);
    }

    v16 = _getEligibleBulkChannels;
    goto LABEL_11;
  }

LABEL_12:
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke;
  v22[3] = &unk_1E8736CE0;
  objc_copyWeak(v27, buf);
  v27[1] = state;
  v23 = array;
  selfCopy = self;
  v25 = screenCopy;
  v26 = completionCopy;
  v19 = screenCopy;
  v20 = array;
  v21 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v22);

  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke(uint64_t a1)
{
  v39[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained alreadyInProgress];
  if (v3)
  {
    v4 = VUIDefaultLogObject(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Already presenting Consent screen. Skipping", buf, 2u);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, 0);
      goto LABEL_20;
    }
  }

  else
  {
    [WeakRetained setAlreadyInProgress:1];
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [MEMORY[0x1E695DF00] date];
  [v6 setObject:v7 forKey:@"vppaConsentLastPrompted"];

  v8 = [MEMORY[0x1E69D5920] activeAccount];
  v9 = [v8 username];

  v10 = &stru_1F5DB25C0;
  if (v9)
  {
    v10 = v9;
  }

  v38[0] = @"account";
  v38[1] = @"NewVPPAConsentPrompt";
  v11 = MEMORY[0x1E695E118];
  v12 = *(a1 + 72);
  v13 = v12 == 0;
  if (v12)
  {
    v14 = MEMORY[0x1E695E110];
  }

  else
  {
    v14 = MEMORY[0x1E695E118];
  }

  v39[0] = v10;
  v39[1] = v14;
  if (v13)
  {
    v11 = MEMORY[0x1E695E110];
  }

  v38[2] = @"requireVPPAStateUpdate";
  v38[3] = @"shouldDenyOnCancel";
  v39[2] = v11;
  v39[3] = MEMORY[0x1E695E110];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v16 = [VUIAccessViewController alloc];
  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) consentCancelButtonType];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_68;
  v32 = &unk_1E8736CB8;
  v33 = WeakRetained;
  v34 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v35 = v19;
  v36 = v20;
  v21 = [(VUIAccessViewController *)v16 initWithChannels:v17 options:v15 consentCancelButtonType:v18 completionHandler:&v29];
  [*(a1 + 40) setAccessViewController:{v21, v29, v30, v31, v32, v33}];
  v22 = [MEMORY[0x1E69DC938] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23 == 2)
  {
    v24 = 8;
  }

  else
  {
    v25 = [MEMORY[0x1E69DC938] currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = -2;
    }
  }

  [(VUIAccessViewController *)v21 setModalPresentationStyle:v24];
  v27 = [*(a1 + 40) _rootViewController];
  [v27 presentViewController:v21 animated:1 completion:0];
  v28 = [MEMORY[0x1E696AD88] defaultCenter];
  [v28 postNotificationName:@"VUIVPPAPresentedNotification" object:0 userInfo:0];

LABEL_20:
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a2;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Received access result: %lu", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_69;
  block[3] = &unk_1E8736C90;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v6;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) accessViewController];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_2;
  v8 = &unk_1E8736C68;
  v11 = *(a1 + 56);
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v10 = v3;
  v12 = v4;
  [v2 dismissViewControllerAnimated:1 completion:&v5];

  [*(a1 + 32) setAccessViewController:{0, v5, v6, v7, v8}];
  [*(a1 + 32) setAlreadyInProgress:0];
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v3 = VUIDefaultLogObject(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) appName];
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Updating VPPA consent for channel details: %@ and invalidating cache", buf, 0xCu);
    }

    if (_os_feature_enabled_impl())
    {
      v5 = +[_TtC8VideosUI28VUIUTSChannelsRequestManager sharedInstance];
      [v5 resetCache];
    }

    else
    {
      v5 = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
      v6 = [*(a1 + 32) channelID];
      [v5 updateConsentStatusForCachedEntry:v6 consented:1];
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (*(a1 + 48) - 1) < 2 || *(a1 + 56) == 1;
    (*(v7 + 16))(v7, v8, v2 == 1);
  }

  v9 = [*(a1 + 32) channelID];
  v13[1] = @"userAcceptedVPPA";
  v14[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v2 == 1];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"VUIVPPADismissedNotification" object:0 userInfo:v11];
}

- (id)_getVPPABulkChannels:(int64_t)channels
{
  if ((channels - 1) <= 1)
  {
    array = [MEMORY[0x1E695DF70] array];
    _getConsentedChannels = [objc_opt_class() _getConsentedChannels];
LABEL_5:
    v7 = _getConsentedChannels;
    [array addObjectsFromArray:_getConsentedChannels];

    goto LABEL_7;
  }

  if (channels == 3)
  {
    array = [MEMORY[0x1E695DF70] array];
    _getConsentedChannels2 = [objc_opt_class() _getConsentedChannels];
    [array addObjectsFromArray:_getConsentedChannels2];

    _getConsentedChannels = [objc_opt_class() _getDeniedChannels];
    goto LABEL_5;
  }

  array = 0;
LABEL_7:
  v8 = [(VUIVPPAManager *)self _filterOutNotEligibleVPPAChannels:array];

  return v8;
}

- (id)_filterOutNotEligibleVPPAChannels:(id)channels
{
  v24 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  if ([channelsCopy count])
  {
    v15 = channelsCopy;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = channelsCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          isiTunes = [v10 isiTunes];
          if (isiTunes & 1) != 0 || (isiTunes = [v10 isFirstParty], (isiTunes) || (isiTunes = objc_msgSend(v10, "isWatchListEnabled"), !isiTunes))
          {
            v12 = VUIDefaultLogObject(isiTunes);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              name = [v10 name];
              *buf = 138412290;
              v22 = name;
              _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ not eligible for VPPA.", buf, 0xCu);
            }

            [(VUIVPPAManager *)self _removeNotEligibleChannelFromSettingsStore:v10];
          }

          else
          {
            [v16 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v7);
    }

    channelsCopy = v15;
  }

  else
  {
    v16 = channelsCopy;
  }

  return v16;
}

- (void)_removeNotEligibleChannelFromSettingsStore:(id)store
{
  v12 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  channelID = [storeCopy channelID];
  v6 = [mEMORY[0x1E69E15D0] settingsForChannelID:channelID externalID:0];

  v8 = VUIDefaultLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    appName = [storeCopy appName];
    v10 = 138412290;
    v11 = appName;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Removing not eligible channel %@ from settings store.", &v10, 0xCu);
  }

  [mEMORY[0x1E69E15D0] _removeWatchListApp:v6];
}

- (id)_getEligibleBulkChannels
{
  v41 = *MEMORY[0x1E69E9840];
  _subscribedAppBundleIdentifiers = [(VUIVPPAManager *)self _subscribedAppBundleIdentifiers];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  _watchlistOrderedChannels = [(VUIVPPAManager *)self _watchlistOrderedChannels];
  v4 = [_watchlistOrderedChannels countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v34;
    *&v5 = 138412290;
    v24 = v5;
    v27 = _watchlistOrderedChannels;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(_watchlistOrderedChannels);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        appBundleIDs = [v9 appBundleIDs];
        if (([v9 isFirstParty] & 1) == 0 && objc_msgSend(v9, "isWatchListEnabled"))
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = _subscribedAppBundleIdentifiers;
          v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * j);
                if ([appBundleIDs containsObject:v16])
                {
                  v17 = [(VUIVPPAManager *)selfCopy _subscriptionIdentifierForBundleID:v16];
                  channelID = [v9 channelID];
                  v19 = [(VUIVPPAManager *)selfCopy _appSettingsForChannelID:channelID externalID:v17];

                  if (!v19 || ![v19 accessStatus])
                  {
                    v20 = [array containsObject:v9];
                    if ((v20 & 1) == 0)
                    {
                      v21 = VUIDefaultLogObject(v20);
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                      {
                        channelID2 = [v9 channelID];
                        *buf = v24;
                        v38 = channelID2;
                        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Found eligible channel: %@", buf, 0xCu);
                      }

                      [array addObject:v9];
                    }
                  }

                  goto LABEL_24;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          _watchlistOrderedChannels = v27;
        }
      }

      v6 = [_watchlistOrderedChannels countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v6);
  }

  return array;
}

+ (BOOL)_isReminderDue:(id)due reminderInterval:(double)interval
{
  if (!due)
  {
    return 1;
  }

  v4 = [due dateByAddingTimeInterval:interval];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v4 compare:date] == -1;

  return v6;
}

+ (BOOL)channelAlreadyExists:(id)exists channelID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  dCopy = d;
  if (dCopy && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v7 = [existsCopy countByEnumeratingWithState:&v17 objects:v21 count:16]) != 0))
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(existsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          channelID = [v12 channelID];
          if (channelID)
          {
            channelID2 = [v12 channelID];
            v15 = [channelID2 isEqualToString:dCopy];

            v9 |= v15;
          }
        }
      }

      v8 = [existsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

+ (id)addUniqueChannels:(id)channels channels:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [channelsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(channelsCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          channelID = [v11 channelID];

          if (channelID)
          {
            v13 = objc_opt_class();
            channelID2 = [v11 channelID];
            LOBYTE(v13) = [v13 channelAlreadyExists:v6 channelID:channelID2];

            if ((v13 & 1) == 0)
            {
              [v6 addObject:v11];
            }
          }
        }
      }

      v8 = [channelsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)_getConsentedChannels
{
  v17 = *MEMORY[0x1E69E9840];
  _getConsentedBrandsFromSettingsStore = [objc_opt_class() _getConsentedBrandsFromSettingsStore];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _getConsentedBrandsFromSettingsStore;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_opt_class() _getChannelDetailsForID:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = v9;
        if (v9 && ([v9 isiTunes] & 1) == 0 && (objc_msgSend(v10, "isFirstParty") & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)_getDeniedChannels
{
  v17 = *MEMORY[0x1E69E9840];
  _getDeniedBrandsFromSettingsStore = [objc_opt_class() _getDeniedBrandsFromSettingsStore];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _getDeniedBrandsFromSettingsStore;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_opt_class() _getChannelDetailsForID:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = v9;
        if (v9 && ([v9 isiTunes] & 1) == 0 && (objc_msgSend(v10, "isFirstParty") & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_rootViewController
{
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  rootViewController = [vui_keyWindow rootViewController];

  return rootViewController;
}

- (id)_subscribedAppBundleIdentifiers
{
  defaultAppLibrary = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  subscribedAppBundleIdentifiers = [defaultAppLibrary subscribedAppBundleIdentifiers];

  return subscribedAppBundleIdentifiers;
}

- (id)_watchlistOrderedChannels
{
  mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstance];
  orderedChannels = [mEMORY[0x1E69E1500] orderedChannels];

  return orderedChannels;
}

- (id)_appSettingsForChannelID:(id)d externalID:(id)iD
{
  v5 = MEMORY[0x1E69E15D0];
  iDCopy = iD;
  dCopy = d;
  sharedSettings = [v5 sharedSettings];
  v9 = [sharedSettings settingsForChannelID:dCopy externalID:iDCopy];

  return v9;
}

+ (id)_getConsentedBrandsFromSettingsStore
{
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  consentedBrands = [mEMORY[0x1E69E15D0] consentedBrands];

  return consentedBrands;
}

+ (id)_getDeniedBrandsFromSettingsStore
{
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  deniedBrands = [mEMORY[0x1E69E15D0] deniedBrands];

  return deniedBrands;
}

+ (id)_getChannelDetailsForID:(id)d
{
  v3 = MEMORY[0x1E69E1500];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance channelForID:dCopy];

  return v6;
}

@end