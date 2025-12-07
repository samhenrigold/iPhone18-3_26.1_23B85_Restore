@interface PSGNfcController
- (BOOL)_setNfcEnable:(BOOL)enable;
- (id)nfcEnable;
- (id)specifiers;
- (void)_disableNfcRadio;
- (void)_enableNfcRadio;
- (void)_refreshFooterForSpecifier:(id)specifier;
- (void)_refreshNfcRadioStateSetting;
- (void)_updateHwStateChange;
- (void)dealloc;
- (void)didChangeRadioState:(BOOL)state;
- (void)hardwareStateDidChange;
- (void)nfcEnable;
- (void)setNfcEnable:(id)enable specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PSGNfcController

- (void)dealloc
{
  mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
  [mEMORY[0x277D2C840] unregisterEventListener:self];

  v4.receiver = self;
  v4.super_class = PSGNfcController;
  [(PSGNfcController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
  [mEMORY[0x277D2C840] registerEventListener:self];
  -[PSGNfcController setHwState:](self, "setHwState:", [mEMORY[0x277D2C840] getHwSupport]);
  v4.receiver = self;
  v4.super_class = PSGNfcController;
  [(PSGNfcController *)&v4 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/NFC_LINK"];
  v6 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = PSG_BundleForGeneralSettingsUIFramework(currentLocale);
  bundleURL = [v8 bundleURL];
  v10 = [v6 initWithKey:@"NFC" table:@"Nfc" locale:currentLocale bundleURL:bundleURL];

  general_rootPaneComponent = [MEMORY[0x277CCAEB8] general_rootPaneComponent];
  v14[0] = general_rootPaneComponent;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(PSGNfcController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.contactless-and-nfc" title:v10 localizedNavigationComponents:v12 deepLink:v5];

  v13.receiver = self;
  v13.super_class = PSGNfcController;
  [(PSGNfcController *)&v13 viewDidAppear:appearCopy];
}

- (id)specifiers
{
  [(PSGNfcController *)self _updateHwStateChange];
  hwState = [(PSGNfcController *)self hwState];
  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (v5)
  {
    v6 = [v5 specifierForID:@"NFC"];
    v7 = v6;
    if (hwState == 2)
    {
      restrictedFeature = [(PSGNfcController *)self restrictedFeature];
      if (!restrictedFeature)
      {
        v19 = *MEMORY[0x277D3FF38];
        v20 = MEMORY[0x277CBEC38];
        goto LABEL_12;
      }

      v9 = _PSGLoggingFacility(restrictedFeature);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v10 = "NFC feature not allowed";
        v11 = &v24;
LABEL_9:
        _os_log_impl(&dword_21CF20000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      v9 = _PSGLoggingFacility(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "NFC hardware not ready";
        v11 = buf;
        goto LABEL_9;
      }
    }

    v19 = *MEMORY[0x277D3FF38];
    v20 = MEMORY[0x277CBEC28];
LABEL_12:
    [v7 setObject:v20 forKeyedSubscript:{v19, v24}];
    goto LABEL_13;
  }

  v12 = hwState == 2;
  v13 = [(PSGNfcController *)self loadSpecifiersFromPlistName:@"Nfc" target:self];
  v14 = *(&self->super.super.super.super.super.isa + v4);
  *(&self->super.super.super.super.super.isa + v4) = v13;

  v15 = [*(&self->super.super.super.super.super.isa + v4) specifierForID:@"NFC_GROUP_ID"];
  groupSpecifier = self->_groupSpecifier;
  self->_groupSpecifier = v15;

  v7 = [*(&self->super.super.super.super.super.isa + v4) specifierForID:@"NFC"];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  -[PSGNfcController setRestrictedFeature:](self, "setRestrictedFeature:", [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25FB0]]);

  v18 = [MEMORY[0x277CCABB0] numberWithInt:{v12 & ~-[PSGNfcController restrictedFeature](self, "restrictedFeature")}];
  [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [(PSGNfcController *)self _refreshFooterForSpecifier:self->_groupSpecifier];
LABEL_13:
  v21 = *(&self->super.super.super.super.super.isa + v4);
  v22 = v21;

  return v21;
}

- (id)nfcEnable
{
  if ([(PSGNfcController *)self hwState]== 2)
  {
    mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
    v10 = 0;
    v3 = [mEMORY[0x277D2C840] getRadioEnabledState:&v10];
    v4 = v3;
    if (v3)
    {
      v5 = _PSGLoggingFacility(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(PSGNfcController *)v4 nfcEnable];
      }

      v6 = MEMORY[0x277CCABB0];
      v7 = 0;
    }

    else
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v10 == 1;
    }

    v8 = [v6 numberWithBool:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  }

  return v8;
}

- (void)_refreshNfcRadioStateSetting
{
  v3 = [(PSGNfcController *)self specifierForID:@"NFC"];
  [(PSGNfcController *)self reloadSpecifier:v3];
}

- (BOOL)_setNfcEnable:(BOOL)enable
{
  enableCopy = enable;
  mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
  v5 = [mEMORY[0x277D2C840] setRadioEnabledSetting:enableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = _PSGLoggingFacility(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PSGNfcController *)v6 _setNfcEnable:v7];
    }
  }

  return v6 == 0;
}

- (void)_enableNfcRadio
{
  [(PSGNfcController *)self _setNfcEnable:1];

  [(PSGNfcController *)self _refreshNfcRadioStateSetting];
}

- (void)_disableNfcRadio
{
  [(PSGNfcController *)self _setNfcEnable:0];

  [(PSGNfcController *)self _refreshNfcRadioStateSetting];
}

- (void)setNfcEnable:(id)enable specifier:(id)specifier
{
  v28 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  bOOLValue = [enable BOOLValue];
  v8 = bOOLValue;
  v9 = _PSGLoggingFacility(bOOLValue);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = specifierCopy;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&dword_21CF20000, v9, OS_LOG_TYPE_DEFAULT, "Specifier=%{public}@, Enable=%d", buf, 0x12u);
  }

  if (v8)
  {
    [(PSGNfcController *)self _enableNfcRadio];
  }

  else
  {
    v10 = MEMORY[0x277D75110];
    v11 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_TITLE");
    v12 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_DESCRIPTION");
    v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

    v14 = MEMORY[0x277D750F8];
    v15 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_OK");
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__PSGNfcController_setNfcEnable_specifier___block_invoke;
    v23[3] = &unk_278325290;
    v23[4] = self;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v23];
    [v13 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = PSG_LocalizedStringForNFC(@"NFC_RADIO_DISABLE_CONFIRMATION_CANCEL");
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__PSGNfcController_setNfcEnable_specifier___block_invoke_2;
    v22[3] = &unk_278325290;
    v22[4] = self;
    v19 = [v17 actionWithTitle:v18 style:1 handler:v22];
    [v13 addAction:v19];

    v21 = _PSGLoggingFacility(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v21, OS_LOG_TYPE_DEFAULT, "Showing confirmation for NFC radio disable.", buf, 2u);
    }

    [(PSGNfcController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)_refreshFooterForSpecifier:(id)specifier
{
  v4 = MEMORY[0x277CCAB68];
  specifierCopy = specifier;
  v7 = [v4 stringWithString:@"NFC_FOOTER_BASE"];
  v6 = PSG_LocalizedStringForNFC(v7);
  [specifierCopy setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

  [(PSGNfcController *)self reloadSpecifier:specifierCopy];
}

- (void)_updateHwStateChange
{
  if ([(PSGNfcController *)self hwState]!= 4 && [(PSGNfcController *)self hwState]!= 2)
  {
    mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
    -[PSGNfcController setHwState:](self, "setHwState:", [mEMORY[0x277D2C840] getHwSupport]);
  }
}

- (void)didChangeRadioState:(BOOL)state
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PSGNfcController_didChangeRadioState___block_invoke;
  block[3] = &unk_278325570;
  objc_copyWeak(&v5, &location);
  stateCopy = state;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__PSGNfcController_didChangeRadioState___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 specifierForID:@"NFC"];
  v12 = [v2 indexPathForSpecifier:v3];

  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained table];
  v6 = [v5 cellForRowAtIndexPath:v12];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [v8 control];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setOn:*(a1 + 40)];
}

- (void)hardwareStateDidChange
{
  hwState = [(PSGNfcController *)self hwState];
  [(PSGNfcController *)self _updateHwStateChange];
  if (hwState != 4 && hwState != [(PSGNfcController *)self hwState])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PSGNfcController_hardwareStateDidChange__block_invoke;
    block[3] = &unk_278324EE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __42__PSGNfcController_hardwareStateDidChange__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) specifierForID:@"NFC"];
  v2 = [*(a1 + 32) hwState] == 2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{v2 & ~objc_msgSend(*(a1 + 32), "restrictedFeature")}];
  [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  [*(a1 + 32) _refreshNfcRadioStateSetting];
}

- (void)nfcEnable
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "Fetch NFC status error: %{public}@", &v2, 0xCu);
}

- (void)_setNfcEnable:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "Setting NFC status error: %{public}@", &v2, 0xCu);
}

@end