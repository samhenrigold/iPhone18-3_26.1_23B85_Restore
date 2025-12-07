@interface VGExternalAccessory
- (BOOL)_currentStatePassesEVRoutingRequirements;
- (BOOL)_isAccessoryTracked:(id)tracked;
- (BOOL)_isConnectedToCarPlayAccessory;
- (BOOL)_isConnectedToElectricVehicle;
- (BOOL)_isConnectedVehicleAllowlisted;
- (BOOL)isConnectedToAccessoryWithIdentifier:(id)identifier;
- (BOOL)isConnectedToVehicle:(id)vehicle;
- (VGExternalAccessory)init;
- (VGExternalAccessoryUpdating)accessoryUpdateDelegate;
- (id)_bluetoothIdentifier;
- (id)_firmwareId;
- (id)_identifier;
- (id)_modelIdFromArguments:(id)arguments;
- (id)_vehicleForCurrentState;
- (id)_vehicleStateForCurrentState;
- (void)_accessoryDidConnect:(id)connect;
- (void)_accessoryDidDisconnect:(id)disconnect;
- (void)_accessoryDidUpdateVehicle:(id)vehicle;
- (void)_addNewCarPlayAccessory:(id)accessory;
- (void)_checkAvailableAccessoriesAndAttachIfNeeded;
- (void)_notifyDelegateWithCurrentVehicle;
- (void)_removeCarPlayAccessory:(id)accessory;
- (void)_updateFromVehicleInfo:(id)info;
- (void)dealloc;
- (void)getStateOfChargeForVehicle:(id)vehicle completion:(id)completion;
- (void)listCarsWithCompletion:(id)completion;
@end

@implementation VGExternalAccessory

- (VGExternalAccessory)init
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = VGExternalAccessory;
  v2 = [(VGExternalAccessory *)&v20 init];
  if (v2)
  {
    v3 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v22 = v2;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] init: created new VGExternalAccessory", buf, 0xCu);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("VGExternalAccessory.WorkQueue", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("VGExternalAccessory.DelegateQueue", v7);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    trackedAccessoriesByConnectionId = v2->_trackedAccessoriesByConnectionId;
    v2->_trackedAccessoriesByConnectionId = v10;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidConnect_ name:*MEMORY[0x277CC5E88] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidUpdateVehicle_ name:*MEMORY[0x277CC5EA8] object:0];
    [defaultCenter addObserver:v2 selector:sel__accessoryDidDisconnect_ name:*MEMORY[0x277CC5E90] object:0];
    v13 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v22 = v2;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "[%{public}p] Registering for local accessory notifications", buf, 0xCu);
    }

    mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
    [mEMORY[0x277CC5FB0] registerForLocalNotifications];

    [(VGExternalAccessory *)v2 _checkAvailableAccessoriesAndAttachIfNeeded];
    BOOL = GEOConfigGetBOOL();
    p_super = VGGetExternalAccessoryLog();
    v17 = os_log_type_enabled(p_super, OS_LOG_TYPE_INFO);
    if (BOOL)
    {
      if (v17)
      {
        *buf = 134349056;
        v22 = v2;
        _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_INFO, "[%{public}p] Allowlisting enabled, will initialize model filter", buf, 0xCu);
      }

      v18 = objc_alloc_init(VGExternalAccessoryModelFilter);
      p_super = &v2->_modelFilter->super;
      v2->_modelFilter = v18;
    }

    else if (v17)
    {
      *buf = 134349056;
      v22 = v2;
      _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_INFO, "[%{public}p] Allowlisting disabled, will not initialize model filter", buf, 0xCu);
    }
  }

  return v2;
}

- (void)_checkAvailableAccessoriesAndAttachIfNeeded
{
  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__VGExternalAccessory__checkAvailableAccessoriesAndAttachIfNeeded__block_invoke;
  block[3] = &unk_279E26F20;
  objc_copyWeak(&v8, &location);
  v7 = mEMORY[0x277CC5FB0];
  v5 = mEMORY[0x277CC5FB0];
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__VGExternalAccessory__checkAvailableAccessoriesAndAttachIfNeeded__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v2 = [*(a1 + 32) connectedAccessories];
    v3 = [v2 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v31;
      *&v4 = 134349570;
      v27 = v4;
      do
      {
        v7 = 0;
        v28 = v5;
        do
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v30 + 1) + 8 * v7);
          v9 = [(__CFString *)v8 _vg_supportsCarPlay];
          v10 = VGGetExternalAccessoryLog();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
          if (v9)
          {
            if (v11)
            {
              v12 = [(__CFString *)v8 supportsCarPlay];
              v13 = v6;
              v14 = @"YES";
              if (!v12)
              {
                v14 = @"NO";
              }

              v15 = v14;
              if ([(__CFString *)v8 supportsWirelessCarPlay])
              {
                v16 = @"YES";
              }

              else
              {
                v16 = @"NO";
              }

              v17 = v16;
              if ([(__CFString *)v8 supportsUSBCarPlay])
              {
                v18 = @"YES";
              }

              else
              {
                v18 = @"NO";
              }

              v19 = v2;
              v20 = v18;
              *buf = 134350082;
              v35 = WeakRetained;
              v36 = 2112;
              v37 = v8;
              v38 = 2112;
              v39 = v15;
              v40 = 2112;
              v41 = v17;
              v42 = 2112;
              v43 = v20;
              _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] init: will use accessory: %@ supportsCarPlay: %@, supportsWirelessCarPlay: %@. supportsUSBCarPlay: %@", buf, 0x34u);

              v2 = v19;
              v6 = v13;
              v5 = v28;
            }

            [WeakRetained _addNewCarPlayAccessory:v8];
          }

          else
          {
            if (v11)
            {
              *buf = v27;
              v35 = WeakRetained;
              v36 = 2048;
              v37 = v8;
              v38 = 2112;
              v39 = v8;
              _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] init: skipping accessory as it doesn't support CarPlay: %p %@", buf, 0x20u);
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v5);
    }

    v21 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [WeakRetained[3] count];
      *buf = 134349312;
      v35 = WeakRetained;
      v36 = 2048;
      v37 = v22;
      v23 = "[%{public}p] _checkCurrentAccessoriesAndAttachIfNeeded: currently connected to %lu CarPlay accessories";
      v24 = v21;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 22;
LABEL_28:
      _os_log_impl(&dword_270EC1000, v24, v25, v23, buf, v26);
    }
  }

  else
  {
    v21 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[VGExternalAccessory _checkAvailableAccessoriesAndAttachIfNeeded]_block_invoke";
      v36 = 1024;
      LODWORD(v37) = 269;
      v23 = "strongSelf went away in %s line %d";
      v24 = v21;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 18;
      goto LABEL_28;
    }
  }
}

- (VGExternalAccessoryUpdating)accessoryUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryUpdateDelegate);

  return WeakRetained;
}

- (void)listCarsWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2080;
    v17 = "[VGExternalAccessory listCarsWithCompletion:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VGExternalAccessory_listCarsWithCompletion___block_invoke;
  block[3] = &unk_279E26F48;
  objc_copyWeak(&v13, buf);
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __46__VGExternalAccessory_listCarsWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 6) && [*(WeakRetained + 3) count])
    {
      v4 = *(a1 + 32);
      v9 = *(v3 + 6);
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
      (*(v4 + 16))(v4, v5, 0);
    }

    else
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = GEOErrorDomain();
      v5 = [v6 errorWithDomain:v7 code:-11 userInfo:0];

      v8 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v11 = v3;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Either accessory is not connected or we don't have any _currentVehicleState yet.", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v5);
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[VGExternalAccessory listCarsWithCompletion:]_block_invoke";
      v12 = 1024;
      v13 = 682;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

- (void)getStateOfChargeForVehicle:(id)vehicle completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  completionCopy = completion;
  v8 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v9 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543618;
    v20 = selfCopy;
    v21 = 2080;
    v22 = "[VGExternalAccessory getStateOfChargeForVehicle:completion:]";
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__VGExternalAccessory_getStateOfChargeForVehicle_completion___block_invoke;
  block[3] = &unk_279E26CD0;
  objc_copyWeak(&v18, buf);
  v16 = vehicleCopy;
  v17 = completionCopy;
  v13 = vehicleCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __61__VGExternalAccessory_getStateOfChargeForVehicle_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[5] && [WeakRetained[3] count])
    {
      v4 = [*(a1 + 32) iapIdentifier];
      v5 = [v3[5] identifier];
      v6 = [v4 isEqualToString:v5];

      if (v6)
      {
        (*(*(a1 + 40) + 16))();
        goto LABEL_14;
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = GEOErrorDomain();
      v9 = [v12 errorWithDomain:v13 code:-13 userInfo:0];

      v10 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 32) identifier];
        v15 = v3[5];
        v16 = 134349570;
        v17 = v3;
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "[%{public}p] SoC requested for %@ but the currently connected vehicle is %@", &v16, 0x20u);
      }
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = GEOErrorDomain();
      v9 = [v7 errorWithDomain:v8 code:-11 userInfo:0];

      v10 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 134349056;
        v17 = v3;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "[%{public}p] Either accessory is not connected or we don't have any _currentVehicleState yet.", &v16, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  v11 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[VGExternalAccessory getStateOfChargeForVehicle:completion:]_block_invoke";
    v18 = 1024;
    LODWORD(v19) = 660;
    _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v16, 0x12u);
  }

LABEL_14:
}

- (BOOL)isConnectedToAccessoryWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543618;
    *&buf[4] = selfCopy;
    *&buf[12] = 2080;
    *&buf[14] = "[VGExternalAccessory isConnectedToAccessoryWithIdentifier:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VGExternalAccessory_isConnectedToAccessoryWithIdentifier___block_invoke;
  block[3] = &unk_279E26E60;
  v14 = identifierCopy;
  v15 = buf;
  block[4] = self;
  v10 = identifierCopy;
  dispatch_sync(workQueue, block);
  v11 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v11;
}

void __60__VGExternalAccessory_isConnectedToAccessoryWithIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isConnectedToCarPlayAccessory])
  {
    v2 = [*(a1 + 32) _identifier];
    *(*(*(a1 + 48) + 8) + 24) = [v2 isEqualToString:*(a1 + 40)];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)isConnectedToVehicle:(id)vehicle
{
  v18 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543618;
    *&buf[4] = selfCopy;
    *&buf[12] = 2080;
    *&buf[14] = "[VGExternalAccessory isConnectedToVehicle:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VGExternalAccessory_isConnectedToVehicle___block_invoke;
  block[3] = &unk_279E26E60;
  block[4] = self;
  v14 = vehicleCopy;
  v15 = buf;
  v10 = vehicleCopy;
  dispatch_sync(workQueue, block);
  v11 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v11;
}

void __44__VGExternalAccessory_isConnectedToVehicle___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isConnectedToCarPlayAccessory];
  v3 = [*(a1 + 40) iapIdentifier];

  v4 = [*(*(a1 + 32) + 48) iapIdentifier];
  v5 = [*(a1 + 40) iapIdentifier];
  v6 = [v4 isEqualToString:v5];

  v7 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = *(a1 + 32);
    v10 = [v8 stringWithFormat:@"%@<%p>", objc_opt_class(), v9];

    v11 = [*(*(a1 + 32) + 48) iapIdentifier];
    *buf = 138544386;
    v14 = v10;
    v15 = 1024;
    v16 = v2;
    v17 = 1024;
    v18 = v3 != 0;
    v19 = 1024;
    v20 = v6;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] isConnectedToVehicle: isConnected: %d, hasIdentifier: %d, identifierMatches: %d, currentVehicleIdentifier: %@", buf, 0x28u);
  }

  if (v3)
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v12 & v6;
}

- (id)_firmwareId
{
  allValues = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  firstObject = [allValues firstObject];

  if (firstObject)
  {
    if (GEOConfigGetBOOL())
    {
      v4 = @"CarDisplaySimFirmware";
    }

    else
    {
      firmwareRevision = [firstObject firmwareRevision];
      v4 = [firmwareRevision copy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_bluetoothIdentifier
{
  allValues = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  firstObject = [allValues firstObject];

  if (firstObject)
  {
    if (GEOConfigGetBOOL())
    {
      v4 = @"CarDisplaySim";
    }

    else
    {
      macAddress = [firstObject macAddress];
      v4 = [macAddress copy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_identifier
{
  allValues = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  firstObject = [allValues firstObject];

  if (firstObject)
  {
    if (GEOConfigGetBOOL())
    {
      v4 = @"CarDisplaySim";
    }

    else
    {
      serialNumber = [firstObject serialNumber];
      v4 = [serialNumber copy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isConnectedToCarPlayAccessory
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) isConnected])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_isConnectedToElectricVehicle
{
  if (![(VGExternalAccessory *)self _isConnectedToCarPlayAccessory])
  {
    return 0;
  }

  consumptionArguments = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
  if ([consumptionArguments length])
  {
    chargingArguments = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
    v5 = [chargingArguments length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isConnectedVehicleAllowlisted
{
  v28 = *MEMORY[0x277D85DE8];
  if (GEOConfigGetBOOL())
  {
    consumptionArguments = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
    v4 = [(VGExternalAccessory *)self _modelIdFromArguments:consumptionArguments];

    chargingArguments = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
    v6 = [(VGExternalAccessory *)self _modelIdFromArguments:chargingArguments];

    if (v4 && v6)
    {
      modelFilter = self->_modelFilter;
      _firmwareId = [(VGExternalAccessory *)self _firmwareId];
      year = [(VGExternalAccessoryState *)self->_accessoryState year];
      model = [(VGExternalAccessoryState *)self->_accessoryState model];
      v11 = [(VGExternalAccessoryModelFilter *)modelFilter allowsVehicleWithModelId:v4 firmwareId:_firmwareId year:year model:model];

      v12 = self->_modelFilter;
      _firmwareId2 = [(VGExternalAccessory *)self _firmwareId];
      year2 = [(VGExternalAccessoryState *)self->_accessoryState year];
      model2 = [(VGExternalAccessoryState *)self->_accessoryState model];
      v16 = [(VGExternalAccessoryModelFilter *)v12 allowsVehicleWithModelId:v6 firmwareId:_firmwareId2 year:year2 model:model2];

      if (v11 && v16)
      {
        v17 = 1;
LABEL_13:

        return v17;
      }

      v18 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "[%{public}p] Currently connected vehicle is an EV, but does is not allow listed. Onboarding won't be allowed", &v22, 0xCu);
      }
    }

    else
    {
      v18 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        consumptionArguments2 = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
        chargingArguments2 = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
        v22 = 134349570;
        selfCopy2 = self;
        v24 = 2112;
        v25 = consumptionArguments2;
        v26 = 2112;
        v27 = chargingArguments2;
        _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_FAULT, "[%{public}p] Vehicle does not have valid consumption or charging arguments. consumption: %@, charging: %@", &v22, 0x20u);
      }
    }

    v17 = 0;
    goto LABEL_13;
  }

  return 1;
}

- (id)_modelIdFromArguments:(id)arguments
{
  v15 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  v5 = VGDictionaryFromVGVehicleArguments(argumentsCopy);
  if (v5)
  {
    v6 = GEOConfigGetString();
    v7 = [v5 objectForKeyedSubscript:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v7;
      v8 = v7;
      goto LABEL_10;
    }

    v9 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 134349314;
      selfCopy2 = self;
      v13 = 2112;
      v14 = argumentsCopy;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_FAULT, "[%{public}p] Failed to parse model id from arguments: %@", &v11, 0x16u);
    }
  }

  else
  {
    v7 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = 134349314;
      selfCopy2 = self;
      v13 = 2112;
      v14 = argumentsCopy;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_FAULT, "[%{public}p] Failed to parse arguments: %@", &v11, 0x16u);
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)_currentStatePassesEVRoutingRequirements
{
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(_identifier) = [(VGExternalAccessory *)self _isConnectedToElectricVehicle];
  if (_identifier)
  {
    _identifier = [(VGExternalAccessory *)self _identifier];
    if (_identifier)
    {
      accessoryState = self->_accessoryState;

      if (accessoryState)
      {
        if ([(VGExternalAccessory *)self _isConnectedVehicleAllowlisted])
        {
          LOBYTE(_identifier) = 1;
          return _identifier;
        }

        v5 = VGGetExternalAccessoryLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          consumptionArguments = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
          v7 = [(VGExternalAccessory *)self _modelIdFromArguments:consumptionArguments];
          chargingArguments = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
          v9 = [(VGExternalAccessory *)self _modelIdFromArguments:chargingArguments];
          _firmwareId = [(VGExternalAccessory *)self _firmwareId];
          year = [(VGExternalAccessoryState *)self->_accessoryState year];
          model = [(VGExternalAccessoryState *)self->_accessoryState model];
          v14 = 134350338;
          selfCopy = self;
          v16 = 2112;
          v17 = v7;
          v18 = 2112;
          v19 = v9;
          v20 = 2112;
          v21 = _firmwareId;
          v22 = 2112;
          v23 = year;
          v24 = 2112;
          v25 = model;
          _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] Connected vehicle is not allowlisted. consumption modelId: %@, charging modelId: %@, firmwareId: %@, year: %@, model: %@", &v14, 0x3Eu);
        }
      }

      LOBYTE(_identifier) = 0;
    }
  }

  return _identifier;
}

- (id)_vehicleStateForCurrentState
{
  if ([(VGExternalAccessory *)self _currentStatePassesEVRoutingRequirements])
  {
    v20 = [VGVehicleState alloc];
    _identifier = [(VGExternalAccessory *)self _identifier];
    v3 = [_identifier copy];
    date = [MEMORY[0x277CBEAA8] date];
    batteryCharge = [(VGExternalAccessoryState *)self->_accessoryState batteryCharge];
    currentEVRange = [(VGExternalAccessoryState *)self->_accessoryState currentEVRange];
    maxEVRange = [(VGExternalAccessoryState *)self->_accessoryState maxEVRange];
    minBatteryCapacity = [(VGExternalAccessoryState *)self->_accessoryState minBatteryCapacity];
    currentBatteryCapacity = [(VGExternalAccessoryState *)self->_accessoryState currentBatteryCapacity];
    maxBatteryCapacity = [(VGExternalAccessoryState *)self->_accessoryState maxBatteryCapacity];
    consumptionArguments = [(VGExternalAccessoryState *)self->_accessoryState consumptionArguments];
    v6 = [consumptionArguments copy];
    chargingArguments = [(VGExternalAccessoryState *)self->_accessoryState chargingArguments];
    v7 = [chargingArguments copy];
    isCharging = [(VGExternalAccessoryState *)self->_accessoryState isCharging];
    activeConnector = [(VGExternalAccessoryState *)self->_accessoryState activeConnector];
    unsignedIntegerValue = [activeConnector unsignedIntegerValue];
    LOBYTE(v13) = isCharging;
    v11 = [(VGVehicleState *)v20 initWithIdentifier:v3 dateOfUpdate:date origin:1 batteryPercentage:batteryCharge currentEVRange:currentEVRange maxEVRange:maxEVRange minBatteryCapacity:minBatteryCapacity currentBatteryCapacity:currentBatteryCapacity maxBatteryCapacity:maxBatteryCapacity consumptionArguments:v6 chargingArguments:v7 isCharging:v13 activeConnector:unsignedIntegerValue & 0x128 | (unsignedIntegerValue >> 2) & 1 | (2 * (unsignedIntegerValue & 3)) & 0x7F | (unsignedIntegerValue >> 2) & 0x10 | (unsignedIntegerValue >> 1) & 0x40 | (((unsignedIntegerValue >> 4) & 1) << 7)];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_vehicleForCurrentState
{
  if ([(VGExternalAccessory *)self _currentStatePassesEVRoutingRequirements])
  {
    v3 = [VGVehicle alloc];
    name = [(VGExternalAccessoryState *)self->_accessoryState name];
    v26 = [name copy];
    year = [(VGExternalAccessoryState *)self->_accessoryState year];
    manufacturer = [(VGExternalAccessoryState *)self->_accessoryState manufacturer];
    v22 = [manufacturer copy];
    model = [(VGExternalAccessoryState *)self->_accessoryState model];
    v20 = [model copy];
    colorHex = [(VGExternalAccessoryState *)self->_accessoryState colorHex];
    v4 = [colorHex stringByReplacingOccurrencesOfString:@"#" withString:&stru_2880E19B8];
    if ([v4 length] == 6)
    {
      v18 = [v4 stringByAppendingString:@"ff"];
    }

    else
    {
      v18 = 0;
    }

    _identifier = [(VGExternalAccessory *)self _identifier];
    v6 = [_identifier copy];
    _bluetoothIdentifier = [(VGExternalAccessory *)self _bluetoothIdentifier];
    v7 = [_bluetoothIdentifier copy];
    supportedConnectors = [(VGExternalAccessoryState *)self->_accessoryState supportedConnectors];
    unsignedIntegerValue = [supportedConnectors unsignedIntegerValue];
    v10 = unsignedIntegerValue & 0x128 | (unsignedIntegerValue >> 2) & 1 | (2 * (unsignedIntegerValue & 3)) & 0x7F | (unsignedIntegerValue >> 2) & 0x10 | (unsignedIntegerValue >> 1) & 0x40 | (((unsignedIntegerValue >> 4) & 1) << 7);
    powerByConnector = [(VGExternalAccessoryState *)self->_accessoryState powerByConnector];
    v12 = [powerByConnector copy];
    v5 = [(VGVehicle *)v3 initWithDisplayName:v26 year:year manufacturer:v22 model:v20 colorHex:v18 headUnitIdentifier:v6 headUnitBluetoothIdentifier:v7 supportedConnectors:v10 powerByConnector:v12];

    _identifier2 = [(VGExternalAccessory *)self _identifier];
    v14 = [_identifier2 copy];
    [(VGVehicle *)v5 setIapIdentifier:v14];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_notifyDelegateWithCurrentVehicle
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] _notifyDelegateWithCurrentVehicle", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  accessoryUpdateDelegate = [(VGExternalAccessory *)self accessoryUpdateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VGVehicle *)self->_currentVehicle copy];
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__VGExternalAccessory__notifyDelegateWithCurrentVehicle__block_invoke;
    v9[3] = &unk_279E26F20;
    objc_copyWeak(&v11, buf);
    v10 = v6;
    v8 = v6;
    dispatch_async(delegateQueue, v9);

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(buf);
}

void __56__VGExternalAccessory__notifyDelegateWithCurrentVehicle__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained accessoryUpdateDelegate];
    if (v4)
    {
      v5 = v4;
      v6 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v9 = 134349314;
        v10 = v3;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] notifying delegate with vehicle: %@", &v9, 0x16u);
      }

      [v5 accessoryUpdatedWithVehicle:*(a1 + 32)];
    }

    else
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "[VGExternalAccessory _notifyDelegateWithCurrentVehicle]_block_invoke";
        v11 = 1024;
        LODWORD(v12) = 435;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "strongDelegate went away in %s line %d", &v9, 0x12u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[VGExternalAccessory _notifyDelegateWithCurrentVehicle]_block_invoke";
      v11 = 1024;
      LODWORD(v12) = 434;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v9, 0x12u);
    }
  }
}

- (void)_updateFromVehicleInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = VGGetExternalAccessoryLog();
  v6 = v5;
  if (infoCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      selfCopy2 = self;
      v13 = 2112;
      v14 = infoCopy;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] _updateFromVehicleInfo: %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__VGExternalAccessory__updateFromVehicleInfo___block_invoke;
    v8[3] = &unk_279E26F20;
    objc_copyWeak(&v10, buf);
    v9 = infoCopy;
    dispatch_async(workQueue, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "[%{public}p] _updateFromVehicleInfo: tried to update from a nil vehicleInfo.", buf, 0xCu);
    }
  }
}

void __46__VGExternalAccessory__updateFromVehicleInfo___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    if (!v4)
    {
      v5 = objc_alloc_init(VGExternalAccessoryState);
      v6 = *(v3 + 4);
      *(v3 + 4) = v5;

      v4 = *(v3 + 4);
    }

    [v4 _updateWithVehicleInfo:*(a1 + 32)];
    v7 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v3 + 4);
      v9 = *(a1 + 32);
      v17 = 134349570;
      v18 = v3;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "[%{public}p] _updateFromVehicleInfo: did update accessoryState: %@ from vehicleInfo: %@", &v17, 0x20u);
    }

    v10 = [v3 _vehicleStateForCurrentState];
    v11 = *(v3 + 5);
    *(v3 + 5) = v10;

    v12 = [v3 _vehicleForCurrentState];
    v13 = *(v3 + 6);
    *(v3 + 6) = v12;

    [*(v3 + 6) _updateWithVehicleState:*(v3 + 5)];
    v14 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(v3 + 6);
      v17 = 134349314;
      v18 = v3;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_INFO, "[%{public}p] updated _currentVehicle: %@", &v17, 0x16u);
    }

    [v3 _notifyDelegateWithCurrentVehicle];
  }

  else
  {
    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[VGExternalAccessory _updateFromVehicleInfo:]_block_invoke";
      v19 = 1024;
      LODWORD(v20) = 412;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v17, 0x12u);
    }
  }
}

- (void)_accessoryDidUpdateVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidUpdateVehicle: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__VGExternalAccessory__accessoryDidUpdateVehicle___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(workQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __50__VGExternalAccessory__accessoryDidUpdateVehicle___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];

    if (v4 && ([v4 _vg_supportsCarPlay]& 1) == 0)
    {
      v10 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v4 name];
        v12 = 134349314;
        v13 = WeakRetained;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidUpdateVehicle: accessory %@ does not support CarPlay, ignoring update", &v12, 0x16u);
      }
    }

    else
    {
      v5 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 name];
        v7 = [*(a1 + 32) userInfo];
        v12 = 134349570;
        v13 = WeakRetained;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidUpdateVehicle: received a vehicle update update for accessory %@ with userInfo: %@", &v12, 0x20u);
      }

      if (v4 && ([WeakRetained _isAccessoryTracked:v4] & 1) == 0)
      {
        v8 = VGGetExternalAccessoryLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v9 = [v4 name];
          v12 = 134349314;
          v13 = WeakRetained;
          v14 = 2112;
          v15 = v9;
        }

        [WeakRetained _addNewCarPlayAccessory:v4];
      }

      v10 = [*(a1 + 32) userInfo];
      [WeakRetained _updateFromVehicleInfo:v10];
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[VGExternalAccessory _accessoryDidUpdateVehicle:]_block_invoke";
      v14 = 1024;
      LODWORD(v15) = 385;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v12, 0x12u);
    }
  }
}

- (void)_accessoryDidDisconnect:(id)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = disconnectCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidDisconnect: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__VGExternalAccessory__accessoryDidDisconnect___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = disconnectCopy;
  v7 = disconnectCopy;
  dispatch_async(workQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __47__VGExternalAccessory__accessoryDidDisconnect___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];

    v5 = [v4 _vg_supportsCarPlay];
    v6 = VGGetExternalAccessoryLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v9 = 134349314;
        v10 = WeakRetained;
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidDisconnect: will disconnect a tracked accessory: %@", &v9, 0x16u);
      }

      [WeakRetained _removeCarPlayAccessory:v4];
    }

    else
    {
      if (v7)
      {
        v8 = [v4 name];
        v9 = 134349314;
        v10 = WeakRetained;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidDisconnect: disconnected accessory that is not tracked %@", &v9, 0x16u);
      }
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[VGExternalAccessory _accessoryDidDisconnect:]_block_invoke";
      v11 = 1024;
      LODWORD(v12) = 369;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v9, 0x12u);
    }
  }
}

- (void)_accessoryDidConnect:(id)connect
{
  v15 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = connectCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidConnect: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__VGExternalAccessory__accessoryDidConnect___block_invoke;
  v8[3] = &unk_279E26F20;
  objc_copyWeak(&v10, buf);
  v9 = connectCopy;
  v7 = connectCopy;
  dispatch_async(workQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __44__VGExternalAccessory__accessoryDidConnect___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];

    if (v4 && ([v4 _vg_supportsCarPlay]& 1) != 0)
    {
      v5 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        if ([v4 supportsCarPlay])
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v7 = v6;
        if ([v4 supportsWirelessCarPlay])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = v8;
        if ([v4 supportsUSBCarPlay])
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v11 = v10;
        v13 = 134350338;
        v14 = WeakRetained;
        v15 = 2048;
        v16 = v4;
        v17 = 2112;
        v18 = v4;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "[%{public}p] _accessoryDidConnect: new accessory: %p, %@, supportsCarPlay: %@, supportsWirelessCarPlay: %@. supportsUSBCarPlay: %@", &v13, 0x3Eu);
      }

      [WeakRetained _addNewCarPlayAccessory:v4];
    }

    else
    {
      v12 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 134349570;
        v14 = WeakRetained;
        v15 = 2048;
        v16 = v4;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "[%{public}p] _accessoryDidConnect: received an unsupported accessory: %p, %@", &v13, 0x20u);
      }
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[VGExternalAccessory _accessoryDidConnect:]_block_invoke";
      v15 = 1024;
      LODWORD(v16) = 353;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v13, 0x12u);
    }
  }
}

- (BOOL)_isAccessoryTracked:(id)tracked
{
  v17 = *MEMORY[0x277D85DE8];
  trackedCopy = tracked;
  if ([trackedCopy connectionID])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(trackedCopy, "connectionID")}];
    v6 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId objectForKeyedSubscript:v5];
    v7 = v6 != 0;
  }

  else
  {
    v8 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name = [trackedCopy name];
      v11 = 134349570;
      selfCopy = self;
      v13 = 2112;
      v14 = name;
      v15 = 2048;
      connectionID = [trackedCopy connectionID];
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "[%{public}p] _isAccessoryTracked: tried to check status of accessory with an invalid key. %@ %lu", &v11, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_removeCarPlayAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (![accessoryCopy connectionID])
  {
    v5 = VGGetExternalAccessoryLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    name = [accessoryCopy name];
    v15 = 134349570;
    selfCopy4 = self;
    v17 = 2112;
    v18 = name;
    v19 = 2048;
    connectionID = [accessoryCopy connectionID];
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "[%{public}p] _removeCarPlayAccessory: tried to remove an accessory that has an invalid key. %@, %lu", &v15, 0x20u);
LABEL_13:

    goto LABEL_14;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(accessoryCopy, "connectionID")}];
  v6 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId objectForKeyedSubscript:v5];

  v7 = VGGetExternalAccessoryLog();
  name = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [accessoryCopy name];
      v15 = 134349570;
      selfCopy4 = self;
      v17 = 2112;
      v18 = name2;
      v19 = 2112;
      connectionID = v5;
      _os_log_impl(&dword_270EC1000, name, OS_LOG_TYPE_ERROR, "[%{public}p] _removeCarPlayAccessory: tried to remove an accessory that was not tracked. %@, %@", &v15, 0x20u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    name3 = [accessoryCopy name];
    v15 = 134349570;
    selfCopy4 = self;
    v17 = 2112;
    v18 = name3;
    v19 = 2112;
    connectionID = v5;
    _os_log_impl(&dword_270EC1000, name, OS_LOG_TYPE_INFO, "[%{public}p] _removeCarPlayAccessory: removing accessory with key. %@, %@", &v15, 0x20u);
  }

  [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId removeObjectForKey:v5];
  if (![(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId count])
  {
    v10 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = 134349056;
      selfCopy4 = self;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "[%{public}p] _removeCarPlayAccessory: currently not tracking any accessories. clearing tracked vehicle state", &v15, 0xCu);
    }

    accessoryState = self->_accessoryState;
    self->_accessoryState = 0;

    currentVehicleState = self->_currentVehicleState;
    self->_currentVehicleState = 0;

    currentVehicle = self->_currentVehicle;
    self->_currentVehicle = 0;

    [(VGExternalAccessory *)self _notifyDelegateWithCurrentVehicle];
  }

LABEL_14:
}

- (void)_addNewCarPlayAccessory:(id)accessory
{
  v19 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([accessoryCopy connectionID])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(accessoryCopy, "connectionID")}];
    v6 = [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = VGGetExternalAccessoryLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        name = [accessoryCopy name];
        v13 = 134349570;
        selfCopy3 = self;
        v15 = 2112;
        v16 = name;
        v17 = 2112;
        connectionID = v5;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "[%{public}p] _addNewCarPlayAccessory: trying to add an accessory, it is already tracked -> replacing, name: %@ key: %@", &v13, 0x20u);
      }
    }

    v9 = VGGetExternalAccessoryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      name2 = [accessoryCopy name];
      v13 = 134349570;
      selfCopy3 = self;
      v15 = 2112;
      v16 = name2;
      v17 = 2112;
      connectionID = v5;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "[%{public}p] _addNewCarPlayAccessory: added a new accessory: %@ key: %@.", &v13, 0x20u);
    }

    [(NSMutableDictionary *)self->_trackedAccessoriesByConnectionId setObject:accessoryCopy forKeyedSubscript:v5];
    getVehicleInfoData = [accessoryCopy getVehicleInfoData];
    [(VGExternalAccessory *)self _updateFromVehicleInfo:getVehicleInfoData];

    vehicleInfoInitialData = [accessoryCopy vehicleInfoInitialData];
    [(VGExternalAccessory *)self _updateFromVehicleInfo:vehicleInfoInitialData];
    goto LABEL_11;
  }

  v5 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    vehicleInfoInitialData = [accessoryCopy name];
    v13 = 134349570;
    selfCopy3 = self;
    v15 = 2112;
    v16 = vehicleInfoInitialData;
    v17 = 2048;
    connectionID = [accessoryCopy connectionID];
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_FAULT, "[%{public}p] _addNewCarPlayAccessory: tried to add an accessory, but it has an invalid key. %@, %lu", &v13, 0x20u);
LABEL_11:
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VGGetExternalAccessoryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "[%{public}p] dealloc: deallocating accessory", buf, 0xCu);
  }

  mEMORY[0x277CC5FB0] = [MEMORY[0x277CC5FB0] sharedAccessoryManager];
  [mEMORY[0x277CC5FB0] unregisterForLocalNotifications];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = VGExternalAccessory;
  [(VGExternalAccessory *)&v6 dealloc];
}

@end