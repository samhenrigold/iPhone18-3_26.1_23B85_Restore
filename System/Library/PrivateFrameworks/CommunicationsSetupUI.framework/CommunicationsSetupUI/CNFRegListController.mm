@interface CNFRegListController
- (BOOL)_handleURLDictionary:(id)dictionary;
- (BOOL)_showWiFiAlertIfNecessary;
- (CNFRegListController)initWithParentController:(id)controller;
- (CNFRegListController)initWithRegController:(id)controller;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_existingLabelForSection:(int64_t)section header:(BOOL)header;
- (id)_existingLabelForSpecifier:(id)specifier header:(BOOL)header;
- (id)specifierList;
- (id)specifiers;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_performAppearBlock;
- (void)_setLabel:(id)label forSpecifier:(id)specifier header:(BOOL)header;
- (void)_setSpecifierEnabled:(id)enabled enabled:(BOOL)a4 animated:(BOOL)animated;
- (void)_setupEventHandlers;
- (void)_updateExistingLabelForSpecifier:(id)specifier header:(BOOL)header;
- (void)_updateTableLabel:(id)label withTableView:(id)view isTopMostHeader:(BOOL)header;
- (void)_updateTitle;
- (void)applicationDidResume;
- (void)changePasswordControllerDidFinish:(id)finish withAppleID:(id)d authID:(id)iD authToken:(id)token;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)loadView;
- (void)removeAllHandlers;
- (void)setAppearBlock:(id)block;
- (void)setSpecifier:(id)specifier;
- (void)showAuthKitSignInIfNecessary;
- (void)systemApplicationDidBecomeActive;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)systemApplicationWillResignActive;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNFRegListController

- (CNFRegListController)initWithRegController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CNFRegListController;
  v5 = [(CNFRegListController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CNFRegListController *)v5 setRegController:controllerCopy];
    if ((CNFRegGlobalAppearanceStyle() - 5) <= 1)
    {
      [(CNFRegListController *)v6 setEdgeToEdgeCells:1];
    }
  }

  return v6;
}

- (CNFRegListController)initWithParentController:(id)controller
{
  controllerCopy = controller;
  regController = [controllerCopy regController];
  v6 = [(CNFRegListController *)self initWithRegController:regController];

  if (v6)
  {
    rootController = [controllerCopy rootController];
    [(CNFRegListController *)v6 setRootController:rootController];

    [(CNFRegListController *)v6 setParentController:controllerCopy];
    specifier = [controllerCopy specifier];
    [(CNFRegListController *)v6 setSpecifier:specifier];
  }

  return v6;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(CNFRegListController *)self _existingLabelForSpecifier:v9 header:1];
        [v10 clearSpecifier];
        v11 = [(CNFRegListController *)self _existingLabelForSpecifier:v9 header:0];
        [v11 clearSpecifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12.receiver = self;
  v12.super_class = CNFRegListController;
  [(CNFRegListController *)&v12 dealloc];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = CNFRegListController;
  [(CNFRegListController *)&v10 setSpecifier:specifierCopy];
  regController = [(CNFRegListController *)self regController];

  if (!regController)
  {
    v7 = [specifierCopy propertyForKey:@"ft-serviceType"];
    v8 = +[CNFRegController controllerForServiceType:](CNFRegController, "controllerForServiceType:", [v7 integerValue]);
    [(CNFRegListController *)self setRegController:v8];
  }

  regController2 = [(CNFRegListController *)self regController];

  if (!regController2)
  {
    [(CNFRegListController *)a2 setSpecifier:?];
  }
}

- (id)specifiers
{
  specifierList = [(CNFRegListController *)self specifierList];
  [(CNFRegListController *)self _updateTitle];

  return specifierList;
}

- (id)specifierList
{
  v4.receiver = self;
  v4.super_class = CNFRegListController;
  specifiers = [(CNFRegListController *)&v4 specifiers];

  return specifiers;
}

- (void)_updateTitle
{
  v8 = *MEMORY[0x277D85DE8];
  customTitle = [(CNFRegListController *)self customTitle];
  if (customTitle)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = customTitle;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Setting custom title: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v5 = customTitle;
      IMLogString();
    }

    [(CNFRegListController *)self setTitle:customTitle, v5];
  }
}

- (void)setAppearBlock:(id)block
{
  blockCopy = block;
  if (self->_appearBlock != blockCopy)
  {
    v7 = blockCopy;
    v5 = [blockCopy copy];
    appearBlock = self->_appearBlock;
    self->_appearBlock = v5;

    blockCopy = v7;
    if (v7)
    {
      if (self->_appeared)
      {
        [(CNFRegListController *)self performSelector:sel__performAppearBlock withObject:0 afterDelay:0.0];
        blockCopy = v7;
      }
    }
  }
}

- (void)_performAppearBlock
{
  appearBlock = [(CNFRegListController *)self appearBlock];
  [(CNFRegListController *)self setAppearBlock:0];
  v3 = appearBlock;
  if (appearBlock)
  {
    (*(appearBlock + 16))(appearBlock);
    v3 = appearBlock;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v17 = *MEMORY[0x277D85DE8];
  regController = [(CNFRegListController *)self regController];
  v6 = CNFRegCurrentStringTableMatchesType([regController serviceType]);

  if (!v6)
  {
    regController2 = [(CNFRegListController *)self regController];
    CNFRegSetStringTableForServiceType([regController2 serviceType]);

    [(CNFRegListController *)self reloadSpecifiers];
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEBUG, "CNFRegListController: ViewWillAppear: Updating the string table and reloading specifiers.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v14.receiver = self;
  v14.super_class = CNFRegListController;
  [(CNFRegListController *)&v14 viewWillAppear:appearCopy];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"not ";
    if (appearCopy)
    {
      v10 = &stru_2856D3978;
    }

    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEBUG, "View will appear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = @"not ";
    if (appearCopy)
    {
      v11 = &stru_2856D3978;
    }

    v13 = v11;
    IMLogString();
  }

  if ([(CNFRegListController *)self wantsWiFiChooser])
  {
    regController3 = [(CNFRegListController *)self regController];
    [regController3 startRequiringWifi];
  }

  [(CNFRegListController *)self setShowingChildController:0];
  self->_appeared = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = CNFRegListController;
  [(CNFRegListController *)&v12 viewDidAppear:?];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEBUG, "View did appear, adding listener", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  if (([mEMORY[0x277D192A8] isActive] & 1) == 0)
  {
    [mEMORY[0x277D192A8] setActive:1];
  }

  [mEMORY[0x277D192A8] addListener:self];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"not ";
    if (appearCopy)
    {
      v8 = &stru_2856D3978;
    }

    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEBUG, "View did appear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"not ";
    if (appearCopy)
    {
      v9 = &stru_2856D3978;
    }

    v11 = v9;
    IMLogString();
  }

  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) && [(CNFRegListController *)self shouldRerootPreferences])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D400A8] object:0];
    [(CNFRegListController *)self setShouldRerootPreferences:0];
  }

  [(CNFRegListController *)self _performAppearBlock];
  self->_appeared = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = CNFRegListController;
  [(CNFRegListController *)&v12 viewWillDisappear:?];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEBUG, "View will disappear, removing listener", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"not ";
    if (disappearCopy)
    {
      v8 = &stru_2856D3978;
    }

    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEBUG, "View will disappear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"not ";
    if (disappearCopy)
    {
      v9 = &stru_2856D3978;
    }

    v11 = v9;
    IMLogString();
  }

  if ([(CNFRegListController *)self wantsWiFiChooser])
  {
    regController = [(CNFRegListController *)self regController];
    [regController stopRequiringWifi];
  }

  [(CNFRegListController *)self setAppearBlock:0];
  self->_appeared = 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = CNFRegListController;
  [(CNFRegListController *)&v7 viewDidDisappear:?];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"not ";
    if (disappearCopy)
    {
      v6 = &stru_2856D3978;
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEBUG, "View did disappear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  self->_appeared = 0;
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CNFRegListController;
  [(CNFRegListController *)&v3 applicationDidResume];
  [(CNFRegListController *)self _performAppearBlock];
}

- (void)systemApplicationDidEnterBackground
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidEnterBackground", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationWillEnterForeground
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationWillEnterForeground", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationDidBecomeActive
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidBecomeActive", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationWillResignActive
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationWillResignActive", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationDidSuspend
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidSuspend", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationDidResume
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidResume", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (BOOL)_showWiFiAlertIfNecessary
{
  v32 = *MEMORY[0x277D85DE8];
  regController = [(CNFRegListController *)self regController];
  serviceType = [regController serviceType];

  if (!serviceType || serviceType == 2)
  {
    v5 = 0;
    v6 = @"com.apple.facetime";
  }

  else
  {
    v5 = serviceType != 1;
    if (serviceType == 1)
    {
      v6 = @"com.apple.MobileSMS";
    }

    else
    {
      v6 = 0;
    }
  }

  regController2 = [(CNFRegListController *)self regController];
  if ([regController2 deviceCanTakeNetworkAction])
  {
    if (v5)
    {
LABEL_13:
      v10 = 0;
      goto LABEL_33;
    }

    regController3 = [(CNFRegListController *)self regController];
    if ([regController3 serviceType] == 1)
    {
LABEL_12:

      goto LABEL_13;
    }

    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0] nonWifiAvailableForBundleId:v6])
    {

      goto LABEL_12;
    }

    mEMORY[0x277D07DB0]2 = [MEMORY[0x277D07DB0] sharedInstance];
    v12 = [mEMORY[0x277D07DB0]2 wifiAllowedForBundleId:v6];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    mEMORY[0x277D07DB0]3 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0]3 nonWifiAvailableForBundleId:v6])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    mEMORY[0x277D07DB0]4 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0]4 wifiAllowedForBundleId:v6])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138412802;
    v27 = v6;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Showing alert nonWifiAvailableForBUndleID:%@ %@, wifiAllowedForBUndleID %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    mEMORY[0x277D07DB0]5 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0]5 nonWifiAvailableForBundleId:v6])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    mEMORY[0x277D07DB0]6 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([mEMORY[0x277D07DB0]6 wifiAllowedForBundleId:v6])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v24 = v19;
    v25 = v21;
    v23 = v6;
    IMLogString();
  }

  [regController2 showNetworkAlert:{self, v23, v24, v25}];
  v10 = 1;
LABEL_33:

  return v10;
}

- (void)handleURL:(id)l
{
  lCopy = l;
  if (![(CNFRegListController *)self _handleURLDictionary:lCopy])
  {
    v5.receiver = self;
    v5.super_class = CNFRegListController;
    [(CNFRegListController *)&v5 handleURL:lCopy];
  }
}

- (BOOL)_handleURLDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v15 = dictionaryCopy;
  v14 = 0;
  v5 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + *MEMORY[0x277D3FCB8]));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [WeakRetained methodSignatureForSelector:sel__cnfreg_overrideForController_withDictionary_];
      v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
      selfCopy = self;
      [v8 setTarget:WeakRetained];
      [v8 setSelector:sel__cnfreg_overrideForController_withDictionary_];
      [v8 setArgument:&selfCopy atIndex:2];
      [v8 setArgument:&v15 atIndex:3];
      [v8 invoke];
      [v8 getReturnValue:&v14];
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v14)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        *buf = 138412546;
        v17 = v10;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Handling url dictionary {%@} : %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    dictionaryCopy = v15;
    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)changePasswordControllerDidFinish:(id)finish withAppleID:(id)d authID:(id)iD authToken:(id)token
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  if ([iDCopy length] && objc_msgSend(tokenCopy, "length"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
    regController = [(CNFRegListController *)self regController];
    appleIDAccounts = [regController appleIDAccounts];

    v14 = [appleIDAccounts countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(appleIDAccounts);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          loginDisplayString = [v18 loginDisplayString];
          v20 = [loginDisplayString isEqualToString:dCopy];

          if (v20)
          {
            [v18 updateAuthorizationCredentials:iDCopy token:tokenCopy];
          }
        }

        v15 = [appleIDAccounts countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    self = selfCopy;
  }

  [(CNFRegListController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_setSpecifierEnabled:(id)enabled enabled:(BOOL)a4 animated:(BOOL)animated
{
  v5 = a4;
  enabledCopy = enabled;
  v7 = *MEMORY[0x277D3FF38];
  v12 = enabledCopy;
  v8 = [enabledCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v9 = v8;
  if (!v8 || [v8 BOOLValue] != v5)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v12 setProperty:v10 forKey:v7];
    v11 = [v12 propertyForKey:*MEMORY[0x277D40148]];
    [v11 setCellEnabled:v5];
    [v11 setNeedsDisplay];
  }
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = CNFRegListController;
  [(CNFRegListController *)&v20 loadView];
  v3 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v3 styleUsesCustomTableStyle])
  {
    tableBackgroundColor = [v3 tableBackgroundColor];

    v5 = MEMORY[0x277D3FC60];
    if (tableBackgroundColor)
    {
      tableBackgroundColor2 = [v3 tableBackgroundColor];
      v7 = *v5;
      [*(&self->super.super.super.super.super.isa + v7) setBackgroundColor:tableBackgroundColor2];

      [*(&self->super.super.super.super.super.isa + v7) setBackgroundView:0];
    }

    if ([v3 styleUsesCustomSeparatorStyle])
    {
      v8 = *v5;
      [*(&self->super.super.super.super.super.isa + v8) _setDrawsTopShadowInGroupedSections:0];
      [*(&self->super.super.super.super.super.isa + v8) setSeparatorStyle:{objc_msgSend(v3, "tableSeparatorStyle")}];
      tableSeparatorColor = [v3 tableSeparatorColor];

      if (tableSeparatorColor)
      {
        tableSeparatorColor2 = [v3 tableSeparatorColor];
        [*(&self->super.super.super.super.super.isa + v8) setSeparatorColor:tableSeparatorColor2];
      }

      tableSeparatorTopShadowColor = [v3 tableSeparatorTopShadowColor];

      if (tableSeparatorTopShadowColor)
      {
        tableSeparatorTopShadowColor2 = [v3 tableSeparatorTopShadowColor];
        [*(&self->super.super.super.super.super.isa + v8) setSeparatorTopShadowColor:tableSeparatorTopShadowColor2];
      }

      tableSeparatorBottomShadowColor = [v3 tableSeparatorBottomShadowColor];

      if (tableSeparatorBottomShadowColor)
      {
        tableSeparatorBottomShadowColor2 = [v3 tableSeparatorBottomShadowColor];
        [*(&self->super.super.super.super.super.isa + v8) setSeparatorBottomShadowColor:tableSeparatorBottomShadowColor2];
      }
    }

    tableSectionBorderColor = [v3 tableSectionBorderColor];

    if (tableSectionBorderColor)
    {
      tableSectionBorderColor2 = [v3 tableSectionBorderColor];
      [*(&self->super.super.super.super.super.isa + *v5) setSectionBorderColor:tableSectionBorderColor2];
    }
  }

  customBackgroundColor = [v3 customBackgroundColor];

  if (customBackgroundColor)
  {
    customBackgroundColor2 = [v3 customBackgroundColor];
    view = [(CNFRegListController *)self view];
    [view setBackgroundColor:customBackgroundColor2];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v7 = [cellCopy tag];
  v8 = v7;
  v9 = v7 << 32;
  if (v7 << 32 == 0x800000000)
  {
    editableTextField = [cellCopy editableTextField];
    [editableTextField setClearButtonMode:1];
  }

  v11 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v11 styleUsesCustomTableStyle])
  {
    if (objc_opt_respondsToSelector())
    {
      usesStandardBackgroundImage = [cellCopy usesStandardBackgroundImage];
    }

    else
    {
      usesStandardBackgroundImage = 0;
    }

    if (v9 != 0xD00000000 || (usesStandardBackgroundImage & 1) != 0)
    {
      tableCellBackgroundColor = [v11 tableCellBackgroundColor];
      [cellCopy setBackgroundColor:tableCellBackgroundColor];
    }

    else
    {
      tableCellBackgroundColor = [v11 tableCellButtonImage];
      if (tableCellBackgroundColor)
      {
        v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:tableCellBackgroundColor];
        [cellCopy setBackgroundView:v14];
      }

      tableCellButtonImageSelected = [v11 tableCellButtonImageSelected];
      v16 = cellCopy;
      if (tableCellButtonImageSelected)
      {
        v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:tableCellButtonImageSelected];
        [cellCopy setSelectedBackgroundView:v17];

        v16 = cellCopy;
      }

      [v16 setBackgroundColor:0];
    }

    tableCellTextLabelColor = [v11 tableCellTextLabelColor];

    if (tableCellTextLabelColor)
    {
      tableCellTextLabelColor2 = [v11 tableCellTextLabelColor];
      textLabel = [cellCopy textLabel];
      [textLabel setTextColor:tableCellTextLabelColor2];
    }

    tableCellTextLabelBackgroundColor = [v11 tableCellTextLabelBackgroundColor];

    if (tableCellTextLabelBackgroundColor)
    {
      tableCellTextLabelBackgroundColor2 = [v11 tableCellTextLabelBackgroundColor];
      textLabel2 = [cellCopy textLabel];
      [textLabel2 setBackgroundColor:tableCellTextLabelBackgroundColor2];
    }

    tableCellDetailLabelColor = [v11 tableCellDetailLabelColor];

    if (tableCellDetailLabelColor)
    {
      tableCellDetailLabelColor2 = [v11 tableCellDetailLabelColor];
      detailTextLabel = [cellCopy detailTextLabel];
      [detailTextLabel setTextColor:tableCellDetailLabelColor2];
    }

    v27 = v8;
    tableCellDetailLabelBackgroundColor = [v11 tableCellDetailLabelBackgroundColor];

    if (tableCellDetailLabelBackgroundColor)
    {
      tableCellDetailLabelBackgroundColor2 = [v11 tableCellDetailLabelBackgroundColor];
      detailTextLabel2 = [cellCopy detailTextLabel];
      [detailTextLabel2 setBackgroundColor:tableCellDetailLabelBackgroundColor2];
    }

    if ((v27 | 4) == 0xC)
    {
      tableCellEditableTextPlaceholderColor = [v11 tableCellEditableTextPlaceholderColor];

      if (tableCellEditableTextPlaceholderColor)
      {
        tableCellEditableTextPlaceholderColor2 = [v11 tableCellEditableTextPlaceholderColor];
        editableTextField2 = [cellCopy editableTextField];
        _placeholderLabel = [editableTextField2 _placeholderLabel];
        [_placeholderLabel setTextColor:tableCellEditableTextPlaceholderColor2];
      }

      tableCellEditableTextFieldClearButton = [v11 tableCellEditableTextFieldClearButton];

      if (tableCellEditableTextFieldClearButton)
      {
        editableTextField3 = [cellCopy editableTextField];
        _clearButton = [editableTextField3 _clearButton];
        tableCellEditableTextFieldClearButton2 = [v11 tableCellEditableTextFieldClearButton];
        [_clearButton setImage:tableCellEditableTextFieldClearButton2 forState:0];
      }

      tableCellEditableTextFieldClearButtonPressed = [v11 tableCellEditableTextFieldClearButtonPressed];

      if (tableCellEditableTextFieldClearButtonPressed)
      {
        editableTextField4 = [cellCopy editableTextField];
        _clearButton2 = [editableTextField4 _clearButton];
        tableCellEditableTextFieldClearButtonPressed2 = [v11 tableCellEditableTextFieldClearButtonPressed];
        [_clearButton2 setImage:tableCellEditableTextFieldClearButtonPressed2 forState:1];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = cellCopy;
        tableCellEditableTextColor = [v11 tableCellEditableTextColor];

        if (tableCellEditableTextColor)
        {
          tableCellEditableTextColor2 = [v11 tableCellEditableTextColor];
          editableTextField5 = [v43 editableTextField];
          [editableTextField5 setTextColor:tableCellEditableTextColor2];
        }

        tableCellCheckmarkImage = [v11 tableCellCheckmarkImage];
        [v43 setCustomCheckmarkImage:tableCellCheckmarkImage];

        tableCellCheckmarkImageSelected = [v11 tableCellCheckmarkImageSelected];
        [v43 setCustomCheckmarkImageSelected:tableCellCheckmarkImageSelected];

        if ([pathCopy row])
        {
          [v43 setShadowImage:0];
        }

        else
        {
          tableSectionShadowImage = [v11 tableSectionShadowImage];
          [v43 setShadowImage:tableSectionShadowImage];
        }

        [v43 setNeedsLayout];
      }
    }
  }
}

- (id)_existingLabelForSpecifier:(id)specifier header:(BOOL)header
{
  headerCopy = header;
  specifierCopy = specifier;
  v6 = specifierCopy;
  if (specifierCopy && !*&specifierCopy[*MEMORY[0x277D3FC90]])
  {
    v8 = MEMORY[0x277D3FFB0];
    if (!headerCopy)
    {
      v8 = MEMORY[0x277D3FF90];
    }

    v9 = [specifierCopy propertyForKey:*v8];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_existingLabelForSection:(int64_t)section header:(BOOL)header
{
  headerCopy = header;
  v6 = [(CNFRegListController *)self indexOfGroup:section];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v6];
    v7 = [(CNFRegListController *)self _existingLabelForSpecifier:v8 header:headerCopy];
  }

  return v7;
}

- (void)_updateExistingLabelForSpecifier:(id)specifier header:(BOOL)header
{
  headerCopy = header;
  specifierCopy = specifier;
  v8 = specifierCopy;
  if (specifierCopy)
  {
    v11 = specifierCopy;
    if (*&specifierCopy[*MEMORY[0x277D3FC90]])
    {
      [CNFRegListController _updateExistingLabelForSpecifier:a2 header:self];
      v8 = v11;
    }

    v9 = [(CNFRegListController *)self _existingLabelForSpecifier:v8 header:headerCopy];
    [v9 updateLabelText];
    if (v9)
    {
      v10 = *MEMORY[0x277D3FC60];
      [*(&self->super.super.super.super.super.isa + v10) beginUpdates];
      [*(&self->super.super.super.super.super.isa + v10) endUpdates];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_setLabel:(id)label forSpecifier:(id)specifier header:(BOOL)header
{
  headerCopy = header;
  labelCopy = label;
  specifierCopy = specifier;
  v10 = specifierCopy;
  if (specifierCopy)
  {
    if (*&specifierCopy[*MEMORY[0x277D3FC90]])
    {
      [CNFRegListController _setLabel:a2 forSpecifier:self header:?];
    }

    v11 = MEMORY[0x277D3FFA0];
    if (!headerCopy)
    {
      v11 = MEMORY[0x277D3FF48];
    }

    v12 = *v11;
    if (headerCopy)
    {
      [v10 name];
    }

    else
    {
      [v10 propertyForKey:*MEMORY[0x277D3FF88]];
    }
    v13 = ;
    if (labelCopy && [labelCopy length])
    {
      if (v13 != labelCopy && ([labelCopy isEqualToString:v13] & 1) == 0)
      {
        if (headerCopy)
        {
          [v10 setName:labelCopy];
        }

        else
        {
          [v10 setProperty:labelCopy forKey:*MEMORY[0x277D3FF88]];
        }

        [(CNFRegListController *)self _updateExistingLabelForSpecifier:v10 header:headerCopy];
      }
    }

    else
    {
      if (headerCopy)
      {
        [v10 setName:0];
      }

      else
      {
        [v10 removePropertyForKey:*MEMORY[0x277D3FF88]];
      }

      [v10 removePropertyForKey:v12];
    }
  }
}

- (void)_updateTableLabel:(id)label withTableView:(id)view isTopMostHeader:(BOOL)header
{
  if (label)
  {
    headerCopy = header;
    labelCopy = label;
    [labelCopy setCnfreg_tableView:view];
    [labelCopy setIsTopmostHeader:headerCopy];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNFRegListController *)self _existingLabelForSection:section header:1];
  [(CNFRegListController *)self _updateTableLabel:v7 withTableView:viewCopy isTopMostHeader:section == 0];
  v14.receiver = self;
  v14.super_class = CNFRegListController;
  [(CNFRegListController *)&v14 tableView:viewCopy heightForHeaderInSection:section];
  if (section && v7)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(CNFRegListController *)self _existingLabelForSection:section header:1];

    [(CNFRegListController *)self _updateTableLabel:v10 withTableView:viewCopy isTopMostHeader:section == 0];
    v13.receiver = self;
    v13.super_class = CNFRegListController;
    [(CNFRegListController *)&v13 tableView:viewCopy heightForHeaderInSection:section];
    v9 = v11;
    v7 = v10;
  }

  return v9;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNFRegListController *)self _existingLabelForSection:section header:0];
  [(CNFRegListController *)self _updateTableLabel:v7 withTableView:viewCopy isTopMostHeader:0];
  v12.receiver = self;
  v12.super_class = CNFRegListController;
  [(CNFRegListController *)&v12 tableView:viewCopy heightForFooterInSection:section];
  if (!v7)
  {
    v7 = [(CNFRegListController *)self _existingLabelForSection:section header:0];
    [(CNFRegListController *)self _updateTableLabel:v7 withTableView:viewCopy isTopMostHeader:0];
    v11.receiver = self;
    v11.super_class = CNFRegListController;
    [(CNFRegListController *)&v11 tableView:viewCopy heightForFooterInSection:section];
  }

  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CNFRegListController;
  v7 = [(CNFRegListController *)&v9 tableView:viewCopy viewForHeaderInSection:section];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CNFRegListController *)self _updateTableLabel:v7 withTableView:viewCopy isTopMostHeader:section == 0];
    }
  }

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CNFRegListController;
  v7 = [(CNFRegListController *)&v9 tableView:viewCopy viewForFooterInSection:section];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CNFRegListController *)self _updateTableLabel:v7 withTableView:viewCopy isTopMostHeader:0];
    }
  }

  return v7;
}

- (void)showAuthKitSignInIfNecessary
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEBUG, "Asked to show AuthKit Sign In", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  regController = [(CNFRegListController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType == 2)
  {
LABEL_9:
    facetimeService = [MEMORY[0x277D18DD8] facetimeService];
    goto LABEL_11;
  }

  if (serviceType != 1)
  {
    if (serviceType)
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEBUG, "Unsupported FTCServiceType provided from regController. Likely programming error.", v13, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_20;
    }

    goto LABEL_9;
  }

  facetimeService = [MEMORY[0x277D18DD8] iMessageService];
LABEL_11:
  v7 = facetimeService;
  if (facetimeService)
  {
    v11 = 0;
    if ([CNFRegAppleIDSplashViewController shouldShowSplashViewForService:facetimeService inProgressRegisteringNonPhoneAccount:&v11])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"CNFSettingsViewControllerNeedsContainerUpdate" object:0];
    }

    return;
  }

LABEL_20:
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEBUG, "No IMService found for regController. Will now show Apple ID Splash.", v12, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }
}

- (void)_setupEventHandlers
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEBUG, "Setting up event handlers", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegListController *)self removeAllHandlers];
}

- (void)removeAllHandlers
{
  regController = [(CNFRegListController *)self regController];
  [regController removeAllHandlers];
}

- (void)setSpecifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegListController.m" lineNumber:101 description:@"Did not have a registration controller after setting specifier"];
}

- (void)_updateExistingLabelForSpecifier:(uint64_t)a1 header:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegListController.m" lineNumber:587 description:@"Attempted to set a label on a non-group cell"];
}

- (void)_setLabel:(uint64_t)a1 forSpecifier:(uint64_t)a2 header:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegListController.m" lineNumber:608 description:@"Attempted to set a label on a non-group cell"];
}

@end