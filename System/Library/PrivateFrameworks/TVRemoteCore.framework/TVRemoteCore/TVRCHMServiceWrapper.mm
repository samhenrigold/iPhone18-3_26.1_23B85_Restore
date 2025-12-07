@interface TVRCHMServiceWrapper
+ (id)wrapperWithService:(id)service;
- (BOOL)supportsInfoKey;
- (NSString)description;
- (NSString)identifier;
- (NSString)model;
- (TVRCHMServiceWrapper)initWithService:(id)service;
- (TVRCHMServiceWrapperDelegate)delegate;
- (id)_televisionServiceForAccessory:(id)accessory;
- (int64_t)_remoteKeyForTVRCButton:(id)button;
- (void)_checkVolumeServicesForAccessory:(id)accessory;
- (void)_disconnectWithError:(id)error;
- (void)_readValueForCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)_sendMuteKey;
- (void)_sendRemoteKey:(int64_t)key;
- (void)_sendVolumeKey:(BOOL)key;
- (void)_sendWakeKey;
- (void)_serviceActiveStateChanged:(id)changed;
- (void)_serviceNameChanged:(id)changed;
- (void)_serviceRemoved:(id)removed;
- (void)_setCharacteristicsForService:(id)service;
- (void)_startObservingServiceNotifications;
- (void)_stopObservingServiceNotifications;
- (void)_togglePowerButton;
- (void)_updateMuteState;
- (void)_updatePowerState;
- (void)_writeValue:(id)value toCharacteristic:(id)characteristic;
- (void)connect;
- (void)sendButtonEvent:(id)event;
@end

@implementation TVRCHMServiceWrapper

+ (id)wrapperWithService:(id)service
{
  serviceCopy = service;
  v4 = [[TVRCHMServiceWrapper alloc] initWithService:serviceCopy];

  return v4;
}

- (TVRCHMServiceWrapper)initWithService:(id)service
{
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = TVRCHMServiceWrapper;
  v6 = [(TVRCHMServiceWrapper *)&v12 init];
  v7 = v6;
  if (serviceCopy && v6)
  {
    objc_storeStrong(&v6->_service, service);
    accessory = [serviceCopy accessory];
    accessory = v7->_accessory;
    v7->_accessory = accessory;

    v7->_connected = 0;
    v7->_connectionState = 0;
    accessory2 = [serviceCopy accessory];
    [(TVRCHMServiceWrapper *)v7 _checkVolumeServicesForAccessory:accessory2];

    [(TVRCHMServiceWrapper *)v7 _setCharacteristicsForService:serviceCopy];
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRCHMServiceWrapper *)self name];
  [v3 appendString:name withName:@"name"];

  model = [(TVRCHMServiceWrapper *)self model];
  [v3 appendString:model withName:@"model"];

  v6 = [v3 appendBool:-[TVRCHMServiceWrapper connected](self withName:{"connected"), @"connected"}];
  v7 = [v3 appendObject:self->_service withName:@"underlyingHMService"];
  identifier = [(TVRCHMServiceWrapper *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  build = [v3 build];

  return build;
}

- (NSString)identifier
{
  accessory = [(HMService *)self->_service accessory];
  deviceIdentifier = [accessory deviceIdentifier];

  return deviceIdentifier;
}

- (NSString)model
{
  accessory = [(HMService *)self->_service accessory];
  category = [accessory category];
  categoryType = [category categoryType];

  if ([categoryType isEqualToString:*MEMORY[0x277CCE930]])
  {
    v5 = TVRCDeviceModelTypeAirplaySetTopBox;
  }

  else
  {
    v6 = [categoryType isEqualToString:*MEMORY[0x277CCE938]];
    v5 = TVRCDeviceModelTypeAirplayTelevision;
    if (v6)
    {
      v5 = TVRCDeviceModelTypeAirplayStick;
    }
  }

  v7 = *v5;
  v8 = *v5;

  return v7;
}

- (void)connect
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_connected)
  {
    self->_connectionState = 1;
    v3 = _TVRCHomeKitLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      service = self->_service;
      v18 = 138412290;
      v19 = service;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to connect service %@", &v18, 0xCu);
    }

    accessory = [(HMService *)self->_service accessory];
    home = [(HMService *)accessory home];
    home = self->_home;
    self->_home = home;

    v9 = _TVRCHomeKitLog(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (accessory)
    {
      if (v10)
      {
        v18 = 138412290;
        v19 = accessory;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Found parent accessory %@", &v18, 0xCu);
      }

      isReachable = [(HMService *)accessory isReachable];
      v12 = isReachable;
      v13 = _TVRCHomeKitLog(isReachable);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          v18 = 138412290;
          v19 = accessory;
          _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Accessory %@ is reachable and local. Informing delegate that we can connect", &v18, 0xCu);
        }

        self->_connectionState = 2;
        self->_connected = 1;
        [(TVRCHMServiceWrapper *)self _startObservingServiceNotifications];
        [(TVRCHMServiceWrapper *)self _updatePowerState];
        [(TVRCHMServiceWrapper *)self _updateMuteState];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained connectedToService:self];
        goto LABEL_18;
      }

      if (v14)
      {
        v18 = 138412290;
        v19 = accessory;
        _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Accessory %@ is not reachable or local. Informing delegate that we disconnected", &v18, 0xCu);
      }

      v17 = 300;
    }

    else
    {
      if (v10)
      {
        v16 = self->_service;
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Could not find accessory for service %@. Informing delegate that we disconnected", &v18, 0xCu);
      }

      v17 = 301;
    }

    WeakRetained = TVRCMakeError(v17, 0);
    [(TVRCHMServiceWrapper *)self _disconnectWithError:WeakRetained];
LABEL_18:
  }
}

- (void)sendButtonEvent:(id)event
{
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType == 2)
  {
    v7 = [(TVRCHMServiceWrapper *)self _remoteKeyForTVRCButton:eventCopy];
    if (v7 != -1)
    {
      [(TVRCHMServiceWrapper *)self _sendRemoteKey:v7];
    }

    button = [eventCopy button];
    buttonType = [button buttonType];

    if (![(TVRCHMServiceWrapper *)self isTVAwake]&& buttonType != 30)
    {
      [(TVRCHMServiceWrapper *)self _sendWakeKey];
    }

    if (buttonType == 29)
    {
      [(TVRCHMServiceWrapper *)self _sendMuteKey];
    }

    else if (buttonType == 30)
    {
      [(TVRCHMServiceWrapper *)self _togglePowerButton];
    }
  }

  else if (eventType == 1)
  {
    button2 = [eventCopy button];
    buttonType2 = [button2 buttonType];

    if ((buttonType2 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
    {
      [(TVRCHMServiceWrapper *)self _sendVolumeKey:buttonType2 == 10];
    }
  }
}

- (BOOL)supportsInfoKey
{
  metadata = [(HMCharacteristic *)self->_serviceCharacteristic metadata];
  validValues = [metadata validValues];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:15];
  v5 = [validValues containsObject:v4];

  return v5;
}

- (void)_startObservingServiceNotifications
{
  if (self->_service)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__serviceNameChanged_ name:@"TVRCMatchPointServiceNameChangedNotification" object:self->_service];
    [defaultCenter addObserver:self selector:sel__serviceRemoved_ name:@"TVRCMatchPointServiceRemovedNotification" object:self->_service];
    [defaultCenter addObserver:self selector:sel__serviceActiveStateChanged_ name:@"TVRCMatchPointServiceActiveStateChangedNotification" object:self->_service];
  }
}

- (void)_stopObservingServiceNotifications
{
  if (self->_service)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceNameChangedNotification" object:self->_service];
    [defaultCenter removeObserver:self name:@"TVRCMatchPointServiceRemovedNotification" object:self->_service];
  }
}

- (void)_serviceNameChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    service = self->_service;
    v7 = v5;
    name = [(TVRCHMServiceWrapper *)self name];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = service;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%@ got notification that services updated name %@. New name : %@", &v11, 0x20u);
  }

  if (self->_connected)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    name2 = [(TVRCHMServiceWrapper *)self name];
    [WeakRetained service:self updatedName:name2];
  }
}

- (void)_serviceRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    service = self->_service;
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = service;
    v7 = v5;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ got notification that services went away %@. Disconnecting if still connected", &v9, 0x16u);
  }

  if (self->_connectionState)
  {
    v8 = TVRCMakeError(300, 0);
    [(TVRCHMServiceWrapper *)self _disconnectWithError:v8];
  }
}

- (void)_serviceActiveStateChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"TVRCMatchPointServiceActiveStateKey"];

  v6 = _TVRCHomeKitLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Received notification that activeState changed to %@", &v7, 0xCu);
  }
}

- (void)_disconnectWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = _TVRCHomeKitLog(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v9 = 138412546;
    v10 = service;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to disconnect service %@ with error %{public}@", &v9, 0x16u);
  }

  if (self->_connected)
  {
    [(TVRCHMServiceWrapper *)self _stopObservingServiceNotifications];
  }

  *&self->_connected = 0;
  self->_connectionState = 0;
  home = self->_home;
  self->_home = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained disconnectedFromService:self error:errorCopy];
}

- (void)_sendRemoteKey:(int64_t)key
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v10 = 134218242;
    keyCopy = key;
    v12 = 2112;
    v13 = service;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to send key of type %ld to service %@", &v10, 0x16u);
  }

  if (self->_serviceCharacteristic)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:key];
    [(TVRCHMServiceWrapper *)self _writeValue:v8 toCharacteristic:self->_serviceCharacteristic];
  }

  else
  {
    v8 = _TVRCHomeKitLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_service;
      v10 = 138412290;
      keyCopy = v9;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicRemoteKey exists for service %@", &v10, 0xCu);
    }
  }
}

- (void)_sendWakeKey
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v8 = 138412290;
    v9 = service;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Sending wake key to service %@", &v8, 0xCu);
  }

  if (self->_activeCharacteristic)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [(TVRCHMServiceWrapper *)self _writeValue:v6 toCharacteristic:self->_activeCharacteristic];
  }

  else
  {
    v6 = _TVRCHomeKitLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_service;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeActive exists for service %@", &v8, 0xCu);
    }
  }
}

- (void)_updatePowerState
{
  if (self->_activeCharacteristic)
  {
    v3 = _TVRCHomeKitLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Reading value for HMCharacteristicTypeActive", buf, 2u);
    }

    objc_initWeak(buf, self);
    activeCharacteristic = self->_activeCharacteristic;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__TVRCHMServiceWrapper__updatePowerState__block_invoke;
    v5[3] = &unk_279D82D38;
    objc_copyWeak(&v6, buf);
    [(HMCharacteristic *)activeCharacteristic readValueWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __41__TVRCHMServiceWrapper__updatePowerState__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activeCharacteristic];
    v7 = [v6 localizedDescription];

    if (v3)
    {
      v9 = _TVRCHomeKitLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __41__TVRCHMServiceWrapper__updatePowerState__block_invoke_cold_1();
      }
    }

    else
    {
      v10 = [v5 activeCharacteristic];
      v9 = [v10 value];

      v11 = _TVRCHomeKitLog([v5 setCurrentActiveState:{-[NSObject intValue](v9, "intValue")}]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = [v5 currentActiveState];
        _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Received value for HMCharacteristicTypeActive. Setting currentActiveState to %ld", &v12, 0xCu);
      }
    }
  }
}

- (void)_updateMuteState
{
  if (self->_muteCharacteristic)
  {
    v3 = _TVRCHomeKitLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Reading value for HMCharacteristicTypeMute", buf, 2u);
    }

    objc_initWeak(buf, self);
    muteCharacteristic = self->_muteCharacteristic;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__TVRCHMServiceWrapper__updateMuteState__block_invoke;
    v5[3] = &unk_279D82D38;
    objc_copyWeak(&v6, buf);
    [(HMCharacteristic *)muteCharacteristic readValueWithCompletionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __40__TVRCHMServiceWrapper__updateMuteState__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained activeCharacteristic];
    v7 = [v6 localizedDescription];

    if (v3)
    {
      v9 = _TVRCHomeKitLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __41__TVRCHMServiceWrapper__updatePowerState__block_invoke_cold_1();
      }
    }

    else
    {
      v10 = [v5 muteCharacteristic];
      v9 = [v10 value];

      v11 = _TVRCHomeKitLog([v5 setMuteEnabled:{-[NSObject BOOLValue](v9, "BOOLValue")}]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = [v5 muteEnabled];
        _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Received value for HMCharacteristicTypeMute. Setting muteEnabled to %{BOOL}d", v12, 8u);
      }
    }
  }
}

- (void)_togglePowerButton
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v15 = service;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Toggling power for service %@", buf, 0xCu);
  }

  if (self->_activeCharacteristic)
  {
    isTVAwake = [(TVRCHMServiceWrapper *)self isTVAwake];
    objc_initWeak(buf, self);
    v7 = !isTVAwake;
    activeCharacteristic = self->_activeCharacteristic;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke;
    v12[3] = &unk_279D82D60;
    objc_copyWeak(v13, buf);
    v13[1] = v7;
    [(HMCharacteristic *)activeCharacteristic writeValue:v9 completionHandler:v12];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = _TVRCHomeKitLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_service;
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeActive exists for service %@", buf, 0xCu);
    }
  }
}

void __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCHomeKitLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
        v9 = [v5 activeCharacteristic];
        v10 = [v9 localizedDescription];
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully wrote value %@ to characteristic %@", &v11, 0x16u);
      }

      [v5 setCurrentActiveState:*(a1 + 40)];
    }
  }
}

- (void)_sendVolumeKey:(BOOL)key
{
  keyCopy = key;
  v15 = *MEMORY[0x277D85DE8];
  v5 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    service = self->_service;
    if (keyCopy)
    {
      v6 = @"YES";
    }

    v11 = 138412546;
    v12 = service;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Sending volume key to service %@ with increment %{public}@", &v11, 0x16u);
  }

  if (self->_volumeSelectorCharacteristic)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:!keyCopy];
    [(TVRCHMServiceWrapper *)self _writeValue:v9 toCharacteristic:self->_volumeSelectorCharacteristic];
  }

  else
  {
    v9 = _TVRCHomeKitLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_service;
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeVolumeSelector exists for service %@", &v11, 0xCu);
    }
  }
}

- (void)_sendMuteKey
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _TVRCHomeKitLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v16 = service;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Sending mute key to service %@", buf, 0xCu);
  }

  if (self->_muteCharacteristic)
  {
    muteEnabled = [(TVRCHMServiceWrapper *)self muteEnabled];
    objc_initWeak(buf, self);
    v7 = !muteEnabled;
    muteCharacteristic = self->_muteCharacteristic;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke;
    v12[3] = &unk_279D82D88;
    objc_copyWeak(&v13, buf);
    v14 = v7;
    [(HMCharacteristic *)muteCharacteristic writeValue:v9 completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = _TVRCHomeKitLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_service;
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "No characteristic of type HMCharacteristicTypeMute exists for service %@", buf, 0xCu);
    }
  }
}

void __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCHomeKitLog(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
        v9 = [v5 muteCharacteristic];
        v10 = [v9 localizedDescription];
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully wrote value %@ to characteristic %@", &v11, 0x16u);
      }

      [v5 setMuteEnabled:*(a1 + 40)];
    }
  }
}

- (int64_t)_remoteKeyForTVRCButton:(id)button
{
  button = [button button];
  buttonType = [button buttonType];

  v5 = -1;
  v6 = 9;
  v7 = 10;
  v8 = 15;
  if (buttonType != 25)
  {
    v8 = -1;
  }

  if (buttonType != 24)
  {
    v7 = v8;
  }

  if (buttonType != 23)
  {
    v6 = v7;
  }

  v9 = 6;
  v10 = 7;
  if (buttonType != 15)
  {
    v10 = -1;
  }

  if (buttonType != 14)
  {
    v9 = v10;
  }

  if (buttonType <= 22)
  {
    v6 = v9;
  }

  v11 = 4;
  v12 = 5;
  if (buttonType != 13)
  {
    v12 = -1;
  }

  if (buttonType != 12)
  {
    v11 = v12;
  }

  if (buttonType == 5)
  {
    v5 = 11;
  }

  if (buttonType == 1)
  {
    v5 = 8;
  }

  if (buttonType > 11)
  {
    v5 = v11;
  }

  if (buttonType <= 13)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (id)_televisionServiceForAccessory:(id)accessory
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [accessory services];
  v4 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x277CD0F20];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        serviceType = [v9 serviceType];
        v11 = [serviceType isEqualToString:v7];

        if (v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v5 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_setCharacteristicsForService:(id)service
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  serviceCopy = service;
  characteristics = [serviceCopy characteristics];
  v5 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = *MEMORY[0x277CCFA10];
    v9 = *MEMORY[0x277CCF748];
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = _TVRCHomeKitLog(v5);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          localizedDescription = [v11 localizedDescription];
          *buf = 138543618;
          v29 = localizedDescription;
          v30 = 2112;
          v31 = serviceCopy;
          _os_log_debug_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEBUG, "Found characteristic, %{public}@ for service %@", buf, 0x16u);
        }

        characteristicType = [v11 characteristicType];
        v14 = [characteristicType isEqualToString:v8];

        if (v14)
        {
          v16 = _TVRCHomeKitLog(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v11;
            v30 = 2112;
            v31 = serviceCopy;
            _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicRemoteKey, %{public}@ for service %@", buf, 0x16u);
          }

          p_serviceCharacteristic = &self->_serviceCharacteristic;
        }

        else
        {
          characteristicType2 = [v11 characteristicType];
          v19 = [characteristicType2 isEqualToString:v9];

          if (!v19)
          {
            goto LABEL_17;
          }

          v20 = _TVRCHomeKitLog(v5);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v29 = v11;
            v30 = 2112;
            v31 = serviceCopy;
            _os_log_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeActive, %{public}@ for service %@", buf, 0x16u);
          }

          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke;
          v23[3] = &unk_279D82DB0;
          v23[4] = v11;
          [v11 enableNotification:1 completionHandler:v23];
          p_serviceCharacteristic = &self->_activeCharacteristic;
        }

        objc_storeStrong(p_serviceCharacteristic, v11);
LABEL_17:
        ++v10;
      }

      while (v6 != v10);
      v5 = [characteristics countByEnumeratingWithState:&v24 objects:v32 count:16];
      v6 = v5;
    }

    while (v5);
  }
}

void __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCHomeKitLog(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Enabled notifications for HMCharacteristicTypeActive", v5, 2u);
  }
}

- (void)_checkVolumeServicesForAccessory:(id)accessory
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  services = [accessory services];
  v5 = [services countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    v8 = *MEMORY[0x277CD0EF0];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v45 != v7)
      {
        objc_enumerationMutation(services);
      }

      v10 = *(*(&v44 + 1) + 8 * v9);
      serviceType = [v10 serviceType];
      v12 = [serviceType isEqualToString:v8];

      if (v12)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [services countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (!v6)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }
    }

    v13 = v10;

    if (v13)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = v13;
      characteristics = [v13 characteristics];
      v15 = [characteristics countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (!v15)
      {
        goto LABEL_31;
      }

      v16 = v15;
      v17 = *v41;
      v18 = *MEMORY[0x277CCFBA8];
      v19 = *MEMORY[0x277CCFBB0];
      v35 = v39;
      v36 = *MEMORY[0x277CCF980];
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(characteristics);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          characteristicType = [v21 characteristicType];
          v23 = [characteristicType isEqualToString:v18];

          if (v23)
          {
            v25 = _TVRCHomeKitLog(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v49 = v21;
              v50 = 2112;
              v51 = v37;
              _os_log_impl(&dword_26CF7F000, v25, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeVolume, %{public}@ for service %@", buf, 0x16u);
            }

            self->_volumeControlSupported = 1;
          }

          else
          {
            characteristicType2 = [v21 characteristicType];
            v27 = [characteristicType2 isEqualToString:v19];

            if (v27)
            {
              v29 = _TVRCHomeKitLog(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v49 = v21;
                v50 = 2112;
                v51 = v37;
                _os_log_impl(&dword_26CF7F000, v29, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeVolumeSelector, %{public}@ for service %@", buf, 0x16u);
              }

              self->_volumeControlSupported = 1;
              p_volumeSelectorCharacteristic = &self->_volumeSelectorCharacteristic;
            }

            else
            {
              characteristicType3 = [v21 characteristicType];
              v32 = [characteristicType3 isEqualToString:v36];

              if (!v32)
              {
                continue;
              }

              v34 = _TVRCHomeKitLog(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v49 = v21;
                v50 = 2112;
                v51 = v37;
                _os_log_impl(&dword_26CF7F000, v34, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeMute, %{public}@ for service %@", buf, 0x16u);
              }

              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v39[0] = __57__TVRCHMServiceWrapper__checkVolumeServicesForAccessory___block_invoke;
              v39[1] = &unk_279D82DB0;
              v39[2] = v21;
              [v21 enableNotification:1 completionHandler:v38];
              p_volumeSelectorCharacteristic = &self->_muteCharacteristic;
            }

            objc_storeStrong(p_volumeSelectorCharacteristic, v21);
          }
        }

        v16 = [characteristics countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (!v16)
        {
LABEL_31:

          services = v37;
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
LABEL_32:
  }
}

void __57__TVRCHMServiceWrapper__checkVolumeServicesForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCHomeKitLog(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Enabled notifications for HMCharacteristicTypeMute", v5, 2u);
  }
}

- (void)_writeValue:(id)value toCharacteristic:(id)characteristic
{
  v29[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  characteristicCopy = characteristic;
  v8 = [MEMORY[0x277CD19B0] writeRequestWithCharacteristic:characteristicCopy value:valueCopy];
  v9 = MEMORY[0x277CD1978];
  v29[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v11 = [v9 characteristicBatchRequestWithWriteRequests:v10];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke;
  v22 = &unk_279D82DD8;
  v12 = characteristicCopy;
  v23 = v12;
  v13 = valueCopy;
  v24 = v13;
  [v11 setCompletionHandler:&v19];
  v14 = [v11 setProgressHandler:{&__block_literal_global_5, v19, v20, v21, v22}];
  home = self->_home;
  v16 = _TVRCHomeKitLog(v14);
  v17 = v16;
  if (home)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_home;
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Performing Batch Characteristic Write Request %@, on home %@", buf, 0x16u);
    }

    [(HMHome *)self->_home performBatchCharacteristicRequest:v11];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TVRCHMServiceWrapper _writeValue:v11 toCharacteristic:v17];
    }
  }
}

void __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCHomeKitLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) localizedDescription];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully wrote value %@ to characteristic %@", &v8, 0x16u);
  }
}

void __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke_32(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _TVRCHomeKitLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Batch Characteristic Write progress handler called - %@", &v4, 0xCu);
  }
}

- (void)_readValueForCharacteristic:(id)characteristic completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CD1988] readRequestWithCharacteristic:characteristicCopy];
  v9 = MEMORY[0x277CD1978];
  v29[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v11 = [v9 characteristicBatchRequestWithReadRequests:v10];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke;
  v23[3] = &unk_279D82E20;
  v12 = handlerCopy;
  v24 = v12;
  [v11 setProgressHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35;
  v20[3] = &unk_279D82E48;
  v13 = characteristicCopy;
  v21 = v13;
  v14 = v12;
  v22 = v14;
  v15 = [v11 setCompletionHandler:v20];
  home = self->_home;
  v17 = _TVRCHomeKitLog(v15);
  v18 = v17;
  if (home)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_home;
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Performing Batch Characteristic Read Request %@, on home %@", buf, 0x16u);
    }

    [(HMHome *)self->_home performBatchCharacteristicRequest:v11];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TVRCHMHomeObserver _readCharacteristic:v11 completion:v18];
    }
  }
}

void __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = _TVRCHomeKitLog(v3);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 value];
          v10 = [v7 request];
          v11 = [v10 characteristic];
          v12 = [v11 localizedDescription];
          *buf = 138412546;
          v19 = v9;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received value %@ for read request on characteristic %@", buf, 0x16u);
        }

        v3 = (*(*(a1 + 32) + 16))();
        ++v6;
      }

      while (v4 != v6);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
      v4 = v3;
    }

    while (v3);
  }
}

void __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TVRCHomeKitLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (TVRCHMServiceWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __42__TVRCHMServiceWrapper__togglePowerButton__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v1 = [v0 activeCharacteristic];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to write to characteristic %@. Error : %{public}@", v5, v6, v7, v8);
}

void __36__TVRCHMServiceWrapper__sendMuteKey__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v1 = [v0 muteCharacteristic];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v3, v4, "Failed to write to characteristic %@. Error : %{public}@", v5, v6, v7, v8);
}

void __54__TVRCHMServiceWrapper__setCharacteristicsForService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v1 = [OUTLINED_FUNCTION_4(v0) localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v2, v3, "Failed to enable notification for characteristic %@. Error : %{public}@", v4, v5, v6, v7);
}

- (void)_writeValue:(uint64_t)a1 toCharacteristic:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not perform Batch Characteristic Write Request %@ since no valid home was found", &v2, 0xCu);
}

void __53__TVRCHMServiceWrapper__writeValue_toCharacteristic___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v1 = [OUTLINED_FUNCTION_4(v0) localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v2, v3, "Failed to write to characteristic %@. Error : %{public}@", v4, v5, v6, v7);
}

void __70__TVRCHMServiceWrapper__readValueForCharacteristic_completionHandler___block_invoke_35_cold_1()
{
  OUTLINED_FUNCTION_3();
  v1 = [OUTLINED_FUNCTION_4(v0) localizedDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_26CF7F000, v2, v3, "Failed to read to chacratersitic %@. Error : %{public}@", v4, v5, v6, v7);
}

@end