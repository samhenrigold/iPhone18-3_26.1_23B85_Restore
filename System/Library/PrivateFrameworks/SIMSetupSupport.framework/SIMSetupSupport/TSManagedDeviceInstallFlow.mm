@interface TSManagedDeviceInstallFlow
- (TSManagedDeviceInstallFlow)initWith:(BOOL)with fallbackToActivationCode:(BOOL)code ignoreTransport:(BOOL)transport;
- (id)firstViewController;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)handleProvisioningWatchdogExpiry;
- (void)hasCellularConnection:(id)connection;
- (void)invokeCompletionWithPlanInstallResult:(unint64_t)result;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)planItemsUpdated:(id)updated planListError:(id)error;
@end

@implementation TSManagedDeviceInstallFlow

- (TSManagedDeviceInstallFlow)initWith:(BOOL)with fallbackToActivationCode:(BOOL)code ignoreTransport:(BOOL)transport
{
  v15.receiver = self;
  v15.super_class = TSManagedDeviceInstallFlow;
  v8 = [(TSSIMSetupFlow *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_waitForService = with;
    v8->_fallbackToActivationCode = code;
    v8->_ignoreTransport = transport;
    firstViewCompletion = v8->_firstViewCompletion;
    v8->_firstViewCompletion = 0;

    v9->_startMonitoringConnection = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v11 = objc_alloc(MEMORY[0x277CC37B0]);
    v12 = [v11 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v9->_ctClient;
    v9->_ctClient = v12;
  }

  return v9;
}

- (id)firstViewController
{
  v2 = _TSLogDomain(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSManagedDeviceInstallFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = _os_feature_enabled_impl();
    if (v5)
    {
      v6 = +[TSCellularPlanManagerCache sharedInstance];
      [v6 setDelegate:self];

      v7 = MEMORY[0x2667315D0](controllerCopy);
      firstViewCompletion = self->_firstViewCompletion;
      self->_firstViewCompletion = v7;

      objc_initWeak(&location, self);
      v9 = +[TSCellularPlanManagerCache sharedInstance];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke;
      v18[3] = &unk_279B45158;
      objc_copyWeak(&v20, &location);
      v18[4] = self;
      v19 = controllerCopy;
      [v9 planItemsWithCompletion:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = _TSLogDomain(v5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(TSManagedDeviceInstallFlow *)v10 firstViewController:v11, v12, v13, v14, v15, v16, v17];
      }

      (*(controllerCopy + 2))(controllerCopy, 0);
    }
  }
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v22 = _TSLogDomain(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_21;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v41 = v3;
    v8 = 0;
    v9 = *v44;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [v11 isInstalling];
        if ((v12 & 1) != 0 || ([v11 plan], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "status"), v13, v14 == 14))
        {
          v18 = _TSLogDomain(v12);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v48 = "[TSManagedDeviceInstallFlow firstViewController:]_block_invoke";
            _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "Skip since one plan is installing... @%s", buf, 0xCu);
          }

          WeakRetained[99] = 1;
          if (!*(*(a1 + 32) + 112))
          {
            v19 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:120.0 target:? selector:? userInfo:? repeats:?];
            v20 = *(a1 + 32);
            v21 = *(v20 + 112);
            *(v20 + 112) = v19;
          }

          v3 = v41;
          goto LABEL_28;
        }

        v15 = [v11 plan];
        v16 = [v15 status] == 0;

        v8 |= v16;
      }

      v7 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v3 = v41;
    if ((WeakRetained[98] & 1) == 0)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_27:
    v33 = +[TSCoreTelephonyClientCache sharedInstance];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_31;
    v42[3] = &unk_279B45130;
    v42[4] = *(a1 + 32);
    [v33 pendingInstallItemsWithCompletion:v42];

    goto LABEL_28;
  }

  if (WeakRetained[98])
  {
    goto LABEL_27;
  }

LABEL_23:
  v17 = +[TSUtilities isWifiAvailable];
  if (!v17)
  {
    v30 = +[TSCoreTelephonyClientCache sharedInstance];
    v31 = [v30 usingBootstrapDataService];

    if ((v31 & 1) == 0)
    {
      v22 = _TSLogDomain(v32);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_cold_1(v22, v34, v35, v36, v37, v38, v39, v40);
      }

      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_24:
  v22 = _TSLogDomain(v17);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v48 = "[TSManagedDeviceInstallFlow firstViewController:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "Skip since having data connection @%s", buf, 0xCu);
  }

LABEL_21:

  (*(*(a1 + 40) + 16))();
LABEL_28:
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_31(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 plans], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    v7 = a1 + 32;
    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_handleProvisioningWatchdogExpiry selector:0 userInfo:0 repeats:120.0];
    v9 = *(*(a1 + 32) + 112);
    *(*v7 + 112) = v8;

    *(*v7 + 99) = 1;
    objc_initWeak(&location, *(a1 + 32));
    if (_os_feature_enabled_impl())
    {
      v10 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [v4 plans];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v12)
      {
        v13 = *v26;
        do
        {
          v14 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [*(*(&v25 + 1) + 8 * v14) plan];
            [v10 addObject:v15];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v12);
      }

      v16 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:v10];
      v17 = objc_loadWeakRetained(&location);
      v18 = [v17 ctClient];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_37;
      v23[3] = &unk_279B44278;
      objc_copyWeak(&v24, &location);
      v23[4] = *(a1 + 32);
      [v18 installMultiplePlans:v16 completionHandler:v23];

      objc_destroyWeak(&v24);
    }

    else
    {
      v19 = +[TSCoreTelephonyClientCache sharedInstance];
      v20 = [v4 plans];
      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v21 plan];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_2;
      v29[3] = &unk_279B44278;
      objc_copyWeak(&v30, &location);
      v29[4] = *(a1 + 32);
      [v19 installPendingPlan:v22 completion:v29];

      objc_destroyWeak(&v30);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) invokeCompletionWithPlanInstallResult:1];
  }
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_3;
  block[3] = &unk_279B446B0;
  objc_copyWeak(&v7, (a1 + 40));
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 96) == 1)
    {
      v4 = *(a1 + 32);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_4;
      v6[3] = &unk_279B44F10;
      v6[4] = v3;
      WeakRetained = [v4 hasCellularConnection:v6];
    }

    if (*(a1 + 40))
    {
      v5 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_3_cold_1();
      }

      [v3 invokeCompletionWithPlanInstallResult:1];
    }
  }
}

uint64_t __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_4(uint64_t a1, int a2)
{
  result = +[TSUtilities isWifiAvailable];
  if ((result & 1) != 0 || a2)
  {
    v5 = *(a1 + 32);

    return [v5 invokeCompletionWithPlanInstallResult:4];
  }

  return result;
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_2_38;
  block[3] = &unk_279B446B0;
  objc_copyWeak(&v7, (a1 + 40));
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_2_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 96) == 1)
    {
      v4 = *(a1 + 32);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_3_39;
      v6[3] = &unk_279B44F10;
      v6[4] = v3;
      WeakRetained = [v4 hasCellularConnection:v6];
    }

    if (*(a1 + 40))
    {
      v5 = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_2_38_cold_1();
      }

      [v3 invokeCompletionWithPlanInstallResult:1];
    }
  }
}

uint64_t __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_3_39(uint64_t a1, int a2)
{
  result = +[TSUtilities isWifiAvailable];
  if ((result & 1) != 0 || a2)
  {
    v5 = *(a1 + 32);

    return [v5 invokeCompletionWithPlanInstallResult:4];
  }

  return result;
}

- (void)handleProvisioningWatchdogExpiry
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TSManagedDeviceInstallFlow handleProvisioningWatchdogExpiry]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "handle 2 min provisioning watchdog timer expired @%s", &v4, 0xCu);
  }

  [(TSManagedDeviceInstallFlow *)self invokeCompletionWithPlanInstallResult:1];
}

- (void)invokeCompletionWithPlanInstallResult:(unint64_t)result
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    resultCopy = result;
    v11 = 2080;
    v12 = "[TSManagedDeviceInstallFlow invokeCompletionWithPlanInstallResult:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "handle plan install result: %lu @%s", &v9, 0x16u);
  }

  [(NSTimer *)self->_provisioningWatchDogTimer invalidate];
  firstViewCompletion = self->_firstViewCompletion;
  if (firstViewCompletion)
  {
    firstViewCompletion[2](firstViewCompletion, 0);
  }

  self->_startMonitoringConnection = 0;
  provisioningWatchDogTimer = self->_provisioningWatchDogTimer;
  self->_provisioningWatchDogTimer = 0;

  v8 = self->_firstViewCompletion;
  self->_firstViewCompletion = 0;
}

- (void)hasCellularConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TSManagedDeviceInstallFlow_hasCellularConnection___block_invoke;
  v7[3] = &unk_279B45180;
  objc_copyWeak(&v9, &location);
  v6 = connectionCopy;
  v8 = v6;
  [v5 planItemsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__TSManagedDeviceInstallFlow_hasCellularConnection___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v20 + 1) + 8 * i) plan];
          v11 = [v10 status];

          if (!v11)
          {
            (*(*(a1 + 32) + 16))();
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v12 = _TSLogDomain(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __52__TSManagedDeviceInstallFlow_hasCellularConnection___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)planItemsUpdated:(id)updated planListError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  errorCopy = error;
  v8 = errorCopy;
  if (self->_planInstallError)
  {
    v9 = _TSLogDomain(errorCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      planInstallError = self->_planInstallError;
      *buf = 138412546;
      v30 = planInstallError;
      v31 = 2080;
      v32 = "[TSManagedDeviceInstallFlow planItemsUpdated:planListError:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "received error already : %@ @%s", buf, 0x16u);
    }
  }

  else if (errorCopy)
  {
    objc_storeStrong(&self->_planInstallError, error);
    [(TSManagedDeviceInstallFlow *)self invokeCompletionWithPlanInstallResult:1];
  }

  else if (updatedCopy && self->_startMonitoringConnection)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = updatedCopy;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (self->_startMonitoringConnection)
          {
            isInstalling = [*(*(&v24 + 1) + 8 * i) isInstalling];
            if ((isInstalling & 1) != 0 || ([v15 plan], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "status"), v17, v18 == 14))
            {
              v21 = _TSLogDomain(isInstalling);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                plan = [v15 plan];
                *buf = 138412546;
                v30 = plan;
                v31 = 2080;
                v32 = "[TSManagedDeviceInstallFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "One plan is installing or in monitor mode, continue waiting: %@ @%s", buf, 0x16u);
              }

              goto LABEL_26;
            }
          }

          plan2 = [v15 plan];
          status = [plan2 status];

          if (!status)
          {
            [(TSManagedDeviceInstallFlow *)self invokeCompletionWithPlanInstallResult:4];
            goto LABEL_26;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_startMonitoringConnection)
  {
    v7 = [TSUtilities isWifiAvailable:path];
    v8 = v7;
    v9 = _TSLogDomain(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "OFF";
      if (v8)
      {
        v10 = "ON";
      }

      v11 = 136315394;
      v12 = v10;
      v13 = 2080;
      v14 = "[TSManagedDeviceInstallFlow observeValueForKeyPath:ofObject:change:context:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "WiFi : %s @%s", &v11, 0x16u);
    }

    if (v8)
    {
      [(TSManagedDeviceInstallFlow *)self invokeCompletionWithPlanInstallResult:4];
    }
  }
}

- (void)firstViewController
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSManagedDeviceInstallFlow firstViewController]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)firstViewController:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSManagedDeviceInstallFlow firstViewController:]";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Failed - MDMOverBootstrap not set @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSManagedDeviceInstallFlow firstViewController:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]no data connection at all @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSManagedDeviceInstallFlow firstViewController:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_3_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v2 = "[TSManagedDeviceInstallFlow firstViewController:]_block_invoke_3";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed - plan item install failed with error: %@ @%s", v1, 0x16u);
}

void __50__TSManagedDeviceInstallFlow_firstViewController___block_invoke_2_38_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v2 = "[TSManagedDeviceInstallFlow firstViewController:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed - plan item install failed with error: %@ @%s", v1, 0x16u);
}

void __52__TSManagedDeviceInstallFlow_hasCellularConnection___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSManagedDeviceInstallFlow hasCellularConnection:]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end