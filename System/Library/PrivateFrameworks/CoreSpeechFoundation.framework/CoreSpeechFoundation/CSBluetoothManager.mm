@interface CSBluetoothManager
+ (id)sharedInstance;
- (CSBluetoothManager)init;
- (id)_getAddressWithBTDevice:(BTDeviceImpl *)device;
- (id)_getBluetoothDeviceInfoForDeviceWithBTAddressString:(id)string;
- (id)_getConnectedBluetoothDeviceAddressesFromLocalDevice:(BTLocalDeviceImpl *)device;
- (id)_getWirelessSplitterInfoFromLocalDevice:(BTLocalDeviceImpl *)device;
- (id)_setBluetoothDeviceInfoForDevice:(BTDeviceImpl *)device;
- (id)getBluetoothDeviceInfoForDeviceWithId:(id)id;
- (void)CSFirstUnlockMonitor:(id)monitor didReceiveFirstUnlock:(BOOL)unlock;
- (void)_attachBluetoothSession;
- (void)_clearBluetoothDeviceInfoForDevice:(BTDeviceImpl *)device;
- (void)_detachBluetoothSession;
- (void)_fetchAllConnectedDevices;
- (void)_loadAACPCapabilityForDevice:(BTDeviceImpl *)device deviceAddress:(id)address;
- (void)_sessionAttached:(BTSessionImpl *)attached result:(int)result;
- (void)_sessionDetached:(BTSessionImpl *)detached;
- (void)_sessionTerminated:(BTSessionImpl *)terminated;
- (void)_setUpAccessoryManager;
- (void)_setUpLocalDevice;
- (void)_tearDownAccessoryManager;
- (void)_tearDownLocalDevice;
- (void)accessoryManager:(BTAccessoryManagerImpl *)manager accessoryEvent:(int)event device:(BTDeviceImpl *)device accessoryState:(int)state;
- (void)device:(BTDeviceImpl *)device serviceMask:(unsigned int)mask serviceEventType:(int)type serviceSpecificEvent:(unsigned int)event result:(int)result;
- (void)getBTDeviceInfoWithBTAddressString:(id)string withCompletion:(id)completion;
- (void)getBTLocalDeviceWithCompletion:(id)completion;
- (void)getConnectedBluetoothDeviceAddressesWithCompletion:(id)completion;
- (void)getWirelessSplitterInfoWithCompletion:(id)completion;
@end

@implementation CSBluetoothManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15730 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_15730, &__block_literal_global_15731);
  }

  v3 = sharedInstance_sharedInstance_15732;

  return v3;
}

- (void)CSFirstUnlockMonitor:(id)monitor didReceiveFirstUnlock:(BOOL)unlock
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CSBluetoothManager_CSFirstUnlockMonitor_didReceiveFirstUnlock___block_invoke;
  v4[3] = &unk_1E865CC80;
  v4[4] = self;
  [(CSBluetoothManager *)self getBTLocalDeviceWithCompletion:v4, unlock];
}

uint64_t __65__CSBluetoothManager_CSFirstUnlockMonitor_didReceiveFirstUnlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _fetchAllConnectedDevices];
}

- (void)_clearBluetoothDeviceInfoForDevice:(BTDeviceImpl *)device
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(CSBluetoothManager *)self _getAddressWithBTDevice:device];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap objectForKey:v4];
    if (v5)
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315395;
        v8 = "[CSBluetoothManager _clearBluetoothDeviceInfoForDevice:]";
        v9 = 2113;
        v10 = v4;
        _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Lost BTDevice with address %{private}@", &v7, 0x16u);
      }

      [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap removeObjectForKey:v4];
    }
  }
}

- (void)_loadAACPCapabilityForDevice:(BTDeviceImpl *)device deviceAddress:(id)address
{
  v24 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (addressCopy)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      v17 = "[CSBluetoothManager _loadAACPCapabilityForDevice:deviceAddress:]";
      v18 = 2113;
      *v19 = addressCopy;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Loading AACP capabilities for BTDevice with address %{private}@", buf, 0x16u);
    }

    v7 = [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap objectForKey:addressCopy];
    if (v7)
    {
      v8 = mach_absolute_time();
      AACPCapabilityInteger = BTAccessoryManagerGetAACPCapabilityInteger();
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = "[CSBluetoothManager _loadAACPCapabilityForDevice:deviceAddress:]";
        v18 = 1024;
        *v19 = AACPCapabilityInteger == 0;
        *&v19[4] = 1024;
        *&v19[6] = 96;
        v20 = 1024;
        v21 = 0;
        v22 = 1024;
        v23 = 0;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s GetAACPCapability result: BT_SUCCESS=%d, AACP capability bit: %d,  AACP capability supported: %d (%d)", buf, 0x24u);
      }

      [v7 setSupportMph:0];
      v11 = mach_absolute_time();
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v11 - v8;
        v14 = v12;
        if (_CSMachAbsoluteTimeRate_onceToken != -1)
        {
          dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
        }

        *buf = 136315394;
        v17 = "[CSBluetoothManager _loadAACPCapabilityForDevice:deviceAddress:]";
        v18 = 2048;
        *v19 = *&_CSMachAbsoluteTimeRate_rate * v13 / 1000000000.0;
        _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s BT AACP capability retrieval latency %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315395;
        v17 = "[CSBluetoothManager _loadAACPCapabilityForDevice:deviceAddress:]";
        v18 = 2113;
        *v19 = addressCopy;
        _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Received AACP capabilities for BTDevice with address %{private}@ not in the connected list.", buf, 0x16u);
      }
    }
  }
}

- (id)_setBluetoothDeviceInfoForDevice:(BTDeviceImpl *)device
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  v5 = [(CSBluetoothManager *)self _getAddressWithBTDevice:?];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap objectForKey:v5];
    if (!v6)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[CSBluetoothManager _setBluetoothDeviceInfoForDevice:]";
        v14 = 2112;
        *v15 = v5;
        _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Found BTDevice with address %@", buf, 0x16u);
      }

      v6 = objc_alloc_init(CSBluetoothDeviceInfo);
      v8 = BTDeviceSupportsHS();
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = "[CSBluetoothManager _setBluetoothDeviceInfoForDevice:]";
        v14 = 1024;
        *v15 = v8;
        v15[2] = 1024;
        *&v15[3] = 0;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s BTDeviceSupportsHS BTResult: %d, deviceSupportHS: %u", buf, 0x18u);
      }

      BTDeviceIsTemporaryPairedNotInContacts();
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315395;
        v13 = "[CSBluetoothManager _setBluetoothDeviceInfoForDevice:]";
        v14 = 2113;
        *v15 = v5;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Device with address %{private}@ is temporary paired and not in contacts", buf, 0x16u);
      }

      [(CSBluetoothDeviceInfo *)v6 setAddress:v5];
      [(CSBluetoothDeviceInfo *)v6 setSupportDoAP:0];
      [(CSBluetoothDeviceInfo *)v6 setIsTemporaryPairedNotInContacts:1];
      [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap setObject:v6 forKey:v5];
      [(CSBluetoothManager *)self _loadAACPCapabilityForDevice:device deviceAddress:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_fetchAllConnectedDevices
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self->_accessoryManager)
  {
    v2 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[CSBluetoothManager _fetchAllConnectedDevices]";
      _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Accessory manager is not initialized", buf, 0xCu);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *buf = 0u;
  v4 = 0u;
  BTLocalDeviceGetConnectedDevices();
}

- (void)_tearDownAccessoryManager
{
  if (self->_accessoryManager)
  {
    self->_accessoryManager = 0;
  }
}

- (void)_setUpAccessoryManager
{
  v7 = *MEMORY[0x1E69E9840];
  if (BTAccessoryManagerGetDefault())
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSBluetoothManager _setUpAccessoryManager]";
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Failed to get default accessory manager", &v5, 0xCu);
    }

    self->_accessoryManager = 0;
  }

  else if (BTAccessoryManagerAddCallbacks())
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSBluetoothManager _setUpAccessoryManager]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Failed to add accessory manager callbacks", &v5, 0xCu);
    }
  }
}

- (void)_tearDownLocalDevice
{
  if (self->_localDevice)
  {
    BTLocalDeviceRemoveCallbacks();
    self->_localDevice = 0;
  }
}

- (void)_setUpLocalDevice
{
  v20 = *MEMORY[0x1E69E9840];
  [(CSBluetoothManager *)self _tearDownLocalDevice];
  if (!self->_bluetoothSession)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = 136315138;
    v15 = "[CSBluetoothManager _setUpLocalDevice]";
    v7 = "%s Bluetooth Session is NULL";
    v9 = v8;
    v10 = 12;
    goto LABEL_11;
  }

  Default = BTLocalDeviceGetDefault();
  if (Default)
  {
    v4 = Default;
    v5 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    bluetoothSession = self->_bluetoothSession;
    v14 = 136315650;
    v15 = "[CSBluetoothManager _setUpLocalDevice]";
    v16 = 2050;
    v17 = bluetoothSession;
    v18 = 1026;
    v19 = v4;
    v7 = "%s Failed to get default local device from session %{public}p, (result = %{public}d)";
    goto LABEL_10;
  }

  v11 = BTLocalDeviceAddCallbacks();
  if (v11)
  {
    v12 = v11;
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_bluetoothSession;
      v14 = 136315650;
      v15 = "[CSBluetoothManager _setUpLocalDevice]";
      v16 = 2050;
      v17 = v13;
      v18 = 1026;
      v19 = v12;
      v7 = "%s Failed to add local device callback from session %{public}p, (result = %{public}d";
LABEL_10:
      v9 = v5;
      v10 = 28;
LABEL_11:
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, v7, &v14, v10);
    }
  }
}

- (void)_sessionTerminated:(BTSessionImpl *)terminated
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSBluetoothManager _sessionTerminated:]";
    v9 = 2048;
    terminatedCopy = terminated;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s session = %p", &v7, 0x16u);
  }

  if (self->_bluetoothSession == terminated)
  {
    if (terminated)
    {
      BTServiceRemoveCallbacks();
      self->_bluetoothSession = 0;
    }

    [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap removeAllObjects];
    [(CSBluetoothManager *)self _tearDownAccessoryManager];
    [(CSBluetoothManager *)self _attachBluetoothSession];
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSBluetoothManager _sessionTerminated:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s terminated session is different from currently attached session, ignore", &v7, 0xCu);
    }
  }
}

- (void)_sessionDetached:(BTSessionImpl *)detached
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSBluetoothManager _sessionDetached:]";
    v9 = 2048;
    detachedCopy = detached;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s session = %p", &v7, 0x16u);
  }

  if (self->_bluetoothSession == detached)
  {
    [(CSBluetoothManager *)self _tearDownLocalDevice];
    if (self->_bluetoothSession)
    {
      BTServiceRemoveCallbacks();
      self->_bluetoothSession = 0;
    }

    [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap removeAllObjects];
    [(CSBluetoothManager *)self _tearDownAccessoryManager];
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSBluetoothManager _sessionDetached:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s detached session is different from currently attached session, ignore", &v7, 0xCu);
    }
  }
}

- (void)_sessionAttached:(BTSessionImpl *)attached result:(int)result
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[CSBluetoothManager _sessionAttached:result:]";
    v10 = 2050;
    attachedCopy = attached;
    v12 = 1026;
    resultCopy = result;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s session = %{public}p, result = %{public}d", &v8, 0x1Cu);
  }

  self->_isAttachingBluetoothSession = 0;
  if (!result)
  {
    [(CSBluetoothManager *)self _detachBluetoothSession];
    self->_bluetoothSession = attached;
    if (attached)
    {
      BTServiceAddCallbacks();
    }

    [(CSBluetoothManager *)self _setUpLocalDevice];
    [(CSBluetoothManager *)self _setUpAccessoryManager];
    [(CSBluetoothManager *)self _fetchAllConnectedDevices];
  }

  dispatch_group_leave(self->_bluetoothSessionSetupGroup);
}

- (void)accessoryManager:(BTAccessoryManagerImpl *)manager accessoryEvent:(int)event device:(BTDeviceImpl *)device accessoryState:(int)state
{
  v13 = *MEMORY[0x1E69E9840];
  if (event == 22)
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSBluetoothManager accessoryManager:accessoryEvent:device:accessoryState:]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__CSBluetoothManager_accessoryManager_accessoryEvent_device_accessoryState___block_invoke;
    v10[3] = &unk_1E865CC58;
    v10[4] = self;
    v10[5] = device;
    dispatch_async(queue, v10);
  }
}

void __76__CSBluetoothManager_accessoryManager_accessoryEvent_device_accessoryState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getAddressWithBTDevice:*(a1 + 40)];
  [*(a1 + 32) _loadAACPCapabilityForDevice:*(a1 + 40) deviceAddress:v2];
}

- (void)device:(BTDeviceImpl *)device serviceMask:(unsigned int)mask serviceEventType:(int)type serviceSpecificEvent:(unsigned int)event result:(int)result
{
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__CSBluetoothManager_device_serviceMask_serviceEventType_serviceSpecificEvent_result___block_invoke;
  v8[3] = &unk_1E865CC30;
  resultCopy = result;
  typeCopy = type;
  eventCopy = event;
  v8[4] = self;
  v8[5] = device;
  dispatch_async(queue, v8);
}

id __86__CSBluetoothManager_device_serviceMask_serviceEventType_serviceSpecificEvent_result___block_invoke(id result)
{
  if (!*(result + 12))
  {
    v3 = *(result + 13);
    if (v3 == 1)
    {
      if (*(result + 14) == 12)
      {
        v4 = *(result + 5);
        v5 = *(result + 4);

        return [v5 _clearBluetoothDeviceInfoForDevice:v4];
      }
    }

    else if (!v3 && *(result + 14) == 11)
    {
      return [*(result + 4) _setBluetoothDeviceInfoForDevice:{*(result + 5), v1, v2}];
    }
  }

  return result;
}

- (void)_attachBluetoothSession
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isAttachingBluetoothSession)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[CSBluetoothManager _attachBluetoothSession]";
      _os_log_error_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_ERROR, "%s Already Attaching Bluetooth Session", &v5, 0xCu);
    }
  }

  else
  {
    [(CSBluetoothManager *)self _detachBluetoothSession];
    if (!BTSessionAttachWithQueue())
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315138;
        v6 = "[CSBluetoothManager _attachBluetoothSession]";
        _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Start attaching bluetooth session", &v5, 0xCu);
      }

      self->_isAttachingBluetoothSession = 1;
      dispatch_group_enter(self->_bluetoothSessionSetupGroup);
    }
  }
}

- (void)_detachBluetoothSession
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  [(CSBluetoothManager *)self _tearDownLocalDevice];
  bluetoothSession = self->_bluetoothSession;
  p_bluetoothSession = &self->_bluetoothSession;
  if (bluetoothSession)
  {
    BTServiceRemoveCallbacks();
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *p_bluetoothSession;
      v7 = 136315394;
      v8 = "[CSBluetoothManager _detachBluetoothSession]";
      v9 = 2050;
      v10 = v6;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Detaching bluetooth session : %{public}p", &v7, 0x16u);
    }

    BTSessionDetachWithQueue();
  }
}

- (id)_getWirelessSplitterInfoFromLocalDevice:(BTLocalDeviceImpl *)device
{
  v12 = *MEMORY[0x1E69E9840];
  if (!device)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  IsSharingEnabled = BTLocalDeviceIsSharingEnabled();
  if (IsSharingEnabled)
  {
    v4 = IsSharingEnabled;
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "[CSBluetoothManager _getWirelessSplitterInfoFromLocalDevice:]";
      buf_12 = 1024;
      buf_14 = v4;
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get sharing enable flag : %d", &buf, 0x12u);
    }

    goto LABEL_5;
  }

  v6 = objc_alloc_init(CSBluetoothWirelessSplitterInfo);
  [(CSBluetoothWirelessSplitterInfo *)v6 setSplitterEnabled:0];
LABEL_6:

  return v6;
}

- (id)_getBluetoothDeviceInfoForDeviceWithBTAddressString:(id)string
{
  v40 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = mach_absolute_time();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap allValues];
  v7 = [allValues countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        address = [v11 address];
        v13 = [address isEqualToString:stringCopy];

        if (v13)
        {
          v16 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            address2 = [v11 address];
            *buf = 136315651;
            v34 = "[CSBluetoothManager _getBluetoothDeviceInfoForDeviceWithBTAddressString:]";
            v35 = 2113;
            v36 = *&v11;
            v37 = 2113;
            v38 = address2;
            _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s Using cached CSBluetoothDeviceInfo: %{private}@ for BTDevice with Address: %{private}@", buf, 0x20u);
          }

          v19 = v11;

          goto LABEL_26;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [stringCopy UTF8String];
  BTDeviceAddressFromString();
  if (stringCopy && self->_bluetoothSession)
  {
    v14 = objc_alloc_init(CSBluetoothDeviceInfo);
    [(NSMutableDictionary *)self->_deviceAddressToDeviceInfoMap setObject:v14 forKey:stringCopy];
    v15 = BTDeviceFromAddress();
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "[CSBluetoothManager _getBluetoothDeviceInfoForDeviceWithBTAddressString:]";
      v35 = 2112;
      v36 = *&stringCopy;
      v37 = 1024;
      LODWORD(v38) = v15;
      _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s Cannot find BTDevice with BTAddressString %@, BTDeviceFromAddress result is %d", buf, 0x1Cu);
    }
  }

  else
  {
    v14 = 0;
  }

  v21 = mach_absolute_time();
  v22 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v21 - v5;
    v24 = v22;
    if (_CSMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
    }

    *buf = 136315394;
    v34 = "[CSBluetoothManager _getBluetoothDeviceInfoForDeviceWithBTAddressString:]";
    v35 = 2048;
    v36 = *&_CSMachAbsoluteTimeRate_rate * v23 / 1000000000.0;
    _os_log_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_DEFAULT, "%s Elapsed time: %f seconds", buf, 0x16u);

    v22 = CSLogContextFacilityCoreSpeech;
  }

  v25 = os_signpost_id_generate(v22);
  v26 = CSLogContextFacilityCoreSpeech;
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v27, OS_SIGNPOST_EVENT, v25, "getBluetoothDeviceInfoForDeviceWithId_latency", &unk_1DDB48B0E, buf, 2u);
  }

  v19 = v14;
LABEL_26:

  return v19;
}

- (id)getBluetoothDeviceInfoForDeviceWithId:(id)id
{
  v29 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__15706;
  v23 = __Block_byref_object_dispose__15707;
  v24 = 0;
  v5 = mach_absolute_time();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CSBluetoothManager_getBluetoothDeviceInfoForDeviceWithId___block_invoke;
  block[3] = &unk_1E865CC08;
  block[4] = self;
  v7 = idCopy;
  v17 = v7;
  v18 = &v19;
  dispatch_sync(queue, block);
  v8 = mach_absolute_time();
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8 - v5;
    if (_CSMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_CSMachAbsoluteTimeRate_onceToken, &__block_literal_global_431);
    }

    *buf = 136315394;
    v26 = "[CSBluetoothManager getBluetoothDeviceInfoForDeviceWithId:]";
    v27 = 2048;
    v28 = *&_CSMachAbsoluteTimeRate_rate * v10 / 1000000000.0;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Elapsed time: %f seconds", buf, 0x16u);
  }

  v11 = os_signpost_id_generate(CSLogContextFacilityCoreSpeech);
  v12 = CSLogContextFacilityCoreSpeech;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DDA4B000, v13, OS_SIGNPOST_EVENT, v11, "getBluetoothDeviceInfoForDeviceWithId_latency", &unk_1DDB48B0E, buf, 2u);
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

void __60__CSBluetoothManager_getBluetoothDeviceInfoForDeviceWithId___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1[4] + 80) allValues];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 deviceIdentifier];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          v10 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            v12 = [v7 deviceIdentifier];
            *buf = 136315651;
            v20 = "[CSBluetoothManager getBluetoothDeviceInfoForDeviceWithId:]_block_invoke";
            v21 = 2113;
            v22 = v7;
            v23 = 2113;
            v24 = v12;
            _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Using cached CSBluetoothDeviceInfo: %{private}@ for BTDevice with identifier: %{private}@", buf, 0x20u);
          }

          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v13 = a1[5];
  if (v13 && *(a1[4] + 32) && !*(*(a1[6] + 8) + 40))
  {
    memset(uu, 0, sizeof(uu));
    uuid_parse([v13 UTF8String], uu);
    if (!uuid_is_null(uu))
    {
      BTDeviceFromIdentifier();
    }
  }
}

- (id)_getAddressWithBTDevice:(BTDeviceImpl *)device
{
  v17 = *MEMORY[0x1E69E9840];
  if (!device)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_7;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  AddressString = BTDeviceGetAddressString();
  if (AddressString)
  {
    v5 = AddressString;
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[CSBluetoothManager _getAddressWithBTDevice:]";
      v11 = 2048;
      deviceCopy = device;
      v13 = 1024;
      v14 = v5;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Failed getting address from BTDevice %p (result = %d).", &v9, 0x1Cu);
    }

    goto LABEL_5;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v15];
LABEL_7:

  return v7;
}

- (id)_getConnectedBluetoothDeviceAddressesFromLocalDevice:(BTLocalDeviceImpl *)device
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (!device)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CSBluetoothManager _getConnectedBluetoothDeviceAddressesFromLocalDevice:]";
      v8 = "%s Local device is NULL.";
      v9 = buf;
      v10 = v3;
      v11 = 12;
      goto LABEL_19;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSBluetoothManager _getConnectedBluetoothDeviceAddressesFromLocalDevice:]";
    *&buf[12] = 2048;
    *&buf[14] = device;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Getting connected devices from local device %p...", buf, 0x16u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(buf, 0, sizeof(buf));
  ConnectedDevices = BTLocalDeviceGetConnectedDevices();
  if (ConnectedDevices)
  {
    v6 = ConnectedDevices;
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315650;
      v17 = "[CSBluetoothManager _getConnectedBluetoothDeviceAddressesFromLocalDevice:]";
      v18 = 2048;
      deviceCopy = device;
      v20 = 1024;
      LODWORD(deviceCopy2) = v6;
      v8 = "%s Failed getting connected devices from local device %p (result = %d).";
      v9 = v16;
      v10 = v7;
      v11 = 28;
LABEL_19:
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, v8, v9, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([0 count])
  {
    v12 = 0;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *v16 = 136315650;
    v17 = "[CSBluetoothManager _getConnectedBluetoothDeviceAddressesFromLocalDevice:]";
    v18 = 2048;
    deviceCopy = [v12 count];
    v20 = 2048;
    deviceCopy2 = device;
    _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Got %tu connected devices from local device %p.", v16, 0x20u);
  }

LABEL_15:

  return v12;
}

- (void)getConnectedBluetoothDeviceAddressesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CSBluetoothManager_getConnectedBluetoothDeviceAddressesWithCompletion___block_invoke;
  v6[3] = &unk_1E865CBE0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CSBluetoothManager *)self getBTLocalDeviceWithCompletion:v6];
}

void __73__CSBluetoothManager_getConnectedBluetoothDeviceAddressesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) _getConnectedBluetoothDeviceAddressesFromLocalDevice:a2];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)getWirelessSplitterInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CSBluetoothManager_getWirelessSplitterInfoWithCompletion___block_invoke;
  v6[3] = &unk_1E865CBE0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CSBluetoothManager *)self getBTLocalDeviceWithCompletion:v6];
}

void __60__CSBluetoothManager_getWirelessSplitterInfoWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) _getWirelessSplitterInfoFromLocalDevice:a2];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)getBTDeviceInfoWithBTAddressString:(id)string withCompletion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CSBluetoothManager_getBTDeviceInfoWithBTAddressString_withCompletion___block_invoke;
  v10[3] = &unk_1E865CBB8;
  v11 = stringCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = stringCopy;
  v9 = completionCopy;
  [(CSBluetoothManager *)self getBTLocalDeviceWithCompletion:v10];
}

void __72__CSBluetoothManager_getBTDeviceInfoWithBTAddressString_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = [*(a1 + 32) _getBluetoothDeviceInfoForDeviceWithBTAddressString:*(a1 + 40)];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)getBTLocalDeviceWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSBluetoothManager getBTLocalDeviceWithCompletion:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Trying to access BTLocalDevice", buf, 0xCu);
  }

  bluetoothSessionSetupGroup = self->_bluetoothSessionSetupGroup;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CSBluetoothManager_getBTLocalDeviceWithCompletion___block_invoke;
  v9[3] = &unk_1E865CB90;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_group_notify(bluetoothSessionSetupGroup, queue, v9);
}

uint64_t __53__CSBluetoothManager_getBTLocalDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSBluetoothManager getBTLocalDeviceWithCompletion:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Accessing BTLocalDevice", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 32))
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSBluetoothManager getBTLocalDeviceWithCompletion:]_block_invoke";
    v9 = 2050;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s BTLocalDevice %{public}p", &v7, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v4);
  }

  return result;
}

- (CSBluetoothManager)init
{
  if (+[CSUtils isDarwinOS])
  {
    selfCopy = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CSBluetoothManager;
    v4 = [(CSBluetoothManager *)&v15 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSBluetoothManager Queue", 0);
      v6 = *(v4 + 2);
      *(v4 + 2) = v5;

      v7 = dispatch_group_create();
      v8 = *(v4 + 8);
      *(v4 + 8) = v7;

      *(v4 + 8) = 0;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v10 = *(v4 + 10);
      *(v4 + 10) = dictionary;

      dispatch_group_enter(*(v4 + 8));
      v11 = *(v4 + 2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __26__CSBluetoothManager_init__block_invoke;
      block[3] = &unk_1E865CB68;
      v14 = v4;
      dispatch_async(v11, block);
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

void __26__CSBluetoothManager_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _attachBluetoothSession];
  v2 = +[CSFirstUnlockMonitor sharedInstance];
  [v2 addObserver:*(a1 + 32)];

  v3 = *(*(a1 + 32) + 64);

  dispatch_group_leave(v3);
}

uint64_t __36__CSBluetoothManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSBluetoothManager);
  v1 = sharedInstance_sharedInstance_15732;
  sharedInstance_sharedInstance_15732 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end