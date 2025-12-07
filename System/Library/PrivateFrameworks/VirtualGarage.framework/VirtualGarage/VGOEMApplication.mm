@interface VGOEMApplication
- (BOOL)_isValidConsumptionModelForResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (VGOEMAppSOCStreaming)chargeStreamingDelegate;
- (VGOEMApplication)initWithIdentifier:(id)identifier applicationRecord:(id)record;
- (id)_powerByConnectorDictionaryFromCar:(id)car;
- (id)_vehicleStateFromResponse:(id)response error:(id *)error;
- (id)_vehiclesFromListCarsIntentResponse:(id)response;
- (unint64_t)_VGChargingConnectorTypeOptionFromINCarChargingConnectorType:(id)type;
- (unint64_t)_VGChargingConnectorTypeOptionsFromINCarChargingConnectorTypes:(id)types;
- (void)_createChargeStreamingConnectionIfNeededForVehicle:(id)vehicle;
- (void)getStateOfChargeForVehicle:(id)vehicle completion:(id)completion;
- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items;
- (void)listCarsWithCompletion:(id)completion;
- (void)resetStreamingConnection;
- (void)startSendingChargeUpdatesForVehicle:(id)vehicle;
- (void)stopSendingChargeUpdatesForVehicle:(id)vehicle;
- (void)tearDownStreamingConnectionForVehicle:(id)vehicle;
@end

@implementation VGOEMApplication

- (VGOEMAppSOCStreaming)chargeStreamingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chargeStreamingDelegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(VGOEMApplication *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_chargeStreamingDelegate);
  if (WeakRetained)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__VGOEMApplication_intentResponseDidUpdate_withSerializedCacheItems___block_invoke;
    block[3] = &unk_279E26D98;
    objc_copyWeak(&v12, location);
    v10 = updateCopy;
    v11 = WeakRetained;
    dispatch_async(queue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[VGOEMApplication intentResponseDidUpdate:withSerializedCacheItems:]";
      v14 = 1024;
      v15 = 513;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "strongChargeStreamingDelegate went away in %s line %d", location, 0x12u);
    }
  }
}

void __69__VGOEMApplication_intentResponseDidUpdate_withSerializedCacheItems___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[VGOEMApplication intentResponseDidUpdate:withSerializedCacheItems:]_block_invoke";
      v25 = 1024;
      LODWORD(v26) = 517;
      v8 = "strongSelf went away in %s line %d";
      v9 = v6;
      v10 = 18;
LABEL_16:
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    }

LABEL_25:

    goto LABEL_26;
  }

  v3 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [WeakRetained identifier];
    v5 = a1[4];
    *buf = 138412546;
    v24 = v4;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%@ received INGetCarPowerLevelStatusResponse live update: %@", buf, 0x16u);
  }

  if ([WeakRetained isEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = a1[4];
      if (objc_opt_respondsToSelector())
      {
        v7 = v6;
        if ([v7 code]== 4)
        {

          goto LABEL_21;
        }

        v17 = [v7 code];

        if (v17 == 5)
        {
LABEL_21:
          v13 = VGGetOEMApplicationLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v18 = [v7 code];
            *buf = 134217984;
            v24 = v18;
            v14 = "Unsupported response code: %ld";
            v15 = v13;
            v16 = 12;
            goto LABEL_23;
          }

LABEL_24:

          goto LABEL_25;
        }

        if ([WeakRetained _isValidConsumptionModelForResponse:v7])
        {
          v19 = a1[4];
          v22 = 0;
          v20 = [WeakRetained _vehicleStateFromResponse:v19 error:&v22];
          v13 = v22;
          if (v20)
          {
            [a1[5] vehicleStateUpdated:v20];
          }

          else
          {
            v21 = VGGetOEMApplicationLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v13;
              _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "Response failed to deserialize to a valid VGVehicleState %@", buf, 0xCu);
            }
          }

          goto LABEL_24;
        }

        v13 = VGGetOEMApplicationLog();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 0;
        v14 = "Formula from the response is invalid";
      }

      else
      {
        v13 = VGGetOEMApplicationLog();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 0;
        v14 = "chargeStreamingDelegate does not implement required method vehicleStateUpdated:";
      }

      v15 = v13;
      v16 = 2;
LABEL_23:
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      goto LABEL_24;
    }

    v6 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138412290;
      v24 = v12;
      v8 = "Unexpected streaming response class. Received an %@ instance";
      v9 = v6;
      v10 = 12;
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v11 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "Received stream callback when disabled", buf, 2u);
  }

  [WeakRetained resetStreamingConnection];
LABEL_26:
}

- (void)resetStreamingConnection
{
  [(INCExtensionConnection *)self->_chargeStreamingConnection reset];
  chargeStreamingConnection = self->_chargeStreamingConnection;
  self->_chargeStreamingConnection = 0;
}

- (void)tearDownStreamingConnectionForVehicle:(id)vehicle
{
  v19 = *MEMORY[0x277D85DE8];
  if (vehicle)
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v7 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      identifier = [(VGOEMApplication *)self identifier];
      *buf = 138412290;
      v14 = identifier;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "%@ tearing down streaming connection", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke;
    block[3] = &unk_279E26E88;
    objc_copyWeak(&v12, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = VGGetAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "[VGOEMApplication tearDownStreamingConnectionForVehicle:]";
      v15 = 2082;
      v16 = "vehicle == nil";
      v17 = 2082;
      v18 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }
}

void __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_66;
      v6[3] = &unk_279E26CF8;
      objc_copyWeak(&v7, (a1 + 32));
      [v4 resumeWithCompletionHandler:v6];
      objc_destroyWeak(&v7);
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[VGOEMApplication tearDownStreamingConnectionForVehicle:]_block_invoke";
      v10 = 1024;
      v11 = 488;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_66(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_67;
    block[3] = &unk_279E26E88;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[VGOEMApplication tearDownStreamingConnectionForVehicle:]_block_invoke";
      v10 = 1024;
      v11 = 494;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }
}

void __58__VGOEMApplication_tearDownStreamingConnectionForVehicle___block_invoke_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetStreamingConnection];
}

- (void)stopSendingChargeUpdatesForVehicle:(id)vehicle
{
  v21 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [(VGOEMApplication *)self identifier];
      *buf = 138412290;
      v16 = identifier;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@ stopping updates", buf, 0xCu);
    }

    [(VGOEMApplication *)self _createChargeStreamingConnectionIfNeededForVehicle:vehicleCopy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke;
    v12[3] = &unk_279E26F20;
    objc_copyWeak(&v14, buf);
    v13 = vehicleCopy;
    dispatch_async(queue, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = VGGetAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "[VGOEMApplication stopSendingChargeUpdatesForVehicle:]";
      v17 = 2082;
      v18 = "vehicle == nil";
      v19 = 2082;
      v20 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }
}

void __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke_65;
    v6[3] = &unk_279E26D20;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v4 resumeWithCompletionHandler:v6];

    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[VGOEMApplication stopSendingChargeUpdatesForVehicle:]_block_invoke";
      v11 = 1024;
      v12 = 468;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __55__VGOEMApplication_stopSendingChargeUpdatesForVehicle___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "Connection error while stopping updates: %@", &v11, 0xCu);
      }
    }

    [v5 stopSendingUpdates];
    [WeakRetained tearDownStreamingConnectionForVehicle:*(a1 + 32)];
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[VGOEMApplication stopSendingChargeUpdatesForVehicle:]_block_invoke";
      v13 = 1024;
      v14 = 470;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v11, 0x12u);
    }
  }
}

- (void)startSendingChargeUpdatesForVehicle:(id)vehicle
{
  v20 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v8 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [(VGOEMApplication *)self identifier];
      *buf = 138412290;
      v15 = identifier;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@ starting updates", buf, 0xCu);
    }

    [(VGOEMApplication *)self _createChargeStreamingConnectionIfNeededForVehicle:vehicleCopy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke;
    block[3] = &unk_279E26E88;
    objc_copyWeak(&v13, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = VGGetAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "[VGOEMApplication startSendingChargeUpdatesForVehicle:]";
      v16 = 2082;
      v17 = "vehicle == nil";
      v18 = 2082;
      v19 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }
}

void __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 2);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke_63;
    v6[3] = &unk_279E26CF8;
    objc_copyWeak(&v7, (a1 + 32));
    [v4 resumeWithCompletionHandler:v6];
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[VGOEMApplication startSendingChargeUpdatesForVehicle:]_block_invoke";
      v10 = 1024;
      v11 = 444;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __56__VGOEMApplication_startSendingChargeUpdatesForVehicle___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "Connection error while receiving updates: %@", &v11, 0xCu);
      }
    }

    [v5 startSendingUpdatesToObserver:WeakRetained];
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[VGOEMApplication startSendingChargeUpdatesForVehicle:]_block_invoke";
      v13 = 1024;
      v14 = 447;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v11, 0x12u);
    }
  }
}

- (void)_createChargeStreamingConnectionIfNeededForVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__VGOEMApplication__createChargeStreamingConnectionIfNeededForVehicle___block_invoke;
    v7[3] = &unk_279E26F20;
    objc_copyWeak(&v9, location);
    v8 = vehicleCopy;
    dispatch_async(queue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[VGOEMApplication _createChargeStreamingConnectionIfNeededForVehicle:]";
      v11 = 2082;
      v12 = "vehicle == nil";
      v13 = 2082;
      v14 = "Vehicle cannot be nil";
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", location, 0x20u);
    }
  }
}

void __71__VGOEMApplication__createChargeStreamingConnectionIfNeededForVehicle___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[VGOEMApplication _createChargeStreamingConnectionIfNeededForVehicle:]_block_invoke";
      v17 = 1024;
      LODWORD(v18) = 418;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v15, 0x12u);
    }

    goto LABEL_12;
  }

  if (!WeakRetained[2] && [WeakRetained isEnabled])
  {
    v4 = objc_alloc(MEMORY[0x277CD4188]);
    v5 = [*(a1 + 32) siriIntentsIdentifier];
    v6 = [*(a1 + 32) displayName];
    v7 = [v4 initWithVocabularyIdentifier:v5 spokenPhrase:v6 pronunciationHint:0];

    v8 = [objc_alloc(MEMORY[0x277CD3C40]) initWithCarName:v7];
    v9 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:v8];
    v10 = v3[2];
    v3[2] = v9;

    [v3[2] setRequiresTCC:0];
    v11 = [v3 identifier];
    v12 = [v3[2] intent];
    [v12 _setLaunchId:v11];

    if (GEOConfigGetBOOL())
    {
      v13 = [MEMORY[0x277D0EC70] sharedPlatform];
      [v3[2] setRequiresTrustCheck:{objc_msgSend(v13, "isInternalInstall") ^ 1}];
    }

    else
    {
      [v3[2] setRequiresTrustCheck:0];
    }

    v14 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_INFO, "Started a new streaming Intent %@ with %@", &v15, 0x16u);
    }

LABEL_12:
  }
}

- (void)getStateOfChargeForVehicle:(id)vehicle completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentVehicleState = VGGetAssertLog();
    if (os_log_type_enabled(currentVehicleState, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]";
      v21 = 2082;
      v22 = "completion == nil";
      v23 = 2082;
      v24 = "Completion cannot be nil!";
      _os_log_impl(&dword_270EC1000, currentVehicleState, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v9 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (![(VGOEMApplication *)self isEnabled])
  {
    v13 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      identifier = self->_identifier;
      *buf = 138412290;
      v20 = identifier;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "Application %@ is not enabled returning existing SoC", buf, 0xCu);
    }

    currentVehicleState = [vehicleCopy currentVehicleState];
    completionCopy[2](completionCopy, currentVehicleState, 0);
LABEL_11:

    goto LABEL_12;
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke;
  block[3] = &unk_279E26CD0;
  objc_copyWeak(&v18, buf);
  v16 = vehicleCopy;
  v17 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
LABEL_12:
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CD4188]);
    v4 = [a1[4] siriIntentsIdentifier];
    v5 = [a1[4] displayName];
    v6 = [v3 initWithVocabularyIdentifier:v4 spokenPhrase:v5 pronunciationHint:0];

    v7 = [objc_alloc(MEMORY[0x277CD3C40]) initWithCarName:v6];
    v8 = [WeakRetained identifier];
    [v7 _setLaunchId:v8];

    v9 = VGGetOEMApplicationLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VGGetOEMApplicationLog();
    v12 = v11;
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "stateOfChargeIntentSignpost", "", buf, 2u);
    }

    v13 = +[VGOEMExtensionConnectionBroker sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_41;
    v21[3] = &unk_279E26BB8;
    objc_copyWeak(&v22, a1 + 6);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_42;
    v18[3] = &unk_279E26C08;
    objc_copyWeak(v20, a1 + 6);
    v20[1] = v10;
    v19 = a1[5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_44;
    v14[3] = &unk_279E26CA8;
    v17[1] = v10;
    objc_copyWeak(v17, a1 + 6);
    v16 = a1[5];
    v15 = a1[4];
    [v13 resumeConnectionWithIntent:v7 connectionTimeoutHandler:v21 connectionErrorHandler:v18 intentCompletionHandler:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(v20);
    objc_destroyWeak(&v22);
  }

  else
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
      v25 = 1024;
      v26 = 350;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Connection for OEMApp: (%@), timed out with error: %@", &v6, 0x16u);
  }
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
      v17 = 1024;
      v18 = 361;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v5 = VGGetOEMApplicationLog();
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "stateOfChargeIntent", "", buf, 2u);
    }

    v8 = WeakRetained[1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_43;
    v12[3] = &unk_279E26BE0;
    v14 = *(a1 + 32);
    v9 = v3;
    v13 = v9;
    dispatch_async(v8, v12);
    v10 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Returning because of a connection error: %@", buf, 0xCu);
    }

    v11 = v14;
LABEL_11:
  }
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VGGetOEMApplicationLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "stateOfChargeIntentSignpost", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v11 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v6;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "error in handleIntentWithCompletionHandler: %@", buf, 0xCu);
      }

      v12 = *(a1 + 40);
      v13 = [v6 underlyingError];
      if (v13)
      {
        v14 = v13;
        (*(v12 + 16))(v12, 0, v13);
      }

      else
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = GEOErrorDomain();
        v40 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intents error with code: %ld", objc_msgSend(v6, "errorCode")];
        v41 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v20 = [v16 errorWithDomain:v17 code:-11 userInfo:v19];
        (*(v12 + 16))(v12, 0, v20);

        v14 = 0;
      }

      goto LABEL_20;
    }

    v15 = v5;
    if ([v15 code] == 4)
    {
    }

    else
    {
      v21 = [v15 code];

      if (v21 != 5)
      {
        if ([WeakRetained _isValidConsumptionModelForResponse:v15])
        {
          v27 = WeakRetained[1];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_56;
          block[3] = &unk_279E26C80;
          v31 = 0;
          v35 = *(a1 + 40);
          v32 = WeakRetained;
          v33 = v15;
          v34 = *(a1 + 32);
          dispatch_async(v27, block);

          v14 = v31;
          goto LABEL_20;
        }

        v28 = MEMORY[0x277CCA9B8];
        v24 = GEOErrorDomain();
        v36 = *MEMORY[0x277CCA450];
        v37 = @"Invalid Formula";
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v14 = [v28 errorWithDomain:v24 code:-11 userInfo:v29];

        goto LABEL_19;
      }
    }

    v22 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v15;
      _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_ERROR, "Unsupported response code: %@", buf, 0xCu);
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = GEOErrorDomain();
    v38 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Intent response with unsupported code: %ld", objc_msgSend(v15, "code")];
    v39 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v14 = [v23 errorWithDomain:v24 code:-11 userInfo:v26];

LABEL_19:
    (*(*(a1 + 40) + 16))();
    goto LABEL_20;
  }

  v14 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v43 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
    v44 = 1024;
    v45 = 365;
    _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", buf, 0x12u);
  }

LABEL_20:
}

void __58__VGOEMApplication_getStateOfChargeForVehicle_completion___block_invoke_56(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) underlyingError];

  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 32) underlyingError];
    (*(v3 + 16))(v3, 0, v4);

    v5 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) underlyingError];
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Returning because of an underlying error in the connection: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v22 = 0;
    v9 = [v7 _vehicleStateFromResponse:v8 error:&v22];
    v5 = v22;
    if (v9)
    {
      v10 = [v9 identifier];
      v11 = [*(a1 + 56) siriIntentsIdentifier];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v19 = VGGetAssertLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v24 = "[VGOEMApplication getStateOfChargeForVehicle:completion:]_block_invoke";
          v25 = 2080;
          v26 = "VGOEMApplication.m";
          v27 = 1024;
          v28 = 400;
          v29 = 2080;
          v30 = "[state.identifier isEqualToString:vehicle.siriIntentsIdentifier]";
          _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
        }

        if (_vg_isInternalInstall())
        {
          v20 = VGGetAssertLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [MEMORY[0x277CCACC8] callStackSymbols];
            *buf = 138412290;
            v24 = v21;
            _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v13 = [v9 identifier];
      v14 = [*(a1 + 56) siriIntentsIdentifier];
      v15 = [v13 isEqualToString:v14];

      if ((v15 & 1) == 0)
      {
        v16 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v17 = *(a1 + 56);
          *buf = 138412546;
          v24 = v9;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_FAULT, "Received a vehicle state: %@ that doesn't apply to the provided vehicle: %@", buf, 0x16u);
        }

        v9 = 0;
      }
    }

    v18 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_INFO, "getStateOfChargeForVehicle fetched %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)listCarsWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    if ([(VGOEMApplication *)self isEnabled])
    {
      objc_initWeak(buf, self);
      queue = self->_queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke;
      v12[3] = &unk_279E26F48;
      objc_copyWeak(&v14, buf);
      v13 = completionCopy;
      dispatch_async(queue, v12);

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        *buf = 138412290;
        v16 = identifier;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Application %@ is not enabled returning no results", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    v9 = VGGetAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "[VGOEMApplication listCarsWithCompletion:]";
      v17 = 2082;
      v18 = "completion == nil";
      v19 = 2082;
      v20 = "Completion cannot be nil!";
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD3D70]);
    v4 = [WeakRetained identifier];
    [v3 _setLaunchId:v4];

    v5 = VGGetOEMApplicationLog();
    v6 = os_signpost_id_generate(v5);

    v7 = VGGetOEMApplicationLog();
    v8 = v7;
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "listCarsIntentSignpost", "", buf, 2u);
    }

    v9 = +[VGOEMExtensionConnectionBroker sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_31;
    v16[3] = &unk_279E26BB8;
    objc_copyWeak(&v17, (a1 + 40));
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_33;
    v13[3] = &unk_279E26C08;
    objc_copyWeak(v15, (a1 + 40));
    v15[1] = v6;
    v14 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_36;
    v10[3] = &unk_279E26C58;
    v12[1] = v6;
    objc_copyWeak(v12, (a1 + 40));
    v11 = *(a1 + 32);
    [v9 resumeConnectionWithIntent:v3 connectionTimeoutHandler:v16 connectionErrorHandler:v13 intentCompletionHandler:v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(v15);
    objc_destroyWeak(&v17);
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[VGOEMApplication listCarsWithCompletion:]_block_invoke";
      v20 = 1024;
      v21 = 312;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_31(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Connection for OEMApp: (%@), timed out with error: %@", &v6, 0x16u);
  }
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_33(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[VGOEMApplication listCarsWithCompletion:]_block_invoke";
      v17 = 1024;
      v18 = 322;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v5 = VGGetOEMApplicationLog();
    v6 = v5;
    v7 = *(a1 + 48);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270EC1000, v6, OS_SIGNPOST_INTERVAL_END, v7, "listCarsIntentSignpost", "", buf, 2u);
    }

    v8 = WeakRetained[1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_34;
    v12[3] = &unk_279E26BE0;
    v14 = *(a1 + 32);
    v9 = v3;
    v13 = v9;
    dispatch_async(v8, v12);
    v10 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Returning because of a connection error: %@", buf, 0xCu);
    }

    v11 = v14;
LABEL_11:
  }
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VGGetOEMApplicationLog();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "listCarsIntentSignpost", "", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = [v6 underlyingError];

    if (!v11)
    {
      v16 = WeakRetained[1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43__VGOEMApplication_listCarsWithCompletion___block_invoke_37;
      v17[3] = &unk_279E26C30;
      v17[4] = WeakRetained;
      v18 = v5;
      v20 = *(a1 + 32);
      v19 = v6;
      dispatch_async(v16, v17);

      goto LABEL_12;
    }

    v12 = *(a1 + 32);
    v13 = [v6 underlyingError];
    (*(v12 + 16))(v12, 0, v13);

    v14 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v6 underlyingError];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "Returning because of an underlying error in the connection: %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[VGOEMApplication listCarsWithCompletion:]_block_invoke";
      v23 = 1024;
      v24 = 326;
      _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", buf, 0x12u);
    }
  }

LABEL_12:
}

void __43__VGOEMApplication_listCarsWithCompletion___block_invoke_37(uint64_t a1)
{
  v4 = [*(a1 + 32) _vehiclesFromListCarsIntentResponse:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 48) underlyingError];
  (*(v2 + 16))(v2, v4, v3);
}

- (id)_powerByConnectorDictionaryFromCar:(id)car
{
  v42 = *MEMORY[0x277D85DE8];
  carCopy = car;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (_connectorMapping_onceToken != -1)
  {
    dispatch_once(&_connectorMapping_onceToken, &__block_literal_global_1730);
  }

  allKeys = [_connectorMapping_s_connectorMapping allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        supportedChargingConnectors = [carCopy supportedChargingConnectors];
        v13 = [supportedChargingConnectors containsObject:v11];

        if (v13)
        {
          v14 = [carCopy maximumPowerForChargingConnectorType:v11];
          if (v14)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = VGGetAssertLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v34 = "[VGOEMApplication _powerByConnectorDictionaryFromCar:]";
                v35 = 2080;
                v36 = "VGOEMApplication.m";
                v37 = 1024;
                v38 = 280;
                v39 = 2080;
                v40 = "!maxPowerForConnector || [maxPowerForConnector isKindOfClass:NSMeasurement.class]";
                _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
              }

              if (_vg_isInternalInstall())
              {
                v18 = VGGetAssertLog();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
                  *buf = 138412290;
                  v34 = callStackSymbols;
                  _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }
            }

            v15 = [(VGOEMApplication *)self _VGChargingConnectorTypeOptionFromINCarChargingConnectorType:v11];
            if (v15)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
              [dictionary setObject:v14 forKeyedSubscript:v16];
            }

            else
            {
              v19 = VGGetAssertLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v34 = "[VGOEMApplication _powerByConnectorDictionaryFromCar:]";
                v35 = 2080;
                v36 = "VGOEMApplication.m";
                v37 = 1024;
                v38 = 284;
                v39 = 2080;
                v40 = "mapsConnectorTypeOptions != VGChargingConnectorTypeOptionNone";
                _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
              }

              if (_vg_isInternalInstall())
              {
                v20 = VGGetAssertLog();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
                  *buf = 138412290;
                  v34 = callStackSymbols2;
                  _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }

              v16 = VGGetOEMApplicationLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                powerPerConnectors = [carCopy powerPerConnectors];
                *buf = 134218242;
                v34 = v11;
                v35 = 2112;
                v36 = powerPerConnectors;
                v22 = powerPerConnectors;
                _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "Failed to extract power for connector type: %lu, from car array: %@.", buf, 0x16u);
              }
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v23 = [allKeys countByEnumeratingWithState:&v29 objects:v41 count:16];
      v8 = v23;
    }

    while (v23);
  }

  v24 = VGGetOEMApplicationLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = dictionary;
    _os_log_impl(&dword_270EC1000, v24, OS_LOG_TYPE_INFO, "Constructed powerByConnector dictionary: %@", buf, 0xCu);
  }

  v25 = [dictionary copy];

  return v25;
}

- (id)_vehiclesFromListCarsIntentResponse:(id)response
{
  v64 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v63 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if ([responseCopy code] == 3)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    cars = [responseCopy cars];
    v10 = [v8 initWithCapacity:{objc_msgSend(cars, "count")}];

    v11 = VGGetOEMApplicationLog();
    LODWORD(cars) = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (cars)
    {
      v44 = objc_opt_new();
    }

    else
    {
      v44 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v43 = responseCopy;
    obj = [responseCopy cars];
    v49 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v49)
    {
      v46 = *v58;
      selfCopy = self;
      v48 = v10;
      do
      {
        v14 = 0;
        do
        {
          if (*v58 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v57 + 1) + 8 * v14);
          color = [v15 color];
          v51 = [VGVehicle alloc];
          displayName = [v15 displayName];
          year = [v15 year];
          make = [v15 make];
          [v15 model];
          v53 = v52 = v14;
          if (color)
          {
            v17 = VGHexRepresentationFromCGColor(color);
            v50 = v17;
          }

          else
          {
            v17 = 0;
          }

          headUnit = [v15 headUnit];
          iAP2Identifier = [headUnit iAP2Identifier];
          headUnit2 = [v15 headUnit];
          bluetoothIdentifier = [headUnit2 bluetoothIdentifier];
          supportedChargingConnectors = [v15 supportedChargingConnectors];
          v23 = [(VGOEMApplication *)self _VGChargingConnectorTypeOptionsFromINCarChargingConnectorTypes:supportedChargingConnectors];
          v24 = [(VGOEMApplication *)self _powerByConnectorDictionaryFromCar:v15];
          v25 = [(VGVehicle *)v51 initWithDisplayName:displayName year:year manufacturer:make model:v53 colorHex:v17 headUnitIdentifier:iAP2Identifier headUnitBluetoothIdentifier:bluetoothIdentifier supportedConnectors:v23 powerByConnector:v24];

          if (color)
          {
          }

          carIdentifier = [v15 carIdentifier];
          v27 = [carIdentifier copy];
          [(VGVehicle *)v25 setSiriIntentsIdentifier:v27];

          self = selfCopy;
          identifier = [(VGOEMApplication *)selfCopy identifier];
          v29 = [identifier copy];
          [(VGVehicle *)v25 setPairedAppIdentifier:v29];

          v30 = VGGetOEMApplicationLog();
          LODWORD(v29) = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);

          v10 = v48;
          if (v29)
          {
            v31 = MEMORY[0x277CCAB68];
            displayName2 = [(VGVehicle *)v25 displayName];
            siriIntentsIdentifier = [(VGVehicle *)v25 siriIntentsIdentifier];
            v34 = [v31 stringWithFormat:@"%@ (%@) ", displayName2, siriIntentsIdentifier];

            if (color)
            {
              Components = CGColorGetComponents(color);
              for (i = 0; i < CGColorGetNumberOfComponents(color); ++i)
              {
                [v34 appendFormat:@"%f ", *&Components[i]];
              }

              ColorSpace = CGColorGetColorSpace(color);
              [v34 appendFormat:@"%@", CGColorSpaceGetName(ColorSpace)];
            }

            else
            {
              [v34 appendString:@"<no color>"];
            }

            [v44 addObject:v34];
          }

          [v48 addObject:v25];

          v14 = v52 + 1;
        }

        while (v52 + 1 != v49);
        v49 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v49);
    }

    v38 = VGGetOEMApplicationLog();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);

    responseCopy = v43;
    if (v39)
    {
      v40 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v44 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v63 = v41;
        _os_log_impl(&dword_270EC1000, v40, OS_LOG_TYPE_INFO, "_vehiclesFromListCarsIntentResponse color are: %@", buf, 0xCu);
      }
    }

    v13 = [v10 copy];
  }

  else
  {
    v10 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      code = [responseCopy code];
      *buf = 134217984;
      v63 = code;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Listing cars received a non-Success response code: %ld", buf, 0xCu);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)_vehicleStateFromResponse:(id)response error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    v58 = v9;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  carIdentifier = [responseCopy carIdentifier];
  if (carIdentifier)
  {
    dateOfLastStateUpdate = [responseCopy dateOfLastStateUpdate];
    v12 = dateOfLastStateUpdate;
    if (dateOfLastStateUpdate)
    {
      calendar = [dateOfLastStateUpdate calendar];

      if (calendar)
      {
        calendar2 = [v12 calendar];
      }

      else
      {
        v18 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_INFO, "Date components did not specify a calendar; assuming the current one", buf, 2u);
        }

        calendar2 = [MEMORY[0x277CBEA80] currentCalendar];
      }

      v19 = calendar2;
      v20 = [calendar2 dateFromComponents:v12];

      if (v20)
      {
        goto LABEL_19;
      }

      v21 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v12;
        _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "Failed to get an updateDate from components: %@", buf, 0xCu);
      }
    }

    v22 = VGGetOEMApplicationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v58 = responseCopy;
      _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_ERROR, "Assuming vehicle state response: %{private}@ was created now", buf, 0xCu);
    }

    v20 = objc_opt_new();
LABEL_19:
    v44 = [VGVehicleState alloc];
    carIdentifier2 = [responseCopy carIdentifier];
    chargePercentRemaining = [responseCopy chargePercentRemaining];
    distanceRemainingElectric = [responseCopy distanceRemainingElectric];
    maximumDistanceElectric = [responseCopy maximumDistanceElectric];
    minimumBatteryCapacity = [responseCopy minimumBatteryCapacity];
    currentBatteryCapacity = [responseCopy currentBatteryCapacity];
    maximumBatteryCapacity = [responseCopy maximumBatteryCapacity];
    consumptionFormulaArguments = [responseCopy consumptionFormulaArguments];
    v52 = consumptionFormulaArguments;
    if (consumptionFormulaArguments)
    {
      v56 = 0;
      v24 = [MEMORY[0x277CCAAA0] dataWithJSONObject:consumptionFormulaArguments options:0 error:&v56];
      v25 = v56;
      v26 = v25;
      if (!v24 || v25)
      {
        v29 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v58 = v52;
          v59 = 2112;
          v60 = v26;
          _os_log_impl(&dword_270EC1000, v29, OS_LOG_TYPE_ERROR, "Failed to serialize VGVehicleArguments into a string. arguments: %@, error: %@", buf, 0x16u);
        }

        v30 = 0;
      }

      else
      {
        selfCopy = self;
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v24 encoding:4];
        v29 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = v28;
          v58 = v28;
          _os_log_impl(&dword_270EC1000, v29, OS_LOG_TYPE_INFO, "Serializing arguments as: %@", buf, 0xCu);
        }

        else
        {
          v30 = v28;
        }

        self = selfCopy;
      }
    }

    else
    {
      v26 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v26, OS_LOG_TYPE_INFO, "Tried to serialize nil arguments.", buf, 2u);
      }

      v30 = 0;
    }

    chargingFormulaArguments = [responseCopy chargingFormulaArguments];
    v51 = v12;
    v55 = v20;
    v49 = carIdentifier;
    v43 = chargingFormulaArguments;
    if (chargingFormulaArguments)
    {
      v32 = chargingFormulaArguments;
      v56 = 0;
      v33 = [MEMORY[0x277CCAAA0] dataWithJSONObject:chargingFormulaArguments options:0 error:&v56];
      v34 = v56;
      v35 = v34;
      if (!v33 || v34)
      {
        v37 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v58 = v32;
          v59 = 2112;
          v60 = v35;
          _os_log_impl(&dword_270EC1000, v37, OS_LOG_TYPE_ERROR, "Failed to serialize VGVehicleArguments into a string. arguments: %@, error: %@", buf, 0x16u);
        }

        v36 = 0;
      }

      else
      {
        v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v33 encoding:4];
        v37 = VGGetOEMApplicationLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v58 = v36;
          _os_log_impl(&dword_270EC1000, v37, OS_LOG_TYPE_INFO, "Serializing arguments as: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v35 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v35, OS_LOG_TYPE_INFO, "Tried to serialize nil arguments.", buf, 2u);
      }

      v36 = 0;
    }

    charging = [responseCopy charging];
    bOOLValue = [charging BOOLValue];
    activeConnector = [responseCopy activeConnector];
    LOBYTE(v42) = bOOLValue;
    v17 = [(VGVehicleState *)v44 initWithIdentifier:carIdentifier2 dateOfUpdate:v55 origin:2 batteryPercentage:chargePercentRemaining currentEVRange:distanceRemainingElectric maxEVRange:maximumDistanceElectric minBatteryCapacity:minimumBatteryCapacity currentBatteryCapacity:currentBatteryCapacity maxBatteryCapacity:maximumBatteryCapacity consumptionArguments:v30 chargingArguments:v36 isCharging:v42 activeConnector:[(VGOEMApplication *)self _VGChargingConnectorTypeOptionFromINCarChargingConnectorType:activeConnector]];

    carIdentifier = v49;
    v16 = v51;
    goto LABEL_47;
  }

  if (!error)
  {
    v17 = 0;
    goto LABEL_48;
  }

  v15 = MEMORY[0x277CCA9B8];
  v16 = GEOErrorDomain();
  [v15 errorWithDomain:v16 code:-11 userInfo:0];
  *error = v17 = 0;
LABEL_47:

LABEL_48:

  return v17;
}

- (BOOL)_isValidConsumptionModelForResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (GEOConfigGetBOOL())
  {
    v5 = GEOConfigGetString();
    consumptionFormulaArguments = [responseCopy consumptionFormulaArguments];
    v7 = [consumptionFormulaArguments objectForKeyedSubscript:v5];

    if (v7 && (-[VGOEMApplication allowedFormulaIDs](self, "allowedFormulaIDs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, (v9 & 1) != 0))
    {
      v10 = 1;
    }

    else
    {
      v11 = VGGetOEMApplicationLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        allowedFormulaIDs = [(VGOEMApplication *)self allowedFormulaIDs];
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = allowedFormulaIDs;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "Allowlisted formula IDs do not contain the formula in the Consumption Arguments. Current formula: %@, Allowed formula IDs: %@", &v14, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (unint64_t)_VGChargingConnectorTypeOptionFromINCarChargingConnectorType:(id)type
{
  typeCopy = type;
  if (_connectorMapping_onceToken != -1)
  {
    dispatch_once(&_connectorMapping_onceToken, &__block_literal_global_1730);
  }

  v4 = _connectorMapping_s_connectorMapping;
  v5 = [v4 objectForKeyedSubscript:typeCopy];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:typeCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)_VGChargingConnectorTypeOptionsFromINCarChargingConnectorTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  if (_connectorMapping_onceToken != -1)
  {
    dispatch_once(&_connectorMapping_onceToken, &__block_literal_global_1730);
  }

  v4 = _connectorMapping_s_connectorMapping;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:{v11, v15}];

        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          v8 |= [v13 unsignedIntegerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (VGOEMApplication)initWithIdentifier:(id)identifier applicationRecord:(id)record
{
  identifierCopy = identifier;
  recordCopy = record;
  v14.receiver = self;
  v14.super_class = VGOEMApplication;
  v9 = [(VGOEMApplication *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("VGOEMApplicationQueue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v9->_applicationRecord, record);
  }

  return v9;
}

@end