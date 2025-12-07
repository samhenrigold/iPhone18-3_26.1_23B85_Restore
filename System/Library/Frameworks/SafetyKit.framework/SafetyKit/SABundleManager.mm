@interface SABundleManager
+ (id)approvedBundleIdsForService:(__CFString *)service;
+ (id)bundleURLForAuditToken:(id *)token;
+ (id)bundleURLForCurrentConnection;
+ (id)crashDetectionManager;
+ (id)locationBundle;
+ (id)reasonToAttributeName:(int64_t)name;
+ (id)remoteApplicationWithBundleId:(id)id error:(id *)error;
+ (void)getRemoteApplicationNameWithBundleId:(id)id withCompletion:(id)completion;
- (SABundleManager)initWithServiceName:(__CFString *)name;
- (id)approvedApps;
- (id)pairedDeviceBundleIdForId:(id)id;
- (void)approvedApps;
- (void)openApplicationInBackgroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion;
- (void)openApplicationInForegroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion;
- (void)wakeApprovedAppsWithReason:(int64_t)reason completion:(id)completion;
@end

@implementation SABundleManager

+ (id)crashDetectionManager
{
  if (crashDetectionManager_onceToken != -1)
  {
    +[SABundleManager crashDetectionManager];
  }

  v3 = crashDetectionManager_manager;

  return v3;
}

- (id)approvedApps
{
  selfCopy = self;
  v59 = *MEMORY[0x277D85DE8];
  v2 = sa_default_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(SABundleManager *)selfCopy approvedApps];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = objc_opt_new();
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __31__SABundleManager_approvedApps__block_invoke;
  v44 = &unk_278B67DB8;
  v45 = &v46;
  tcc_server_message_get_authorization_records_by_service();
  if (![v47[5] count])
  {
    v28 = MEMORY[0x277CBEBF8];
    goto LABEL_33;
  }

  v3 = [v47[5] sortedArrayUsingComparator:&__block_literal_global_54];
  v32 = +[SAAuthorization SASyncedBundleId];
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = [v4 initWithCapacity:{objc_msgSend(v47[5], "count") - 1}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v58 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *v38;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v37 + 1) + 8 * i);
      if (!v6)
      {
        v6 = v10;
        continue;
      }

      bundleId = [*(*(&v37 + 1) + 8 * i) bundleId];
      if ([bundleId isEqualToString:v32])
      {

LABEL_14:
        [v5 addObject:{v6, selfCopy}];
        v15 = v10;

        v6 = v15;
        continue;
      }

      bundleId2 = [v10 bundleId];
      v13 = [(SABundleManager *)selfCopy pairedDeviceBundleIdForId:v32];
      v14 = [bundleId2 isEqualToString:v13];

      if (v14)
      {
        goto LABEL_14;
      }

      [v5 addObject:v6];
    }

    v7 = [obj countByEnumeratingWithState:&v37 objects:v58 count:16];
  }

  while (v7);
LABEL_18:

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v57 count:16];
  v18 = v17;
  if (v17)
  {
    v19 = *v34;
    do
    {
      v20 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * v20);
        v22 = sa_default_log(v17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          bundleId3 = [v21 bundleId];
          *buf = 136315394;
          v54 = "[SABundleManager approvedApps]";
          v55 = 2112;
          v56 = bundleId3;
          _os_log_fault_impl(&dword_23AA4D000, v22, OS_LOG_TYPE_FAULT, "%s - Found more than one approved app for service, revoking access for duplicate app, bundleId: %@", buf, 0x16u);
        }

        bundleId4 = [v21 bundleId];
        v24 = TCCAccessSetForBundleId() == 0;

        if (v24)
        {
          v25 = sa_default_log(v17);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            bundleId5 = [v21 bundleId];
            *buf = 136315394;
            v54 = "[SABundleManager approvedApps]";
            v55 = 2112;
            v56 = bundleId5;
            _os_log_error_impl(&dword_23AA4D000, v25, OS_LOG_TYPE_ERROR, "%s - Unable to revoke access for duplicate app, bundleId: %@", buf, 0x16u);
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v57 count:16];
      v18 = v17;
    }

    while (v17);
  }

  v52 = v6;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];

LABEL_33:
  _Block_object_dispose(&v46, 8);

  return v28;
}

void __31__SABundleManager_approvedApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = tcc_authorization_record_get_subject_identity();
    if (!tcc_identity_get_type() && tcc_authorization_record_get_authorization_right() == 2)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithCString:tcc_identity_get_identifier() encoding:4];
      v6 = tcc_authorization_record_get_subject_attributed_entity();
      v7 = v6 == 0;

      v8 = [[SABundleManagerApp alloc] initWithBundleId:v5 deviceType:v7];
      [(SABundleManagerApp *)v8 setAuthorizationDate:tcc_authorization_record_get_last_modified_date()];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    }

    v3 = v9;
  }
}

uint64_t __40__SABundleManager_crashDetectionManager__block_invoke()
{
  v0 = [SABundleManager alloc];
  crashDetectionManager_manager = [(SABundleManager *)v0 initWithServiceName:*MEMORY[0x277D6C140]];

  return MEMORY[0x2821F96F8]();
}

- (SABundleManager)initWithServiceName:(__CFString *)name
{
  v13.receiver = self;
  v13.super_class = SABundleManager;
  v3 = [(SABundleManager *)&v13 init];
  if (v3)
  {
    v4 = objc_alloc_init(SAPhoneApplicationLauncher);
    applicationLauncher = v3->_applicationLauncher;
    v3->_applicationLauncher = v4;

    v6 = tcc_server_create();
    server = v3->_server;
    v3->_server = v6;

    v8 = tcc_service_singleton_for_CF_name();
    service = v3->_service;
    v3->_service = v8;

    v10 = tcc_message_options_create();
    options = v3->_options;
    v3->_options = v10;

    tcc_message_options_set_reply_handler_policy();
    tcc_message_options_set_request_prompt_policy();
  }

  return v3;
}

+ (id)approvedBundleIdsForService:(__CFString *)service
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = sa_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[SABundleManager approvedBundleIdsForService:];
  }

  v4 = objc_opt_new();
  v5 = TCCAccessCopyInformation();
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      v10 = MEMORY[0x277D6C0C8];
      v11 = MEMORY[0x277D6C0D0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:{*v10, v20}];

          if (v14)
          {
            v15 = CFBundleGetIdentifier(v14);
            v16 = [v13 objectForKeyedSubscript:*v11];
            bOOLValue = [v16 BOOLValue];

            if (bOOLValue)
            {
              [v4 addObject:v15];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

uint64_t __31__SABundleManager_approvedApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 authorizationDate];
  v6 = [v4 authorizationDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)bundleURLForCurrentConnection
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
  v4 = [SABundleManager bundleURLForAuditToken:v6];

  return v4;
}

+ (id)bundleURLForAuditToken:(id *)token
{
  v13 = 0;
  v3 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v3;
  v4 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:v12 error:&v13];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([v4 bundleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v4 URL];
  }

  else
  {
    v10 = sa_default_log(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SABundleManager bundleURLForAuditToken:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)wakeApprovedAppsWithReason:(int64_t)reason completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = sa_default_log(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SABundleManager *)self wakeApprovedAppsWithReason:reason completion:v7];
  }

  approvedApps = [(SABundleManager *)self approvedApps];
  if ([approvedApps count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = approvedApps;
    v9 = approvedApps;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = *v20;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = sa_default_log(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          bundleId = [v14 bundleId];
          *buf = 136315394;
          v24 = "[SABundleManager wakeApprovedAppsWithReason:completion:]";
          v25 = 2112;
          v26 = bundleId;
          _os_log_debug_impl(&dword_23AA4D000, v15, OS_LOG_TYPE_DEBUG, "%s - Need to wake app, app: %@", buf, 0x16u);
        }

        if (reason >= 2)
        {
          if (reason != 2)
          {
            goto LABEL_16;
          }

          bundleId2 = [v14 bundleId];
          [(SABundleManager *)self openApplicationInForegroundWithBundleId:bundleId2 withReason:2 completion:completionCopy];
        }

        else
        {
          bundleId2 = [v14 bundleId];
          [(SABundleManager *)self openApplicationInBackgroundWithBundleId:bundleId2 withReason:reason completion:completionCopy];
        }

LABEL_16:
        ++v13;
      }

      while (v11 != v13);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v11 = v10;
      if (!v10)
      {
LABEL_18:

        approvedApps = v18;
        goto LABEL_21;
      }
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_21:
}

- (void)openApplicationInBackgroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v10 = sa_default_log(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SABundleManager openApplicationInBackgroundWithBundleId:withReason:completion:];
  }

  [(SAApplicationLauncher *)self->_applicationLauncher openApplicationInBackgroundWithBundleId:idCopy withReason:reason completion:completionCopy];
}

- (void)openApplicationInForegroundWithBundleId:(id)id withReason:(int64_t)reason completion:(id)completion
{
  v17[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = sa_default_log(idCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SABundleManager openApplicationInForegroundWithBundleId:withReason:completion:];
  }

  v8 = [objc_opt_class() reasonToAttributeName:reason];
  v9 = objc_opt_new();
  v16[0] = @"__LaunchOrigin";
  v16[1] = @"__PromptUnlockDevice";
  v17[0] = v8;
  v17[1] = &unk_284DA9BC8;
  v16[2] = @"__UnlockDevice ";
  v17[2] = &unk_284DA9BC8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v9 setFrontBoardOptions:v10];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke;
  v13[3] = &unk_278B67E00;
  v14 = idCopy;
  reasonCopy = reason;
  v12 = idCopy;
  [defaultWorkspace openApplicationWithBundleIdentifier:v12 usingConfiguration:v9 completionHandler:v13];
}

void __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sa_default_log(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[SABundleManager openApplicationInForegroundWithBundleId:withReason:completion:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_23AA4D000, v7, OS_LOG_TYPE_DEFAULT, "%s - Successfully launched bundle application in foreground, bundleId: %@, reason: %lu", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__SABundleManager_openApplicationInForegroundWithBundleId_withReason_completion___block_invoke_cold_1();
  }
}

+ (void)getRemoteApplicationNameWithBundleId:(id)id withCompletion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (getActivePairedDevice)
  {
    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke;
    v10[3] = &unk_278B67E28;
    v11 = idCopy;
    v12 = completionCopy;
    [mEMORY[0x277CEAF80] fetchApplicationOnPairedDevice:getActivePairedDevice withBundleID:v11 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sa_default_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke_cold_1();
    }
  }

  v9 = *(a1 + 40);
  v10 = [v5 applicationName];
  (*(v9 + 16))(v9, v10);
}

+ (id)remoteApplicationWithBundleId:(id)id error:(id *)error
{
  idCopy = id;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (getActivePairedDevice)
  {
    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v19 = 0;
    v9 = [mEMORY[0x277CEAF80] applicationOnPairedDevice:getActivePairedDevice withBundleID:idCopy error:&v19];
    v10 = v19;
    v11 = v19;

    if (v11)
    {
      code = [v11 code];
      if (code != 19)
      {
        v13 = sa_default_log(code);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[SABundleManager remoteApplicationWithBundleId:error:];
        }

        objc_storeStrong(error, v10);
      }
    }

    if (v9)
    {
      v14 = [[SABundleManagerApp alloc] initWithBundleId:idCopy deviceType:1];
      companionAppBundleID = [v9 companionAppBundleID];
      [(SABundleManagerApp *)v14 setPairedBundleId:companionAppBundleID];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16 = [SAError errorWithCode:4];
    v17 = *error;
    *error = v16;

    v14 = 0;
  }

  return v14;
}

+ (id)locationBundle
{
  if (locationBundle_onceToken != -1)
  {
    +[SABundleManager locationBundle];
  }

  v3 = locationBundle___bundle;

  return v3;
}

void __33__SABundleManager_locationBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:8];
  v6 = [v1 objectAtIndexedSubscript:0];

  v2 = [v6 URLByAppendingPathComponent:@"LocationBundles"];
  v3 = [v2 URLByAppendingPathComponent:@"Emergency SOS.bundle"];
  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = locationBundle___bundle;
  locationBundle___bundle = v4;
}

+ (id)reasonToAttributeName:(int64_t)name
{
  if (name > 2)
  {
    return 0;
  }

  else
  {
    return off_278B67E48[name];
  }
}

- (id)pairedDeviceBundleIdForId:(id)id
{
  idCopy = id;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v13 = 0;
  v7 = [mEMORY[0x277CEAF80] locallyAvailableApplicationWithBundleID:idCopy forPairedDevice:getActivePairedDevice error:&v13];
  v8 = v13;

  bundleIdentifier = [v7 bundleIdentifier];
  v10 = bundleIdentifier;
  if (v8)
  {
    v11 = sa_default_log(bundleIdentifier);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SABundleManager remoteApplicationWithBundleId:error:];
    }
  }

  return v10;
}

+ (void)approvedBundleIdsForService:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_23AA4D000, v0, v1, "%s, service: %@", v2, v3, v4, v5, v6);
}

- (void)approvedApps
{
  v4 = *MEMORY[0x277D85DE8];
  tcc_service_get_CF_name();
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_DEBUG, "%s, service: %@", v3, 0x16u);
}

+ (void)bundleURLForAuditToken:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_23AA4D000, v0, OS_LOG_TYPE_ERROR, "%s - unable to get bundle information for audit token, error: %@", v1, 0x16u);
}

- (void)wakeApprovedAppsWithReason:(NSObject *)a3 completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[SABundleManager wakeApprovedAppsWithReason:completion:]";
  v6 = 2048;
  v7 = a2;
  v8 = 2112;
  CF_name = tcc_service_get_CF_name();
  _os_log_debug_impl(&dword_23AA4D000, a3, OS_LOG_TYPE_DEBUG, "%s, reason: %lu, service: %@", &v4, 0x20u);
}

- (void)openApplicationInBackgroundWithBundleId:withReason:completion:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_23AA4D000, v0, v1, "%s - attempting to launch app in background, bundleId: %@", v2, v3, v4, v5, v6);
}

- (void)openApplicationInForegroundWithBundleId:withReason:completion:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_23AA4D000, v0, v1, "%s - attempting to launch app in foreground, bundleId: %@", v2, v3, v4, v5, v6);
}

void __71__SABundleManager_getRemoteApplicationNameWithBundleId_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)remoteApplicationWithBundleId:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end