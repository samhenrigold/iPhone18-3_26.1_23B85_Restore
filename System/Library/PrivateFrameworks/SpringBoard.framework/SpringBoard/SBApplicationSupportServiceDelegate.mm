@interface SBApplicationSupportServiceDelegate
- (SBApplicationSupportServiceDelegate)init;
- (void)_rebuildDefaultContext;
- (void)dealloc;
- (void)destroyScenesWithPersistentIdentifiers:(id)identifiers animationType:(unint64_t)type destroySessions:(BOOL)sessions forClient:(id)client completion:(id)completion;
- (void)requestPasscodeCheckUIForClient:(id)client withCompletion:(id)completion;
- (void)requestPasscodeUnlockUIForClient:(id)client withCompletion:(id)completion;
@end

@implementation SBApplicationSupportServiceDelegate

- (SBApplicationSupportServiceDelegate)init
{
  v7.receiver = self;
  v7.super_class = SBApplicationSupportServiceDelegate;
  v2 = [(SBApplicationSupportServiceDelegate *)&v7 init];
  if (v2)
  {
    mEMORY[0x277D77760] = [MEMORY[0x277D77760] sharedInstance];
    service = v2->_service;
    v2->_service = mEMORY[0x277D77760];

    [(UISApplicationSupportService *)v2->_service setDelegate:v2];
    [(SBApplicationSupportServiceDelegate *)v2 _rebuildDefaultContext];
    [(UISApplicationSupportService *)v2->_service start];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__rebuildDefaultContext name:*MEMORY[0x277D77250] object:0];
  }

  return v2;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationSupportServiceSingleton.m" lineNumber:51 description:@"this object should not dealloc"];

  v5.receiver = self;
  v5.super_class = SBApplicationSupportServiceDelegate;
  [(SBApplicationSupportServiceDelegate *)&v5 dealloc];
}

- (void)_rebuildDefaultContext
{
  service = self->_service;
  sb_embeddedDisplayDefaultContext = [MEMORY[0x277D77738] sb_embeddedDisplayDefaultContext];
  [(UISApplicationSupportService *)service setDefaultContext:sb_embeddedDisplayDefaultContext];
}

- (void)requestPasscodeUnlockUIForClient:(id)client withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  completionCopy = completion;
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v8 = [mEMORY[0x277D0AAC0] processForPID:{objc_msgSend(clientCopy, "pid")}];

  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[SBAppSupportService] Received passcode unlock request from %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__SBApplicationSupportServiceDelegate_requestPasscodeUnlockUIForClient_withCompletion___block_invoke;
  v12[3] = &unk_2783A9878;
  v13 = clientCopy;
  v14 = completionCopy;
  v10 = clientCopy;
  v11 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __87__SBApplicationSupportServiceDelegate_requestPasscodeUnlockUIForClient_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [SBApp authenticationController];
  v3 = [v2 isAuthenticated];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [SBApp lockScreenService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __87__SBApplicationSupportServiceDelegate_requestPasscodeUnlockUIForClient_withCompletion___block_invoke_2;
    v7[3] = &unk_2783A9FC8;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 requestPasscodeUnlockUIForClient:v6 options:0 description:@"UISApplicationSupportService" withCompletion:v7];
  }
}

- (void)requestPasscodeCheckUIForClient:(id)client withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  completionCopy = completion;
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v8 = [mEMORY[0x277D0AAC0] processForPID:{objc_msgSend(clientCopy, "pid")}];

  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "[SBAppSupportService] Received passcode check request from %{public}@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__SBApplicationSupportServiceDelegate_requestPasscodeCheckUIForClient_withCompletion___block_invoke;
  v12[3] = &unk_2783A9878;
  v13 = clientCopy;
  v14 = completionCopy;
  v10 = clientCopy;
  v11 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __86__SBApplicationSupportServiceDelegate_requestPasscodeCheckUIForClient_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [SBApp authenticationController];
  v3 = [v2 isAuthenticated];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [SBApp lockScreenService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__SBApplicationSupportServiceDelegate_requestPasscodeCheckUIForClient_withCompletion___block_invoke_2;
    v7[3] = &unk_2783A9FC8;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 requestPasscodeCheckUIForClient:v6 options:0 description:@"UISApplicationSupportService" withCompletion:v7];
  }
}

- (void)destroyScenesWithPersistentIdentifiers:(id)identifiers animationType:(unint64_t)type destroySessions:(BOOL)sessions forClient:(id)client completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  clientCopy = client;
  completionCopy = completion;
  v14 = [clientCopy pid];
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v16 = [mEMORY[0x277D0AAC0] processForPID:v14];

  v17 = [MEMORY[0x277D46F50] identifierWithPid:v14];
  v18 = [MEMORY[0x277D46F48] handleForIdentifier:v17 error:0];
  v19 = SBLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v38 = v16;
    v39 = 2114;
    v40 = identifiersCopy;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "[SBAppSupportService] Received destroy scenes request from %{public}@ for %{public}@", buf, 0x16u);
  }

  if (!v18 || ![SBSystemUIScenesCoordinator shouldHandleSceneRequestsForProcess:v18 withOptions:0])
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_8:
        v21 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA470];
        v36 = @"This functionality is not supported for this device idiom.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v22 = [v21 errorWithDomain:@"SBApplicationSupportService" code:1 userInfo:v20];
        completionCopy[2](completionCopy, 0, v22);

        goto LABEL_11;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        goto LABEL_8;
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __129__SBApplicationSupportServiceDelegate_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_forClient_completion___block_invoke_2;
    v25[3] = &unk_2783B7590;
    v26 = clientCopy;
    v27 = identifiersCopy;
    typeCopy = type;
    sessionsCopy = sessions;
    v28 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v25);

    v20 = v26;
    goto LABEL_11;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__SBApplicationSupportServiceDelegate_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_forClient_completion___block_invoke;
  block[3] = &unk_2783AA1E8;
  v32 = v16;
  v33 = identifiersCopy;
  v34 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v20 = v32;
LABEL_11:
}

void __129__SBApplicationSupportServiceDelegate_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_forClient_completion___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [SBApp systemUIScenesCoordinator];
  if (v2)
  {
    v3 = [*(a1 + 32) identity];
    [v2 destroyScenesWithPersistentIdentifiers:*(a1 + 40) processIdentity:v3 completion:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA068];
    v9[0] = @"SpringBoard has not finished booting yet.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 errorWithDomain:@"SBApplicationSupportService" code:1 userInfo:v6];
    (*(v4 + 16))(v4, 0, v7);
  }
}

void __129__SBApplicationSupportServiceDelegate_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_forClient_completion___block_invoke_2(uint64_t a1, const char *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_realToken(v3, a2);
  }

  v4 = SBRunningApplicationForAuditToken(v36);
  v5 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = a1;
  v6 = *(a1 + 40);
  v29 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v29)
  {
    v7 = *v33;
    v8 = off_2783A1000;
    v28 = *v33;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [(__objc2_class *)v8[364] sharedInstance];
        v12 = [v11 sceneManagerForPersistenceIdentifier:v10];

        v13 = [v12 existingSceneHandleForPersistenceIdentifier:v10];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v16 = [v4 _sceneIdentifierForStoredPersistenceIdentifier:v10];
          if (!v16)
          {
            v14 = 0;
            goto LABEL_17;
          }

          v17 = v16;
          v18 = v6;
          v19 = v5;
          v20 = [MEMORY[0x277D0ADC0] identityForIdentifier:v16];
          v21 = [v12 displayIdentity];
          v22 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v4 sceneIdentity:v20 displayIdentity:v21];

          v14 = [v12 fetchOrCreateApplicationSceneHandleForRequest:v22];

          v5 = v19;
          v6 = v18;
          if (!v14)
          {
            v7 = v28;
            v8 = off_2783A1000;
            goto LABEL_17;
          }

          v7 = v28;
          v8 = off_2783A1000;
        }

        v15 = [v14 application];

        if (v15 == v4)
        {
          [v5 addObject:v14];
        }

LABEL_17:
      }

      v29 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v29);
  }

  if ([v5 count])
  {
    v23 = SBApplicationSceneEntityDestructionMakeIntentFromServicesRequest(*(v27 + 56), *(v27 + 64));
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __129__SBApplicationSupportServiceDelegate_destroyScenesWithPersistentIdentifiers_animationType_destroySessions_forClient_completion___block_invoke_3;
    v30[3] = &unk_2783B7568;
    v31 = *(v27 + 48);
    SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v5, v23, v30);
    v24 = v31;
  }

  else
  {
    v25 = *(v27 + 48);
    v26 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA470];
    v38 = @"No scene handles found for provided persistence IDs.";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v24 = [v26 errorWithDomain:@"SBApplicationSupportService" code:2 userInfo:v23];
    (*(v25 + 16))(v25, 0, v24);
  }
}

@end