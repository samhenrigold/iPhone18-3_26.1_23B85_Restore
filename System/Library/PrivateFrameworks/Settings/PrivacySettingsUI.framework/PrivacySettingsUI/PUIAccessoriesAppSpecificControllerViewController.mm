@interface PUIAccessoriesAppSpecificControllerViewController
- (BOOL)deviceSupportsMultitech:(id)multitech;
- (id)specifierForDevice:(id)device;
- (id)specifiers;
- (void)handleSessionEvent:(id)event;
- (void)refreshDADevices;
- (void)viewDidLoad;
@end

@implementation PUIAccessoriesAppSpecificControllerViewController

- (id)specifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = *MEMORY[0x277D3FC48];
    v5 = *(&self->super.super.super.super.super.isa + v4);
    if (!v5)
    {
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ACCESSORIES_GROUP"];
      v13[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v8 = *(&self->super.super.super.super.super.isa + v4);
      *(&self->super.super.super.super.super.isa + v4) = v7;

      v5 = *(&self->super.super.super.super.super.isa + v4);
    }

    v9 = v5;
  }

  else
  {
    v10 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", v12, 2u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PUIAccessoriesAppSpecificControllerViewController;
  [(PUIAccessoriesAppSpecificControllerViewController *)&v12 viewDidLoad];
  if (_os_feature_enabled_impl())
  {
    v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"bundleID"];
    appBundleID = self->_appBundleID;
    self->_appBundleID = v3;

    session = [(PUIAccessoriesAppSpecificControllerViewController *)self session];

    if (!session)
    {
      v6 = objc_opt_new();
      [(PUIAccessoriesAppSpecificControllerViewController *)self setSession:v6];

      objc_initWeak(&location, self);
      v9 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v10, &location);
      v7 = [(PUIAccessoriesAppSpecificControllerViewController *)self session:v9];
      [v7 setEventHandler:&v9];

      session2 = [(PUIAccessoriesAppSpecificControllerViewController *)self session];
      [session2 activate];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __64__PUIAccessoriesAppSpecificControllerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)specifierForDevice:(id)device
{
  deviceCopy = device;
  v5 = MEMORY[0x277D3FAD8];
  name = [deviceCopy name];
  v7 = [v5 preferenceSpecifierNamed:name target:self set:0 get:0 detail:NSClassFromString(&cfstr_Asaccessoryinf.isa) cell:2 edit:0];

  identifier = [deviceCopy identifier];
  [v7 setIdentifier:identifier];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  if ([(PUIAccessoriesAppSpecificControllerViewController *)self deviceSupportsMultitech:deviceCopy])
  {
    v9 = *MEMORY[0x277D3FFD8];
    v10 = @"com.apple.graphic-icon.accessories";
  }

  else
  {
    bluetoothIdentifier = [deviceCopy bluetoothIdentifier];

    v9 = *MEMORY[0x277D3FFD8];
    if (bluetoothIdentifier)
    {
      v10 = @"com.apple.graphic-icon.bluetooth";
    }

    else
    {
      v10 = @"com.apple.graphic-icon.wifi";
    }
  }

  [v7 setObject:v10 forKeyedSubscript:v9];
  [v7 setProperty:deviceCopy forKey:@"device"];
  [v7 setProperty:self->_session forKey:@"session"];

  return v7;
}

- (BOOL)deviceSupportsMultitech:(id)multitech
{
  multitechCopy = multitech;
  bluetoothIdentifier = [multitechCopy bluetoothIdentifier];
  if (bluetoothIdentifier)
  {
    wifiAwareDevicePairingID = [multitechCopy wifiAwareDevicePairingID];
    if (wifiAwareDevicePairingID)
    {
      v6 = 1;
    }

    else
    {
      sSID = [multitechCopy SSID];
      v6 = sSID != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleSessionEvent:(id)event
{
  eventType = [event eventType];
  if (eventType <= 0x2A && ((1 << eventType) & 0x60000000400) != 0)
  {

    [(PUIAccessoriesAppSpecificControllerViewController *)self refreshDADevices];
  }
}

- (void)refreshDADevices
{
  session = [(PUIAccessoriesAppSpecificControllerViewController *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke;
  v4[3] = &unk_279BA1828;
  v4[4] = self;
  [session getDevicesWithFlags:8 completionHandler:v4];
}

void __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = _PUILoggingFacility(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2_cold_1(v3, v4);
    }
  }

  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 appAccessInfoMap];
        v12 = [v11 allKeys];
        v13 = [v12 containsObject:*(*(a1 + 48) + 1456)];

        if (v13)
        {
          v14 = [*(a1 + 48) specifierForDevice:v10];
          [v20 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  [v20 sortUsingComparator:&__block_literal_global_3];
  v15 = *(a1 + 48);
  v16 = [v15 accessorySpecifiers];
  [v15 removeContiguousSpecifiers:v16];

  v17 = [v20 copy];
  [*(a1 + 48) setAccessorySpecifiers:v17];

  v18 = *(a1 + 48);
  v19 = [v18 accessorySpecifiers];
  [v18 insertContiguousSpecifiers:v19 afterSpecifierID:@"ACCESSORIES_GROUP"];
}

uint64_t __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void __69__PUIAccessoriesAppSpecificControllerViewController_refreshDADevices__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "[PUIAccessoriesAppSpecificControllerViewController refreshDADevices]_block_invoke_2";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: Error getting devices: %@", &v3, 0x16u);
}

@end