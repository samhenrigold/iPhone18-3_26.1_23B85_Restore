@interface CCUILowPowerModuleViewController
- (BOOL)isEAconnected;
- (CCUILowPowerModuleViewController)init;
- (id)_makeLocalizedMenuItem:(id)item handler:(id)handler;
- (id)glyphPackageDescription;
- (id)glyphState;
- (void)_configureMenu;
- (void)_observeSystemNotifications;
- (void)_unobserveSystemNotifications;
- (void)_updateState;
- (void)dealloc;
- (void)reconfigureView;
- (void)refreshStateAnimated:(BOOL)animated;
- (void)setLowPowerMode:(BOOL)mode;
- (void)setMobileChargeMode:(BOOL)mode;
- (void)toggleLowPowerMode;
- (void)toggleMobileChargeMode;
- (void)viewDidLoad;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation CCUILowPowerModuleViewController

- (CCUILowPowerModuleViewController)init
{
  v16.receiver = self;
  v16.super_class = CCUILowPowerModuleViewController;
  v2 = [(CCUILowPowerModuleViewController *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC57F8]);
    lowPowerMode = v2->_lowPowerMode;
    v2->_lowPowerMode = v3;

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v7 = qword_2A1A12990;
    v21 = qword_2A1A12990;
    if (!qword_2A1A12990)
    {
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 3221225472;
      v17[2] = sub_29C9CFFC0;
      v17[3] = &unk_29F33D060;
      v17[4] = &v18;
      sub_29C9CFFC0(v17, v5, v6);
      v7 = v19[3];
    }

    v8 = v7;
    _Block_object_dispose(&v18, 8);
    v9 = [v7 alloc];
    v11 = objc_msgSend_initWithClientName_(v9, v10, @"BatteryModule");
    smartChargeClient = v2->_smartChargeClient;
    v2->_smartChargeClient = v11;

    objc_msgSend__observeSystemNotifications(v2, v13, v14);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend__unobserveSystemNotifications(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CCUILowPowerModuleViewController;
  [(CCUILowPowerModuleViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CCUILowPowerModuleViewController;
  [(CCUIMenuModuleViewController *)&v6 viewDidLoad];
  objc_msgSend_reconfigureView(self, v3, v4);
  objc_msgSend_refreshStateAnimated_(self, v5, 0);
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  v9.receiver = self;
  v9.super_class = CCUILowPowerModuleViewController;
  [(CCUIMenuModuleViewController *)&v9 willTransitionToExpandedContentMode:mode];
  v6 = objc_msgSend_glyphPackageDescription(self, v4, v5);
  objc_msgSend_setGlyphPackageDescription_(self, v7, v6);

  objc_msgSend_refreshStateAnimated_(self, v8, 0);
}

- (void)reconfigureView
{
  v4 = objc_msgSend_glyphPackageDescription(self, a2, v2);
  objc_msgSend_setGlyphPackageDescription_(self, v5, v4);

  v6 = MEMORY[0x29EDB9F48];
  v7 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v6, v8, v7);
  v11 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"CONTROL_CENTER_TITLE", &stru_2A23EED98, 0);
  objc_msgSend_setTitle_(self, v12, v11);

  objc_msgSend_setIndentation_(self, v13, 1);

  MEMORY[0x2A1C70FE8](self, sel_setUseTrailingCheckmarkLayout_, 1);
}

- (void)refreshStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C9CF2AC;
  v14[3] = &unk_29F33CFE8;
  v14[4] = self;
  v7 = MEMORY[0x29ED504A0](v14, a2);
  if (animatedCopy)
  {
    v8 = MEMORY[0x29EDC0CB0];
    v9 = objc_msgSend_viewIfLoaded(self, v5, v6);
    v12 = objc_msgSend_window(v9, v10, v11);
    objc_msgSend_performWithoutAnimationWhileHiddenInWindow_actions_(v8, v13, v12, v7);
  }

  else
  {
    objc_msgSend_performWithoutAnimation_(MEMORY[0x29EDC7DA0], v5, v7);
  }
}

- (id)_makeLocalizedMenuItem:(id)item handler:(id)handler
{
  v5 = MEMORY[0x29EDB9F48];
  handlerCopy = handler;
  itemCopy = item;
  v8 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v5, v9, v8);
  v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, itemCopy, &stru_2A23EED98, 0);

  v13 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v15 = objc_msgSend_initWithTitle_identifier_handler_(v13, v14, v12, v12, handlerCopy);

  return v15;
}

- (void)_configureMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = sub_29C9CF640;
  v36[3] = &unk_29F33D010;
  objc_copyWeak(&v37, &location);
  v5 = objc_msgSend__makeLocalizedMenuItem_handler_(self, v4, @"CONTROL_CENTER_TITLE", v36);
  isSelected = objc_msgSend_isSelected(self, v6, v7);
  objc_msgSend_setSelected_(v5, v9, isSelected);
  objc_msgSend_addObject_(v3, v10, v5);
  smartChargeClient = self->_smartChargeClient;
  v35 = 0;
  isMCMCurrentlyEnabled = objc_msgSend_isMCMCurrentlyEnabled_(smartChargeClient, v12, &v35);
  v16 = v35;
  if (v16)
  {
    v17 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
    {
      sub_29C9D01F0(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    if (objc_msgSend_isEAconnected(self, v14, v15))
    {
      v30 = MEMORY[0x29EDCA5F8];
      v31 = 3221225472;
      v32 = sub_29C9CF674;
      v33 = &unk_29F33D010;
      objc_copyWeak(&v34, &location);
      v27 = objc_msgSend__makeLocalizedMenuItem_handler_(self, v26, @"MENU_MCM_DISABLE", &v30);
      objc_msgSend_setSelected_(v27, v28, isMCMCurrentlyEnabled == 2, v30, v31, v32, v33);
      objc_msgSend_addObject_(v3, v29, v27);

      objc_destroyWeak(&v34);
    }

    objc_msgSend_setMenuItems_(self, v25, v3);
  }

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (id)glyphPackageDescription
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = @"LowPower";
  if (v2)
  {
    v3 = @"LowPower_IC";
  }

  v4 = MEMORY[0x29EDC0CA0];
  v5 = MEMORY[0x29EDB9F48];
  v6 = v3;
  v7 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v5, v8, v7);
  v11 = objc_msgSend_descriptionForPackageNamed_inBundle_(v4, v10, v6, v9);

  objc_msgSend_setFlipsForRightToLeftLayoutDirection_(v11, v12, 1);

  return v11;
}

- (id)glyphState
{
  if (objc_msgSend_appearsSelected(self, a2, v2))
  {
    return @"enabled";
  }

  else
  {
    return @"disabled";
  }
}

- (BOOL)isEAconnected
{
  smartChargeClient = self->_smartChargeClient;
  v5 = 0;
  shouldMCMBeDisplayed = objc_msgSend_shouldMCMBeDisplayed_(smartChargeClient, a2, &v5);
  return (v5 == 0) & shouldMCMBeDisplayed;
}

- (void)_observeSystemNotifications
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], a2, v2);
  objc_msgSend_addObserver_selector_name_object_(v4, v5, self, sel__updateState, *MEMORY[0x29EDB9F00], 0);

  v8 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v6, v7);
  v11 = sub_29C9CF92C(v8, v9, v10);
  objc_msgSend_addObserver_selector_name_object_(v8, v12, self, sel__updateState, v11, 0);

  v16 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v13, v14);
  objc_msgSend_addObserver_selector_name_object_(v16, v15, self, sel__updateForDarkerSystemColorsChange, *MEMORY[0x29EDC7EB0], 0);
}

- (void)_unobserveSystemNotifications
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, *MEMORY[0x29EDB9F00], 0);

  v8 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v6, v7);
  v11 = sub_29C9CF92C(v8, v9, v10);
  objc_msgSend_removeObserver_name_object_(v8, v12, self, v11, 0);

  v16 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v13, v14);
  objc_msgSend_removeObserver_name_object_(v16, v15, self, *MEMORY[0x29EDC7EB0], 0);
}

- (void)_updateState
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9CFB78;
  block[3] = &unk_29F33CFE8;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

- (void)toggleLowPowerMode
{
  v4 = objc_msgSend_isSelected(self, a2, v2) ^ 1;

  MEMORY[0x2A1C70FE8](self, sel_setLowPowerMode_, v4);
}

- (void)setLowPowerMode:(BOOL)mode
{
  modeCopy = mode;
  if (objc_msgSend_isSelected(self, a2, mode) != mode)
  {
    objc_initWeak(&location, self);
    lowPowerMode = self->_lowPowerMode;
    v6 = *MEMORY[0x29EDC5800];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = sub_29C9CFCC8;
    v8[3] = &unk_29F33D038;
    v10 = modeCopy;
    objc_copyWeak(&v9, &location);
    objc_msgSend_setPowerMode_fromSource_withCompletion_(lowPowerMode, v7, modeCopy, v6, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)toggleMobileChargeMode
{
  smartChargeClient = self->_smartChargeClient;
  v15 = 0;
  isMCMCurrentlyEnabled = objc_msgSend_isMCMCurrentlyEnabled_(smartChargeClient, a2, &v15);
  v6 = v15;
  if (v6)
  {
    v7 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
    {
      sub_29C9D01F0(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    objc_msgSend_setMobileChargeMode_(self, v5, isMCMCurrentlyEnabled != 1);
  }
}

- (void)setMobileChargeMode:(BOOL)mode
{
  smartChargeClient = self->_smartChargeClient;
  if (mode)
  {
    v15 = 0;
    v4 = &v15;
    objc_msgSend_enableMCM_(smartChargeClient, a2, &v15);
  }

  else
  {
    v14 = 0;
    v4 = &v14;
    objc_msgSend_temporarilyDisableMCM_(smartChargeClient, a2, &v14);
  }

  v5 = *v4;
  if (v5)
  {
    v6 = *MEMORY[0x29EDC0C88];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_ERROR))
    {
      sub_29C9D02A0(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

@end