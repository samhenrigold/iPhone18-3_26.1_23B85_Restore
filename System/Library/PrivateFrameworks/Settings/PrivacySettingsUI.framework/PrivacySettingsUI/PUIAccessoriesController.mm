@interface PUIAccessoriesController
- (id)localizedRemainingNumberOfApprovedAccessories:(id)accessories;
- (id)specifierForApp:(id)app;
- (id)specifiers;
- (void)handleSessionEvent:(id)event;
- (void)provideNavigationDonations;
- (void)refreshDADevices;
- (void)refreshDADevicesSynchronously;
- (void)remakeUI:(id)i;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUIAccessoriesController

- (id)specifiers
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = *MEMORY[0x277D3FC48];
    v5 = *(&self->super.super.super.super.super.isa + v4);
    if (!v5)
    {
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APP_GROUP"];
      if (MGGetBoolAnswer())
      {
        v7 = @"ACCESSORY_SETUP_FOOTER_WLAN";
      }

      else
      {
        v7 = @"ACCESSORY_SETUP_FOOTER";
      }

      v8 = PUI_LocalizedStringForPrivacy(v7);
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      v15[0] = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v10 = *(&self->super.super.super.super.super.isa + v4);
      *(&self->super.super.super.super.super.isa + v4) = v9;

      v5 = *(&self->super.super.super.super.super.isa + v4);
    }

    v11 = v5;
  }

  else
  {
    v12 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "AccessorySetupKit feature flag not enabled", v14, 2u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIAccessoriesController;
  [(PUIAccessoriesController *)&v4 viewWillAppear:appear];
  if (self->_shouldReloadApps)
  {
    [(PUIAccessoriesController *)self refreshDADevicesSynchronously];
    self->_shouldReloadApps = 0;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIAccessoriesController;
  [(PUIAccessoriesController *)&v4 viewDidAppear:appear];
  [(PUIAccessoriesController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"ACCESSORY_SETUP" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ACCESSORIES"];
  [(PUIAccessoriesController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.accessories" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PUIAccessoriesController;
  [(PUIAccessoriesController *)&v10 viewDidLoad];
  if (_os_feature_enabled_impl())
  {
    session = [(PUIAccessoriesController *)self session];

    if (!session)
    {
      v4 = objc_opt_new();
      [(PUIAccessoriesController *)self setSession:v4];

      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v8, &location);
      v5 = [(PUIAccessoriesController *)self session:v7];
      [v5 setEventHandler:&v7];

      session2 = [(PUIAccessoriesController *)self session];
      [session2 activate];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __39__PUIAccessoriesController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)specifierForApp:(id)app
{
  appCopy = app;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:appCopy allowPlaceholder:1 error:0];
  localizedName = [v5 localizedName];
  v7 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v8 = [v7 count];

  v9 = MEMORY[0x277D3FAD8];
  if (v8 == 1)
  {
    v10 = NSClassFromString(&cfstr_Asaccessoryinf.isa);
  }

  else
  {
    v10 = objc_opt_class();
  }

  v11 = [v9 preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:v10 cell:2 edit:0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v11 setProperty:v12 forKey:*MEMORY[0x277D40020]];

  [v11 setProperty:appCopy forKey:*MEMORY[0x277D40008]];
  [v11 setProperty:appCopy forKey:@"bundleID"];
  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v13 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v14 = [v13 count];

  v15 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  name2 = v15;
  if (v14 == 1)
  {
    firstObject = [v15 firstObject];
    name = [firstObject name];
LABEL_13:

    goto LABEL_14;
  }

  v19 = [v15 count];

  v20 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v21 = v20;
  if (v19 == 2)
  {
    v22 = [v20 objectAtIndexedSubscript:0];
    name2 = [v22 name];

    v23 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    [v23 objectAtIndexedSubscript:1];
    v51 = v8;
    v24 = localizedName;
    v26 = v25 = v5;
    firstObject = [v26 name];

    v27 = MEMORY[0x277CCACA8];
    v28 = PUI_LocalizedStringForPrivacy(@"ACCESSORY_SETUP_ENUMERATE_TWO");
    name = [v27 stringWithFormat:v28, name2, firstObject];

    v5 = v25;
    localizedName = v24;
    v8 = v51;
    goto LABEL_13;
  }

  v52 = localizedName;
  v29 = [v20 count];

  v30 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
  v31 = v30;
  if (v29 == 3)
  {
    v32 = [v30 objectAtIndexedSubscript:0];
    name2 = [v32 name];

    v33 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    [v33 objectAtIndexedSubscript:1];
    v34 = v50 = v5;
    firstObject = [v34 name];

    v35 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v36 = [v35 objectAtIndexedSubscript:2];
    name3 = [v36 name];

    v38 = MEMORY[0x277CCACA8];
    v39 = PUI_LocalizedStringForPrivacy(@"ACCESSORY_SETUP_ENUMERATE_THREE");
LABEL_12:
    v45 = v39;
    name = [v38 stringWithFormat:v39, name2, firstObject, name3];

    v5 = v50;
    localizedName = v52;
    goto LABEL_13;
  }

  v40 = [v30 count];

  if (v40 >= 4)
  {
    v41 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v42 = [v41 objectAtIndexedSubscript:0];
    name2 = [v42 name];

    v43 = [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v44 = [v43 objectAtIndexedSubscript:1];
    firstObject = [v44 name];

    name3 = [(PUIAccessoriesController *)self localizedRemainingNumberOfApprovedAccessories:appCopy];
    v38 = MEMORY[0x277CCACA8];
    v39 = PUI_LocalizedStringForPrivacy(@"ACCESSORY_SETUP_ENUMERATE_MORE");
    v50 = v5;
    goto LABEL_12;
  }

  name = 0;
  localizedName = v52;
LABEL_14:
  [v11 setProperty:name forKey:*MEMORY[0x277D40160]];
  if (v8 == 1)
  {
    [(NSMutableDictionary *)self->_accessoriesManagementMap objectForKeyedSubscript:appCopy];
    v47 = v46 = localizedName;
    firstObject2 = [v47 firstObject];
    [v11 setProperty:firstObject2 forKey:@"device"];

    localizedName = v46;
    [v11 setProperty:self->_session forKey:@"session"];
  }

  return v11;
}

- (id)localizedRemainingNumberOfApprovedAccessories:(id)accessories
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSMutableDictionary *)self->_accessoriesManagementApprovedMap objectForKeyedSubscript:accessories];
  v5 = [v3 localizedStringWithFormat:@"%lu", objc_msgSend(v4, "count") - 2];

  return v5;
}

- (void)handleSessionEvent:(id)event
{
  eventType = [event eventType];
  if (eventType <= 0x2A && ((1 << eventType) & 0x60000000400) != 0)
  {

    [(PUIAccessoriesController *)self refreshDADevices];
  }
}

- (void)remakeUI:(id)i
{
  v68 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v4 = iCopy;
  if (!iCopy || ![iCopy count])
  {
    appSpecifiers = [(PUIAccessoriesController *)self appSpecifiers];
    [(PUIAccessoriesController *)self removeContiguousSpecifiers:appSpecifiers];

    accessoriesManagementMap = self->_accessoriesManagementMap;
    self->_accessoriesManagementMap = 0;

    accessoriesManagementApprovedMap = self->_accessoriesManagementApprovedMap;
    self->_accessoriesManagementApprovedMap = 0;

    [(PUIAccessoriesController *)self setAppSpecifiers:0];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  v49 = v10;
  if (v10)
  {
    v47 = *v60;
    *&v11 = 138412290;
    v45 = v11;
    do
    {
      v12 = 0;
      do
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v12;
        v13 = *(*(&v59 + 1) + 8 * v12);
        v14 = _PUILoggingFacility(v10);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v45;
          v66 = v13;
          _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Device fetched %@", buf, 0xCu);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        appAccessInfoMap = [v13 appAccessInfoMap];
        allKeys = [appAccessInfoMap allKeys];

        v17 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v56;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v56 != v19)
              {
                objc_enumerationMutation(allKeys);
              }

              v21 = *(*(&v55 + 1) + 8 * i);
              v22 = [dictionary objectForKeyedSubscript:{v21, v45}];

              if (!v22)
              {
                array = [MEMORY[0x277CBEB18] array];
                [dictionary setObject:array forKeyedSubscript:v21];
              }

              v24 = [dictionary objectForKeyedSubscript:v21];
              [v24 addObject:v13];

              appAccessInfoMap2 = [v13 appAccessInfoMap];
              v26 = [appAccessInfoMap2 objectForKeyedSubscript:v21];

              if (v26)
              {
                v27 = [dictionary2 objectForKeyedSubscript:v21];

                if (!v27)
                {
                  array2 = [MEMORY[0x277CBEB18] array];
                  [dictionary2 setObject:array2 forKeyedSubscript:v21];
                }

                v29 = [dictionary2 objectForKeyedSubscript:v21];
                [v29 addObject:v13];
              }
            }

            v18 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
          }

          while (v18);
        }

        v12 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v10 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      v49 = v10;
    }

    while (v10);
  }

  v30 = [dictionary copy];
  v31 = self->_accessoriesManagementMap;
  self->_accessoriesManagementMap = v30;

  v32 = [dictionary2 copy];
  v33 = self->_accessoriesManagementApprovedMap;
  self->_accessoriesManagementApprovedMap = v32;

  allKeys2 = [dictionary allKeys];
  array3 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v36 = allKeys2;
  v37 = [v36 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v52;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [(PUIAccessoriesController *)self specifierForApp:*(*(&v51 + 1) + 8 * j), v45];
        [array3 addObject:v41];
      }

      v38 = [v36 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v38);
  }

  [array3 sortUsingComparator:&__block_literal_global_4];
  appSpecifiers2 = [(PUIAccessoriesController *)self appSpecifiers];
  [(PUIAccessoriesController *)self removeContiguousSpecifiers:appSpecifiers2];

  v43 = [array3 copy];
  [(PUIAccessoriesController *)self setAppSpecifiers:v43];

  appSpecifiers3 = [(PUIAccessoriesController *)self appSpecifiers];
  [(PUIAccessoriesController *)self insertContiguousSpecifiers:appSpecifiers3 afterSpecifierID:@"APP_GROUP"];
}

uint64_t __37__PUIAccessoriesController_remakeUI___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)refreshDADevicesSynchronously
{
  v3 = [MEMORY[0x277D04780] getDevicesWithFlags:8 session:self->_session error:0];
  [(PUIAccessoriesController *)self remakeUI:v3];
}

- (void)refreshDADevices
{
  session = [(PUIAccessoriesController *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PUIAccessoriesController_refreshDADevices__block_invoke;
  v4[3] = &unk_279BA1828;
  v4[4] = self;
  [session getDevicesWithFlags:8 completionHandler:v4];
}

void __44__PUIAccessoriesController_refreshDADevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PUIAccessoriesController_refreshDADevices__block_invoke_2;
  block[3] = &unk_279BA11C8;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__PUIAccessoriesController_refreshDADevices__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _PUILoggingFacility(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __44__PUIAccessoriesController_refreshDADevices__block_invoke_2_cold_1(v2, v3);
    }
  }

  return [*(a1 + 40) remakeUI:*(a1 + 48)];
}

void __44__PUIAccessoriesController_refreshDADevices__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "[PUIAccessoriesController refreshDADevices]_block_invoke_2";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: Error getting devices: %@", &v3, 0x16u);
}

@end