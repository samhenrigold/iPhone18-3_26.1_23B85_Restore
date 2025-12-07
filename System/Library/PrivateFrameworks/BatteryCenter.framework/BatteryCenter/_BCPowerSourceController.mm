@interface _BCPowerSourceController
+ (void)initialize;
- (BOOL)_isChargingPaused;
- (BOOL)_isDevicePartOfPair:(id)pair;
- (BOOL)_isLowPowerModeActive;
- (BOOL)_shouldCoalesceDevices:(id)devices minimumPercentCharge:(int64_t *)charge;
- (BOOL)_shouldConsiderDeviceWithPowerSourceDescription:(id)description;
- (NSArray)connectedDevices;
- (_BCPowerSourceController)init;
- (id)_deviceByCoalescingDevice:(id)device;
- (id)_identifierFromPowerSourceDescription:(id)description;
- (id)_nameForCurrentDevice;
- (id)_nameForVendor:(int64_t)vendor accessoryCategory:(unint64_t)category name:(id)name partName:(id)partName isInternal:(BOOL)internal;
- (id)_orderedDevicesFromPowerSourcesBlob:(void *)blob powerSourcesList:(__CFArray *)list;
- (int)_displayChargePercentForCurrentCapacity:(id)capacity andMaxCapacity:(id)maxCapacity updateZeroValue:(BOOL)value;
- (int)_registerForNotification:(const char *)notification token:(int *)token queue:(id)queue handler:(id)handler;
- (int)_registerForPowerSourceChangeNotification:(const char *)notification token:(int *)token queue:(id)queue;
- (int64_t)_lowBatteryLevelForVendor:(int64_t)vendor accessoryCategory:(unint64_t)category transportType:(int64_t)type;
- (int64_t)_powerSourceStateFromPowerSourceStateString:(id)string;
- (int64_t)_transportTypeFromPowerSourceTransportTypeString:(id)string;
- (int64_t)_vendorFromPowerSourceDescriptionVendorIdentifier:(id)identifier transportType:(int64_t)type;
- (unint64_t)_accessoryCategoryFromPowerSourceAccessoryCategory:(id)category partType:(unint64_t)type transportType:(int64_t)transportType vendor:(int64_t)vendor productIdentifier:(int64_t)identifier;
- (unint64_t)_partFromPowerSourcePartIdentifier:(id)identifier;
- (void)_beginPowerSourceObservingIfNecessary;
- (void)_endPowerSourceObserving;
- (void)_handleLowPowerModeChanged:(int)changed;
- (void)_isChargingPaused;
- (void)_notifyObserver:(id)observer block:(id)block queue:(id)queue;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_queryConnectedDevices;
- (void)_updateLowPowerModeState;
- (void)addBatteryDeviceObserver:(id)observer queue:(id)queue;
- (void)connectedDevices;
- (void)dealloc;
- (void)removeBatteryDeviceObserver:(id)observer;
@end

@implementation _BCPowerSourceController

- (void)_beginPowerSourceObservingIfNecessary
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_queue)
  {
    v3 = BCLogPowerSourceController;
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = selfCopy;
      _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Registering for power source change notifications", buf, 0xCu);
    }

    v4 = dispatch_queue_create("com.apple.BCBatteryDeviceController", 0);
    queue = selfCopy->_queue;
    selfCopy->_queue = v4;

    [(_BCPowerSourceController *)selfCopy _registerForPowerSourceChangeNotification:"com.apple.system.powersources.percent" token:&selfCopy->_powerSourceBatteryChangeNotifyToken queue:selfCopy->_queue];
    [(_BCPowerSourceController *)selfCopy _registerForPowerSourceChangeNotification:"com.apple.system.powersources.timeremaining" token:&selfCopy->_powerSourceTimeRemainingNotifyToken queue:selfCopy->_queue];
    [(_BCPowerSourceController *)selfCopy _registerForPowerSourceChangeNotification:"com.apple.system.accpowersources.source" token:&selfCopy->_accPowerSourceNotifyToken queue:selfCopy->_queue];
    [(_BCPowerSourceController *)selfCopy _registerForPowerSourceChangeNotification:"com.apple.system.accpowersources.timeremaining" token:&selfCopy->_accPowerSourceTimeRemainingNotifyToken queue:selfCopy->_queue];
    [(_BCPowerSourceController *)selfCopy _registerForPowerSourceChangeNotification:"com.apple.system.accpowersources.attach" token:&selfCopy->_accAttachNotifyToken queue:selfCopy->_queue];
    [(_BCPowerSourceController *)selfCopy _registerForPowerSourceChangeNotification:"com.apple.system.powersources.chargingiconography" token:&selfCopy->_chargingIconographyStateNotifyToken queue:selfCopy->_queue];
    if (notify_is_valid_token(selfCopy->_lowPowerModeNotifyToken))
    {
      notify_cancel(selfCopy->_lowPowerModeNotifyToken);
    }

    v6 = selfCopy->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65___BCPowerSourceController__beginPowerSourceObservingIfNecessary__block_invoke;
    v7[3] = &unk_278D05CB0;
    v7[4] = selfCopy;
    if (![(_BCPowerSourceController *)selfCopy _registerForNotification:"com.apple.system.lowpowermode" token:&selfCopy->_lowPowerModeNotifyToken queue:v6 handler:v7])
    {
      [(_BCPowerSourceController *)selfCopy _handleLowPowerModeChanged:selfCopy->_lowPowerModeNotifyToken];
    }
  }

  objc_sync_exit(selfCopy);
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    BCRegisterUserNotificationsLogging(v3, v4);
  }
}

- (_BCPowerSourceController)init
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = _BCPowerSourceController;
  v2 = [(_BCPowerSourceController *)&v5 init];
  if (v2)
  {
    v3 = BCLogPowerSourceController;
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) initializing new power source controller", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)_isLowPowerModeActive
{
  lowPowerModeActive = self->_lowPowerModeActive;
  if (!self->_queue && ![(_BCPowerSourceController *)self _registerForNotification:"com.apple.system.lowpowermode" token:&self->_lowPowerModeNotifyToken queue:0 handler:0])
  {
    [(_BCPowerSourceController *)self _updateLowPowerModeState];
    return self->_lowPowerModeActive;
  }

  return lowPowerModeActive;
}

- (void)_updateLowPowerModeState
{
  state64 = 0;
  if (!notify_get_state(self->_lowPowerModeNotifyToken, &state64))
  {
    v3 = state64 != 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_lowPowerModeActive != v3)
    {
      selfCopy->_lowPowerModeActive = v3;
    }

    objc_sync_exit(selfCopy);
  }
}

- (NSArray)connectedDevices
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Fetch connected devices", buf, 0xCu);
  }

  IOPSCopyPowerSourcesByTypePrecise();
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
  {
    [_BCPowerSourceController connectedDevices];
  }

  v4 = MEMORY[0x277CBEBF8];

  return v4;
}

- (id)_nameForCurrentDevice
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)_isChargingPaused
{
  if (IOPSCopyChargeStatus())
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEBUG))
    {
      [_BCPowerSourceController _isChargingPaused];
    }
  }

  else
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEBUG))
    {
      [_BCPowerSourceController _isChargingPaused];
    }

    v3 = [0 objectForKeyedSubscript:@"chargeStatus"];

    if (v3)
    {
      v4 = [0 objectForKeyedSubscript:@"chargeStatus"];
      v2 = [v4 isEqualToString:@"Charging On Hold"];

      return v2;
    }

    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
    {
      [_BCPowerSourceController _isChargingPaused];
    }
  }

  return 0;
}

- (void)dealloc
{
  [(_BCPowerSourceController *)self _endPowerSourceObserving];
  v3.receiver = self;
  v3.super_class = _BCPowerSourceController;
  [(_BCPowerSourceController *)&v3 dealloc];
}

- (void)addBatteryDeviceObserver:(id)observer queue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v20 = observerCopy;
  queueCopy = queue;
  if (!observerCopy)
  {
    [_BCPowerSourceController addBatteryDeviceObserver:a2 queue:self];
  }

  if (!queueCopy)
  {
    [_BCPowerSourceController addBatteryDeviceObserver:a2 queue:self];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  observersToQueues = selfCopy->_observersToQueues;
  if (!observersToQueues)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v12 = selfCopy->_observersToQueues;
    selfCopy->_observersToQueues = weakToStrongObjectsMapTable;

    observersToQueues = selfCopy->_observersToQueues;
  }

  [(NSMapTable *)observersToQueues setObject:queueCopy forKey:observerCopy];
  objc_sync_exit(selfCopy);

  v13 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138544130;
    v22 = v16;
    v23 = 2048;
    v24 = selfCopy;
    v25 = 2112;
    v26 = v18;
    v27 = 2048;
    v28 = &v20;
    _os_log_impl(&dword_241AC0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@)<%p> Added observer: %@<%p>", buf, 0x2Au);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59___BCPowerSourceController_addBatteryDeviceObserver_queue___block_invoke;
  v19[3] = &unk_278D05BF0;
  v19[4] = selfCopy;
  [(_BCPowerSourceController *)selfCopy _notifyObserver:v20 block:v19 queue:queueCopy];
  [(_BCPowerSourceController *)selfCopy _beginPowerSourceObservingIfNecessary];
}

- (void)removeBatteryDeviceObserver:(id)observer
{
  v24 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v15 = observerCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observersToQueues = selfCopy->_observersToQueues;
  if (observersToQueues)
  {
    v7 = observerCopy == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(NSMapTable *)observersToQueues removeObjectForKey:observerCopy];
    if (![(NSMapTable *)selfCopy->_observersToQueues count])
    {
      v8 = selfCopy->_observersToQueues;
      selfCopy->_observersToQueues = 0;

      [(_BCPowerSourceController *)selfCopy _endPowerSourceObserving];
    }
  }

  objc_sync_exit(selfCopy);

  v9 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138544130;
    v17 = v12;
    v18 = 2048;
    v19 = selfCopy;
    v20 = 2112;
    v21 = v14;
    v22 = 2048;
    v23 = &v15;
    _os_log_impl(&dword_241AC0000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@)<%p> Removed observer: %@<%p>", buf, 0x2Au);
  }
}

- (BOOL)_isDevicePartOfPair:(id)pair
{
  pairCopy = pair;
  if (BCCombinedLeftRightBatteryStatus())
  {
    v4 = 0;
  }

  else
  {
    matchIdentifier = [pairCopy matchIdentifier];
    if ([matchIdentifier length])
    {
      v4 = [pairCopy accessoryCategory] != 2 || objc_msgSend(pairCopy, "parts") != 4;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_shouldConsiderDeviceWithPowerSourceDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKey:@"Max Capacity"];
  [v4 floatValue];
  if (BSFloatIsZero())
  {
    v5 = 0;
  }

  else
  {
    v6 = [descriptionCopy objectForKey:@"Power Source State"];
    v7 = [v6 isEqual:@"Off Line"];

    v5 = v7 ^ 1;
  }

  return v5;
}

- (id)_identifierFromPowerSourceDescription:(id)description
{
  descriptionCopy = description;
  v6 = [descriptionCopy objectForKey:@"Group Identifier"];
  if ([v6 length])
  {
    v7 = [descriptionCopy objectForKey:@"Part Identifier"];
    if ([v7 length])
    {
      stringValue = [v6 stringByAppendingFormat:@"-%@", v7];
    }

    else
    {
      stringValue = v6;
    }
  }

  else
  {
    v9 = [descriptionCopy objectForKey:@"Power Source ID"];
    stringValue = [v9 stringValue];

    if ([stringValue length])
    {
      goto LABEL_8;
    }

    [(_BCPowerSourceController *)a2 _identifierFromPowerSourceDescription:descriptionCopy, &v11];
    v7 = v11;
  }

LABEL_8:

  return stringValue;
}

- (int64_t)_transportTypeFromPowerSourceTransportTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqual:@"Internal"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqual:@"Serial"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqual:", @"USB") & 1) != 0 || (objc_msgSend(stringCopy, "isEqual:", @"AID"))
  {
    v4 = 2;
  }

  else if ([stringCopy isEqual:@"Bluetooth"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqual:", @"Bluetooth LE"))
  {
    v4 = 3;
  }

  else if ([stringCopy isEqual:@"Inductive In-Band"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_vendorFromPowerSourceDescriptionVendorIdentifier:(id)identifier transportType:(int64_t)type
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (type < 2)
  {
    v7 = 1;
    goto LABEL_18;
  }

  if (!identifierCopy)
  {
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  integerValue = [identifierCopy integerValue];
  if (type == 3)
  {
    v7 = 1;
    if (integerValue > 1451)
    {
      if (integerValue == 1452)
      {
        goto LABEL_18;
      }

      if (integerValue != 10507)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (integerValue == 76)
      {
        goto LABEL_18;
      }

      if (integerValue != 204)
      {
        goto LABEL_17;
      }
    }

    v7 = 2;
    goto LABEL_18;
  }

  v10 = type == 4 && integerValue == 1452;
  if (type == 2)
  {
    v7 = integerValue == 1452;
  }

  else
  {
    v7 = v10;
  }

LABEL_18:

  return v7;
}

- (unint64_t)_partFromPowerSourcePartIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"Left"])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqual:@"Right"])
  {
    v4 = 2;
  }

  else if ([identifierCopy isEqual:@"Case"])
  {
    v4 = 4;
  }

  else if (BCCombinedLeftRightBatteryStatus() && ([identifierCopy isEqual:@"Combined"] & 1) != 0)
  {
    v4 = 3;
  }

  else if (BCCombinedLeftRightBatteryStatus())
  {
    if ([identifierCopy isEqual:@"Combined"])
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_accessoryCategoryFromPowerSourceAccessoryCategory:(id)category partType:(unint64_t)type transportType:(int64_t)transportType vendor:(int64_t)vendor productIdentifier:(int64_t)identifier
{
  categoryCopy = category;
  if ([categoryCopy isEqual:@"Speaker"])
  {
    v8 = 1;
  }

  else if ([categoryCopy isEqual:@"Headphone"] & 1) != 0 || (objc_msgSend(categoryCopy, "isEqual:", @"Headset") & 1) != 0 || (objc_msgSend(categoryCopy, "isEqual:", @"Audio Battery Case"))
  {
    v8 = 2;
  }

  else if ([categoryCopy isEqual:@"Watch"])
  {
    v8 = 3;
  }

  else if ([categoryCopy isEqual:@"Battery Case"])
  {
    v8 = 4;
  }

  else if ([categoryCopy isEqual:@"Keyboard"])
  {
    v8 = 5;
  }

  else if ([categoryCopy isEqual:@"Trackpad"])
  {
    v8 = 6;
  }

  else if ([categoryCopy isEqual:@"Pencil"])
  {
    v8 = 7;
  }

  else if ([categoryCopy isEqual:@"Game Controller"])
  {
    v8 = 8;
  }

  else if ([categoryCopy isEqual:@"Mouse"])
  {
    v8 = 9;
  }

  else if ([categoryCopy isEqual:@"HearingAid"])
  {
    v8 = 10;
  }

  else
  {
    v8 = [categoryCopy isEqual:@"Speaker"];
  }

  return v8;
}

- (int64_t)_powerSourceStateFromPowerSourceStateString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqual:@"Off Line"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqual:@"AC Power"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqual:@"Battery Power"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nameForVendor:(int64_t)vendor accessoryCategory:(unint64_t)category name:(id)name partName:(id)partName isInternal:(BOOL)internal
{
  internalCopy = internal;
  nameCopy = name;
  partNameCopy = partName;
  v12 = partNameCopy;
  if (internalCopy)
  {
    _nameForCurrentDevice = [(_BCPowerSourceController *)self _nameForCurrentDevice];
  }

  else if ([partNameCopy length])
  {
    _nameForCurrentDevice = v12;
  }

  else
  {
    _nameForCurrentDevice = nameCopy;
  }

  v14 = _nameForCurrentDevice;
  if ([(__CFString *)_nameForCurrentDevice length])
  {
    v15 = v14;
  }

  else
  {
    v15 = &stru_2853B08A0;
  }

  v16 = v15;

  return v15;
}

- (int)_displayChargePercentForCurrentCapacity:(id)capacity andMaxCapacity:(id)maxCapacity updateZeroValue:(BOOL)value
{
  valueCopy = value;
  maxCapacityCopy = maxCapacity;
  [capacity floatValue];
  v9 = v8;
  [maxCapacityCopy floatValue];
  v11 = v10;

  v12 = fmax(fmin((v9 / v11), 1.0), 0.0);
  v13 = fminf(roundf(v12 * 100.0), 100.0);
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (valueCopy)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

- (int64_t)_lowBatteryLevelForVendor:(int64_t)vendor accessoryCategory:(unint64_t)category transportType:(int64_t)type
{
  if (type == 1)
  {
    return [(_BCPowerSourceController *)self _lowBatteryLevelForCurrentDevice:vendor];
  }

  if (vendor == 1 && category - 5 <= 4)
  {
    return qword_241AC6798[category - 5];
  }

  return 20;
}

- (BOOL)_shouldCoalesceDevices:(id)devices minimumPercentCharge:(int64_t *)charge
{
  devicesCopy = devices;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72___BCPowerSourceController__shouldCoalesceDevices_minimumPercentCharge___block_invoke;
    v8[3] = &unk_278D05C18;
    v9 = devicesCopy;
    v10 = &v12;
    v11 = &v16;
    [v9 enumerateObjectsUsingBlock:v8];
    if (charge && (v17[3] & 1) != 0)
    {
      *charge = v13[3];
    }

    _Block_object_dispose(&v12, 8);
  }

  v6 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v6;
}

- (id)_deviceByCoalescingDevice:(id)device
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  lastObject = [deviceCopy lastObject];
  v5 = [lastObject copy];
  if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    firstObject = [deviceCopy firstObject];
    parts = [firstObject parts];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = deviceCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = lastObject;
      v22 = v5;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          identifier = [v15 identifier];
          [array addObject:identifier];

          v12 |= parts != [v15 parts];
          parts |= [v15 parts];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);

      v17 = [array componentsJoinedByString:@"-"];
      v5 = v22;
      [v22 setIdentifier:v17];

      [v22 setParts:parts];
      lastObject = v21;
      if (v12)
      {
        groupName = [v21 groupName];
        [v22 setName:groupName];
      }
    }

    else
    {

      v19 = [array componentsJoinedByString:@"-"];
      [v5 setIdentifier:v19];

      [v5 setParts:parts];
    }
  }

  return v5;
}

- (id)_orderedDevicesFromPowerSourcesBlob:(void *)blob powerSourcesList:(__CFArray *)list
{
  v141 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __81___BCPowerSourceController__orderedDevicesFromPowerSourcesBlob_powerSourcesList___block_invoke;
  v132[3] = &unk_278D05C40;
  v132[4] = self;
  v90 = dictionary;
  v133 = v90;
  v91 = MEMORY[0x245CF6EF0](v132);
  array = [MEMORY[0x277CBEB18] array];
  Count = CFArrayGetCount(list);
  v11 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    v139 = 2048;
    v140 = Count;
    _os_log_impl(&dword_241AC0000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found %lu power sources", buf, 0x16u);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(list, i);
      v14 = IOPSGetPowerSourceDescription(blob, ValueAtIndex);
      [array addObject:v14];
    }
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = array;
  v15 = [obj countByEnumeratingWithState:&v128 objects:v137 count:16];
  selfCopy = self;
  if (v15)
  {
    v16 = v15;
    v17 = *v129;
    v92 = *v129;
    do
    {
      v18 = 0;
      v93 = v16;
      do
      {
        if (*v129 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v128 + 1) + 8 * v18);
        v20 = [v19 mutableCopy];
        v113 = [v19 objectForKey:@"Debug Information"];
        if ([v113 count])
        {
          [v20 removeObjectForKey:@"Debug Information"];
        }

        v21 = BCLogPowerSourceController;
        if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = self;
          v139 = 2114;
          v140 = v20;
          _os_log_impl(&dword_241AC0000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found power source: %{public}@", buf, 0x16u);
        }

        if ([v113 count])
        {
          v22 = BCLogPowerSourceController;
          if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            *&buf[4] = self;
            v139 = 2114;
            v140 = v113;
            _os_log_debug_impl(&dword_241AC0000, v22, OS_LOG_TYPE_DEBUG, "(%{public}@) Power source debug info: %{public}@", buf, 0x16u);
          }
        }

        if ([(_BCPowerSourceController *)self _shouldConsiderDeviceWithPowerSourceDescription:v19])
        {
          v109 = v20;
          v23 = [(_BCPowerSourceController *)self _identifierFromPowerSourceDescription:v19];
          v24 = [v19 objectForKey:@"Product ID"];
          integerValue = [v24 integerValue];

          v26 = v23;
          v108 = [v19 objectForKey:@"Model Number"];
          v27 = [v19 objectForKey:@"Transport Type"];
          v28 = [(_BCPowerSourceController *)self _transportTypeFromPowerSourceTransportTypeString:v27];

          v29 = [v19 objectForKey:@"Vendor ID"];
          v30 = [(_BCPowerSourceController *)self _vendorFromPowerSourceDescriptionVendorIdentifier:v29 transportType:v28];

          v107 = [v19 objectForKey:@"Group Identifier"];
          v31 = [v19 objectForKey:@"Part Identifier"];
          v32 = [(_BCPowerSourceController *)self _partFromPowerSourcePartIdentifier:v31];

          v33 = [v7 objectForKey:v26];
          v106 = [v19 objectForKey:@"Accessory Category"];
          v104 = v28;
          v110 = v30;
          v111 = [_BCPowerSourceController _accessoryCategoryFromPowerSourceAccessoryCategory:"_accessoryCategoryFromPowerSourceAccessoryCategory:partType:transportType:vendor:productIdentifier:" partType:? transportType:? vendor:? productIdentifier:?];
          if (v33)
          {
            if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
            {
              (v91)[2](v91, v33);
            }

LABEL_27:
            v20 = v109;
          }

          else
          {
            if (![v26 length])
            {
              v33 = 0;
              goto LABEL_27;
            }

            v33 = [BCBatteryDevice batteryDeviceWithIdentifier:v26 vendor:v30 productIdentifier:integerValue parts:v32 matchIdentifier:v107];
            [v33 setModelNumber:v108];
            [v33 setAccessoryCategory:v111];
            v20 = v109;
            if ((BCCombinedLeftRightBatteryStatus() & 1) == 0 && ((v91[2])(v91, v33) & 1) == 0)
            {
              [v7 setObject:v33 forKey:v26];
            }
          }

          if (BCCombinedLeftRightBatteryStatus())
          {
            [v7 setObject:v33 forKey:v26];
          }

          if (v33)
          {
            v100 = v26;
            v34 = [v19 objectForKey:@"Power Source State"];
            v101 = [(_BCPowerSourceController *)self _powerSourceStateFromPowerSourceStateString:v34];

            v35 = [v19 objectForKey:@"Type"];
            v36 = [v35 isEqualToString:@"InternalBattery"];
            v99 = v35;
            v37 = [v35 isEqualToString:@"Accessory Source"];
            v38 = [v19 objectForKey:@"Name"];
            v39 = [v19 objectForKey:@"Part Name"];
            v40 = [(_BCPowerSourceController *)self _nameForVendor:v110 accessoryCategory:v111 name:v38 partName:v39 isInternal:v36];

            v105 = v36;
            [v33 setInternal:v36];
            [v33 setPowerSource:v37 ^ 1u];
            [v33 setPowerSourceState:v101];
            [v33 setTransportType:v104];
            v98 = v40;
            [v33 setName:v40];
            v41 = [v19 objectForKey:@"Name"];
            [v33 setGroupName:v41];

            v42 = [v19 objectForKey:@"Accessory Identifier"];
            v43 = objc_opt_class();
            v44 = v42;
            if (v43)
            {
              if (objc_opt_isKindOfClass())
              {
                v45 = v44;
              }

              else
              {
                v45 = 0;
              }
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;

            [v33 setAccessoryIdentifier:v46];
            [v33 setConnected:1];
            self = selfCopy;
            v20 = v109;
            if (v105)
            {
              _isChargingPaused = [(_BCPowerSourceController *)selfCopy _isChargingPaused];
            }

            else
            {
              _isChargingPaused = 0;
            }

            [v33 setPaused:_isChargingPaused];
            v97 = [v19 objectForKey:@"AdapterDetails"];
            v48 = [v97 objectForKey:@"IsWireless"];
            bOOLValue = [v48 BOOLValue];

            [v33 setWirelesslyCharging:bOOLValue];
            v50 = [v19 objectForKey:@"Current Capacity"];
            [v19 objectForKey:@"Max Capacity"];
            v96 = v102 = v50;
            v51 = -[_BCPowerSourceController _displayChargePercentForCurrentCapacity:andMaxCapacity:updateZeroValue:](selfCopy, "_displayChargePercentForCurrentCapacity:andMaxCapacity:updateZeroValue:", v50, v96, [v33 isInternal]);
            v52 = [v19 objectForKey:@"Is Charging"];
            if ([v52 BOOLValue])
            {
              bOOLValue2 = 1;
            }

            else
            {
              v53 = [v19 objectForKey:@"Show Charging UI"];
              bOOLValue2 = [v53 BOOLValue];
            }

            v26 = v100;

            if ([v33 isInternal])
            {
              v54 = MGGetBoolAnswer() ^ 1;
            }

            else
            {
              v54 = 0;
            }

            [v33 setPercentCharge:v51];
            v55 = [v19 objectForKey:@"Low Warn Level"];
            if (v55 && v110 == 1 && (v111 == 4 || v111 == 2))
            {
              *buf = 0;
              if (CFNumberGetValue(v55, kCFNumberIntType, buf))
              {
                integerValue2 = [v102 integerValue];
                v57 = integerValue2 <= *buf;
              }

              else
              {
                v57 = 0;
              }
            }

            else
            {
              v57 = [(_BCPowerSourceController *)selfCopy _lowBatteryLevelForVendor:v110 accessoryCategory:v111 transportType:v104]>= v51;
            }

            [v33 setLowBattery:v57];
            if (v105)
            {
              [v33 setLowPowerModeActive:{-[_BCPowerSourceController _isLowPowerModeActive](selfCopy, "_isLowPowerModeActive")}];
            }

            else
            {
              v58 = [v19 objectForKey:@"LPM Active"];
              [v33 setLowPowerModeActive:{objc_msgSend(v58, "BOOLValue")}];
            }

            [v33 setCharging:bOOLValue2];
            [v33 setApproximatesPercentCharge:v54];
            v59 = BCLogPowerSourceController;
            if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = selfCopy;
              v139 = 2114;
              v140 = v33;
              _os_log_impl(&dword_241AC0000, v59, OS_LOG_TYPE_DEFAULT, "(%{public}@) Found device: %{public}@", buf, 0x16u);
            }
          }

          v17 = v92;
          v16 = v93;
        }

        ++v18;
      }

      while (v16 != v18);
      v60 = [obj countByEnumeratingWithState:&v128 objects:v137 count:16];
      v16 = v60;
    }

    while (v60);
  }

  if ((BCCombinedLeftRightBatteryStatus() & 1) == 0)
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    allValues = [v90 allValues];
    v61 = [allValues countByEnumeratingWithState:&v124 objects:v136 count:16];
    v62 = 0x277CBE000uLL;
    if (v61)
    {
      v63 = v61;
      v114 = *v125;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v125 != v114)
          {
            objc_enumerationMutation(allValues);
          }

          v65 = *(*(&v124 + 1) + 8 * j);
          array2 = [*(v62 + 2840) array];
          if ([v65 count] < 2)
          {
            lastObject = [v65 lastObject];
            [array2 addObject:lastObject];
          }

          else
          {
            v123 = 0;
            if ([(_BCPowerSourceController *)selfCopy _shouldCoalesceDevices:v65 minimumPercentCharge:&v123])
            {
              lastObject2 = [v65 lastObject];
              matchIdentifier = [lastObject2 matchIdentifier];
              lastObject3 = [v7 objectForKey:matchIdentifier];

              if (!lastObject3)
              {
                lastObject3 = [(_BCPowerSourceController *)selfCopy _deviceByCoalescingDevice:v65];
                identifier = [lastObject3 identifier];
                [v7 setObject:lastObject3 forKey:identifier];
              }

              [array2 addObject:lastObject3];
              [lastObject3 setPercentCharge:v123];
              v71 = -[_BCPowerSourceController _lowBatteryLevelForVendor:accessoryCategory:transportType:](selfCopy, "_lowBatteryLevelForVendor:accessoryCategory:transportType:", [lastObject3 vendor], objc_msgSend(lastObject3, "accessoryCategory"), objc_msgSend(lastObject3, "transportType"));
              [lastObject3 setLowBattery:v123 <= v71];
              v72 = BCLogPowerSourceController;
              if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *&buf[4] = selfCopy;
                v139 = 2114;
                v140 = lastObject3;
                _os_log_impl(&dword_241AC0000, v72, OS_LOG_TYPE_DEFAULT, "(%{public}@) Coalesced device: %{public}@", buf, 0x16u);
              }

              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              identifier3 = v65;
              v74 = [identifier3 countByEnumeratingWithState:&v119 objects:v135 count:16];
              if (v74)
              {
                v75 = v74;
                v76 = *v120;
                do
                {
                  for (k = 0; k != v75; ++k)
                  {
                    if (*v120 != v76)
                    {
                      objc_enumerationMutation(identifier3);
                    }

                    identifier2 = [*(*(&v119 + 1) + 8 * k) identifier];
                    [v7 removeObjectForKey:identifier2];
                  }

                  v75 = [identifier3 countByEnumeratingWithState:&v119 objects:v135 count:16];
                }

                while (v75);
                v62 = 0x277CBE000;
              }
            }

            else
            {
              [array2 addObjectsFromArray:v65];
              lastObject3 = [v65 lastObject];
              identifier3 = [lastObject3 identifier];
              [v7 removeObjectForKey:identifier3];
            }
          }

          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v80 = array2;
          v81 = [v80 countByEnumeratingWithState:&v115 objects:v134 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v116;
            do
            {
              for (m = 0; m != v82; ++m)
              {
                if (*v116 != v83)
                {
                  objc_enumerationMutation(v80);
                }

                v85 = *(*(&v115 + 1) + 8 * m);
                identifier4 = [v85 identifier];
                [v7 setObject:v85 forKey:identifier4];
              }

              v82 = [v80 countByEnumeratingWithState:&v115 objects:v134 count:16];
            }

            while (v82);
          }
        }

        v63 = [allValues countByEnumeratingWithState:&v124 objects:v136 count:16];
      }

      while (v63);
    }
  }

  allValues2 = [v7 allValues];
  v88 = [allValues2 sortedArrayUsingComparator:&__block_literal_global];

  return v88;
}

- (int)_registerForNotification:(const char *)notification token:(int *)token queue:(id)queue handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (*token)
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
    {
      [_BCPowerSourceController _registerForNotification:token:queue:handler:];
    }

LABEL_4:
    v13 = 0;
    goto LABEL_12;
  }

  if (queueCopy && handlerCopy)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73___BCPowerSourceController__registerForNotification_token_queue_handler___block_invoke;
    handler[3] = &unk_278D05C88;
    handler[4] = self;
    notificationCopy = notification;
    v17 = handlerCopy;
    v13 = notify_register_dispatch(notification, token, queueCopy, handler);
  }

  else
  {
    v13 = notify_register_check(notification, token);
  }

  v14 = BCLogPowerSourceController;
  if (!v13)
  {
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v21 = 2082;
      notificationCopy2 = notification;
      _os_log_impl(&dword_241AC0000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully registered for %{public}s notifications", buf, 0x16u);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_ERROR))
  {
    [_BCPowerSourceController _registerForNotification:token:queue:handler:];
  }

LABEL_12:

  return v13;
}

- (int)_registerForPowerSourceChangeNotification:(const char *)notification token:(int *)token queue:(id)queue
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82___BCPowerSourceController__registerForPowerSourceChangeNotification_token_queue___block_invoke;
  v6[3] = &unk_278D05CB0;
  v6[4] = self;
  return [(_BCPowerSourceController *)self _registerForNotification:notification token:token queue:queue handler:v6];
}

- (void)_endPowerSourceObserving
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_queue)
  {
    v3 = BCLogPowerSourceController;
    v4 = os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v12 = 138543362;
      v13 = selfCopy;
      _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Unregistering for power source change notifications", &v12, 0xCu);
    }

    v5 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v4, &selfCopy->_powerSourceBatteryChangeNotifyToken);
    v6 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v5, &selfCopy->_powerSourceTimeRemainingNotifyToken);
    v7 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v6, &selfCopy->_accPowerSourceNotifyToken);
    v8 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v7, &selfCopy->_accPowerSourceTimeRemainingNotifyToken);
    v9 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v8, &selfCopy->_accAttachNotifyToken);
    v10 = __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v9, &selfCopy->_chargingIconographyStateNotifyToken);
    __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(v10, &selfCopy->_lowPowerModeNotifyToken);
    queue = selfCopy->_queue;
    selfCopy->_queue = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)_queryConnectedDevices
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_241AC0000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) Query for connected devices", buf, 0xCu);
  }

  connectedDevices = [(_BCPowerSourceController *)self connectedDevices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50___BCPowerSourceController__queryConnectedDevices__block_invoke;
  v6[3] = &unk_278D05BF0;
  v7 = connectedDevices;
  v5 = connectedDevices;
  [(_BCPowerSourceController *)self _notifyObserversWithBlock:v6];
}

- (void)_notifyObserver:(id)observer block:(id)block queue:(id)queue
{
  observerCopy = observer;
  blockCopy = block;
  v10 = blockCopy;
  if (observerCopy && blockCopy && queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56___BCPowerSourceController__notifyObserver_block_queue___block_invoke;
    block[3] = &unk_278D05CD8;
    block[4] = self;
    v12 = observerCopy;
    v13 = v10;
    dispatch_async(queue, block);
  }
}

- (void)_notifyObserversWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_observersToQueues copy];
    objc_sync_exit(selfCopy);

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v7 objectForKey:{v11, v13}];
          [(_BCPowerSourceController *)selfCopy _notifyObserver:v11 block:blockCopy queue:v12];
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_handleLowPowerModeChanged:(int)changed
{
  v12 = *MEMORY[0x277D85DE8];
  _isLowPowerModeActive = [(_BCPowerSourceController *)self _isLowPowerModeActive];
  [(_BCPowerSourceController *)self _updateLowPowerModeState];
  _isLowPowerModeActive2 = [(_BCPowerSourceController *)self _isLowPowerModeActive];
  if (_isLowPowerModeActive != _isLowPowerModeActive2)
  {
    v6 = _isLowPowerModeActive2;
    v7 = BCLogPowerSourceController;
    if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      selfCopy = self;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_241AC0000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Low Power Mode changed: %d", &v8, 0x12u);
    }

    [(_BCPowerSourceController *)self _queryConnectedDevices];
  }
}

- (void)connectedDevices
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_241AC0000, v0, OS_LOG_TYPE_ERROR, "(%{public}@) Failed to obtain power sources list", v1, 0xCu);
}

- (void)addBatteryDeviceObserver:(uint64_t)a1 queue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BCPowerSourceController.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)addBatteryDeviceObserver:(uint64_t)a1 queue:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BCPowerSourceController.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

- (uint64_t)_identifierFromPowerSourceDescription:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  *a4 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"BCPowerSourceController.m" lineNumber:204 description:{@"Missing kIOPSPowerSourceIDKey in %@", a3}];
}

- (void)_isChargingPaused
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 2112;
  v3 = @"chargeStatus";
  _os_log_error_impl(&dword_241AC0000, v0, OS_LOG_TYPE_ERROR, "(%{public}@) No value for %@ in chargingStatusDictionary", v1, 0x16u);
}

- (void)_registerForNotification:token:queue:handler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

- (void)_registerForNotification:token:queue:handler:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

@end