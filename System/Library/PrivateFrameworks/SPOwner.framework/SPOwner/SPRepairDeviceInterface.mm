@interface SPRepairDeviceInterface
- (void)deviceAttributesForContext:(id)context completion:(id)completion;
- (void)deviceForBeaconIdentifier:(id)identifier completion:(id)completion;
- (void)deviceForFindMyId:(id)id completion:(id)completion;
- (void)deviceForSerialNumber:(id)number completion:(id)completion;
- (void)updateRepairStateForSerialNumber:(id)number updateBlock:(id)block;
@end

@implementation SPRepairDeviceInterface

- (void)deviceAttributesForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = objc_opt_new();
  serialNumbers = [contextCopy serialNumbers];
  v10 = [serialNumbers count];

  if (v10)
  {
    v11 = [SPSimpleBeaconContext alloc];
    serialNumbers2 = [contextCopy serialNumbers];
    allObjects = [serialNumbers2 allObjects];
    v14 = [(SPSimpleBeaconContext *)v11 initWithFetchProperties:0x2000 matchingSerialNumbers:allObjects];
  }

  else
  {
    findMyIds = [contextCopy findMyIds];
    v16 = [findMyIds count];

    if (v16)
    {
      v17 = [SPSimpleBeaconContext alloc];
      serialNumbers2 = [contextCopy findMyIds];
      allObjects = [serialNumbers2 allObjects];
      v14 = [(SPSimpleBeaconContext *)v17 initWithFetchProperties:0x2000 matchingFindMyIds:allObjects];
    }

    else
    {
      beaconIdentifiers = [contextCopy beaconIdentifiers];
      v19 = [beaconIdentifiers count];

      if (!v19)
      {
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:5 userInfo:0];
        completionCopy[2](completionCopy, 0, v23);

        goto LABEL_8;
      }

      v20 = [SPSimpleBeaconContext alloc];
      serialNumbers2 = [contextCopy beaconIdentifiers];
      allObjects = [serialNumbers2 allObjects];
      v14 = [(SPSimpleBeaconContext *)v20 initWithFetchProperties:0x2000 matchingBeaconUUIDs:allObjects];
    }
  }

  v21 = v14;

  type = [contextCopy type];
  [v21 setRepairContextType:type];

  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke;
  v24[3] = &unk_279B58A48;
  objc_copyWeak(&v26, &location);
  v25 = completionCopy;
  [v8 setSimpleBeaconDifferenceBlock:v24];
  [v8 startUpdatingSimpleBeaconsWithContext:v21 completion:&__block_literal_global];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

LABEL_8:
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LogCategory_OwnerSession(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_cold_1(v6, v9);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v12 = [v5 insertions];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [v8 beaconSession];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3;
        v29[3] = &unk_279B58A20;
        v30 = 0;
        [v14 stopUpdatingSimpleBeaconsWithCompletion:v29];

        v15 = objc_opt_new();
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = [v5 insertions];
        v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v26;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v25 + 1) + 8 * i);
              v22 = [SPRepairDeviceAttributes alloc];
              v23 = [v21 object];
              v24 = [(SPRepairDeviceAttributes *)v22 initWithInternalSimpleBeacon:v23];

              [v15 addObject:v24];
            }

            v18 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v18);
        }

        (*(*(a1 + 32) + 16))();
        v6 = 0;
      }
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
  }
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = LogCategory_OwnerSession(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3_cold_1();
    }
  }
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Starting fetch of devices. Subscribed %i, error: %@", v6, 0x12u);
  }
}

- (void)deviceForSerialNumber:(id)number completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  completionCopy = completion;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v22[0] = numberCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingSerialNumbers:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279B58AB8;
  objc_copyWeak(&v20, &location);
  v12 = completionCopy;
  v19 = v12;
  v13 = numberCopy;
  v18 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_10;
  v15[3] = &unk_279B58A20;
  v14 = v13;
  v16 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v12 = [v5 insertions];
    v13 = [v12 firstObject];
    v11 = [v13 object];

    if (v11)
    {
      v14 = [v8 beaconSession];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9;
      v20 = &unk_279B58A90;
      v21 = *(a1 + 32);
      v22 = 0;
      [v14 stopUpdatingSimpleBeaconsWithCompletion:&v17];

      v15 = [SPRepairDeviceAttributes alloc];
      v16 = [(SPRepairDeviceAttributes *)v15 initWithInternalSimpleBeacon:v11, v17, v18, v19, v20];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v9 = LogCategory_OwnerSession(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = LogCategory_OwnerSession(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1();
    }
  }
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_10(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v8, 0x1Cu);
  }
}

- (void)deviceForFindMyId:(id)id completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v22[0] = idCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingFindMyIds:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke;
  v17[3] = &unk_279B58AB8;
  objc_copyWeak(&v20, &location);
  v12 = completionCopy;
  v19 = v12;
  v13 = idCopy;
  v18 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_12;
  v15[3] = &unk_279B58A20;
  v14 = v13;
  v16 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v12 = [v5 insertions];
    v13 = [v12 firstObject];
    v11 = [v13 object];

    if (v11)
    {
      v14 = [v8 beaconSession];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_11;
      v20 = &unk_279B58A90;
      v21 = *(a1 + 32);
      v22 = 0;
      [v14 stopUpdatingSimpleBeaconsWithCompletion:&v17];

      v15 = [SPRepairDeviceAttributes alloc];
      v16 = [(SPRepairDeviceAttributes *)v15 initWithInternalSimpleBeacon:v11, v17, v18, v19, v20];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v9 = LogCategory_OwnerSession(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = LogCategory_OwnerSession(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1();
    }
  }
}

void __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_12(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v8, 0x1Cu);
  }
}

- (void)deviceForBeaconIdentifier:(id)identifier completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v22[0] = identifierCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingBeaconUUIDs:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke;
  v17[3] = &unk_279B58AB8;
  objc_copyWeak(&v20, &location);
  v12 = completionCopy;
  v19 = v12;
  v13 = identifierCopy;
  v18 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_14;
  v15[3] = &unk_279B58A20;
  v14 = v13;
  v16 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v12 = [v5 insertions];
    v13 = [v12 firstObject];
    v11 = [v13 object];

    if (v11)
    {
      v14 = [v8 beaconSession];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_13;
      v20 = &unk_279B58A90;
      v21 = *(a1 + 32);
      v22 = 0;
      [v14 stopUpdatingSimpleBeaconsWithCompletion:&v17];

      v15 = [SPRepairDeviceAttributes alloc];
      v16 = [(SPRepairDeviceAttributes *)v15 initWithInternalSimpleBeacon:v11, v17, v18, v19, v20];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v9 = LogCategory_OwnerSession(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = LogCategory_OwnerSession(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1();
    }
  }
}

void __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_14(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v8, 0x1Cu);
  }
}

- (void)updateRepairStateForSerialNumber:(id)number updateBlock:(id)block
{
  v22[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  blockCopy = block;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v22[0] = numberCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingSerialNumbers:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke;
  v17[3] = &unk_279B58AB8;
  objc_copyWeak(&v20, &location);
  v12 = blockCopy;
  v19 = v12;
  v13 = numberCopy;
  v18 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke_15;
  v15[3] = &unk_279B58A20;
  v14 = v13;
  v16 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v15];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v12 = [v5 insertions];
    v13 = [v12 firstObject];
    v11 = [v13 object];

    if (v11)
    {
      v14 = [[SPRepairDeviceAttributes alloc] initWithInternalSimpleBeacon:v11];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v9 = LogCategory_OwnerSession(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke_15(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v8, 0x1Cu);
  }
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "Error during update of devices error: %@", &v2, 0xCu);
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end