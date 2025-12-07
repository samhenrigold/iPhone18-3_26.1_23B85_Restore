@interface VUIActionPunchout
- (BOOL)_isValidAppInstalled;
- (BOOL)canPerformNow;
- (VUIActionPunchout)initWithContextData:(id)data appContext:(id)context;
- (void)_openAirplayPicker:(id)picker;
- (void)_openPunchoutURL:(id)l afterInstallation:(BOOL)installation;
- (void)_presentASCSingleAppInstaller:(id)installer;
- (void)_showErrorMessageAlert:(id)alert;
- (void)_startASCAppInstallFlowWithCompletionHandler:(id)handler;
- (void)_startAppInstallFlow:(BOOL)flow completionHandler:(id)handler;
- (void)checkVppaStatus:(id)status;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
- (void)showAPPInstallRestrictedErrorAlert;
@end

@implementation VUIActionPunchout

- (VUIActionPunchout)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v44.receiver = self;
  v44.super_class = VUIActionPunchout;
  v8 = [(VUIActionPunchout *)&v44 init];
  v9 = v8;
  if (v8)
  {
    v8->_isPlaybackURL = 1;
    objc_storeStrong(&v8->_appContext, context);
    v10 = [dataCopy vui_dictionaryForKey:@"punchoutOfferData"];
    v9->_shouldPunchOutAfterAppInstallation = [v10 vui_BOOLForKey:@"shouldPunchOutAfterAppInstallation" defaultValue:1];
    v9->_shouldForceVPPAPrompt = [v10 vui_BOOLForKey:@"shouldForceVPPAPrompt" defaultValue:0];
    v11 = [v10 vui_numberForKey:@"consentCancelButtonType"];
    v9->_consentCancelButtonType = [v11 intValue];

    v12 = [v10 vui_URLForKey:@"playUrl"];
    punchoutURL = v9->_punchoutURL;
    v9->_punchoutURL = v12;

    if (!v9->_punchoutURL)
    {
      v9->_isPlaybackURL = 0;
      v14 = [v10 vui_URLForKey:@"openUrl"];
      v15 = v9->_punchoutURL;
      v9->_punchoutURL = v14;
    }

    v16 = [v10 vui_dictionaryForKey:@"channel"];
    v17 = [objc_alloc(MEMORY[0x1E69E14F0]) initWithDictionary:v16];
    channelDetails = v9->_channelDetails;
    v9->_channelDetails = v17;

    v19 = [v10 vui_numberForKey:@"isEntitledToPlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v19 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v9->_isEntitledToPlay = bOOLValue;
    v21 = [v10 vui_stringForKey:@"externalId"];
    externalID = v9->_externalID;
    v9->_externalID = v21;

    v23 = [v10 vui_stringForKey:@"referenceId"];
    v24 = v23;
    if (!v23)
    {
      v24 = [v10 vui_stringForKey:@"id"];
    }

    objc_storeStrong(&v9->_referenceID, v24);
    if (!v23)
    {
    }

    v25 = [v10 vui_stringForKey:@"canonicalId"];
    canonicalID = v9->_canonicalID;
    v9->_canonicalID = v25;

    v27 = [v10 vui_stringForKey:@"contentTitle"];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_1F5DB25C0;
    }

    objc_storeStrong(&v9->_contentTitle, v29);

    v9->_isAdultContent = [v10 vui_BOOLForKey:@"isAdultContent" defaultValue:0];
    v30 = [v10 vui_stringForKey:@"mediaType"];
    mediaType = v9->_mediaType;
    v9->_mediaType = v30;

    v9->_shouldAvoidInstallSheet = [dataCopy vui_BOOLForKey:@"shouldAvoidAppInstallSheet" defaultValue:0];
    v32 = [v10 vui_dictionaryForKey:@"playbackMetadata"];
    v33 = [v32 vui_stringForKey:@"ratingSystem"];
    v34 = [v32 vui_numberForKey:@"ratingValue"];
    unsignedLongValue = [v34 unsignedLongValue];

    v36 = [v32 vui_stringForKey:@"ratingName"];
    v37 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:v33 ratingLabel:v36 rank:unsignedLongValue ratingDescription:0];
    contentRating = v9->_contentRating;
    v9->_contentRating = v37;

    if (v33)
    {
      v39 = [v33 length];
      v40 = 0;
      if (v39 && v36)
      {
        v40 = [v36 length] != 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v9->_shouldRunPreflightManager = v40;
    if (!v9->_punchoutURL)
    {
      v41 = [MEMORY[0x1E695DFF8] URLWithString:@"app://"];
      v42 = v9->_punchoutURL;
      v9->_punchoutURL = v41;
    }
  }

  return v9;
}

- (BOOL)canPerformNow
{
  if ([(VUIActionPunchout *)self _isValidAppInstalled])
  {
    return 1;
  }

  else
  {
    return ![(VUIActionPunchout *)self shouldAvoidInstallSheet];
  }
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  responderCopy = responder;
  handlerCopy = handler;
  shouldRunPreflightManager = [(VUIActionPunchout *)self shouldRunPreflightManager];
  if (shouldRunPreflightManager)
  {
    v9 = +[VUIPreflightManager defaultPreflightManager];
    v10 = +[VUIApplicationRouter topPresentedViewController];
    [v9 setPresentingController:v10];

    contentRating = [(VUIActionPunchout *)self contentRating];
    [v9 setContentRating:contentRating];

    [v9 setRestrictionsCheckType:0];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__VUIActionPunchout_performWithTargetResponder_completionHandler___block_invoke;
    v13[3] = &unk_1E8736470;
    objc_copyWeak(&v15, location);
    v14 = handlerCopy;
    [v9 preflightWithOptions:1 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = VUIDefaultLogObject(shouldRunPreflightManager);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIPreflightManager:: skipping due to no ratings data", location, 2u);
    }

    [(VUIActionPunchout *)self _continueInstallFlowAfterPreflight:handlerCopy];
  }
}

void __66__VUIActionPunchout_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained _continueInstallFlowAfterPreflight:v5];
  }

  else
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (void)checkVppaStatus:(id)status
{
  statusCopy = status;
  v5 = +[VUIVPPAManager sharedInstance];
  channelDetails = self->_channelDetails;
  consentCancelButtonType = self->_consentCancelButtonType;
  shouldForceVPPAPrompt = self->_shouldForceVPPAPrompt;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__VUIActionPunchout_checkVppaStatus___block_invoke;
  v10[3] = &unk_1E87364C0;
  v10[4] = self;
  v11 = statusCopy;
  v9 = statusCopy;
  [v5 startVPPAConsentFlow:channelDetails consentCancelButtonType:consentCancelButtonType shouldForceVPPAPrompt:shouldForceVPPAPrompt completion:v10];
}

void __37__VUIActionPunchout_checkVppaStatus___block_invoke(uint64_t a1, char a2, char a3)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__VUIActionPunchout_checkVppaStatus___block_invoke_2;
  aBlock[3] = &unk_1E8734458;
  v17 = a3;
  v16 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  if ((a2 & 1) == 0)
  {
    v7 = *(*(a1 + 40) + 16);
LABEL_6:
    v7();
    goto LABEL_8;
  }

  if (![*(a1 + 32) _isValidAppInstalled])
  {
    v8 = +[VUISettingsManager sharedInstance];
    v9 = MEMORY[0x1E696AD98];
    v10 = [*(a1 + 32) contentRating];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "rank")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__VUIActionPunchout_checkVppaStatus___block_invoke_3;
    v12[3] = &unk_1E8736498;
    v12[4] = *(a1 + 32);
    v14 = a3;
    v13 = v6;
    [v8 isAppInstallationAllowedForRating:v11 completion:v12];

    goto LABEL_8;
  }

  if (![*(a1 + 32) shouldPunchOutAfterAppInstallation])
  {
    v7 = v6[2];
    goto LABEL_6;
  }

  [*(a1 + 32) _openAirplayPicker:v6];
LABEL_8:
}

uint64_t __37__VUIActionPunchout_checkVppaStatus___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[VUIVPPAManager sharedInstance];
    [v2 reloadConfigurationAfterVPPAChange];
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __37__VUIActionPunchout_checkVppaStatus___block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);

    return [v3 _startAppInstallFlow:v4 completionHandler:v5];
  }

  else
  {
    [v3 showAPPInstallRestrictedErrorAlert];
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

- (void)showAPPInstallRestrictedErrorAlert
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v3 = __55__VUIActionPunchout_showAPPInstallRestrictedErrorAlert__block_invoke;
  v4 = &unk_1E872D768;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __55__VUIActionPunchout_showAPPInstallRestrictedErrorAlert__block_invoke(uint64_t a1)
{
  v2 = +[VUILocalizationManager sharedInstance];
  v3 = [v2 localizedStringForKey:@"APP_INSTALL_RESTRICTED"];
  v11 = [VUIAlertController vui_alertControllerWithTitle:0 message:v3 preferredStyle:1];

  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS"];
  v6 = [VUIAlertAction vui_actionWithTitle:v5 style:0 handler:&__block_literal_global_144];
  [v11 vui_addAction:v6];

  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"OK"];
  v9 = [VUIAlertAction vui_actionWithTitle:v8 style:0 handler:0];
  [v11 vui_addAction:v9];

  v10 = [*(a1 + 32) topPresentedViewController];
  [v11 vui_presentAlertFromPresentingController:v10 animated:1 completion:0];
}

void __55__VUIActionPunchout_showAPPInstallRestrictedErrorAlert__block_invoke_2()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=SCREEN_TIME&path=CONTENT_PRIVACY"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)_startAppInstallFlow:(BOOL)flow completionHandler:(id)handler
{
  flowCopy = flow;
  handlerCopy = handler;
  if (flowCopy && ([(WLKChannelDetails *)self->_channelDetails isConsented]& 1) == 0)
  {
    v7 = +[VUIVPPAManager sharedInstance];
    [v7 reloadConfigurationAfterVPPAChange];
  }

  _shouldUseASCAppInstall = [(VUIActionPunchout *)self _shouldUseASCAppInstall];
  v9 = _shouldUseASCAppInstall;
  v10 = VUIDefaultLogObject(_shouldUseASCAppInstall);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "ASC enabled - will use it.", buf, 2u);
    }

    [(VUIActionPunchout *)self _startASCAppInstallFlowWithCompletionHandler:handlerCopy];
  }

  else
  {
    if (v11)
    {
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "ASC disabled - will fallback.", v12, 2u);
    }
  }
}

- (void)_startASCAppInstallFlowWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__VUIActionPunchout__startASCAppInstallFlowWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E872DE58;
  objc_copyWeak(&v8, &location);
  v5 = handlerCopy;
  v7 = v5;
  [(VUIActionPunchout *)self _presentASCSingleAppInstaller:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__VUIActionPunchout__startASCAppInstallFlowWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 postNotificationName:@"VUIFederatedAppDidInstallNotification" object:WeakRetained[6] userInfo:0];

      v6 = [WeakRetained shouldPunchOutAfterAppInstallation];
      v7 = *(a1 + 32);
      if (v6)
      {
        [WeakRetained _openPunchoutURL:v7 afterInstallation:1];
        goto LABEL_14;
      }

      if (!v7)
      {
        goto LABEL_14;
      }

      v12 = *(v7 + 16);
LABEL_13:
      v12();
      goto LABEL_14;
    }

    v11 = *(a1 + 32);
    if (!v11)
    {
      goto LABEL_14;
    }

LABEL_12:
    v12 = *(v11 + 16);
    goto LABEL_13;
  }

  v8 = VUIDefaultLogObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __66__VUIActionPunchout__startASCAppInstallFlowWithCompletionHandler___block_invoke_cold_1();
  }

  if (*(a1 + 32))
  {
    v10 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __66__VUIActionPunchout__startASCAppInstallFlowWithCompletionHandler___block_invoke_cold_2();
    }

    v11 = *(a1 + 32);
    goto LABEL_12;
  }

LABEL_14:
}

- (void)_presentASCSingleAppInstaller:(id)installer
{
  installerCopy = installer;
  v7 = MEMORY[0x1E69E9820];
  v8 = __51__VUIActionPunchout__presentASCSingleAppInstaller___block_invoke;
  v9 = &unk_1E872E580;
  selfCopy = self;
  v11 = installerCopy;
  v5 = MEMORY[0x1E696AF00];
  v6 = installerCopy;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v7);
  }
}

void __51__VUIActionPunchout__presentASCSingleAppInstaller___block_invoke(uint64_t a1)
{
  v2 = [VUIASCNavigationViewController alloc];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__VUIActionPunchout__presentASCSingleAppInstaller___block_invoke_2;
  v9[3] = &unk_1E872D790;
  v10 = *(a1 + 40);
  v5 = [(VUIASCNavigationViewController *)v2 initWithChannelDetails:v4 punchoutAction:v3 shouldHandleVPPA:0 onFlowComplete:v9];
  v6 = sASCNavigationController;
  sASCNavigationController = v5;

  v7 = +[VUIInterfaceFactory sharedInstance];
  v8 = [v7 controllerPresenter];

  if (!v8)
  {
    v8 = +[VUIApplicationRouter topMostVisibleViewController];
  }

  [v8 presentViewController:v5 animated:1 completion:&__block_literal_global_90_0];
}

void __51__VUIActionPunchout__presentASCSingleAppInstaller___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = sASCNavigationController;
  sASCNavigationController = 0;
}

- (void)_openAirplayPicker:(id)picker
{
  pickerCopy = picker;
  appBundleIDs = [(WLKChannelDetails *)self->_channelDetails appBundleIDs];
  firstObject = [appBundleIDs firstObject];

  if (self->_isEntitledToPlay && [firstObject length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v8 = __40__VUIActionPunchout__openAirplayPicker___block_invoke;
    v9 = &unk_1E872DF40;
    v10 = firstObject;
    selfCopy = self;
    v12 = pickerCopy;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [(VUIActionPunchout *)self _openPunchoutURL:pickerCopy afterInstallation:0];
  }
}

void __40__VUIActionPunchout__openAirplayPicker___block_invoke(void *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = objc_opt_new();
  v2 = v9[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__VUIActionPunchout__openAirplayPicker___block_invoke_92;
  v5[3] = &unk_1E87364E8;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  v7 = &v8;
  [v2 willBeginPlaybackFromAppWithBundleID:v3 completionHandler:v5];

  _Block_object_dispose(&v8, 8);
}

void __40__VUIActionPunchout__openAirplayPicker___block_invoke_92(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  else
  {
    [*(a1 + 32) _openPunchoutURL:*(a1 + 40) afterInstallation:0];
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)_showErrorMessageAlert:(id)alert
{
  alertCopy = alert;
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:1];
  channelDetails = [(VUIActionPunchout *)self channelDetails];
  name = [channelDetails name];
  v7 = [name length];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"PUNCHOUT_FAILED_ERROR"];
    channelDetails2 = [(VUIActionPunchout *)self channelDetails];
    name2 = [channelDetails2 name];
    v13 = [v8 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, name2];

    [v4 setMessage:v13];
  }

  else
  {
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"PUNCHOUT_FAILED_GENERIC_ERROR"];
    [v4 setMessage:v14];
  }

  domain = [alertCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E699F9A0]])
  {
    code = [alertCopy code];

    if (code != 1)
    {
      goto LABEL_12;
    }

    userInfo = [alertCopy userInfo];
    domain = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (domain)
    {
      v15Domain = [domain domain];
      if (![v15Domain isEqualToString:*MEMORY[0x1E699F8C0]])
      {
LABEL_10:

        goto LABEL_11;
      }

      code2 = [domain code];

      if (code2 == 5)
      {
        v20 = +[VUILocalizationManager sharedInstance];
        v21 = [v20 localizedStringForKey:@"TRANSACTION_RESTRICTED_PUNCHOUT"];
        [v4 setMessage:v21];

        v22 = MEMORY[0x1E69DC648];
        v15Domain = +[VUILocalizationManager sharedInstance];
        v23 = [v15Domain localizedStringForKey:@"SETTINGS"];
        v24 = [v22 actionWithTitle:v23 style:0 handler:&__block_literal_global_111];
        [v4 addAction:v24];

        goto LABEL_10;
      }
    }
  }

LABEL_11:

LABEL_12:
  v25 = MEMORY[0x1E69DC648];
  v26 = +[VUILocalizationManager sharedInstance];
  v27 = [v26 localizedStringForKey:@"OK"];
  v28 = [v25 actionWithTitle:v27 style:0 handler:0];
  [v4 addAction:v28];

  topPresentedViewController = [(VUIActionPunchout *)self topPresentedViewController];
  [topPresentedViewController presentViewController:v4 animated:1 completion:0];
}

void __44__VUIActionPunchout__showErrorMessageAlert___block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=SCREEN_TIME&path=CONTENT_PRIVACY"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)_openPunchoutURL:(id)l afterInstallation:(BOOL)installation
{
  installationCopy = installation;
  lCopy = l;
  punchoutURL = [(VUIActionPunchout *)self punchoutURL];
  channelDetails = [(VUIActionPunchout *)self channelDetails];
  appBundleIDs = [channelDetails appBundleIDs];
  firstObject = [appBundleIDs firstObject];

  v11 = [firstObject length];
  if (v11 && punchoutURL)
  {
    v28 = installationCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke;
    aBlock[3] = &unk_1E8736510;
    aBlock[4] = self;
    v12 = punchoutURL;
    v40 = v12;
    v13 = firstObject;
    v41 = v13;
    v42 = lCopy;
    v29 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    scheme = [v12 scheme];
    lowercaseString = [scheme lowercaseString];
    v16 = [lowercaseString isEqualToString:@"app"];

    if (v16)
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_126;
      v35[3] = &unk_1E87333C0;
      objc_copyWeak(&v37, &location);
      v36 = v29;
      [defaultWorkspace openApplicationWithBundleIdentifier:v13 configuration:0 completionHandler:v35];

      objc_destroyWeak(&v37);
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_2;
      v32[3] = &unk_1E872DF40;
      v32[4] = self;
      v19 = v12;
      v33 = v19;
      v34 = v29;
      v27 = _Block_copy(v32);
      v20 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v19 resolvingAgainstBaseURL:0];
      scheme2 = [v20 scheme];
      lowercaseString2 = [scheme2 lowercaseString];
      if ([lowercaseString2 isEqualToString:@"https"])
      {
        v23 = 1;
      }

      else
      {
        scheme3 = [v20 scheme];
        lowercaseString3 = [scheme3 lowercaseString];
        v23 = [lowercaseString3 isEqualToString:@"http"];
      }

      if (v28 && v23)
      {
        v26 = MEMORY[0x1E69635C0];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_2_144;
        v30[3] = &unk_1E872DC38;
        v31 = v27;
        [v26 afterAppLinksBecomeAvailableForURL:v19 limit:-1 performBlock:v30];
      }

      else
      {
        v27[2]();
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v18 = VUIDefaultLogObject(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [VUIActionPunchout _openPunchoutURL:afterInstallation:];
    }

    if (lCopy)
    {
      (*(lCopy + 2))(lCopy, 0);
    }
  }
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) _showErrorMessageAlert:v5];
  }

  else if (v6)
  {
    +[VUIMetricsMediaEvent recordPunchout:isUrlForPlay:](VUIMetricsMediaEvent, "recordPunchout:isUrlForPlay:", v6, [v6 isPlaybackURL]);
    v9 = +[VUIMetricsController sharedInstance];
    v10 = [v7 punchoutURL];
    v11 = [v10 absoluteString];
    [v9 setExitEventDestinationUrl:v11];

    v13 = VUIDefaultLogObject(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x1E695DF00] date];
      *buf = 138412290;
      v51 = v14;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "DropOnTab: resetting last playback date %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E695E000] standardUserDefaults];
    v16 = [MEMORY[0x1E695DF00] date];
    [v15 setObject:v16 forKey:@"lastPlaybackDate"];

    if ([v7 isPlaybackURL])
    {
      v17 = MEMORY[0x1E696AF20];
      v18 = [*(a1 + 40) absoluteString];
      v19 = [v17 componentsWithString:v18];

      if (v19)
      {
        v43 = a1;
        v44 = v7;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v42 = v19;
        v20 = [v19 queryItems];
        v21 = [v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v46;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v46 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v45 + 1) + 8 * i);
              v27 = [v26 name];
              v28 = [v27 isEqual:@"resumeTime"];

              if (v28)
              {
                v29 = [v26 value];
                v23 = [v29 integerValue];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v22);
        }

        else
        {
          v23 = 0;
        }

        a1 = v43;
        v7 = v44;
        v19 = v42;
      }

      else
      {
        v23 = 0;
      }

      v30 = objc_alloc_init(MEMORY[0x1E69E1530]);
      v31 = [v7 channelDetails];
      v32 = [v31 channelID];
      [v30 setChannelID:v32];

      v33 = [v7 channelDetails];
      [v30 setConsented:{objc_msgSend(v33, "isConsented")}];

      v34 = [v7 punchoutURL];
      [v30 setUrl:v34];

      v35 = [MEMORY[0x1E695DF00] now];
      [v30 setPunchoutTime:v35];

      [v30 setBundleID:*(a1 + 48)];
      v36 = [v7 canonicalID];
      [v30 setCanonicalID:v36];

      v37 = [v7 channelDetails];
      v38 = [v37 appAdamIDs];
      v39 = [v38 firstObject];
      [v30 setAppAdamID:v39];

      v40 = [v7 externalID];
      [v30 setExternalContentID:v40];

      [v30 setResumeTimeSeconds:v23];
      v41 = [MEMORY[0x1E69E1528] defaultFederatedAnalyticsReporter];
      [v41 reportPunchout:v30];
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, v5 == 0);
  }
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_126(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = VUIDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_126_cold_1();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_127;
  v10 = &unk_1E8734A20;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = *(a1 + 32);
  v6 = v4;
  v11 = v6;
  v7 = v8;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v9(v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  objc_destroyWeak(&v13);
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_127(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(*(a1 + 40) + 16))();
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E699F970]];
  if ([*(a1 + 32) isPlaybackURL])
  {
    [v3 addEntriesFromDictionary:&unk_1F5E5F380];
    [v3 setObject:&unk_1F5E5F380 forKey:*MEMORY[0x1E699F948]];
  }

  [v2 setFrontBoardOptions:v3];
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_3;
  v7[3] = &unk_1E8736538;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 openURL:v5 configuration:v2 completionHandler:v7];
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = VUIDefaultLogObject(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_3_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_135;
  v12 = &unk_1E8730538;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v13 = v4;
  v14 = v7;
  v15 = v6;
  v8 = MEMORY[0x1E696AF00];
  v9 = v4;
  if ([v8 isMainThread])
  {
    v11(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_2_144(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = VUIDefaultLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_2_144_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_isValidAppInstalled
{
  v24 = *MEMORY[0x1E69E9840];
  channelDetails = self->_channelDetails;
  if (channelDetails && (-[WLKChannelDetails appBundleIDs](channelDetails, "appBundleIDs"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    appBundleIDs = [(WLKChannelDetails *)self->_channelDetails appBundleIDs];
    v7 = [appBundleIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(appBundleIDs);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if (v11)
          {
            defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
            v13 = [defaultWorkspace applicationIsInstalled:v11];

            if (v13)
            {
              v15 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v11 allowPlaceholder:1 error:0];
              minRequiredAppVersion = [(WLKChannelDetails *)self->_channelDetails minRequiredAppVersion];
              shortVersionString = [v15 shortVersionString];
              if (minRequiredAppVersion && [minRequiredAppVersion compare:shortVersionString options:64] == 1)
              {
                LOBYTE(v14) = 0;
              }

              else
              {
                v14 = [v15 isPlaceholder] ^ 1;
              }

              goto LABEL_19;
            }
          }
        }

        v8 = [appBundleIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v14) = 0;
LABEL_19:
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)_openPunchoutURL:afterInstallation:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_13();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1E323F000, v1, OS_LOG_TYPE_ERROR, "VUIActionPunchout::either punchoutURL or bundleID is nil; URL: [%@] bundleIdentifier:[%@]", v2, 0x16u);
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_126_cold_1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__VUIActionPunchout__openPunchoutURL_afterInstallation___block_invoke_2_144_cold_1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end