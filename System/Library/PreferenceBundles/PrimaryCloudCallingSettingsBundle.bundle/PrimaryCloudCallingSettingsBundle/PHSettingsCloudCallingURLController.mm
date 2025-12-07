@interface PHSettingsCloudCallingURLController
- (BOOL)shouldEnableCapability;
- (PHSettingsCloudCallingURLControllerDelegate)delegate;
- (PHSettingsWebViewController)webViewController;
- (id)_webViewControllerWithType:(int64_t)type;
- (id)genericErrorAlertController;
- (void)loadWebViewController;
- (void)reloadWebViewController;
@end

@implementation PHSettingsCloudCallingURLController

- (id)genericErrorAlertController
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_C920 table:@"CloudCallingURLController"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = TUStringKeyForNetwork();
  v7 = [v5 localizedStringForKey:v6 value:&stru_C920 table:@"CloudCallingURLController"];

  v8 = [UIAlertController alertControllerWithTitle:v4 message:v7 preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_C920 table:@"CloudCallingURLController"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  return v8;
}

- (void)reloadWebViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  if (WeakRetained)
  {

    [(PHSettingsCloudCallingURLController *)self loadWebViewController];
  }
}

- (void)loadWebViewController
{
  webViewController = [(PHSettingsCloudCallingURLController *)self webViewController];
  if ([webViewController type] == &dword_0 + 1)
  {
    if ([(PHSettingsCloudCallingURLController *)self shouldEnableCapability])
    {

LABEL_15:
      callingCapabilityInfo = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
      isEnabled = [callingCapabilityInfo isEnabled];

      v22 = PHDefaultLog(v21);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (isEnabled)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that is already enabled. Skipping loading web view", buf, 2u);
        }
      }

      else
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that should be enabled automatically. Skipping loading web view and enabling capability now", buf, 2u);
        }

        [(PHSettingsCloudCallingURLController *)self enableCapability];
      }

      webViewController2 = [(PHSettingsCloudCallingURLController *)self webViewController];
      [webViewController2 cancelWebView];
      goto LABEL_23;
    }

    callingCapabilityInfo2 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
    isEnabled2 = [callingCapabilityInfo2 isEnabled];

    if (isEnabled2)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  callingCapabilityInfo3 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
  isProvisioningURLInvalid = [callingCapabilityInfo3 isProvisioningURLInvalid];

  if (isProvisioningURLInvalid)
  {
    webViewController3 = [(PHSettingsCloudCallingURLController *)self webViewController];
    isPresentingURL = [webViewController3 isPresentingURL];

    if (isPresentingURL)
    {
      webViewController2 = PHDefaultLog(v8);
      if (os_log_type_enabled(webViewController2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "[WARN] Asked to load web view with spinner when web view controller was already presenting a URL";
LABEL_13:
        _os_log_impl(&dword_0, webViewController2, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    webViewController4 = [(PHSettingsCloudCallingURLController *)self webViewController];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_3AAC;
    v32[3] = &unk_C5F0;
    v32[4] = self;
    [webViewController4 loadWebViewWithSpinner:v32];
  }

  else
  {
    callingCapabilityInfo4 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
    provisioningURL = [callingCapabilityInfo4 provisioningURL];

    if (provisioningURL)
    {
      webViewController5 = [(PHSettingsCloudCallingURLController *)self webViewController];
      isPresentingURL2 = [webViewController5 isPresentingURL];

      if (isPresentingURL2)
      {
        webViewController2 = PHDefaultLog(v16);
        if (os_log_type_enabled(webViewController2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "[WARN] Asked to load URL when web view controller was already presenting a URL";
          goto LABEL_13;
        }

LABEL_23:

        return;
      }

      webViewController4 = [(PHSettingsCloudCallingURLController *)self webViewController];
      callingCapabilityInfo5 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
      provisioningURL2 = [callingCapabilityInfo5 provisioningURL];
      callingCapabilityInfo6 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
      provisioningPostData = [callingCapabilityInfo6 provisioningPostData];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_3B38;
      v31[3] = &unk_C5F0;
      v31[4] = self;
      [webViewController4 loadURL:provisioningURL2 body:provisioningPostData completion:v31];
    }

    else
    {
      v25 = PHDefaultLog(v13);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_6A40();
      }

      webViewController4 = [(PHSettingsCloudCallingURLController *)self delegate];
      genericErrorAlertController = [(PHSettingsCloudCallingURLController *)self genericErrorAlertController];
      [webViewController4 presentOrUpdateViewController:genericErrorAlertController];
    }
  }
}

- (id)_webViewControllerWithType:(int64_t)type
{
  v5 = PHDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "_webViewControllerWithType: %ld", &v12, 0xCu);
  }

  callingCapabilityInfo = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
  provisioningStatus = [callingCapabilityInfo provisioningStatus];
  if (provisioningStatus < 1)
  {
    v10 = PHDefaultLog(provisioningStatus);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_6AA8();
    }

    genericErrorAlertController = [(PHSettingsCloudCallingURLController *)self genericErrorAlertController];
  }

  else
  {
    v8 = [[PHSettingsWebViewController alloc] initWithType:type];
    [(PHSettingsCloudCallingURLController *)self setWebViewController:v8];
    [(PHSettingsCloudCallingURLController *)self loadWebViewController];
    genericErrorAlertController = [[UINavigationController alloc] initWithRootViewController:v8];
  }

  return genericErrorAlertController;
}

- (BOOL)shouldEnableCapability
{
  callingCapabilityInfo = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
  if ([callingCapabilityInfo provisioningStatus] == 3)
  {
    v4 = 1;
  }

  else
  {
    callingCapabilityInfo2 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
    v4 = [callingCapabilityInfo2 provisioningStatus] == 1;
  }

  return v4;
}

- (PHSettingsCloudCallingURLControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHSettingsWebViewController)webViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  return WeakRetained;
}

@end