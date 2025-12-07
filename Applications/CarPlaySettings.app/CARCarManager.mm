@interface CARCarManager
- (CARCarManager)init;
- (NSString)accountName;
- (id)avatarImageAsNotificationIcon;
- (void)_observeASCs;
- (void)_postInRangeNotificationIfNeeded;
- (void)_postNotification:(id)notification isFallback:(BOOL)fallback;
- (void)_stopObservingASCs;
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)addObserver:(id)observer;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)dealloc;
- (void)openSettingsURL:(id)l;
- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list;
- (void)removeObserver:(id)observer;
@end

@implementation CARCarManager

- (CARCarManager)init
{
  v11.receiver = self;
  v11.super_class = CARCarManager;
  v2 = [(CARCarManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_10001C784(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager init", v10, 2u);
    }

    v5 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARCarManagerObserver];
    observers = v3->_observers;
    v3->_observers = v5;

    v7 = objc_alloc_init(CAFCarManager);
    carManager = v3->_carManager;
    v3->_carManager = v7;

    [(CAFCarManager *)v3->_carManager registerObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(CARCarManager *)self _stopObservingASCs];
  v3.receiver = self;
  v3.super_class = CARCarManager;
  [(CARCarManager *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARCarManager *)self observers];
  [observers addObserver:observerCopy];

  observers2 = [(CARCarManager *)self observers];
  currentCar = [(CARCarManager *)self currentCar];
  [observers2 carManager:self didUpdateCurrentCar:currentCar];

  observers3 = [(CARCarManager *)self observers];
  currentCar2 = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar2 pairedDevices];
  [observers3 carManager:self didUpdatePairedDevices:pairedDevices];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARCarManager *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  carCopy = car;
  v6 = sub_10001C784(carCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager current car updated", v14, 2u);
  }

  [(CARCarManager *)self setStopTrackingInRangeNotification:0];
  v7 = +[NSDate date];
  [(CARCarManager *)self setCheckInRangeDevicesStartDate:v7];

  [(CARCarManager *)self _stopObservingASCs];
  [(CARCarManager *)self setCurrentCar:carCopy];
  currentCar = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar pairedDevices];
  receivedAllValues = [pairedDevices receivedAllValues];

  if (receivedAllValues)
  {
    v11 = +[CARSettingsAppDelegate sharedDelegate];
    signpostManager = [v11 signpostManager];
    [signpostManager emitInstantOnIfNeeded];
  }

  [(CARCarManager *)self _observeASCs];
  observers = [(CARCarManager *)self observers];
  [observers carManager:self didUpdateCurrentCar:carCopy];
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  [(CARCarManager *)self _observeASCs];
  pairedDevices = [accessoriesCopy pairedDevices];

  LODWORD(accessoriesCopy) = [pairedDevices receivedAllValues];
  if (accessoriesCopy)
  {
    v7 = +[CARSettingsAppDelegate sharedDelegate];
    signpostManager = [v7 signpostManager];
    [signpostManager emitInstantOnIfNeeded];
  }
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  v5 = sub_10001C784(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager accessory updated", v16, 2u);
  }

  [(CARCarManager *)self _observeASCs];
  currentCar = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar pairedDevices];

  if (pairedDevices)
  {
    observers = [(CARCarManager *)self observers];
    currentCar2 = [(CARCarManager *)self currentCar];
    pairedDevices2 = [currentCar2 pairedDevices];
    [observers carManager:self didUpdatePairedDevices:pairedDevices2];
  }

  currentCar3 = [(CARCarManager *)self currentCar];
  pairedDevices3 = [currentCar3 pairedDevices];
  receivedAllValues = [pairedDevices3 receivedAllValues];

  if (receivedAllValues)
  {
    v14 = +[CARSettingsAppDelegate sharedDelegate];
    signpostManager = [v14 signpostManager];
    [signpostManager emitInstantOnIfNeeded];
  }
}

- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list
{
  serviceCopy = service;
  v6 = sub_10001C784(serviceCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager paired device list updated", v10, 2u);
  }

  observers = [(CARCarManager *)self observers];
  v8 = [serviceCopy car];

  pairedDevices = [v8 pairedDevices];
  [observers carManager:self didUpdatePairedDevices:pairedDevices];

  [(CARCarManager *)self _postInRangeNotificationIfNeeded];
}

- (void)openSettingsURL:(id)l
{
  if ([l isDevicePickerURL])
  {
    observers = [(CARCarManager *)self observers];
    [observers carManagerRequestedDevicePicker:self];
  }
}

- (void)_observeASCs
{
  currentCar = [(CARCarManager *)self currentCar];
  [currentCar registerObserver:self];

  currentCar2 = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar2 pairedDevices];
  [pairedDevices registerObserver:self];

  currentCar3 = [(CARCarManager *)self currentCar];
  pairedDevices2 = [currentCar3 pairedDevices];
  pairedDevicesInformation = [pairedDevices2 pairedDevicesInformation];
  [pairedDevicesInformation registerObserver:self];
}

- (void)_stopObservingASCs
{
  currentCar = [(CARCarManager *)self currentCar];
  pairedDevices = [currentCar pairedDevices];
  pairedDevicesInformation = [pairedDevices pairedDevicesInformation];
  [pairedDevicesInformation unregisterObserver:self];

  currentCar2 = [(CARCarManager *)self currentCar];
  pairedDevices2 = [currentCar2 pairedDevices];
  [pairedDevices2 unregisterObserver:self];

  currentCar3 = [(CARCarManager *)self currentCar];
  [currentCar3 unregisterObserver:self];
}

- (void)_postInRangeNotificationIfNeeded
{
  stopTrackingInRangeNotification = [(CARCarManager *)self stopTrackingInRangeNotification];
  if (stopTrackingInRangeNotification)
  {
    pairedDevices = sub_10001C784(stopTrackingInRangeNotification);
    if (os_log_type_enabled(pairedDevices, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "[Settings] InRange notification is not tracked anymore";
      v6 = pairedDevices;
      v7 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    }
  }

  else
  {
    v8 = +[NSDate date];
    checkInRangeDevicesStartDate = [(CARCarManager *)self checkInRangeDevicesStartDate];
    [v8 timeIntervalSinceDate:checkInRangeDevicesStartDate];
    v11 = v10;

    if (v11 <= 60.0)
    {
      v12 = +[CARSettingsAppDelegate sharedDelegate];
      carManager = [v12 carManager];
      currentCar = [carManager currentCar];
      pairedDevices = [currentCar pairedDevices];

      if (pairedDevices)
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v36 = pairedDevices;
        pairedDevicesInformation = [pairedDevices pairedDevicesInformation];
        pairedDeviceList = [pairedDevicesInformation pairedDeviceList];

        state = [pairedDeviceList countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (state)
        {
          v19 = state;
          v20 = *v42;
          while (2)
          {
            v21 = 0;
            do
            {
              if (*v42 != v20)
              {
                objc_enumerationMutation(pairedDeviceList);
              }

              v22 = *(*(&v41 + 1) + 8 * v21);
              v23 = sub_10001C784(state);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                name = [v22 name];
                [v22 state];
                v25 = NSStringFromPairedDeviceState();
                *buf = 138412546;
                v47 = *&name;
                v48 = 2114;
                v49 = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Settings] Device: %@=%{public}@", buf, 0x16u);
              }

              state = [v22 state];
              if (state == 1)
              {

                accountName = [(CARCarManager *)self accountName];
                if (accountName)
                {
                  name2 = accountName;
                  [(CARCarManager *)self _postNotification:accountName isFallback:0];
                  pairedDevices = v36;
                }

                else
                {
                  v29 = sub_10001C784(0);
                  pairedDevices = v36;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager Unable to retrieve account name, will use device name.", buf, 2u);
                  }

                  v39 = 0u;
                  v40 = 0u;
                  v37 = 0u;
                  v38 = 0u;
                  pairedDevicesInformation2 = [v36 pairedDevicesInformation];
                  pairedDeviceList2 = [pairedDevicesInformation2 pairedDeviceList];

                  name2 = [pairedDeviceList2 countByEnumeratingWithState:&v37 objects:v45 count:16];
                  if (name2)
                  {
                    v32 = *v38;
                    while (2)
                    {
                      for (i = 0; i != name2; i = (i + 1))
                      {
                        if (*v38 != v32)
                        {
                          objc_enumerationMutation(pairedDeviceList2);
                        }

                        v34 = *(*(&v37 + 1) + 8 * i);
                        if ([v34 state] == 2)
                        {
                          name2 = [v34 name];
                          goto LABEL_38;
                        }
                      }

                      name2 = [pairedDeviceList2 countByEnumeratingWithState:&v37 objects:v45 count:16];
                      if (name2)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_38:
                    pairedDevices = v36;
                  }

                  if ([name2 length])
                  {
                    [(CARCarManager *)self _postNotification:name2 isFallback:1];
                  }

                  else
                  {
                    v35 = sub_10001C784(0);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager empty device name not able to present notification.", buf, 2u);
                    }
                  }
                }

                [(CARCarManager *)self setStopTrackingInRangeNotification:1];
                goto LABEL_45;
              }

              v21 = v21 + 1;
            }

            while (v19 != v21);
            state = [pairedDeviceList countByEnumeratingWithState:&v41 objects:v50 count:16];
            v19 = state;
            if (state)
            {
              continue;
            }

            break;
          }
        }

        name2 = sub_10001C784(v26);
        if (os_log_type_enabled(name2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager no InRange devices available", buf, 2u);
        }

        pairedDevices = v36;
      }

      else
      {
        name2 = sub_10001C784(v15);
        if (os_log_type_enabled(name2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "[Settings] CarManager can't process InRange notification, pairedDevices is nil", buf, 2u);
        }
      }

LABEL_45:
    }

    else
    {
      pairedDevices = sub_10001C784([(CARCarManager *)self setStopTrackingInRangeNotification:1]);
      if (os_log_type_enabled(pairedDevices, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v47 = v11;
        v5 = "[Settings] Stop tracking InRange notification (%{public}f)";
        v6 = pairedDevices;
        v7 = 12;
        goto LABEL_7;
      }
    }
  }
}

- (void)_postNotification:(id)notification isFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  notificationCopy = notification;
  v7 = sub_10001C784(notificationCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Settings] Posting notification", buf, 2u);
  }

  v8 = objc_alloc_init(UNMutableNotificationContent);
  [v8 setCategoryIdentifier:@"CarPlaySettings"];
  if (fallbackCopy)
  {
    avatarImageAsNotificationIcon = sub_10001C80C(@"INRANGE_NOTIFICATION_TITLE_FALLBACK_%@");
    notificationCopy = [NSString localizedStringWithFormat:avatarImageAsNotificationIcon, notificationCopy];
    [v8 setTitle:notificationCopy];
  }

  else
  {
    v11 = sub_10001C80C(@"INRANGE_NOTIFICATION_TITLE_%@");
    notificationCopy2 = [NSString localizedStringWithFormat:v11, notificationCopy];
    [v8 setTitle:notificationCopy2];

    avatarImageAsNotificationIcon = [(CARCarManager *)self avatarImageAsNotificationIcon];
    if (avatarImageAsNotificationIcon)
    {
      [v8 setIcon:avatarImageAsNotificationIcon];
    }
  }

  v13 = sub_10001C80C(@"INRANGE_NOTIFICATION_SUBTITLE");
  [v8 setSubtitle:v13];

  v14 = +[UNNotificationSound defaultSound];
  [v8 setSound:v14];

  v15 = +[NSBundle mainBundle];
  bundleIdentifier = [v15 bundleIdentifier];
  [v8 setDefaultActionBundleIdentifier:bundleIdentifier];

  v17 = [[NSURL alloc] initWithString:@"carplaysettings://?devicePicker"];
  [v8 setDefaultActionURL:v17];

  v18 = +[NSUUID UUID];
  uUIDString = [v18 UUIDString];
  v20 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v8 trigger:0 destinations:8];

  v21 = +[UNUserNotificationCenter currentNotificationCenter];
  [v21 addNotificationRequest:v20 withCompletionHandler:0];
}

- (NSString)accountName
{
  v2 = [objc_allocWithZone(type metadata accessor for CAFUIAccountManager()) init];
  dispatch thunk of CAFUIAccountManager.firstName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)avatarImageAsNotificationIcon
{
  v2 = _sSo13CARCarManagerC15CarPlaySettingsE29avatarImageAsNotificationIconSo014UNNotificationJ0CSgyF_0();

  return v2;
}

@end