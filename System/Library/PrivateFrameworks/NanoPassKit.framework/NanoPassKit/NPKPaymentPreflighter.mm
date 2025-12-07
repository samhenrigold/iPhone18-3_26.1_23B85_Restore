@interface NPKPaymentPreflighter
+ (BOOL)watchConnected;
- (NPKPaymentPreflighter)initWithWebService:(id)service targetDevice:(id)device companionAgentConnection:(id)connection;
- (PKPaymentWebServiceTargetDeviceProtocol)targetDevice;
- (id)_errorForConnectionIssue;
- (id)_errorForGizmoAccountNeeded;
- (id)_errorForPasscodeNeeded;
- (id)_errorForUnlockNeeded;
- (id)_errorForWristDetectNeeded;
- (void)_checkCompanioniCloudAccount;
- (void)_checkPasscodeEnabledAndUnlockedStateRequiringPasscode:(BOOL)passcode requiringUnlock:(BOOL)unlock;
- (void)_checkSpaceAvailableOnSecureElement;
- (void)_checkWatchConnected;
- (void)_checkWatchiCloudAccount;
- (void)_checkWristDetectEnabledState;
- (void)_finishPresentingSetupControllerIfReadyWithSuccess:(BOOL)success error:(id)error;
- (void)_setAuthRandomIfNecessary;
- (void)addBiometricPassPreflightWithCompletion:(id)completion;
- (void)addCardPreflightWithCompletion:(id)completion;
- (void)addSecureElementPassPreflightWithCompletion:(id)completion;
- (void)transferToCompanionPreflightWithCompletion:(id)completion;
@end

@implementation NPKPaymentPreflighter

+ (BOOL)watchConnected
{
  v2 = NPKIsRunningInNPKCompanionAgent(self, a2);
  v3 = objc_alloc(MEMORY[0x277D18778]);
  if (v2)
  {
    v4 = @"com.apple.private.alloy.passbook.maintenance";
  }

  else
  {
    v4 = @"com.apple.private.alloy.passbook.provisioning";
  }

  v5 = [v3 initWithService:v4];
  v6 = NPKIsConnectedToPairedOrPairingDeviceFromService(v5);

  return v6;
}

- (NPKPaymentPreflighter)initWithWebService:(id)service targetDevice:(id)device companionAgentConnection:(id)connection
{
  serviceCopy = service;
  deviceCopy = device;
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = NPKPaymentPreflighter;
  v12 = [(NPKPaymentPreflighter *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_webService, service);
    objc_storeWeak(&v13->_targetDevice, deviceCopy);
    objc_storeStrong(&v13->_companionAgentConnection, connection);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v14 = getPUConnectionClass_softClass;
    v25 = getPUConnectionClass_softClass;
    if (!getPUConnectionClass_softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getPUConnectionClass_block_invoke;
      v21[3] = &unk_2799457C8;
      v21[4] = &v22;
      __getPUConnectionClass_block_invoke(v21);
      v14 = v23[3];
    }

    v15 = v14;
    _Block_object_dispose(&v22, 8);
    v16 = objc_alloc_init(v14);
    [(NPKPaymentPreflighter *)v13 setPasscodeConnection:v16];
    v17 = objc_alloc(MEMORY[0x277D2BD90]);
    v18 = [v17 initWithQueue:MEMORY[0x277D85CD0]];
    [(NPKPaymentPreflighter *)v13 setSystemSettingsManager:v18];
    v13->_needsSetAuthRandom = 1;
  }

  return v13;
}

- (void)addCardPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NPKPaymentPreflighter_addCardPreflightWithCompletion___block_invoke;
  v6[3] = &unk_279945530;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __56__NPKPaymentPreflighter_addCardPreflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreflighting:1];
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPreflightCompletionHandler:v2];

  [*(a1 + 32) _checkSpaceAvailableOnSecureElement];
  [*(a1 + 32) _checkWatchConnected];
  [*(a1 + 32) _checkCompanioniCloudAccount];
  [*(a1 + 32) _checkWatchiCloudAccount];
  [*(a1 + 32) _checkPasscodeEnabledAndUnlockedState];
  [*(a1 + 32) _checkWristDetectEnabledState];
  v3 = *(a1 + 32);

  return [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
}

- (void)transferToCompanionPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  watchConnected = [objc_opt_class() watchConnected];
  v6 = watchConnected;
  v7 = pk_Payment_log(watchConnected);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Transfer to companion preflight: watch is connected", buf, 2u);
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__NPKPaymentPreflighter_transferToCompanionPreflightWithCompletion___block_invoke;
    v19[3] = &unk_279945198;
    v11 = &v20;
    v20 = completionCopy;
    v12 = completionCopy;
    v13 = MEMORY[0x277D85CD0];
    v14 = v19;
  }

  else
  {
    if (v8)
    {
      v15 = pk_Payment_log(v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Transfer to companion preflight: watch is not connected", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NPKPaymentPreflighter_transferToCompanionPreflightWithCompletion___block_invoke_63;
    block[3] = &unk_279946670;
    v11 = &v18;
    block[4] = self;
    v18 = completionCopy;
    v16 = completionCopy;
    v13 = MEMORY[0x277D85CD0];
    v14 = block;
  }

  dispatch_async(v13, v14);
}

void __68__NPKPaymentPreflighter_transferToCompanionPreflightWithCompletion___block_invoke_63(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _errorForConnectionIssue];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)addSecureElementPassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__NPKPaymentPreflighter_addSecureElementPassPreflightWithCompletion___block_invoke;
  v6[3] = &unk_279945530;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __69__NPKPaymentPreflighter_addSecureElementPassPreflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreflighting:1];
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPreflightCompletionHandler:v2];

  [*(a1 + 32) _checkSpaceAvailableOnSecureElement];
  [*(a1 + 32) _checkWatchConnected];
  [*(a1 + 32) _checkCompanioniCloudAccount];
  [*(a1 + 32) _checkWatchiCloudAccount];
  [*(a1 + 32) _checkPasscodeEnabledState];
  [*(a1 + 32) _checkWristDetectEnabledState];
  v3 = *(a1 + 32);

  return [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
}

- (void)addBiometricPassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__NPKPaymentPreflighter_addBiometricPassPreflightWithCompletion___block_invoke;
  v6[3] = &unk_279945530;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __65__NPKPaymentPreflighter_addBiometricPassPreflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreflighting:1];
  [*(a1 + 32) setNeedsSetAuthRandom:0];
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setPreflightCompletionHandler:v2];

  [*(a1 + 32) _checkSpaceAvailableOnSecureElement];
  [*(a1 + 32) _checkWatchConnected];
  [*(a1 + 32) _checkCompanioniCloudAccount];
  [*(a1 + 32) _checkWatchiCloudAccount];
  [*(a1 + 32) _checkPasscodeEnabledAndUnlockedState];
  [*(a1 + 32) _checkWristDetectEnabledState];
  v3 = *(a1 + 32);

  return [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
}

- (void)_checkSpaceAvailableOnSecureElement
{
  if (PKEnableDynamicSEAllocation())
  {
    [(NPKPaymentPreflighter *)self setSpaceAvailableOnSecureElement:1];

    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    companionAgentConnection = [(NPKPaymentPreflighter *)self companionAgentConnection];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke;
    v4[3] = &unk_279946B08;
    v4[4] = self;
    [companionAgentConnection paymentPassUniqueIDsSynchronous:0 excludingDeactivated:1 reply:v4];
  }
}

void __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke_2;
  v6[3] = &unk_2799454E0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __60__NPKPaymentPreflighter__checkSpaceAvailableOnSecureElement__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v4 = NPKMaxPaymentCards(v2, v3);
  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || v2 < v4;
  v8 = [*(a1 + 40) setSpaceAvailableOnSecureElement:v7];
  if (v7 == 1)
  {
    v10 = *(a1 + 40);

    [v10 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    v11 = MEMORY[0x277CCABB8];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{NPKMaxPaymentCards(v8, v9)}];
    v16 = [v11 localizedStringFromNumber:v12 numberStyle:0];

    v13 = PKLocalizedPaymentString(&cfstr_DeviceProvisio.isa);
    v14 = PKLocalizedPaymentString(&cfstr_DeviceProvisio_0.isa, &stru_286C96FD8.isa, v16);
    v15 = PKDisplayableErrorCustom();
    [*(a1 + 40) _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v15];
  }
}

- (void)_checkWatchConnected
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Checking watch connected state…", buf, 2u);
    }
  }

  watchConnected = [objc_opt_class() watchConnected];
  v8 = pk_Payment_log([(NPKPaymentPreflighter *)self setWatchConnected:watchConnected]);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (watchConnected)
  {
    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: gizmo connected", v15, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: gizmo not connected", v14, 2u);
      }
    }

    _errorForConnectionIssue = [(NPKPaymentPreflighter *)self _errorForConnectionIssue];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:0 error:_errorForConnectionIssue];
  }
}

- (void)_checkCompanioniCloudAccount
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Checking companion iCloud account state…", buf, 2u);
    }
  }

  v7 = PKHasVerifiedPrimaryAppleAccount();
  [(NPKPaymentPreflighter *)self setNeedsCompanioniCloudAccount:v7 == 0];
  v8 = pk_Payment_log([(NPKPaymentPreflighter *)self setCheckedCompanioniCloudStatus:1]);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: has companion account", v15, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    if (v9)
    {
      v12 = pk_Payment_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: does not have companion account", v14, 2u);
      }
    }

    _errorForCompanionAccountNeeded = [(NPKPaymentPreflighter *)self _errorForCompanionAccountNeeded];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:0 error:_errorForCompanionAccountNeeded];
  }
}

- (void)_checkWatchiCloudAccount
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Checking watch iCloud account state…", buf, 2u);
    }
  }

  v7 = NPKIsCurrentlyPairing();
  if (v7)
  {
    v8 = pk_Payment_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Device is pairing", buf, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self setCheckedWatchiCloudStatus:1];
    [(NPKPaymentPreflighter *)self setNeedsWatchiCloudAccount:0];
LABEL_17:
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
    return;
  }

  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  if (IsTinker)
  {
    v13 = pk_Payment_log(IsTinker);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = pk_Payment_log(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Tinker devices are always signed in to iCloud.", buf, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self setNeedsWatchiCloudAccount:0];
    [(NPKPaymentPreflighter *)self setCheckedWatchiCloudStatus:1];
    goto LABEL_17;
  }

  objc_initWeak(buf, self);
  systemSettingsManager = [(NPKPaymentPreflighter *)self systemSettingsManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__NPKPaymentPreflighter__checkWatchiCloudAccount__block_invoke;
  v18[3] = &unk_279946B30;
  objc_copyWeak(&v19, buf);
  v18[4] = self;
  [systemSettingsManager getiCloudInfo:v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __49__NPKPaymentPreflighter__checkWatchiCloudAccount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v5;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Got iCloud info: %@ %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (!v6)
  {
    v13 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v30 = [v13 aa_primaryAppleAccount];
    v14 = [v30 aa_personID];
    [v5 objectForKeyedSubscript:*MEMORY[0x277D2BDA0]];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v34 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v28 = v13;
      v29 = v5;
      v18 = *v32;
      v19 = *MEMORY[0x277D2BD98];
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v31 + 1) + 8 * i) objectForKeyedSubscript:v19];
          v22 = pk_Payment_log(v21);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

          if (v23)
          {
            v25 = pk_Payment_log(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v37 = v21;
              v38 = 2112;
              v39 = v30;
              _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Person ID: %@ Local account: %@", buf, 0x16u);
            }
          }

          v26 = [v21 isEqualToString:v14];

          if (v26)
          {
            v27 = 0;
            goto LABEL_22;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v27 = 1;
LABEL_22:
      v6 = 0;
      v5 = v29;
      v13 = v28;
    }

    else
    {
      v27 = 1;
    }

    [v12 setNeedsWatchiCloudAccount:v27];
    [v12 setCheckedWatchiCloudStatus:1];
    [v12 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];

    goto LABEL_25;
  }

  if (([WeakRetained checkedWatchiCloudStatus] & 1) == 0)
  {
    v13 = [*(a1 + 32) _errorForConnectionIssue];
    [v12 _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v13];
LABEL_25:
  }
}

- (void)_checkPasscodeEnabledAndUnlockedStateRequiringPasscode:(BOOL)passcode requiringUnlock:(BOOL)unlock
{
  v43 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = NPKIsCurrentlyPairing();
  v9 = v8;
  v10 = pk_Payment_log(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Device is pairing", buf, 2u);
      }
    }

    [(NPKPaymentPreflighter *)self setCheckedWatchPasscodeAndUnlockedStatus:1];
    [(NPKPaymentPreflighter *)self setNeedsPasscode:0];
    [(NPKPaymentPreflighter *)self setNeedsUnlock:0];
    [(NPKPaymentPreflighter *)self setAuthRandomSetIfNecessary:1];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    if (v11)
    {
      v14 = pk_Payment_log(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = date;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Checking passcode enabled and unlocked state with query date: %@", buf, 0xCu);
      }
    }

    [(NPKPaymentPreflighter *)self setWatchPasscodeAndUnlockedQueryDate:date];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke;
    aBlock[3] = &unk_279946B80;
    aBlock[4] = self;
    passcodeCopy = passcode;
    unlockCopy = unlock;
    v15 = _Block_copy(aBlock);
    IsTinker = NPKPairedOrPairingDeviceIsTinker();
    v17 = IsTinker;
    v18 = pk_Payment_log(IsTinker);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      if (v19)
      {
        v21 = pk_Payment_log(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Fetching passcode state for tinker device", buf, 2u);
        }
      }

      webService = [(NPKPaymentPreflighter *)self webService];
      targetDevice = [webService targetDevice];
      v24 = targetDevice;
      if (targetDevice)
      {
        targetDevice2 = targetDevice;
      }

      else
      {
        targetDevice2 = [(NPKPaymentPreflighter *)self targetDevice];
      }

      v28 = targetDevice2;

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_80;
      v36[3] = &unk_279946BA8;
      v37 = v15;
      [v28 fetchRemoteDevicePasscodeStateWithCompletion:v36];
    }

    else
    {
      if (v19)
      {
        v26 = pk_Payment_log(v20);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Fetching passcode state for classic device", buf, 2u);
        }
      }

      passcodeConnection = [(NPKPaymentPreflighter *)self passcodeConnection];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_81;
      v34[3] = &unk_279946BD0;
      v35 = v15;
      [passcodeConnection getRemoteDeviceState:v34];

      v28 = v35;
    }

    objc_initWeak(buf, self);
    v29 = dispatch_time(0, 45000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2_83;
    block[3] = &unk_279945290;
    objc_copyWeak(&v33, buf);
    v31 = date;
    selfCopy = self;
    dispatch_after(v29, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }
}

void __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2;
  block[3] = &unk_279946B58;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v15 = *(a1 + 40);
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 49);
      v8 = *(a1 + 32);
      v18[0] = 67109634;
      v18[1] = v6;
      v19 = 1024;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: passcode enabled %d device passcode locked %d error %@", v18, 0x18u);
    }
  }

  if (*(a1 + 32))
  {
    if (([*(a1 + 40) checkedWatchPasscodeAndUnlockedStatus] & 1) == 0)
    {
      v9 = *(a1 + 40);
      v10 = [v9 _errorForConnectionIssue];
      [v9 _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v10];
    }
  }

  else
  {
    v11 = *(a1 + 50) == 1 && *(a1 + 48) == 0;
    [*(a1 + 40) setNeedsPasscode:v11];
    if (*(a1 + 51) == 1)
    {
      v12 = *(a1 + 49);
    }

    else
    {
      v12 = 0;
    }

    [*(a1 + 40) setNeedsUnlock:v12];
    [*(a1 + 40) setCheckedWatchPasscodeAndUnlockedStatus:1];
    [*(a1 + 40) _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
    if (([*(a1 + 40) needsPasscode] & 1) == 0)
    {
      v13 = [*(a1 + 40) needsUnlock];
      if ((v13 & 1) == 0)
      {
        v14 = pk_Payment_log(v13);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

        if (v15)
        {
          v17 = pk_Payment_log(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18[0]) = 0;
            _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Setting auth random if necessary…", v18, 2u);
          }
        }

        [*(a1 + 40) _setAuthRandomIfNecessary];
      }
    }
  }
}

void __96__NPKPaymentPreflighter__checkPasscodeEnabledAndUnlockedStateRequiringPasscode_requiringUnlock___block_invoke_2_83(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_Payment_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [WeakRetained watchPasscodeAndUnlockedQueryDate];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: query date %@ now %@", &v11, 0x16u);
    }
  }

  v9 = [*(a1 + 40) watchPasscodeAndUnlockedQueryDate];
  if (![v9 isEqual:*(a1 + 32)])
  {
    goto LABEL_8;
  }

  v10 = [WeakRetained checkedWatchPasscodeAndUnlockedStatus];

  if ((v10 & 1) == 0)
  {
    v9 = [*(a1 + 40) _errorForConnectionIssue];
    [WeakRetained _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v9];
LABEL_8:
  }
}

- (void)_checkWristDetectEnabledState
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = NPKPairedOrPairingDevice();
  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB10]];
  bOOLValue = [v4 BOOLValue];

  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = bOOLValue;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Watch has SEP: %d", buf, 8u);
    }
  }

  if (bOOLValue)
  {
    [(NPKPaymentPreflighter *)self setNeedsWristDetection:0];
  }

  else
  {
    v11 = NPKDomainAccessorForDomain(@"com.apple.Carousel");
    -[NPKPaymentPreflighter setNeedsWristDetection:](self, "setNeedsWristDetection:", [v11 BOOLForKey:@"DisableWristDetection"]);
  }

  [(NPKPaymentPreflighter *)self setCheckedWristDetectionStatus:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKPaymentPreflighter__checkWristDetectEnabledState__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_setAuthRandomIfNecessary
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Setting auth random if necessary at the beginning of the provisioning flow", buf, 2u);
    }
  }

  if ([(NPKPaymentPreflighter *)self needsSetAuthRandom])
  {
    webService = [(NPKPaymentPreflighter *)self webService];
    targetDevice = [webService targetDevice];
    v9 = targetDevice;
    if (targetDevice)
    {
      targetDevice2 = targetDevice;
    }

    else
    {
      targetDevice2 = [(NPKPaymentPreflighter *)self targetDevice];
    }

    v11 = targetDevice2;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke;
    v12[3] = &unk_279946BF8;
    v12[4] = self;
    [v11 setNewAuthRandomIfNecessaryAtBeginningOfProvisioningFlow:v12];
  }

  else
  {
    [(NPKPaymentPreflighter *)self setAuthRandomSetIfNecessary:1];
    [(NPKPaymentPreflighter *)self _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }
}

void __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Auth random set if necessary (success %d)", buf, 8u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke_90;
  v8[3] = &unk_279944FC0;
  v9 = a2;
  v8[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __50__NPKPaymentPreflighter__setAuthRandomIfNecessary__block_invoke_90(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setAuthRandomSetIfNecessary:1];
    v3 = *(a1 + 32);

    [v3 _finishPresentingSetupControllerIfReadyWithSuccess:1 error:0];
  }

  else
  {
    v4 = [*(a1 + 32) _errorForGenericIssue];
    [v1 _finishPresentingSetupControllerIfReadyWithSuccess:0 error:v4];
  }
}

- (void)_finishPresentingSetupControllerIfReadyWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  isPreflighting = [(NPKPaymentPreflighter *)self isPreflighting];
  if (!isPreflighting || !successCopy)
  {
    if ((isPreflighting & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if ([(NPKPaymentPreflighter *)self checkedWristDetectionStatus]&& [(NPKPaymentPreflighter *)self needsWristDetection])
  {
    _errorForWristDetectNeeded = [(NPKPaymentPreflighter *)self _errorForWristDetectNeeded];
LABEL_29:
    v9 = _errorForWristDetectNeeded;

    successCopy = 0;
    errorCopy = v9;
    goto LABEL_30;
  }

  if ([(NPKPaymentPreflighter *)self checkedCompanioniCloudStatus]&& [(NPKPaymentPreflighter *)self needsCompanioniCloudAccount])
  {
    _errorForWristDetectNeeded = [(NPKPaymentPreflighter *)self _errorForCompanionAccountNeeded];
    goto LABEL_29;
  }

  if ([(NPKPaymentPreflighter *)self checkedWatchiCloudStatus]&& [(NPKPaymentPreflighter *)self needsWatchiCloudAccount])
  {
    _errorForWristDetectNeeded = [(NPKPaymentPreflighter *)self _errorForGizmoAccountNeeded];
    goto LABEL_29;
  }

  if ([(NPKPaymentPreflighter *)self checkedWatchPasscodeAndUnlockedStatus]&& ([(NPKPaymentPreflighter *)self needsPasscode]|| [(NPKPaymentPreflighter *)self needsUnlock]))
  {
    if ([(NPKPaymentPreflighter *)self needsPasscode])
    {
      [(NPKPaymentPreflighter *)self _errorForPasscodeNeeded];
    }

    else
    {
      [(NPKPaymentPreflighter *)self _errorForUnlockNeeded];
    }
    _errorForWristDetectNeeded = ;
    goto LABEL_29;
  }

  if (![(NPKPaymentPreflighter *)self checkedWatchPasscodeAndUnlockedStatus])
  {
    goto LABEL_41;
  }

  if (![(NPKPaymentPreflighter *)self checkedCompanioniCloudStatus])
  {
    goto LABEL_41;
  }

  if (![(NPKPaymentPreflighter *)self checkedWatchiCloudStatus])
  {
    goto LABEL_41;
  }

  if (![(NPKPaymentPreflighter *)self checkedWristDetectionStatus])
  {
    goto LABEL_41;
  }

  if (![(NPKPaymentPreflighter *)self watchConnected])
  {
    goto LABEL_41;
  }

  if (![(NPKPaymentPreflighter *)self spaceAvailableOnSecureElement])
  {
    goto LABEL_41;
  }

  isPreflighting = [(NPKPaymentPreflighter *)self authRandomSetIfNecessary];
  if ((isPreflighting & 1) == 0)
  {
    goto LABEL_41;
  }

  successCopy = 1;
LABEL_30:
  v10 = pk_Payment_log(isPreflighting);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67112450;
      *v21 = successCopy;
      *&v21[4] = 2112;
      *&v21[6] = errorCopy;
      v22 = 1024;
      isPreflighting2 = [(NPKPaymentPreflighter *)self isPreflighting];
      v24 = 1024;
      checkedWatchPasscodeAndUnlockedStatus = [(NPKPaymentPreflighter *)self checkedWatchPasscodeAndUnlockedStatus];
      v26 = 1024;
      checkedCompanioniCloudStatus = [(NPKPaymentPreflighter *)self checkedCompanioniCloudStatus];
      v28 = 1024;
      checkedWatchiCloudStatus = [(NPKPaymentPreflighter *)self checkedWatchiCloudStatus];
      v30 = 1024;
      checkedWristDetectionStatus = [(NPKPaymentPreflighter *)self checkedWristDetectionStatus];
      v32 = 1024;
      needsPasscode = [(NPKPaymentPreflighter *)self needsPasscode];
      v34 = 1024;
      needsUnlock = [(NPKPaymentPreflighter *)self needsUnlock];
      v36 = 1024;
      needsWatchiCloudAccount = [(NPKPaymentPreflighter *)self needsWatchiCloudAccount];
      v38 = 1024;
      needsWristDetection = [(NPKPaymentPreflighter *)self needsWristDetection];
      v40 = 1024;
      watchConnected = [(NPKPaymentPreflighter *)self watchConnected];
      v42 = 1024;
      spaceAvailableOnSecureElement = [(NPKPaymentPreflighter *)self spaceAvailableOnSecureElement];
      v44 = 1024;
      authRandomSetIfNecessary = [(NPKPaymentPreflighter *)self authRandomSetIfNecessary];
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Preflight complete!\n\tsuccess: %d\n\terror: %@\n\tpreflighting: %d\n\tchecked passcode/unlocked: %d\n\tchecked companion iCloud account: %d\n\tchecked watch iCloud account: %d\n\tchecked wrist detect: %d\n\tneedsPasscode: %d\n\tneedsUnlock: %d\n\tneedsGizmoiCloudAccount: %d\n\tneedsWristDetection: %d\n\tgizmo connected: %d\n\tspace available on SE: %d\n\tauth random set if necessary: %d", buf, 0x5Au);
    }
  }

  preflightCompletionHandler = [(NPKPaymentPreflighter *)self preflightCompletionHandler];
  v15 = preflightCompletionHandler;
  if (preflightCompletionHandler)
  {
    (*(preflightCompletionHandler + 16))(preflightCompletionHandler, successCopy, errorCopy);
    [(NPKPaymentPreflighter *)self setPreflightCompletionHandler:0];
    [(NPKPaymentPreflighter *)self setPreflighting:0];
  }

  else
  {
    v16 = pk_Payment_log(0);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_Payment_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v21 = "[NPKPaymentPreflighter _finishPresentingSetupControllerIfReadyWithSuccess:error:]";
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: %s Unexpected. No completion handler available", buf, 0xCu);
      }
    }
  }

LABEL_41:
}

- (id)_errorForWristDetectNeeded
{
  v21[2] = *MEMORY[0x277D85DE8];
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D385D8];
  if (IsTinker)
  {
    v20[0] = *MEMORY[0x277CCA470];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[0] = v6;
    v20[1] = *MEMORY[0x277CCA498];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v10 = [v3 errorWithDomain:v4 code:0 userInfo:v9];
  }

  else
  {
    v18[0] = *MEMORY[0x277CCA470];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v3;
    v6 = [v5 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19[0] = v6;
    v18[1] = *MEMORY[0x277CCA498];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19[1] = v8;
    v18[2] = *MEMORY[0x277CCA480];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v9 localizedStringForKey:@"WRIST_DETECT_REQUIRED_ALERT_BUTTON" value:&stru_286C934F8 table:@"NanoPassKit"];
    v17 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v19[2] = v12;
    v18[3] = *MEMORY[0x277D38628];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PASSCODE_ID"];
    v19[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v10 = [v16 errorWithDomain:v4 code:0 userInfo:v14];
  }

  return v10;
}

- (id)_errorForGizmoAccountNeeded
{
  v21[2] = *MEMORY[0x277D85DE8];
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D385D8];
  if (IsTinker)
  {
    v20[0] = *MEMORY[0x277CCA470];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[0] = v6;
    v20[1] = *MEMORY[0x277CCA498];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v10 = [v3 errorWithDomain:v4 code:0 userInfo:v9];
  }

  else
  {
    v18[0] = *MEMORY[0x277CCA470];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v3;
    v6 = [v5 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19[0] = v6;
    v18[1] = *MEMORY[0x277CCA498];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19[1] = v8;
    v18[2] = *MEMORY[0x277CCA480];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v9 localizedStringForKey:@"GIZMO_ACCOUNT_REQUIRED_ALERT_BUTTON" value:&stru_286C934F8 table:@"NanoPassKit"];
    v17 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v19[2] = v12;
    v18[3] = *MEMORY[0x277D38628];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=GENERAL_LINK&path=LINK_WITH_ICLOUD_LINK"];
    v19[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v10 = [v16 errorWithDomain:v4 code:0 userInfo:v14];
  }

  return v10;
}

- (id)_errorForPasscodeNeeded
{
  v21[2] = *MEMORY[0x277D85DE8];
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D385D8];
  if (IsTinker)
  {
    v20[0] = *MEMORY[0x277CCA470];
    v5 = PKLocalizedPaymentString(&cfstr_PasscodeRequir.isa);
    v21[0] = v5;
    v20[1] = *MEMORY[0x277CCA498];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PASSCODE_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v21[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v9 = [v3 errorWithDomain:v4 code:0 userInfo:v8];
  }

  else
  {
    v18[0] = *MEMORY[0x277CCA470];
    v5 = PKLocalizedPaymentString(&cfstr_PasscodeRequir.isa);
    v19[0] = v5;
    v18[1] = *MEMORY[0x277CCA498];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PASSCODE_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
    v19[1] = v7;
    v18[2] = *MEMORY[0x277CCA480];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v8 localizedStringForKey:@"PASSCODE_REQUIRED_ALERT_BUTTON" value:&stru_286C934F8 table:@"NanoPassKit"];
    v17 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v12 = *MEMORY[0x277D385E0];
    v19[2] = v11;
    v19[3] = MEMORY[0x277CBEC38];
    v13 = *MEMORY[0x277D38628];
    v18[3] = v12;
    v18[4] = v13;
    v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=PASSCODE_ID"];
    v19[4] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v9 = [v3 errorWithDomain:v4 code:0 userInfo:v15];
  }

  return v9;
}

- (id)_errorForUnlockNeeded
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D385D8];
  v11[0] = *MEMORY[0x277CCA470];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"UNLOCK_REQUIRED_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v12[0] = v5;
  v11[1] = *MEMORY[0x277CCA498];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"UNLOCK_REQUIRED_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v2 errorWithDomain:v3 code:0 userInfo:v8];

  return v9;
}

- (id)_errorForConnectionIssue
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D385D8];
  v11[0] = *MEMORY[0x277CCA470];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v12[0] = v5;
  v11[1] = *MEMORY[0x277CCA498];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [v2 errorWithDomain:v3 code:0 userInfo:v8];

  return v9;
}

- (PKPaymentWebServiceTargetDeviceProtocol)targetDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_targetDevice);

  return WeakRetained;
}

@end