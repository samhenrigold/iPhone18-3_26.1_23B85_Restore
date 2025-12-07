@interface CRSIconLayoutController
- (CRSIconLayoutController)init;
- (void)dealloc;
- (void)exportIconStateForCertificateSerial:(id)serial categories:(unint64_t)categories completion:(id)completion;
- (void)fetchApplicationIconInformationForBundleIdentifier:(id)identifier vehicleID:(id)d showBorder:(BOOL)border completion:(id)completion;
- (void)fetchIconStateForVehicleID:(id)d completion:(id)completion;
- (void)fetchWidgetStateForVehicleID:(id)d completion:(id)completion;
- (void)invalidate;
- (void)refreshWidgetStateForVehicleID:(id)d;
- (void)resetIconStateForVehicleID:(id)d;
- (void)resetWidgetStateForVehicleID:(id)d;
- (void)setIconOrder:(id)order hiddenIcons:(id)icons forVehicleID:(id)d;
- (void)setWidgetState:(id)state forVehicleID:(id)d;
@end

@implementation CRSIconLayoutController

- (CRSIconLayoutController)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CRSIconLayoutController;
  v2 = [(CRSIconLayoutController *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x277CF3288];
    v4 = +[CRSIconLayoutServiceSpecification identifier];
    v5 = [v3 endpointForMachName:@"com.apple.CarPlayApp.service" service:v4 instance:0];

    v6 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
    connection = v2->_connection;
    v2->_connection = v6;

    v8 = v2->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __31__CRSIconLayoutController_init__block_invoke;
    v15[3] = &unk_278D8E1A8;
    v9 = v2;
    v16 = v9;
    [(BSServiceConnection *)v8 configureConnection:v15];
    Serial = BSDispatchQueueCreateSerial();
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = Serial;

    v12 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v2->_connection;
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_242FB5000, v12, OS_LOG_TYPE_INFO, "Activating connection! %@", buf, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection activate];
  }

  return v2;
}

void __31__CRSIconLayoutController_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[CRSIconLayoutServiceSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[CRSIconLayoutServiceSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_3];
  [v5 setInterruptionHandler:&__block_literal_global_69];
  [v5 setInvalidationHandler:&__block_literal_global_72];
}

void __31__CRSIconLayoutController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection activated! %@", &v4, 0xCu);
  }
}

void __31__CRSIconLayoutController_init__block_invoke_67(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "[CRSIconLayoutController] connection interrupted! Reactivating... %@", &v4, 0xCu);
  }

  [v2 activate];
}

void __31__CRSIconLayoutController_init__block_invoke_70(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v4, 0xCu);
  }
}

- (void)dealloc
{
  connection = [(CRSIconLayoutController *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = CRSIconLayoutController;
  [(CRSIconLayoutController *)&v4 dealloc];
}

- (void)fetchIconStateForVehicleID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = dCopy;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Fetching icon state for vehicle: %{public}@", buf, 0xCu);
    }

    connection = [(CRSIconLayoutController *)self connection];
    remoteTarget = [connection remoteTarget];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke;
    v11[3] = &unk_278D8E220;
    v11[4] = self;
    v12 = completionCopy;
    [remoteTarget fetchIconStateForVehicleID:dCopy completion:v11];
  }
}

void __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 iconOrder];
  [v4 setObject:v5 forKeyedSubscript:@"iconOrder"];

  v6 = [v3 hiddenIcons];
  v7 = [v6 bs_map:&__block_literal_global_82];

  [v4 setObject:v7 forKeyedSubscript:@"hiddenIcons"];
  v8 = [v3 oemIconLabel];
  [v4 setObject:v8 forKeyedSubscript:@"OEMIconLabel"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "displaysOEMIcon")}];
  [v4 setObject:v9 forKeyedSubscript:@"displaysOEMIcon"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "rows")}];
  [v4 setObject:v10 forKeyedSubscript:@"rows"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 columns];

  v13 = [v11 numberWithUnsignedInteger:v12];
  [v4 setObject:v13 forKeyedSubscript:@"columns"];

  v14 = [*(a1 + 32) callbackQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke_3;
  v17[3] = &unk_278D8E1F8;
  v15 = *(a1 + 40);
  v18 = v4;
  v19 = v15;
  v16 = v4;
  dispatch_async(v14, v17);
}

void __65__CRSIconLayoutController_fetchIconStateForVehicleID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)exportIconStateForCertificateSerial:(id)serial categories:(unint64_t)categories completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    serialCopy = serial;
    v8 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Exporting icon state for vehicle by certificate serial.", buf, 2u);
    }

    v9 = completionCopy;
    CRVehicleIdentifierForCertificateSerial();
  }
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke(void *a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_2;
  v5[3] = &unk_278D8E298;
  v4 = a1[4];
  v3 = a1[5];
  v7 = a1[6];
  v5[4] = v4;
  v6 = v3;
  [v4 fetchIconStateForVehicleID:a2 completion:v5];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF8A28];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 objectForKeyedSubscript:@"iconOrder"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_3;
  v17[3] = &unk_278D8E270;
  v8 = *(a1 + 48);
  v18 = v5;
  v20 = v8;
  v9 = v6;
  v19 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v17];
  v11 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_132;
  block[3] = &unk_278D8E1F8;
  v12 = *(a1 + 40);
  v15 = v9;
  v16 = v12;
  v13 = v9;
  dispatch_async(v11, block);
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4;
  v7[3] = &unk_278D8E248;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v10 = v5;
  v9 = v6;
  [a2 enumerateObjectsUsingBlock:v7];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isEqualToString:@"com.apple.cardisplay.OEM"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.cardisplay.nowplaying") & 1) == 0)
  {
    v4 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v3];
    v5 = [MEMORY[0x277CF8A10] requiredInfoKeys];
    v6 = [v4 objectsForInfoDictionaryKeys:v5];

    v7 = [MEMORY[0x277CF8A10] requiredEntitlementKeys];
    v8 = [v4 entitlementValuesForKeys:v7];

    v9 = [MEMORY[0x277CF8A10] declarationForBundleIdentifier:v3 info:v6 entitlements:v8];
    v10 = [*(a1 + 32) effectivePolicyForAppDeclaration:v9];
    v11 = v10;
    v12 = *(a1 + 48);
    if ((v12 & 1) == 0 && ([v10 applicationCategory] & v12) == 0)
    {
      v16 = CRSLogForCategory(1uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_2(v3, v11, v16);
      }

      goto LABEL_38;
    }

    v13 = [v4 localizedNameForContext:@"Car"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v4 localizedNameForContext:0];
    }

    v16 = v15;

    if (([v11 applicationCategory] & 0x10) != 0)
    {
      v18 = @"audio";
    }

    else if (([v11 applicationCategory] & 4) != 0)
    {
      v18 = @"calling";
    }

    else if (([v11 applicationCategory] & 2) != 0)
    {
      v18 = @"messaging";
    }

    else if (([v11 applicationCategory] & 8) != 0)
    {
      v18 = @"navigation";
    }

    else if (([v11 applicationCategory] & 0x20) != 0)
    {
      v18 = @"automaker";
    }

    else if (([v11 applicationCategory] & 0x200) != 0)
    {
      v18 = @"parking";
    }

    else if (([v11 applicationCategory] & 0x100) != 0)
    {
      v18 = @"charging";
    }

    else if (([v11 applicationCategory] & 0x80) != 0)
    {
      v18 = @"quick ordering";
    }

    else if (([v11 applicationCategory] & 0x400) != 0)
    {
      v18 = @"productivity";
    }

    else if (([v11 applicationCategory] & 0x800) != 0)
    {
      v18 = @"fueling";
    }

    else
    {
      if (([v11 applicationCategory] & 0x1000) == 0)
      {
        v17 = CRSLogForCategory(1uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_1(v3, v17);
        }

LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v18 = @"driving task";
    }

    v19 = *(a1 + 40);
    v21[0] = @"CARApplicationLocalizedNameKey";
    v21[1] = @"CARApplicationBundleIdentifierKey";
    v20 = &stru_28559CEB8;
    if (v16)
    {
      v20 = v16;
    }

    v22[0] = v20;
    v22[1] = v3;
    v21[2] = @"CARApplicationCategoryKey";
    v22[2] = v18;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    [v19 addObject:v17];
    goto LABEL_37;
  }

LABEL_39:
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_132(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

- (void)setIconOrder:(id)order hiddenIcons:(id)icons forVehicleID:(id)d
{
  v21[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iconsCopy = icons;
  v10 = [order bs_map:&__block_literal_global_138];
  v11 = [iconsCopy bs_map:&__block_literal_global_141];

  v12 = [[CRSIconLayoutPage alloc] initWithIcons:v10];
  v13 = [CRSIconLayoutState alloc];
  v21[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v15 = [(CRSIconLayoutState *)v13 initWithPages:v14 hiddenIcons:v11];

  v16 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 138543362;
    v20 = dCopy;
    _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_INFO, "Setting icon state for vehicle: %{public}@", &v19, 0xCu);
  }

  connection = [(CRSIconLayoutController *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget setIconState:v15 forVehicleID:dCopy];
}

CRSApplicationIcon *__65__CRSIconLayoutController_setIconOrder_hiddenIcons_forVehicleID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRSApplicationIcon alloc] initWithBundleIdentifier:v2];

  return v3;
}

CRSApplicationIcon *__65__CRSIconLayoutController_setIconOrder_hiddenIcons_forVehicleID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRSApplicationIcon alloc] initWithBundleIdentifier:v2];

  return v3;
}

- (void)resetIconStateForVehicleID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = dCopy;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_INFO, "Resetting icon state for vehicle: %{public}@", &v8, 0xCu);
  }

  connection = [(CRSIconLayoutController *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget resetIconStateForVehicleID:dCopy];
}

- (void)fetchApplicationIconInformationForBundleIdentifier:(id)identifier vehicleID:(id)d showBorder:(BOOL)border completion:(id)completion
{
  borderCopy = border;
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = identifierCopy;
      v22 = 2114;
      v23 = dCopy;
      _os_log_impl(&dword_242FB5000, v13, OS_LOG_TYPE_INFO, "Fetching icon information for bundle ID: %@, vehicle: %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    connection = [(CRSIconLayoutController *)self connection];
    remoteTarget = [connection remoteTarget];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:borderCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __110__CRSIconLayoutController_fetchApplicationIconInformationForBundleIdentifier_vehicleID_showBorder_completion___block_invoke;
    v17[3] = &unk_278D8E308;
    objc_copyWeak(&v19, buf);
    v18 = completionCopy;
    [remoteTarget fetchApplicationIconInformationForBundleIdentifier:identifierCopy vehicleID:dCopy drawBorder:v16 completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __110__CRSIconLayoutController_fetchApplicationIconInformationForBundleIdentifier_vehicleID_showBorder_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained callbackQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __110__CRSIconLayoutController_fetchApplicationIconInformationForBundleIdentifier_vehicleID_showBorder_completion___block_invoke_2;
    v7[3] = &unk_278D8E1F8;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)fetchWidgetStateForVehicleID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = dCopy;
      _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Fetching widget state for vehicle: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    connection = [(CRSIconLayoutController *)self connection];
    remoteTarget = [connection remoteTarget];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__CRSIconLayoutController_fetchWidgetStateForVehicleID_completion___block_invoke;
    v11[3] = &unk_278D8E358;
    objc_copyWeak(&v13, buf);
    v12 = completionCopy;
    [remoteTarget fetchWidgetStateForVehicleID:dCopy completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __67__CRSIconLayoutController_fetchWidgetStateForVehicleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__CRSIconLayoutController_fetchWidgetStateForVehicleID_completion___block_invoke_2;
    block[3] = &unk_278D8E330;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)setWidgetState:(id)state forVehicleID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stateCopy = state;
  v8 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = dCopy;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_INFO, "Setting widget state for vehicle: %{public}@", &v11, 0xCu);
  }

  connection = [(CRSIconLayoutController *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget setWidgetState:stateCopy forVehicleID:dCopy];
}

- (void)resetWidgetStateForVehicleID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = dCopy;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_INFO, "Resetting widget state for vehicle: %{public}@", &v8, 0xCu);
  }

  connection = [(CRSIconLayoutController *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget resetWidgetStateForVehicleID:dCopy];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = [(CRSIconLayoutController *)self connection];
    v6 = 138412290;
    v7 = connection;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_INFO, "Invalidating connection! %@", &v6, 0xCu);
  }

  connection2 = [(CRSIconLayoutController *)self connection];
  [connection2 invalidate];
}

- (void)refreshWidgetStateForVehicleID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v9 = dCopy;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_INFO, "Requesting to refresh widget state for vehicle: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRSIconLayoutController_refreshWidgetStateForVehicleID___block_invoke;
  block[3] = &unk_278D8E380;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CRSIconLayoutController_refreshWidgetStateForVehicleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v5 = @"vehicleID";
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"CRSWidgetLayoutStateChangedNotification" object:0 userInfo:v4];
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_242FB5000, a2, OS_LOG_TYPE_DEBUG, "Unable to determine a category for %@", &v2, 0xCu);
}

void __85__CRSIconLayoutController_exportIconStateForCertificateSerial_categories_completion___block_invoke_4_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "applicationCategory")}];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_242FB5000, a3, OS_LOG_TYPE_DEBUG, "Ignoring app %@ with categories %@", &v6, 0x16u);
}

@end