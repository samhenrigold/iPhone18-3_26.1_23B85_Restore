@interface MCUIMCSpecifierProvider
- (id)_specifierForAppSigner:(id)signer;
- (id)_specifierForBlockedApp:(id)app;
- (id)specifiers;
- (void)_loadAppSignerFromSpecifier:(id)specifier;
- (void)_presentErrorTitle:(id)title message:(id)message;
- (void)_selectInstalledProfileIdentifier:(id)identifier;
- (void)_selectUninstalledProfileIdentifier:(id)identifier;
- (void)loadProfileFromSpecifier:(id)specifier;
@end

@implementation MCUIMCSpecifierProvider

- (id)specifiers
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = +[MCUIDataManager sharedManager];
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  [v3 allDeviceManagementOutMDMProfileInfo:&v73 outConfigurationProfilesInfo:&v72 outUninstalledProfilesInfo:&v71 outEnterpriseAppSigners:&v70 outFreeDevAppSigners:&v69 outBlockedApplications:&v68];
  v4 = v73;
  v5 = v72;
  v6 = v71;
  v7 = v70;
  v8 = v69;
  v9 = v68;

  v10 = objc_opt_new();
  v54 = v9;
  if (v4)
  {
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    dmc_visibleRemoteManagementAccounts = [defaultStore dmc_visibleRemoteManagementAccounts];

    if (![dmc_visibleRemoteManagementAccounts count])
    {
      v77[0] = v4;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
      v14 = [(MCUISpecifierProvider *)self specifiersForMDMProfiles:v13];

      if (v14)
      {
        [v10 addObjectsFromArray:v14];
      }

      v9 = v54;
    }
  }

  v15 = [(MCUISpecifierProvider *)self specifiersForUninstalledProfiles:v6];
  if (v15)
  {
    [v10 addObjectsFromArray:v15];
  }

  v16 = [(MCUISpecifierProvider *)self specifiersForInstalledProfiles:v5];
  if (v16)
  {
    [v10 addObjectsFromArray:v16];
  }

  v67 = 0;
  v52 = v6;
  v53 = v5;
  v48 = v8;
  v50 = v16;
  v51 = v15;
  if ([(MCUISpecifierProvider *)self isSectionPopulated:v7 outIsPlural:&v67])
  {
    if (v67)
    {
      v17 = @"ENTERPRISE_APP_PLURAL";
    }

    else
    {
      v17 = @"ENTERPRISE_APP_SINGULAR";
    }

    v18 = MCUILocalizedString(v17);
    v19 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v18];
    [v10 addObject:v19];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v20 = v7;
    v21 = v7;
    v22 = [v21 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v64;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v64 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [(MCUIMCSpecifierProvider *)self _specifierForAppSigner:*(*(&v63 + 1) + 8 * i)];
          [v10 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v23);
    }

    v15 = v51;
    v6 = v52;
    v7 = v20;
    v8 = v48;
    v5 = v53;
    v9 = v54;
    v16 = v50;
  }

  v49 = v7;
  if ([(MCUISpecifierProvider *)self isSectionPopulated:v8 outIsPlural:&v67])
  {
    if (v67)
    {
      v27 = @"DEVELOPER_APP_PLURAL";
    }

    else
    {
      v27 = @"DEVELOPER_APP_SINGULAR";
    }

    v28 = MCUILocalizedString(v27);
    v29 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v28];
    [v10 addObject:v29];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v30 = v8;
    v31 = [v30 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v60;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v60 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [(MCUIMCSpecifierProvider *)self _specifierForAppSigner:*(*(&v59 + 1) + 8 * j)];
          [v10 addObject:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v32);
    }

    v15 = v51;
    v6 = v52;
    v7 = v49;
    v16 = v50;
    v5 = v53;
    v9 = v54;
  }

  if ([(MCUISpecifierProvider *)self isSectionPopulated:v9 outIsPlural:&v67])
  {
    v47 = v4;
    if (v67)
    {
      v36 = @"BLOCKED_APP_PLURAL";
    }

    else
    {
      v36 = @"BLOCKED_APP";
    }

    v37 = MCUILocalizedString(v36);
    v38 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v37];
    [v10 addObject:v38];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = v9;
    v40 = [v39 countByEnumeratingWithState:&v55 objects:v74 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v56;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v56 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v55 + 1) + 8 * k);
          v45 = [(MCUIMCSpecifierProvider *)self _specifierForBlockedApp:v44];
          if (v45)
          {
            [v10 addObject:v45];
          }

          else
          {
            NSLog(&cfstr_McuiMcSpecifie.isa, v44);
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v55 objects:v74 count:16];
      }

      while (v41);
    }

    v4 = v47;
    v8 = v48;
    v6 = v52;
    v5 = v53;
    v7 = v49;
    v16 = v50;
    v9 = v54;
    v15 = v51;
  }

  return v10;
}

- (id)_specifierForAppSigner:(id)signer
{
  signerCopy = signer;
  identity = [signerCopy identity];
  v6 = [(MCUISpecifierProvider *)self specifierWithName:identity detail:objc_opt_class()];

  displayName = [signerCopy displayName];
  [v6 setProperty:displayName forKey:*MEMORY[0x277D40170]];

  if ([signerCopy isTrusted])
  {
    v8 = MEMORY[0x277CCABB8];
    v9 = MEMORY[0x277CCABB0];
    applications = [signerCopy applications];
    v11 = [v9 numberWithInteger:{objc_msgSend(applications, "count")}];
    v12 = [v8 localizedStringFromNumber:v11 numberStyle:0];
  }

  else
  {
    v12 = MCUILocalizedString(@"NOT_TRUSTED_PROFILE");
  }

  [v6 setProperty:v12 forKey:*MEMORY[0x277D40160]];
  [v6 setProperty:signerCopy forKey:@"MCUIPSItemKey"];
  [v6 setControllerLoadAction:sel__loadAppSignerFromSpecifier_];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];

  return v6;
}

- (void)_loadAppSignerFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"MCUIPSItemKey"];
  if (v4)
  {
    v5 = [[MCUIAppSignerViewController alloc] initWithAppSigner:v4];
    delegate = [(MCUISpecifierProvider *)self delegate];
    mcuiViewController = [delegate mcuiViewController];
    [mcuiViewController dmc_pushViewController:v5 animated:1];
  }

  else
  {
    NSLog(&cfstr_McuiMcSpecifie_0.isa, specifierCopy);
  }
}

- (id)_specifierForBlockedApp:(id)app
{
  appCopy = app;
  if ([appCopy isBlocked])
  {
    bundleID = [appCopy bundleID];
    v6 = bundleID;
    if (bundleID)
    {
      v7 = bundleID;
    }

    else
    {
      v7 = MCUILocalizedString(@"UNKNOWN_APP");
    }

    v9 = v7;

    name = [appCopy name];
    v11 = name;
    if (name)
    {
      v12 = name;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;

    v8 = [(MCUISpecifierProvider *)self specifierWithName:v13 detail:objc_opt_class()];
    misCDHash = [appCopy misCDHash];
    [v8 setProperty:misCDHash forKey:@"MCUIBlockedAppCdHash"];

    misHashType = [appCopy misHashType];
    [v8 setProperty:misHashType forKey:@"MCUIBlockedAppHashType"];

    [v8 setProperty:v13 forKey:@"MCUIBlockedAppName"];
    [v8 setProperty:v13 forKey:*MEMORY[0x277D40170]];

    v16 = [appCopy iconForVariant:0];
    [v8 setProperty:v16 forKey:*MEMORY[0x277D3FFC0]];

    [v8 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)loadProfileFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v7 = [specifierCopy propertyForKey:@"MCUIPSItemKey"];
  if (v7)
  {
    v5 = [specifierCopy propertyForKey:@"MCUIPSInstalledKey"];

    if (v5 && [v5 BOOLValue])
    {
      identifier = [v7 identifier];
      [(MCUIMCSpecifierProvider *)self _selectInstalledProfileIdentifier:identifier];
    }

    else
    {
      identifier = [v7 identifier];
      [(MCUIMCSpecifierProvider *)self _selectUninstalledProfileIdentifier:identifier];
    }
  }

  else
  {
    NSLog(&cfstr_McuiMcSpecifie_1.isa, specifierCopy);
    v5 = specifierCopy;
  }
}

- (void)_selectInstalledProfileIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  sharedConnection = [v4 sharedConnection];
  v10 = [sharedConnection installedProfileWithIdentifier:identifierCopy];

  v7 = [[MCRemoveProfileViewController alloc] initWithProfile:v10];
  delegate = [(MCUISpecifierProvider *)self delegate];
  mcuiViewController = [delegate mcuiViewController];
  [mcuiViewController dmc_pushViewController:v7 animated:1];
}

- (void)_selectUninstalledProfileIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  sharedConnection = [v4 sharedConnection];
  v7 = [sharedConnection uninstalledProfileDataWithIdentifier:identifierCopy targetDevice:{objc_msgSend(MEMORY[0x277D26290], "thisDeviceType")}];

  v15 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:v7 outError:&v15];
  v9 = v8;
  if (v15)
  {
    NSLog(&cfstr_Mcuimcspecifie.isa);
    v10 = MCUILocalizedString(@"PROFILE_UNABLE_TO_INSTALL");
    v11 = @"PROFILE_ERROR_DESERIALIZE_FAIL";
  }

  else
  {
    if (![v8 isUserEnrollmentProfile])
    {
      v10 = [[MCInstallProfileViewController alloc] initWithInstallableProfileData:v7 fromSource:1];
      v12 = [objc_alloc(MEMORY[0x277D03260]) initWithRootViewController:v10];
      delegate = [(MCUISpecifierProvider *)self delegate];
      mcuiViewController = [delegate mcuiViewController];
      [mcuiViewController presentViewController:v12 animated:1 completion:0];

      goto LABEL_6;
    }

    NSLog(&cfstr_Mcuimcspecifie_0.isa);
    v10 = MCUILocalizedString(@"PROFILE_UNABLE_TO_INSTALL");
    v11 = @"PROFILE_ERROR_PDUE_NOT_SUPPORTED";
  }

  v12 = MCUILocalizedString(v11);
  [(MCUIMCSpecifierProvider *)self _presentErrorTitle:v10 message:v12];
LABEL_6:
}

- (void)_presentErrorTitle:(id)title message:(id)message
{
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = MCUILocalizedString(@"OK");
  [v8 MCUIAddCancelActionWithTitle:v5];

  delegate = [(MCUISpecifierProvider *)self delegate];
  mcuiViewController = [delegate mcuiViewController];
  [mcuiViewController dmc_presentAlert:v8 completion:0];
}

@end