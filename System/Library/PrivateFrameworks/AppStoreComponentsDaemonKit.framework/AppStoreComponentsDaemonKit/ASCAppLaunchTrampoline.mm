@interface ASCAppLaunchTrampoline
+ (OS_os_log)log;
- (ASCAppLaunchTrampoline)init;
- (ASCAppLaunchTrampoline)initWithWorkspace:(id)workspace;
- (id)handleURL:(id)l workspace:(id)workspace;
- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l universalLinkRequired:(BOOL)required workspace:(id)workspace;
- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l workspace:(id)workspace;
- (id)productPageURLForAdamId:(id)id deeplink:(id)deeplink eventId:(id)eventId encodedMetrics:(id)metrics sourceApplication:(id)application openInGamesUI:(id)i;
@end

@implementation ASCAppLaunchTrampoline

+ (OS_os_log)log
{
  if (log_onceToken_1 != -1)
  {
    +[ASCAppLaunchTrampoline log];
  }

  v3 = log_log_1;

  return v3;
}

uint64_t __29__ASCAppLaunchTrampoline_log__block_invoke()
{
  log_log_1 = os_log_create("com.apple.AppStoreComponents", "ASCAppLaunchTrampoline");

  return MEMORY[0x2821F96F8]();
}

- (ASCAppLaunchTrampoline)init
{
  v3 = +[ASCWorkspace sharedWorkspace];
  v4 = [(ASCAppLaunchTrampoline *)self initWithWorkspace:v3];

  return v4;
}

- (ASCAppLaunchTrampoline)initWithWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCAppLaunchTrampoline;
  v6 = [(ASCAppLaunchTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, workspace);
  }

  return v7;
}

- (id)handleURL:(id)l workspace:(id)workspace
{
  v103[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  workspaceCopy = workspace;
  v7 = objc_alloc_init(MEMORY[0x277CEE600]);
  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  v74 = v8;
  if (!v8 || (v9 = v8, [v8 queryItems], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
  {
    v56 = MEMORY[0x277CCA9B8];
    v102 = *MEMORY[0x277CCA450];
    v103[0] = @"Failed while parsing input URL, URL components was nil or empty.";
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:&v102 count:1];
    v58 = v56;
    v59 = 0;
LABEL_51:
    v18 = [v58 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:v59 userInfo:v57];

    [v7 finishWithError:v18];
    v61 = v7;
    goto LABEL_52;
  }

  selfCopy = self;
  host = [lCopy host];
  lowercaseString = [host lowercaseString];
  v14 = [lowercaseString isEqualToString:@"launchapp"];

  if ((v14 & 1) == 0)
  {
    v60 = MEMORY[0x277CCA9B8];
    v100 = *MEMORY[0x277CCA450];
    v101 = @"Received URL unsuitable for app launch trampoline.";
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v58 = v60;
    v59 = 1;
    goto LABEL_51;
  }

  v72 = v7;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  queryItems = [v9 queryItems];
  v16 = [queryItems countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (!v16)
  {

    v18 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    goto LABEL_57;
  }

  v17 = v16;
  v71 = lCopy;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v18 = 0;
  v19 = *v94;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v94 != v19)
      {
        objc_enumerationMutation(queryItems);
      }

      v21 = *(*(&v93 + 1) + 8 * i);
      name = [v21 name];
      lowercaseString2 = [name lowercaseString];
      if ([lowercaseString2 isEqualToString:@"appid"])
      {
        value = [v21 value];

        if (value)
        {
          v25 = v21;

          v18 = v25;
          continue;
        }
      }

      else
      {
      }

      name2 = [v21 name];
      lowercaseString3 = [name2 lowercaseString];
      if ([lowercaseString3 isEqualToString:@"bundleid"])
      {
        value2 = [v21 value];

        if (value2)
        {
          v29 = v21;

          v81 = v29;
          continue;
        }
      }

      else
      {
      }

      name3 = [v21 name];
      lowercaseString4 = [name3 lowercaseString];
      if ([lowercaseString4 isEqualToString:@"deeplink"])
      {
        value3 = [v21 value];

        if (value3)
        {
          v33 = v21;

          v80 = v33;
          continue;
        }
      }

      else
      {
      }

      name4 = [v21 name];
      lowercaseString5 = [name4 lowercaseString];
      if ([lowercaseString5 isEqualToString:@"eventid"])
      {
        value4 = [v21 value];

        if (value4)
        {
          v37 = v21;

          v78 = v37;
          continue;
        }
      }

      else
      {
      }

      name5 = [v21 name];
      lowercaseString6 = [name5 lowercaseString];
      if ([lowercaseString6 isEqualToString:@"trampolinemetrics"])
      {
        value5 = [v21 value];

        if (value5)
        {
          v41 = v21;

          v79 = v41;
          continue;
        }
      }

      else
      {
      }

      name6 = [v21 name];
      lowercaseString7 = [name6 lowercaseString];
      if ([lowercaseString7 isEqualToString:@"sourceapplication"])
      {
        value6 = [v21 value];

        if (value6)
        {
          v45 = v21;

          v77 = v45;
          continue;
        }
      }

      else
      {
      }

      name7 = [v21 name];
      lowercaseString8 = [name7 lowercaseString];
      if ([lowercaseString8 isEqualToString:@"metrics"])
      {
        value7 = [v21 value];

        if (value7 && !v79)
        {
          v79 = v21;
          continue;
        }
      }

      else
      {
      }

      name8 = [v21 name];
      lowercaseString9 = [name8 lowercaseString];
      if ([lowercaseString9 isEqualToString:@"openingamesui"])
      {
        value8 = [v21 value];

        if (value8)
        {
          v52 = v21;

          v76 = v52;
        }
      }

      else
      {
      }
    }

    v17 = [queryItems countByEnumeratingWithState:&v93 objects:v99 count:16];
  }

  while (v17);

  if (!v18)
  {
    lCopy = v71;
    v7 = v72;
    goto LABEL_57;
  }

  lCopy = v71;
  v7 = v72;
  if (!v81)
  {
LABEL_57:
    v63 = MEMORY[0x277CCA9B8];
    v97 = *MEMORY[0x277CCA450];
    v98 = @"Missing required parameters for app launch.";
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    value9 = [v63 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:2 userInfo:v64];

    [v7 finishWithError:value9];
    v65 = v7;
    goto LABEL_61;
  }

  value9 = [v80 value];

  if (value9)
  {
    value10 = [v80 value];
    stringByRemovingPercentEncoding = [value10 stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      value9 = [MEMORY[0x277CBEBC0] URLWithString:stringByRemovingPercentEncoding];
    }

    else
    {
      value9 = 0;
    }
  }

  value11 = [v81 value];
  v67 = [workspaceCopy openApplicationWithBundleIdentifier:value11 payloadURL:value9];

  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke;
  v91[3] = &unk_2784B1878;
  v68 = v72;
  v92 = v68;
  [v67 addSuccessBlock:v91];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_2;
  v82[3] = &unk_2784B18C8;
  v82[4] = selfCopy;
  v18 = v18;
  v83 = v18;
  v80 = v80;
  v84 = v80;
  v78 = v78;
  v85 = v78;
  v79 = v79;
  v86 = v79;
  v77 = v77;
  v87 = v77;
  v76 = v76;
  v88 = v76;
  v69 = v68;
  v89 = v69;
  v90 = workspaceCopy;
  [v67 addErrorBlock:v82];
  v70 = v69;

LABEL_61:
LABEL_52:

  return v7;
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ASCAppLaunchTrampoline log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_222629000, v4, OS_LOG_TYPE_INFO, "Unable to open application, reason %{public}@. Attempting to open product page URL", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) value];
  v7 = [*(a1 + 48) value];
  v8 = [*(a1 + 56) value];
  v9 = [*(a1 + 64) value];
  v10 = [*(a1 + 72) value];
  v11 = [*(a1 + 80) value];
  v12 = [v5 productPageURLForAdamId:v6 deeplink:v7 eventId:v8 encodedMetrics:v9 sourceApplication:v10 openInGamesUI:v11];

  if (v12)
  {
    v13 = [*(a1 + 96) openProductURL:v12];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48;
    v16[3] = &unk_2784B18A0;
    v17 = *(a1 + 88);
    [v13 addFinishBlock:v16];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Failed to construct product page URL.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v14 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:3 userInfo:v15];

    [*(a1 + 88) finishWithError:v13];
  }
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [*(a1 + 32) finishWithResult:v6];
  }

  else
  {
    v7 = +[ASCAppLaunchTrampoline log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48_cold_1(v5, v7);
    }

    v8 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Failed to open product page.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v8 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:4 userInfo:v9];

    [*(a1 + 32) finishWithError:v6];
  }
}

- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l workspace:(id)workspace
{
  v7 = MEMORY[0x277CEE600];
  workspaceCopy = workspace;
  lCopy = l;
  identifierCopy = identifier;
  v11 = objc_alloc_init(v7);
  v12 = [workspaceCopy openApplicationWithBundleIdentifier:identifierCopy payloadURL:lCopy];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke;
  v20[3] = &unk_2784B1878;
  v13 = v11;
  v21 = v13;
  [v12 addSuccessBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke_2;
  v18[3] = &unk_2784B18F0;
  v14 = v13;
  v19 = v14;
  [v12 addErrorBlock:v18];
  v15 = v19;
  v16 = v14;

  return v14;
}

void __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Failed to open app.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:5 userInfo:v3];

  [*(a1 + 32) finishWithError:v4];
}

- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l universalLinkRequired:(BOOL)required workspace:(id)workspace
{
  requiredCopy = required;
  v9 = MEMORY[0x277CEE600];
  workspaceCopy = workspace;
  lCopy = l;
  identifierCopy = identifier;
  v13 = objc_alloc_init(v9);
  v14 = [workspaceCopy openApplicationWithBundleIdentifier:identifierCopy payloadURL:lCopy universalLinkRequired:requiredCopy];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke;
  v22[3] = &unk_2784B1878;
  v15 = v13;
  v23 = v15;
  [v14 addSuccessBlock:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke_2;
  v20[3] = &unk_2784B18F0;
  v16 = v15;
  v21 = v16;
  [v14 addErrorBlock:v20];
  v17 = v21;
  v18 = v16;

  return v16;
}

void __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Failed to open app.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:5 userInfo:v3];

  [*(a1 + 32) finishWithError:v4];
}

- (id)productPageURLForAdamId:(id)id deeplink:(id)deeplink eventId:(id)eventId encodedMetrics:(id)metrics sourceApplication:(id)application openInGamesUI:(id)i
{
  deeplinkCopy = deeplink;
  eventIdCopy = eventId;
  metricsCopy = metrics;
  applicationCopy = application;
  iCopy = i;
  idCopy = id;
  v19 = [[ASCAdamID alloc] initWithStringValue:idCopy];

  LODWORD(idCopy) = [iCopy BOOLValue];
  if (idCopy)
  {
    [ASCLockupProductDetails gamesURLForLockupID:v19 ofKind:@"app" withOfferFlags:0];
  }

  else
  {
    [ASCLockupProductDetails URLForLockupID:v19 ofKind:@"app" withOfferFlags:0];
  }
  v20 = ;
  if (v20 && (deeplinkCopy || eventIdCopy || metricsCopy))
  {
    v21 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v20 resolvingAgainstBaseURL:0];
    queryItems = [v21 queryItems];
    v23 = [queryItems mutableCopy];

    if (!v23)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if (deeplinkCopy)
    {
      v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"deeplink" value:deeplinkCopy];
      [v23 addObject:v24];
    }

    if (eventIdCopy)
    {
      v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"eventid" value:eventIdCopy];
      [v23 addObject:v25];
    }

    if (metricsCopy)
    {
      v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"trampolineMetrics" value:metricsCopy];
      [v23 addObject:v26];
    }

    if (applicationCopy)
    {
      v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sourceApplication" value:applicationCopy];
      [v23 addObject:v27];
    }

    [v21 setQueryItems:v23];
    v28 = [v21 URL];

    v20 = v28;
  }

  return v20;
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_222629000, a2, OS_LOG_TYPE_ERROR, "Unable to open product page, reason %{public}@", &v2, 0xCu);
}

@end