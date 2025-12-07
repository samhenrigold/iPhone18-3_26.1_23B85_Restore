@interface CBStackPowerSourceMonitorBTStack
- (BOOL)_setPowerSourceGroupID:(id *)d;
- (BOOL)powerSourceOverrideWithMock:(id)mock error:(id *)error;
- (CBStackPowerSourceMonitorBTStack)init;
- (id)_classicDeviceUUID:(void *)d;
- (id)_findPowerSourceWithIdentifiers:(id)identifiers and:(id)and;
- (id)_identifierForAccessoryID:(id)d;
- (id)_identifierForClassicDevice:(void *)device;
- (void)_activate;
- (void)_handlePowerSourceFound:(id)found;
- (void)_handlePowerSourceFoundWithDetails:(id)details;
- (void)_handlePowerSourceLost:(id)lost;
- (void)_handlePowerSourceUpdateWithDetails:(id)details details:(id)a4;
- (void)_handleStackDeviceInfoChanged:(void *)changed changeType:(int)type;
- (void)_handleStackDisconnectClassic:(void *)classic;
- (void)_handleStackDisconnectLowEnergy:(id)energy;
- (void)_handleStackLEPairingComplete:(id)complete;
- (void)_handleStackPairingComplete:(void *)complete;
- (void)_handleStackSourceUpdate:(id)update;
- (void)_handleStackUSBStateChanged:(void *)changed;
- (void)_invalidate;
- (void)_invalidated;
- (void)_notifyPowerSourceFound:(id)found;
- (void)_notifyPowerSourceLost:(id)lost;
- (void)_publishIOKitPowerSource:(id)source;
- (void)_removeFromClassicMap:(id)map;
- (void)_removePowerSourceFlags:(id)flags;
- (void)_reportMetricIfNeeded:(id)needed;
- (void)_updatePowerSources;
- (void)activate;
@end

@implementation CBStackPowerSourceMonitorBTStack

- (void)_updatePowerSources
{
  [(NSMutableDictionary *)self->_powerSources enumerateKeysAndObjectsUsingBlock:&stru_100AE10D8];
  v3 = IOPSCopyPowerSourcesByType();
  blob = v3;
  if (v3)
  {
    v4 = IOPSCopyPowerSourcesList(v3);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = 0;
        *&v6 = 134217984;
        v35 = v6;
        do
        {
          v8 = v5;
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
          v10 = IOPSGetPowerSourceDescription(blob, ValueAtIndex);
          if (v10)
          {
            Double = CFDictionaryGetDouble();
            if (v12 <= 0.0)
            {
              v21 = sub_100058928(Double);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v44 = v10;
                _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "### No current capacity for power source %@", buf, 0xCu);
              }
            }

            else
            {
              v13 = NSDictionaryGetNSNumber();
              if (v13)
              {
                CFStringGetTypeID();
                v14 = CFDictionaryGetTypedValue();
                CFStringGetTypeID();
                v15 = CFDictionaryGetTypedValue();
                v16 = v15;
                if (v14 | v15)
                {
                  v17 = [[NSUUID alloc] initWithUUIDString:v14];
                  v18 = v17 == 0;

                  if (v18)
                  {
                    v22 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForAccessoryID:v14];
                    v23 = v22;
                    if (v22)
                    {
                      v19 = v22;

                      v20 = [v10 mutableCopy];
                      [v20 setObject:v19 forKeyedSubscript:@"Accessory Identifier"];
                    }

                    else
                    {
                      v19 = v14;
                      v20 = v10;
                    }
                  }

                  else
                  {
                    v19 = v14;
                    v20 = v10;
                  }

                  v24 = [(CBStackPowerSourceMonitorBTStack *)self _findPowerSourceWithIdentifiers:v19 and:v16, v35];
                  if (v24)
                  {
                    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceUpdateWithDetails:v24 details:v20];
                  }

                  else
                  {
                    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFoundWithDetails:v20];
                  }

                  v10 = v20;
                }

                else
                {
                  v19 = sub_100058928(v15);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v44 = v10;
                    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "### No accessoryID or groupID for power source %@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v16 = sub_100058928(0);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v44 = v10;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "### No sourceID for power source %@", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v10 = sub_100058928(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v44 = v7;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "### IOPSGetPowerSourceDescription %ld failed", buf, 0xCu);
            }
          }

          ++v7;
          v5 = v8;
        }

        while (Count != v7);
      }

      CFRelease(v5);
      goto LABEL_38;
    }
  }

  else
  {
    v25 = sub_100058928(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100809E28(v25);
    }
  }

  v26 = sub_100058928(v4);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100809E6C(v26);
  }

LABEL_38:
  if (blob)
  {
    CFRelease(blob);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allKeys = [(NSMutableDictionary *)self->_powerSources allKeys];
  v28 = [allKeys countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v28)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(allKeys);
        }

        v31 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:*(*(&v38 + 1) + 8 * i)];
        v32 = v31;
        if (v31)
        {
          [v31 setInternalFlags:{objc_msgSend(v31, "internalFlags") & 0xFFFFFFFD}];
          if (([v32 present] & 1) == 0)
          {
            [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v32];
          }
        }
      }

      v28 = [allKeys countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v28);
  }

  v33 = [(NSMutableDictionary *)self->_powerSources count];
  if (v33)
  {
    v34 = sub_100058928(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Updated power sources", buf, 2u);
    }

    [(NSMutableDictionary *)self->_powerSources enumerateKeysAndObjectsUsingBlock:&stru_100AE10F8];
  }
}

- (CBStackPowerSourceMonitorBTStack)init
{
  v7.receiver = self;
  v7.super_class = CBStackPowerSourceMonitorBTStack;
  v2 = [(CBStackPowerSourceMonitorBTStack *)&v7 init];
  if (v2)
  {
    v3 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v2->_privateDataLoggingEnabled;
    v2->_privateDataLoggingEnabled = v3;

    v2->_profileChangedToken = -1;
    *&v2->_psNotifyTokenAccessoryAttach = -1;
    *&v2->_psNotifyTokenAccessoryTimeRemaining = -1;
    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    [(CBStackPowerSourceMonitorBTStack *)self _activate];
  }
}

- (void)_activate
{
  v3 = sub_100058928(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activate", buf, 2u);
  }

  v4 = sub_10000E92C();
  self->_logPrivateData = (*(*v4 + 160))(v4);
  if (!self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B55308);
    if (!qword_100B55310)
    {
      operator new();
    }

    sub_1001288E8(qword_100B55310, self);
    os_unfair_lock_unlock(&unk_100B55308);
    self->_addedMonitor = 1;
  }

  if (self->_psNotifyTokenAccessoryAttach == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100128AD4;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.attach", &self->_psNotifyTokenAccessoryAttach, dispatchQueue, handler);
  }

  if (self->_psNotifyTokenAccessoryPowerSource == -1)
  {
    v6 = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100128B48;
    v13[3] = &unk_100ADF848;
    v13[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.source", &self->_psNotifyTokenAccessoryPowerSource, v6, v13);
  }

  if (self->_psNotifyTokenAccessoryTimeRemaining == -1)
  {
    v7 = self->_dispatchQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100128BBC;
    v12[3] = &unk_100ADF848;
    v12[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_psNotifyTokenAccessoryTimeRemaining, v7, v12);
  }

  if (self->_psNotifyTokenAnyPowerSource == -1)
  {
    v8 = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100128C30;
    v11[3] = &unk_100ADF848;
    v11[4] = self;
    notify_register_dispatch("com.apple.system.powersources", &self->_psNotifyTokenAnyPowerSource, v8, v11);
  }

  if (self->_profileChangedToken == -1)
  {
    v9 = self->_dispatchQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100128CA4;
    v10[3] = &unk_100ADF848;
    v10[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedToken, v9, v10);
  }

  [(CBStackPowerSourceMonitorBTStack *)self _updatePowerSources];
}

- (void)_invalidate
{
  v3 = sub_100058928(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", v9, 2u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (self->_addedMonitor)
    {
      os_unfair_lock_lock(&unk_100B55308);
      if (qword_100B55310)
      {
        sub_100128EAC(qword_100B55310);
      }

      os_unfair_lock_unlock(&unk_100B55308);
      self->_addedMonitor = 0;
    }

    psNotifyTokenAccessoryAttach = self->_psNotifyTokenAccessoryAttach;
    if (psNotifyTokenAccessoryAttach != -1)
    {
      notify_cancel(psNotifyTokenAccessoryAttach);
      self->_psNotifyTokenAccessoryAttach = -1;
    }

    psNotifyTokenAccessoryPowerSource = self->_psNotifyTokenAccessoryPowerSource;
    if (psNotifyTokenAccessoryPowerSource != -1)
    {
      notify_cancel(psNotifyTokenAccessoryPowerSource);
      self->_psNotifyTokenAccessoryPowerSource = -1;
    }

    psNotifyTokenAccessoryTimeRemaining = self->_psNotifyTokenAccessoryTimeRemaining;
    if (psNotifyTokenAccessoryTimeRemaining != -1)
    {
      notify_cancel(psNotifyTokenAccessoryTimeRemaining);
      self->_psNotifyTokenAccessoryTimeRemaining = -1;
    }

    psNotifyTokenAnyPowerSource = self->_psNotifyTokenAnyPowerSource;
    if (psNotifyTokenAnyPowerSource != -1)
    {
      notify_cancel(psNotifyTokenAnyPowerSource);
      self->_psNotifyTokenAnyPowerSource = -1;
    }

    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    [(CBStackPowerSourceMonitorBTStack *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    self->_invalidateDone = 1;
    v6 = sub_100058928(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalidated", v7, 2u);
    }
  }
}

- (void)_handlePowerSourceFoundWithDetails:(id)details
{
  detailsCopy = details;
  if (!self->_powerSources)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    powerSources = self->_powerSources;
    self->_powerSources = v5;
  }

  v7 = [[CBPowerSource alloc] initWithPowerSourceDetails:detailsCopy internalFlags:6];
  v8 = sub_100058928(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Power source found %@", &v10, 0xCu);
  }

  groupID = [v7 groupID];
  if (groupID || ([v7 accessoryID], (groupID = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [(NSMutableDictionary *)self->_powerSources setObject:v7 forKeyedSubscript:groupID];
    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFound:v7];
  }

  else
  {
    sub_100809EB0(v7, detailsCopy);
    groupID = 0;
  }
}

- (void)_handlePowerSourceUpdateWithDetails:(id)details details:(id)a4
{
  detailsCopy = details;
  v7 = a4;
  if (([detailsCopy internalFlags] & 8) != 0)
  {
    v9 = sub_100058928([detailsCopy setPresent:1]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = detailsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "# Skipping IOKit update %@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = [[CBPowerSource alloc] initWithPowerSourceDetails:v7 internalFlags:2];
    [detailsCopy updateWithCBPowerSource:v8];
    [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFound:detailsCopy];
  }
}

- (void)_handlePowerSourceFound:(id)found
{
  foundCopy = found;
  groupID = [foundCopy groupID];
  v6 = groupID;
  if (groupID)
  {
    accessoryID = groupID;
  }

  else
  {
    accessoryID = [foundCopy accessoryID];
  }

  v8 = accessoryID;

  v9 = foundCopy;
  if ([foundCopy isAggregateComponent])
  {
    v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v8];
  }

  v10 = [NSUUID alloc];
  accessoryID2 = [v9 accessoryID];
  v12 = [v10 initWithUUIDString:accessoryID2];

  if (v12)
  {
    if (([v9 changeFlags] & 8) != 0 && (v13 = objc_msgSend(v9, "hasAllComponents"), !v13))
    {
      v14 = sub_100058928(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Delay notify for %@", buf, 0xCu);
      }

      v15 = dispatch_time(0, 3000000000);
      dispatchQueue = self->_dispatchQueue;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001296D4;
      v17[3] = &unk_100AE0B60;
      v17[4] = self;
      v17[5] = v8;
      dispatch_after(v15, dispatchQueue, v17);
    }

    else
    {
      [(CBStackPowerSourceMonitorBTStack *)self _notifyPowerSourceFound:v9];
    }
  }

  else
  {
    sub_100809F74(v9);
  }
}

- (void)_handlePowerSourceLost:(id)lost
{
  lostCopy = lost;
  groupID = [lostCopy groupID];
  v6 = groupID;
  if (groupID || ([lostCopy accessoryID], groupID = objc_claimAutoreleasedReturnValue(), (v6 = groupID) != 0))
  {
    v7 = sub_100058928(groupID);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = lostCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Power source lost %@", &v11, 0xCu);
    }

    if ([lostCopy isAggregateComponent])
    {
      v8 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v6];
      v9 = v8;
      v10 = lostCopy;
      if (v8)
      {
        v10 = v8;

        [v10 invalidateComponentWithPartID:{objc_msgSend(lostCopy, "partID")}];
      }
    }

    else
    {
      [lostCopy removeBatteryInfo];
      [lostCopy invalidate];

      v10 = lostCopy;
      lostCopy = 0;
      [(NSMutableDictionary *)self->_powerSources setObject:0 forKeyedSubscript:v6];
    }

    [(CBStackPowerSourceMonitorBTStack *)self _notifyPowerSourceLost:v10];
  }

  else
  {
    v10 = lostCopy;
  }
}

- (void)_handleStackDeviceInfoChanged:(void *)changed changeType:(int)type
{
  v7 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:?];
  if (v7)
  {
    *__p = 0u;
    v27 = 0u;
    sub_1000DEB5C(changed, __p);
    if ((type - 28) >= 3)
    {
      v8 = 5;
    }

    else
    {
      v8 = type - 26;
    }

    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v9 = &v27 + 12;
        v10 = DWORD2(v27);
      }

      else
      {
        v9 = __p + 4;
        v10 = __p[0];
      }
    }

    else if (v8 == 2)
    {
      v9 = &__p[1] + 4;
      v10 = __p[1];
    }

    else
    {
      v9 = &v27 + 4;
      v10 = v27;
    }

    v11 = *v9;
    if (v10 >= 100)
    {
      v10 = 100;
    }

    if (v10 & ~(v10 >> 31) | (v11 << 8))
    {
      v25 = 0;
      v12 = [[CBPowerSource alloc] initWithBTStackDevice:changed identifier:v7 error:&v25];
      v13 = v25;
      v14 = v13;
      if (v12)
      {
        if (![v12 isAppleDevice] || (v15 = objc_msgSend(v12, "productID"), v15))
        {
          v24 = v12;
          v16 = [(CBStackPowerSourceMonitorBTStack *)self _setPowerSourceGroupID:&v24];
          v17 = v24;

          if (v16)
          {
            v19 = sub_100058928(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v29 = v17;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "StackDeviceInfoChanged %@", buf, 0xCu);
            }

            [(CBStackPowerSourceMonitorBTStack *)self _handleStackSourceUpdate:v17];
          }

          goto LABEL_22;
        }

        v22 = sub_100058928(v15);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080A000();
        }
      }

      else
      {
        v22 = sub_100058928(v13);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = CUPrintNSError();
          sub_10080A068(v23, buf, v22);
        }

        v12 = 0;
      }

      v17 = v12;
LABEL_22:
    }
  }

  else
  {
    v20 = sub_100058928(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(changed, __p);
      v21 = (SBYTE7(v27) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "StackDeviceInfoChanged found no identifier for device: %s", buf, 0xCu);
      if (SBYTE7(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (void)_handleStackDisconnectClassic:(void *)classic
{
  v5 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:?];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    if (![v6 isAppleDevice])
    {
      goto LABEL_7;
    }

    productID = [v7 productID];
    if ((productID - 8194) <= 0x2D && ((1 << (productID - 2)) & 0x207C7BB7FF9BLL) != 0)
    {
      goto LABEL_13;
    }

    if (!productID)
    {
      v14 = sub_100058928(productID);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080A0C0();
      }
    }

    else
    {
LABEL_7:
      transportType = [v7 transportType];
      if (transportType != @"USB")
      {
        v10 = transportType;
        if (!transportType || (v11 = [(__CFString *)transportType isEqual:@"USB"], v10, v10, (v11 & 1) == 0))
        {
          v12 = sub_100058928([v7 setChangeFlags:16]);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 138412290;
            *&__p[4] = v7;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "StackDisconnectClassic %@", __p, 0xCu);
          }

          [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v7];
        }
      }
    }
  }

  else
  {
    v7 = sub_100058928(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(classic, __p);
      v13 = v16 >= 0 ? __p : *__p;
      *buf = 136315138;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "StackDisconnectClassic found no identifier for device: %s", buf, 0xCu);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_13:
}

- (void)_handleStackDisconnectLowEnergy:(id)energy
{
  energyCopy = energy;
  uUIDString = [energyCopy UUIDString];
  v6 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:uUIDString];
  v7 = v6;
  if (v6)
  {
    if (![v6 isAppleDevice])
    {
      goto LABEL_6;
    }

    productID = [v7 productID];
    if ((productID - 8194) <= 0x2D && ((1 << (productID - 2)) & 0x207C7BB7FF9BLL) != 0)
    {
      goto LABEL_9;
    }

    if (!productID)
    {
      v10 = sub_100058928(productID);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080A128();
      }
    }

    else
    {
LABEL_6:
      v9 = sub_100058928([v7 setChangeFlags:16]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "StackDisconnectLE %@", &v11, 0xCu);
      }

      [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v7];
    }
  }

LABEL_9:
}

- (void)_handleStackPairingComplete:(void *)complete
{
  if (!sub_100539FE8(complete))
  {
    v5 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:complete];
    if (v5)
    {
      reportMetrics = self->_reportMetrics;
      if (!reportMetrics)
      {
        v7 = objc_alloc_init(NSMutableSet);
        v8 = self->_reportMetrics;
        self->_reportMetrics = v7;

        reportMetrics = self->_reportMetrics;
      }

      if (([(NSMutableSet *)reportMetrics containsObject:v5]& 1) == 0)
      {
        [(NSMutableSet *)self->_reportMetrics addObject:v5];
      }

      v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v5];
      v10 = v9;
      if (v9)
      {
        v11 = sub_100058928(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "StackPairingComplete with %@", &v12, 0xCu);
        }

        [(CBStackPowerSourceMonitorBTStack *)self _reportMetricIfNeeded:v10];
      }
    }

    else
    {
      v10 = sub_100058928(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(complete, &v12);
        sub_10080A190();
      }
    }
  }
}

- (void)_handleStackLEPairingComplete:(id)complete
{
  completeCopy = complete;
  uUIDString = [completeCopy UUIDString];
  if (uUIDString)
  {
    reportMetrics = self->_reportMetrics;
    if (!reportMetrics)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = self->_reportMetrics;
      self->_reportMetrics = v7;

      reportMetrics = self->_reportMetrics;
    }

    if (([(NSMutableSet *)reportMetrics containsObject:uUIDString]& 1) == 0)
    {
      [(NSMutableSet *)self->_reportMetrics addObject:uUIDString];
    }

    v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:uUIDString];
    v10 = v9;
    if (v9)
    {
      v11 = sub_100058928(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "StackLEPairingComplete with %@", &v12, 0xCu);
      }

      [(CBStackPowerSourceMonitorBTStack *)self _reportMetricIfNeeded:v10];
    }
  }
}

- (void)_handleStackSourceUpdate:(id)update
{
  updateCopy = update;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100042214;
  v41 = sub_10004259C;
  v42 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10012A960;
  v36[3] = &unk_100AE1120;
  v36[4] = &v37;
  v5 = objc_retainBlock(v36);
  accessoryID = [updateCopy accessoryID];
  groupID = [updateCopy groupID];
  if (!accessoryID)
  {
    v26 = CBErrorF(4294960588, "no accessoryID %@", updateCopy);
    v10 = v38[5];
    v38[5] = v26;
    goto LABEL_37;
  }

  if (!self->_powerSources)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    powerSources = self->_powerSources;
    self->_powerSources = v8;
  }

  v10 = updateCopy;
  if (groupID)
  {
    v11 = groupID;
  }

  else
  {
    v11 = accessoryID;
  }

  v30 = v11;
  v12 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:?];
  v13 = v12;
  if (v12)
  {
    if (([v12 internalFlags] & 8) != 0)
    {
      v24 = sub_100058928([v13 setPresent:1]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "# Skipping BTStack update %@", &buf, 0xCu);
      }

      goto LABEL_36;
    }

    if ([v13 partID] == 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28 = v5;
      v29 = updateCopy;
      components = [v13 components];
      allValues = [components allValues];

      v16 = [allValues countByEnumeratingWithState:&v32 objects:v48 count:16];
      if (v16)
      {
        v17 = *v33;
        v27 = groupID;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(allValues);
            }

            v19 = *(*(&v32 + 1) + 8 * i);
            partID = [v19 partID];
            if (partID == [v10 partID])
            {
              groupID = v27;
              [v10 setSourceID:{objc_msgSend(v19, "sourceID")}];
              goto LABEL_26;
            }
          }

          v16 = [allValues countByEnumeratingWithState:&v32 objects:v48 count:16];
          groupID = v27;
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v5 = v28;
      updateCopy = v29;
    }

    v22 = [v13 updateWithCBPowerSource:v10];
    v23 = v10;
    v10 = v13;
  }

  else
  {
    if (![v10 isAggregateComponent])
    {
      [v10 setChangeFlags:{objc_msgSend(v10, "changeFlags") | 8}];
      [v10 setInternalFlags:{objc_msgSend(v10, "internalFlags") | 4}];
      [(NSMutableDictionary *)self->_powerSources setObject:v10 forKeyedSubscript:accessoryID];
LABEL_30:
      [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceFound:v10];
      goto LABEL_32;
    }

    v21 = objc_alloc_init(CBPowerSource);
    [v21 setPartID:1];
    v22 = [v21 updateWithCBPowerSource:v10];
    v23 = v21;

    v10 = v23;
    [(NSMutableDictionary *)self->_powerSources setObject:v23 forKeyedSubscript:v30];
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  if ((v22 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  [(CBStackPowerSourceMonitorBTStack *)self _handlePowerSourceLost:v10];
LABEL_32:
  classicMap = self->_classicMap;
  if (classicMap)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = sub_100042214;
    v46 = sub_10004259C;
    v47 = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10012A9BC;
    v31[3] = &unk_100AE1148;
    v31[4] = accessoryID;
    v31[5] = &buf;
    [(NSMutableDictionary *)classicMap enumerateKeysAndObjectsUsingBlock:v31];
    if (*(*(&buf + 1) + 40))
    {
      [(NSMutableDictionary *)self->_classicMap setObject:accessoryID forKeyedSubscript:?];
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_36:

LABEL_37:
  (v5[2])(v5);

  _Block_object_dispose(&v37, 8);
}

- (void)_handleStackUSBStateChanged:(void *)changed
{
  v5 = sub_100058928(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(changed, __p);
    v6 = v28;
    v7 = *__p;
    v8 = *(changed + 1360);
    v9 = sub_10053FCFC(changed);
    v10 = v9;
    v11 = __p;
    if (v6 < 0)
    {
      v11 = v7;
    }

    *buf = 136315650;
    *&buf[4] = v11;
    if (v8)
    {
      v12 = "yes";
    }

    else
    {
      v12 = "no";
    }

    v30 = 2080;
    v31 = v12;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackUSBStateChanged %s, connectedOveUSB %s, serialNumber %@", buf, 0x20u);
    if (v28 < 0)
    {
      operator delete(*__p);
    }
  }

  v13 = [(CBStackPowerSourceMonitorBTStack *)self _identifierForClassicDevice:changed];
  if (v13)
  {
    v26 = 0;
    v14 = [[CBPowerSource alloc] initWithBTStackDevice:changed identifier:v13 error:&v26];
    v15 = v26;
    v16 = v15;
    if (v14)
    {
      if (![v14 isAppleDevice] || (v17 = objc_msgSend(v14, "productID"), v17))
      {
        v25 = v14;
        v18 = [(CBStackPowerSourceMonitorBTStack *)self _setPowerSourceGroupID:&v25];
        v19 = v25;

        if (v18)
        {
          v21 = sub_100058928(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "StackUSBStateChanged %@", buf, 0xCu);
          }

          [(CBStackPowerSourceMonitorBTStack *)self _handleStackSourceUpdate:v19];
        }

        goto LABEL_18;
      }

      v23 = sub_100058928(v17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080A260();
      }
    }

    else
    {
      v23 = sub_100058928(v15);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = CUPrintNSError();
        sub_10080A2C8(v24, buf, v23);
      }

      v14 = 0;
    }

    v19 = v14;
LABEL_18:

    goto LABEL_19;
  }

  v16 = sub_100058928(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(changed, buf);
    v22 = v32 >= 0 ? buf : *buf;
    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "StackUSBStateChanged found no identifier for device: %s", __p, 0xCu);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_19:
}

- (void)_publishIOKitPowerSource:(id)source
{
  sourceCopy = source;
  accessoryID = [sourceCopy accessoryID];
  if (!accessoryID)
  {
    sub_10080A388(sourceCopy);
    goto LABEL_18;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100042214;
  v20 = sub_10004259C;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012B178;
  v15[3] = &unk_100AE1120;
  v15[4] = &v16;
  v6 = objc_retainBlock(v15);
  groupID = [sourceCopy groupID];
  v8 = groupID;
  if (groupID)
  {
    v9 = groupID;
  }

  else
  {
    v9 = accessoryID;
  }

  v10 = v9;
  v11 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = sourceCopy;
    [(NSMutableDictionary *)self->_powerSources setObject:v11 forKeyedSubscript:v10];
  }

  if ([v11 isAppleDevice])
  {
    productID = [v11 productID];
    if ((productID - 8201) < 0x18 || (productID - 8194) <= 0x2D && ((1 << (productID - 2)) & 0x20FC0000001BLL) != 0)
    {
      v13 = sub_100058928(productID);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping Apple audio publish: %@", buf, 0xCu);
      }

      goto LABEL_16;
    }

    if (!productID)
    {
      v13 = sub_100058928(productID);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080A320();
      }

      goto LABEL_16;
    }
  }

  if ([v11 publish])
  {
    v14 = CBErrorF(4294960549, "IOPSSetPowerSourceDetails failed for source: %@", v11);
    v13 = v17[5];
    v17[5] = v14;
LABEL_16:
  }

  (v6[2])(v6);
  _Block_object_dispose(&v16, 8);

LABEL_18:
}

- (void)_notifyPowerSourceFound:(id)found
{
  foundCopy = found;
  v5 = foundCopy;
  if ([foundCopy isAggregateComponent])
  {
    groupID = [foundCopy groupID];
    if (!groupID)
    {
      groupID = [foundCopy accessoryID];
      if (!groupID)
      {
        sub_10080A50C(foundCopy);
        v5 = foundCopy;
        goto LABEL_19;
      }
    }

    v5 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:groupID];
  }

  v7 = [NSUUID alloc];
  accessoryID = [foundCopy accessoryID];
  v9 = [v7 initWithUUIDString:accessoryID];

  if (v9)
  {
    if ([v5 changeFlags])
    {
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10012B50C;
      v22 = &unk_100AE0B60;
      selfCopy = self;
      v5 = v5;
      v24 = v5;
      v10 = objc_retainBlock(&v19);
      changeFlags = [v5 changeFlags];
      if ((changeFlags & 0x1E) != 0)
      {
        v12 = sub_100058928(changeFlags);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v5;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notify power source found: %@", buf, 0xCu);
        }

        v13 = objc_alloc_init(CBDevice);
        [v13 updateWithCBPowerSource:v5];
        logPrivateData = self->_logPrivateData;
        internalFlags = [v13 internalFlags];
        if (logPrivateData)
        {
          v16 = 0x20000;
        }

        else
        {
          v16 = 0;
        }

        [v13 setInternalFlags:v16 | internalFlags];
        v17 = objc_retainBlock(self->_deviceFoundHandler);
        v18 = v17;
        if (v17)
        {
          (*(v17 + 2))(v17, v13);
        }
      }

      if ([v5 internalFlags])
      {
        [(CBStackPowerSourceMonitorBTStack *)self _publishIOKitPowerSource:v5];
      }

      [(CBStackPowerSourceMonitorBTStack *)self _reportMetricIfNeeded:v5];
      (v10[2])(v10);
    }
  }

  else
  {
    sub_10080A480(foundCopy);
  }

LABEL_19:
}

- (void)_notifyPowerSourceLost:(id)lost
{
  lostCopy = lost;
  v5 = sub_100058928(lostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = lostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notify power source lost: %@", &v12, 0xCu);
  }

  v6 = objc_alloc_init(CBDevice);
  [v6 updateWithCBPowerSource:lostCopy];
  logPrivateData = self->_logPrivateData;
  internalFlags = [v6 internalFlags];
  if (logPrivateData)
  {
    v9 = 0x20000;
  }

  else
  {
    v9 = 0;
  }

  [v6 setInternalFlags:v9 | internalFlags];
  v10 = objc_retainBlock(self->_deviceLostHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v6);
  }
}

- (BOOL)powerSourceOverrideWithMock:(id)mock error:(id *)error
{
  mockCopy = mock;
  selfCopy = self;
  v41 = mockCopy;
  if (!self->_powerSources)
  {
    if (error)
    {
      CBErrorF(4294960569, "No power sources");
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_53;
  }

  accessoryID = [mockCopy accessoryID];
  if (!accessoryID)
  {
    if (error)
    {
      CBErrorF(4294960569, "Missing accessoryID: %@", v41);
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_52;
  }

  v7 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:accessoryID];
  v8 = v7;
  if (v7)
  {
    groupID = [v7 groupID];
    [v41 setGroupID:groupID];

    accessoryID2 = [v8 accessoryID];
    [v41 setAccessoryID:accessoryID2];

    goto LABEL_33;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  allValues = [(NSMutableDictionary *)self->_powerSources allValues];
  v12 = [allValues countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v12)
  {
LABEL_24:

LABEL_25:
    if (error)
    {
      v25 = CBErrorF(4294960569, "No power source found with identifier '%@'", accessoryID);
      v8 = 0;
      goto LABEL_27;
    }

    v8 = 0;
    goto LABEL_55;
  }

  v13 = *v43;
LABEL_7:
  v14 = 0;
  while (1)
  {
    if (*v43 != v13)
    {
      objc_enumerationMutation(allValues);
    }

    v8 = *(*(&v42 + 1) + 8 * v14);
    accessoryID3 = [v8 accessoryID];
    if (accessoryID3)
    {
      accessoryID4 = [v8 accessoryID];
      v17 = accessoryID;
      v18 = v17;
      if (accessoryID4 == v17)
      {

LABEL_29:
        v27 = v8;
        goto LABEL_32;
      }

      if (accessoryID4)
      {
        v19 = [accessoryID4 isEqual:v17];

        if (v19)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    groupID2 = [v8 groupID];
    if (!groupID2)
    {
      goto LABEL_22;
    }

    groupID3 = [v8 groupID];
    v22 = accessoryID;
    v23 = v22;
    if (groupID3 == v22)
    {
      break;
    }

    if (groupID3)
    {
      v24 = [groupID3 isEqual:v22];

      if (v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

LABEL_22:
    if (v12 == ++v14)
    {
      v12 = [allValues countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

LABEL_31:
  v28 = v8;
  groupID4 = [v28 groupID];
  [v41 setGroupID:groupID4];

  accessoryID5 = [v28 accessoryID];
  [v41 setAccessoryID:accessoryID5];

LABEL_32:
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_33:
  if (([v41 internalFlags] & 8) != 0)
  {
    [v41 setChangeFlags:{objc_msgSend(v41, "changeFlags") | 8}];
    [v41 setPresent:1];
    v37 = sub_100058928([v8 updateWithCBPowerSource:v41]);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Power source info overridden with mock %@", buf, 0xCu);
    }

    [(CBStackPowerSourceMonitorBTStack *)selfCopy _handlePowerSourceFound:v8];
LABEL_50:
    v26 = 1;
    goto LABEL_51;
  }

  v31 = [[NSUUID alloc] initWithUUIDString:accessoryID];
  if (v31)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080A598();
    }

    v32 = sub_100046458(off_100B508C8, v31, 0);
    if (v32)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100809D38();
      }

      v33 = [[CBPowerSource alloc] initWithBTStackDevice:sub_1000504C8(off_100B508E8 identifier:v32 error:{1), accessoryID, 0}];
      if (v33)
      {
        [v33 setPartID:{objc_msgSend(v8, "partID")}];
        v34 = [v8 updateWithCBPowerSource:v33];
        v35 = v34;
        v36 = sub_100058928(v34);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v8;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Power source override reset %@", buf, 0xCu);
        }

        if (v35)
        {
          [(CBStackPowerSourceMonitorBTStack *)selfCopy _handlePowerSourceFound:v8];
        }
      }
    }

    goto LABEL_50;
  }

  if (!error)
  {
LABEL_55:
    v26 = 0;
    goto LABEL_51;
  }

  v25 = CBErrorF(4294960591, "Device identifier is not UUID format: %@", 0);
LABEL_27:
  v26 = 0;
  *error = v25;
LABEL_51:

LABEL_52:
LABEL_53:

  return v26;
}

- (void)_reportMetricIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (-[NSMutableSet count](selfCopy->_reportMetrics, "count") && ([neededCopy isAppleDevice] & 1) == 0)
  {
    accessoryID = [neededCopy accessoryID];
    if (!accessoryID || ![(NSMutableSet *)selfCopy->_reportMetrics containsObject:accessoryID])
    {
      goto LABEL_32;
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10012C0F4;
    v32[3] = &unk_100AE0B60;
    v32[4] = selfCopy;
    v32[5] = accessoryID;
    v7 = objc_retainBlock(v32);
    if ([neededCopy partID] == 1)
    {
      components = [neededCopy components];
      v9 = [components count];
    }

    else
    {
      v9 = 1;
    }

    appearanceValue = [neededCopy appearanceValue];
    if (appearanceValue)
    {
      v11 = appearanceValue;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = v9 << 32;
    }

    else
    {
      v12 = 0;
    }

    deviceType = [neededCopy deviceType];
    if (deviceType)
    {
      v14 = deviceType << 40;
    }

    else
    {
      v14 = 0;
    }

    transportType = [neededCopy transportType];
    v16 = transportType;
    if (transportType)
    {
      v17 = transportType;
      if (v16 == @"Bluetooth" || (v18 = v17, v19 = [(__CFString *)v17 isEqual:@"Bluetooth"], v18, (v19 & 1) != 0))
      {
        v20 = &_mh_execute_header;
LABEL_30:

LABEL_31:
        vendorID = [neededCopy vendorID];
        v29 = sub_10000F034(vendorID, v28);
        (*(*v29 + 808))(v29, v14 | v12 | v11, v20 | (vendorID << 48));
        (v7[2])(v7);

LABEL_32:
        goto LABEL_33;
      }

      v21 = v18;
      v22 = v21;
      if (v16 == @"Bluetooth LE" || (v30 = [(__CFString *)v21 isEqual:@"Bluetooth LE"], v22, v30))
      {

        productID = [neededCopy productID];
        if (!productID)
        {
          if ([neededCopy partID] == 1)
          {
            memset(v31, 0, sizeof(v31));
            components2 = [neededCopy components];
            allValues = [components2 allValues];

            if ([allValues countByEnumeratingWithState:v31 objects:v33 count:16])
            {
              productID2 = [**(&v31[0] + 1) productID];
              if (productID2)
              {
                productID = productID2;
              }

              else
              {
                productID = 0;
              }
            }

            else
            {
              productID = 0;
            }
          }

          else
          {
            productID = 0;
          }
        }

        v20 = productID | 0x200000000;
        goto LABEL_31;
      }
    }

    v20 = 0;
    goto LABEL_30;
  }

LABEL_33:
  objc_sync_exit(selfCopy);
}

- (id)_classicDeviceUUID:(void *)d
{
  if (d)
  {
    v4 = *(d + 128);
    v5 = *(d + 129);
    v6 = *(d + 130);
    v7 = *(d + 131);
    v8 = *(d + 132);
    v9 = *(d + 133);
    v24[0] = 0;
    v24[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10080A5C0();
    }

    sub_1000498D4(off_100B508C8, (v4 << 40) | (v5 << 32) | (v6 << 24) | (v7 << 16) | (v8 << 8) | v9, 0, 1u, 0, 0, v24);
    v10 = sub_10004DF60(v24);
    v11 = sub_100058928(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(d, __p);
      v12 = v19;
      v13 = __p[0];
      uUIDString = [v10 UUIDString];
      v15 = uUIDString;
      v16 = __p;
      if (v12 < 0)
      {
        v16 = v13;
      }

      *buf = 136315394;
      v21 = v16;
      v22 = 2112;
      v23 = uUIDString;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found identifier for classic device '%s': %@", buf, 0x16u);

      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_findPowerSourceWithIdentifiers:(id)identifiers and:(id)and
{
  identifiersCopy = identifiers;
  andCopy = and;
  v8 = andCopy;
  if (identifiersCopy)
  {
    if (andCopy)
    {
      v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:andCopy];
      if (v9)
      {
        v10 = identifiersCopy;
        v11 = v8;
        if (v10 != v11)
        {
          v12 = v11;
          v13 = [v10 isEqual:v11];

          if (v13)
          {
            goto LABEL_13;
          }

          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v9 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:identifiersCopy];
    if (v9 && v8)
    {
      [(NSMutableDictionary *)self->_powerSources setObject:v9 forKeyedSubscript:v8];
      v10 = identifiersCopy;
      v14 = v8;
      if (v10 == v14)
      {
LABEL_12:

        goto LABEL_13;
      }

      v15 = v14;
      v16 = [v10 isEqual:v14];

      if ((v16 & 1) == 0)
      {
LABEL_6:
        [(NSMutableDictionary *)self->_powerSources setObject:0 forKeyedSubscript:v10];
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (id)_identifierForAccessoryID:(id)d
{
  dCopy = d;
  if (!self->_classicMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    classicMap = self->_classicMap;
    self->_classicMap = v5;
  }

  v7 = dCopy;
  normalized = [v7 normalized];
  v9 = [(NSMutableDictionary *)self->_classicMap objectForKeyedSubscript:normalized];
  if (!v9)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10080A5D4();
    }

    v10 = sub_10056B294(off_100B508E8, v7);
    v11 = v10;
    if (v10)
    {
      goto LABEL_7;
    }

    *&__p[4] = 0;
    *__p = 0;
    [v7 UTF8String];
    v10 = TextToHardwareAddress();
    if (v10)
    {
      v18 = sub_100058928(v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080A5E8();
      }
    }

    else
    {
      v20 = (__p[0] << 40) | (__p[1] << 32) | (__p[2] << 24) | (__p[3] << 16) | (__p[4] << 8) | __p[5];
      if (v20)
      {
        if (qword_100B508F0 != -1)
        {
          sub_100809D38();
        }

        v10 = sub_1000504C8(off_100B508E8, v20, 1);
        v11 = v10;
        if (v10)
        {
LABEL_7:
          v12 = sub_100058928(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v11, __p);
            v13 = v22 >= 0 ? __p : *__p;
            *buf = 138412546;
            v24 = v7;
            v25 = 2080;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found device with accessoryID '%@': %s", buf, 0x16u);
            if (v22 < 0)
            {
              operator delete(*__p);
            }
          }

          v14 = [(CBStackPowerSourceMonitorBTStack *)self _classicDeviceUUID:v11];
          v9 = 0;
          for (i = 1; v14 && (i & 1) != 0; i = 0)
          {
            uUIDString = [v14 UUIDString];

            v17 = sub_100058928([(NSMutableDictionary *)self->_classicMap setObject:uUIDString forKeyedSubscript:normalized]);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updated Classic Map", __p, 2u);
            }

            v9 = uUIDString;
            [(NSMutableDictionary *)self->_classicMap enumerateKeysAndObjectsUsingBlock:&stru_100AE1188];
          }

LABEL_26:

          goto LABEL_27;
        }
      }
    }

    v14 = sub_100058928(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138412290;
      *&__p[4] = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "### No classic device found for '%@'", __p, 0xCu);
    }

    v9 = 0;
    goto LABEL_26;
  }

LABEL_27:

  return v9;
}

- (id)_identifierForClassicDevice:(void *)device
{
  if (!self->_classicMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    classicMap = self->_classicMap;
    self->_classicMap = v5;
  }

  v7 = sub_10053FCFC(device);
  normalized = [v7 normalized];

  if (!normalized || ([(NSMutableDictionary *)self->_classicMap objectForKeyedSubscript:normalized], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v35 = *(device + 32);
    v36 = *(device + 66);
    v33[0] = 0;
    v33[1] = 0;
    v34 = 0;
    sub_1000BE6F8(&v35, v33);
    v10 = [NSString alloc];
    if (v34 >= 0)
    {
      v11 = v33;
    }

    else
    {
      v11 = v33[0];
    }

    v12 = [v10 initWithUTF8String:v11];
    normalized2 = [v12 normalized];

    if (normalized2)
    {
      v9 = [(NSMutableDictionary *)self->_classicMap objectForKeyedSubscript:normalized2];
      if (v9)
      {
        goto LABEL_31;
      }

      v15 = [(CBStackPowerSourceMonitorBTStack *)self _classicDeviceUUID:device];
      v16 = v15;
      if (v15)
      {
        uUIDString = [v15 UUIDString];

        if (uUIDString)
        {
          __p = 0;
          p_p = &__p;
          v29 = 0x3032000000;
          v30 = sub_100042214;
          v31 = sub_10004259C;
          v32 = 0;
          v19 = self->_classicMap;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10012CD6C;
          v26[3] = &unk_100AE11B0;
          v26[5] = normalized2;
          v26[6] = &__p;
          v26[4] = normalized;
          [(NSMutableDictionary *)v19 enumerateKeysAndObjectsUsingBlock:v26];
          if (p_p[5] || (normalized ? (v20 = normalized) : (v20 = normalized2), objc_storeStrong(p_p + 5, v20), p_p[5]))
          {
            [(NSMutableDictionary *)self->_classicMap setObject:uUIDString forKeyedSubscript:?];
            v21 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:p_p[5]];
            if (v21)
            {
              [(NSMutableDictionary *)self->_powerSources setObject:v21 forKeyedSubscript:uUIDString];
              [(NSMutableDictionary *)self->_powerSources setObject:0 forKeyedSubscript:p_p[5]];
            }

            v9 = uUIDString;
          }

          else
          {
            v9 = 0;
          }

          _Block_object_dispose(&__p, 8);

          goto LABEL_30;
        }
      }

      else
      {
      }

      uUIDString = sub_100058928(v18);
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(device, &__p);
        if (v29 >= 0)
        {
          v22 = &__p;
        }

        else
        {
          v22 = __p;
        }

        *buf = 136315138;
        v38 = v22;
        v23 = "### No identifier found for classic device: %s";
        goto LABEL_27;
      }
    }

    else
    {
      uUIDString = sub_100058928(v14);
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(device, &__p);
        if (v29 >= 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p;
        }

        *buf = 136315138;
        v38 = v25;
        v23 = "### No address found for classic device: %s";
LABEL_27:
        _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }
      }
    }

    v9 = 0;
LABEL_30:

LABEL_31:
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }
  }

  return v9;
}

- (void)_removeFromClassicMap:(id)map
{
  mapCopy = map;
  v5 = mapCopy;
  if (self->_classicMap)
  {
    accessoryID = [mapCopy accessoryID];
    sub_10080A650(accessoryID, self, &v7);
  }
}

- (void)_removePowerSourceFlags:(id)flags
{
  flagsCopy = flags;
  accessoryID = [flagsCopy accessoryID];
  if (accessoryID)
  {
    groupID = [flagsCopy groupID];
    v7 = groupID;
    if (groupID)
    {
      v8 = groupID;
    }

    else
    {
      v8 = accessoryID;
    }

    v9 = v8;
    v10 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      [v10 removeFlags];
    }
  }

  else
  {
    sub_10080A6FC(flagsCopy);
  }
}

- (BOOL)_setPowerSourceGroupID:(id *)d
{
  v4 = *d;
  if ([v4 partID] == 1 || (objc_msgSend(v4, "isAggregateComponent")) && (objc_msgSend(v4, "groupID"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100042214;
    v29 = sub_10004259C;
    v30 = 0;
    powerSources = self->_powerSources;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10012D648;
    v22 = &unk_100AE11D8;
    v7 = v4;
    v23 = v7;
    v24 = &v25;
    [(NSMutableDictionary *)powerSources enumerateKeysAndObjectsUsingBlock:&v19];
    if (!v26[5])
    {
      v8 = [v7 productID] - 8194;
      if (v8 <= 0x2D && ((1 << v8) & 0x207C7BB7FF9BLL) != 0)
      {
        v9 = [NSUUID alloc];
        accessoryID = [v7 accessoryID];
        v11 = [v9 initWithUUIDString:accessoryID];

        if (v11)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10080A598();
          }

          v12 = sub_100790774(off_100B508C8, v11);
          uUIDString = [v12 UUIDString];
          v14 = v26[5];
          v26[5] = uUIDString;
        }
      }

      else
      {
        accessoryID2 = [v7 accessoryID];
        v11 = v26[5];
        v26[5] = accessoryID2;
      }
    }

    v15 = v26[5];
    v16 = v15 != 0;
    if (v15)
    {
      [v7 setGroupID:?];
    }

    else
    {
      sub_10080A788(v7);
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

@end