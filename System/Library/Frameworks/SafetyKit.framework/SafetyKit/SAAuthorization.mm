@interface SAAuthorization
+ (BOOL)connectionAuthorizedForAnyEmergency:(id)emergency;
+ (BOOL)connectionAuthorizedForCrashDetection:(id)detection;
+ (BOOL)currentConnectionAuthorizedForAnyEmergency;
+ (BOOL)currentConnectionAuthorizedForCrashDetection;
+ (BOOL)isInFlight;
+ (BOOL)setAccess:(BOOL)access forBundleId:(id)id;
+ (BOOL)startAuthorizationForBundleURL:(id)l preflightAuthorizationStatus:(int64_t)status completionHandler:(id)handler;
+ (id)SASyncedBundleId;
+ (id)approvedAppExcludingBundleId:(id)id;
+ (id)approvedBundleId;
+ (int64_t)authorizationStatusForCurrentConnection;
+ (int64_t)authorizationStatusWithTCCPreflightResult:(int)result;
+ (void)setThirdPartyBundleId:(id)id;
+ (void)showAuthorizationPrompt;
@end

@implementation SAAuthorization

+ (BOOL)isInFlight
{
  v2 = +[SAAuthorizationInFlight sharedInstance];
  isInFlight = [v2 isInFlight];

  return isInFlight;
}

+ (BOOL)currentConnectionAuthorizedForCrashDetection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = currentConnection;
  v7 = 0u;
  v8 = 0u;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  v6[0] = v7;
  v6[1] = v8;
  v4 = [SAAuthorization auditTokenAuthorizedForCrashDetection:v6];

  return v4;
}

+ (BOOL)connectionAuthorizedForCrashDetection:(id)detection
{
  v5 = 0u;
  v6 = 0u;
  if (detection)
  {
    objc_msgSend_auditToken(detection, a2);
  }

  v4[0] = v5;
  v4[1] = v6;
  return [SAAuthorization auditTokenAuthorizedForCrashDetection:v4];
}

+ (BOOL)currentConnectionAuthorizedForAnyEmergency
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = currentConnection;
  v7 = 0u;
  v8 = 0u;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  v6[0] = v7;
  v6[1] = v8;
  v4 = [SAAuthorization auditTokenAuthorizedForCrashDetection:v6];

  return v4;
}

+ (BOOL)connectionAuthorizedForAnyEmergency:(id)emergency
{
  v5 = 0u;
  v6 = 0u;
  if (emergency)
  {
    objc_msgSend_auditToken(emergency, a2);
  }

  v4[0] = v5;
  v4[1] = v6;
  return [SAAuthorization auditTokenAuthorizedForAnyEmergency:v4];
}

+ (int64_t)authorizationStatusWithTCCPreflightResult:(int)result
{
  if (result)
  {
    return result == 1;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)authorizationStatusForCurrentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    objc_msgSend_auditToken(currentConnection);
  }

  v4 = [SAAuthorization authorizationStatusWithTCCPreflightResult:TCCAccessPreflightWithAuditToken(), 0, 0];

  return v4;
}

+ (BOOL)startAuthorizationForBundleURL:(id)l preflightAuthorizationStatus:(int64_t)status completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = +[SAAuthorizationInFlight sharedInstance];
  isInFlight = [v9 isInFlight];
  if ((isInFlight & 1) == 0)
  {
    [v9 setInFlight:1];
    [v9 setPreflightAuthorizationStatus:status];
    [v9 setCompletionHandler:handlerCopy];
    v11 = [MEMORY[0x277CCA8D8] bundleWithURL:lCopy];
    bundleIdentifier = [v11 bundleIdentifier];
    [v9 setToBundleId:bundleIdentifier];

    toBundleId = [v9 toBundleId];
    v14 = [SAAuthorization approvedAppExcludingBundleId:toBundleId];
    [v9 setFromApp:v14];

    fromApp = [v9 fromApp];
    bundleId = [fromApp bundleId];
    [v9 setFromBundleId:bundleId];

    [objc_opt_class() showAuthorizationPrompt];
  }

  return isInFlight ^ 1;
}

+ (id)approvedAppExcludingBundleId:(id)id
{
  idCopy = id;
  v4 = +[SABundleManager crashDetectionManager];
  approvedApps = [v4 approvedApps];

  if ([approvedApps count])
  {
    firstObject = [approvedApps firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      bundleId = [firstObject bundleId];
      if ([bundleId isEqualToString:idCopy])
      {
      }

      else
      {
        pairedBundleId = [v7 pairedBundleId];
        v14 = [pairedBundleId isEqualToString:idCopy];

        if ((v14 & 1) == 0)
        {
          v15 = v7;
          goto LABEL_11;
        }
      }
    }

    v15 = 0;
LABEL_11:

    goto LABEL_19;
  }

  v9 = +[SAAuthorization SASyncedBundleId];

  if (!v9)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v19 = 0;
  v10 = +[SAAuthorization SASyncedBundleId];
  v11 = [SABundleManager remoteApplicationWithBundleId:v10 error:&v19];

  if (!v11)
  {
    goto LABEL_15;
  }

  bundleId2 = [v11 bundleId];
  if ([bundleId2 isEqualToString:idCopy])
  {

LABEL_15:
    if (!v19)
    {
      [SAAuthorization setThirdPartyBundleId:0];
    }

    v15 = 0;
    goto LABEL_18;
  }

  pairedBundleId2 = [v11 pairedBundleId];
  v17 = [pairedBundleId2 isEqualToString:idCopy];

  if (v17)
  {
    goto LABEL_15;
  }

  v15 = v11;
LABEL_18:

LABEL_19:

  return v15;
}

+ (id)approvedBundleId
{
  v2 = [self approvedAppExcludingBundleId:0];
  bundleId = [v2 bundleId];

  return bundleId;
}

+ (void)showAuthorizationPrompt
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SAAuthorization showAuthorizationPrompt]";
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, self, a3, "%s - Asked to display authorization prompt but not currently authorizing.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [*(a1 + 32) fromApp];

  v49 = v3;
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    if (v3)
    {
      v7 = [v4 localizedStringForKey:@"ALERT_HEADER_LONG_PHONE" value:&stru_284DA6B88 table:0];
      v8 = [*(a1 + 32) getToBundleLocalizedName];
      [v6 stringWithFormat:v7, v8, v3];
    }

    else
    {
      v7 = [v4 localizedStringForKey:@"ALERT_HEADER_LONG_MISSING_APP_PHONE" value:&stru_284DA6B88 table:0];
      v8 = [*(a1 + 32) getToBundleLocalizedName];
      [v6 stringWithFormat:v7, v8, v46];
    }
    v47 = ;
    v22 = v3;

    v13 = [v4 localizedStringForKey:@"ALERT_LONG_PHONE" value:&stru_284DA6B88 table:0];
    v23 = MEMORY[0x277CCACA8];
    v24 = [*(a1 + 32) getToBundleLocalizedName];
    v16 = [v23 stringWithFormat:v13, v24];

    v25 = MEMORY[0x277CCACA8];
    v26 = [v4 localizedStringForKey:@"DEFAULT_BUTTON_TITLE_LONG" value:&stru_284DA6B88 table:0];
    v27 = [*(a1 + 32) getToBundleLocalizedName];
    v20 = [v25 stringWithFormat:v26, v27];

    if (v22)
    {
      v28 = MEMORY[0x277CCACA8];
      v29 = [v4 localizedStringForKey:@"ALTERNATE_BUTTON_TITLE_LONG" value:&stru_284DA6B88 table:0];
      v21 = [v28 stringWithFormat:v29, v22];
    }

    else
    {
      v21 = [v4 localizedStringForKey:@"ALTERNATE_BUTTON_TITLE_MISSING_APP_LONG" value:&stru_284DA6B88 table:0];
    }

    v12 = v47;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v4 localizedStringForKey:@"ALERT_HEADER_SHORT_PHONE" value:&stru_284DA6B88 table:0];
    v11 = [*(a1 + 32) getToBundleLocalizedName];
    v12 = [v9 stringWithFormat:v10, v11];

    v13 = [v4 localizedStringForKey:@"ALERT_SHORT_PHONE" value:&stru_284DA6B88 table:0];
    v14 = MEMORY[0x277CCACA8];
    v15 = [*(a1 + 32) getToBundleLocalizedName];
    v16 = [v14 stringWithFormat:v13, v15];

    v17 = MEMORY[0x277CCACA8];
    v18 = [v4 localizedStringForKey:@"DEFAULT_BUTTON_TITLE_SHORT" value:&stru_284DA6B88 table:0];
    v19 = [*(a1 + 32) getToBundleLocalizedName];
    v20 = [v17 stringWithFormat:v18, v19];

    v21 = [v4 localizedStringForKey:@"ALTERNATE_BUTTON_TITLE_SHORT" value:&stru_284DA6B88 table:0];
  }

  v30 = objc_opt_new();
  [v30 setObject:v12 forKeyedSubscript:*MEMORY[0x277CBF188]];
  [v30 setObject:v16 forKeyedSubscript:*MEMORY[0x277CBF198]];
  [v30 setObject:v20 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  [v30 setObject:v21 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  v31 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v32 = [v31 valueForKey:@"SAServerMockAuthorizationPromptAnswer"];

  if (v32)
  {
    v34 = sa_default_log(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_1();
    }

    v35 = [v32 BOOLValue];
    v36 = v35 ^ 1;
    v37 = sa_default_log(v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_2();
    }

    authorizationPromptResponseHandler(0, v36);
    goto LABEL_19;
  }

  error = 0;
  v38 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, v30);
  if (v38 && !error)
  {
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v38, authorizationPromptResponseHandler, 0);
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
    CFRelease(RunLoopSource);
LABEL_19:
    v41 = v49;
    goto LABEL_20;
  }

  v48 = v12;
  if (v38)
  {
    CFRelease(v38);
  }

  v42 = [*(a1 + 32) completionHandler];
  v43 = [*(a1 + 32) preflightAuthorizationStatus];
  v44 = [SAError errorWithCode:4];
  (v42)[2](v42, v43, v44);

  v45 = sa_default_log([*(a1 + 32) reset]);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_3(&error, v45);
  }

  v12 = v48;
  v41 = v49;
LABEL_20:
}

+ (BOOL)setAccess:(BOOL)access forBundleId:(id)id
{
  accessCopy = access;
  idCopy = id;
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:idCopy];

  if (!v7)
  {
    if (accessCopy)
    {
      v11 = sa_default_log(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SAAuthorization *)idCopy setAccess:v11 forBundleId:v12, v13, v14, v15, v16, v17];
      }
    }

    else if (TCCAccessSetForBundleId())
    {
      goto LABEL_10;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  if (!TCCAccessSetForBundleId())
  {
    goto LABEL_12;
  }

  if (!accessCopy)
  {
LABEL_10:
    selfCopy2 = self;
    v10 = 0;
    goto LABEL_11;
  }

  selfCopy2 = self;
  v10 = idCopy;
LABEL_11:
  [selfCopy2 setThirdPartyBundleId:v10];
  v18 = 1;
LABEL_13:

  return v18;
}

+ (id)SASyncedBundleId
{
  [self _synchronizePrefs];
  v3 = [self _copyPrefsValueForKey:@"SAKappaThirdPartyBundleId"];

  return v3;
}

+ (void)setThirdPartyBundleId:(id)id
{
  v11 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = sa_default_log(idCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = idCopy;
    _os_log_impl(&dword_23AA4D000, v5, OS_LOG_TYPE_DEFAULT, "setting third party bundleId: %@", buf, 0xCu);
  }

  v6 = [self _copyPrefsValueForKey:@"SAKappaThirdPartyBundleId"];
  if (([v6 isEqual:idCopy] & 1) == 0)
  {
    [self _setPrefsValue:idCopy forKey:@"SAKappaThirdPartyBundleId"];
    v7 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SAAuthorization_setThirdPartyBundleId___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

void __41__SAAuthorization_setThirdPartyBundleId___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizePrefs];
  v2 = objc_opt_new();
  v1 = [MEMORY[0x277CBEB98] setWithObject:@"SAKappaThirdPartyBundleId"];
  [v2 synchronizeUserDefaultsDomain:@"com.apple.SafetyKit" keys:v1];
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_DEBUG, "%s - Would have presented notification, details: %@", v1, 0x16u);
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_23AA4D000, v1, OS_LOG_TYPE_DEBUG, "%s - Mocking answer to authorization prompt, mockAnswer: %@, responseFlags: %lu", v2, 0x20u);
}

void __42__SAAuthorization_showAuthorizationPrompt__block_invoke_cold_3(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "+[SAAuthorization showAuthorizationPrompt]_block_invoke";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_ERROR, "%s - CFUserNotificationCreate failed, error: %d", &v3, 0x12u);
}

+ (void)setAccess:(uint64_t)a3 forBundleId:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_4_0(&dword_23AA4D000, a2, a3, "attempting to set third party bundleId that doesn't exist: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end