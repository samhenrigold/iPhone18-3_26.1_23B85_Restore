@interface PSGMatterDeviceController
+ (BOOL)shouldShowTestSpecifiers;
+ (id)serviceSpecifierWithPairing:(id)pairing target:(id)target;
+ (id)testSpecifiers;
- (BOOL)isServiceAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)reloadServicesWithCompletion:(id)completion;
- (void)showDeleteFromMatterLocker;
- (void)showDeleteService:(id)service;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PSGMatterDeviceController

+ (BOOL)shouldShowTestSpecifiers
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"PSGMatterControllerShowTestDevices"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)testSpecifiers
{
  v2 = objc_opt_new();
  v3 = [v2 copy];

  return v3;
}

+ (id)serviceSpecifierWithPairing:(id)pairing target:(id)target
{
  v5 = MEMORY[0x277D3FAD8];
  targetCopy = target;
  pairingCopy = pairing;
  fabric = [pairingCopy fabric];
  ecosystem = [fabric ecosystem];
  vendor = [ecosystem vendor];
  displayName = [vendor displayName];
  v12 = [v5 preferenceSpecifierNamed:displayName target:targetCopy set:0 get:sel_detailText_ detail:0 cell:4 edit:0];

  uuid = [pairingCopy uuid];
  uUIDString = [uuid UUIDString];
  [v12 setIdentifier:uUIDString];

  [v12 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v12 setObject:pairingCopy forKeyedSubscript:@"PSGDevicePairingKey"];
  fabric2 = [pairingCopy fabric];

  displayName2 = [fabric2 displayName];
  [v12 setObject:displayName2 forKeyedSubscript:*MEMORY[0x277D401A8]];

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGMatterDeviceController;
  [(PSGMatterDeviceController *)&v4 viewDidLoad];
  table = [(PSGMatterDeviceController *)self table];
  [table setAllowsSelectionDuringEditing:1];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.isa + v3))
  {
    v30 = *MEMORY[0x277D3FC48];
    pairing = [(PSGMatterDeviceController *)self pairing];

    if (!pairing)
    {
      specifier = [(PSGMatterDeviceController *)self specifier];
      v6 = [specifier objectForKeyedSubscript:@"PSGDevicePairingKey"];
      [(PSGMatterDeviceController *)self setPairing:v6];
    }

    v7 = objc_opt_new();
    v29 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MATTER_INFO_GROUP"];
    [v7 addObject:v29];
    v8 = MEMORY[0x277D3FAD8];
    v9 = PSG_LocalizedStringForMatter(@"MATTER_NAME");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:sel_detailText_ detail:0 cell:4 edit:0];

    [v10 setIdentifier:@"MATTER_INFO_NAME"];
    pairing2 = [(PSGMatterDeviceController *)self pairing];
    name = [pairing2 name];
    v13 = *MEMORY[0x277D401A8];
    [v10 setObject:name forKeyedSubscript:*MEMORY[0x277D401A8]];

    v14 = *MEMORY[0x277D3FED8];
    v15 = MEMORY[0x277CBEC38];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FED8]];
    [v7 addObject:v10];
    v16 = MEMORY[0x277D3FAD8];
    v17 = PSG_LocalizedStringForMatter(@"MATTER_SERIAL");
    v18 = [v16 preferenceSpecifierNamed:v17 target:self set:0 get:sel_detailText_ detail:0 cell:4 edit:0];

    [v18 setIdentifier:@"MATTER_INFO_SERIAL"];
    pairing3 = [(PSGMatterDeviceController *)self pairing];
    serialNumber = [pairing3 serialNumber];
    [v18 setObject:serialNumber forKeyedSubscript:v13];

    [v18 setObject:v15 forKeyedSubscript:v14];
    [v7 addObject:v18];
    v21 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"MATTER_INFO_REMOVE_GROUP"];
    [v7 addObject:v21];
    v22 = MEMORY[0x277D3FAD8];
    v23 = PSG_LocalizedStringForMatter(@"ACCESSORY_REMOVE_FROM_ALL_PROMPT");
    v24 = [v22 preferenceSpecifierNamed:v23 target:self set:0 get:sel_detailText_ detail:0 cell:13 edit:0];

    [v24 setIdentifier:@"MATTER_INFO_REMOVE"];
    [v24 setButtonAction:sel_showDeleteFromMatterLocker];
    [v24 setObject:&unk_282E8FF08 forKeyedSubscript:*MEMORY[0x277D3FD78]];
    [v24 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FD80]];
    [v7 addObject:v24];
    v25 = [v7 copy];
    v3 = v30;
    v26 = *(&self->super.super.super.super.super.super.isa + v30);
    *(&self->super.super.super.super.super.super.isa + v30) = v25;
  }

  [(PSGMatterDeviceController *)self reloadServicesWithCompletion:0];
  v27 = *(&self->super.super.super.super.super.super.isa + v3);

  return v27;
}

- (void)reloadServicesWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  pairingManager = [(PSGMatterDeviceController *)self pairingManager];

  if (!pairingManager)
  {
    v7 = objc_alloc(MEMORY[0x277CD5588]);
    pairing = [(PSGMatterDeviceController *)self pairing];
    v9 = [v7 initWithSystemCommissionerPairing:pairing];
    [(PSGMatterDeviceController *)self setPairingManager:v9];
  }

  v10 = _PSGLoggingFacility(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[PSGMatterDeviceController reloadServicesWithCompletion:]";
    _os_log_impl(&dword_21CF20000, v10, OS_LOG_TYPE_DEFAULT, "%s: querying for pairings.", buf, 0xCu);
  }

  [(PSEditableListController *)self setEditingButtonHidden:1 animated:0];
  v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v11];
  v19 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  navigationItem = [(PSGMatterDeviceController *)self navigationItem];
  [navigationItem setRightBarButtonItems:v13];

  [v11 startAnimating];
  pairingManager2 = [(PSGMatterDeviceController *)self pairingManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__PSGMatterDeviceController_reloadServicesWithCompletion___block_invoke;
  v17[3] = &unk_2783254F0;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  [pairingManager2 fetchPairingsWithCompletionHandler:v17];
}

void __58__PSGMatterDeviceController_reloadServicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _PSGLoggingFacility(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__PSGMatterDeviceController_reloadServicesWithCompletion___block_invoke_cold_1();
    }
  }

  v29 = v6;
  v8 = objc_opt_new();
  if (+[PSGMatterDeviceController shouldShowTestSpecifiers])
  {
    v9 = +[PSGMatterDeviceController testSpecifiers];
    [v8 addObjectsFromArray:v9];
  }

  v30 = v8;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v33 = *v40;
    v12 = *MEMORY[0x277CD5560];
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = _PSGLoggingFacility(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v44 = "[PSGMatterDeviceController reloadServicesWithCompletion:]_block_invoke";
          v45 = 2112;
          v46 = v14;
          _os_log_impl(&dword_21CF20000, v15, OS_LOG_TYPE_DEFAULT, "%s: found device pairing %@", buf, 0x16u);
        }

        v16 = [v14 fabric];
        v17 = [v16 ecosystem];
        v18 = [v17 vendor];
        v19 = [v18 identifier];
        v20 = [v19 integerValue];
        v21 = [v12 integerValue];

        if (v20 != v21)
        {
          v22 = [PSGMatterDeviceController serviceSpecifierWithPairing:v14 target:*(a1 + 32)];
          [v30 addObject:v22];
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      v11 = v10;
    }

    while (v10);
  }

  if ([v30 count])
  {
    v23 = MEMORY[0x277D3FAD8];
    v24 = PSG_LocalizedStringForMatter(@"CONNECTED_SERVICES");
    v25 = [v23 groupSpecifierWithID:@"CONNECTED_SERVICES" name:v24];

    [v30 insertObject:v25 atIndex:0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PSGMatterDeviceController_reloadServicesWithCompletion___block_invoke_42;
  block[3] = &unk_278325548;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v35 = v30;
  v36 = v26;
  v38 = v29 != 0;
  v37 = v27;
  v28 = v30;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__PSGMatterDeviceController_reloadServicesWithCompletion___block_invoke_42(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 40) serviceSpecifiers];
  v4 = *(a1 + 40);
  if (*&v4[*MEMORY[0x277D3FC48]])
  {
    v5 = [v4 specifierForID:@"MATTER_INFO_GROUP"];
    v6 = v5;
    if (*(a1 + 56) == 1)
    {
      v7 = PSG_LocalizedStringForMatter(@"MATTER_NO_RESPONSE_FOOTER");
      [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    else
    {
      [v5 setObject:&stru_282E88A90 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    [*(a1 + 40) reloadSpecifier:v6];
    v8 = [v2 count];
    v9 = [v3 count];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 40) removeSpecifier:*(*(&v19 + 1) + 8 * i) animated:{0, v19}];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [*(a1 + 40) insertContiguousSpecifiers:v2 atIndex:0 animated:v8 != v9];
    v4 = *(a1 + 40);
  }

  [v4 setServiceSpecifiers:{v2, v19}];
  v15 = [*(a1 + 40) navigationItem];
  [v15 setRightBarButtonItems:0];

  v16 = *(a1 + 40);
  v17 = [v16 serviceSpecifiers];
  [v16 setEditingButtonHidden:objc_msgSend(v17 animated:{"count") == 0, 0}];

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))();
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = pathCopy;
  if (style == 1)
  {
    v10 = pathCopy;
    pathCopy = [(PSGMatterDeviceController *)self isServiceAtIndexPath:pathCopy];
    v8 = v10;
    if (pathCopy)
    {
      v9 = [(PSGMatterDeviceController *)self specifierAtIndexPath:v10];
      [(PSGMatterDeviceController *)self showDeleteService:v9];

      v8 = v10;
    }
  }

  MEMORY[0x2821F96F8](pathCopy, v8);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = PSGMatterDeviceController;
  pathCopy = path;
  v7 = [(PSGMatterDeviceController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(PSGMatterDeviceController *)self specifierAtIndexPath:pathCopy, v16.receiver, v16.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v10 = [v9 isEqualToString:@"MATTER_INFO_REMOVE"];

    if (v10)
    {
      v11 = v7;
      if ([v11 type] == 13)
      {
        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        textLabel = [v11 textLabel];
        [textLabel setTextColor:systemRedColor];

        goto LABEL_7;
      }
    }
  }

  v14 = v7;
LABEL_7:

  return v7;
}

- (BOOL)isServiceAtIndexPath:(id)path
{
  v3 = [(PSGMatterDeviceController *)self specifierAtIndexPath:path];
  v4 = [v3 objectForKeyedSubscript:@"PSGDevicePairingKey"];
  v5 = v4 != 0;

  return v5;
}

- (void)showDeleteService:(id)service
{
  serviceCopy = service;
  v5 = MEMORY[0x277CCACA8];
  v6 = PSG_LocalizedStringForMatter(@"SERVICE_DELETE_PROMPT_DETAIL");
  name = [serviceCopy name];
  v8 = [v5 stringWithFormat:v6, name];

  v9 = MEMORY[0x277D75110];
  v10 = PSG_LocalizedStringForMatter(@"SERVICE_DELETE_PROMPT");
  v11 = [v9 alertControllerWithTitle:v10 message:v8 preferredStyle:1];

  v12 = MEMORY[0x277CCACA8];
  v13 = PSG_LocalizedStringForMatter(@"SERVICE_DELETE_PROMPT_DELETE");
  name2 = [serviceCopy name];
  v15 = [v12 stringWithFormat:v13, name2];

  v16 = MEMORY[0x277D750F8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__PSGMatterDeviceController_showDeleteService___block_invoke;
  v23[3] = &unk_2783250E0;
  v24 = serviceCopy;
  selfCopy = self;
  v17 = serviceCopy;
  v18 = [v16 actionWithTitle:v15 style:2 handler:v23];
  [v11 addAction:v18];

  v19 = MEMORY[0x277D750F8];
  v20 = PSG_LocalizedStringForMatter(@"SERVICE_DELETE_PROMPT_CANCEL");
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __47__PSGMatterDeviceController_showDeleteService___block_invoke_2;
  v22[3] = &unk_278325290;
  v22[4] = self;
  v21 = [v19 actionWithTitle:v20 style:1 handler:v22];
  [v11 addAction:v21];

  [(PSGMatterDeviceController *)self presentViewController:v11 animated:1 completion:0];
}

void __47__PSGMatterDeviceController_showDeleteService___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"PSGDevicePairingKey"];
  if (v2)
  {
    v3 = [*(a1 + 40) pairingManager];
    v4 = [v2 uuid];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__PSGMatterDeviceController_showDeleteService___block_invoke_70;
    v6[3] = &unk_278325518;
    v6[4] = *(a1 + 40);
    [v3 removePairingWithUUID:v4 completionHandler:v6];
  }

  else
  {
    v3 = _PSGLoggingFacility(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) name];
      *buf = 136315394;
      v8 = "[PSGMatterDeviceController showDeleteService:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_21CF20000, v3, OS_LOG_TYPE_DEFAULT, "%s: not deleting device because it has no pairing.: %@", buf, 0x16u);
    }
  }
}

void __47__PSGMatterDeviceController_showDeleteService___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _PSGLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__PSGMatterDeviceController_showDeleteService___block_invoke_70_cold_1();
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PSGMatterDeviceController_showDeleteService___block_invoke_71;
  block[3] = &unk_278324EE0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)showDeleteFromMatterLocker
{
  v3 = MEMORY[0x277D75110];
  v4 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT");
  v5 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_DETAIL");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_REMOVE_FROM_MATTER");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke;
  v14[3] = &unk_278325290;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:2 handler:v14];
  [v6 addAction:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = PSG_LocalizedStringForMatter(@"ACCESSORY_DELETE_PROMPT_CANCEL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_91;
  v13[3] = &unk_278325290;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:1 handler:v13];
  [v6 addAction:v12];

  [(PSGMatterDeviceController *)self presentViewController:v6 animated:1 completion:0];
}

void __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) specifier];
  v3 = [v2 objectForKeyedSubscript:@"PSGDevicePairingKey"];

  if (v3)
  {
    v5 = objc_opt_new();
    v6 = [v3 uuid];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_87;
    v7[3] = &unk_278325518;
    v7[4] = *(a1 + 32);
    [v5 removePairingWithUUID:v6 completionHandler:v7];
  }

  else
  {
    v5 = _PSGLoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[PSGMatterDeviceController showDeleteFromMatterLocker]_block_invoke";
      _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "%s: not deleting device because it has no pairing.", buf, 0xCu);
    }
  }
}

void __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_2;
  v6[3] = &unk_278324FE8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = _PSGLoggingFacility(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_2_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = [*(a1 + 40) navigationController];
  v12 = [v11 popViewControllerAnimated:1];
}

void __58__PSGMatterDeviceController_reloadServicesWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_21CF20000, v0, v1, "%s: error when fetching pairings: %@", v2, v3, v4, v5, v6);
}

void __47__PSGMatterDeviceController_showDeleteService___block_invoke_70_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_21CF20000, v0, v1, "%s: error when deleting pairing: %@", v2, v3, v4, v5, v6);
}

void __55__PSGMatterDeviceController_showDeleteFromMatterLocker__block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "[PSGMatterDeviceController showDeleteFromMatterLocker]_block_invoke_2";
  *&v8[12] = 2112;
  *&v8[14] = *a1;
  OUTLINED_FUNCTION_1(&dword_21CF20000, a2, a3, "%s: error when deleting pairing: %@", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

@end