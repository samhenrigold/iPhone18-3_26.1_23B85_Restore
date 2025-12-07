@interface _DKBluetoothMonitor
+ (id)_BMEventFromDKEvent:(id)event starting:(BOOL)starting vendorID:(id)d;
+ (id)_eventWithState:(BOOL)state name:(id)name address:(id)address type:(int)type isAppleAudioDevice:(BOOL)device isUserWearing:(BOOL)wearing productID:(unsigned int)d accessoryBatteryLevels:(id)self0;
+ (id)audioProductsBatteryLevels;
+ (id)contextValueForBluetoothConnectionStatus:(BOOL)status name:(id)name address:(id)address deviceType:(int)type isAppleAudioDevice:(BOOL)device isUserWearing:(BOOL)wearing productID:(unsigned int)d;
+ (id)log;
+ (int)BMDeviceBluetoothDeviceTypeFromBTDeviceType:(int)type;
- (_DKBluetoothMonitor)init;
- (id)loadState;
- (void)deactivate;
- (void)dealloc;
- (void)handleUnpairingEvent:(id)event;
- (void)receiveNotificationEvent:(id)event;
- (void)saveState;
- (void)start;
- (void)updateCurrentBatteryLevels;
@end

@implementation _DKBluetoothMonitor

- (_DKBluetoothMonitor)init
{
  v24.receiver = self;
  v24.super_class = _DKBluetoothMonitor;
  v2 = [(_DKMonitor *)&v24 init];
  if (v2)
  {
    if (+[_DKBluetoothMonitor writeToBiome])
    {
      v3 = BiomeLibrary();
      device = [v3 Device];
      wireless = [device Wireless];
      bluetooth = [wireless Bluetooth];
      source = [bluetooth source];
      source = v2->_source;
      v2->_source = source;
    }

    v9 = BiomeLibrary();
    device2 = [v9 Device];
    wireless2 = [device2 Wireless];
    bluetooth2 = [wireless2 Bluetooth];
    pruner = [bluetooth2 pruner];
    [(_DKBluetoothMonitor *)v2 setPruner:pruner];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeConnections = v2->_activeConnections;
    v2->_activeConnections = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    inactiveConnections = v2->_inactiveConnections;
    v2->_inactiveConnections = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    previousVendorIDs = v2->_previousVendorIDs;
    v2->_previousVendorIDs = dictionary3;

    loadState = [(_DKBluetoothMonitor *)v2 loadState];
    v21 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionUpdateLock = v2->_connectionUpdateLock;
    v2->_connectionUpdateLock = v21;
  }

  return v2;
}

- (void)dealloc
{
  [(_DKBluetoothMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKBluetoothMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)audioProductsBatteryLevels
{
  v28 = *MEMORY[0x277D85DE8];
  if (IOPSCopyPowerSourcesByTypePrecise() || (v3 = IOPSCopyPowerSourcesList(0)) == 0)
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  else
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (Count >= 1)
    {
      v7 = 0;
      *&v6 = 138412546;
      v23 = v6;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        v9 = IOPSGetPowerSourceDescription(0, ValueAtIndex);
        Value = CFDictionaryGetValue(v9, @"Accessory Category");
        v11 = CFDictionaryGetValue(v9, @"Part Identifier");
        v12 = CFDictionaryGetValue(v9, @"Group Identifier");
        if (!v12)
        {
          break;
        }

        v13 = [dictionary objectForKeyedSubscript:v12];

        if (!v13)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:v12];
        }

        valuePtr = 0;
        if (!Value)
        {
          goto LABEL_24;
        }

        if (!CFEqual(Value, @"Headphone"))
        {
          if (!v11 || !CFEqual(Value, @"Audio Battery Case") || !CFEqual(v11, @"Case"))
          {
            goto LABEL_24;
          }

          v19 = CFDictionaryGetValue(v9, @"Current Capacity");
          CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr);
          v16 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
          v17 = [dictionary objectForKeyedSubscript:v12];
          batteryLevelHeadphoneCase = [MEMORY[0x277CFE198] batteryLevelHeadphoneCase];
LABEL_22:
          v21 = batteryLevelHeadphoneCase;
          [v17 setObject:v16 forKeyedSubscript:{batteryLevelHeadphoneCase, v23}];

LABEL_23:
          goto LABEL_24;
        }

        if (v11)
        {
          if (CFEqual(v11, @"Left"))
          {
            v15 = CFDictionaryGetValue(v9, @"Current Capacity");
            CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr);
            v16 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
            v17 = [dictionary objectForKeyedSubscript:v12];
            batteryLevelHeadphoneCase = [MEMORY[0x277CFE198] batteryLevelHeadphoneLeft];
            goto LABEL_22;
          }

          if (CFEqual(v11, @"Right"))
          {
            v20 = CFDictionaryGetValue(v9, @"Current Capacity");
            CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
            v16 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
            v17 = [dictionary objectForKeyedSubscript:v12];
            batteryLevelHeadphoneCase = [MEMORY[0x277CFE198] batteryLevelHeadphoneRight];
            goto LABEL_22;
          }
        }

LABEL_24:

        if (Count == ++v7)
        {
          goto LABEL_25;
        }
      }

      v16 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        valuePtr = v23;
        v25 = Value;
        v26 = 2112;
        v27 = v11;
        _os_log_error_impl(&dword_22595A000, v16, OS_LOG_TYPE_ERROR, "Could not retrieve device address for connected device: %@ - %@", &valuePtr, 0x16u);
      }

      goto LABEL_23;
    }

LABEL_25:
    CFRelease(v4);
    CFRelease(0);
  }

  return dictionary;
}

+ (id)_eventWithState:(BOOL)state name:(id)name address:(id)address type:(int)type isAppleAudioDevice:(BOOL)device isUserWearing:(BOOL)wearing productID:(unsigned int)d accessoryBatteryLevels:(id)self0
{
  wearingCopy = wearing;
  deviceCopy = device;
  v12 = *&type;
  nameCopy = name;
  addressCopy = address;
  levelsCopy = levels;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (nameCopy)
  {
    name = [MEMORY[0x277CFE198] name];
    [dictionary setObject:nameCopy forKey:name];
  }

  if (addressCopy)
  {
    address = [MEMORY[0x277CFE198] address];
    [dictionary setObject:addressCopy forKey:address];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  deviceType = [MEMORY[0x277CFE198] deviceType];
  [dictionary setObject:v20 forKey:deviceType];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:deviceCopy];
  isAppleAudioDevice = [MEMORY[0x277CFE198] isAppleAudioDevice];
  [dictionary setObject:v22 forKey:isAppleAudioDevice];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:wearingCopy];
  isUserWearing = [MEMORY[0x277CFE198] isUserWearing];
  [dictionary setObject:v24 forKeyedSubscript:isUserWearing];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:d];
  productID = [MEMORY[0x277CFE198] productID];
  [dictionary setObject:v26 forKey:productID];

  v28 = [levelsCopy objectForKeyedSubscript:addressCopy];
  v29 = [v28 count];

  if (v29)
  {
    v30 = [levelsCopy objectForKeyedSubscript:addressCopy];
    [dictionary addEntriesFromDictionary:v30];
  }

  if (state)
  {
    [MEMORY[0x277CFE1A0] on];
  }

  else
  {
    [MEMORY[0x277CFE1A0] off];
  }
  v31 = ;
  v32 = MEMORY[0x277CFE1D8];
  bluetoothIsConnectedStream = [MEMORY[0x277CFE298] bluetoothIsConnectedStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v36 = [v32 eventWithStream:bluetoothIsConnectedStream startDate:date endDate:distantFuture value:v31 metadata:dictionary];

  return v36;
}

+ (int)BMDeviceBluetoothDeviceTypeFromBTDeviceType:(int)type
{
  if (type < 0x32)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)_BMEventFromDKEvent:(id)event starting:(BOOL)starting vendorID:(id)d
{
  startingCopy = starting;
  dCopy = d;
  eventCopy = event;
  metadata = [eventCopy metadata];
  deviceType = [MEMORY[0x277CFE198] deviceType];
  v11 = [metadata valueForKey:deviceType];

  v39 = v11;
  if (v11)
  {
    v31 = [objc_opt_class() BMDeviceBluetoothDeviceTypeFromBTDeviceType:{objc_msgSend(v11, "intValue")}];
  }

  else
  {
    v31 = 0;
  }

  v12 = objc_alloc(MEMORY[0x277CF10C0]);
  metadata2 = [eventCopy metadata];
  address = [MEMORY[0x277CFE198] address];
  v41 = [metadata2 valueForKey:address];
  metadata3 = [eventCopy metadata];
  name = [MEMORY[0x277CFE198] name];
  v40 = [metadata3 valueForKey:name];
  metadata4 = [eventCopy metadata];
  productID = [MEMORY[0x277CFE198] productID];
  v26 = [metadata4 valueForKey:productID];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:startingCopy];
  metadata5 = [eventCopy metadata];
  batteryLevelHeadphoneCase = [MEMORY[0x277CFE198] batteryLevelHeadphoneCase];
  v22 = [metadata5 valueForKey:batteryLevelHeadphoneCase];
  metadata6 = [eventCopy metadata];
  batteryLevelHeadphoneRight = [MEMORY[0x277CFE198] batteryLevelHeadphoneRight];
  v20 = [metadata6 valueForKey:batteryLevelHeadphoneRight];
  metadata7 = [eventCopy metadata];
  batteryLevelHeadphoneLeft = [MEMORY[0x277CFE198] batteryLevelHeadphoneLeft];
  v13 = [metadata7 valueForKey:batteryLevelHeadphoneLeft];
  metadata8 = [eventCopy metadata];
  isAppleAudioDevice = [MEMORY[0x277CFE198] isAppleAudioDevice];
  v15 = [metadata8 valueForKey:isAppleAudioDevice];
  metadata9 = [eventCopy metadata];

  isUserWearing = [MEMORY[0x277CFE198] isUserWearing];
  v18 = [metadata9 valueForKey:isUserWearing];
  v32 = [v12 initWithAddress:v41 name:v40 productID:v26 starting:v25 deviceType:v31 batteryLevelHeadphoneCase:v22 batteryLevelHeadphoneRight:v20 batteryLevelHeadphoneLeft:v13 appleAudioDevice:v15 userWearing:v18 vendorID:dCopy];

  return v32;
}

- (void)updateCurrentBatteryLevels
{
  v36 = *MEMORY[0x277D85DE8];
  batteryLevels = [(_DKBluetoothMonitor *)self batteryLevels];
  v4 = [batteryLevels mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  batteryLevels2 = [(_DKBluetoothMonitor *)self batteryLevels];
  allKeys = [batteryLevels2 allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        batteryLevels3 = [(_DKBluetoothMonitor *)self batteryLevels];
        v13 = [batteryLevels3 objectForKeyedSubscript:v11];
        v14 = [v13 mutableCopy];
        [v4 setValue:v14 forKey:v11];
      }

      v8 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  audioProductsBatteryLevels = [objc_opt_class() audioProductsBatteryLevels];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys2 = [audioProductsBatteryLevels allKeys];
  v17 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(allKeys2);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];

        if (!v22)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [v4 setValue:dictionary forKey:v21];
        }

        v24 = [v4 objectForKeyedSubscript:v21];
        v25 = [audioProductsBatteryLevels objectForKeyedSubscript:v21];
        [v24 addEntriesFromDictionary:v25];
      }

      v18 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  [(_DKBluetoothMonitor *)self setBatteryLevels:v4];
}

- (void)start
{
  v3 = MEMORY[0x277CF3248];
  queue = [(_DKMonitor *)self queue];
  [v3 setSharedInstanceQueue:queue];

  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
  queue2 = [(_DKMonitor *)self queue];
  [v6 setUnderlyingQueue:queue2];

  if (!self->_batteryLevelPollingQueue)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.duetknowledge.bluetoothBatteryPollingQueue", v8);
    batteryLevelPollingQueue = self->_batteryLevelPollingQueue;
    self->_batteryLevelPollingQueue = v9;
  }

  if (!self->_batteryLevelPollingTimer)
  {
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_batteryLevelPollingQueue);
    batteryLevelPollingTimer = self->_batteryLevelPollingTimer;
    self->_batteryLevelPollingTimer = v11;

    v13 = self->_batteryLevelPollingTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28___DKBluetoothMonitor_start__block_invoke;
    handler[3] = &unk_27856F060;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_source_set_timer(self->_batteryLevelPollingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(self->_batteryLevelPollingTimer);
  }

  batteryLevels = [(_DKBluetoothMonitor *)self batteryLevels];

  if (!batteryLevels)
  {
    [(_DKBluetoothMonitor *)self setBatteryLevels:MEMORY[0x277CBEC10]];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = *MEMORY[0x277CF3190];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __28___DKBluetoothMonitor_start__block_invoke_2;
  v26[3] = &unk_27856F718;
  v26[4] = self;
  v17 = [defaultCenter addObserverForName:v16 object:0 queue:v6 usingBlock:v26];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = *MEMORY[0x277CF3150];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __28___DKBluetoothMonitor_start__block_invoke_4;
  v25[3] = &unk_27856F718;
  v25[4] = self;
  v20 = [defaultCenter2 addObserverForName:v19 object:0 queue:v6 usingBlock:v25];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v22 = *MEMORY[0x277CF31A0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __28___DKBluetoothMonitor_start__block_invoke_5;
  v24[3] = &unk_27856F718;
  v24[4] = self;
  v23 = [defaultCenter3 addObserverForName:v22 object:0 queue:v6 usingBlock:v24];

  self->_enabled = 1;
}

- (void)deactivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

+ (id)contextValueForBluetoothConnectionStatus:(BOOL)status name:(id)name address:(id)address deviceType:(int)type isAppleAudioDevice:(BOOL)device isUserWearing:(BOOL)wearing productID:(unsigned int)d
{
  wearingCopy = wearing;
  deviceCopy = device;
  v10 = *&type;
  statusCopy = status;
  nameCopy = name;
  addressCopy = address;
  v15 = MEMORY[0x277CBEB38];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:statusCopy];
  bluetoothConnectionStatusKey = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
  v18 = [v15 dictionaryWithObject:v16 forKey:bluetoothConnectionStatusKey];

  v19 = nameCopy;
  if (nameCopy)
  {
    bluetoothNameKey = [MEMORY[0x277CFE338] bluetoothNameKey];
    [v18 setObject:nameCopy forKey:bluetoothNameKey];
  }

  if (addressCopy)
  {
    bluetoothAddressKey = [MEMORY[0x277CFE338] bluetoothAddressKey];
    [v18 setObject:addressCopy forKey:bluetoothAddressKey];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  bluetoothDeviceTypeKey = [MEMORY[0x277CFE338] bluetoothDeviceTypeKey];
  [v18 setObject:v22 forKey:bluetoothDeviceTypeKey];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:deviceCopy];
  bluetoothIsAppleAudioDeviceKey = [MEMORY[0x277CFE338] bluetoothIsAppleAudioDeviceKey];
  [v18 setObject:v24 forKey:bluetoothIsAppleAudioDeviceKey];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:wearingCopy];
  bluetoothIsUserWearingKey = [MEMORY[0x277CFE338] bluetoothIsUserWearingKey];
  [v18 setObject:v26 forKeyedSubscript:bluetoothIsUserWearingKey];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:d];
  bluetoothProductIDKey = [MEMORY[0x277CFE338] bluetoothProductIDKey];
  [v18 setObject:v28 forKey:bluetoothProductIDKey];

  return v18;
}

+ (id)log
{
  if (log_onceToken_2 != -1)
  {
    +[_DKBluetoothMonitor log];
  }

  v3 = log_log_2;

  return v3;
}

- (void)saveState
{
  v17[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__6;
  v11[4] = __Block_byref_object_dispose__6;
  activeConnections = self->_activeConnections;
  v16[0] = @"_DKBluetoothMonitor-activeConnections";
  v16[1] = @"_DKBluetoothMonitor-inactiveConnections";
  inactiveConnections = self->_inactiveConnections;
  v17[0] = activeConnections;
  v17[1] = inactiveConnections;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  queue = [(_DKMonitor *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32___DKBluetoothMonitor_saveState__block_invoke;
  v10[3] = &unk_27856F390;
  v10[4] = self;
  v10[5] = v11;
  v6 = v10;
  v7 = queue;
  v8 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_6;
  block[3] = &unk_27856F178;
  v14 = v8;
  v15 = v6;
  v9 = v8;
  dispatch_async(v7, block);

  _Block_object_dispose(v11, 8);
}

- (id)loadState
{
  v3 = +[_DKBluetoothMonitor log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_INFO, "load state called", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  queue = [(_DKMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32___DKBluetoothMonitor_loadState__block_invoke;
  v7[3] = &unk_27856F368;
  v7[4] = self;
  v7[5] = buf;
  dispatch_sync(queue, v7);

  v5 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v5;
}

- (void)receiveNotificationEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v6 = [eventCopy objectForKeyedSubscript:@"Notification"];
    v7 = [v6 isEqual:@"com.apple.bluetooth.pairing"];

    if (v7)
    {
      v8 = [eventCopy objectForKeyedSubscript:@"_State"];
      unsignedLongLongValue = [v8 unsignedLongLongValue];

      v10 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(_DKBluetoothMonitor *)unsignedLongLongValue receiveNotificationEvent:v10];
      }

      v26 = bswap64(unsignedLongLongValue);
      LOWORD(v26) = HIWORD(unsignedLongLongValue);
      if (BTDeviceAddressToString())
      {
        v11 = +[_DKBluetoothMonitor log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(_DKBluetoothMonitor *)&v26 receiveNotificationEvent:v11, v12, v13, v14, v15, v16, v17];
        }
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
        v18 = +[_DKBluetoothMonitor log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = @"pairing";
          if ((v26 & 1) == 0)
          {
            v19 = @"unpairing";
          }

          *buf = 138412546;
          *&buf[4] = v19;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_impl(&dword_22595A000, v18, OS_LOG_TYPE_INFO, "Handling %@ of %@", buf, 0x16u);
        }

        if ((v26 & 1) == 0)
        {
          queue = [(_DKMonitor *)self queue];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __48___DKBluetoothMonitor_receiveNotificationEvent___block_invoke;
          v24[3] = &unk_27856F0B0;
          v24[4] = self;
          v11 = v11;
          v25 = v11;
          v21 = v24;
          v22 = os_transaction_create();
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __cd_dispatch_async_capture_tx_block_invoke_6;
          v29 = &unk_27856F178;
          v30 = v22;
          v31 = v21;
          v23 = v22;
          dispatch_async(queue, buf);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleUnpairingEvent:(id)event
{
  v23[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  queue = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = os_transaction_create();
  historicalDeletingHandler = [(_DKBluetoothMonitor *)self historicalDeletingHandler];

  if (historicalDeletingHandler)
  {
    v8 = MEMORY[0x277CCA920];
    v9 = MEMORY[0x277CFE260];
    bluetoothIsConnectedStream = [MEMORY[0x277CFE298] bluetoothIsConnectedStream];
    name = [bluetoothIsConnectedStream name];
    v12 = [v9 predicateForEventsWithStreamName:name];
    v23[0] = v12;
    v13 = MEMORY[0x277CFE260];
    address = [MEMORY[0x277CFE198] address];
    v15 = [v13 predicateForObjectsWithMetadataKey:address andStringValue:eventCopy];
    v23[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v17 = [v8 andPredicateWithSubpredicates:v16];

    historicalDeletingHandler2 = [(_DKBluetoothMonitor *)self historicalDeletingHandler];
    (historicalDeletingHandler2)[2](historicalDeletingHandler2, v17);
  }

  pruner = [(_DKBluetoothMonitor *)self pruner];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44___DKBluetoothMonitor_handleUnpairingEvent___block_invoke;
  v21[3] = &unk_27856F458;
  v22 = eventCopy;
  v20 = eventCopy;
  [pruner deleteWithPolicy:@"forget-this-device" eventsPassingTest:v21];
}

- (void)receiveNotificationEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134283521;
  v3 = a1;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "com.apple.bluetooth.pairing 0x%{private}llx", &v2, 0xCu);
}

- (void)receiveNotificationEvent:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134283521;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_5(&dword_22595A000, a2, a3, "Failed to format address for com.apple.bluetooth.pairing 0x%{private}llx", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end