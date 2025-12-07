@interface TPSCloudCallingURLController
- (TPSCarrierBundleController)carrierBundleController;
- (TPSCloudCallingURLController)init;
- (TPSCloudCallingURLController)initWithSubscriptionContext:(id)context;
- (TPSCloudCallingURLControllerDelegate)delegate;
- (TPSCloudCallingWebViewController)webViewController;
- (TUSenderIdentityCapabilities)subscriptionCapabilities;
- (id)_webViewControllerWithType:(int64_t)type;
- (id)genericErrorAlertController;
- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)d;
- (void)loadWebViewController;
- (void)reloadWebViewController;
@end

@implementation TPSCloudCallingURLController

- (TPSCloudCallingURLController)init
{
  [(TPSCloudCallingURLController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCloudCallingURLController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPSCloudCallingURLController;
  v6 = [(TPSCloudCallingURLController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
  }

  return v7;
}

- (TPSCarrierBundleController)carrierBundleController
{
  carrierBundleController = self->_carrierBundleController;
  if (!carrierBundleController)
  {
    v4 = objc_alloc_init(TPSCarrierBundleController);
    v5 = self->_carrierBundleController;
    self->_carrierBundleController = v4;

    carrierBundleController = self->_carrierBundleController;
  }

  return carrierBundleController;
}

- (TUSenderIdentityCapabilities)subscriptionCapabilities
{
  subscriptionContext = [(TPSCloudCallingURLController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v5 = [(TPSCloudCallingURLController *)self subscriptionCapabilitiesForSubscriptionContextUUID:uuid];

  return v5;
}

- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  senderIdentityCapabilities = [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [senderIdentityCapabilities countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(senderIdentityCapabilities);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        senderIdentityUUID = [v10 senderIdentityUUID];
        v12 = [senderIdentityUUID isEqual:dCopy];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [senderIdentityCapabilities countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)genericErrorAlertController
{
  v34 = *MEMORY[0x277D85DE8];
  subscriptionContext = [(TPSCloudCallingURLController *)self subscriptionContext];
  carrierBundleController = [(TPSCloudCallingURLController *)self carrierBundleController];
  v5 = [carrierBundleController objectForKey:@"CarrierName" subscriptionContext:subscriptionContext];

  carrierBundleController2 = [(TPSCloudCallingURLController *)self carrierBundleController];
  v7 = [carrierBundleController2 objectForKey:@"VoWiFiCustomerCareWebsite" subscriptionContext:subscriptionContext];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    carrierBundleController3 = [(TPSCloudCallingURLController *)self carrierBundleController];
    v8 = [carrierBundleController3 objectForKey:@"VoLTECustomerCareWebsite" subscriptionContext:subscriptionContext];

    v12 = TPSLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "No VoWiFiCustomerCareWebsite URL specified so looking up VoLTECustomerCareWebsite URL (%@)", buf, 0xCu);
    }
  }

  v13 = TUStringKeyForNetwork();
  v14 = [TPSLocalizedString localizedStringForKey:v13];

  if ([v5 length])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = TUStringKeyForNetwork();
    v17 = [TPSLocalizedString localizedStringForKey:v16];
    v18 = [v15 stringWithFormat:v17, v5];
  }

  else
  {
    v16 = TUStringKeyForNetwork();
    v18 = [TPSLocalizedString localizedStringForKey:v16];
  }

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v18 preferredStyle:1];
  v20 = [v8 length];
  v21 = MEMORY[0x277D750F8];
  if (v20)
  {
    v22 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_SHOW_CARRIER_WEB_VIEW_ERROR_VISIT_WEBSITE"];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__TPSCloudCallingURLController_genericErrorAlertController__block_invoke;
    v30[3] = &unk_2782E3B60;
    v31 = v8;
    v23 = [v21 actionWithTitle:v22 style:0 handler:v30];
    [v19 addAction:v23];

    v24 = MEMORY[0x277D750F8];
    v25 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_ALERT_ACTION_TITLE_CANCEL"];
    v26 = [v24 actionWithTitle:v25 style:1 handler:0];
    [v19 addAction:v26];

    v27 = v31;
  }

  else
  {
    v27 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_ALERT_ACTION_TITLE_CONFIRM"];
    v28 = [v21 actionWithTitle:v27 style:1 handler:0];
    [v19 addAction:v28];
  }

  return v19;
}

void __59__TPSCloudCallingURLController_genericErrorAlertController__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  [v3 openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)reloadWebViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  if (WeakRetained)
  {

    [(TPSCloudCallingURLController *)self loadWebViewController];
  }
}

- (void)loadWebViewController
{
  webViewController = [(TPSCloudCallingURLController *)self webViewController];
  if ([webViewController type] == 1)
  {
    if ([(TPSCloudCallingURLController *)self shouldEnableCapability])
    {

LABEL_15:
      isCapabilityEnabled = [(TPSCloudCallingURLController *)self isCapabilityEnabled];
      v19 = isCapabilityEnabled;
      v21 = TPSLog(isCapabilityEnabled, v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_21B8E9000, v21, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that is already enabled. Skipping loading web view", buf, 2u);
        }
      }

      else
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_21B8E9000, v21, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that should be enabled automatically. Skipping loading web view and enabling capability now", buf, 2u);
        }

        [(TPSCloudCallingURLController *)self enableCapability];
      }

      webViewController2 = [(TPSCloudCallingURLController *)self webViewController];
      [webViewController2 cancelWebView];
      goto LABEL_23;
    }

    isCapabilityEnabled2 = [(TPSCloudCallingURLController *)self isCapabilityEnabled];

    if (isCapabilityEnabled2)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ([(TPSCloudCallingURLController *)self isCapabilityProvisioningURLInvalid])
  {
    webViewController3 = [(TPSCloudCallingURLController *)self webViewController];
    isPresentingURL = [webViewController3 isPresentingURL];

    if (isPresentingURL)
    {
      webViewController2 = TPSLog(v6, v7);
      if (os_log_type_enabled(webViewController2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "Asked to load web view with spinner when web view controller was already presenting a URL";
LABEL_13:
        _os_log_impl(&dword_21B8E9000, webViewController2, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    webViewController4 = [(TPSCloudCallingURLController *)self webViewController];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __53__TPSCloudCallingURLController_loadWebViewController__block_invoke;
    v29[3] = &unk_2782E3CA8;
    v29[4] = self;
    [webViewController4 loadWebViewWithSpinner:v29];
  }

  else
  {
    capabilityProvisioningURL = [(TPSCloudCallingURLController *)self capabilityProvisioningURL];

    if (capabilityProvisioningURL)
    {
      webViewController5 = [(TPSCloudCallingURLController *)self webViewController];
      isPresentingURL2 = [webViewController5 isPresentingURL];

      if (isPresentingURL2)
      {
        webViewController2 = TPSLog(v15, v16);
        if (os_log_type_enabled(webViewController2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "Asked to load URL when web view controller was already presenting a URL";
          goto LABEL_13;
        }

LABEL_23:

        return;
      }

      webViewController4 = [(TPSCloudCallingURLController *)self webViewController];
      capabilityProvisioningURL2 = [(TPSCloudCallingURLController *)self capabilityProvisioningURL];
      capabilityProvisioningPostData = [(TPSCloudCallingURLController *)self capabilityProvisioningPostData];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_58;
      v28[3] = &unk_2782E3CA8;
      v28[4] = self;
      [webViewController4 loadURL:capabilityProvisioningURL2 body:capabilityProvisioningPostData completion:v28];
    }

    else
    {
      v24 = TPSLog(v11, v12);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [TPSCloudCallingURLController loadWebViewController];
      }

      webViewController4 = [(TPSCloudCallingURLController *)self delegate];
      genericErrorAlertController = [(TPSCloudCallingURLController *)self genericErrorAlertController];
      [webViewController4 presentOrUpdateViewController:genericErrorAlertController];
    }
  }
}

void __53__TPSCloudCallingURLController_loadWebViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = TPSLog(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

void __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_58(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) >= 2)
  {
    if (!a2)
    {
      v6 = TPSLog(a1, 0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Successfully loaded web view URL", v7, 2u);
      }

      [*(a1 + 32) webSheetCompletion];
    }
  }

  else
  {
    v3 = TPSLog(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

- (id)_webViewControllerWithType:(int64_t)type
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = TPSLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "_webViewControllerWithType: %ld", &v12, 0xCu);
  }

  capabilityProvisioningStatus = [(TPSCloudCallingURLController *)self capabilityProvisioningStatus];
  if (capabilityProvisioningStatus < 1)
  {
    v10 = TPSLog(capabilityProvisioningStatus, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TPSCloudCallingURLController _webViewControllerWithType:];
    }

    genericErrorAlertController = [(TPSCloudCallingURLController *)self genericErrorAlertController];
  }

  else
  {
    v8 = [[TPSCloudCallingWebViewController alloc] initWithType:type];
    [(TPSCloudCallingURLController *)self setWebViewController:v8];
    [(TPSCloudCallingURLController *)self loadWebViewController];
    genericErrorAlertController = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  }

  return genericErrorAlertController;
}

- (TPSCloudCallingURLControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TPSCloudCallingWebViewController)webViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  return WeakRetained;
}

@end