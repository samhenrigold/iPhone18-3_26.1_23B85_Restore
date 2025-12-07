@interface TSLowDataModeConfigViewController
- (TSLowDataModeConfigViewController)initWithPlans:(id)plans;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_continueButtonTapped;
- (void)_sendTravelEventMetricForPlan:(id)plan useLDM:(BOOL)m;
- (void)_setUpButtons;
- (void)_setUpLearnMoreLink;
- (void)prepare:(id)prepare;
- (void)viewDidLoad;
@end

@implementation TSLowDataModeConfigViewController

- (TSLowDataModeConfigViewController)initWithPlans:(id)plans
{
  plansCopy = plans;
  v6 = @"TRAVEL_MODE_ESIM_LDM_BODY";
  if ([plansCopy count] == 1)
  {
    v7 = [plansCopy objectAtIndexedSubscript:0];
    targetIccid = [v7 targetIccid];
    v9 = [TSUtilities isIccidForPhySlot:targetIccid];

    if (v9)
    {
      v6 = @"TRAVEL_MODE_PSIM_LDM_BODY";
    }
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TRAVEL_MODE_LDM_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v19.receiver = self;
  v19.super_class = TSLowDataModeConfigViewController;
  v14 = [(TSLowDataModeConfigViewController *)&v19 initWithTitle:v13 detailText:v11 symbolName:@"antenna.radiowaves.left.and.right"];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = [v15 initWithQueue:MEMORY[0x277D85CD0]];
    client = v14->_client;
    v14->_client = v16;

    objc_storeStrong(&v14->_plans, plans);
  }

  return v14;
}

- (void)prepare:(id)prepare
{
  location[3] = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    prepareCopy[2](prepareCopy, 0);
    goto LABEL_12;
  }

  plans = self->_plans;
  if (!plans)
  {
    v11 = _TSLogDomain(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSLowDataModeConfigViewController prepare:]";
      _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Plans info does not exist. @%s", location, 0xCu);
    }

    goto LABEL_11;
  }

  v6 = [(NSArray *)plans count];
  if (v6 != 1)
  {
    v11 = _TSLogDomain(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSLowDataModeConfigViewController prepare:]";
      _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Not a single SIM installation. @%s", location, 0xCu);
    }

LABEL_11:

    prepareCopy[2](prepareCopy, 0);
    goto LABEL_12;
  }

  v7 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
  objc_initWeak(location, self);
  client = self->_client;
  targetIccid = [v7 targetIccid];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__TSLowDataModeConfigViewController_prepare___block_invoke;
  v12[3] = &unk_279B44360;
  objc_copyWeak(&v16, location);
  v15 = prepareCopy;
  v10 = v7;
  v13 = v10;
  selfCopy = self;
  [(CoreTelephonyClient *)client getTravelInfoForIccid:targetIccid completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);

LABEL_12:
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = _TSLogDomain(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[4] targetIccid];
      *buf = 138412802;
      v23 = v10;
      v24 = 2112;
      v25 = v5;
      v26 = 2080;
      v27 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "CTPlanTravelDetails for %@: %@ @%s", buf, 0x20u);
    }

    if ([v5 isTraveleSIM] & 1) != 0 && (objc_msgSend(v5, "isUserTraveling"))
    {
      v11 = +[TSCellularPlanManagerCache sharedInstance];
      v12 = [a1[4] planItem];
      v13 = [v11 getSubscriptionContextUUIDforPlan:v12];

      if (v13)
      {
        objc_initWeak(buf, a1[5]);
        v15 = +[TSCoreTelephonyClientCache sharedInstance];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __45__TSLowDataModeConfigViewController_prepare___block_invoke_43;
        v17[3] = &unk_279B44338;
        objc_copyWeak(&v21, buf);
        v20 = a1[6];
        v18 = v13;
        v19 = a1[4];
        [v15 getSubscriptionInfo:v17];

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }

      else
      {
        v16 = _TSLogDomain(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v23 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "Subscription context UUID is not ready! @%s", buf, 0xCu);
        }

        (*(a1[6] + 2))();
      }
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke_43(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v3;
    v5 = [v3 subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 uuid];
          v12 = [v11 UUIDString];
          v13 = [v12 isEqualToString:*(a1 + 32)];

          if (v13)
          {
            v17 = _TSLogDomain(v14);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v25 = v10;
              v26 = 2080;
              v27 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
              _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "Setting _defaultDataContext to be %@ @%s", buf, 0x16u);
            }

            objc_storeStrong(WeakRetained + 158, v10);
            (*(*(a1 + 48) + 16))();

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = _TSLogDomain(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_1(a1, v16);
    }

    (*(*(a1 + 48) + 16))();
LABEL_16:
    v3 = v19;
  }

  else
  {
    v18 = _TSLogDomain(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_2(v18);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TSLowDataModeConfigViewController;
  [(TSOBWelcomeController *)&v3 viewDidLoad];
  [(TSLowDataModeConfigViewController *)self _setUpButtons];
  [(TSLowDataModeConfigViewController *)self _setUpLearnMoreLink];
  self->_isShown = 1;
}

- (void)_setUpButtons
{
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TRAVEL_MODE_LDM_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  buttonTray = [(TSLowDataModeConfigViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = linkButton;

  [(OBLinkTrayButton *)self->_skipButton setRole:2];
  v11 = self->_skipButton;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

  [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__cancelButtonTapped forControlEvents:64];
  buttonTray2 = [(TSLowDataModeConfigViewController *)self buttonTray];
  [buttonTray2 addButton:self->_skipButton];

  buttonTray3 = [(TSLowDataModeConfigViewController *)self buttonTray];
  [buttonTray3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setUpLearnMoreLink
{
  if (+[TSUtilities isWifiAvailable])
  {
    accessoryButton = [MEMORY[0x277D37638] accessoryButton];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"TRAVEL_LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
    [accessoryButton setTitle:v4 forState:0];

    [accessoryButton addTarget:self action:sel__learnMoreButtonTapped forControlEvents:64];
    [accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    headerView = [(TSLowDataModeConfigViewController *)self headerView];
    [headerView addAccessoryButton:accessoryButton];
  }
}

- (void)_continueButtonTapped
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSLowDataModeConfigViewController _continueButtonTapped]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Fail to set international data access status @%s", &v1, 0xCu);
}

- (void)_cancelButtonTapped
{
  v3 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
  [(TSLowDataModeConfigViewController *)self _sendTravelEventMetricForPlan:v3 useLDM:0];

  delegate = [(TSLowDataModeConfigViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)_sendTravelEventMetricForPlan:(id)plan useLDM:(BOOL)m
{
  mCopy = m;
  planCopy = plan;
  v7 = objc_opt_new();
  isPreInstalled = [planCopy isPreInstalled];
  v9 = &TSTravelEventNotificationPostArrivalInstall;
  if (isPreInstalled)
  {
    v9 = &TSTravelEventNotificationPostArrivalBuddy;
  }

  [v7 setObject:*v9 forKey:@"notificationType"];
  useTravelOnly = [planCopy useTravelOnly];
  v11 = &TSTravelActionPostArrivalUseTravelSIM;
  if (!useTravelOnly)
  {
    v11 = &TSTravelActionPostArrivalUseTravelAndHomeSIM;
  }

  [v7 setObject:*v11 forKey:@"finalAction"];
  v12 = &TSTravelActionPostArrivalLDMOn;
  if (!mCopy)
  {
    v12 = &TSTravelActionPostArrivalLDMOff;
  }

  [v7 setObject:*v12 forKey:@"finalActionSubtype"];
  targetIccid = [planCopy targetIccid];
  [v7 setObject:targetIccid forKey:@"travelIccid"];
  client = self->_client;
  v19 = 0;
  v15 = [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:v7 error:&v19];
  v16 = v19;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    v18 = _TSLogDomain(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [TSLowDataModeConfigViewController _sendTravelEventMetricForPlan:useLDM:];
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) targetIccid];
  OUTLINED_FUNCTION_0();
  v5 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Failed to find subscription context for travel SIM %@ @%s", v4, 0x16u);
}

void __45__TSLowDataModeConfigViewController_prepare___block_invoke_43_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSLowDataModeConfigViewController prepare:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Self doesnt exist @%s", &v1, 0xCu);
}

- (void)_sendTravelEventMetricForPlan:useLDM:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "[TSLowDataModeConfigViewController _sendTravelEventMetricForPlan:useLDM:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for post arrival install [%@] @%s", v1, 0x16u);
}

@end