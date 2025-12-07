@interface PSGAccessoryDetailsController
- (PSGAccessoryDetailsController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accessoryDidUpdate:(id)update;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)findAppForAccessory;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PSGAccessoryDetailsController

- (PSGAccessoryDetailsController)init
{
  v5.receiver = self;
  v5.super_class = PSGAccessoryDetailsController;
  v2 = [(PSGAccessoryDetailsController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E88] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EA0] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5E90] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB0] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC8] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EB8] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdate_ name:*MEMORY[0x277CC5EC0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  accessory = self->_accessory;
  if (accessory)
  {
    [(EAAccessory *)accessory setDelegate:0];
    v5 = self->_accessory;
    self->_accessory = 0;
  }

  v6.receiver = self;
  v6.super_class = PSGAccessoryDetailsController;
  [(PSGAccessoryDetailsController *)&v6 dealloc];
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  specifier = [(PSGAccessoryDetailsController *)self specifier];
  userInfo = [specifier userInfo];

  if ([userInfo isMemberOfClass:objc_opt_class()])
  {
    objc_storeStrong(&self->_accessory, userInfo);
    [(EAAccessory *)self->_accessory setDelegate:self];
    bonjourName = [(EAAccessory *)self->_accessory bonjourName];
    if (bonjourName)
    {
      v7 = bonjourName;
      isAvailableOverBonjour = [(EAAccessory *)self->_accessory isAvailableOverBonjour];

      if (isAvailableOverBonjour)
      {
        hasIPConnection = [(EAAccessory *)self->_accessory hasIPConnection];
        v10 = hasIPConnection;
        v11 = MEMORY[0x277D3FAD8];
        v12 = PSG_BundleForGeneralSettingsUIFramework(hasIPConnection);
        v13 = v12;
        if (v10)
        {
          v14 = @"DISCONNECT";
        }

        else
        {
          v14 = @"CONNECT";
        }

        if (v10)
        {
          v15 = &selRef_disconnect;
        }

        else
        {
          v15 = &selRef_connect;
        }

        v16 = [v12 localizedStringForKey:v14 value:&stru_282E88A90 table:0];
        v17 = [v11 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v17 setButtonAction:*v15];
        [v17 setIdentifier:@"CONNECT_BUTTON"];
        [v3 addObject:v17];
      }
    }

    if ([(EAAccessory *)self->_accessory isConnected])
    {
      manufacturer = [(EAAccessory *)self->_accessory manufacturer];
      v19 = [manufacturer length];

      v21 = MEMORY[0x277D3FED8];
      if (v19)
      {
        v22 = MEMORY[0x277D3FAD8];
        v23 = PSG_BundleForGeneralSettingsUIFramework(v20);
        v24 = [v23 localizedStringForKey:@"MANUFACTURER" value:&stru_282E88A90 table:0];
        v25 = [v22 preferenceSpecifierNamed:v24 target:self set:0 get:sel_manufacturer detail:0 cell:4 edit:0];

        [v25 setIdentifier:@"MANUFACTURER"];
        [v25 setProperty:MEMORY[0x277CBEC38] forKey:*v21];
        [v3 addObject:v25];
      }

      modelNumber = [(EAAccessory *)self->_accessory modelNumber];
      v27 = [modelNumber length];

      if (v27)
      {
        v29 = MEMORY[0x277D3FAD8];
        v30 = PSG_BundleForGeneralSettingsUIFramework(v28);
        v31 = [v30 localizedStringForKey:@"MODELNUMBER" value:&stru_282E88A90 table:0];
        v32 = [v29 preferenceSpecifierNamed:v31 target:self set:0 get:sel_modelNumber detail:0 cell:4 edit:0];

        [v32 setIdentifier:@"MODELNUMBER"];
        [v32 setProperty:MEMORY[0x277CBEC38] forKey:*v21];
        [v3 addObject:v32];
      }

      serialNumber = [(EAAccessory *)self->_accessory serialNumber];
      v34 = [serialNumber length];

      if (v34)
      {
        v36 = MEMORY[0x277D3FAD8];
        v37 = PSG_BundleForGeneralSettingsUIFramework(v35);
        v38 = [v37 localizedStringForKey:@"SERIALNUMBER" value:&stru_282E88A90 table:0];
        v39 = [v36 preferenceSpecifierNamed:v38 target:self set:0 get:sel_serialNumber detail:0 cell:4 edit:0];

        [v39 setIdentifier:@"SERIALNUMBER"];
        [v39 setProperty:MEMORY[0x277CBEC38] forKey:*v21];
        [v3 addObject:v39];
      }

      firmwareRevision = [(EAAccessory *)self->_accessory firmwareRevision];
      v41 = [firmwareRevision length];

      if (v41)
      {
        v43 = MEMORY[0x277D3FAD8];
        v44 = PSG_BundleForGeneralSettingsUIFramework(v42);
        v45 = [v44 localizedStringForKey:@"FIRMWAREREVISION" value:&stru_282E88A90 table:0];
        v46 = [v43 preferenceSpecifierNamed:v45 target:self set:0 get:sel_firmwareRevision detail:0 cell:4 edit:0];

        [v46 setIdentifier:@"FIRMWAREREVISION"];
        [v46 setProperty:MEMORY[0x277CBEC38] forKey:*v21];
        [v3 addObject:v46];
      }

      hardwareRevision = [(EAAccessory *)self->_accessory hardwareRevision];
      v48 = [hardwareRevision length];

      if (v48)
      {
        v50 = MEMORY[0x277D3FAD8];
        v51 = PSG_BundleForGeneralSettingsUIFramework(v49);
        v52 = [v51 localizedStringForKey:@"HARDWAREREVISION" value:&stru_282E88A90 table:0];
        v53 = [v50 preferenceSpecifierNamed:v52 target:self set:0 get:sel_hardwareRevision detail:0 cell:4 edit:0];

        [v53 setIdentifier:@"HARDWAREREVISION"];
        [v53 setProperty:MEMORY[0x277CBEC38] forKey:*v21];
        [v3 addObject:v53];
      }

      supportsPublicIap = [(EAAccessory *)self->_accessory supportsPublicIap];
      if (supportsPublicIap)
      {
        v55 = MEMORY[0x277D3FAD8];
        v56 = PSG_BundleForGeneralSettingsUIFramework(supportsPublicIap);
        v57 = [v56 localizedStringForKey:@"FIND_APP_FOR_ACCESSORY" value:&stru_282E88A90 table:0];
        v58 = [v55 preferenceSpecifierNamed:v57 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v58 setButtonAction:sel_findAppForAccessory];
        [v58 setIdentifier:@"FIND_APP_FOR_ACCESSORY"];
        [v3 addObject:v58];
      }
    }
  }

  v59 = *MEMORY[0x277D3FC48];
  v60 = *(&self->super.super.super.super.super.isa + v59);
  *(&self->super.super.super.super.super.isa + v59) = v3;
  v61 = v3;

  v62 = *(&self->super.super.super.super.super.isa + v59);
  v63 = v62;

  return v62;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PSGAccessoryDetailsController;
  [(PSGAccessoryDetailsController *)&v8 viewDidAppear:appear];
  if (self->_shouldEscape)
  {
    navigationController = [(PSGAccessoryDetailsController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      navigationController2 = [(PSGAccessoryDetailsController *)self navigationController];
      v7 = [navigationController2 popViewControllerAnimated:1];
    }
  }

  self->_finishedAppearing = 1;
}

- (void)connect
{
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  bonjourName = [(EAAccessory *)self->_accessory bonjourName];
  [mEMORY[0x277CC5FB0] initiateConnectionToIPAccessory:bonjourName];
}

- (void)disconnect
{
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  bonjourName = [(EAAccessory *)self->_accessory bonjourName];
  [mEMORY[0x277CC5FB0] disconnectIPAccessory:bonjourName];
}

- (void)findAppForAccessory
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"accessory-lookup"];
  v5 = v3;
  [v3 addObject:v4];

  selfCopy = self;
  [(EAAccessory *)self->_accessory allPublicProtocolStrings];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v6 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    v9 = 1;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * v10);
        v13 = MEMORY[0x277CCAD18];
        v9 = (v11 + 1);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"id%d", v11];
        v15 = [v13 queryItemWithName:v14 value:v12];
        [v5 addObject:v15];

        ++v10;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v7);
  }

  v16 = MEMORY[0x277CCAD18];
  preferredApp = [(EAAccessory *)selfCopy->_accessory preferredApp];
  v18 = [v16 queryItemWithName:@"bid" value:preferredApp];
  [v5 addObject:v18];

  v19 = MEMORY[0x277CCAD18];
  name = [(EAAccessory *)selfCopy->_accessory name];
  v21 = [v19 queryItemWithName:@"accessoryName" value:name];
  [v5 addObject:v21];

  v22 = MEMORY[0x277CCAD18];
  manufacturer = [(EAAccessory *)selfCopy->_accessory manufacturer];
  v24 = [v22 queryItemWithName:@"manufacturer" value:manufacturer];
  [v5 addObject:v24];

  v25 = MEMORY[0x277CCAD18];
  modelNumber = [(EAAccessory *)selfCopy->_accessory modelNumber];
  v27 = [v25 queryItemWithName:@"modelNumber" value:modelNumber];
  [v5 addObject:v27];

  v28 = MEMORY[0x277CCAD18];
  firmwareRevision = [(EAAccessory *)selfCopy->_accessory firmwareRevision];
  v30 = [v28 queryItemWithName:@"firmwareVersion" value:firmwareRevision];
  [v5 addObject:v30];

  v31 = MEMORY[0x277CCAD18];
  hardwareRevision = [(EAAccessory *)selfCopy->_accessory hardwareRevision];
  v33 = [v31 queryItemWithName:@"hardwareVersion" value:hardwareRevision];
  [v5 addObject:v33];

  v34 = MEMORY[0x277CCAD18];
  serialNumber = [(EAAccessory *)selfCopy->_accessory serialNumber];
  v36 = [v34 queryItemWithName:@"serialNumber" value:serialNumber];
  [v5 addObject:v36];

  v37 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:@"itms-apps://?"];
  [v37 setQueryItems:v5];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v39 = [v37 URL];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __52__PSGAccessoryDetailsController_findAppForAccessory__block_invoke;
  v43[3] = &unk_278325070;
  v44 = v37;
  v40 = v37;
  [mEMORY[0x277D75128] openURL:v39 options:MEMORY[0x277CBEC10] completionHandler:v43];
}

void __52__PSGAccessoryDetailsController_findAppForAccessory__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) URL];
    NSLog(&cfstr_CouldNotOpenUr.isa, v3);
  }
}

- (void)_accessoryDidUpdate:(id)update
{
  updateCopy = update;
  userInfo = [updateCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CC5E98]];

  [v5 setDelegate:self];
  if (!v5)
  {
    name = 0;
    goto LABEL_8;
  }

  bonjourName = [v5 bonjourName];

  if (bonjourName)
  {
    bonjourName2 = [v5 bonjourName];
  }

  else
  {
    name = [v5 name];

    if (!name)
    {
      goto LABEL_8;
    }

    bonjourName2 = [v5 name];
  }

  name = bonjourName2;
LABEL_8:
  name2 = [(EAAccessory *)self->_accessory name];
  if ([name isEqualToString:name2])
  {
  }

  else
  {
    bonjourName3 = [(EAAccessory *)self->_accessory bonjourName];
    v11 = [name isEqualToString:bonjourName3];

    if (!v11)
    {
      goto LABEL_95;
    }
  }

  v102 = name;
  v12 = [(PSGAccessoryDetailsController *)self specifierForID:@"CONNECT_BUTTON"];
  v105 = [(PSGAccessoryDetailsController *)self specifierForID:@"MANUFACTURER"];
  v13 = [(PSGAccessoryDetailsController *)self specifierForID:@"MODELNUMBER"];
  v14 = [(PSGAccessoryDetailsController *)self specifierForID:@"SERIALNUMBER"];
  v15 = [(PSGAccessoryDetailsController *)self specifierForID:@"FIRMWAREREVISION"];
  v16 = [(PSGAccessoryDetailsController *)self specifierForID:@"HARDWAREREVISION"];
  v17 = [(PSGAccessoryDetailsController *)self specifierForID:@"FIND_APP_FOR_ACCESSORY"];
  [(PSGAccessoryDetailsController *)self beginUpdates];
  name3 = [updateCopy name];
  v103 = v15;
  v104 = v14;
  if ([name3 isEqualToString:*MEMORY[0x277CC5E88]])
  {
    isConnected = [v5 isConnected];

    if (isConnected)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = v105;
      if (v105)
      {
        [v20 addObject:v105];
      }

      if (v13)
      {
        [v20 addObject:v13];
      }

      if (v14)
      {
        [v20 addObject:v14];
      }

      if (v15)
      {
        [v20 addObject:v15];
      }

      if (v16)
      {
        [v20 addObject:v16];
      }

      if (v17)
      {
        [v20 addObject:v17];
      }

      v100 = v13;
      if ([v20 count])
      {
        [(PSGAccessoryDetailsController *)self removeContiguousSpecifiers:v20 animated:1];
      }

      v98 = v20;
      manufacturer = [v5 manufacturer];
      v23 = [manufacturer length];

      v25 = MEMORY[0x277D3FED8];
      if (v23)
      {
        v26 = MEMORY[0x277D3FAD8];
        v27 = PSG_BundleForGeneralSettingsUIFramework(v24);
        v28 = [v27 localizedStringForKey:@"MANUFACTURER" value:&stru_282E88A90 table:0];
        v29 = [v26 preferenceSpecifierNamed:v28 target:self set:0 get:sel_manufacturer detail:0 cell:4 edit:0];

        v25 = MEMORY[0x277D3FED8];
        [v29 setIdentifier:@"MANUFACTURER"];
        [v29 setProperty:MEMORY[0x277CBEC38] forKey:*v25];
        [v99 addObject:v29];
        v21 = v29;
      }

      v30 = v12;
      v105 = v21;
      modelNumber = [v5 modelNumber];
      v32 = [modelNumber length];

      if (v32)
      {
        v34 = MEMORY[0x277D3FAD8];
        v35 = PSG_BundleForGeneralSettingsUIFramework(v33);
        v36 = [v35 localizedStringForKey:@"MODELNUMBER" value:&stru_282E88A90 table:0];
        v37 = [v34 preferenceSpecifierNamed:v36 target:self set:0 get:sel_modelNumber detail:0 cell:4 edit:0];

        v25 = MEMORY[0x277D3FED8];
        [v37 setIdentifier:@"MODELNUMBER"];
        [v37 setProperty:MEMORY[0x277CBEC38] forKey:*v25];
        v38 = v99;
        [v99 addObject:v37];
        v100 = v37;
      }

      else
      {
        v38 = v99;
      }

      serialNumber = [v5 serialNumber];
      v46 = [serialNumber length];

      if (v46)
      {
        v48 = MEMORY[0x277D3FAD8];
        v49 = PSG_BundleForGeneralSettingsUIFramework(v47);
        v50 = [v49 localizedStringForKey:@"SERIALNUMBER" value:&stru_282E88A90 table:0];
        v51 = [v48 preferenceSpecifierNamed:v50 target:self set:0 get:sel_serialNumber detail:0 cell:4 edit:0];

        v25 = MEMORY[0x277D3FED8];
        [v51 setIdentifier:@"SERIALNUMBER"];
        [v51 setProperty:MEMORY[0x277CBEC38] forKey:*v25];
        [v38 addObject:v51];
      }

      else
      {
        v51 = v104;
      }

      v104 = v51;
      firmwareRevision = [v5 firmwareRevision];
      v53 = [firmwareRevision length];

      if (v53)
      {
        v55 = MEMORY[0x277D3FAD8];
        v56 = PSG_BundleForGeneralSettingsUIFramework(v54);
        v57 = [v56 localizedStringForKey:@"FIRMWAREREVISION" value:&stru_282E88A90 table:0];
        v58 = [v55 preferenceSpecifierNamed:v57 target:self set:0 get:sel_firmwareRevision detail:0 cell:4 edit:0];

        v25 = MEMORY[0x277D3FED8];
        [v58 setIdentifier:@"FIRMWAREREVISION"];
        [v58 setProperty:MEMORY[0x277CBEC38] forKey:*v25];
        [v38 addObject:v58];
        v103 = v58;
      }

      hardwareRevision = [v5 hardwareRevision];
      v60 = [hardwareRevision length];

      if (v60)
      {
        v62 = MEMORY[0x277D3FAD8];
        v63 = PSG_BundleForGeneralSettingsUIFramework(v61);
        v64 = [v63 localizedStringForKey:@"HARDWAREREVISION" value:&stru_282E88A90 table:0];
        v65 = [v62 preferenceSpecifierNamed:v64 target:self set:0 get:sel_hardwareRevision detail:0 cell:4 edit:0];

        [v65 setIdentifier:@"HARDWAREREVISION"];
        [v65 setProperty:MEMORY[0x277CBEC38] forKey:*v25];
        [v38 addObject:v65];
        v16 = v65;
      }

      supportsPublicIap = [v5 supportsPublicIap];
      if (supportsPublicIap)
      {
        v67 = MEMORY[0x277D3FAD8];
        v68 = PSG_BundleForGeneralSettingsUIFramework(supportsPublicIap);
        v69 = [v68 localizedStringForKey:@"FIND_APP_FOR_ACCESSORY" value:&stru_282E88A90 table:0];
        v70 = [v67 preferenceSpecifierNamed:v69 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v70 setButtonAction:sel_findAppForAccessory];
        [v70 setIdentifier:@"FIND_APP_FOR_ACCESSORY"];
        [v38 addObject:v70];
        v17 = v70;
      }

      v13 = v100;
      if ([v38 count])
      {
        [(PSGAccessoryDetailsController *)self addSpecifiersFromArray:v38 animated:1];
      }

LABEL_64:
      v44 = 0;
      goto LABEL_65;
    }
  }

  else
  {
  }

  name4 = [updateCopy name];
  if ([name4 isEqualToString:*MEMORY[0x277CC5E90]])
  {
    isConnected2 = [v5 isConnected];

    v30 = v12;
    if ((isConnected2 & 1) == 0)
    {
      bonjourName4 = [v5 bonjourName];

      if (bonjourName4)
      {
        v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v43 = v42;
        if (v105)
        {
          [v42 addObject:?];
        }

        if (v13)
        {
          [v43 addObject:v13];
        }

        if (v14)
        {
          [v43 addObject:v14];
        }

        if (v103)
        {
          [v43 addObject:v103];
        }

        if (v16)
        {
          [v43 addObject:v16];
        }

        if (v17)
        {
          [v43 addObject:v17];
        }

        if ([v43 count])
        {
          [(PSGAccessoryDetailsController *)self removeContiguousSpecifiers:v43 animated:1];
        }
      }

      else
      {
        v44 = 1;
        if (self->_finishedAppearing)
        {
          goto LABEL_65;
        }

        self->_shouldEscape = 1;
      }
    }

    goto LABEL_64;
  }

  v44 = 0;
  v30 = v12;
LABEL_65:
  bonjourName5 = [v5 bonjourName];
  if (!bonjourName5 || (v72 = bonjourName5, v73 = [v5 isAvailableOverBonjour], v72, !v73))
  {
    bonjourName6 = [v5 bonjourName];

    if (!bonjourName6)
    {
      goto LABEL_78;
    }

    if (self->_finishedAppearing)
    {
      [(PSGAccessoryDetailsController *)self endUpdates];
      goto LABEL_92;
    }

    self->_shouldEscape = 1;
LABEL_81:
    [(PSGAccessoryDetailsController *)self endUpdates];
    if (v44)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  name5 = [updateCopy name];
  if ([name5 isEqualToString:*MEMORY[0x277CC5EB8]])
  {
    hasIPConnection = [v5 hasIPConnection];

    if (hasIPConnection)
    {
      v77 = v17;
      v78 = v16;
      v101 = v13;
      if (v30)
      {
        v79 = [(PSGAccessoryDetailsController *)self indexOfSpecifier:v30];
        v76 = [(PSGAccessoryDetailsController *)self removeSpecifier:v30 animated:1];
      }

      else
      {
        v79 = 1;
      }

      v84 = v30;
      v85 = MEMORY[0x277D3FAD8];
      v86 = PSG_BundleForGeneralSettingsUIFramework(v76);
      v87 = [v86 localizedStringForKey:@"DISCONNECT" value:&stru_282E88A90 table:0];
      v88 = [v85 preferenceSpecifierNamed:v87 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v89 = sel_disconnect;
      goto LABEL_91;
    }
  }

  else
  {
  }

  name6 = [updateCopy name];
  if (![name6 isEqualToString:*MEMORY[0x277CC5EC0]])
  {

    goto LABEL_81;
  }

  hasIPConnection2 = [v5 hasIPConnection];

  if (hasIPConnection2)
  {
LABEL_78:
    [(PSGAccessoryDetailsController *)self endUpdates];
    if (v44)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v77 = v17;
  v78 = v16;
  v101 = v13;
  if (v30)
  {
    v79 = [(PSGAccessoryDetailsController *)self indexOfSpecifier:v30];
    v83 = [(PSGAccessoryDetailsController *)self removeSpecifier:v30 animated:1];
  }

  else
  {
    v79 = 1;
  }

  v90 = v30;
  v91 = MEMORY[0x277D3FAD8];
  v92 = PSG_BundleForGeneralSettingsUIFramework(v83);
  v93 = [v92 localizedStringForKey:@"CONNECT" value:&stru_282E88A90 table:0];
  v88 = [v91 preferenceSpecifierNamed:v93 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v89 = sel_connect;
LABEL_91:
  [v88 setButtonAction:v89];
  [v88 setIdentifier:@"CONNECT_BUTTON"];
  [(PSGAccessoryDetailsController *)self insertSpecifier:v88 atIndex:v79 animated:1];
  [(PSGAccessoryDetailsController *)self endUpdates];
  v30 = v88;
  v13 = v101;
  v16 = v78;
  v17 = v77;
  if (v44)
  {
LABEL_92:
    navigationController = [(PSGAccessoryDetailsController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      navigationController2 = [(PSGAccessoryDetailsController *)self navigationController];
      v97 = [navigationController2 popViewControllerAnimated:1];
    }
  }

LABEL_94:
  objc_storeStrong(&self->_accessory, v5);

  name = v102;
LABEL_95:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = PSGAccessoryDetailsController;
  pathCopy = path;
  v7 = [(PSGAccessoryDetailsController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(PSGAccessoryDetailsController *)self indexForIndexPath:pathCopy, v13.receiver, v13.super_class];

  v9 = [(PSGAccessoryDetailsController *)self specifierAtIndex:v8];
  identifier = [v9 identifier];
  LODWORD(pathCopy) = [identifier isEqualToString:@"SERIALNUMBER"];

  if (pathCopy)
  {
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setAdjustsFontSizeToFitWidth:1];
  }

  return v7;
}

@end