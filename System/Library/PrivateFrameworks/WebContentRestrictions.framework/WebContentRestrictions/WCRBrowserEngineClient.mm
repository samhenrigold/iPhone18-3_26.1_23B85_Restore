@interface WCRBrowserEngineClient
+ (BOOL)_shouldEvaluateURLsForConfigurationAtPath:(id)path;
+ (BOOL)_shouldShowAllowButton:(id)button;
+ (BOOL)isLegacyExemptURL:(id)l;
+ (BOOL)shouldEvaluateURLs;
+ (BOOL)shouldEvaluateURLsForConfigurationAtPath:(id)path;
+ (id)_allowList:(id)list;
+ (id)_allowedWebsitesOnlyList:(id)list;
+ (id)_denyList:(id)list;
+ (id)_preferredLanguageForUserName:(id)name;
+ (id)base64StringFromString:(id)string;
+ (id)generateMacOSExemptURLList;
+ (id)urlToFormattedString:(id)string;
+ (unint64_t)_mode:(id)_mode;
+ (void)_evaluateURL:(id)l inMode:(unint64_t)mode usingBloomFilter:(id)filter userSettings:(id)settings language:(id)language allowList:(id)list denyList:(id)denyList allowedWebsitesOnlyList:(id)self0 macOSExemptURLList:(id)self1 withCompletion:(id)self2 onCompletionQueue:(id)self3;
- (WCRBrowserEngineClient)initWithConfigurationAtPath:(id)path;
- (void)_performLazyInitialization;
- (void)_reloadConfiguration;
- (void)evaluateURL:(id)l withCompletion:(id)completion;
- (void)evaluateURL:(id)l withCompletion:(id)completion onCompletionQueue:(id)queue;
- (void)requestAllowListAuthenticationForURL:(id)l withCompletion:(id)completion;
- (void)userDidCancel;
- (void)userEnteredCorrectPIN;
@end

@implementation WCRBrowserEngineClient

- (WCRBrowserEngineClient)initWithConfigurationAtPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = WCRBrowserEngineClient;
  v5 = [(WCRBrowserEngineClient *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create([@"com.apple.WebContentRestrictions.evaluationQueue" UTF8String], 0);
    evaluationQueue = v5->_evaluationQueue;
    v5->_evaluationQueue = v6;

    if (pathCopy)
    {
      [(WCRBrowserEngineClient *)v5 setConfigurationPath:pathCopy];
    }
  }

  return v5;
}

- (void)_reloadConfiguration
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Started reloading configuration"];
  [WCRLogging log:v3 withType:2];

  configurationPath = [(WCRBrowserEngineClient *)self configurationPath];
  v5 = configurationPath;
  if (configurationPath)
  {
    _defaultUserSettingsPath = configurationPath;
  }

  else
  {
    _defaultUserSettingsPath = [objc_opt_class() _defaultUserSettingsPath];
  }

  v21 = _defaultUserSettingsPath;

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v21];
  [(WCRBrowserEngineClient *)self setUserSettings:v7];

  v8 = objc_opt_class();
  userSettings = [(WCRBrowserEngineClient *)self userSettings];
  -[WCRBrowserEngineClient setMode:](self, "setMode:", [v8 _mode:userSettings]);

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running web content filter in mode %lu", -[WCRBrowserEngineClient mode](self, "mode")];
  [WCRLogging log:v10 withType:2];

  v11 = objc_opt_class();
  userSettings2 = [(WCRBrowserEngineClient *)self userSettings];
  v13 = [v11 _allowList:userSettings2];
  [(WCRBrowserEngineClient *)self setAllowList:v13];

  v14 = objc_opt_class();
  userSettings3 = [(WCRBrowserEngineClient *)self userSettings];
  v16 = [v14 _denyList:userSettings3];
  [(WCRBrowserEngineClient *)self setDenyList:v16];

  v17 = objc_opt_class();
  userSettings4 = [(WCRBrowserEngineClient *)self userSettings];
  v19 = [v17 _allowedWebsitesOnlyList:userSettings4];
  [(WCRBrowserEngineClient *)self setAllowedWebsitesOnlyList:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished reloading configuration"];
  [WCRLogging log:v20 withType:2];
}

- (void)_performLazyInitialization
{
  bloomFilter = [(WCRBrowserEngineClient *)self bloomFilter];
  if (!bloomFilter)
  {
    if ([(WCRBrowserEngineClient *)self mode]!= 1)
    {
      goto LABEL_5;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loading bloom filter"];
    [WCRLogging log:v4 withType:2];

    bloomFilter = objc_opt_new();
    [(WCRBrowserEngineClient *)self setBloomFilter:bloomFilter];
  }

LABEL_5:
  language = [(WCRBrowserEngineClient *)self language];

  if (!language)
  {
    v6 = objc_opt_class();
    v8 = NSUserName();
    v7 = [v6 _preferredLanguageForUserName:v8];
    [(WCRBrowserEngineClient *)self setLanguage:v7];
  }
}

+ (BOOL)shouldEvaluateURLs
{
  v2 = objc_opt_class();
  _defaultUserSettingsPath = [objc_opt_class() _defaultUserSettingsPath];
  LOBYTE(v2) = [v2 _shouldEvaluateURLsForConfigurationAtPath:_defaultUserSettingsPath];

  return v2;
}

+ (BOOL)shouldEvaluateURLsForConfigurationAtPath:(id)path
{
  pathCopy = path;
  v4 = [objc_opt_class() _shouldEvaluateURLsForConfigurationAtPath:pathCopy];

  return v4;
}

+ (BOOL)_shouldEvaluateURLsForConfigurationAtPath:(id)path
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:path];
  v4 = [objc_opt_class() _mode:v3];
  v5 = v4 < 4;
  v6 = 0xEu >> (v4 & 0xF);

  return v5 & v6;
}

- (void)evaluateURL:(id)l withCompletion:(id)completion onCompletionQueue:(id)queue
{
  lCopy = l;
  completionCopy = completion;
  queueCopy = queue;
  evaluationQueue = [(WCRBrowserEngineClient *)self evaluationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__WCRBrowserEngineClient_evaluateURL_withCompletion_onCompletionQueue___block_invoke;
  v15[3] = &unk_279E7F2C0;
  v15[4] = self;
  v16 = lCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  v14 = lCopy;
  dispatch_async(evaluationQueue, v15);
}

void __71__WCRBrowserEngineClient_evaluateURL_withCompletion_onCompletionQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadConfiguration];
  [*(a1 + 32) _performLazyInitialization];
  v11 = objc_opt_class();
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) mode];
  v12 = [*(a1 + 32) bloomFilter];
  v4 = [*(a1 + 32) userSettings];
  v5 = [*(a1 + 32) language];
  v6 = [*(a1 + 32) allowList];
  v7 = [*(a1 + 32) denyList];
  v8 = [*(a1 + 32) mode];
  if (v8 == 2)
  {
    v9 = [*(a1 + 32) allowedWebsitesOnlyList];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) macOSExemptURLList];
  [v11 _evaluateURL:v2 inMode:v3 usingBloomFilter:v12 userSettings:v4 language:v5 allowList:v6 denyList:v7 allowedWebsitesOnlyList:v9 macOSExemptURLList:v10 withCompletion:*(a1 + 56) onCompletionQueue:*(a1 + 48)];

  if (v8 == 2)
  {
  }
}

- (void)evaluateURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  [(WCRBrowserEngineClient *)self _reloadConfiguration];
  [(WCRBrowserEngineClient *)self _performLazyInitialization];
  v16 = objc_opt_class();
  mode = [(WCRBrowserEngineClient *)self mode];
  bloomFilter = [(WCRBrowserEngineClient *)self bloomFilter];
  userSettings = [(WCRBrowserEngineClient *)self userSettings];
  language = [(WCRBrowserEngineClient *)self language];
  allowList = [(WCRBrowserEngineClient *)self allowList];
  denyList = [(WCRBrowserEngineClient *)self denyList];
  mode2 = [(WCRBrowserEngineClient *)self mode];
  if (mode2 == 2)
  {
    allowedWebsitesOnlyList = [(WCRBrowserEngineClient *)self allowedWebsitesOnlyList];
  }

  else
  {
    allowedWebsitesOnlyList = 0;
  }

  macOSExemptURLList = [(WCRBrowserEngineClient *)self macOSExemptURLList];
  [v16 _evaluateURL:lCopy inMode:mode usingBloomFilter:bloomFilter userSettings:userSettings language:language allowList:allowList denyList:denyList allowedWebsitesOnlyList:allowedWebsitesOnlyList macOSExemptURLList:macOSExemptURLList withCompletion:completionCopy onCompletionQueue:0];

  if (mode2 == 2)
  {
  }
}

+ (void)_evaluateURL:(id)l inMode:(unint64_t)mode usingBloomFilter:(id)filter userSettings:(id)settings language:(id)language allowList:(id)list denyList:(id)denyList allowedWebsitesOnlyList:(id)self0 macOSExemptURLList:(id)self1 withCompletion:(id)self2 onCompletionQueue:(id)self3
{
  v87 = *MEMORY[0x277D85DE8];
  lCopy = l;
  filterCopy = filter;
  settingsCopy = settings;
  languageCopy = language;
  listCopy = list;
  denyListCopy = denyList;
  onlyListCopy = onlyList;
  lListCopy = lList;
  completionCopy = completion;
  queueCopy = queue;
  v23 = queueCopy;
  if (mode)
  {
    v24 = [objc_opt_class() isLegacyExemptURL:lCopy];
    v25 = lCopy;
    if (v24)
    {
      v26 = __WCRDefaultLog(v24);
      v27 = onlyListCopy;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v86 = lCopy;
        _os_log_impl(&dword_272D8F000, v26, OS_LOG_TYPE_DEFAULT, "Legacy: %{sensitive}@ -> Allowed", buf, 0xCu);
      }

      v28 = filterCopy;
      v29 = settingsCopy;
      if (completionCopy)
      {
        if (v23)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_56;
          block[3] = &unk_279E7F2E8;
          v82 = completionCopy;
          dispatch_async(v23, block);
          v30 = v82;
LABEL_13:

          goto LABEL_54;
        }

        goto LABEL_21;
      }

      goto LABEL_54;
    }

    v58 = lCopy;
    v32 = [objc_opt_class() urlToFormattedString:lCopy];
    v29 = settingsCopy;
    v55 = [objc_opt_class() _shouldShowAllowButton:settingsCopy];
    v27 = onlyListCopy;
    if (onlyListCopy)
    {
      v56 = listCopy;
      v60 = v32;
      v33 = [onlyListCopy containsURLString:v32];
      v34 = v33;
      v35 = __WCRDefaultLog(v33);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (!v34)
      {
        if (v36)
        {
          *buf = 138739971;
          v86 = v32;
          _os_log_impl(&dword_272D8F000, v35, OS_LOG_TYPE_DEFAULT, "Allowed websites only: %{sensitive}@ -> Not Allowed", buf, 0xCu);
        }

        v46 = [objc_opt_class() _allowedWebsitesOnly:settingsCopy];
        v47 = objc_opt_class();
        v48 = NSUserName();
        v25 = v58;
        v49 = [v47 _blockPageForURL:v58 forUser:v48 inLanguage:languageCopy isAllowedWebsitesOnlyBlock:1 withAllowedWebsites:v46 withAllowButton:v55];

        v50 = [v49 dataUsingEncoding:4];
        v28 = filterCopy;
        listCopy = v56;
        if (completionCopy)
        {
          if (v23)
          {
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_58;
            v76[3] = &unk_279E7F310;
            v78 = completionCopy;
            v77 = v50;
            dispatch_async(v23, v76);
          }

          else
          {
            (*(completionCopy + 2))(completionCopy, 1, v50);
          }
        }

        v29 = settingsCopy;
        v27 = onlyListCopy;
        v37 = v60;
        goto LABEL_53;
      }

      if (v36)
      {
        *buf = 138739971;
        v86 = v32;
        _os_log_impl(&dword_272D8F000, v35, OS_LOG_TYPE_DEFAULT, "Allowed websites only: %{sensitive}@ -> Allowed", buf, 0xCu);
      }

      v28 = filterCopy;
      listCopy = v56;
      v25 = v58;
      v27 = onlyListCopy;
      v37 = v32;
      if (completionCopy)
      {
        if (v23)
        {
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_57;
          v79[3] = &unk_279E7F2E8;
          v80 = completionCopy;
          dispatch_async(v23, v79);
          v38 = v80;
LABEL_51:

          goto LABEL_53;
        }

        goto LABEL_52;
      }

LABEL_53:

      goto LABEL_54;
    }

    v39 = [denyListCopy containsURLString:v32];
    if (v39)
    {
      v61 = v32;
      v57 = listCopy;
      v40 = __WCRDefaultLog(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v86 = v32;
        _os_log_impl(&dword_272D8F000, v40, OS_LOG_TYPE_DEFAULT, "Deny list: %{sensitive}@ -> Not Allowed", buf, 0xCu);
      }

      v41 = objc_opt_class();
      v42 = NSUserName();
      v25 = v58;
      v43 = [v41 _blockPageForURL:v58 forUser:v42 inLanguage:languageCopy isAllowedWebsitesOnlyBlock:0 withAllowedWebsites:0 withAllowButton:v55];

      v44 = [v43 dataUsingEncoding:4];
      v28 = filterCopy;
      v27 = 0;
      v37 = v61;
      if (!completionCopy)
      {
        goto LABEL_47;
      }

      if (v23)
      {
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_59;
        v73[3] = &unk_279E7F310;
        v75 = completionCopy;
        v74 = v44;
        dispatch_async(v23, v73);

        v45 = v75;
LABEL_28:

        goto LABEL_47;
      }
    }

    else
    {
      v51 = [listCopy containsURLString:v32];
      v37 = v32;
      if (v51)
      {
        v52 = __WCRDefaultLog(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138739971;
          v86 = v32;
          _os_log_impl(&dword_272D8F000, v52, OS_LOG_TYPE_DEFAULT, "Allow list: %{sensitive}@ -> Allowed", buf, 0xCu);
        }

        v28 = filterCopy;
        v29 = settingsCopy;
        v25 = v58;
        if (!completionCopy)
        {
          goto LABEL_53;
        }

        if (v23)
        {
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_60;
          v71[3] = &unk_279E7F2E8;
          v72 = completionCopy;
          dispatch_async(v23, v71);
          v38 = v72;
          goto LABEL_51;
        }

LABEL_52:
        (*(completionCopy + 2))(completionCopy, 0, 0);
        goto LABEL_53;
      }

      v28 = filterCopy;
      if (([filterCopy shouldBlock:v58] & 1) == 0)
      {
        v25 = v58;
        if (completionCopy)
        {
          if (v23)
          {
            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_2;
            v69[3] = &unk_279E7F2E8;
            v70 = completionCopy;
            dispatch_async(v23, v69);
            v38 = v70;
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v57 = listCopy;
      v53 = objc_opt_class();
      v54 = NSUserName();
      v43 = [v53 _blockPageForURL:v58 forUser:v54 inLanguage:languageCopy isAllowedWebsitesOnlyBlock:0 withAllowedWebsites:0 withAllowButton:v55];

      v44 = [v43 dataUsingEncoding:4];
      v25 = v58;
      if (!completionCopy)
      {
LABEL_47:

        v29 = settingsCopy;
        listCopy = v57;
        goto LABEL_53;
      }

      if (v23)
      {
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke_3;
        v66[3] = &unk_279E7F310;
        v68 = completionCopy;
        v67 = v44;
        dispatch_async(v23, v66);

        v45 = v68;
        goto LABEL_28;
      }
    }

    (*(completionCopy + 2))(completionCopy, 1, v44);
    goto LABEL_47;
  }

  v31 = __WCRDefaultLog(queueCopy);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272D8F000, v31, OS_LOG_TYPE_DEFAULT, "No evaluation necessary", buf, 2u);
  }

  v25 = lCopy;
  v28 = filterCopy;
  v29 = settingsCopy;
  v27 = onlyListCopy;
  if (completionCopy)
  {
    if (v23)
    {
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __180__WCRBrowserEngineClient__evaluateURL_inMode_usingBloomFilter_userSettings_language_allowList_denyList_allowedWebsitesOnlyList_macOSExemptURLList_withCompletion_onCompletionQueue___block_invoke;
      v83[3] = &unk_279E7F2E8;
      v84 = completionCopy;
      dispatch_async(v23, v83);
      v30 = v84;
      goto LABEL_13;
    }

LABEL_21:
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_54:
}

+ (id)urlToFormattedString:(id)string
{
  absoluteString = [string absoluteString];
  v4 = [absoluteString stringByReplacingPercentEscapesUsingEncoding:4];
  if (!v4)
  {
    v4 = absoluteString;
  }

  v5 = [v4 stringByAddingPercentEscapesUsingEncoding:4];

  return v5;
}

+ (BOOL)isLegacyExemptURL:(id)l
{
  host = [l host];
  lowercaseString = [host lowercaseString];

  if ([lowercaseString isEqualToString:@"apple.com"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".apple.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"icloud.com") & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".icloud.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"me.com") & 1) != 0 || (objc_msgSend(lowercaseString, "hasSuffix:", @".me.com") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"mac.com"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString hasSuffix:@".mac.com"];
  }

  return v5;
}

+ (id)generateMacOSExemptURLList
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&unk_2882740C0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(&unk_2882740C0);
        }

        [v2 addURLString:*(*(&v8 + 1) + 8 * i)];
      }

      v4 = [&unk_2882740C0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

+ (unint64_t)_mode:(id)_mode
{
  _modeCopy = _mode;
  v4 = [_modeCopy objectForKey:@"restrictWeb"];
  if ([v4 BOOLValue])
  {
    v5 = [_modeCopy objectForKey:@"whitelistEnabled"];
    if ([v5 BOOLValue])
    {
      v6 = 2;
    }

    else
    {
      v7 = [_modeCopy objectForKey:@"useContentFilter"];
      if ([v7 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v8 = [_modeCopy objectForKey:@"useContentFilterOverrides"];
        if ([v8 BOOLValue])
        {
          v6 = 3;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_allowList:(id)list
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKey:@"filterWhitelist"];
  if (v3)
  {
    v4 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addURLString:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_denyList:(id)list
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKey:@"filterBlacklist"];
  if (v3)
  {
    v4 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addURLString:{*(*(&v11 + 1) + 8 * i), v11}];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_allowedWebsitesOnlyList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [list objectForKey:@"siteWhitelist"];
  if (v3)
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) objectForKey:{@"address", v12}];
          if (v10)
          {
            [v4 addURLString:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_shouldShowAllowButton:(id)button
{
  v3 = [button objectForKey:@"noOverridingAllowed"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (id)_preferredLanguageForUserName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Looking up preferred language"];
  [WCRLogging log:v4 withType:0];

  if (!nameCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided userName was nil"];
    [WCRLogging log:v12 withType:0];

    firstObject = 0;
    goto LABEL_16;
  }

  v5 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], nameCopy, *MEMORY[0x277CBF010]);
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebContentRestrictions.framework"];
    v7 = v6;
    if (!v6)
    {
      localizations = [MEMORY[0x277CCACA8] stringWithFormat:@"No framework bundle"];
      [WCRLogging log:localizations withType:1];
      firstObject = 0;
LABEL_14:

      goto LABEL_15;
    }

    localizations = [v6 localizations];
    if ([localizations count])
    {
      v9 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:localizations forPreferences:v5];
      if ([v9 count])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found preferred loc"];
        [WCRLogging log:v10 withType:3];

        firstObject = [v9 firstObject];
LABEL_13:

        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"No preferred locs"];
      [WCRLogging log:v13 withType:1];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"No available locs"];
      [WCRLogging log:v9 withType:1];
    }

    firstObject = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"No language prefs"];
  [WCRLogging log:v7 withType:1];
  firstObject = 0;
LABEL_15:

LABEL_16:

  return firstObject;
}

+ (id)base64StringFromString:(id)string
{
  v3 = [string dataUsingEncoding:4];
  v4 = [v3 base64EncodedDataWithOptions:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)requestAllowListAuthenticationForURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v9 = [completionCopy copy];
    [(WCRBrowserEngineClient *)self setAllowURLCompletion:v9];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  rootViewController = [keyWindow rootViewController];

  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke;
  v18[3] = &unk_279E7F3A8;
  v18[4] = self;
  v19 = lCopy;
  v20 = rootViewController;
  v21 = v8;
  v14 = rootViewController;
  v15 = lCopy;
  v16 = v8;
  v17 = [v13 requestViewController:@"WCRServicePINEntryNavigationController" fromServiceWithBundleIdentifier:@"com.apple.WebContentFilter.remoteUI.WebContentAnalysisUI" connectionHandler:v18];
}

void __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = @"WCRRemotePINEntryViewController created";
  }

  else
  {
    v7 = @"WCRRemotePINEntryViewController is nil";
  }

  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v7];
  [WCRLogging log:v9 withType:v8];

  if (v6)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v10 = v5;
    [a1[4] setRemoteViewController:v10];
    [v10 setDelegate:a1[4]];
    [v10 setURL:a1[5]];
    v11 = [a1[5] host];
    [v10 setPageTitle:v11];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke_2;
    v13[3] = &unk_279E7F380;
    v16 = a1[7];
    v14 = a1[6];
    v15 = v10;
    v12 = v10;
    [v12 getIsPINPresentWithCompletion:v13];
  }
}

void __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (a2)
  {
    [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:&__block_literal_global_0];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__WCRBrowserEngineClient_requestAllowListAuthenticationForURL_withCompletion___block_invoke_4;
    v7[3] = &unk_279E7F358;
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v6 permitURLWithCompletion:v7];
  }
}

- (void)userEnteredCorrectPIN
{
  remoteViewController = [(WCRBrowserEngineClient *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WCRBrowserEngineClient_userEnteredCorrectPIN__block_invoke;
  v4[3] = &unk_279E7F3D0;
  v4[4] = self;
  [remoteViewController dismissViewControllerAnimated:1 completion:v4];
}

void __47__WCRBrowserEngineClient_userEnteredCorrectPIN__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) allowURLCompletion];
  v1[2](v1, 1, 0);
}

- (void)userDidCancel
{
  remoteViewController = [(WCRBrowserEngineClient *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__WCRBrowserEngineClient_userDidCancel__block_invoke;
  v4[3] = &unk_279E7F3D0;
  v4[4] = self;
  [remoteViewController dismissViewControllerAnimated:1 completion:v4];
}

void __39__WCRBrowserEngineClient_userDidCancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowURLCompletion];
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WCRPINEntryErrorDomain" code:3 userInfo:0];
  v2[2](v2, 0, v1);
}

@end