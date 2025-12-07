@interface TSProximitySourceTransferFlow
- (TSProximitySourceTransferFlow)initWithPeerDevice:(id)device;
- (id)firstViewController;
- (id)initForResumptionWithSelectedTransferPlans:(int)plans targetUICapability:(BOOL)capability isPreSharedKeyPresent:(BOOL)present;
- (id)nextViewControllerFrom:(id)from;
- (unint64_t)_decodeTransferStatus:(id)status;
- (void)_assertNFC;
- (void)_bootstrapTransfer;
- (void)_handleSKEvent:(id)event;
- (void)_handleTransferResults:(id)results;
- (void)_handleTransferUICapability:(id)capability;
- (void)_proxCardFlowDidDismiss;
- (void)_resetExtension:(id)extension;
- (void)_setupClient:(id)client;
- (void)_timerFired;
- (void)_updateTransferStatus:(id)status;
- (void)dealloc;
- (void)didComplete;
- (void)didRequestPresentationForProxCard:(id)card;
- (void)firstViewController:(id)controller;
- (void)transferEventUpdate:(id)update;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSProximitySourceTransferFlow

- (TSProximitySourceTransferFlow)initWithPeerDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = TSProximitySourceTransferFlow;
  v6 = [(TSSIMSetupFlow *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_isAuthenticationCompleted = 0;
    v6->_isFlowCompleted = 0;
    v6->_isRemotePeerClosed = 0;
    v6->_passcodeType = 0;
    v8 = objc_alloc(MEMORY[0x277CC37B0]);
    v9 = [v8 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v7->_ctClient;
    v7->_ctClient = v9;

    [(CoreTelephonyClient *)v7->_ctClient setDelegate:v7];
    objc_storeStrong(&v7->_peerDeviceInfo, device);
    v22 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBE020]) initWithDictionary:deviceCopy error:&v22];
    v12 = v22;
    v13 = v12;
    if (v12)
    {
      v14 = _TSLogDomain(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [TSProximitySourceTransferFlow initWithPeerDevice:];
      }

      v7->_remoteDeviceClass = 0;
    }

    else
    {
      nearbyActionDeviceClass = [v11 nearbyActionDeviceClass];
      if (nearbyActionDeviceClass)
      {
        nearbyActionDeviceClass2 = [v11 nearbyActionDeviceClass];
      }

      else
      {
        v17 = _TSLogDomain(nearbyActionDeviceClass);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "[TSProximitySourceTransferFlow initWithPeerDevice:]";
          _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "no device class from bluetooth, set as iPhone @%s", buf, 0xCu);
        }

        nearbyActionDeviceClass2 = 1;
      }

      v7->_remoteDeviceClass = nearbyActionDeviceClass2;
      nearbyActionExtraData = [v11 nearbyActionExtraData];
      v7->_isDeviceIdentifierPresent = nearbyActionExtraData != 0;
    }

    if (!v7->_proxTransferController)
    {
      v19 = [[TSCellularPlanProximityTransferController alloc] initWithESIMDelegate:v7];
      proxTransferController = v7->_proxTransferController;
      v7->_proxTransferController = v19;
    }

    [(TSProximitySourceTransferFlow *)v7 _setupClient:deviceCopy];
    [(TSProximitySourceTransferFlow *)v7 _assertNFC];
  }

  return v7;
}

- (id)initForResumptionWithSelectedTransferPlans:(int)plans targetUICapability:(BOOL)capability isPreSharedKeyPresent:(BOOL)present
{
  v16.receiver = self;
  v16.super_class = TSProximitySourceTransferFlow;
  v8 = [(TSSIMSetupFlow *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_isAuthenticationCompleted = 1;
    v8->_isFlowCompleted = 0;
    v8->_isRemotePeerClosed = 0;
    v10 = objc_alloc(MEMORY[0x277CC37B0]);
    v11 = [v10 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v9->_ctClient;
    v9->_ctClient = v11;

    [(CoreTelephonyClient *)v9->_ctClient setDelegate:v9];
    v9->_isResumingAfterPause = 1;
    v9->_selectedTransferPlansCount = plans;
    v9->_supportsSyncTransferResults = capability;
    v9->_isPreSharedKeyPresent = present;
    if (!v9->_proxTransferController)
    {
      v13 = [[TSCellularPlanProximityTransferController alloc] initWithESIMDelegate:v9];
      proxTransferController = v9->_proxTransferController;
      v9->_proxTransferController = v13;
    }
  }

  return v9;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TSProximitySourceTransferFlow dealloc]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "invalidate SKSetupSIMTransferClient @%s", buf, 0xCu);
  }

  if (self->_isHiding)
  {
    v5 = _TSLogDomain(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[TSProximitySourceTransferFlow dealloc]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "TSProximitySourceTransferFlow hidden @%s", buf, 0xCu);
    }
  }

  else
  {
    btClient = self->_btClient;
    if (btClient)
    {
      [(SSProximityDevice *)btClient invalidate:0];
      v7 = self->_btClient;
      self->_btClient = 0;

      [(TSProximitySourceTransferFlow *)self _deassertNFC];
    }

    else
    {
      [(CoreTelephonyClient *)self->_ctClient invalidateProximityTransfer:1 force:1 completion:0];
    }
  }

  v8.receiver = self;
  v8.super_class = TSProximitySourceTransferFlow;
  [(TSProximitySourceTransferFlow *)&v8 dealloc];
}

- (id)firstViewController
{
  *&v36[5] = *MEMORY[0x277D85DE8];
  v3 = +[TSUtilities inBuddy];
  if (v3)
  {
    v4 = _TSLogDomain(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow firstViewController];
    }

LABEL_4:

LABEL_5:
    v5 = 0;
    goto LABEL_42;
  }

  if (self->_isResumingAfterPause)
  {
    v6 = [TSPRXSIMTransferringViewController alloc];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PRXCARD_TRANSFERRING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PRXCARD_TRANSFERRING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
    v5 = [(TSPRXSIMTransferringViewController *)v6 initWithTitle:v8 subtitle:v10 otpDetectorNeeded:0];

    [(TSSIMSetupFlow *)self setTopViewController:v5];
    goto LABEL_42;
  }

  if (!self->_btClient)
  {
    v4 = _TSLogDomain(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow firstViewController];
    }

    goto LABEL_4;
  }

  v11 = MGGetSInt32Answer();
  v12 = v11;
  if (v11 >= 0x10)
  {
    v13 = _TSLogDomain(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow firstViewController];
    }

    v12 = 0;
  }

  if (self->_remoteDeviceClass)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14 && v12 != self->_remoteDeviceClass)
  {
    v23 = _TSLogDomain(v11);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      remoteDeviceClass = self->_remoteDeviceClass;
      *buf = 67109634;
      *v35 = remoteDeviceClass;
      *&v35[4] = 1024;
      *&v35[6] = v12;
      v36[0] = 2080;
      *&v36[1] = "[TSProximitySourceTransferFlow firstViewController]";
      _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "device class mismatch. remote(%d), local(%d) @%s", buf, 0x18u);
    }

    goto LABEL_5;
  }

  ctClient = self->_ctClient;
  if (self->_isPreSharedKeyPresent)
  {
    v17 = 6;
  }

  else
  {
    v17 = 1;
  }

  v33 = 0;
  v18 = [(CoreTelephonyClient *)ctClient isAnyPlanTransferableFromThisDeviceForFlow:v17 OrError:&v33];
  v19 = v33;
  v5 = 0;
  if (v18)
  {
    v20 = +[TSUtilities isDeviceLocked];
    if (v20)
    {
      v21 = _TSLogDomain(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v35 = "[TSProximitySourceTransferFlow firstViewController]";
        _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "device locked. unlock first. @%s", buf, 0xCu);
      }

      v22 = objc_alloc_init(TSPRXDeviceUnlockViewController);
    }

    else
    {
      if (self->_isPreSharedKeyPresent)
      {
        v26 = [TSPRXReconnectWaitingViewController alloc];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"PRXCARD_RECONNECTING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"PRXCARD_RECONNECTING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
        v5 = [(TSPRXReconnectWaitingViewController *)v26 initWithTitle:v28 subtitle:v30];

LABEL_38:
        [(TSIDSSimTransferringViewController *)v5 setDelegate:self];
        v31 = _TSLogDomain([(TSSIMSetupFlow *)self setTopViewController:v5]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v35 = v5;
          *&v35[8] = 2080;
          *v36 = "[TSProximitySourceTransferFlow firstViewController]";
          _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "first view controller: %@ @%s", buf, 0x16u);
        }

        goto LABEL_41;
      }

      v22 = [[TSPRXStartViewController alloc] initWithBtDevice:self->_btClient];
    }

    v5 = v22;
    goto LABEL_38;
  }

LABEL_41:

LABEL_42:

  return v5;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(TSSIMSetupFlow *)self delegate];
  v6 = [delegate conformsToProtocol:&unk_2875CC048];

  if (v6)
  {
    delegate2 = [(TSSIMSetupFlow *)self delegate];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__TSProximitySourceTransferFlow_firstViewController___block_invoke;
    v16[3] = &unk_279B44578;
    v16[4] = self;
    [delegate2 setViewDisappearHandler:v16];
  }

  else
  {
    delegate2 = _TSLogDomain(v7);
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_FAULT))
    {
      [TSProximitySourceTransferFlow firstViewController:delegate2];
    }
  }

  if (self->_isDeviceIdentifierPresent)
  {
    objc_initWeak(&location, self);
    ctClient = self->_ctClient;
    peerDeviceInfo = self->_peerDeviceInfo;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112;
    v12[3] = &unk_279B442E8;
    objc_copyWeak(&v14, &location);
    v13 = controllerCopy;
    [(CoreTelephonyClient *)ctClient isPreSharedKeyForReconnectionPresent:peerDeviceInfo completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    firstViewController = [(TSProximitySourceTransferFlow *)self firstViewController];
    (*(controllerCopy + 2))(controllerCopy, firstViewController);
  }
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = _TSLogDomain([WeakRetained setIsPreSharedKeyPresent:1]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v20 = 1;
        v21 = 2080;
        v22 = "[TSProximitySourceTransferFlow firstViewController:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "PreSharedKey present: %d @%s", buf, 0x12u);
      }

      v9 = objc_loadWeakRetained((a1 + 40));
      v10 = [v9 firstViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v12 = objc_loadWeakRetained((a1 + 40));
        v13 = [v12 btClient];
        v14 = [v7 isPreSharedKeyPresent];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113;
        v15[3] = &unk_279B45A10;
        objc_copyWeak(&v18, (a1 + 40));
        v17 = *(a1 + 32);
        v16 = v10;
        [v13 activateUsingPreSharedKey:v14 completion:v15];

        objc_destroyWeak(&v18);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v11 = _TSLogDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v7 = *(*(a1 + 40) + 16);
      goto LABEL_9;
    }

    v6 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113_cold_1();
    }
  }

  else
  {
    v6 = _TSLogDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_112_cold_1();
    }
  }

  v7 = *(*(a1 + 40) + 16);
LABEL_9:
  v7();
}

- (id)nextViewControllerFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (self->_isRemotePeerClosed)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[TSPRXPasscodeEntryViewController alloc] initWithBtDevice:self->_btClient passcodeType:self->_passcodeType];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        secureIntentProxCard = self->_secureIntentProxCard;
        if (secureIntentProxCard)
        {
          v6 = secureIntentProxCard;
          goto LABEL_25;
        }

        if (!self->_isTransferCompleted)
        {
          goto LABEL_24;
        }

        [(TSProximitySourceTransferFlow *)self _deassertNFC];
        v13 = _TSLogDomain([(TSSIMSetupFlow *)self setIdleTimerDisabled:0]);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          areAllPlansTransferedOut = self->_areAllPlansTransferedOut;
          numSelectedPlansNotTransferredOut = self->_numSelectedPlansNotTransferredOut;
          v20[0] = 67109634;
          v20[1] = areAllPlansTransferedOut;
          v21 = 1024;
          v22 = numSelectedPlansNotTransferredOut;
          v23 = 2080;
          v24 = "[TSProximitySourceTransferFlow nextViewControllerFrom:]";
          _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "all transfered : %{BOOL}d, has transfer failure : %d @%s", v20, 0x18u);
        }

        supportsSyncTransferResults = self->_supportsSyncTransferResults;
        v17 = [TSPRXSIMTransferCompleteViewController alloc];
        selectedTransferPlansCount = self->_selectedTransferPlansCount;
        if (supportsSyncTransferResults)
        {
          v5 = [(TSPRXSIMTransferCompleteViewController *)v17 initWithSelectedPlansCount:selectedTransferPlansCount selectedPlansFailedTransferCount:self->_numSelectedPlansNotTransferredOut isDisembarkUIRequired:self->_isPreSharedKeyPresent];
        }

        else
        {
          v5 = [(TSPRXSIMTransferCompleteViewController *)v17 initWithoutTargetSyncAndSelectedPlansCount:selectedTransferPlansCount];
        }

        goto LABEL_5;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_isPreSharedKeyPresent && self->_areAllPlansTransferedOut)
      {
        v5 = objc_alloc_init(SSPRXD2DMigrationDoneViewController);
LABEL_5:
        v6 = v5;
        if (v5)
        {
          goto LABEL_25;
        }
      }

LABEL_24:
      self->_isFlowCompleted = 1;
      [(TSProximitySourceTransferFlow *)self _deassertNFC];
      [(TSSIMSetupFlow *)self setIdleTimerDisabled:0];
      v6 = 0;
      goto LABEL_25;
    }
  }

  if (!self->_isAuthenticationCompleted)
  {
    goto LABEL_24;
  }

  v7 = [TSPRXSIMTransferringViewController alloc];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PRXCARD_TRANSFERRING_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PRXCARD_TRANSFERRING_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [(TSPRXSIMTransferringViewController *)v7 initWithTitle:v9 subtitle:v11 otpDetectorNeeded:1];

  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_25:

  return v6;
}

- (void)didRequestPresentationForProxCard:(id)card
{
  cardCopy = card;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke;
  block[3] = &unk_279B443D8;
  objc_copyWeak(&v8, &location);
  v7 = cardCopy;
  v5 = cardCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = (a1 + 32);
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    if (v7)
    {
      v8 = *v6;
      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 setSecureIntentProxCard:v8];

      v13 = objc_loadWeakRetained((a1 + 40));
      v10 = [v13 topViewController];
      [v13 viewControllerDidComplete:v10];
    }

    else
    {
      v12 = _TSLogDomain(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_2(v6, v12);
      }
    }
  }

  else
  {
    v11 = _TSLogDomain(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_1((a1 + 40));
    }
  }
}

- (void)didComplete
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__TSProximitySourceTransferFlow_didComplete__block_invoke;
  v2[3] = &unk_279B44400;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __44__TSProximitySourceTransferFlow_didComplete__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isRemotePeerClosed];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (!v3)
  {
    v6 = [v4 secureIntentProxCard];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = [v8 secureIntentProxCard];

      v10 = [v9 isSecureIntentFailed];
      if (v10)
      {
        v11 = _TSLogDomain(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v33 = "[TSProximitySourceTransferFlow didComplete]_block_invoke";
          _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "secure intent failed, cancel the flow @%s", buf, 0xCu);
        }

        v12 = objc_loadWeakRetained((a1 + 32));
        [v12 _deassertNFC];

        v13 = objc_loadWeakRetained((a1 + 32));
        [v13 userDidTapCancel];

LABEL_23:
        return;
      }
    }

    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 setSecureIntentProxCard:0];

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 topViewController];
    v9 = [v16 navigationController];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v9 viewControllers];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = objc_loadWeakRetained((a1 + 32));
            [v24 setTopViewController:v22];

            v25 = [v9 popToViewController:v22 animated:1];
            goto LABEL_22;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v17 = _TSLogDomain(v23);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __44__TSProximitySourceTransferFlow_didComplete__block_invoke_cold_1();
    }

LABEL_22:

    goto LABEL_23;
  }

  [v4 _deassertNFC];

  v26 = objc_loadWeakRetained((a1 + 32));
  [v26 attemptFailed];
}

- (void)transferEventUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = updateCopy;
    v20 = 2080;
    v21 = "[TSProximitySourceTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", buf, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"kSelectedTransferPlansCount"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_selectedTransferPlansCount = [v6 unsignedIntValue];
    }
  }

  v7 = [updateCopy objectForKey:@"kTransferConfirmation"];

  if (v7)
  {
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      self->_isTransferCompleted = 1;
      if (self->_supportsSyncTransferResults)
      {
        [(NSTimer *)self->_timer invalidate];
        v10 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:120.0];
        timer = self->_timer;
        self->_timer = v10;
      }

      else
      {
        timer = [(TSSIMSetupFlow *)self topViewController];
        [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:timer];
      }
    }
  }

  v12 = [updateCopy objectForKey:@"UpdateProxCardVisibility"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v12 BOOLValue];
      if (bOOLValue)
      {
        v14 = _TSLogDomain(bOOLValue);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [TSProximitySourceTransferFlow transferEventUpdate:];
        }
      }

      else
      {
        self->_isHiding = 1;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __53__TSProximitySourceTransferFlow_transferEventUpdate___block_invoke;
        v17[3] = &unk_279B44578;
        v17[4] = self;
        [(TSProximitySourceTransferFlow *)self _resetExtension:v17];
      }
    }
  }

  v15 = [updateCopy objectForKey:@"TransferUICapability"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TSProximitySourceTransferFlow *)self _handleTransferUICapability:v15];
    }
  }

  v16 = [updateCopy objectForKey:@"TransferResults"];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TSProximitySourceTransferFlow *)self _handleTransferResults:v16];
    }
  }
}

- (void)viewControllerDidComplete:(id)complete
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TSProximitySourceTransferFlow *)self didComplete];
  }

  else
  {
    v5 = [(TSProximitySourceTransferFlow *)self nextViewControllerFrom:completeCopy];

    if (v5)
    {
      v8.receiver = self;
      v8.super_class = TSProximitySourceTransferFlow;
      [(TSSIMSetupFlow *)&v8 viewControllerDidComplete:completeCopy];
    }

    else
    {
      v7 = _TSLogDomain(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[TSProximitySourceTransferFlow viewControllerDidComplete:]";
        _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "flow end, reset extension @%s", buf, 0xCu);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__TSProximitySourceTransferFlow_viewControllerDidComplete___block_invoke;
      v9[3] = &unk_279B44490;
      v10 = completeCopy;
      selfCopy = self;
      [(TSProximitySourceTransferFlow *)self _resetExtension:v9];
    }
  }
}

id __59__TSProximitySourceTransferFlow_viewControllerDidComplete___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSProximitySourceTransferFlow;
  return objc_msgSendSuper2(&v3, sel_viewControllerDidComplete_, v1);
}

- (void)_setupClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  if (self->_btClient)
  {
    v6 = _TSLogDomain(clientCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow _setupClient:];
    }
  }

  else
  {
    v7 = [SSProximityDevice alloc];
    v8 = [(SSProximityDevice *)v7 initWithQueue:MEMORY[0x277D85CD0] endpoint:1 remoteInfo:v5];
    btClient = self->_btClient;
    self->_btClient = v8;

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__TSProximitySourceTransferFlow__setupClient___block_invoke;
    v10[3] = &unk_279B45A38;
    objc_copyWeak(&v11, &location);
    [(SSProximityDevice *)self->_btClient setEventHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __46__TSProximitySourceTransferFlow__setupClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSKEvent:v3];
}

- (void)_handleSKEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = _TSLogDomain(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    *v25 = eventCopy;
    *&v25[8] = 2080;
    v26 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "receive SKEvent: %@ @%s", &v24, 0x16u);
  }

  eventType = [eventCopy eventType];
  if (eventType <= 40)
  {
    if (eventType != 20)
    {
      if (eventType == 40)
      {
        [(TSSIMSetupFlow *)self setIdleTimerDisabled:1];
        [(TSProximitySourceTransferFlow *)self _bootstrapTransfer];
      }

      goto LABEL_30;
    }

    error = [eventCopy error];

    if (error)
    {
      goto LABEL_30;
    }

    self->_isAuthenticationCompleted = 1;
LABEL_20:
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:topViewController];
LABEL_29:

    goto LABEL_30;
  }

  if (eventType == 41)
  {
    [(TSProximitySourceTransferFlow *)self _deassertNFC];
    v17 = _TSLogDomain([(TSSIMSetupFlow *)self setIdleTimerDisabled:0]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      *v25 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
      _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "connection closed from remote peer @%s", &v24, 0xCu);
    }

    self->_isRemotePeerClosed = 1;
    topViewController = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_29;
    }

    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (eventType != 120)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if (v7)
  {
    topViewController = eventCopy;
    v9 = _TSLogDomain(topViewController);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      pairingFlags = [topViewController pairingFlags];
      passwordType = [topViewController passwordType];
      throttleSeconds = [topViewController throttleSeconds];
      v24 = 67109890;
      *v25 = pairingFlags;
      *&v25[4] = 1024;
      *&v25[6] = passwordType;
      LOWORD(v26) = 1024;
      *(&v26 + 2) = throttleSeconds;
      HIWORD(v26) = 2080;
      v27 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "flag:%d, type:%d, throttle:%d @%s", &v24, 0x1Eu);
    }

    self->_passcodeType = [topViewController passwordType];
    topViewController3 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    topViewController4 = [(TSSIMSetupFlow *)self topViewController];
    if (v14)
    {
      [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:topViewController4];
    }

    else
    {
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if ((v21 & 1) == 0)
      {
        goto LABEL_29;
      }

      v23 = _TSLogDomain(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315138;
        *v25 = "[TSProximitySourceTransferFlow _handleSKEvent:]";
        _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "the PIN code is wrong, retry @%s", &v24, 0xCu);
      }

      topViewController4 = [(TSSIMSetupFlow *)self topViewController];
      [topViewController4 retry];
    }

    goto LABEL_29;
  }

  v20 = _TSLogDomain(v7);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [TSProximitySourceTransferFlow _handleSKEvent:eventCopy];
  }

LABEL_30:
}

- (void)_bootstrapTransfer
{
  templateSession = [(SSProximityDevice *)self->_btClient templateSession];
  objc_initWeak(&location, self);
  if ([(TSProximitySourceTransferFlow *)self isPreSharedKeyPresent])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  ctClient = self->_ctClient;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke;
  v6[3] = &unk_279B45A60;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [(CoreTelephonyClient *)ctClient bootstrapPlanTransferForEndpoint:1 flowType:v4 usingMessageSession:templateSession completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TSLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_cold_1();
    }

    v6 = [TSUtilities getErrorTitleDetail:v4 forCarrier:0];
    v7 = MEMORY[0x277D75110];
    v8 = [v6 objectForKeyedSubscript:@"ErrorHeader"];
    v9 = [v6 objectForKeyedSubscript:@"ErrorDetail"];
    v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_151;
    v19[3] = &unk_279B44550;
    objc_copyWeak(&v20, (a1 + 40));
    v14 = [v11 actionWithTitle:v13 style:1 handler:v19];
    [v10 addAction:v14];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_2;
    block[3] = &unk_279B443D8;
    objc_copyWeak(&v18, (a1 + 40));
    v17 = v10;
    v15 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
  }
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_151(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained btClient];
  [v3 invalidate:1];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBtClient:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _deassertNFC];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 userDidTapCancel];
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained topViewController];
  [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
}

- (void)_handleTransferUICapability:(id)capability
{
  v13 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  v5 = _TSLogDomain(capabilityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = capabilityCopy;
    v11 = 2080;
    v12 = "[TSProximitySourceTransferFlow _handleTransferUICapability:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "target supported UI capability:%@ @%s", &v9, 0x16u);
  }

  v6 = [capabilityCopy objectForKeyedSubscript:@"SupportsSyncTransferResults"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [capabilityCopy objectForKeyedSubscript:@"SupportsSyncTransferResults"];
    self->_supportsSyncTransferResults = [v8 BOOLValue];
  }
}

- (void)_handleTransferResults:(id)results
{
  v15 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _TSLogDomain(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = resultsCopy;
    v13 = 2080;
    v14 = "[TSProximitySourceTransferFlow _handleTransferResults:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "results:%@ @%s", &v11, 0x16u);
  }

  v6 = [resultsCopy objectForKeyedSubscript:@"Results"];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    self->_isTransferCompleted = 1;
    [(TSProximitySourceTransferFlow *)self _updateTransferStatus:v6];
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    [(TSProximitySourceTransferFlow *)self viewControllerDidComplete:topViewController2];
  }
}

- (unint64_t)_decodeTransferStatus:(id)status
{
  statusCopy = status;
  v4 = statusCopy;
  if (statusCopy)
  {
    unsignedIntegerValue = [statusCopy unsignedIntegerValue];
    v6 = unsignedIntegerValue;
    if (unsignedIntegerValue >= 0xF && unsignedIntegerValue != 10004 && unsignedIntegerValue != 10003 && unsignedIntegerValue != 10002 && unsignedIntegerValue != 10001)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateTransferStatus:(id)status
{
  v45 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v5 planItems];

  v28 = planItems;
  v27 = 106;
  self->_areAllPlansTransferedOut = [planItems count] == 0;
  self->_numSelectedPlansNotTransferredOut = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = statusCopy;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v27}];
        v14 = [(TSProximitySourceTransferFlow *)self _decodeTransferStatus:v13];

        v16 = _TSLogDomain(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = SSPlanTransferStatusAsString(v14);
          *buf = 138412802;
          v39 = v12;
          v40 = 2080;
          v41 = v17;
          v42 = 2080;
          v43 = "[TSProximitySourceTransferFlow _updateTransferStatus:]";
          _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "%@ transfer status %s @%s", buf, 0x20u);
        }

        if (isFailedState(v14) || v14 == 10001)
        {
          ++self->_numSelectedPlansNotTransferredOut;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v9);
  }

  v18 = v27;
  if ((*(&self->super.super.isa + v27) & 1) == 0 && !self->_numSelectedPlansNotTransferredOut)
  {
    *(&self->super.super.isa + v27) = 1;
    v19 = [planItems count];
    if (v19 <= [v7 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = planItems;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            iccid = [*(*(&v29 + 1) + 8 * j) iccid];
            v26 = [v7 objectForKeyedSubscript:iccid];

            if (!v26)
            {
              *(&self->super.super.isa + v18) = 0;
              goto LABEL_27;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
    }

    else
    {
      *(&self->super.super.isa + v27) = 0;
    }
  }
}

- (void)_resetExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    ctClient = self->_ctClient;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__TSProximitySourceTransferFlow__resetExtension___block_invoke;
    v8[3] = &unk_279B44DB8;
    v9 = extensionCopy;
    [(CoreTelephonyClient *)ctClient resetProximityTransportExtension:v8];
  }

  else
  {
    v7 = _TSLogDomain(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TSProximitySourceTransferFlow _resetExtension:];
    }

    extensionCopy[2](extensionCopy);
  }
}

void __49__TSProximitySourceTransferFlow__resetExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TSLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__TSProximitySourceTransferFlow__resetExtension___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_proxCardFlowDidDismiss
{
  v15 = *MEMORY[0x277D85DE8];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = _TSLogDomain(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      isFlowCompleted = self->_isFlowCompleted;
      isAuthenticationCompleted = self->_isAuthenticationCompleted;
      v11 = 67109634;
      *v12 = isFlowCompleted;
      *&v12[4] = 1024;
      *&v12[6] = isAuthenticationCompleted;
      v13 = 2080;
      v14 = "[TSProximitySourceTransferFlow _proxCardFlowDidDismiss]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "flow dismiss. flow.complete:%d, auth.complete:%d @%s", &v11, 0x18u);
    }

    if (!self->_isFlowCompleted)
    {
      v10 = _TSLogDomain(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        *v12 = "[TSProximitySourceTransferFlow _proxCardFlowDidDismiss]";
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "prox card being dismissed @%s", &v11, 0xCu);
      }

      [(TSSIMSetupFlow *)self attemptFailed];
      [(TSProximitySourceTransferFlow *)self _deassertNFC];
    }
  }
}

- (void)_assertNFC
{
  if (!self->_nfcAssertion)
  {
    self->_nfcAssertion = objc_alloc_init(SSNFCAssertion);

    MEMORY[0x2821F96F8]();
  }
}

- (void)_timerFired
{
  v6 = *MEMORY[0x277D85DE8];
  topViewController = [self topViewController];
  OUTLINED_FUNCTION_0();
  v5 = "[TSProximitySourceTransferFlow _timerFired]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] something weird happend. unexpected top vc:%@ @%s", v4, 0x16u);
}

- (void)initWithPeerDevice:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)firstViewController:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = &unk_2875CC048;
  v3 = 2080;
  v4 = "[TSProximitySourceTransferFlow firstViewController:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]delegate not conforms to protocol : %@ @%s", &v1, 0x16u);
}

void __53__TSProximitySourceTransferFlow_firstViewController___block_invoke_113_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = [WeakRetained topViewController];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __67__TSProximitySourceTransferFlow_didRequestPresentationForProxCard___block_invoke_cold_2(void *a1, uint64_t a2)
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_handleSKEvent:(void *)a1 .cold.1(void *a1)
{
  [a1 eventType];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __51__TSProximitySourceTransferFlow__bootstrapTransfer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __49__TSProximitySourceTransferFlow__resetExtension___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end