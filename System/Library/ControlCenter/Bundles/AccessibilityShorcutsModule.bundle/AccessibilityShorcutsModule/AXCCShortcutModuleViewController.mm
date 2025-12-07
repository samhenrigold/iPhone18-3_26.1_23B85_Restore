@interface AXCCShortcutModuleViewController
- (AXCCShortcutModuleViewControllerDelegate)shortcutDelegate;
- (BOOL)_hasScreenSwitch;
- (CCUIToggleModule)module;
- (id)_menuItemForOption:(id)option;
- (id)_menuItemOpenAccessibilityShortcutSettings;
- (id)_titlesForVisibleShortcuts;
- (id)contentModuleContext;
- (void)_launchAccessibilityReader;
- (void)_toggleOption:(int64_t)option;
- (void)_updateShortcutActions:(BOOL)actions;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation AXCCShortcutModuleViewController

- (void)viewDidLoad
{
  v67 = *MEMORY[0x29EDCA608];
  v56.receiver = self;
  v56.super_class = AXCCShortcutModuleViewController;
  [(CCUIMenuModuleViewController *)&v56 viewDidLoad];
  self->_suppressGuidedAccess = 1;
  v3 = MEMORY[0x29EDB9F48];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v8 = objc_msgSend_imageNamed_inBundle_(MEMORY[0x29EDC7AC8], v7, @"AccessibilityIcon", v6);
  objc_msgSend_setGlyphImage_(self, v9, v8);
  if (AXIsInternalInstall() && (AXCurrentRootLooksLikeBNI() & 1) == 0)
  {
    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AXCurrentRootDescription();
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_29C92C000, v12, OS_LOG_TYPE_DEFAULT, "This device is running with an Accessibility root: %@", &buf, 0xCu);
    }

    v14 = MEMORY[0x29EDBA0F8];
    v10 = sub_29C92D6A0(@"ask.sheet.title");
    v15 = AXCurrentRootDescription();
    v17 = objc_msgSend_stringWithFormat_(v14, v16, @"%@\nInternal Only:\n %@", v10, v15);
    objc_msgSend_setTitle_(self, v18, v17);
  }

  else
  {
    v10 = sub_29C92D6A0(@"ask.sheet.title");
    objc_msgSend_setTitle_(self, v11, v10);
  }

  objc_msgSend__updateShortcutActions(self, v19, v20);
  v21 = *MEMORY[0x29EDC83E8];
  v62[0] = *MEMORY[0x29EDC83E0];
  v62[1] = v21;
  v22 = *MEMORY[0x29EDC8538];
  v62[2] = *MEMORY[0x29EDC8478];
  v62[3] = v22;
  v23 = *MEMORY[0x29EDC84E8];
  v62[4] = *MEMORY[0x29EDC8558];
  v62[5] = v23;
  v24 = *MEMORY[0x29EDC8510];
  v62[6] = *MEMORY[0x29EDC8410];
  v62[7] = v24;
  v25 = *MEMORY[0x29EDC8418];
  v62[8] = *MEMORY[0x29EDC8400];
  v62[9] = v25;
  v26 = *MEMORY[0x29EDC8408];
  v62[10] = *MEMORY[0x29EDC84E0];
  v62[11] = v26;
  v27 = *MEMORY[0x29EDC8490];
  v62[12] = *MEMORY[0x29EDC84B0];
  v62[13] = v27;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v28, v62, 14);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v29 = v53 = 0u;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v52, v61, 16);
  if (v31)
  {
    v32 = *v53;
    do
    {
      v33 = 0;
      do
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v52 + 1) + 8 * v33);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_29C92D734, v34, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v36, &v52, v61, 16);
    }

    while (v31);
  }

  objc_initWeak(&location, self);
  v39 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDFA0], v37, v38);
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3221225472;
  v49[2] = sub_29C92D73C;
  v49[3] = &unk_29F334638;
  objc_copyWeak(&v50, &location);
  objc_msgSend_registerUpdateBlock_forRetrieveSelector_withListener_(v39, v40, v49, sel_touchAccommodationsEnabled, self);

  v57 = 0;
  v58 = &v57;
  v59 = 0x2050000000;
  v41 = qword_2A1798628;
  v60 = qword_2A1798628;
  if (!qword_2A1798628)
  {
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 3221225472;
    v64 = sub_29C92E610;
    v65 = &unk_29F334748;
    v66 = &v57;
    sub_29C92E610(&buf);
    v41 = v58[3];
  }

  v42 = v41;
  _Block_object_dispose(&v57, 8);
  v45 = objc_msgSend_sharedInstance(v41, v43, v44);
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = sub_29C92D77C;
  v47[3] = &unk_29F334638;
  objc_copyWeak(&v48, &location);
  objc_msgSend_registerUpdateBlock_forRetrieveSelector_withListener_(v45, v46, v47, sel_comfortSoundsEnabled, self);

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = AXCCShortcutModuleViewController;
  [(AXCCShortcutModuleViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C92D8CC;
  v10[3] = &unk_29F334660;
  v10[4] = self;
  coordinatorCopy = coordinator;
  objc_msgSend_animateAlongsideTransition_completion_(coordinatorCopy, v8, v10, 0);
  v9.receiver = self;
  v9.super_class = AXCCShortcutModuleViewController;
  [(CCUIMenuModuleViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_updateShortcutActions:(BOOL)actions
{
  v32 = *MEMORY[0x29EDCA608];
  if (self->_moduleNeedsLiveUpdates || actions)
  {
    v4 = objc_msgSend_visibleShortcuts(self, a2, actions);
    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if (objc_msgSend_count(v4, v6, v7))
    {
      objc_msgSend_setIndentation_(self, v8, 2);
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = v4;
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v31, 16);
      if (v11)
      {
        v13 = v11;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = objc_msgSend__menuItemForOption_(self, v12, *(*(&v27 + 1) + 8 * i), v27);
            objc_msgSend_addObject_(v5, v17, v16);
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v27, v31, 16);
        }

        while (v13);
      }
    }

    else
    {
      objc_msgSend_setIndentation_(self, v8, 0);
      v9 = objc_msgSend__menuItemOpenAccessibilityShortcutSettings(self, v18, v19);
      objc_msgSend_addObject_(v5, v20, v9);
    }

    objc_msgSend_setMenuItems_(self, v21, v5);
    v24 = objc_msgSend_shortcutDelegate(self, v22, v23);
    objc_msgSend_optionToggled(v24, v25, v26);
  }
}

- (id)_menuItemOpenAccessibilityShortcutSettings
{
  objc_initWeak(&location, self);
  v2 = sub_29C92D6A0(@"open.settings.accessibility.shortcuts");
  v3 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C92DBB4;
  v7[3] = &unk_29F334688;
  objc_copyWeak(&v8, &location);
  v5 = objc_msgSend_initWithTitle_identifier_handler_(v3, v4, v2, v2, v7);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

- (id)_menuItemForOption:(id)option
{
  optionCopy = option;
  v5 = MEMORY[0x29EDBDFB8];
  v8 = objc_msgSend_intValue(optionCopy, v6, v7);
  v10 = objc_msgSend_titleForTripleClickOption_(v5, v9, v8);
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = sub_29C92DD68;
  v23[3] = &unk_29F3346B0;
  objc_copyWeak(&v25, &location);
  v12 = optionCopy;
  v24 = v12;
  v14 = objc_msgSend_initWithTitle_identifier_handler_(v11, v13, v10, v10, v23);
  v15 = MEMORY[0x29EDBDFB8];
  v18 = objc_msgSend_intValue(v12, v16, v17);
  v20 = objc_msgSend_valueForTripleClickOption_(v15, v19, v18);
  objc_msgSend_setSelected_(v14, v21, v20);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v14;
}

- (id)_titlesForVisibleShortcuts
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, v2);
  v7 = objc_msgSend_visibleShortcuts(self, v5, v6);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = MEMORY[0x29EDBDFB8];
        v16 = objc_msgSend_intValue(*(*(&v21 + 1) + 8 * i), v10, v11);
        v18 = objc_msgSend_titleForTripleClickOption_(v15, v17, v16);
        objc_msgSend_addObject_(v4, v19, v18);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v21, v25, 16);
    }

    while (v12);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AXCCShortcutModuleViewController;
  [(CCUIMenuModuleViewController *)&v6 viewWillAppear:appear];
  self->_moduleNeedsLiveUpdates = 1;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C92E09C;
  block[3] = &unk_29F3346D8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = AXCCShortcutModuleViewController;
  [(CCUIMenuModuleViewController *)&v4 viewDidDisappear:disappear];
  self->_moduleNeedsLiveUpdates = 0;
}

- (void)_toggleOption:(int64_t)option
{
  if (option == 44)
  {
    objc_msgSend__launchAccessibilityReader(self, a2, 44);
  }

  else
  {
    objc_msgSend_toggleTripleClickOption_(MEMORY[0x29EDBDFB8], a2, option);
  }

  v8 = objc_msgSend_shortcutDelegate(self, v4, v5);
  objc_msgSend_optionToggled(v8, v6, v7);
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = AXCCShortcutModuleViewController;
  [(CCUIMenuModuleViewController *)&v12 willTransitionToExpandedContentMode:?];
  if (modeCopy)
  {
    objc_msgSend_setSelected_(self, v5, 0);
  }

  else
  {
    v7 = objc_msgSend_module(self, v5, v6);
    isSelected = objc_msgSend_isSelected(v7, v8, v9);
    objc_msgSend_setSelected_(self, v11, isSelected);
  }
}

- (BOOL)_hasScreenSwitch
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x29EDBDFA0], a2, v2);
  v6 = objc_msgSend_assistiveTouchSwitches(v3, v4, v5);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C92E390;
  v10[3] = &unk_29F334700;
  v10[4] = &v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v7, v10);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v6 = objc_msgSend_shortcutDelegate(self, a2, tapped, event);
  objc_msgSend_expandModule(v6, v4, v5);
}

- (void)_launchAccessibilityReader
{
  v3 = objc_msgSend_server(MEMORY[0x29EDBDFA8], a2, v2);
  objc_msgSend_showControlCenter_(v3, v4, 0);

  v5.n128_u64[0] = 0.5;

  MEMORY[0x2A1C5E680](&unk_2A23DFC10, v5);
}

- (id)contentModuleContext
{
  WeakRetained = objc_loadWeakRetained(&self->_contentModuleContext);

  return WeakRetained;
}

- (CCUIToggleModule)module
{
  WeakRetained = objc_loadWeakRetained(&self->_module);

  return WeakRetained;
}

- (AXCCShortcutModuleViewControllerDelegate)shortcutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shortcutDelegate);

  return WeakRetained;
}

@end