@interface TPSCloudCallingThumperDeviceListController
- (TPSCloudCallingThumperController)thumperController;
- (TPSCloudCallingThumperDeviceListController)init;
- (TPSCloudCallingThumperProvisioningURLController)provisioningURLController;
- (id)isDeviceSwitchOn:(id)on;
- (id)isMainSwitchOn:(id)on;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d;
- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)d;
- (void)setDeviceSwitchOn:(id)on specifier:(id)specifier;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
@end

@implementation TPSCloudCallingThumperDeviceListController

- (TPSCloudCallingThumperDeviceListController)init
{
  v4.receiver = self;
  v4.super_class = TPSCloudCallingThumperDeviceListController;
  v2 = [(TPSCloudCallingDeviceListController *)&v4 init];
  if (v2)
  {
    [MEMORY[0x277D6EDE8] addDelegate:v2 queue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (TPSCloudCallingThumperProvisioningURLController)provisioningURLController
{
  provisioningURLController = self->_provisioningURLController;
  if (!provisioningURLController)
  {
    v4 = [TPSCloudCallingThumperProvisioningURLController alloc];
    subscriptionContext = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCloudCallingThumperProvisioningURLController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_provisioningURLController;
    self->_provisioningURLController = v6;

    [(TPSCloudCallingURLController *)self->_provisioningURLController setDelegate:self];
    provisioningURLController = self->_provisioningURLController;
  }

  return provisioningURLController;
}

- (TPSCloudCallingThumperController)thumperController
{
  thumperController = self->_thumperController;
  if (!thumperController)
  {
    v4 = [TPSCloudCallingThumperController alloc];
    subscriptionContext = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCloudCallingThumperController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_thumperController;
    self->_thumperController = v6;

    thumperController = self->_thumperController;
  }

  return thumperController;
}

- (id)isDeviceSwitchOn:(id)on
{
  v4 = MEMORY[0x277CCABB0];
  onCopy = on;
  thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
  subscriptionCapabilities = [thumperController subscriptionCapabilities];
  identifier = [onCopy identifier];

  v9 = [v4 numberWithBool:{objc_msgSend(subscriptionCapabilities, "isThumperCallingAllowedOnSecondaryDeviceWithID:", identifier)}];

  return v9;
}

- (void)setDeviceSwitchOn:(id)on specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TPSCloudCallingThumperDeviceListController;
  specifierCopy = specifier;
  onCopy = on;
  [(TPSCloudCallingDeviceListController *)&v16 setDeviceSwitchOn:onCopy specifier:specifierCopy];
  identifier = [specifierCopy identifier];

  bOOLValue = [onCopy BOOLValue];
  v12 = TPSLog(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Deactivating";
    if (bOOLValue)
    {
      v13 = @"Activating";
    }

    *buf = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = identifier;
    _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "%@ Thumper for secondary device with identifier %@", buf, 0x16u);
  }

  if ((bOOLValue & 1) == 0)
  {
    thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
    subscriptionCapabilities = [thumperController subscriptionCapabilities];
    [subscriptionCapabilities setThumperCallingAllowed:0 onSecondaryDeviceWithID:identifier];
  }
}

- (id)isMainSwitchOn:(id)on
{
  v3 = MEMORY[0x277CCABB0];
  thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
  subscriptionCapabilities = [thumperController subscriptionCapabilities];
  v6 = [v3 numberWithBool:{objc_msgSend(subscriptionCapabilities, "isThumperCallingEnabled")}];

  return v6;
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  v26 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TPSCloudCallingThumperDeviceListController;
  onCopy = on;
  [(TPSCloudCallingDeviceListController *)&v21 setMainSwitchOn:onCopy specifier:specifier];
  bOOLValue = [onCopy BOOLValue];

  v10 = TPSLog(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (bOOLValue)
    {
      v11 = @"Enabling";
    }

    else
    {
      v11 = @"Disabling";
    }

    subscriptionContext = [(TPSListController *)self subscriptionContext];
    *buf = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = subscriptionContext;
    _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "%@ Thumper for subscription context %@", buf, 0x16u);
  }

  if (bOOLValue)
  {
    provisioningURLController = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
    shouldEnableCapability = [provisioningURLController shouldEnableCapability];

    if (shouldEnableCapability)
    {
      v17 = TPSLog(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B8E9000, v17, OS_LOG_TYPE_DEFAULT, "Thumper capability should be enabled, so enabling it directly now", buf, 2u);
      }

      provisioningURLController2 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
      [provisioningURLController2 enableCapability];
    }

    else
    {
      [MEMORY[0x277D6EDE8] invalidateAndRefreshThumperCallingProvisioningURL];
      provisioningURLController2 = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
      provisionCapabilityController = [provisioningURLController2 provisionCapabilityController];
      [(TPSCloudCallingListController *)self presentOrUpdateViewController:provisionCapabilityController];
    }
  }

  else
  {
    provisioningURLController2 = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
    subscriptionCapabilities = [provisioningURLController2 subscriptionCapabilities];
    [subscriptionCapabilities setThumperCallingEnabled:0];
  }
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSListController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v10 = TPSLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = subscriptionContext;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Thumper calling cabilities changed for subscription context %@.", &v11, 0xCu);
    }

    [(TPSCloudCallingThumperDeviceListController *)self reloadSpecifiers];
  }
}

- (void)didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  subscriptionContext = [(TPSListController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v10 = TPSLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = subscriptionContext;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Thumper calling provisioning URL changed for subscription context %@.", &v19, 0xCu);
    }

    presentedViewController = [(TPSCloudCallingThumperDeviceListController *)self presentedViewController];

    if (presentedViewController)
    {
      thumperController = [(TPSCloudCallingThumperDeviceListController *)self thumperController];
      subscriptionCapabilities = [thumperController subscriptionCapabilities];

      thumperCallingProvisioningStatus = [subscriptionCapabilities thumperCallingProvisioningStatus];
      if (!thumperCallingProvisioningStatus)
      {
        v16 = TPSLog(thumperCallingProvisioningStatus, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_21B8E9000, v16, OS_LOG_TYPE_DEFAULT, "We have a presented view controller and Thumper provisioning status is not-allowed, updating the presented controller", &v19, 2u);
        }

        provisioningURLController = [(TPSCloudCallingThumperDeviceListController *)self provisioningURLController];
        provisionCapabilityController = [provisioningURLController provisionCapabilityController];
        [(TPSCloudCallingListController *)self presentOrUpdateViewController:provisionCapabilityController];
      }
    }
  }
}

@end