@interface TUIDevicesWithIssuesSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (NSArray)specifiers;
- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)manager;
- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)manager devicesWithIssuesIdentifiers:(id)identifiers;
- (id)_deviceList;
- (id)_iconURLForDevice:(id)device;
- (id)_specifierForDevice:(id)device;
- (id)_specifierForError;
- (id)_specifierForUnknownDevice:(id)device;
- (id)_specifiersForDeviceList:(id)list;
- (void)_deviceList;
- (void)_updateDevicesWithIssuesList:(id)list;
- (void)deviceListModified:(id)modified;
@end

@implementation TUIDevicesWithIssuesSpecifierProvider

- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
  {
    [TUIDevicesWithIssuesSpecifierProvider initWithAccountManager:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
    [(TUIDevicesWithIssuesSpecifierProvider *)self initWithAccountManager:v5];
  }

  return 0;
}

uint64_t __64__TUIDevicesWithIssuesSpecifierProvider_initWithAccountManager___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (TUIDevicesWithIssuesSpecifierProvider)initWithAccountManager:(id)manager devicesWithIssuesIdentifiers:(id)identifiers
{
  managerCopy = manager;
  identifiersCopy = identifiers;
  v19.receiver = self;
  v19.super_class = TUIDevicesWithIssuesSpecifierProvider;
  v9 = [(TUIDevicesWithIssuesSpecifierProvider *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeStrong(&v10->_devicesWithIssuesIdentifiers, identifiers);
    array = [MEMORY[0x277CBEB18] array];
    devicesWithIssues = v10->_devicesWithIssues;
    v10->_devicesWithIssues = array;

    array2 = [MEMORY[0x277CBEB18] array];
    unknownDevices = v10->_unknownDevices;
    v10->_unknownDevices = array2;

    v15 = [[TUIIDMSDeviceSource alloc] initWithIdmsDeviceProtocol:0];
    idms = v10->_idms;
    v10->_idms = v15;

    _deviceList = [(TUIDevicesWithIssuesSpecifierProvider *)v10 _deviceList];
  }

  return v10;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    _deviceList = [(TUIDevicesWithIssuesSpecifierProvider *)self _deviceList];
    v6 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifiersForDeviceList:_deviceList];
    [array addObjectsFromArray:v6];

    v7 = [array copy];
    v8 = self->_specifiers;
    self->_specifiers = v7;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_specifiersForDeviceList:(id)list
{
  v39[1] = *MEMORY[0x277D85DE8];
  listCopy = list;
  self->_devicesWithIssuesCount = 0;
  loadError = [listCopy loadError];

  if (loadError)
  {
    _specifierForError = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForError];
    v39[0] = _specifierForError;
    v7 = MEMORY[0x277CBEA60];
    v8 = v39;
    goto LABEL_3;
  }

  devices = [listCopy devices];
  v11 = [devices count];

  if (v11)
  {
    if ([(NSMutableArray *)self->_devicesWithIssues count]|| [(NSMutableArray *)self->_unknownDevices count])
    {
      _specifierForError = [MEMORY[0x277CBEB18] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = self->_devicesWithIssues;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForDevice:*(*(&v31 + 1) + 8 * i)];
            [_specifierForError addObject:v17];

            ++self->_devicesWithIssuesCount;
          }

          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v14);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = self->_unknownDevices;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForUnknownDevice:*(*(&v27 + 1) + 8 * j), v27];
            [_specifierForError addObject:v23];

            ++self->_devicesWithIssuesCount;
          }

          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v20);
      }

      v9 = [_specifierForError copy];
      goto LABEL_22;
    }

    _specifierForError = [(TUIDevicesWithIssuesSpecifierProvider *)self _spinnerSpecifierGroup];
    v37 = _specifierForError;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v37;
LABEL_3:
    v9 = [v7 arrayWithObjects:v8 count:1];
LABEL_22:
    v24 = v9;
    goto LABEL_23;
  }

  _specifierForError = [(TUIDevicesWithIssuesSpecifierProvider *)self _spinnerSpecifierGroup];
  v38[0] = _specifierForError;
  _specifierForSpinner = [(TUIDevicesWithIssuesSpecifierProvider *)self _specifierForSpinner];
  v38[1] = _specifierForSpinner;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

LABEL_23:

  return v24;
}

- (id)_specifierForError
{
  v2 = MEMORY[0x277D3FAD8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRANSPARENCY_PANE_DEVICE_LOADING_ERROR" value:&stru_287F92480 table:@"Localizable"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  [v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];

  return v5;
}

- (id)_specifierForDevice:(id)device
{
  v4 = MEMORY[0x277D3FAD8];
  deviceCopy = device;
  name = [deviceCopy name];
  v7 = [v4 preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  name2 = [deviceCopy name];
  [v7 setProperty:name2 forKey:*MEMORY[0x277D40170]];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v7 setProperty:v9 forKey:*MEMORY[0x277D40140]];

  osVersion = [deviceCopy osVersion];
  [v7 setProperty:osVersion forKey:*MEMORY[0x277D40160]];

  v11 = MEMORY[0x277CBEC38];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v12 = [(TUIDevicesWithIssuesSpecifierProvider *)self _iconURLForDevice:deviceCopy];

  [v7 setProperty:v12 forKey:*MEMORY[0x277D40030]];
  [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];

  return v7;
}

- (id)_specifierForUnknownDevice:(id)device
{
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:device target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"UNKNOWN_DEVICE" value:&stru_287F92480 table:@"Localizable"];
  [v4 setProperty:v6 forKey:*MEMORY[0x277D40170]];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v4 setProperty:v7 forKey:*MEMORY[0x277D40140]];

  [v4 setProperty:&stru_287F92480 forKey:*MEMORY[0x277D40160]];
  v8 = MEMORY[0x277CBEC38];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v9 = [(TUIDevicesWithIssuesSpecifierProvider *)self _iconURLForDevice:0];
  [v4 setProperty:v9 forKey:*MEMORY[0x277D40030]];

  [v4 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];

  return v4;
}

- (id)_iconURLForDevice:(id)device
{
  if (device)
  {
    modelSmallPhotoURL3x = [device modelSmallPhotoURL3x];
  }

  else
  {
    modelSmallPhotoURL3x = @"https://appleid.cdn-apple.com/static/bin/cb2625518626/images/deviceLoading@3x.png";
  }

  v4 = modelSmallPhotoURL3x;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:modelSmallPhotoURL3x];

  return v5;
}

- (void)_updateDevicesWithIssuesList:(id)list
{
  v63 = *MEMORY[0x277D85DE8];
  listCopy = list;
  [(NSMutableArray *)self->_devicesWithIssues removeAllObjects];
  [(NSMutableArray *)self->_unknownDevices removeAllObjects];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_devicesWithIssuesIdentifiers;
  v43 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v43)
  {
    v41 = *v52;
    *&v5 = 138543874;
    v39 = v5;
    v42 = listCopy;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v6;
        kt_hexString = [*(*(&v51 + 1) + 8 * v6) kt_hexString];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v8 = listCopy;
        v9 = [v8 countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v48;
          while (2)
          {
            v12 = 0;
            do
            {
              if (*v48 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v47 + 1) + 8 * v12);
              pushToken = [v13 pushToken];
              if (pushToken && (v15 = pushToken, [v13 pushToken], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", &stru_287F92480), v16, v15, !v17))
              {
                pushToken2 = [v13 pushToken];
                v22 = [pushToken2 isEqualToString:kt_hexString];

                if (v22)
                {
                  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
                  {
                    [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
                  }

                  listCopy = v42;
                  self = selfCopy;
                  v26 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
                  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
                  {
                    v29 = v26;
                    pushToken3 = [v13 pushToken];
                    name = [v13 name];
                    *buf = v39;
                    v56 = selfCopy;
                    v57 = 2114;
                    v58 = pushToken3;
                    v59 = 2114;
                    v60 = name;
                    _os_log_debug_impl(&dword_26F50B000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ device with issue found (%{public}@, %{public}@)", buf, 0x20u);
                  }

                  [(NSMutableArray *)selfCopy->_devicesWithIssues addObject:v13];

                  goto LABEL_31;
                }
              }

              else
              {
                if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
                {
                  [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
                }

                v18 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
                if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
                {
                  v19 = v18;
                  name2 = [v13 name];
                  *buf = 138543618;
                  v56 = selfCopy;
                  v57 = 2114;
                  v58 = name2;
                  _os_log_debug_impl(&dword_26F50B000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ device %{public}@ ignored", buf, 0x16u);
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v47 objects:v61 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
        idms = [(TUIDevicesWithIssuesSpecifierProvider *)selfCopy idms];
        v24 = [idms mapDeviceWithMissing:kt_hexString aaDevices:v8];

        if (v24)
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
          {
            [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
          }

          v25 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
          listCopy = v42;
          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
          {
            v32 = v25;
            pushToken4 = [v24 pushToken];
            name3 = [v24 name];
            *buf = v39;
            v56 = selfCopy;
            v57 = 2114;
            v58 = pushToken4;
            v59 = 2114;
            v60 = name3;
            _os_log_debug_impl(&dword_26F50B000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ device with issues found via fallback (%{public}@, %{public}@)", buf, 0x20u);
          }

          [(NSMutableArray *)selfCopy->_devicesWithIssues addObject:v24];

LABEL_31:
          v27 = v44;
        }

        else
        {
          if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
          {
            [TUIDevicesWithIssuesSpecifierProvider _updateDevicesWithIssuesList:];
          }

          v27 = v44;
          v28 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
          listCopy = v42;
          if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v56 = selfCopy;
            v57 = 2114;
            v58 = kt_hexString;
            _os_log_error_impl(&dword_26F50B000, v28, OS_LOG_TYPE_ERROR, "%{public}@ device with issue not found => adding unknown device (%{public}@)", buf, 0x16u);
          }

          [(NSMutableArray *)selfCopy->_unknownDevices addObject:kt_hexString];
        }

        v6 = v27 + 1;
      }

      while (v6 != v43);
      v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      v43 = v35;
    }

    while (v35);
  }

  if ([(NSMutableArray *)self->_unknownDevices count])
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_61;
    v46[3] = &unk_279DDA9C0;
    v46[4] = self;
    [listCopy enumerateObjectsUsingBlock:v46];
  }

  specifiers = self->_specifiers;
  self->_specifiers = 0;
  v37 = specifiers;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v37 animated:1];
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_52()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_55()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_58()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_61(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
  {
    __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_61_cold_1();
  }

  v6 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v5 pushToken];
    v10 = [v5 name];
    v11 = [v5 deviceID];
    v12 = 138544642;
    v13 = v7;
    v14 = 2048;
    v15 = a3;
    v16 = 2114;
    v17 = v9;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_error_impl(&dword_26F50B000, v8, OS_LOG_TYPE_ERROR, "%{public}@ IdMS device %ld: %{public}@ %{mask.hash}@ %{public}@", &v12, 0x3Eu);
  }
}

uint64_t __70__TUIDevicesWithIssuesSpecifierProvider__updateDevicesWithIssuesList___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)_deviceList
{
  deviceList = self->_deviceList;
  if (!deviceList)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
    {
      [TUIDevicesWithIssuesSpecifierProvider _deviceList];
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
    {
      [(TUIDevicesWithIssuesSpecifierProvider *)self _deviceList];
    }

    v5 = [objc_alloc(MEMORY[0x277CEC7C0]) initWithAccountManager:self->_accountManager];
    v6 = self->_deviceList;
    self->_deviceList = v5;

    [(AADeviceList *)self->_deviceList setDelegate:self];
    deviceList = self->_deviceList;
  }

  return deviceList;
}

uint64_t __52__TUIDevicesWithIssuesSpecifierProvider__deviceList__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)deviceListModified:(id)modified
{
  modifiedCopy = modified;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
  {
    [TUIDevicesWithIssuesSpecifierProvider deviceListModified:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_DEBUG))
  {
    [(TUIDevicesWithIssuesSpecifierProvider *)v5 deviceListModified:modifiedCopy, self];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_70;
  block[3] = &unk_279DDA9E8;
  objc_copyWeak(&v9, &location);
  v8 = modifiedCopy;
  v6 = modifiedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_70(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateDevicesWithIssuesList:*(a1 + 32)];
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_0 != -1)
    {
      __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_70_cold_1();
    }

    v4 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[TUIDevicesWithIssuesSpecifierProvider deviceListModified:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v4, OS_LOG_TYPE_ERROR, "%s, block required strong self is nil", &v5, 0xCu);
    }
  }
}

uint64_t __60__TUIDevicesWithIssuesSpecifierProvider_deviceListModified___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_0 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAccountManager:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[TUIDevicesWithIssuesSpecifierProvider initWithAccountManager:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_26F50B000, a2, OS_LOG_TYPE_ERROR, "%s not supported on %{public}@", &v2, 0x16u);
}

- (void)_deviceList
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ getting device list...", &v2, 0xCu);
}

- (void)deviceListModified:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 136315650;
  v7 = "[TUIDevicesWithIssuesSpecifierProvider deviceListModified:]";
  v8 = 1024;
  v9 = [a2 count];
  v10 = 2114;
  v11 = a3;
  _os_log_debug_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEBUG, "%s devices count = %d on %{public}@", &v6, 0x1Cu);
}

@end