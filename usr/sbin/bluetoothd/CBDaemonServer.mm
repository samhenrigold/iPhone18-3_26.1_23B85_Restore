@interface CBDaemonServer
- (BOOL)_bleAdvertiserShouldRun;
- (BOOL)_bleAdvertiserUpdateSpatialInteraction;
- (BOOL)_bleAdvertiserUpdateWithAuthTagNC;
- (BOOL)_firstUnlockedOrAllowedBefore;
- (BOOL)_identitiesShouldRun;
- (BOOL)_stackAccessoryMonitorShouldRun;
- (BOOL)_stackBLEScannerShouldRun;
- (BOOL)_stackClassicScannerShouldRun;
- (BOOL)_stackDeviceMonitorShouldRun;
- (BOOL)_stackPowerSourceMonitorShouldRun;
- (BOOL)_supportsProxControl;
- (BOOL)_verifyNearbyInfoV2IntegrityTag:(id)tag rapportIdentity:(id)identity;
- (BOOL)_whbDiscoveryShouldRun;
- (BOOL)xpcEventAllowedInfo:(id)info;
- (CBDaemonServer)initWithCBStackAdaptor:(id)adaptor;
- (OS_xpc_object)xpcListenerEndpoint;
- (id)descriptionWithLevel:(int)level;
- (id)getAudioAccessoryDeviceArray;
- (void)_accessoryDaemonEnsureStarted;
- (void)_accessoryDaemonEnsureStopped;
- (void)_activate;
- (void)_activateCBAdvertiser:(id)advertiser completion:(id)completion;
- (void)_activateCBController:(id)controller completion:(id)completion;
- (void)_activateCBDiscovery:(id)discovery completion:(id)completion;
- (void)_activateCBSpatialInteractionSession:(id)session completion:(id)completion;
- (void)_aopMessageReceived:(id)received;
- (void)_bleAddressMonitorEnsureStarted;
- (void)_bleAddressMonitorEnsureStopped;
- (void)_bleAdvertiserAddressChanged:(BOOL)changed;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_extensionsEnsureStarted;
- (void)_extensionsEnsureStopped;
- (void)_identitiesEnsureStarted;
- (void)_identitiesEnsureStopped;
- (void)_identitiesGet;
- (void)_identitiesReevaluateDevices;
- (void)_identitiesResolveNearbyDevice:(id)device;
- (void)_invalidate;
- (void)_invalidateCBAdvertiser:(id)advertiser completion:(id)completion;
- (void)_invalidateCBController:(id)controller completion:(id)completion;
- (void)_invalidateCBDiscovery:(id)discovery completion:(id)completion;
- (void)_invalidateCBSpatialInteractionSession:(id)session completion:(id)completion;
- (void)_invalidateUserController;
- (void)_notifyConnectedDeviceUUID:(id)d name:(id)name servicesUUIDs:(id)ds;
- (void)_performUserControllerActionWithCompletion:(id)completion;
- (void)_prefsChanged;
- (void)_remoteEnsureStarted;
- (void)_remoteEnsureStopped;
- (void)_remoteInvalidateInactiveXPC;
- (void)_remoteReceivedEvent:(id)event options:(id)options;
- (void)_remoteReceivedRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_reportDeviceFound:(id)found;
- (void)_reportDeviceLost:(id)lost;
- (void)_reportDeviceLostIfNeeded:(unint64_t)needed;
- (void)_reportDevicesBuffered:(id)buffered;
- (void)_scheduleUserControllerInvalidation:(BOOL)invalidation;
- (void)_stackAccessoryMonitorEnsureStarted;
- (void)_stackAccessoryMonitorEnsureStopped;
- (void)_stackBLEScannerDeviceFound:(id)found;
- (void)_stackBLEScannerDeviceLost:(id)lost;
- (void)_stackBLEScannerDevicesBuffered:(id)buffered;
- (void)_stackBLEScannerEnsureStarted;
- (void)_stackBLEScannerEnsureStopped;
- (void)_stackBLEScannerUpdateProxControlIfNeeded:(id)needed;
- (void)_stackClassicScannerDeviceFound:(id)found;
- (void)_stackClassicScannerDeviceLost:(id)lost;
- (void)_stackClassicScannerEnsureStarted;
- (void)_stackClassicScannerEnsureStopped;
- (void)_stackControllerEnsureStarted;
- (void)_stackControllerEnsureStopped;
- (void)_stackDeviceMonitorDeviceFound:(id)found;
- (void)_stackDeviceMonitorDeviceLost:(id)lost;
- (void)_stackDeviceMonitorEnsureStarted;
- (void)_stackDeviceMonitorEnsureStopped;
- (void)_stackPowerSourceMonitorDeviceFound:(id)found;
- (void)_stackPowerSourceMonitorDeviceLost:(id)lost;
- (void)_stackPowerSourceMonitorEnsureStarted;
- (void)_stackPowerSourceMonitorEnsureStopped;
- (void)_tipiChanged:(id)changed;
- (void)_update;
- (void)_updateMemoryPressure;
- (void)_updateSelfAuthTag;
- (void)_updateUserControllerCloudDevices;
- (void)_userControllerCloudUpdateWithDevices:(id)devices;
- (void)_userControllerUploadLocalControllerInfo;
- (void)_whbDiscoveryDeviceFound:(id)found;
- (void)_whbDiscoveryDeviceLost:(id)lost;
- (void)_whbDiscoveryEnsureStarted;
- (void)_whbDiscoveryEnsureStopped;
- (void)_xpcConnectionAccept:(id)accept;
- (void)_xpcListenerEvent:(id)event;
- (void)_xpcPublisherConnectionsAction:(unsigned int)action token:(unint64_t)token info:(id)info;
- (void)_xpcPublisherConnectionsAddToken:(unint64_t)token info:(id)info;
- (void)_xpcPublisherConnectionsRemoveToken:(unint64_t)token reason:(const char *)reason;
- (void)_xpcPublisherDiscoveryAction:(unsigned int)action token:(unint64_t)token info:(id)info;
- (void)_xpcPublisherDiscoveryAddToken:(unint64_t)token info:(id)info;
- (void)_xpcPublisherDiscoveryRemoveToken:(unint64_t)token reason:(const char *)reason;
- (void)activate;
- (void)activateCBAdvertiser:(id)advertiser completion:(id)completion;
- (void)activateCBController:(id)controller completion:(id)completion;
- (void)activateCBDiscovery:(id)discovery completion:(id)completion;
- (void)activateCBSpatialInteractionSession:(id)session completion:(id)completion;
- (void)addLostDeviceToLostCBSpatialDevicesIfNeeded:(id)needed;
- (void)aopMessageReceived:(id)received;
- (void)clearDuplicateFilterCache:(id)cache;
- (void)coexChangeNotification:(id)notification;
- (void)descriptionInternalDebug;
- (void)injectAOPBufAdv:(id)adv;
- (void)invalidate;
- (void)invalidateCBAdvertiser:(id)advertiser completion:(id)completion;
- (void)invalidateCBController:(id)controller completion:(id)completion;
- (void)invalidateCBDiscovery:(id)discovery completion:(id)completion;
- (void)invalidateCBSpatialInteractionSession:(id)session completion:(id)completion;
- (void)notifyConnectedDeviceUUID:(id)d name:(id)name servicesUUIDs:(id)ds;
- (void)optimalWhbDeviceForStableIdentifier:(id)identifier completion:(id)completion;
- (void)recordEventWithDeviceIdentifier:(id)identifier initiator:(BOOL)initiator starting:(BOOL)starting useCase:(unsigned int)case;
- (void)recordEventWithStarting:(BOOL)starting useCase:(unsigned int)case;
- (void)remoteDeregisterConnection:(id)connection;
- (void)remoteRegisterConnection:(id)connection clientID:(id)d;
- (void)scheduleAdvertiserUpdateImmediate:(BOOL)immediate;
- (void)scheduleDiscoveryUpdateImmediate:(BOOL)immediate;
- (void)scheduleSpatialUpdateImmediate:(BOOL)immediate;
- (void)scheduleUpdateImmediate:(BOOL)immediate;
- (void)sendCoexUpdate:(id)update;
- (void)setSystemFlags:(unsigned int)flags mask:(unsigned int)mask;
- (void)updateIdentities:(id)identities;
- (void)xpcConnectionInvalidated:(id)invalidated;
@end

@implementation CBDaemonServer

- (BOOL)_identitiesShouldRun
{
  if (![(CUSystemMonitor *)self->_systemMonitor firstUnlocked]|| ![(CBStackController *)self->_stackController poweredOn])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        activatedDiscovery = [v8 activatedDiscovery];
        if ([activatedDiscovery needsIdentify])
        {
          goto LABEL_17;
        }

        activatedSpatialInteractionSession = [v8 activatedSpatialInteractionSession];
        if (([activatedSpatialInteractionSession controlFlags] & 0x3E0) != 0)
        {

LABEL_17:
LABEL_18:
          v13 = 1;
          goto LABEL_19;
        }

        activatedAdvertiser = [v8 activatedAdvertiser];
        needsIdentify = [activatedAdvertiser needsIdentify];

        if (needsIdentify)
        {
          goto LABEL_18;
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (void)_identitiesEnsureStarted
{
  p_identitiesNotifyToken = &self->_identitiesNotifyToken;
  if (self->_identitiesNotifyToken == -1)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10080425C(self, a2, v2);
      }
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000FC668;
    handler[3] = &unk_100ADFFF0;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.rapport.identitiesChanged", p_identitiesNotifyToken, dispatchQueue, handler);
    [(CBDaemonServer *)selfCopy _identitiesGet];
  }
}

- (BOOL)_bleAdvertiserShouldRun
{
  if (!self->_prefBLEAdvertising || ![(CBDaemonServer *)self _firstUnlockedOrAllowedBefore]|| ![(CBStackController *)self->_stackController poweredOn])
  {
    return 0;
  }

  v3 = self->_bleAdvertiserArray;
  if ([(NSMutableArray *)v3 count])
  {
    goto LABEL_30;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        activatedAdvertiser = [v10 activatedAdvertiser];
        if (activatedAdvertiser)
        {
          if (!v3)
          {
            v3 = objc_alloc_init(NSMutableArray);
          }

          [(NSMutableArray *)v3 addObject:activatedAdvertiser];
        }

        if (v7)
        {
          v7 = 1;
        }

        else
        {
          activatedSpatialInteractionSession = [v10 activatedSpatialInteractionSession];
          v13 = activatedSpatialInteractionSession;
          if (activatedSpatialInteractionSession)
          {
            v7 = ([activatedSpatialInteractionSession controlFlags] & 8) == 0;
          }

          else
          {
            v7 = 0;
          }
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&self->_bleAdvertiserArray, v3);
  [(CBAdvertiserDaemon *)self->_bleAdvertiser setAdvertiserArray:0];
  if (v7 || -[CBAdvertiserDaemon needsToRun](self->_bleAdvertiser, "needsToRun") || self->_bleAdvertiserSpatialLingerTimer || (-[CBAdvertiserDaemon spatialInteractionIdentifiers](self->_bleAdvertiser, "spatialInteractionIdentifiers"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], v16, v17))
  {
LABEL_30:
    v14 = 1;
  }

  else
  {
    v14 = [(NSMutableArray *)v3 count]!= 0;
  }

  return v14;
}

- (BOOL)_firstUnlockedOrAllowedBefore
{
  if ([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0 || (os_variant_is_recovery())
  {
    return 1;
  }

  return MGGetBoolAnswer();
}

- (BOOL)_stackBLEScannerShouldRun
{
  if (!self->_prefBLEScanning || (self->_assertionFlags & 1) != 0 || ![(CBDaemonServer *)self _firstUnlockedOrAllowedBefore]|| ![(CBStackController *)self->_stackController poweredOn])
  {
    return 0;
  }

  v3 = self->_bleDiscoveryArray;
  if (v3)
  {
    v4 = v3;
    goto LABEL_85;
  }

  v7 = GestaltGetDeviceClass() == 7 || GestaltGetDeviceClass() == 13;
  v33 = v7;
  location = &self->_bleDiscoveryArray;
  if ([(CUSystemMonitor *)self->_systemMonitor screenOn])
  {
    v8 = +[BLSBacklight sharedBacklight];
    if ([v8 isAlwaysOnEnabled])
    {
      v9 = self->_screenUndimmed != 0;
    }

    else
    {
      v9 = 1;
    }

    v34 = v9;
  }

  else
  {
    v34 = 0;
  }

  *&self->_stackBLEScannerNeedsAdvertisingAddress = 0;
  self->_stackBLEProxControlFlags = 0;
  *&self->_stackBLEProxControlNeedsDeviceClose = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = self->_xpcConnections;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v11)
  {
    v4 = 0;
    goto LABEL_84;
  }

  v12 = v11;
  v4 = 0;
  v13 = *v36;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v35 + 1) + 8 * i);
      activatedDiscovery = [v15 activatedDiscovery];
      v17 = activatedDiscovery;
      if (activatedDiscovery)
      {
        discoveryFlags = [activatedDiscovery discoveryFlags];
        needsBLEScan = [v17 needsBLEScan];
        if (!needsBLEScan)
        {
          goto LABEL_38;
        }

        if (!self->_prefDiscoveryProxy && [v15 xpcToken] || (objc_msgSend(v17, "internalFlags") & 0x10) != 0 || (v34 | (discoveryFlags >> 25) & 1) != 1 || objc_msgSend(v17, "denyLowPowerModeScans") && self->_lowPowerModeEnabled || objc_msgSend(v17, "denyScreenLockedScans") && (self->_screenLocked || !-[CUSystemMonitor firstUnlocked](self->_systemMonitor, "firstUnlocked")) || (discoveryFlags & 0x200000000000) != 0 && !-[CBDaemonServer _supportsProxControl](self, "_supportsProxControl"))
        {
          v20 = 1;
          goto LABEL_40;
        }

        if ([v17 deviceSetupState])
        {
          v20 = self->_deviceSetupState == 10;
        }

        else
        {
LABEL_38:
          v20 = 0;
        }

LABEL_40:
        v21 = discoveryFlags & 0x200000000000;
        self->_stackBLEProxControlAnyDeviceClose = (v21 | self->_stackBLEProxControlAnyDeviceClose) != 0;
        [v17 setDisabledPending:v20];
        if (!v20 && ((needsBLEScan ^ 1) & 1) == 0)
        {
          if ([v17 needsAdvertisingAddress])
          {
            self->_stackBLEScannerNeedsAdvertisingAddress = 1;
          }

          if ([v17 needsIdentify])
          {
            self->_stackBLENeedsIdentify = 1;
          }

          if (v21)
          {
            self->_stackBLENeedsIdentify = 1;
            if (v33)
            {
              self->_stackBLEProxControlFlags = 64;
              stackBLEProxControlFlags = 64;
            }

            else
            {
              self->_stackBLEProxControlFlags = 0x80000;
              self->_stackBLEProxControlNeedsDeviceClose = 1;
              [v17 setUseCase:786432];
              stackBLEProxControlFlags = self->_stackBLEProxControlFlags;
            }
          }

          else
          {
            stackBLEProxControlFlags = 0;
          }

          [v17 setExtraDiscoveryFlags:stackBLEProxControlFlags];
          bleScanRateOverride = [v17 bleScanRateOverride];
          if (v34 || (bleScanRate = [v17 bleScanRateScreenOff]) == 0)
          {
            bleScanRate = [v17 bleScanRate];
          }

          wifiCritical = self->_wifiCritical;
          if (wifiCritical && bleScanRate >= 31)
          {
            if (([v17 useCase] & 0xFFFF0000) == 0x90000)
            {
              v26 = 40;
            }

            else
            {
              v26 = 30;
            }

            v27 = 1;
          }

          else
          {
            v28 = bleScanRate > 30;
            odeonActive = self->_odeonActive;
            if (odeonActive && v28)
            {
              v27 = 2;
            }

            else
            {
              v27 = 0;
            }

            if (odeonActive && v28)
            {
              v26 = 30;
            }

            else
            {
              v26 = bleScanRateOverride;
            }

            if (!wifiCritical && !odeonActive)
            {
              v27 = 0;
              if ([v17 bleScanRateOverride])
              {
                v26 = 0;
              }

              else
              {
                v26 = bleScanRateOverride;
              }
            }
          }

          if (v26 != bleScanRateOverride)
          {
            [v17 setBleScanRateOverride:v26];
            [v17 setSystemOverrideFlags:{objc_msgSend(v17, "systemOverrideFlags") & 0xFFFFFFFC}];
            if (v26)
            {
              [v17 setSystemOverrideFlags:{objc_msgSend(v17, "systemOverrideFlags") | v27}];
            }

            systemOverrideHandler = [v17 systemOverrideHandler];
            v31 = systemOverrideHandler;
            if (systemOverrideHandler)
            {
              (*(systemOverrideHandler + 16))(systemOverrideHandler);
            }
          }

          if (!v4)
          {
            v4 = objc_alloc_init(NSMutableArray);
          }

          [(NSMutableArray *)v4 addObject:v17];
        }
      }
    }

    v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v12);
LABEL_84:

  objc_storeStrong(location, v4);
  [(CBStackBLEScanner *)self->_stackBLEScanner setDiscoveryArray:0];
LABEL_85:
  v5 = [(NSMutableArray *)v4 count]!= 0;

  return v5;
}

- (void)_update
{
  self->_updatePending = 0;
  if (!self->_assertionFlagsValid)
  {
    assertionFlags = self->_assertionFlags;
    self->_assertionFlags = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = self->_xpcConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          activatedController = [*(*(&v22 + 1) + 8 * i) activatedController];
          v10 = activatedController;
          if (activatedController)
          {
            self->_assertionFlags |= [activatedController assertionFlags];
          }
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    self->_assertionFlagsValid = 1;
    v11 = self->_assertionFlags;
    if (v11 != assertionFlags)
    {
      if (dword_100B509C8 <= 30)
      {
        if (dword_100B509C8 != -1 || (v14 = _LogCategory_Initialize(), v11 = self->_assertionFlags, v14))
        {
          v12 = CUPrintFlags32();
          v13 = CUPrintFlags32();
          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _update]", 30, "AssertionFlags changed: %@ (^ %@)", v12, v13, v22);

          v11 = self->_assertionFlags;
        }
      }

      [(CBExtensionsDaemon *)self->_extensionsDaemon setAssertionFlags:v11];
    }
  }

  if (self->_wifiCriticalOverride)
  {
    v15 = self->_wifiCriticalOverride == 1;
  }

  else
  {
    v15 = ([(CUSystemMonitor *)self->_systemMonitor wifiFlags]>> 8) & 1;
  }

  if (self->_wifiCritical != v15)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803594();
    }

    self->_wifiCritical = v15;
    bleDiscoveryArray = self->_bleDiscoveryArray;
    self->_bleDiscoveryArray = 0;
  }

  if ([(CBDaemonServer *)self _identitiesShouldRun])
  {
    [(CBDaemonServer *)self _identitiesEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _identitiesEnsureStopped];
  }

  _bleAdvertiserShouldRun = [(CBDaemonServer *)self _bleAdvertiserShouldRun];
  _stackBLEScannerShouldRun = [(CBDaemonServer *)self _stackBLEScannerShouldRun];
  v19 = _stackBLEScannerShouldRun;
  if ((_bleAdvertiserShouldRun & 1) != 0 || !_stackBLEScannerShouldRun)
  {
    if (!_bleAdvertiserShouldRun)
    {
      goto LABEL_31;
    }
  }

  else if (!self->_stackBLEScannerNeedsAdvertisingAddress)
  {
LABEL_31:
    [(CBDaemonServer *)self _bleAddressMonitorEnsureStopped];
    goto LABEL_34;
  }

  [(CBDaemonServer *)self _bleAddressMonitorEnsureStarted];
LABEL_34:
  if (_bleAdvertiserShouldRun)
  {
    [(CBDaemonServer *)self _bleAdvertiserEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _bleAdvertiserEnsureStopped];
  }

  if ([(CBDaemonServer *)self _stackAccessoryMonitorShouldRun])
  {
    [(CBDaemonServer *)self _stackAccessoryMonitorEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _stackAccessoryMonitorEnsureStopped];
  }

  if (v19)
  {
    [(CBDaemonServer *)self _stackBLEScannerEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _stackBLEScannerEnsureStopped];
  }

  if ([(CBDaemonServer *)self _stackClassicScannerShouldRun])
  {
    [(CBDaemonServer *)self _stackClassicScannerEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _stackClassicScannerEnsureStopped];
  }

  if ([(CBDaemonServer *)self _stackDeviceMonitorShouldRun])
  {
    [(CBDaemonServer *)self _stackDeviceMonitorEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _stackDeviceMonitorEnsureStopped];
  }

  if (_os_feature_enabled_impl())
  {
    if ([(CBDaemonServer *)self _stackPowerSourceMonitorShouldRun])
    {
      [(CBDaemonServer *)self _stackPowerSourceMonitorEnsureStarted];
    }

    else
    {
      [(CBDaemonServer *)self _stackPowerSourceMonitorEnsureStopped];
    }
  }

  if (self->_prefAccessoryDaemonEnabled)
  {
    [(CBDaemonServer *)self _accessoryDaemonEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _accessoryDaemonEnsureStopped];
  }

  if (self->_prefExtensionsEnabled)
  {
    [(CBDaemonServer *)self _extensionsEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _extensionsEnsureStopped];
  }

  _whbDiscoveryShouldRun = [(CBDaemonServer *)self _whbDiscoveryShouldRun];
  v21 = _whbDiscoveryShouldRun;
  if (self->_prefRemoteClientEnabled && (_whbDiscoveryShouldRun & 1) != 0 || self->_prefRemoteServerEnabled)
  {
    [(CBDaemonServer *)self _remoteEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _remoteEnsureStopped];
  }

  if (v21)
  {
    [(CBDaemonServer *)self _whbDiscoveryEnsureStarted];
  }

  else
  {
    [(CBDaemonServer *)self _whbDiscoveryEnsureStopped];
  }
}

- (void)_bleAddressMonitorEnsureStarted
{
  if (!self->_addressMonitor)
  {
    v14 = v2;
    v15 = v3;
    [(CBStackAdaptor *)self->_stackAdaptor addressMonitorClass];
    v5 = objc_alloc_init(objc_opt_class());
    addressMonitor = self->_addressMonitor;
    self->_addressMonitor = v5;

    [(CBStackAddressMonitor *)v5 setDispatchQueue:self->_dispatchQueue];
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000F9C40;
    v11 = &unk_100ADF590;
    v7 = v5;
    v12 = v7;
    selfCopy = self;
    [(CBStackAddressMonitor *)v7 setAddressChangedHandler:&v8];
    [(CBStackAddressMonitor *)v7 activate:v8];
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803A08(v7);
    }

    [(CBDaemonServer *)self _bleAdvertiserAddressChanged:1];
    [(CBDaemonServer *)self _updateSelfAuthTag];
  }
}

- (void)_bleAdvertiserEnsureStarted
{
  v3 = self->_bleAdvertiser;
  v6 = v3;
  v7 = v3 == 0;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100803A68(v3, v4, v5);
      }
    }

    v8 = objc_alloc_init(CBAdvertiserDaemon);
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = v8;

    [(CBAdvertiserDaemon *)v8 setDaemonServer:self];
    [(CBAdvertiserDaemon *)v8 setDispatchQueue:self->_dispatchQueue];
    [(CBAdvertiserDaemon *)v8 setStackAdaptor:self->_stackAdaptor];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000F9C98;
    v26[3] = &unk_100ADF590;
    v6 = v8;
    v27 = v6;
    selfCopy = self;
    [(CBAdvertiserDaemon *)v6 setStateChangedHandler:v26];
  }

  v10 = self->_selfAuthTag;
  selfAuthTag = [(CBAdvertiserDaemon *)v6 selfAuthTag];
  v12 = v10;
  v13 = selfAuthTag;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_13;
  }

  if ((v12 != 0) == (v13 == 0))
  {

    goto LABEL_12;
  }

  v15 = [(NSData *)v12 isEqual:v13];

  if ((v15 & 1) == 0)
  {
LABEL_12:
    [(CBAdvertiserDaemon *)v6 setSelfAuthTag:v12];
    v7 = 1;
  }

LABEL_13:
  advertiserArray = [(CBAdvertiserDaemon *)v6 advertiserArray];
  if (advertiserArray)
  {

LABEL_15:
    v17 = 0;
    goto LABEL_18;
  }

  if (![(NSMutableArray *)self->_bleAdvertiserArray count])
  {
    goto LABEL_15;
  }

  [(CBAdvertiserDaemon *)v6 setAdvertiserArray:self->_bleAdvertiserArray];
  v17 = 1;
LABEL_18:
  _bleAdvertiserUpdateSpatialInteraction = [(CBDaemonServer *)self _bleAdvertiserUpdateSpatialInteraction];
  _bleAdvertiserUpdateWithAuthTagNC = [(CBDaemonServer *)self _bleAdvertiserUpdateWithAuthTagNC];
  if (v7)
  {
    nonConnectableAddressData = [(CBStackAddressMonitor *)self->_addressMonitor nonConnectableAddressData];
    v21 = nonConnectableAddressData == 0;

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000F9CB0;
    v22[3] = &unk_100AE00E0;
    v23 = v6;
    selfCopy2 = self;
    v25 = v21;
    [(CBAdvertiserDaemon *)v23 activateWithCompletion:v22];
  }

  else if ((v17 + _bleAdvertiserUpdateSpatialInteraction) | _bleAdvertiserUpdateWithAuthTagNC && dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100803A84(v6);
  }
}

- (BOOL)_bleAdvertiserUpdateSpatialInteraction
{
  if (!self->_bleAdvertiserSpatialValid)
  {
    v4 = self->_bleAdvertiser;
    if (!v4)
    {
      v2 = 0;
      goto LABEL_122;
    }

    nonConnectableAddressData = [(CBStackAddressMonitor *)self->_addressMonitor nonConnectableAddressData];
    v6 = nonConnectableAddressData;
    if (nonConnectableAddressData)
    {
      fakeNonConnectableAddressData = nonConnectableAddressData;
    }

    else
    {
      fakeNonConnectableAddressData = [(CBStackAddressMonitor *)self->_addressMonitor fakeNonConnectableAddressData];
    }

    v8 = fakeNonConnectableAddressData;

    if ([(CBDaemonServer *)self supportsNCSecondaryAdvertisingInstance])
    {
      nonConnectableSecondaryAddressData = [(CBStackAddressMonitor *)self->_addressMonitor nonConnectableSecondaryAddressData];

      v8 = nonConnectableSecondaryAddressData;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v10 = self->_xpcConnections;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v81 objects:v88 count:16];
    selfCopy = self;
    v71 = v8;
    v74 = v10;
    if (v11)
    {
      v69 = v4;
      v78 = 0;
      v79 = 0;
      v12 = 0;
      v77 = 0;
      v72 = 0;
      v73 = 0;
      v75 = 0;
      v13 = *v82;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v82 != v13)
          {
            objc_enumerationMutation(v10);
          }

          activatedSpatialInteractionSession = [*(*(&v81 + 1) + 8 * i) activatedSpatialInteractionSession];
          v16 = activatedSpatialInteractionSession;
          if (activatedSpatialInteractionSession)
          {
            controlFlags = [activatedSpatialInteractionSession controlFlags];
            if ((controlFlags & 8) == 0)
            {
              v18 = controlFlags;
              if ([v8 length] == 6)
              {
                identifierData = [v16 identifierData];
                if ([identifierData length] == 3)
                {
                  irkData = [v16 irkData];
                  if ([irkData length] == 16)
                  {
                    advertiseRate = [v16 advertiseRate];
                    if (advertiseRate > v12)
                    {
                      LODWORD(v12) = advertiseRate;
                    }

                    if ((v18 & 0x400) == 0)
                    {
                      v87 = 0;
                      v86 = 0;
                      bytes = [v8 bytes];
                      v23 = bytes[2];
                      LODWORD(v86) = *bytes;
                      WORD2(v86) = v23;
                      bytes2 = [identifierData bytes];
                      v25 = bytes2[2];
                      HIWORD(v86) = *bytes2;
                      v87 = v25;
                      [irkData bytes];
                      v85 = bswap64(SipHash());
                      v26 = [[NSData alloc] initWithBytes:&v85 length:3];
                      v27 = v75;
                      if (!v75)
                      {
                        v27 = objc_alloc_init(NSMutableArray);
                      }

                      v75 = v27;
                      [v27 addObject:identifierData];
                      v28 = v79;
                      if (!v79)
                      {
                        v28 = objc_alloc_init(NSMutableArray);
                      }

                      v79 = v28;
                      [v28 addObject:v26];
                    }

                    uwbConfigData = [v16 uwbConfigData];
                    v30 = [uwbConfigData length];
                    v76 = v12;
                    if ((v18 & 2) != 0 && v30)
                    {
                      v31 = uwbConfigData;

                      v72 = v31;
                    }

                    presenceConfigData = [v16 presenceConfigData];
                    v33 = [presenceConfigData length];
                    if ((v18 & 0x4000) != 0 && v33)
                    {
                      v34 = presenceConfigData;

                      v73 = v34;
                      v8 = v71;
                    }

                    v77 |= (v18 & 0x3E0) != 0;
                    v35 = v78 | 0x20;
                    if ((v18 & 0x4000) == 0)
                    {
                      v35 = v78;
                    }

                    v36 = v35 | (v18 >> 7) & 0x10;
                    if ((v18 & 2) != 0)
                    {
                      v36 |= 8u;
                    }

                    LODWORD(v78) = v36;
                    HIDWORD(v78) |= [v16 enableEPAForLEAdvertisement];
                    v37 = [v79 count];

                    if (v37 > 2)
                    {

                      v4 = v69;
                      v11 = v72;
                      v38 = v73;
                      v12 = v76;
                      goto LABEL_47;
                    }

                    v12 = v76;
                    v10 = v74;
                  }
                }
              }
            }
          }
        }

        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v81 objects:v88 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v4 = v69;
      v11 = v72;
      v38 = v73;
LABEL_47:
      v39 = v78;
      if ((v77 & 1) == 0 || !selfCopy->_identitySelf || [v8 length] != 6)
      {
LABEL_60:
        v42 = [v79 count] & 3 | v39;
        if (v11)
        {
          LOBYTE(v42) = v42 | 0x40;
        }

        if (v38)
        {
          v43 = v42 | 0x80;
        }

        else
        {
          v43 = v42;
        }

        spatialInteractionAdvertiseRate = [(CBAdvertiserDaemon *)v4 spatialInteractionAdvertiseRate];
        v2 = v12 != spatialInteractionAdvertiseRate;
        if (v12 != spatialInteractionAdvertiseRate)
        {
          [(CBAdvertiserDaemon *)v4 setSpatialInteractionAdvertiseRate:v12];
        }

        v45 = v43;
        if (v43 != [(CBAdvertiserDaemon *)v4 spatialInteractionFlags])
        {
          [(CBAdvertiserDaemon *)v4 setSpatialInteractionFlags:v43];
          v2 = 1;
        }

        if ([(CBAdvertiserDaemon *)v4 spatialInteractionConfigFlags]!= (v38 != 0))
        {
          [(CBAdvertiserDaemon *)v4 setSpatialInteractionConfigFlags:v38 != 0];
          v2 = 1;
        }

        spatialInteractionIdentifiers = [(CBAdvertiserDaemon *)v4 spatialInteractionIdentifiers];
        v47 = v79;
        v48 = spatialInteractionIdentifiers;
        v49 = v48;
        if (v47 == v48)
        {

          goto LABEL_78;
        }

        if ((v47 != 0) != (v48 == 0))
        {
          v50 = [v47 isEqual:v48];

          if (v50)
          {
LABEL_78:
            spatialInteractionUWBConfigData = [(CBAdvertiserDaemon *)v4 spatialInteractionUWBConfigData];
            v52 = v11;
            v53 = spatialInteractionUWBConfigData;
            v54 = v53;
            if (v52 == v53)
            {

              goto LABEL_85;
            }

            if ((v52 != 0) != (v53 == 0))
            {
              v55 = [v52 isEqual:v53];

              if (v55)
              {
LABEL_85:
                spatialInteractionPresenceConfigData = [(CBAdvertiserDaemon *)v4 spatialInteractionPresenceConfigData];
                v57 = v38;
                v58 = spatialInteractionPresenceConfigData;
                v59 = v58;
                if (v57 == v58)
                {

                  goto LABEL_92;
                }

                if ((v38 != 0) != (v58 == 0))
                {
                  v60 = [v57 isEqual:v58];

                  if (v60)
                  {
LABEL_92:
                    if ((BYTE4(v78) & 1) != [(CBAdvertiserDaemon *)v4 advertiserEnableEPA])
                    {
                      [(CBAdvertiserDaemon *)v4 setAdvertiserEnableEPA:?];
                      v2 = 1;
                    }

                    if ([v47 count])
                    {
                      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
                      {
                        sub_100803C2C(v71, v45, v75, v47);
                      }

                      bleAdvertiserSpatialLingerTimer = selfCopy->_bleAdvertiserSpatialLingerTimer;
                      if (!bleAdvertiserSpatialLingerTimer)
                      {
                        goto LABEL_121;
                      }

                      if (dword_100B509C8 >= 31)
                      {
                        v62 = bleAdvertiserSpatialLingerTimer;
                      }

                      else
                      {
                        if (dword_100B509C8 != -1 || _LogCategory_Initialize())
                        {
                          sub_100803CE0();
                        }

                        v62 = selfCopy->_bleAdvertiserSpatialLingerTimer;
                        if (!v62)
                        {
                          goto LABEL_121;
                        }
                      }

                      dispatch_source_cancel(v62);
                      v64 = selfCopy->_bleAdvertiserSpatialLingerTimer;
                      selfCopy->_bleAdvertiserSpatialLingerTimer = 0;
                    }

                    else
                    {
                      if (![v49 count] || selfCopy->_bleAdvertiserSpatialLingerTimer)
                      {
                        if (![(CBAdvertiserDaemon *)v4 spatialInteractionFlags])
                        {
                          spatialInteractionIdentifiers2 = [(CBAdvertiserDaemon *)v4 spatialInteractionIdentifiers];
                          if (spatialInteractionIdentifiers2 || ([(CBAdvertiserDaemon *)v4 spatialInteractionUWBConfigData], (spatialInteractionIdentifiers2 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                          }

                          else
                          {
                            spatialInteractionPresenceConfigData2 = [(CBAdvertiserDaemon *)v4 spatialInteractionPresenceConfigData];

                            if (!spatialInteractionPresenceConfigData2)
                            {
                              goto LABEL_121;
                            }
                          }
                        }

                        if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
                        {
                          sub_100803D58();
                        }

                        [(CBAdvertiserDaemon *)v4 setSpatialInteractionFlags:0];
                        [(CBAdvertiserDaemon *)v4 setSpatialInteractionIdentifiers:0];
                        [(CBAdvertiserDaemon *)v4 setSpatialInteractionUWBConfigData:0];
                        [(CBAdvertiserDaemon *)v4 setSpatialInteractionPresenceConfigData:0];
                        v2 = 1;
                        goto LABEL_121;
                      }

                      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
                      {
                        sub_100803D14();
                      }

                      [(CBAdvertiserDaemon *)v4 setSpatialInteractionIdentifiers:&__NSArray0__struct];
                      v65 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
                      v66 = selfCopy->_bleAdvertiserSpatialLingerTimer;
                      selfCopy->_bleAdvertiserSpatialLingerTimer = v65;
                      v62 = v65;

                      handler[0] = _NSConcreteStackBlock;
                      handler[1] = 3221225472;
                      handler[2] = sub_1000FA154;
                      handler[3] = &unk_100ADF5B8;
                      handler[4] = selfCopy;
                      dispatch_source_set_event_handler(v62, handler);
                      CUDispatchTimerSet();
                      dispatch_activate(v62);
                    }

LABEL_121:
                    selfCopy->_bleAdvertiserSpatialValid = 1;

LABEL_122:
                    return v2;
                  }
                }

                else
                {
                }

                [(CBAdvertiserDaemon *)v4 setSpatialInteractionPresenceConfigData:v57];
                v2 = 1;
                goto LABEL_92;
              }
            }

            else
            {
            }

            [(CBAdvertiserDaemon *)v4 setSpatialInteractionUWBConfigData:v52];
            v2 = 1;
            goto LABEL_85;
          }
        }

        else
        {
        }

        [(CBAdvertiserDaemon *)v4 setSpatialInteractionIdentifiers:v47];
        v2 = 1;
        goto LABEL_78;
      }

      v74 = [(RPIdentity *)selfCopy->_identitySelf authTagForData:v8 type:2 error:0];
      if (v74)
      {
        if ([v79 count] >= 3)
        {
          do
          {
            [v79 removeLastObject];
          }

          while ([v79 count] > 2);
        }

        if ([v75 count] >= 3)
        {
          do
          {
            [v75 removeLastObject];
          }

          while ([v75 count] > 2);
        }

        v40 = v75;
        if (!v75)
        {
          v40 = objc_alloc_init(NSMutableArray);
        }

        v75 = v40;
        [v40 insertObject:v8 atIndex:0];
        v41 = v79;
        if (!v79)
        {
          v41 = objc_alloc_init(NSMutableArray);
        }

        v79 = v41;
        [v41 insertObject:v74 atIndex:0];
      }
    }

    else
    {
      v38 = 0;
      BYTE4(v78) = 0;
      v12 = 0;
      v39 = 0;
      v79 = 0;
      v75 = 0;
    }

    goto LABEL_60;
  }

  return 0;
}

- (BOOL)_stackAccessoryMonitorShouldRun
{
  _firstUnlockedOrAllowedBefore = [(CBDaemonServer *)self _firstUnlockedOrAllowedBefore];
  if (_firstUnlockedOrAllowedBefore)
  {
    stackController = self->_stackController;

    LOBYTE(_firstUnlockedOrAllowedBefore) = [(CBStackController *)stackController poweredOn];
  }

  return _firstUnlockedOrAllowedBefore;
}

- (void)_stackBLEScannerEnsureStarted
{
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  selfCopy = self;
  obj = self->_xpcConnections;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v2)
  {
    v3 = v2;
    allValues = 0;
    v5 = *v65;
    v47 = *v65;
    do
    {
      v6 = 0;
      v48 = v3;
      do
      {
        if (*v65 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v64 + 1) + 8 * v6);
        activatedDiscovery = [v7 activatedDiscovery];
        v9 = activatedDiscovery;
        if (activatedDiscovery)
        {
          disabledPending = [activatedDiscovery disabledPending];
          if (disabledPending != [v9 disabledActive])
          {
            if (!allValues)
            {
              allValues = [(NSMutableDictionary *)selfCopy->_deviceMap allValues];
            }

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            allValues = allValues;
            v11 = [allValues countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v61;
              do
              {
                for (i = 0; i != v12; i = i + 1)
                {
                  if (*v61 != v13)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v15 = *(*(&v60 + 1) + 8 * i);
                  v16 = objc_autoreleasePoolPush();
                  if (disabledPending)
                  {
                    [v7 reportDeviceLost:v15];
                  }

                  else
                  {
                    [v7 reportDeviceFound:v15];
                  }

                  objc_autoreleasePoolPop(v16);
                }

                v12 = [allValues countByEnumeratingWithState:&v60 objects:v68 count:16];
              }

              while (v12);
            }

            [v9 setDisabledActive:disabledPending];
            v5 = v47;
            v3 = v48;
          }
        }

        v6 = v6 + 1;
      }

      while (v6 != v3);
      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v3);
  }

  else
  {
    allValues = 0;
  }

  v17 = selfCopy;
  v18 = selfCopy->_stackBLEScanner;
  if (!v18)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000D6494();
    }

    [(CBStackAdaptor *)selfCopy->_stackAdaptor bleScannerClass];
    v19 = objc_alloc_init(objc_opt_class());
    stackBLEScanner = v17->_stackBLEScanner;
    v17->_stackBLEScanner = v19;

    [(CBStackBLEScanner *)v19 setDispatchQueue:v17->_dispatchQueue];
    [(CBStackBLEScanner *)v19 setIdentifier:@"CBDaemon"];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100046268;
    v57[3] = &unk_100ADF718;
    v21 = v19;
    v58 = v21;
    v59 = v17;
    [(CBStackBLEScanner *)v21 setDeviceFoundHandler:v57];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000B6EC4;
    v54[3] = &unk_100ADF718;
    v22 = v21;
    v55 = v22;
    v56 = v17;
    [(CBStackBLEScanner *)v22 setDeviceLostHandler:v54];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000FA50C;
    v51[3] = &unk_100AE0158;
    v18 = v22;
    v52 = v18;
    v53 = v17;
    [(CBStackBLEScanner *)v18 setDevicesBufferedHandler:v51];
  }

  discoveryArray = [(CBStackBLEScanner *)v18 discoveryArray];
  if (discoveryArray)
  {

LABEL_32:
    v24 = 0;
    goto LABEL_35;
  }

  if (![(NSMutableArray *)v17->_bleDiscoveryArray count])
  {
    goto LABEL_32;
  }

  [(CBStackBLEScanner *)v18 setDiscoveryArray:v17->_bleDiscoveryArray];
  v24 = 1;
LABEL_35:
  if (([(CUSystemMonitor *)v17->_systemMonitor screenOn]& 1) == 0)
  {
    if (![(CBStackBLEScanner *)v18 screenOn])
    {
      goto LABEL_49;
    }

    [(CBStackBLEScanner *)v18 setScreenOn:0];
    goto LABEL_48;
  }

  v25 = +[BLSBacklight sharedBacklight];
  if ([v25 isAlwaysOnEnabled])
  {
    v26 = v46->_screenUndimmed != 0;
  }

  else
  {
    v26 = 1;
  }

  v17 = v46;
  if (v26 == [(CBStackBLEScanner *)v18 screenOn])
  {
    goto LABEL_49;
  }

  [(CBStackBLEScanner *)v18 setScreenOn:v26];
  if (!v26 || !v46->_stackBLEProxControlAnyDeviceClose)
  {
LABEL_48:
    v24 = 1;
    goto LABEL_49;
  }

  sub_1000E7508(0);
  v29 = sub_1000D6418(v27, v28);
  v31 = sub_1000D6450(0, v30);
  if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v32 = v31;
    if (os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v32, "HandoffScanStart", "Screen ON", buf, 2u);
    }
  }

  v24 = 1;
  v17 = v46;
LABEL_49:
  v33 = v17->_selfAuthTag;
  selfAuthTag = [(CBStackBLEScanner *)v18 selfAuthTag];
  v35 = v33;
  v36 = selfAuthTag;
  v37 = v36;
  if (v35 == v36)
  {

    goto LABEL_56;
  }

  if ((v35 != 0) == (v36 == 0))
  {

    goto LABEL_55;
  }

  v38 = [(NSData *)v35 isEqual:v36];

  if ((v38 & 1) == 0)
  {
LABEL_55:
    [(CBStackBLEScanner *)v18 setSelfAuthTag:v35];
    v24 = 1;
  }

LABEL_56:
  v39 = v46->_selfAuthTagNonConnectable;
  selfAuthTagNonConnectable = [(CBStackBLEScanner *)v18 selfAuthTagNonConnectable];
  v41 = v39;
  v42 = selfAuthTagNonConnectable;
  v43 = v42;
  if (v41 == v42)
  {

    goto LABEL_61;
  }

  if ((v41 != 0) != (v42 == 0))
  {
    v44 = [(NSData *)v41 isEqual:v42];

    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_61:
    if (!v24)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_64:
  [(CBStackBLEScanner *)v18 setSelfAuthTagNonConnectable:v41];
LABEL_65:
  [(CBStackBLEScanner *)v18 activate];
LABEL_66:
}

- (BOOL)_stackClassicScannerShouldRun
{
  if ([(CBDaemonServer *)self _firstUnlockedOrAllowedBefore]&& [(CBStackController *)self->_stackController poweredOn])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_xpcConnections;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          activatedDiscovery = [*(*(&v10 + 1) + 8 * i) activatedDiscovery];
          discoveryFlags = [activatedDiscovery discoveryFlags];

          if ((discoveryFlags & 0x4000000000000) != 0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_14;
          }
        }

        v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_stackDeviceMonitorShouldRun
{
  _firstUnlockedOrAllowedBefore = [(CBDaemonServer *)self _firstUnlockedOrAllowedBefore];
  if (_firstUnlockedOrAllowedBefore)
  {
    _firstUnlockedOrAllowedBefore = [(CBStackController *)self->_stackController poweredOn];
    if (_firstUnlockedOrAllowedBefore)
    {
      if (self->_deviceMonitorFlagsValid)
      {
        v4 = self->_deviceMonitorFlags == 0;
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v5 = self->_xpcConnections;
        v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v16;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v5);
              }

              activatedDiscovery = [*(*(&v15 + 1) + 8 * i) activatedDiscovery];
              discoveryFlags = [activatedDiscovery discoveryFlags];

              if ((discoveryFlags & 0xA00000) != 0)
              {
                v13 = discoveryFlags;
              }

              else
              {
                v13 = 0;
              }

              v8 |= v13;
            }

            v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        self->_deviceMonitorFlags = v8;
        self->_deviceMonitorFlagsValid = 1;
        v4 = v8 == 0;
      }

      LOBYTE(_firstUnlockedOrAllowedBefore) = !v4;
    }
  }

  return _firstUnlockedOrAllowedBefore;
}

- (BOOL)_bleAdvertiserUpdateWithAuthTagNC
{
  selfCopy = self;
  v3 = self->_bleAdvertiser;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_103;
  }

  v93 = 0;
  nonConnectableAddressData = [(CBStackAddressMonitor *)selfCopy->_addressMonitor nonConnectableAddressData];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  advertiserArray = [(CBAdvertiserDaemon *)v3 advertiserArray];
  v5 = [advertiserArray countByEnumeratingWithState:&v89 objects:v95 count:16];
  v6 = v5 != 0;
  if (!v5)
  {
    v70 = 0;
    v72 = 0;
    v76 = 0;
    goto LABEL_101;
  }

  v65 = v3;
  nearbyInfoV2NearbyFaceTimeData = 0;
  v66 = 0;
  v69 = 0;
  v70 = 0;
  v78 = 0;
  v72 = 0;
  obj = advertiserArray;
  v8 = 0;
  v9 = *v90;
  v74 = selfCopy;
  do
  {
    v10 = 0;
    do
    {
      if (*v90 != v9)
      {
        objc_enumerationMutation(advertiserArray);
      }

      v11 = *(*(&v89 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      nearbyInfoV2DecryptedFlags = [v11 nearbyInfoV2DecryptedFlags];
      v93 |= nearbyInfoV2DecryptedFlags;
      v8 |= [v11 nearbyInfoV2Flags] & 4;
      airplaySourceFlags = [v11 airplaySourceFlags];
      v15 = airplaySourceFlags;
      if (!v8 && !airplaySourceFlags && !v93)
      {
        goto LABEL_42;
      }

      if (!selfCopy->_identitySelf || [nonConnectableAddressData length] != 6)
      {
        goto LABEL_38;
      }

      if (v8 || v93)
      {
        v75 = nearbyInfoV2NearbyFaceTimeData;
        nearbyInfoV2AuthTagData = [v11 nearbyInfoV2AuthTagData];

        nearbyInfoV2RapportIRKData = [v11 nearbyInfoV2RapportIRKData];

        v17 = [sub_1001048CC() authTagForData:? type:? error:?];
        deviceIRKData = [(RPIdentity *)selfCopy->_identitySelf deviceIRKData];
        v19 = nearbyInfoV2AuthTagData;
        v20 = v17;
        v21 = v19;
        v22 = v20;
        v72 = v21;
        if (v21 == v20)
        {

          goto LABEL_21;
        }

        if ((v21 != 0) != (v20 == 0))
        {
          v71 = [v21 isEqual:v20];

          if (v71)
          {
LABEL_21:
            v23 = nearbyInfoV2RapportIRKData;
            v24 = deviceIRKData;
            v25 = v24;
            v70 = v23;
            if (v23 == v24)
            {
            }

            else
            {
              if ((v23 != 0) != (v24 == 0))
              {
                v68 = [v23 isEqual:v24];

                if (v68)
                {
                  goto LABEL_28;
                }
              }

              else
              {
              }

              [v11 setNearbyInfoV2RapportIRKData:v25];
              v66 = 1;
            }

LABEL_28:

            selfCopy = v74;
            nearbyInfoV2NearbyFaceTimeData = v75;
            advertiserArray = obj;
            goto LABEL_29;
          }
        }

        else
        {
        }

        [v11 setNearbyInfoV2AuthTagData:v22];
        v66 = 1;
        goto LABEL_21;
      }

LABEL_29:
      if ((v15 & 0x10) != 0)
      {
        v26 = nearbyInfoV2NearbyFaceTimeData;
        airplaySourceAuthTagData = [v11 airplaySourceAuthTagData];

        v28 = [sub_1001048CC() authTagForData:? type:? error:?];
        v29 = airplaySourceAuthTagData;
        v30 = v28;
        v31 = v29;
        v32 = v30;
        v69 = v31;
        if (v31 == v30)
        {
        }

        else
        {
          if ((v31 != 0) != (v30 == 0))
          {
            v33 = [v31 isEqual:v30];

            if (v33)
            {
              goto LABEL_37;
            }
          }

          else
          {
          }

          [v11 setAirplaySourceAuthTagData:v32];
          v66 = 1;
        }

LABEL_37:

        advertiserArray = obj;
        selfCopy = v74;
        nearbyInfoV2NearbyFaceTimeData = v26;
      }

LABEL_38:
      if (!v78)
      {
        LODWORD(v78) = [v11 nearbyInfoV2InvitationCounter];
      }

      if (HIDWORD(v78))
      {
        if (nearbyInfoV2NearbyFaceTimeData)
        {
          goto LABEL_42;
        }
      }

      else
      {
        HIDWORD(v78) = [v11 nearbyInfoV2InvitationRouteType];
        if (nearbyInfoV2NearbyFaceTimeData)
        {
          goto LABEL_42;
        }
      }

      nearbyInfoV2NearbyFaceTimeData = [v11 nearbyInfoV2NearbyFaceTimeData];
LABEL_42:
      objc_autoreleasePoolPop(v12);
      v10 = v10 + 1;
    }

    while (v5 != v10);
    v34 = [advertiserArray countByEnumeratingWithState:&v89 objects:v95 count:16];
    v5 = v34;
  }

  while (v34);
  v76 = nearbyInfoV2NearbyFaceTimeData;

  if (v66)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v3 = v65;
    advertiserArray = [(CBAdvertiserDaemon *)v65 advertiserArray];
    v35 = [advertiserArray countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v86;
      if (v78)
      {
        v38 = HIDWORD(v78) == 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = !v38;
      v79 = v39;
      while (1)
      {
        v40 = 0;
        do
        {
          if (*v86 != v37)
          {
            objc_enumerationMutation(advertiserArray);
          }

          v41 = *(*(&v85 + 1) + 8 * v40);
          nearbyInfoV2AuthTagData2 = [v41 nearbyInfoV2AuthTagData];
          if (nearbyInfoV2AuthTagData2)
          {
            v43 = nearbyInfoV2AuthTagData2;
            if ([v41 nearbyInfoV2Flags])
            {
            }

            else
            {
              nearbyInfoV2DecryptedFlags2 = [v41 nearbyInfoV2DecryptedFlags];

              if (!nearbyInfoV2DecryptedFlags2)
              {
                goto LABEL_91;
              }
            }

            nearbyInfoV2AuthTagData3 = [v41 nearbyInfoV2AuthTagData];
            Current = CFAbsoluteTimeGetCurrent();
            v83 = 0xBFF0000000000000;
            v84 = 0xBFF0000000000000;
            v82 = -1;
            v47 = v74;
            if (!v74->_prefSystemReferenceTimeDisabled && TMGetReferenceTime() && v82)
            {
              v50 = *&v84;
              v48 = v76;
              if (dword_100B509C8 > 20)
              {
                v51 = *&v84;
              }

              else
              {
                v51 = *&v84;
                if (dword_100B509C8 != -1 || (v62 = _LogCategory_Initialize(), v51 = *&v84, v62))
                {
                  v52 = [NSDate dateWithTimeIntervalSinceReferenceDate:v51];
                  v53 = [v52 description];
                  uTF8String = [v53 UTF8String];
                  LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _bleAdvertiserUpdateWithAuthTagNC]", 20, "System reference time for advertising %f, (%s). delta: %f ±%f reliability %d for auth tag: %@", *&v51, uTF8String, v50 - Current, v83, v82, nearbyInfoV2AuthTagData3);

                  v47 = v74;
                  v48 = v76;
                  v51 = *&v84;
                }
              }
            }

            else
            {
              v48 = v76;
              if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
              {
                v49 = "not available";
                if (v74->_prefSystemReferenceTimeDisabled)
                {
                  v49 = "disabled";
                }

                LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _bleAdvertiserUpdateWithAuthTagNC]", 20, "System reference time for advertising '%s' for auth tag: %@", v49, nearbyInfoV2AuthTagData3);
              }

              v51 = Current;
            }

            v55 = v93;
            if ((v93 & 1) == 0)
            {
              v55 = v93 | v79;
              v93 |= v79;
            }

            if ((v55 & 0x10) == 0)
            {
              if (v48)
              {
                v55 |= 0x10u;
              }

              v93 = v55;
            }

            v81 = ((v51 + kCFAbsoluteTimeIntervalSince1970) / 7200.0) * 7200.0 - kCFAbsoluteTimeIntervalSince1970;
            v56 = +[NSMutableData data];
            v57 = [NSData dataWithBytes:"bleAdv22IauthTag" length:16];
            sub_1000B6FF0(v57);

            v58 = [NSData dataWithBytes:&v81 length:8];
            sub_1000B6FF0(v58);

            v59 = [NSData dataWithBytes:&v93 length:1];
            sub_1000B6FF0(v59);

            [v56 appendData:nearbyInfoV2AuthTagData3];
            v60 = [(RPIdentity *)v47->_identitySelf authTagForData:v56 type:2 error:0];
            [v41 setNearbyInfoV2AuthIntegrityTagData:v60];
            if (v47->_prefAdvertiseRandomData && (v93 & 8) != 0 && !v76)
            {
              *(__buf + 3) = 0;
              __buf[0] = 0;
              arc4random_buf(__buf, 5uLL);
              v61 = [NSData dataWithBytes:__buf length:5];
              [v41 setRandomData:v61];
            }

            if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _bleAdvertiserUpdateWithAuthTagNC]", 20, "IntegrityTag parameters advertisting: AT %@, IT %@, CBIN %u, T: %f, F2: %u", nearbyInfoV2AuthTagData3, v60, ((v51 + kCFAbsoluteTimeIntervalSince1970) / 7200.0), *&v81, v93);
            }
          }

LABEL_91:
          v40 = v40 + 1;
        }

        while (v36 != v40);
        v63 = [advertiserArray countByEnumeratingWithState:&v85 objects:v94 count:16];
        v36 = v63;
        if (!v63)
        {
          v3 = v65;
          v6 = 1;
          v5 = v69;
          goto LABEL_101;
        }
      }
    }

    v6 = 1;
    v5 = v69;
LABEL_101:
  }

  else
  {
    v6 = 0;
    v3 = v65;
    v5 = v69;
  }

LABEL_103:
  return v6;
}

- (void)_stackAccessoryMonitorEnsureStarted
{
  v3 = self->_stackAccessoryMonitor;
  v6 = v3;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100803DA8(v3, v4, v5);
      }
    }

    [(CBStackAdaptor *)self->_stackAdaptor accessoryMonitorClass];
    v7 = objc_alloc_init(objc_opt_class());
    stackAccessoryMonitor = self->_stackAccessoryMonitor;
    self->_stackAccessoryMonitor = v7;

    [(CBStackAccessoryMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FA268;
    v16[3] = &unk_100AE0108;
    v9 = v7;
    v17 = v9;
    selfCopy = self;
    [(CBStackAccessoryMonitor *)v9 setAudioAccessoryEventHandler:v16];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000FA3C8;
    v13 = &unk_100AE0130;
    v6 = v9;
    v14 = v6;
    selfCopy2 = self;
    [(CBStackAccessoryMonitor *)v6 setAudioAccessoryInfoChangedHandler:&v10];

    [(CBStackAccessoryMonitor *)v6 activate:v10];
  }
}

- (BOOL)_supportsProxControl
{
  if (qword_100B55278 != -1)
  {
    sub_10080570C();
  }

  return byte_100B55280;
}

- (void)_stackClassicScannerEnsureStopped
{
  if (self->_stackClassicScanner)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803EE0(self, a2, v2);
      }
    }

    [(CBStackBLEScanner *)selfCopy->_stackClassicScanner invalidate];
    stackClassicScanner = selfCopy->_stackClassicScanner;
    selfCopy->_stackClassicScanner = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)selfCopy->_deviceMap allValues];
    v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          [(CBDaemonServer *)selfCopy _stackClassicScannerDeviceLost:v10];
          objc_autoreleasePoolPop(v11);
        }

        v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_stackDeviceMonitorEnsureStarted
{
  v3 = self->_stackDeviceMonitor;
  v6 = v3;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100803F34(v3, v4, v5);
      }
    }

    [(CBStackAdaptor *)self->_stackAdaptor deviceMonitorClass];
    v7 = objc_alloc_init(objc_opt_class());
    stackDeviceMonitor = self->_stackDeviceMonitor;
    self->_stackDeviceMonitor = v7;

    [(CBStackDeviceMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E3FDC;
    v17[3] = &unk_100ADF718;
    v9 = v7;
    v18 = v9;
    selfCopy = self;
    [(CBStackDeviceMonitor *)v9 setDeviceFoundHandler:v17];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000FB4E0;
    v14 = &unk_100ADF718;
    v6 = v9;
    v15 = v6;
    selfCopy2 = self;
    [(CBStackDeviceMonitor *)v6 setDeviceLostHandler:&v11];
  }

  deviceMonitorFlags = self->_deviceMonitorFlags;
  if (deviceMonitorFlags != [(CBStackDeviceMonitor *)v6 discoveryFlags:v11])
  {
    [(CBStackDeviceMonitor *)v6 setDiscoveryFlags:self->_deviceMonitorFlags];
    [(CBStackDeviceMonitor *)v6 activate];
  }
}

- (void)_accessoryDaemonEnsureStarted
{
  if (!self->_accessoryDaemon)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803FA4(self, a2, v2);
      }
    }

    v5 = objc_alloc_init(CBAccessoryDaemon);
    accessoryDaemon = selfCopy->_accessoryDaemon;
    selfCopy->_accessoryDaemon = v5;

    [(CBAccessoryDaemon *)selfCopy->_accessoryDaemon setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBAccessoryDaemon *)selfCopy->_accessoryDaemon setDaemonServer:selfCopy];
    v7 = selfCopy->_accessoryDaemon;

    [(CBAccessoryDaemon *)v7 activate];
  }
}

- (void)_extensionsEnsureStarted
{
  if (!self->_extensionsDaemon)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100804224(self, a2, v2);
      }
    }

    v5 = objc_alloc_init(CBExtensionsDaemon);
    extensionsDaemon = selfCopy->_extensionsDaemon;
    selfCopy->_extensionsDaemon = v5;

    [(CBExtensionsDaemon *)selfCopy->_extensionsDaemon setDispatchQueue:selfCopy->_dispatchQueue];
    [(CBExtensionsDaemon *)selfCopy->_extensionsDaemon setDaemonServer:selfCopy];
    v7 = selfCopy->_extensionsDaemon;

    [(CBExtensionsDaemon *)v7 activate];
  }
}

- (BOOL)_whbDiscoveryShouldRun
{
  if (!self->_prefRemoteClientEnabled || ![(CUSystemMonitor *)self->_systemMonitor firstUnlocked])
  {
    return 0;
  }

  if (self->_prefWHBDiscoveryAlways)
  {
    return 1;
  }

  v5 = self->_whbDiscoveryArray;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_xpcConnections;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v6 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          activatedDiscoveryWHB = [*(*(&v13 + 1) + 8 * i) activatedDiscoveryWHB];
          if (activatedDiscoveryWHB)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(NSMutableArray);
            }

            [(NSMutableArray *)v6 addObject:activatedDiscoveryWHB];
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&self->_whbDiscoveryArray, v6);
    [(CBWHBDiscoveryDaemon *)self->_whbDiscoveryDaemon setDiscoveryArray:0];
  }

  v3 = [(NSMutableArray *)v6 count]!= 0;

  return v3;
}

- (void)_remoteEnsureStopped
{
  selfCopy = self;
  if (self->_remoteClient)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100804848(self, a2, v2);
      }
    }

    [(RPCompanionLinkClient *)selfCopy->_remoteClient invalidate];
    remoteClient = selfCopy->_remoteClient;
    selfCopy->_remoteClient = 0;

    selfCopy->_remoteRequestRegistered = 0;
  }

  if (selfCopy->_remoteServer)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100804864(self, a2, v2);
      }
    }

    [(RPServer *)selfCopy->_remoteServer invalidate];
    remoteServer = selfCopy->_remoteServer;
    selfCopy->_remoteServer = 0;
  }

  if (selfCopy->_coexNotificationSetup)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:selfCopy name:@"com.apple.bluetooth.leconnection" object:0];

    selfCopy->_coexNotificationSetup = 0;
  }
}

- (void)_whbDiscoveryEnsureStopped
{
  if (self->_whbDiscoveryDaemon)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100804ABC(self, a2, v2);
      }
    }

    whbDiscoveryArray = selfCopy->_whbDiscoveryArray;
    selfCopy->_whbDiscoveryArray = 0;

    [(CBWHBDiscoveryDaemon *)selfCopy->_whbDiscoveryDaemon invalidate];
    whbDiscoveryDaemon = selfCopy->_whbDiscoveryDaemon;
    selfCopy->_whbDiscoveryDaemon = 0;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues = [(NSMutableDictionary *)selfCopy->_whbDeviceMap allValues];
    v7 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          [(CBDaemonServer *)selfCopy _whbDiscoveryDeviceLost:*(*(&v20 + 1) + 8 * i)];
        }

        v8 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = selfCopy->_xpcConnections;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * j) whbStop];
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)_identitiesEnsureStopped
{
  identitiesNotifyToken = self->_identitiesNotifyToken;
  if (identitiesNotifyToken != -1)
  {
    if (dword_100B509C8 > 30)
    {
      goto LABEL_6;
    }

    if (dword_100B509C8 != -1 || (identitiesNotifyToken = _LogCategory_Initialize(), identitiesNotifyToken))
    {
      sub_100804294(identitiesNotifyToken, a2, v2);
    }

    LODWORD(identitiesNotifyToken) = self->_identitiesNotifyToken;
    if (identitiesNotifyToken != -1)
    {
LABEL_6:
      notify_cancel(identitiesNotifyToken);
      self->_identitiesNotifyToken = -1;
    }
  }

  identityArray = self->_identityArray;
  self->_identityArray = 0;

  identifyDevices = self->_identifyDevices;
  self->_identifyDevices = 0;
}

- (void)_bleAddressMonitorEnsureStopped
{
  [(CBStackAddressMonitor *)self->_addressMonitor invalidate];
  addressMonitor = self->_addressMonitor;
  self->_addressMonitor = 0;
}

- (void)_bleAdvertiserEnsureStopped
{
  if (self->_bleAdvertiser)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803BA8(self, a2, v2);
      }
    }

    bleAdvertiserArray = selfCopy->_bleAdvertiserArray;
    selfCopy->_bleAdvertiserArray = 0;

    [(CBAdvertiserDaemon *)selfCopy->_bleAdvertiser invalidate];
    bleAdvertiser = selfCopy->_bleAdvertiser;
    selfCopy->_bleAdvertiser = 0;

    selfCopy->_bleAdvertiserSpatialValid = 0;
    bleAdvertiserSpatialLingerTimer = selfCopy->_bleAdvertiserSpatialLingerTimer;
    if (bleAdvertiserSpatialLingerTimer)
    {
      v7 = bleAdvertiserSpatialLingerTimer;
      dispatch_source_cancel(v7);
      v8 = selfCopy->_bleAdvertiserSpatialLingerTimer;
      selfCopy->_bleAdvertiserSpatialLingerTimer = 0;
    }

    bleAdvertiserSpatialRestartTimer = selfCopy->_bleAdvertiserSpatialRestartTimer;
    if (bleAdvertiserSpatialRestartTimer)
    {
      v11 = bleAdvertiserSpatialRestartTimer;
      dispatch_source_cancel(v11);
      v10 = selfCopy->_bleAdvertiserSpatialRestartTimer;
      selfCopy->_bleAdvertiserSpatialRestartTimer = 0;
    }
  }
}

- (void)_stackAccessoryMonitorEnsureStopped
{
  if (self->_stackAccessoryMonitor)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803DC4(self, a2, v2);
      }
    }

    [(CBStackAccessoryMonitor *)selfCopy->_stackAccessoryMonitor invalidate];
    stackAccessoryMonitor = selfCopy->_stackAccessoryMonitor;
    selfCopy->_stackAccessoryMonitor = 0;
  }
}

- (void)_stackBLEScannerEnsureStopped
{
  if (self->_stackBLEScanner)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1000C8AA4(self, a2, v2);
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = selfCopy->_xpcConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          activatedDiscovery = [*(*(&v28 + 1) + 8 * i) activatedDiscovery];
          v10 = activatedDiscovery;
          if (activatedDiscovery)
          {
            [activatedDiscovery setDisabledActive:0];
            [v10 setDisabledPending:0];
          }
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }

    bleDiscoveryArray = selfCopy->_bleDiscoveryArray;
    selfCopy->_bleDiscoveryArray = 0;

    [(CBStackBLEScanner *)selfCopy->_stackBLEScanner invalidate];
    stackBLEScanner = selfCopy->_stackBLEScanner;
    selfCopy->_stackBLEScanner = 0;

    if (selfCopy->_assertionFlags)
    {
      v20 = mach_absolute_time();
      if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000C8CB8();
      }

      v21 = dispatch_time(0, 10000000000);
      dispatchQueue = selfCopy->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FA6B4;
      block[3] = &unk_100ADF688;
      block[4] = selfCopy;
      block[5] = v20;
      dispatch_after(v21, dispatchQueue, block);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      allValues = [(NSMutableDictionary *)selfCopy->_deviceMap allValues];
      v14 = [allValues countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(allValues);
            }

            v18 = *(*(&v23 + 1) + 8 * j);
            v19 = objc_autoreleasePoolPush();
            [(CBDaemonServer *)selfCopy _stackBLEScannerDeviceLost:v18];
            objc_autoreleasePoolPop(v19);
          }

          v15 = [allValues countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)_stackDeviceMonitorEnsureStopped
{
  if (self->_stackDeviceMonitor)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803F50(self, a2, v2);
      }
    }

    selfCopy->_deviceMonitorFlagsValid = 0;
    [(CBStackDeviceMonitor *)selfCopy->_stackDeviceMonitor invalidate];
    stackDeviceMonitor = selfCopy->_stackDeviceMonitor;
    selfCopy->_stackDeviceMonitor = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)selfCopy->_deviceMap allValues];
    v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          [(CBDaemonServer *)selfCopy _stackDeviceMonitorDeviceLost:v10];
          objc_autoreleasePoolPop(v11);
        }

        v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (CBDaemonServer)initWithCBStackAdaptor:(id)adaptor
{
  adaptorCopy = adaptor;
  if (objc_opt_class() && (v12.receiver = self, v12.super_class = CBDaemonServer, v6 = [(CBDaemonServer *)&v12 init], (self = v6) != 0))
  {
    v6->_deviceSetupStateToken = -1;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("CBDaemon", v7);
    dispatchQueue = self->_dispatchQueue;
    self->_dispatchQueue = v8;

    self->_identitiesNotifyToken = -1;
    self->_odeonNotifyToken = -1;
    self->_prefsChangedNotifyToken = -1;
    *&self->_screenDimmedChangeNotifyToken = -1;
    self->_screenUndimmedChangeNotifyToken = -1;
    objc_storeStrong(&self->_stackAdaptor, adaptor);
    self->_systemFlagsNotifyToken = -1;
    self->_coexNotificationSetup = 0;
    self->_userCloudDataChangedNotifyToken = -1;
    self->_userDaemonStartedNotifyToken = -1;
    objc_storeStrong(&gCBDaemonServer, self);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)descriptionInternalDebug
{
  v3 = IsAppleInternalBuild();
  if (v3)
  {
    v4 = sub_1000F5470(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "---------------- CBDaemonServer ----------------", v6, 2u);
    }

    v5 = [(CBDaemonServer *)self descriptionWithLevel:5];
    [v5 enumerateLinesUsingBlock:&stru_100ADFEC8];
  }
}

- (id)descriptionWithLevel:(int)level
{
  v4 = level < 0xBu;
  if (level >= 0xBu)
  {
    v5 = 60;
  }

  else
  {
    v5 = 30;
  }

  if (level >= 0xBu)
  {
    v6 = 30;
  }

  else
  {
    v6 = 20;
  }

  levelCopy = level;
  if (level < 6u)
  {
    v5 = 5;
  }

  v132 = v5;
  if (level >= 6u)
  {
    v7 = v6;
  }

  else
  {
    v7 = 5;
  }

  v206 = 0;
  v207 = &v206;
  v208 = 0x3032000000;
  v209 = sub_1000421B4;
  v210 = sub_10004256C;
  v211 = 0;
  obj = 0;
  mach_continuous_time();
  UpTicksToSeconds();
  v8 = CUPrintDuration64();
  mach_absolute_time();
  UpTicksToSeconds();
  v9 = CUPrintDuration64();
  v10 = [(NSMutableDictionary *)self->_identityMapSameAccount count];
  v11 = [(NSArray *)self->_identityArray count];
  v12 = [(NSMutableDictionary *)self->_identifyDevices count];
  v13 = "no";
  if (self->_odeonActive)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (self->_wifiCritical)
  {
    v13 = "yes";
  }

  deviceSetupState = self->_deviceSetupState;
  if (deviceSetupState > 9)
  {
    if (deviceSetupState != 10)
    {
      if (deviceSetupState == 20)
      {
        v16 = "Complete";
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v16 = "NotStarted";
  }

  else
  {
    if (self->_deviceSetupState)
    {
      if (deviceSetupState == 1)
      {
        v16 = "FrameworkUnavailable";
        goto LABEL_27;
      }

LABEL_24:
      v16 = "?";
      goto LABEL_27;
    }

    v16 = "Unknown";
  }

LABEL_27:
  NSAppendPrintF_safe(&obj, "Up %@ (awake %@), Identities SA %d / Other %d / Devices %d, Odeon %s, WiFi critical %s, Device Setup %s", v8, v9, v10, v11, v12, v14, v13, v16);
  objc_storeStrong(&v211, obj);

  v17 = self->_selfAuthTag;
  if (v17)
  {
    v18 = (v207 + 5);
    v204 = v207[5];
    v19 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v204, ", AuthTag <%@>", v19);
    objc_storeStrong(v18, v204);
  }

  v20 = self->_selfAuthTagNonConnectable;
  if (v20)
  {
    v21 = (v207 + 5);
    v203 = v207[5];
    v22 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v203, ", AuthTagNonConnectable <%@>", v22);
    objc_storeStrong(v21, v203);
  }

  if (IsAppleInternalBuild())
  {
    v23 = ((CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970) / 7200.0);
    v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:-(kCFAbsoluteTimeIntervalSince1970 - v23 * 7200.0)];
    v25 = [NSDateFormatter localizedStringFromDate:v24 dateStyle:1 timeStyle:1];

    v26 = (v207 + 5);
    v202 = v207[5];
    NSAppendPrintF_safe(&v202, ", CBIntervalNumber <%u, %f, %@>", v23, -(kCFAbsoluteTimeIntervalSince1970 - v23 * 7200.0), v25);
    objc_storeStrong(v26, v202);
  }

  v27 = (v207 + 5);
  v201 = v207[5];
  NSAppendPrintF_safe(&v201, "\n\n");
  objc_storeStrong(v27, v201);
  if (self->_assertionFlags)
  {
    v28 = (v207 + 5);
    v200 = v207[5];
    v29 = CUPrintFlags32();
    NSAppendPrintF_safe(&v200, "Assertions: %@\n", v29);
    objc_storeStrong(v28, v200);
  }

  v30 = self->_bleAdvertiser;
  if (v30)
  {
    v31 = (v207 + 5);
    v199 = v207[5];
    v32 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v199, "%@\n", v32);
    objc_storeStrong(v31, v199);
  }

  v135 = self->_accessoryDaemon;
  if (v135)
  {
    v33 = levelCopy < 0xB;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = (v207 + 5);
    v198 = v207[5];
    NSAppendPrintF_safe(&v198, "%@\n", v135);
    objc_storeStrong(v34, v198);
  }

  v136 = self->_extensionsDaemon;
  if (levelCopy >= 0xB && v136)
  {
    v35 = (v207 + 5);
    v197 = v207[5];
    NSAppendPrintF_safe(&v197, "%@\n", v136);
    objc_storeStrong(v35, v197);
  }

  v36 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  v37 = v36;
  if (v36)
  {
    v38 = (v207 + 5);
    v196 = v207[5];
    NSAppendPrintF_safe(&v196, "%@\n", v36);
    objc_storeStrong(v38, v196);
  }

  v39 = self->_addressMonitor;
  if (v39)
  {
    v40 = (v207 + 5);
    v195 = v207[5];
    v41 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v195, "%@\n", v41);
    objc_storeStrong(v40, v195);
  }

  v134 = self->_stackBLEScanner;
  if (v134)
  {
    v42 = levelCopy < 0xB;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = (v207 + 5);
    v194 = v207[5];
    NSAppendPrintF_safe(&v194, "%@\n", v134);
    objc_storeStrong(v43, v194);
  }

  v137 = self->_stackClassicScanner;
  if (levelCopy >= 0xB && v137)
  {
    v44 = (v207 + 5);
    v193 = v207[5];
    NSAppendPrintF_safe(&v193, "%@\n", v137);
    objc_storeStrong(v44, v193);
  }

  v45 = self->_stackController;
  if (v45)
  {
    v46 = (v207 + 5);
    v192 = v207[5];
    v47 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v192, "%@\n", v47);
    objc_storeStrong(v46, v192);
  }

  v133 = self->_stackDeviceMonitor;
  if (v133)
  {
    v48 = levelCopy < 0xB;
  }

  else
  {
    v48 = 1;
  }

  if (!v48)
  {
    v49 = (v207 + 5);
    v191 = v207[5];
    NSAppendPrintF_safe(&v191, "%@\n", v133);
    objc_storeStrong(v49, v191);
  }

  v50 = self->_remoteClient;
  v51 = v50;
  if (v50)
  {
    v52 = (v207 + 5);
    v190 = v207[5];
    localDevice = [(RPCompanionLinkClient *)v50 localDevice];
    idsDeviceIdentifier = [localDevice idsDeviceIdentifier];
    activeDevices = [(RPCompanionLinkClient *)v51 activeDevices];
    NSAppendPrintF_safe(&v190, "%sRemoteClient: IDS %@, controllers %d", "", idsDeviceIdentifier, [activeDevices count]);
    objc_storeStrong(v52, v190);
  }

  v56 = self->_remoteServer;
  if (v56)
  {
    v57 = v56;
    v58 = (v207 + 5);
    v189 = v207[5];
    v59 = ", ";
    if (!v51)
    {
      v59 = "";
    }

    NSAppendPrintF_safe(&v189, "%sRemoteServer: Yes", v59);
    objc_storeStrong(v58, v189);

    goto LABEL_71;
  }

  if (v51)
  {
LABEL_71:
    v60 = (v207 + 5);
    v188 = v207[5];
    NSAppendPrintF_safe(&v188, "\n");
    objc_storeStrong(v60, v188);
  }

  if (v135 && levelCopy <= 0xA)
  {
    v61 = (v207 + 5);
    v187 = v207[5];
    NSAppendPrintF_safe(&v187, "\n");
    objc_storeStrong(v61, v187);
    v62 = (v207 + 5);
    v186 = v207[5];
    v63 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v186, "%@", v63);
    objc_storeStrong(v62, v186);
  }

  if (v136)
  {
    v64 = levelCopy > 0xA;
  }

  else
  {
    v64 = 1;
  }

  if (!v64)
  {
    v65 = (v207 + 5);
    v185 = v207[5];
    NSAppendPrintF_safe(&v185, "\n");
    objc_storeStrong(v65, v185);
    v66 = (v207 + 5);
    v184 = v207[5];
    v67 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v184, "%@", v67);
    objc_storeStrong(v66, v184);
  }

  if (v134)
  {
    v68 = levelCopy > 0xA;
  }

  else
  {
    v68 = 1;
  }

  if (v68)
  {
    if (v137)
    {
      v69 = levelCopy > 0xA;
    }

    else
    {
      v69 = 1;
    }

    if (v69)
    {
      if (v133)
      {
        v70 = levelCopy > 0xA;
      }

      else
      {
        v70 = 1;
      }

      if (v70)
      {
        v71 = self->_whbDiscoveryDaemon;
        if (!v71)
        {
          v4 = 0;
          goto LABEL_109;
        }

LABEL_107:
        v83 = (v207 + 5);
        v177 = v207[5];
        NSAppendPrintF_safe(&v177, "\n");
        objc_storeStrong(v83, v177);
        goto LABEL_108;
      }

      v79 = (v207 + 5);
      v179 = v207[5];
      NSAppendPrintF_safe(&v179, "\n");
      objc_storeStrong(v79, v179);
      goto LABEL_104;
    }

    v75 = (v207 + 5);
    v181 = v207[5];
    NSAppendPrintF_safe(&v181, "\n");
    objc_storeStrong(v75, v181);
    goto LABEL_97;
  }

  v72 = (v207 + 5);
  v183 = v207[5];
  NSAppendPrintF_safe(&v183, "\n");
  objc_storeStrong(v72, v183);
  v73 = (v207 + 5);
  v182 = v207[5];
  v74 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&v182, "%@\n", v74);
  objc_storeStrong(v73, v182);

  if (v137)
  {
LABEL_97:
    v76 = (v207 + 5);
    v180 = v207[5];
    v77 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v180, "%@\n", v77);
    objc_storeStrong(v76, v180);
  }

  if (v133)
  {
    v78 = levelCopy > 0xA;
  }

  else
  {
    v78 = 1;
  }

  if (!v78)
  {
LABEL_104:
    v80 = (v207 + 5);
    v178 = v207[5];
    v81 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v178, "%@\n", v81);
    objc_storeStrong(v80, v178);
  }

  v82 = self->_whbDiscoveryDaemon;
  if (!v82)
  {
    goto LABEL_109;
  }

  v71 = v82;
  if (levelCopy >= 0xB)
  {
    goto LABEL_107;
  }

LABEL_108:
  v84 = (v207 + 5);
  v176 = v207[5];
  v85 = CUDescriptionWithLevel();
  NSAppendPrintF_safe(&v176, "%@\n", v85);
  objc_storeStrong(v84, v176);

LABEL_109:
  v86 = [(NSMutableDictionary *)self->_deviceMap count];
  if (v86)
  {
    if (!v4)
    {
      v87 = (v207 + 5);
      v175 = v207[5];
      NSAppendPrintF_safe(&v175, "\n");
      objc_storeStrong(v87, v175);
    }

    v88 = (v207 + 5);
    v174 = v207[5];
    NSAppendPrintF_safe(&v174, "== Combined devices: %d ==\n", v86);
    objc_storeStrong(v88, v174);
    v170 = 0;
    v171 = &v170;
    v172 = 0x2020000000;
    v173 = 0;
    deviceMap = self->_deviceMap;
    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_1000F69A0;
    v167[3] = &unk_100ADFEF0;
    v167[4] = &v206;
    v167[5] = &v170;
    v168 = v132;
    levelCopy2 = level;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v167];
    v90 = v171[3];
    v91 = v86 >= v90;
    v92 = &v86[-v90];
    if (v92 != 0 && v91)
    {
      v93 = (v207 + 5);
      v166 = v207[5];
      NSAppendPrintF_safe(&v166, "... %d more, %d total\n", v92, v86);
      objc_storeStrong(v93, v166);
    }

    v94 = (v207 + 5);
    v165 = v207[5];
    NSAppendPrintF_safe(&v165, "\n");
    objc_storeStrong(v94, v165);
    _Block_object_dispose(&v170, 8);
    v4 = 1;
  }

  v95 = [(NSMutableOrderedSet *)self->_lostDevicesForCBSpatial count];
  if (v95)
  {
    v96 = (v207 + 5);
    v164 = v207[5];
    NSAppendPrintF_safe(&v164, "== Lost CBSpatial Devices: %d ==\n", v95);
    objc_storeStrong(v96, v164);
    lostDevicesForCBSpatial = self->_lostDevicesForCBSpatial;
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_1000F6A4C;
    v162[3] = &unk_100ADFF18;
    v162[4] = &v206;
    v163 = v132;
    [(NSMutableOrderedSet *)lostDevicesForCBSpatial enumerateObjectsUsingBlock:v162];
    v98 = (v207 + 5);
    v161 = v207[5];
    NSAppendPrintF_safe(&v161, "\n");
    objc_storeStrong(v98, v161);
    v4 = 1;
  }

  v99 = [(NSMutableSet *)self->_xpcConnections count];
  if (v99)
  {
    if (!v4)
    {
      v100 = (v207 + 5);
      v160 = v207[5];
      NSAppendPrintF_safe(&v160, "\n");
      objc_storeStrong(v100, v160);
    }

    v101 = (v207 + 5);
    v159 = v207[5];
    NSAppendPrintF_safe(&v159, "== XPC Cnx: %d ==\n", v99);
    objc_storeStrong(v101, v159);
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v102 = self->_xpcConnections;
    v103 = [(NSMutableSet *)v102 countByEnumeratingWithState:&v155 objects:v215 count:16];
    if (v103)
    {
      v104 = *v156;
      do
      {
        for (i = 0; i != v103; ++i)
        {
          if (*v156 != v104)
          {
            objc_enumerationMutation(v102);
          }

          v106 = (v207 + 5);
          v154 = v207[5];
          v107 = CUDescriptionWithLevel();
          NSAppendPrintF_safe(&v154, "%@", v107);
          objc_storeStrong(v106, v154);

          if (v7 > 0x14)
          {
            v108 = (v207 + 5);
            v153 = v207[5];
            NSAppendPrintF_safe(&v153, "\n");
            objc_storeStrong(v108, v153);
          }
        }

        v103 = [(NSMutableSet *)v102 countByEnumeratingWithState:&v155 objects:v215 count:16];
      }

      while (v103);
    }

    v109 = (v207 + 5);
    v152 = v207[5];
    NSAppendPrintF_safe(&v152, "\n");
    objc_storeStrong(v109, v152);
    v4 = 1;
  }

  if (levelCopy <= 0x14)
  {
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v110 = CFPrefs_CopyKeys();
    v111 = 0;
    v112 = [v110 countByEnumeratingWithState:&v148 objects:v214 count:16];
    if (v112)
    {
      v113 = *v149;
      do
      {
        for (j = 0; j != v112; j = j + 1)
        {
          if (*v149 != v113)
          {
            objc_enumerationMutation(v110);
          }

          v115 = *(*(&v148 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v4)
            {
              v116 = (v207 + 5);
              v147 = v207[5];
              NSAppendPrintF_safe(&v147, "\n");
              objc_storeStrong(v116, v147);
            }

            v117 = CFPrefs_CopyTypedValue();
            v118 = (v207 + 5);
            v146 = v207[5];
            v119 = CUPrintNSObjectOneLine();
            NSAppendPrintF_safe(&v146, "Pref: '%@' = '%@'\n", v115, v119);
            objc_storeStrong(v118, v146);

            ++v111;
            v4 = 1;
          }
        }

        v112 = [v110 countByEnumeratingWithState:&v148 objects:v214 count:16];
      }

      while (v112);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v212[0] = @"accessoryDaemonConnections";
    v212[1] = @"accessoryDaemonConnectSeconds";
    v212[2] = @"accessoryDaemonEnabled";
    v212[3] = @"adjustHIDSniffForStereoSCO";
    v212[4] = @"APLogCloudCollectionEnabled";
    v212[5] = @"authTagIntegrityCheckEnabled";
    v212[6] = @"bleAdvertising";
    v212[7] = @"bleScanning";
    v212[8] = @"btvcDefaultAdvRSSI";
    v212[9] = @"CBExtensionRSSIOverride";
    v212[10] = @"disableCentralSkipSniff";
    v212[11] = @"disabledExtensions";
    v212[12] = @"discoveryProxy";
    v212[13] = @"enableSpecialSniffTransitions";
    v212[14] = @"enforceApprovedExtensions";
    v212[15] = @"enforceApprovedList";
    v212[16] = @"extensionsEnabled";
    v212[17] = @"filterNearbyActionAuthTag";
    v212[18] = @"filterNearbyActionExtraData";
    v212[19] = @"intelligenceDaemonEnabled";
    v212[20] = @"memoryPressureFlags";
    v212[21] = @"move3PPLEMSToLegacyMode";
    v212[22] = @"move3PPLEMSToLegacyModeSerial";
    v212[23] = @"NCSecondaryAdvInstance";
    v212[24] = @"remoteClientEnabled";
    v212[25] = @"remoteServerEnabled";
    v212[26] = @"BluetoothAutoSeekKeyboard";
    v212[27] = @"BluetoothAutoSeekPointingDevice";
    v212[28] = @"SpatialSoundProfileAllowed";
    v212[29] = @"systemReferenceTimeDisabled";
    v212[30] = @"whbDiscoveryAlways";
    v212[31] = @"whbMaxLEConnections";
    v212[32] = @"wiproxAdvertising";
    v212[33] = @"UseLowLatencyGameController";
    v120 = [NSArray arrayWithObjects:v212 count:34];
    v121 = [v120 countByEnumeratingWithState:&v142 objects:v213 count:16];
    if (v121)
    {
      v122 = *v143;
      v139 = v120;
      do
      {
        for (k = 0; k != v121; k = k + 1)
        {
          if (*v143 != v122)
          {
            objc_enumerationMutation(v139);
          }

          v124 = *(*(&v142 + 1) + 8 * k);
          v125 = CFPreferencesCopyValue(v124, @"com.apple.Bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
          if (v125)
          {
            v126 = (v207 + 5);
            v141 = v207[5];
            v127 = CUPrintNSObjectOneLine();
            NSAppendPrintF_safe(&v141, "Pref: '%@' = '%@' (legacy)\n", v124, v127);
            objc_storeStrong(v126, v141);

            ++v111;
          }
        }

        v120 = v139;
        v121 = [v139 countByEnumeratingWithState:&v142 objects:v213 count:16];
      }

      while (v121);
    }

    if (v111 >= 1)
    {
      v128 = (v207 + 5);
      v140 = v207[5];
      NSAppendPrintF_safe(&v140, "\n");
      objc_storeStrong(v128, v140);
    }
  }

  v129 = v207[5];

  _Block_object_dispose(&v206, 8);

  return v129;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F6B30;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  self->_startTicksAwake = mach_absolute_time();
  self->_startTicksFull = mach_continuous_time();
  LogSetAppID();
  LogControl();
  [(CBDaemonServer *)self _stackControllerEnsureStarted];
  if (!self->_xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", self->_dispatchQueue, 1uLL);
    xpcListener = self->_xpcListener;
    self->_xpcListener = mach_service;

    v5 = self->_xpcListener;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003DE28;
    handler[3] = &unk_100ADFF40;
    handler[4] = self;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_activate(self->_xpcListener);
  }

  if (!self->_xpcPublisherConnections)
  {
    v6 = xpc_event_publisher_create();
    xpcPublisherConnections = self->_xpcPublisherConnections;
    self->_xpcPublisherConnections = v6;

    v43[10] = _NSConcreteStackBlock;
    v43[11] = 3221225472;
    v43[12] = sub_1000F74D4;
    v43[13] = &unk_100ADFF68;
    v43[14] = self;
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
  }

  if (!self->_xpcPublisherDiscovery)
  {
    v8 = xpc_event_publisher_create();
    xpcPublisherDiscovery = self->_xpcPublisherDiscovery;
    self->_xpcPublisherDiscovery = v8;

    v43[5] = _NSConcreteStackBlock;
    v43[6] = 3221225472;
    v43[7] = sub_1000F7544;
    v43[8] = &unk_100ADFF68;
    v43[9] = self;
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000F75B4;
    v43[3] = &unk_100ADFFF0;
    v43[4] = self;
    notify_register_dispatch("com.apple.bluetooth.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, v43);
  }

  if (self->_screenDimmedChangeNotifyToken == -1)
  {
    v11 = self->_dispatchQueue;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000F761C;
    v42[3] = &unk_100ADFFF0;
    v42[4] = self;
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventDimmed", &self->_screenDimmedChangeNotifyToken, v11, v42);
  }

  if (self->_screenUndimmedChangeNotifyToken == -1)
  {
    v12 = self->_dispatchQueue;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000A1A4C;
    v41[3] = &unk_100ADFFF0;
    v41[4] = self;
    notify_register_dispatch("com.apple.springboardservices.eventobserver.internalSBSEventObserverEventUndimmed", &self->_screenUndimmedChangeNotifyToken, v12, v41);
  }

  if (_os_feature_enabled_impl() && self->_screenDisplayChangedNotifyToken == -1)
  {
    v13 = self->_dispatchQueue;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10080179C;
    v40[3] = &unk_100ADFFF0;
    v40[4] = self;
    notify_register_dispatch("com.apple.iokit.hid.displayStatus", &self->_screenDisplayChangedNotifyToken, v13, v40);
  }

  v14 = self->_memoryPressureSource;
  if (!v14)
  {
    v15 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 7uLL, self->_dispatchQueue);
    memoryPressureSource = self->_memoryPressureSource;
    self->_memoryPressureSource = v15;

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000F7690;
    v37[3] = &unk_100ADF590;
    v14 = v15;
    v38 = v14;
    selfCopy = self;
    dispatch_source_set_event_handler(v14, v37);
    dispatch_activate(v14);
  }

  if (!self->_systemMonitor)
  {
    v17 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v17;
    v19 = v17;

    [(CUSystemMonitor *)v19 setDispatchQueue:self->_dispatchQueue];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000F773C;
    v36[3] = &unk_100ADF5B8;
    v36[4] = self;
    [(CUSystemMonitor *)v19 setFirstUnlockHandler:v36];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000A5B7C;
    v35[3] = &unk_100ADF5B8;
    v35[4] = self;
    [(CUSystemMonitor *)v19 setScreenOnChangedHandler:v35];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000F7744;
    v34[3] = &unk_100ADF5B8;
    v34[4] = self;
    [(CUSystemMonitor *)v19 setWifiStateChangedHandler:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000F7750;
    v33[3] = &unk_100ADF590;
    v33[4] = self;
    v33[5] = v19;
    [(CUSystemMonitor *)v19 activateWithCompletion:v33];
  }

  if (self->_odeonNotifyToken == -1)
  {
    v20 = self->_dispatchQueue;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F7794;
    v32[3] = &unk_100ADFFF0;
    v32[4] = self;
    notify_register_dispatch("com.apple.airplay.isPlayingAmbientAudioChanged", &self->_odeonNotifyToken, v20, v32);
  }

  if (self->_systemFlagsNotifyToken == -1)
  {
    notify_register_check("com.apple.bluetooth.systemFlags", &self->_systemFlagsNotifyToken);
  }

  if (!self->_tipiObserving)
  {
    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:self selector:"_tipiChanged:" name:@"com.apple.bluetooth.TipiChanged" object:0];
    self->_tipiObserving = 1;
  }

  if (self->_userCloudDataChangedNotifyToken == -1)
  {
    v22 = self->_dispatchQueue;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000F7844;
    v31[3] = &unk_100ADFFF0;
    v31[4] = self;
    notify_register_dispatch("com.apple.bluetoothuser.cloudChanged", &self->_userCloudDataChangedNotifyToken, v22, v31);
  }

  if (self->_userDaemonStartedNotifyToken == -1)
  {
    v23 = self->_dispatchQueue;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000F784C;
    v30[3] = &unk_100ADFFF0;
    v30[4] = self;
    notify_register_dispatch("com.apple.bluetoothuser.daemonStarted", &self->_userDaemonStartedNotifyToken, v23, v30);
  }

  if (!self->_stateHandler)
  {
    v29[5] = _NSConcreteStackBlock;
    v29[6] = 3221225472;
    v29[7] = sub_1000F7854;
    v29[8] = &unk_100AE0018;
    v29[9] = self;
    self->_stateHandler = os_state_add_handler();
  }

  if (&_BYSetupAssistantNeedsToRun)
  {
    if (self->_deviceSetupState == 1)
    {
      v24 = 0;
    }

    else
    {
      if (BYSetupAssistantNeedsToRun())
      {
        v25 = 10;
      }

      else
      {
        v25 = 20;
      }

      self->_deviceSetupState = v25;
      v26 = BYSetupAssistantFinishedDarwinNotification;
      v24 = v26;
      if (self->_deviceSetupState == 10 && self->_deviceSetupStateToken == -1)
      {
        uTF8String = [v26 UTF8String];
        v28 = self->_dispatchQueue;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000F78A0;
        v29[3] = &unk_100ADFFF0;
        v29[4] = self;
        notify_register_dispatch(uTF8String, &self->_deviceSetupStateToken, v28, v29);
      }
    }
  }

  else
  {
    v24 = 0;
    self->_deviceSetupState = 1;
  }

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100802AF0(&self->_deviceSetupState);
  }

  [(CBDaemonServer *)self _prefsChanged];
  notify_post("com.apple.bluetooth.daemonStarted");
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F798C;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v3 = self->_xpcConnections;
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v31 + 1) + 8 * i) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)v5 removeAllObjects];
  [(CBDaemonServer *)self _remoteEnsureStopped];
  [(CBDaemonServer *)self _whbDiscoveryEnsureStopped];
  [(CBDaemonServer *)self _bleAdvertiserEnsureStopped];
  [(CBDaemonServer *)self _identitiesEnsureStopped];
  [(CBDaemonServer *)self _stackBLEScannerEnsureStopped];
  [(CBDaemonServer *)self _stackClassicScannerEnsureStopped];
  [(CBDaemonServer *)self _stackControllerEnsureStopped];
  [(CBDaemonServer *)self _stackDeviceMonitorEnsureStopped];
  [(CBDaemonServer *)self _accessoryDaemonEnsureStopped];
  [(CBDaemonServer *)self _extensionsEnsureStopped];
  [(CBDaemonServer *)self _invalidateUserController];
  lostDevicesForCBSpatialWipeTimer = self->_lostDevicesForCBSpatialWipeTimer;
  if (lostDevicesForCBSpatialWipeTimer)
  {
    v11 = lostDevicesForCBSpatialWipeTimer;
    dispatch_source_cancel(v11);
    v12 = self->_lostDevicesForCBSpatialWipeTimer;
    self->_lostDevicesForCBSpatialWipeTimer = 0;
  }

  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    v14 = memoryPressureSource;
    dispatch_source_cancel(v14);
    v15 = self->_memoryPressureSource;
    self->_memoryPressureSource = 0;
  }

  deviceSetupStateToken = self->_deviceSetupStateToken;
  if (deviceSetupStateToken != -1)
  {
    notify_cancel(deviceSetupStateToken);
    self->_deviceSetupStateToken = -1;
  }

  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  odeonNotifyToken = self->_odeonNotifyToken;
  if (odeonNotifyToken != -1)
  {
    notify_cancel(odeonNotifyToken);
    self->_odeonNotifyToken = -1;
  }

  screenDimmedChangeNotifyToken = self->_screenDimmedChangeNotifyToken;
  if (screenDimmedChangeNotifyToken != -1)
  {
    notify_cancel(screenDimmedChangeNotifyToken);
    self->_screenDimmedChangeNotifyToken = -1;
  }

  screenUndimmedChangeNotifyToken = self->_screenUndimmedChangeNotifyToken;
  if (screenUndimmedChangeNotifyToken != -1)
  {
    notify_cancel(screenUndimmedChangeNotifyToken);
    self->_screenUndimmedChangeNotifyToken = -1;
  }

  systemFlagsNotifyToken = self->_systemFlagsNotifyToken;
  if (systemFlagsNotifyToken != -1)
  {
    notify_cancel(systemFlagsNotifyToken);
    self->_systemFlagsNotifyToken = -1;
  }

  userCloudDataChangedNotifyToken = self->_userCloudDataChangedNotifyToken;
  if (userCloudDataChangedNotifyToken != -1)
  {
    notify_cancel(userCloudDataChangedNotifyToken);
    self->_userCloudDataChangedNotifyToken = -1;
  }

  userDaemonStartedNotifyToken = self->_userDaemonStartedNotifyToken;
  if (userDaemonStartedNotifyToken != -1)
  {
    notify_cancel(userDaemonStartedNotifyToken);
    self->_userDaemonStartedNotifyToken = -1;
  }

  if (self->_stateHandler)
  {
    os_state_remove_handler();
    self->_stateHandler = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  if (self->_tipiObserving || self->_lowPowerModeObserving)
  {
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 removeObserver:self];

    if (self->_tipiObserving)
    {
      self->_tipiObserving = 0;
    }

    if (self->_lowPowerModeObserving)
    {
      self->_lowPowerModeObserving = 0;
    }
  }

  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    v27 = xpcListener;
    xpc_connection_cancel(v27);
    v28 = self->_xpcListener;
    self->_xpcListener = 0;
  }

  xpcPublisherConnections = self->_xpcPublisherConnections;
  self->_xpcPublisherConnections = 0;

  xpcPublisherDiscovery = self->_xpcPublisherDiscovery;
  self->_xpcPublisherDiscovery = 0;

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100802DE8();
  }
}

- (void)_prefsChanged
{
  v81 = 0;
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefAccessoryDaemonEnabled != v3)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802E1C();
    }

    self->_prefAccessoryDaemonEnabled = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefAppleAudioDeviceLimitedLoggingEnabled != v4)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802E74();
    }

    self->_prefAppleAudioDeviceLimitedLoggingEnabled = v4;
  }

  Int64 = CFPrefs_GetInt64();
  if (v81)
  {
    v6 = 0;
  }

  else
  {
    v6 = Int64 == 0;
  }

  v7 = !v6;
  if (self->_prefAuthTagIntegrityCheckEnabled != v7)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802ECC();
    }

    self->_prefAuthTagIntegrityCheckEnabled = v7;
  }

  v8 = CFPrefs_GetInt64();
  if (v81)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  v10 = !v9;
  if (self->_prefBLEAdvertising != v10)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802F24();
    }

    self->_prefBLEAdvertising = v10;
  }

  v11 = CFPrefs_GetInt64();
  if (v81)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 == 0;
  }

  v13 = !v12;
  if (self->_prefBLEScanning != v13)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802F7C();
    }

    self->_prefBLEScanning = v13;
  }

  v14 = CFPrefs_GetInt64();
  if (v81)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  prefCBExtensionRSSIOverride = self->_prefCBExtensionRSSIOverride;
  if (prefCBExtensionRSSIOverride != v15)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_52;
        }

        LOBYTE(prefCBExtensionRSSIOverride) = self->_prefCBExtensionRSSIOverride;
      }

      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _prefsChanged]", 30, "CBExtensionRSSIOverride: %d -> %d", prefCBExtensionRSSIOverride, v15);
    }

LABEL_52:
    self->_prefCBExtensionRSSIOverride = v15;
  }

  v17 = CFPrefs_GetInt64();
  if (v81)
  {
    goto LABEL_86;
  }

  v18 = v17;
  deviceSetupState = self->_deviceSetupState;
  if (v17 == deviceSetupState)
  {
    goto LABEL_86;
  }

  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1)
    {
      goto LABEL_57;
    }

    if (_LogCategory_Initialize())
    {
      LODWORD(deviceSetupState) = self->_deviceSetupState;
LABEL_57:
      if (deviceSetupState > 9)
      {
        if (deviceSetupState != 10)
        {
          if (deviceSetupState == 20)
          {
            v20 = "Complete";
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        v20 = "NotStarted";
      }

      else
      {
        if (deviceSetupState)
        {
          if (deviceSetupState == 1)
          {
            v20 = "FrameworkUnavailable";
            goto LABEL_74;
          }

LABEL_71:
          v20 = "?";
          goto LABEL_74;
        }

        v20 = "Unknown";
      }

LABEL_74:
      if (v18 > 9u)
      {
        if (v18 == 10)
        {
          v21 = "NotStarted";
          goto LABEL_84;
        }

        if (v18 == 20)
        {
          v21 = "Complete";
          goto LABEL_84;
        }
      }

      else
      {
        if (!v18)
        {
          v21 = "Unknown";
          goto LABEL_84;
        }

        if (v18 == 1)
        {
          v21 = "FrameworkUnavailable";
LABEL_84:
          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _prefsChanged]", 30, "DeviceSetupState: %s -> %s", v20, v21);
          goto LABEL_85;
        }
      }

      v21 = "?";
      goto LABEL_84;
    }
  }

LABEL_85:
  self->_deviceSetupState = v18;
LABEL_86:
  v22 = CFPrefs_GetInt64();
  if (v81)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 == 0;
  }

  v24 = !v23;
  if (self->_prefDiscoveryProxy != v24)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100802FD4();
    }

    self->_prefDiscoveryProxy = v24;
  }

  v25 = CFPrefs_GetInt64();
  if (v81)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25 == 0;
  }

  v27 = !v26;
  if (self->_prefEnforceApprovedExtensions != v27)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080302C();
    }

    self->_prefEnforceApprovedExtensions = v27;
  }

  v28 = CFPrefs_GetInt64();
  if (v81)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28 == 0;
  }

  v30 = !v29;
  if (self->_prefEnforceApprovedList != v30)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803084();
    }

    self->_prefEnforceApprovedList = v30;
  }

  CFDataGetTypeID();
  v31 = CFPrefs_CopyTypedValue();
  prefFilterNearbyActionAuthTag = self->_prefFilterNearbyActionAuthTag;
  v33 = v31;
  v34 = prefFilterNearbyActionAuthTag;
  v35 = v34;
  if (v33 == v34)
  {

    v37 = v33;
LABEL_129:

    goto LABEL_130;
  }

  if ((v33 != 0) == (v34 == 0))
  {

LABEL_125:
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008030DC(&self->_prefFilterNearbyActionAuthTag);
    }

    v38 = v33;
    v37 = self->_prefFilterNearbyActionAuthTag;
    self->_prefFilterNearbyActionAuthTag = v38;
    goto LABEL_129;
  }

  v36 = [(NSData *)v33 isEqual:v34];

  if ((v36 & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_130:
  CFDataGetTypeID();
  v39 = CFPrefs_CopyTypedValue();
  prefFilterNearbyActionExtraData = self->_prefFilterNearbyActionExtraData;
  v41 = v39;
  v42 = prefFilterNearbyActionExtraData;
  v43 = v42;
  if (v41 == v42)
  {

    v45 = v41;
LABEL_140:

    goto LABEL_141;
  }

  if ((v41 != 0) == (v42 == 0))
  {

LABEL_136:
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080314C(&self->_prefFilterNearbyActionExtraData);
    }

    v46 = v41;
    v45 = self->_prefFilterNearbyActionExtraData;
    self->_prefFilterNearbyActionExtraData = v46;
    goto LABEL_140;
  }

  v44 = [(NSData *)v41 isEqual:v42];

  if ((v44 & 1) == 0)
  {
    goto LABEL_136;
  }

LABEL_141:
  v47 = CFPrefs_GetInt64();
  v48 = v47 != 0;
  if (v81)
  {
    v49 = v47;
    v48 = GestaltGetDeviceClass() - 1 < 3 || v49 != 0;
  }

  if (self->_prefExtensionsEnabled != v48)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008031BC();
    }

    self->_prefExtensionsEnabled = v48;
  }

  v51 = CFPrefs_GetInt64();
  v52 = v51 != 0;
  if (v81)
  {
    v53 = v51;
    v54 = _os_feature_enabled_impl() ^ 1;
    if (v53)
    {
      v52 = 1;
    }

    else
    {
      v52 = v54;
    }
  }

  if (self->_prefIOHIDEventAODDisabled != v52)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803214();
    }

    self->_prefIOHIDEventAODDisabled = v52;
  }

  v55 = CFPrefs_GetInt64();
  if (v55 != self->_prefMemoryPressureFlags)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      v56 = CUPrintFlags32();
      v57 = CUPrintFlags64();
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _prefsChanged]", 30, "MemoryPressureFlags: %@ -> %@", v56, v57);
    }

    self->_prefMemoryPressureFlags = v55;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F89C4;
    block[3] = &unk_100ADF5B8;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  v59 = CFPrefs_GetInt64();
  if (v81)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59 == 0;
  }

  v61 = !v60;
  if (self->_prefNCSecondaryAdvInstance != v61)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080326C();
    }

    self->_prefNCSecondaryAdvInstance = v61;
  }

  v62 = CFPrefs_GetInt64() != 0;
  if (v81)
  {
    DeviceClass = GestaltGetDeviceClass();
    v62 = DeviceClass == 4 || DeviceClass == 7;
  }

  if (self->_prefRemoteClientEnabled != v62)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008032C4();
    }

    self->_prefRemoteClientEnabled = v62;
  }

  v65 = CFPrefs_GetInt64() != 0;
  if (v81)
  {
    v66 = GestaltGetDeviceClass();
    v65 = v66 == 4 || v66 == 7;
  }

  if (self->_prefRemoteServerEnabled != v65)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080331C();
    }

    self->_prefRemoteServerEnabled = v65;
  }

  v68 = CFPrefs_GetInt64();
  if (v81)
  {
    v69 = 1;
  }

  else
  {
    v69 = v68 == 0;
  }

  v70 = !v69;
  if (self->_prefSystemReferenceTimeDisabled != v70)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803374();
    }

    self->_prefSystemReferenceTimeDisabled = v70;
  }

  v71 = CFPrefs_GetInt64();
  if (v81)
  {
    v72 = 1;
  }

  else
  {
    v72 = v71 == 0;
  }

  v73 = !v72;
  if (self->_prefWHBDiscoveryAlways != v73)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008033CC();
    }

    self->_prefWHBDiscoveryAlways = v73;
  }

  v74 = CFPrefs_GetInt64();
  if (v81)
  {
    v75 = 0;
  }

  else
  {
    v75 = v74 == 0;
  }

  v76 = !v75;
  if (self->_prefWiProxAdvertising != v76)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803424();
    }

    self->_prefWiProxAdvertising = v76;
  }

  v77 = CFPrefs_GetInt64();
  if (v81)
  {
    v78 = 1;
  }

  else
  {
    v78 = v77 == 0;
  }

  v79 = !v78;
  if (self->_prefAdvertiseRandomData != v79)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080347C();
    }

    self->_prefAdvertiseRandomData = v79;
  }

  [(CBAccessoryDaemon *)self->_accessoryDaemon prefsChanged];
  [(CBExtensionsDaemon *)self->_extensionsDaemon prefsChanged];
  [(CBDaemonServer *)self scheduleUpdateImmediate:0];
}

- (void)_reportDeviceFound:(id)found
{
  foundCopy = found;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        activatedDiscovery = [v10 activatedDiscovery];
        v13 = activatedDiscovery;
        if (activatedDiscovery && ([activatedDiscovery disabledActive] & 1) == 0)
        {
          [v10 reportDeviceFound:foundCopy];
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [foundCopy changedTypesRemoveAll];
}

- (void)_reportDeviceLost:(id)lost
{
  lostCopy = lost;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [v10 reportDeviceLost:{lostCopy, v12}];
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [lostCopy changedTypesRemoveAll];
}

- (void)_reportDevicesBuffered:(id)buffered
{
  bufferedCopy = buffered;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        activatedDiscovery = [v10 activatedDiscovery];
        v13 = activatedDiscovery;
        if (activatedDiscovery && ([activatedDiscovery disabledActive] & 1) == 0)
        {
          [v10 reportDevicesBuffered:bufferedCopy];
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = bufferedCopy;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18) changedTypesRemoveAll];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)scheduleAdvertiserUpdateImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  bleAdvertiserArray = self->_bleAdvertiserArray;
  self->_bleAdvertiserArray = 0;

  [(CBDaemonServer *)self scheduleUpdateImmediate:immediateCopy];
}

- (void)scheduleDiscoveryUpdateImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  bleDiscoveryArray = self->_bleDiscoveryArray;
  self->_bleDiscoveryArray = 0;

  self->_deviceMonitorFlagsValid = 0;
  whbDiscoveryArray = self->_whbDiscoveryArray;
  self->_whbDiscoveryArray = 0;

  [(CBDaemonServer *)self scheduleUpdateImmediate:immediateCopy];
}

- (void)scheduleSpatialUpdateImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  bleAdvertiserArray = self->_bleAdvertiserArray;
  self->_bleAdvertiserArray = 0;

  self->_bleAdvertiserSpatialValid = 0;

  [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:immediateCopy];
}

- (void)scheduleUpdateImmediate:(BOOL)immediate
{
  if (immediate)
  {

    [(CBDaemonServer *)self _update];
  }

  else if (!self->_updatePending)
  {
    block[5] = v3;
    block[6] = v4;
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F8FA0;
    block[3] = &unk_100ADF5B8;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_scheduleUserControllerInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  v5 = self->_userController;
  if (v5)
  {
    userControllerInvalidationTimer = self->_userControllerInvalidationTimer;
    if (userControllerInvalidationTimer)
    {
      v7 = userControllerInvalidationTimer;
      dispatch_source_cancel(v7);
      v8 = self->_userControllerInvalidationTimer;
      self->_userControllerInvalidationTimer = 0;
    }

    if (invalidationCopy)
    {
      [(CBDaemonServer *)self _invalidateUserController];
    }

    else
    {
      objc_initWeak(&location, self);
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v10 = self->_userControllerInvalidationTimer;
      self->_userControllerInvalidationTimer = v9;

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000F9118;
      v11[3] = &unk_100AE0040;
      objc_copyWeak(&v12, &location);
      dispatch_source_set_event_handler(v9, v11);
      CUDispatchTimerSet();
      dispatch_activate(v9);
      objc_destroyWeak(&v12);

      objc_destroyWeak(&location);
    }
  }
}

- (void)setSystemFlags:(unsigned int)flags mask:(unsigned int)mask
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  systemFlags = self->_systemFlags;
  v8 = systemFlags & ~mask | mask & flags;
  if (v8 != systemFlags)
  {
    self->_systemFlags = v8;
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008034F0(v8, systemFlags);
    }

    notify_set_state(self->_systemFlagsNotifyToken, v8);

    notify_post("com.apple.bluetooth.systemFlags");
  }
}

- (void)_tipiChanged:(id)changed
{
  changedCopy = changed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10080186C;
  v7[3] = &unk_100ADF590;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_updateMemoryPressure
{
  v3 = self->_xpcPublisherDiscovery;
  if (v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    selfCopy = self;
    v4 = self->_xpcConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          xpcCnx = [v9 xpcCnx];

          if (!xpcCnx)
          {
            xpcToken = [v9 xpcToken];
            if (xpcToken)
            {
              v13 = xpcToken;
              activatedDiscovery = [v9 activatedDiscovery];
              v15 = activatedDiscovery;
              if (activatedDiscovery)
              {
                if ([activatedDiscovery keepAlive])
                {
                  deviceMap = [v9 deviceMap];
                  if ([deviceMap count])
                  {
                    memoryPressureFlags = selfCopy->_memoryPressureFlags;
                    v18 = (memoryPressureFlags & ~[v15 memoryPressureFlags]) == 0;
                  }

                  else
                  {
                    v18 = 0;
                  }
                }

                else
                {
                  v18 = 0;
                }

                v19 = xpc_event_publisher_set_subscriber_keepalive();
                if (dword_100B509C8 <= 30)
                {
                  v20 = v19;
                  if (dword_100B509C8 != -1 || _LogCategory_Initialize())
                  {
                    sub_1008035EC(v18, v20, v13);
                  }
                }
              }
            }
          }

          objc_autoreleasePoolPop(v10);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v21 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v6 = v21;
      }

      while (v21);
    }
  }
}

- (void)_updateSelfAuthTag
{
  v5 = self->_identitySelf;
  if (!v5)
  {
    sub_100803848(0, v3, v4);
    goto LABEL_58;
  }

  connectableAddressData = [(CBStackAddressMonitor *)self->_addressMonitor connectableAddressData];
  v9 = connectableAddressData;
  if (connectableAddressData)
  {
    v32 = 0;
    v10 = [(RPIdentity *)v5 authTagForData:connectableAddressData type:2 error:&v32];
    v11 = v32;
    if (v10)
    {
      p_selfAuthTag = &self->_selfAuthTag;
      selfAuthTag = self->_selfAuthTag;
      v14 = v10;
      v15 = selfAuthTag;
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        if (!v15)
        {

          goto LABEL_21;
        }

        v17 = [(NSData *)v14 isEqual:v15];

        if ((v17 & 1) == 0)
        {
LABEL_21:
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_100803670(&self->_selfAuthTag);
          }

          v20 = v14;
          v19 = *p_selfAuthTag;
          *p_selfAuthTag = v20;
          v18 = 1;
          goto LABEL_25;
        }
      }

      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        sub_1008036E0();
        v18 = 0;
        v19 = v33;
        goto LABEL_25;
      }
    }

    else if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      v19 = CUPrintNSError();
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _updateSelfAuthTag]", 30, "SelfAuthTag: failed: %@", v19);
      v18 = 0;
LABEL_25:

LABEL_28:
      goto LABEL_29;
    }

    v18 = 0;
    goto LABEL_28;
  }

  if (dword_100B509C8 <= 30)
  {
    if (dword_100B509C8 != -1 || (connectableAddressData = _LogCategory_Initialize(), connectableAddressData))
    {
      sub_100803734(connectableAddressData, v7, v8);
    }
  }

  v18 = 0;
LABEL_29:
  nonConnectableAddressData = [(CBStackAddressMonitor *)self->_addressMonitor nonConnectableAddressData];
  if (nonConnectableAddressData)
  {
    v31 = 0;
    v22 = [(RPIdentity *)v5 authTagForData:nonConnectableAddressData type:2 error:&v31];
    v23 = v31;
    if (v22)
    {
      selfAuthTagNonConnectable = self->_selfAuthTagNonConnectable;
      v25 = v22;
      v26 = selfAuthTagNonConnectable;
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        if (!v26)
        {

          goto LABEL_49;
        }

        v28 = [(NSData *)v25 isEqual:v26];

        if ((v28 & 1) == 0)
        {
LABEL_49:
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_100803750(&self->_selfAuthTagNonConnectable);
          }

          v30 = self->_selfAuthTagNonConnectable;
          self->_selfAuthTagNonConnectable = v25;

          [(CBDaemonServer *)self _bleAdvertiserUpdateWithAuthTagNC];
          goto LABEL_56;
        }
      }

      if (dword_100B509C8 > 30 || dword_100B509C8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_54;
      }

      sub_1008037C0();
      v29 = v33;
    }

    else
    {
      if (dword_100B509C8 > 30 || dword_100B509C8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_54;
      }

      v29 = CUPrintNSError();
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _updateSelfAuthTag]", 30, "SelfAuthTag: failed: %@", v29);
    }

LABEL_54:
    goto LABEL_55;
  }

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100803814();
  }

LABEL_55:
  if (v18)
  {
LABEL_56:
    [(CBDaemonServer *)self scheduleUpdateImmediate:1];
  }

LABEL_58:
}

- (void)_updateUserControllerCloudDevices
{
  v3 = self->_identityMapSameAccount;
  if ([(NSMutableDictionary *)v3 count])
  {
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F9A0C;
    v6[3] = &unk_100AE0090;
    objc_copyWeak(&v7, &location);
    [(CBDaemonServer *)self _performUserControllerActionWithCompletion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    sub_1008038A8(0, v4, v5);
  }
}

- (OS_xpc_object)xpcListenerEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcListenerEndpoint;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = selfCopy->_xpcListener;
    v6 = v5;
    if (v5)
    {
      v7 = xpc_endpoint_create(v5);
      objc_storeStrong(&selfCopy->_xpcListenerEndpoint, v7);
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)_bleAdvertiserAddressChanged:(BOOL)changed
{
  if (!changed)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100803BC4(self);
    }

    self->_bleAdvertiserSpatialValid = 0;
    [(CBAdvertiserDaemon *)self->_bleAdvertiser advertisingAddressChanged];
    [(CBDaemonServer *)self scheduleUpdateImmediate:0];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        activatedSpatialInteractionSession = [v9 activatedSpatialInteractionSession];
        advertisingAddressChangedHandler = [activatedSpatialInteractionSession advertisingAddressChangedHandler];

        if (advertisingAddressChangedHandler)
        {
          advertisingAddressChangedHandler[2](advertisingAddressChangedHandler);
        }

        activatedAdvertiser = [v9 activatedAdvertiser];
        advertisingAddressChangedHandler2 = [activatedAdvertiser advertisingAddressChangedHandler];

        if (advertisingAddressChangedHandler2)
        {
          advertisingAddressChangedHandler2[2](advertisingAddressChangedHandler2);
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)clearDuplicateFilterCache:(id)cache
{
  stackBLEScanner = self->_stackBLEScanner;
  if (stackBLEScanner)
  {
    [(CBStackBLEScanner *)stackBLEScanner clearDuplicateFilterCache:cache];
  }
}

- (id)getAudioAccessoryDeviceArray
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getAudioAccessoryDeviceArray = [(CBStackAccessoryMonitor *)selfCopy->_stackAccessoryMonitor getAudioAccessoryDeviceArray];
  objc_sync_exit(selfCopy);

  return getAudioAccessoryDeviceArray;
}

- (void)_reportDeviceLostIfNeeded:(unint64_t)needed
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceMap allValues];
  v6 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        stackController = self->_stackController;
        v15 = 0;
        v12 = [(CBStackController *)stackController isDeviceConnected:v10 error:&v15];
        v13 = v15;
        if ((v12 & 1) == 0 && [v10 lastSeenTicks] < needed)
        {
          if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_100803DE0(v10, needed);
          }

          [(CBDaemonServer *)self _stackBLEScannerDeviceLost:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v14 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v14;
    }

    while (v14);
  }
}

- (void)_stackBLEScannerDevicesBuffered:(id)buffered
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = buffered;
  v22 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v22)
  {
    v23 = 0;
    v21 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        identifier = [v5 identifier];
        if (!identifier)
        {
          objc_autoreleasePoolPop(v6);
          goto LABEL_32;
        }

        v8 = identifier;
        v9 = objc_alloc_init(CBDevice);
        [v9 setIdentifier:v8];
        [v9 setInternalFlags:2048];
        v10 = self->_deviceMap;
        v11 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v8];
        if (v11)
        {
          [v9 updateWithCBDevice:v11];
        }

        v12 = [v9 updateWithCBDevice:v5];
        [v9 setChangeFlags:{objc_msgSend(v9, "changeFlags") | v12}];
        [v9 setLastSeenTicks:mach_absolute_time()];
        discoveryFlags = [v9 discoveryFlags];
        v14 = self->_stackBLEScanner;
        v15 = v14;
        if (v14)
        {
          aggregateDiscoveryFlags = [(CBStackBLEScanner *)v14 aggregateDiscoveryFlags];
          v25 = 0;
          v24 = 0;
          aggregateDiscoveryTypes = [(CBStackBLEScanner *)v15 aggregateDiscoveryTypes];
          v24 = aggregateDiscoveryTypes;
          v25 = WORD2(aggregateDiscoveryTypes);
        }

        else
        {
          aggregateDiscoveryFlags = 0;
          v25 = 0;
          v24 = 0;
        }

        if (aggregateDiscoveryFlags & (discoveryFlags | v12)) != 0 || ([v9 discoveryTypesContainTypes:&v24] & 1) != 0 || (objc_msgSend(v9, "changedTypesContainTypes:", &v24))
        {
          if ([v9 changedTypesNeedsIdentify] && self->_stackBLENeedsIdentify)
          {
            [(CBDaemonServer *)self _identitiesResolveNearbyDevice:v9];
          }

          v18 = v23;
          if (!v23)
          {
            v18 = objc_alloc_init(NSMutableArray);
          }

          v23 = v18;
          [v18 addObject:v9];
        }

        else if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          sub_100803E3C(aggregateDiscoveryFlags, &v24, v9);
        }

        objc_autoreleasePoolPop(v6);
        v4 = v4 + 1;
      }

      while (v22 != v4);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v22 = v19;
    }

    while (v19);

    if (!v23)
    {
      goto LABEL_34;
    }

    [(CBDaemonServer *)self _reportDevicesBuffered:?];
  }

  else
  {
    v23 = 0;
LABEL_32:
  }

LABEL_34:
}

- (void)_stackBLEScannerUpdateProxControlIfNeeded:(id)needed
{
  neededCopy = needed;
  discoveryFlags = [neededCopy discoveryFlags];
  if ((self->_stackBLEProxControlFlags & discoveryFlags) != 0 && (!self->_stackBLEProxControlNeedsDeviceClose || ([neededCopy nearbyActionFlags] & 0x10) != 0))
  {
    v5 = discoveryFlags | 0x200000000000;
  }

  else
  {
    v5 = discoveryFlags & 0xFFFFDFFFFFFFFFFFLL;
  }

  if (v5 != discoveryFlags)
  {
    [neededCopy setChangeFlags:{objc_msgSend(neededCopy, "changeFlags") | v5 ^ discoveryFlags}];
    [neededCopy setDiscoveryFlags:v5];
  }
}

- (void)_stackClassicScannerEnsureStarted
{
  v3 = self->_stackClassicScanner;
  v6 = v3;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100803EC4(v3, v4, v5);
      }
    }

    [(CBStackAdaptor *)self->_stackAdaptor classicScannerClass];
    v7 = objc_alloc_init(objc_opt_class());
    stackClassicScanner = self->_stackClassicScanner;
    self->_stackClassicScanner = v7;

    [(CBStackBLEScanner *)v7 setDispatchQueue:self->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FABE4;
    v16[3] = &unk_100ADF718;
    v9 = v7;
    v17 = v9;
    selfCopy = self;
    [(CBStackBLEScanner *)v9 setDeviceFoundHandler:v16];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000FAC00;
    v13 = &unk_100ADF718;
    v6 = v9;
    v14 = v6;
    selfCopy2 = self;
    [(CBStackBLEScanner *)v6 setDeviceLostHandler:&v10];

    [(CBStackBLEScanner *)v6 activate:v10];
  }
}

- (void)_stackControllerEnsureStarted
{
  if (!self->_stackController)
  {
    v33 = v6;
    v34 = v5;
    v35 = v3;
    v36 = v4;
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803EFC(self, a2, v2);
      }
    }

    [(CBStackAdaptor *)selfCopy->_stackAdaptor controllerClass];
    v8 = objc_alloc_init(objc_opt_class());
    stackController = selfCopy->_stackController;
    selfCopy->_stackController = v8;

    [(CBStackController *)v8 setDispatchQueue:selfCopy->_dispatchQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000FAE80;
    v30[3] = &unk_100ADF590;
    v10 = v8;
    v31 = v10;
    v32 = selfCopy;
    [(CBStackController *)v10 setControllerDataChangedHandler:v30];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000FAE98;
    v27[3] = &unk_100ADF590;
    v11 = v10;
    v28 = v11;
    v29 = selfCopy;
    [(CBStackController *)v11 setDiscoverableStateChangedHandler:v27];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000FAFDC;
    v24[3] = &unk_100ADF590;
    v12 = v11;
    v25 = v12;
    v26 = selfCopy;
    [(CBStackController *)v12 setInquiryStateChangedHandler:v24];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000FB120;
    v21[3] = &unk_100ADF590;
    v13 = v12;
    v22 = v13;
    v23 = selfCopy;
    [(CBStackController *)v13 setPowerChangedHandler:v21];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000FB2E0;
    v18 = &unk_100AE0180;
    v19 = v13;
    v20 = selfCopy;
    v14 = v13;
    [(CBStackController *)v14 setRelayMessageHandler:&v15];
    [(CBStackController *)v14 activate:v15];
  }
}

- (void)_stackControllerEnsureStopped
{
  if (self->_stackController)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803F18(self, a2, v2);
      }
    }

    [(CBStackController *)selfCopy->_stackController invalidate];
    stackController = selfCopy->_stackController;
    selfCopy->_stackController = 0;
  }
}

- (BOOL)_stackPowerSourceMonitorShouldRun
{
  _firstUnlockedOrAllowedBefore = [(CBDaemonServer *)self _firstUnlockedOrAllowedBefore];
  if (_firstUnlockedOrAllowedBefore)
  {
    stackController = self->_stackController;

    LOBYTE(_firstUnlockedOrAllowedBefore) = [(CBStackController *)stackController poweredOn];
  }

  return _firstUnlockedOrAllowedBefore;
}

- (void)_stackPowerSourceMonitorEnsureStarted
{
  v3 = self->_stackPowerSourceMonitor;
  v6 = v3;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100803F6C(v3, v4, v5);
      }
    }

    [(CBStackAdaptor *)self->_stackAdaptor powerSourceMonitorClass];
    v7 = objc_alloc_init(objc_opt_class());
    stackPowerSourceMonitor = self->_stackPowerSourceMonitor;
    self->_stackPowerSourceMonitor = v7;

    [(CBStackPowerSourceMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FB6B0;
    v16[3] = &unk_100ADF718;
    v9 = v7;
    v17 = v9;
    selfCopy = self;
    [(CBStackPowerSourceMonitor *)v9 setDeviceFoundHandler:v16];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000FB6CC;
    v13 = &unk_100ADF718;
    v6 = v9;
    v14 = v6;
    selfCopy2 = self;
    [(CBStackPowerSourceMonitor *)v6 setDeviceLostHandler:&v10];

    [(CBStackPowerSourceMonitor *)v6 activate:v10];
  }
}

- (void)_stackPowerSourceMonitorEnsureStopped
{
  if (self->_stackPowerSourceMonitor)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803F88(self, a2, v2);
      }
    }

    [(CBStackPowerSourceMonitor *)selfCopy->_stackPowerSourceMonitor invalidate];
    stackPowerSourceMonitor = selfCopy->_stackPowerSourceMonitor;
    selfCopy->_stackPowerSourceMonitor = 0;
  }
}

- (void)_accessoryDaemonEnsureStopped
{
  if (self->_accessoryDaemon)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100803FC0(self, a2, v2);
      }
    }

    [(CBAccessoryDaemon *)selfCopy->_accessoryDaemon invalidate];
    accessoryDaemon = selfCopy->_accessoryDaemon;
    selfCopy->_accessoryDaemon = 0;
  }
}

- (void)recordEventWithDeviceIdentifier:(id)identifier initiator:(BOOL)initiator starting:(BOOL)starting useCase:(unsigned int)case
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB8A8;
  block[3] = &unk_100AE01D0;
  caseCopy = case;
  block[4] = self;
  v14 = identifierCopy;
  initiatorCopy = initiator;
  startingCopy = starting;
  v12 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)recordEventWithStarting:(BOOL)starting useCase:(unsigned int)case
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FC4E4;
  v5[3] = &unk_100AE0218;
  v5[4] = self;
  caseCopy = case;
  startingCopy = starting;
  dispatch_async(dispatchQueue, v5);
}

- (void)_extensionsEnsureStopped
{
  if (self->_extensionsDaemon)
  {
    selfCopy = self;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100804240(self, a2, v2);
      }
    }

    [(CBExtensionsDaemon *)selfCopy->_extensionsDaemon invalidate];
    extensionsDaemon = selfCopy->_extensionsDaemon;
    selfCopy->_extensionsDaemon = 0;
  }
}

- (void)_identitiesGet
{
  v5 = objc_opt_class();
  v6 = dword_100B509C8;
  if (v5)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_1008042B0(v6, v3, v4);
      }
    }

    v7 = objc_alloc_init(RPClient);
    [v7 setDispatchQueue:self->_dispatchQueue];
    [v7 setTargetUserSession:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FC7C4;
    v8[3] = &unk_100AE0240;
    v8[4] = v7;
    v8[5] = self;
    [v7 getIdentitiesWithFlags:19883 completion:v8];
  }

  else
  {
    sub_1008042CC(dword_100B509C8, v3, v4);
  }
}

- (void)_identitiesResolveNearbyDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_identifyDevices objectForKeyedSubscript:identifier];
    if (v4)
    {
      nearbyInfoV2EncryptedData = [deviceCopy nearbyInfoV2EncryptedData];
      if (nearbyInfoV2EncryptedData || [deviceCopy nearbyInfoV2EncryptedFlags] || (objc_msgSend(deviceCopy, "nearbyInfoV2NearbyFaceTimeEncryptedData"), (nearbyInfoV2EncryptedData = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        internalFlags = [deviceCopy internalFlags];

        if ((internalFlags & 0x800) == 0)
        {
          goto LABEL_83;
        }
      }
    }

    v6 = [(NSMutableDictionary *)self->_identifyDevices count];
    if (v6 >= 0x15E)
    {
      v7 = v6 - 300;
      do
      {
        v48 = 0;
        v49 = &v48;
        v50 = 0x3032000000;
        v51 = sub_1000421B4;
        v52 = sub_10004256C;
        v53 = 0;
        v8 = objc_autoreleasePoolPush();
        deviceMap = self->_deviceMap;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000FD3A8;
        v47[3] = &unk_100AE0268;
        v47[4] = self;
        v47[5] = &v48;
        [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v47];
        objc_autoreleasePoolPop(v8);
        identifier2 = [v49[5] identifier];
        if (identifier2)
        {
          [(NSMutableDictionary *)self->_identifyDevices setObject:0 forKeyedSubscript:identifier2];
        }

        if (dword_100B509C8 < 31 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 30, "Identities removed excess device: %@", v49[5]);
        }

        _Block_object_dispose(&v48, 8);

        --v7;
      }

      while (v7);
    }

    v11 = [(NSMutableDictionary *)self->_identityMapSameAccount objectForKeyedSubscript:identifier];
    if (v11)
    {
      [deviceCopy updateWithCBDeviceIdentity:v11];
      [deviceCopy setInternalFlags:{objc_msgSend(deviceCopy, "internalFlags") | 8}];
      if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 20, "Identities resolve match: same account, %@, %@", deviceCopy, v11);
      }

      v39 = 1;
    }

    else
    {
      v39 = 0;
    }

    nearbyAuthTag = [deviceCopy nearbyAuthTag];
    nearbyInfoV2AuthTagData = [deviceCopy nearbyInfoV2AuthTagData];
    if (nearbyInfoV2AuthTagData)
    {
      v40 = 0;
      v35 = nearbyAuthTag == 0;
    }

    else
    {
      nearbyInfoV2AuthTagData = [deviceCopy airplaySourceAuthTagData];
      v35 = nearbyAuthTag == 0;
      v40 = nearbyInfoV2AuthTagData == 0;
      if (!(nearbyAuthTag | nearbyInfoV2AuthTagData))
      {
LABEL_82:

        goto LABEL_83;
      }
    }

    btAddressData = [deviceCopy btAddressData];
    if (btAddressData)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = self->_identityArray;
      v13 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v54 count:16];
      if (v13)
      {
        v14 = *v44;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v44 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v43 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            type = [v16 type];
            if (type <= 0xF && ((1 << type) & 0x8354) != 0)
            {
              if (v40)
              {
                v20 = [v16 verifyAuthTag:nearbyAuthTag data:btAddressData type:2 error:0];
                v21 = nearbyAuthTag;
                if ((v20 & 1) == 0)
                {
LABEL_50:
                  if (dword_100B509C8 <= 5 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 5, "Identities resolve mismatch: Addr %@, AT %@, %@, %@", btAddressData, v21, deviceCopy, v16);
                  }

LABEL_57:

                  goto LABEL_58;
                }

LABEL_45:
                [deviceCopy updateWithRPIdentity:v16];
                [deviceCopy setInternalFlags:{objc_msgSend(deviceCopy, "internalFlags") | 8}];
                if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 20, "Identities resolve match: Addr %@, AT %@, %@, %@", btAddressData, v21, deviceCopy, v16);
                }

                v39 = (v39 + 1);
                goto LABEL_57;
              }

              if ([v16 verifyAuthTag:nearbyInfoV2AuthTagData data:btAddressData type:2 error:0])
              {
                v22 = nearbyInfoV2AuthTagData;
LABEL_43:
                nearbyInfoV2AuthIntegrityTagData = [deviceCopy nearbyInfoV2AuthIntegrityTagData];
                v21 = nearbyInfoV2AuthTagData;
                if (nearbyInfoV2AuthIntegrityTagData)
                {
                  v30 = [(CBDaemonServer *)self _verifyNearbyInfoV2IntegrityTag:deviceCopy rapportIdentity:v16];

                  v21 = nearbyInfoV2AuthTagData;
                  if ((v30 & 1) == 0)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_45;
              }

              btAddress = [v16 btAddress];
              v24 = btAddress == 0;

              if (v24)
              {
                v28 = nearbyInfoV2AuthTagData;
              }

              else
              {
                btAddress2 = [v16 btAddress];
                v26 = [btAddress2 subdataWithRange:{1, 6}];

                btAddressData2 = [deviceCopy btAddressData];
                LOBYTE(btAddress2) = [v26 isEqualToData:btAddressData2];

                v28 = nearbyInfoV2AuthTagData;
                if (btAddress2)
                {
                  goto LABEL_43;
                }
              }

              v21 = v28;
              goto LABEL_50;
            }

LABEL_58:
            objc_autoreleasePoolPop(v17);
          }

          v13 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v54 count:16];
        }

        while (v13);
      }

      if (([deviceCopy internalFlags] & 0x800) == 0)
      {
        identifyDevices = self->_identifyDevices;
        if (!identifyDevices)
        {
          v32 = objc_alloc_init(NSMutableDictionary);
          v33 = self->_identifyDevices;
          self->_identifyDevices = v32;

          identifyDevices = self->_identifyDevices;
        }

        [(NSMutableDictionary *)identifyDevices setObject:deviceCopy forKeyedSubscript:identifier];
        if (v40)
        {
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 30, "Identities resolve added: Addr %@, AT %@, %@, matches %d", btAddressData, nearbyAuthTag, deviceCopy, v39);
          }
        }

        else if (v35)
        {
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 30, "Identities resolve added: Addr %@, ATNC %@, %@, matches %d", btAddressData, nearbyInfoV2AuthTagData, deviceCopy, v39);
          }
        }

        else if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _identitiesResolveNearbyDevice:]", 30, "Identities resolve added: Addr %@, AT %@, ATNC %@, %@, matches %d", btAddressData, nearbyAuthTag, nearbyInfoV2AuthTagData, deviceCopy, v39);
        }
      }
    }

    goto LABEL_82;
  }

LABEL_83:
}

- (void)_identitiesReevaluateDevices
{
  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008043F8(&self->super.isa);
  }

  [(NSMutableDictionary *)self->_identifyDevices removeAllObjects];
  deviceMap = self->_deviceMap;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000FD54C;
  v4[3] = &unk_100AE0290;
  v4[4] = self;
  [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v4];
  [(CBDaemonServer *)self scheduleUpdateImmediate:0];
}

- (void)updateIdentities:(id)identities
{
  identitiesCopy = identities;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = identitiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        bluetoothIdentifier = [v11 bluetoothIdentifier];
        uUIDString = [bluetoothIdentifier UUIDString];

        if (uUIDString)
        {
          [(NSMutableDictionary *)v5 setObject:v11 forKeyedSubscript:uUIDString];
        }

        else if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          sub_100804470(v11);
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v15 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v15;
    }

    while (v15);
  }

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008044B0(v5, v6);
  }

  identityMapSameAccount = selfCopy->_identityMapSameAccount;
  selfCopy->_identityMapSameAccount = v5;

  [(CBDaemonServer *)selfCopy _identitiesReevaluateDevices];
  [(CBDaemonServer *)selfCopy _updateUserControllerCloudDevices];
}

- (BOOL)_verifyNearbyInfoV2IntegrityTag:(id)tag rapportIdentity:(id)identity
{
  tagCopy = tag;
  identityCopy = identity;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1000421B4;
  v58 = sub_10004256C;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_1000421B4;
  v52 = sub_10004256C;
  nearbyInfoV2AuthIntegrityTagData = [tagCopy nearbyInfoV2AuthIntegrityTagData];
  nearbyInfoV2AuthTagData = [tagCopy nearbyInfoV2AuthTagData];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000FE00C;
  v43[3] = &unk_100AE02B8;
  v43[4] = &v54;
  v43[5] = &v60;
  v43[6] = &v48;
  v43[7] = &v44;
  v34 = objc_retainBlock(v43);
  v9 = v55;
  obj = v55[5];
  [tagCopy decryptApplePayloadWithIdentity:identityCopy forType:22 error:&obj];
  objc_storeStrong(v9 + 5, obj);
  if (v55[5])
  {
    prefAuthTagIntegrityCheckEnabled = self->_prefAuthTagIntegrityCheckEnabled;
    goto LABEL_56;
  }

  nearbyInfoV2DecryptedFlags = [tagCopy nearbyInfoV2DecryptedFlags];
  Current = CFAbsoluteTimeGetCurrent();
  v39 = 0xBFF0000000000000;
  *&v40 = -1.0;
  v38 = -1;
  if (self->_prefSystemReferenceTimeDisabled || !TMGetReferenceTime())
  {
    if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      if (self->_prefSystemReferenceTimeDisabled)
      {
        v11 = "disabled";
      }

      else
      {
        v11 = "not available";
      }

      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _verifyNearbyInfoV2IntegrityTag:rapportIdentity:]", 20, "IntegrityTag System reference time '%s' using current absolute time %f for auth tag: %@", v11, *&Current, nearbyInfoV2AuthTagData);
      v12 = Current;
    }

    else
    {
      v12 = Current;
    }
  }

  else if (dword_100B509C8 > 20)
  {
    v12 = *&v40;
  }

  else
  {
    v12 = *&v40;
    if (dword_100B509C8 != -1 || (v12 = *&v40, _LogCategory_Initialize()))
    {
      v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:v12];
      v14 = [v13 description];
      LogPrintF_safe(&dword_100B509C8, "-[CBDaemonServer _verifyNearbyInfoV2IntegrityTag:rapportIdentity:]", 20, "IntegrityTag System reference time %f, (%s). delta: %f ±%f reliability %d for auth tag: %@", *&v12, [v14 UTF8String], *&v40 - Current, v39, v38, nearbyInfoV2AuthTagData);

      v12 = *&v40;
    }
  }

  v36 = tagCopy;
  v15 = 0;
  v35 = 0;
  do
  {
    v16 = objc_autoreleasePoolPush();
    v17 = ((kCFAbsoluteTimeIntervalSince1970 + v12 + (7200 * byte_1008A2349[v15])) / 7200.0);
    *(v45 + 24) = byte_1008A2349[v15];
    v37 = v17 * 7200.0 - kCFAbsoluteTimeIntervalSince1970;
    v18 = +[NSMutableData data];
    v19 = [NSData dataWithBytes:"bleAdv22IauthTag" length:16];
    [v18 appendData:v19];

    v20 = [NSData dataWithBytes:&v37 length:8];
    [v18 appendData:v20];

    v21 = [NSData dataWithBytes:&nearbyInfoV2DecryptedFlags length:1];
    [v18 appendData:v21];

    [v18 appendData:nearbyInfoV2AuthTagData];
    if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      v22 = "?";
      if ((*(v45 + 24) + 1) <= 2u)
      {
        v22 = off_100AE05B8[(*(v45 + 24) + 1)];
      }

      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _verifyNearbyInfoV2IntegrityTag:rapportIdentity:]", 20, "IntegrityTag parameters: AT %@, IT %@, %s, CBIN %u, RefT: %f, F2: %u, %@, %@", nearbyInfoV2AuthTagData, v49[5], v22, v17, *&v37, nearbyInfoV2DecryptedFlags, v36, identityCopy);
    }

    v23 = [identityCopy verifyAuthTag:v49[5] data:v18 type:2 error:0];
    *(v61 + 24) = v23;
    if (v23)
    {
      if (dword_100B509C8 <= 30)
      {
        v24 = "yes";
        if (dword_100B509C8 != -1)
        {
LABEL_25:
          v25 = "?";
          if ((*(v45 + 24) + 1) <= 2u)
          {
            v25 = off_100AE05B8[(*(v45 + 24) + 1)];
          }

          LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _verifyNearbyInfoV2IntegrityTag:rapportIdentity:]", 30, "IntegrityTag resolved: AT %@, IT valid %s, %s, CBIN %u, %@, %@", nearbyInfoV2AuthTagData, v24, v25, v17, v36, identityCopy);
          goto LABEL_29;
        }

        if (_LogCategory_Initialize())
        {
          v24 = "yes";
          if ((v61[3] & 1) == 0)
          {
            v24 = "no";
          }

          goto LABEL_25;
        }
      }

LABEL_29:
      if (*(v45 + 24) == 1)
      {
        *(v61 + 24) = 0;
        v35 = 1;
      }
    }

    objc_autoreleasePoolPop(v16);
    if (v15++ == 2)
    {
      v27 = 1;
    }

    else
    {
      v27 = v23;
    }
  }

  while ((v27 & 1) == 0);
  tagCopy = v36;
  if ((v61[3] & 1) == 0)
  {
    if (self->_prefAuthTagIntegrityCheckEnabled)
    {
      [v36 resetNearbyInfoV2SensitiveProperties];
    }

    if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      v28 = "yes";
      if (!*(v61 + 24))
      {
        v28 = "no";
      }

      if ((*(v45 + 24) + 1) > 2u)
      {
        v29 = "?";
      }

      else
      {
        v29 = off_100AE05B8[(*(v45 + 24) + 1)];
      }

      v30 = "yes";
      if ((v35 & 1) == 0)
      {
        v30 = "no";
      }

      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _verifyNearbyInfoV2IntegrityTag:rapportIdentity:]", 90, "IntegrityTag resolve mismatch: AT %@, IT valid %s, %s, CBIN %u, IT resolved %s, %@, %@", nearbyInfoV2AuthTagData, v28, v29, v17, v30, v36, identityCopy);
    }
  }

  prefAuthTagIntegrityCheckEnabled = self->_prefAuthTagIntegrityCheckEnabled;
LABEL_56:
  if (prefAuthTagIntegrityCheckEnabled)
  {
    v32 = *(v61 + 24);
  }

  else
  {
    v32 = 1;
  }

  (v34[2])(v34);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v32;
}

- (void)injectAOPBufAdv:(id)adv
{
  advCopy = adv;
  if (dword_100B509C8 <= 40 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100804584(advCopy);
  }

  stackBLEScanner = self->_stackBLEScanner;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FE248;
  v9[3] = &unk_100ADF590;
  v9[4] = stackBLEScanner;
  v10 = advCopy;
  v7 = advCopy;
  v8 = stackBLEScanner;
  dispatch_async(dispatchQueue, v9);
}

- (void)_remoteEnsureStarted
{
  v3 = self->_remoteClient;
  v6 = v3;
  v7 = v3;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1008045C8(v3, v4, v5);
      }
    }

    v7 = objc_alloc_init(RPCompanionLinkClient);
    remoteClient = self->_remoteClient;
    self->_remoteClient = v7;

    [(RPCompanionLinkClient *)v7 setDispatchQueue:self->_dispatchQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000FE738;
    v24[3] = &unk_100AE02E0;
    v24[4] = self;
    [(RPCompanionLinkClient *)v7 setDeviceFoundHandler:v24];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000FE7C0;
    v23[3] = &unk_100AE02E0;
    v23[4] = self;
    [(RPCompanionLinkClient *)v7 setDeviceLostHandler:v23];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000FE850;
    v22[3] = &unk_100AE0308;
    v22[4] = self;
    [(RPCompanionLinkClient *)v7 setDeviceChangedHandler:v22];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000FE8D8;
    v21[3] = &unk_100AE0330;
    v21[4] = self;
    [(RPCompanionLinkClient *)v7 registerEventID:@"com.apple.bluetooth.event" options:0 handler:v21];
  }

  if (self->_prefRemoteServerEnabled)
  {
    if (!self->_remoteRequestRegistered)
    {
      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        sub_100804618();
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000FE8E8;
      v20[3] = &unk_100AE0358;
      v20[4] = self;
      [(RPCompanionLinkClient *)v7 registerRequestID:@"com.apple.bluetooth.request" options:0 handler:v20];
      self->_remoteRequestRegistered = 1;
    }
  }

  else if (self->_remoteRequestRegistered)
  {
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008045E4();
    }

    [(RPCompanionLinkClient *)v7 deregisterRequestID:@"com.apple.bluetooth.request"];
    self->_remoteRequestRegistered = 0;
  }

  if (!v6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000FE8FC;
    v17[3] = &unk_100ADF740;
    v18 = v7;
    selfCopy = self;
    [(RPCompanionLinkClient *)v18 activateWithCompletion:v17];
  }

  remoteServer = self->_remoteServer;
  if (self->_prefRemoteServerEnabled)
  {
    v10 = remoteServer;
    if (!v10)
    {
      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        sub_100804680();
      }

      v11 = objc_alloc_init(RPServer);
      v12 = self->_remoteServer;
      self->_remoteServer = v11;

      [(RPServer *)v11 setDispatchQueue:self->_dispatchQueue];
      [(RPServer *)v11 setServiceType:@"com.apple.bluetooth.remote"];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000FE9EC;
      v14[3] = &unk_100ADF740;
      v10 = v11;
      v15 = v10;
      selfCopy2 = self;
      [(RPServer *)v10 setErrorHandler:v14];
      [(RPServer *)v10 activate];
    }
  }

  else
  {
    if (!remoteServer)
    {
      goto LABEL_31;
    }

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_10080464C();
    }

    [(RPServer *)self->_remoteServer invalidate];
    v10 = self->_remoteServer;
    self->_remoteServer = 0;
  }

LABEL_31:
  if (!self->_coexNotificationSetup)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"coexChangeNotification:" name:@"com.apple.bluetooth.leconnection" object:0];

    self->_coexNotificationSetup = 1;
  }
}

- (void)coexChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FEB18;
  v7[3] = &unk_100ADF590;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)sendCoexUpdate:(id)update
{
  updateCopy = update;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        remoteDevice = [v10 remoteDevice];
        identifier = [remoteDevice identifier];

        if (identifier)
        {
          activatedDiscovery = [v10 activatedDiscovery];

          if (activatedDiscovery)
          {
            if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
            {
              sub_1008048DC(updateCopy, identifier);
            }

            [(RPCompanionLinkClient *)self->_remoteClient sendEventID:@"com.apple.bluetooth.whbU" event:updateCopy destinationID:identifier options:0 completion:0];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v14 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v7 = v14;
    }

    while (v14);
  }

  v15 = [updateCopy objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
  unsignedLongValue = [v15 unsignedLongValue];
  v24[0] = @"CBWHBMetricsKeyEventType";
  v24[1] = @"CBWHBMetricsKeySubEventType";
  v25[0] = @"CoexUpdateEvent";
  v25[1] = @"SentCoexUpdate";
  v24[2] = @"CBWHBMetricsKeyNumLEConnections";
  v17 = [NSNumber numberWithUnsignedLongLong:unsignedLongValue];
  v25[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

  v19 = +[CBMetricsDaemon sharedCBMetricsDaemon];
  [v19 reportWhbMetric:v18];
}

- (void)_remoteReceivedEvent:(id)event options:(id)options
{
  eventCopy = event;
  optionsCopy = options;
  v8 = NSDictionaryGetNSNumber();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000421B4;
  v27 = sub_10004256C;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000FF264;
  v22[3] = &unk_100AE0380;
  v22[5] = v8;
  v22[6] = &v23;
  v22[4] = v9;
  v10 = objc_retainBlock(v22);
  if (!v8)
  {
    v18 = CBErrorF(4294960591, "No client ID");
LABEL_19:
    v11 = v24[5];
    v24[5] = v18;
    goto LABEL_16;
  }

  if (!v9)
  {
    v18 = CBErrorF(4294960591, "No sender ID");
    goto LABEL_19;
  }

  v11 = [(NSMutableDictionary *)self->_remoteConnectionMap objectForKeyedSubscript:v8];
  if (v11)
  {
    v12 = [eventCopy mutableCopy];
    CFStringGetTypeID();
    v13 = CFDictionaryGetTypedValue();
    v14 = v13;
    if (v13 && (([v13 isEqualToString:@"DvFo"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"DvLo")))
    {
      [CBDevice convertFromWHBEvent:v12];
    }

    if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      unsignedIntValue = [v8 unsignedIntValue];
      v16 = CUPrintNSObjectOneLine();
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _remoteReceivedEvent:options:]", 20, "Remote event received: Sender %@, CID 0x%X, %@", v9, unsignedIntValue, v16);
    }

    v17 = _CFXPCCreateXPCObjectFromCFObject();
    if (v17)
    {
      [v11 xpcReceivedEvent:v17];
    }

    else
    {
      v20 = CBErrorF(4294960579, "Convert CF to XPC failed");
      v21 = v24[5];
      v24[5] = v20;
    }
  }

  else
  {
    v19 = CBErrorF(4294960591, "Connection not found");
    v12 = v24[5];
    v24[5] = v19;
  }

LABEL_16:
  (v10[2])(v10);

  _Block_object_dispose(&v23, 8);
}

- (void)_remoteReceivedRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = NSDictionaryGetNSNumber();
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000421B4;
  v38 = sub_10004256C;
  v39 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000FF6F8;
  v31[3] = &unk_100AE03A8;
  v33 = &v34;
  v31[4] = v12;
  v31[5] = v11;
  v13 = handlerCopy;
  v32 = v13;
  v14 = objc_retainBlock(v31);
  if (!v11)
  {
    v28 = CBErrorF(4294960591, "No client ID");
LABEL_19:
    v17 = v35[5];
    v35[5] = v28;
    goto LABEL_16;
  }

  if (!v12)
  {
    v28 = CBErrorF(4294960591, "No sender ID");
    goto LABEL_19;
  }

  if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    unsignedIntValue = [v11 unsignedIntValue];
    v16 = CUPrintNSObjectOneLine();
    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _remoteReceivedRequest:options:responseHandler:]", 20, "Remote request received: Sender %@, CID 0x%X, Request %@", v12, unsignedIntValue, v16);
  }

  v17 = [(NSMutableDictionary *)self->_remoteConnectionMap objectForKeyedSubscript:v11];
  if (!v17)
  {
    v17 = objc_alloc_init(CBDaemonXPCConnection);
    v18 = NSPrintF_safe("Remote-%@-0x%X", v12, [v11 unsignedIntValue]);
    [(CBDaemonXPCConnection *)v17 setAppID:v18];

    [(CBDaemonXPCConnection *)v17 setDaemon:self];
    [(CBDaemonXPCConnection *)v17 setDispatchQueue:self->_dispatchQueue];
    [(CBDaemonXPCConnection *)v17 setEntitled:1];
    [(CBDaemonXPCConnection *)v17 setRemoteAccepted:1];
    [(CBDaemonXPCConnection *)v17 setRemoteClient:self->_remoteClient];
    [(CBDaemonXPCConnection *)v17 setRemoteClientID:v11];
    v19 = objc_alloc_init(CBDevice);
    [v19 setIdentifier:v12];
    [(CBDaemonXPCConnection *)v17 setRemoteDevice:v19];
    xpcConnections = self->_xpcConnections;
    if (!xpcConnections)
    {
      v21 = objc_alloc_init(NSMutableSet);
      v22 = self->_xpcConnections;
      self->_xpcConnections = v21;

      xpcConnections = self->_xpcConnections;
    }

    [(NSMutableSet *)xpcConnections addObject:v17];
    remoteConnectionMap = self->_remoteConnectionMap;
    if (!remoteConnectionMap)
    {
      v24 = objc_alloc_init(NSMutableDictionary);
      v25 = self->_remoteConnectionMap;
      self->_remoteConnectionMap = v24;

      remoteConnectionMap = self->_remoteConnectionMap;
    }

    [(NSMutableDictionary *)remoteConnectionMap setObject:v17 forKeyedSubscript:v11];
    [(CBDaemonXPCConnection *)v17 activate];
  }

  v26 = _CFXPCCreateXPCObjectFromCFObject();
  if (v26)
  {
    v27 = objc_retainBlock(v13);
    CUXPCObjectSetResponseHandler();

    [(CBDaemonXPCConnection *)v17 xpcReceivedRequest:v26];
  }

  else
  {
    v29 = CBErrorF(4294960579, "Convert CF to XPC failed");
    v30 = v35[5];
    v35[5] = v29;
  }

LABEL_16:
  (v14[2])(v14);

  _Block_object_dispose(&v34, 8);
}

- (void)remoteRegisterConnection:(id)connection clientID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  remoteConnectionMap = self->_remoteConnectionMap;
  if (!remoteConnectionMap)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_remoteConnectionMap;
    self->_remoteConnectionMap = v8;

    remoteConnectionMap = self->_remoteConnectionMap;
  }

  [(NSMutableDictionary *)remoteConnectionMap setObject:connectionCopy forKeyedSubscript:dCopy];
  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer remoteRegisterConnection:clientID:]", 30, "Remote connection registered: CID %@, %@", dCopy, connectionCopy);
  }
}

- (void)remoteDeregisterConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_remoteConnectionMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_remoteConnectionMap objectForKeyedSubscript:v10];
        if (v11 == connectionCopy)
        {
          [(NSMutableDictionary *)self->_remoteConnectionMap setObject:0 forKeyedSubscript:v10];
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer remoteDeregisterConnection:]", 30, "Remote connection deregistered: CID %@, %@", v10, connectionCopy);
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_remoteInvalidateInactiveXPC
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_xpcConnections;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v2)
  {
    v3 = v2;
    v23 = 0;
    v26 = *v36;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        remoteDevice = [v5 remoteDevice];
        identifier = [remoteDevice identifier];

        if (identifier)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          activeDevices = [(RPCompanionLinkClient *)self->_remoteClient activeDevices];
          v9 = [activeDevices countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v32;
            while (2)
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v32 != v11)
                {
                  objc_enumerationMutation(activeDevices);
                }

                idsDeviceIdentifier = [*(*(&v31 + 1) + 8 * j) idsDeviceIdentifier];
                v14 = [idsDeviceIdentifier isEqual:identifier];

                if (v14)
                {

                  goto LABEL_19;
                }
              }

              v10 = [activeDevices countByEnumeratingWithState:&v31 objects:v40 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v15 = v23;
          if (!v23)
          {
            v15 = objc_alloc_init(NSMutableArray);
          }

          [v15 addObject:{v5, v15}];
        }

LABEL_19:
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v3);
  }

  else
  {
    v23 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v23;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * v20);
        if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
        {
          sub_100804A38(v21);
        }

        [v21 invalidate];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v22 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
      v18 = v22;
    }

    while (v22);
  }
}

- (void)_whbDiscoveryEnsureStarted
{
  v3 = self->_whbDiscoveryDaemon;
  v6 = v3;
  v7 = v3;
  if (!v3)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100804AA0(v3, v4, v5);
      }
    }

    v8 = objc_alloc_init(CBWHBDiscoveryDaemon);
    whbDiscoveryDaemon = self->_whbDiscoveryDaemon;
    self->_whbDiscoveryDaemon = v8;

    [(CBWHBDiscoveryDaemon *)v8 setDaemonServer:self];
    [(CBWHBDiscoveryDaemon *)v8 setDispatchQueue:self->_dispatchQueue];
    [(CBWHBDiscoveryDaemon *)v8 setRemoteClient:self->_remoteClient];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000FFEBC;
    v18[3] = &unk_100ADF718;
    v10 = v8;
    v19 = v10;
    selfCopy = self;
    [(CBWHBDiscoveryDaemon *)v10 setDeviceFoundHandler:v18];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000FFED8;
    v15 = &unk_100ADF718;
    v7 = v10;
    v16 = v7;
    selfCopy2 = self;
    [(CBWHBDiscoveryDaemon *)v7 setDeviceLostHandler:&v12];
  }

  v11 = [(CBWHBDiscoveryDaemon *)v7 discoveryArray:v12];
  if (v11)
  {
  }

  else if ([(NSMutableArray *)self->_whbDiscoveryArray count])
  {
    [(CBWHBDiscoveryDaemon *)v7 setDiscoveryArray:self->_whbDiscoveryArray];
LABEL_12:
    [(CBWHBDiscoveryDaemon *)v7 activate];
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_userControllerCloudUpdateWithDevices:(id)devices
{
  devicesCopy = devices;
  if (dword_100B509C8 <= 50)
  {
    if (dword_100B509C8 != -1 || _LogCategory_Initialize())
    {
      sub_100804AD8(devicesCopy);
    }

    if (dword_100B509C8 <= 35 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804B1C(devicesCopy);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = devicesCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
LABEL_9:
    v8 = 0;
    while (1)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v27 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      identifier = [v9 identifier];
      if (!identifier)
      {
        objc_autoreleasePoolPop(v10);
        idsDeviceID = obj;
        goto LABEL_32;
      }

      v12 = identifier;
      v13 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
      if (!v13)
      {
        v13 = objc_alloc_init(CBDevice);
        deviceMap = self->_deviceMap;
        if (!deviceMap)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_deviceMap;
          self->_deviceMap = v15;

          deviceMap = self->_deviceMap;
        }

        [(NSMutableDictionary *)deviceMap setObject:v13 forKeyedSubscript:v12];
      }

      [v13 setInternalFlags:{objc_msgSend(v13, "internalFlags") | 0x400}];
      [v13 updateWithCBDevice:v9];
      stackController = self->_stackController;
      v26 = 0;
      v18 = [(CBStackController *)stackController modifyDevice:v13 error:&v26];
      v19 = v26;
      if (v18)
      {
        if (dword_100B509C8 > 40 || dword_100B509C8 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        identifier2 = [v9 identifier];
        LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _userControllerCloudUpdateWithDevices:]", 40, "User controller: device %@ updated", identifier2);
      }

      else
      {
        if (dword_100B509C8 > 90 || dword_100B509C8 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        sub_100804B5C(v9, v19, &v31);
        identifier2 = v31;
      }

LABEL_27:
      [(CBDaemonServer *)self _reportDeviceFound:v13];

      objc_autoreleasePoolPop(v10);
      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v6)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  idsDeviceID = [(RPIdentity *)self->_identitySelf idsDeviceID];
  if (idsDeviceID)
  {
    v22 = objc_alloc_init(CBDevice);
    [v22 setIdentifier:idsDeviceID];
    [v22 setIdsDeviceID:idsDeviceID];
    userController = self->_userController;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100100298;
    v25[3] = &unk_100AE03D0;
    v25[4] = idsDeviceID;
    v25[5] = self;
    [(CBUserController *)userController getControllerInfoForDevice:v22 completion:v25];
  }

LABEL_32:
}

- (void)_userControllerUploadLocalControllerInfo
{
  controllerInfo = [(CBStackController *)self->_stackController controllerInfo];
  fastLEConnectionInfoVersion = [controllerInfo fastLEConnectionInfoVersion];
  if (fastLEConnectionInfoVersion && ([controllerInfo fastLEConnectionInfoData], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = self->_identityMapSameAccount;
    if ([(NSMutableDictionary *)v8 count])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10010046C;
      v11[3] = &unk_100AE0418;
      v11[4] = controllerInfo;
      [(CBDaemonServer *)self _performUserControllerActionWithCompletion:v11];
    }

    else
    {
      sub_100804D50(0, v9, v10);
    }
  }

  else
  {
    sub_100804DB0(fastLEConnectionInfoVersion, v5, v6);
  }
}

- (void)activateCBAdvertiser:(id)advertiser completion:(id)completion
{
  advertiserCopy = advertiser;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001005F8;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = advertiserCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = advertiserCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateCBAdvertiser:(id)advertiser completion:(id)completion
{
  advertiserCopy = advertiser;
  completionCopy = completion;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      activatedAdvertiser = [v13 activatedAdvertiser];

      if (activatedAdvertiser == advertiserCopy)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_15;
    }

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804FB8(advertiserCopy);
    }

    [(CBDaemonXPCConnection *)v15 setActivatedAdvertiser:advertiserCopy];
  }

  else
  {
LABEL_9:

LABEL_15:
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100804FF8(advertiserCopy);
    }

    v15 = objc_alloc_init(CBDaemonXPCConnection);
    [(CBDaemonXPCConnection *)v15 setActivatedAdvertiser:advertiserCopy];
    xpcConnections = self->_xpcConnections;
    if (!xpcConnections)
    {
      v17 = objc_alloc_init(NSMutableSet);
      v18 = self->_xpcConnections;
      self->_xpcConnections = v17;

      xpcConnections = self->_xpcConnections;
    }

    [(NSMutableSet *)xpcConnections addObject:v15, v19];
    [(CBDaemonXPCConnection *)v15 activate];
  }

  [(CBDaemonServer *)self scheduleAdvertiserUpdateImmediate:0];
  completionCopy[2](completionCopy, 0);
}

- (void)invalidateCBAdvertiser:(id)advertiser completion:(id)completion
{
  advertiserCopy = advertiser;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100904;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = advertiserCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = advertiserCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateCBAdvertiser:(id)advertiser completion:(id)completion
{
  advertiserCopy = advertiser;
  completionCopy = completion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        activatedAdvertiser = [v13 activatedAdvertiser];

        if (activatedAdvertiser == advertiserCopy)
        {
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_100805038(advertiserCopy);
          }

          [(NSMutableSet *)self->_xpcConnections removeObject:v13];

          goto LABEL_14;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  [(CBDaemonServer *)self scheduleAdvertiserUpdateImmediate:0];
  completionCopy[2](completionCopy, 0);
}

- (void)activateCBController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100B80;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = controllerCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controllerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateCBController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      activatedController = [v13 activatedController];

      if (activatedController == controllerCopy)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_15;
    }

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805078(controllerCopy);
    }

    [(CBDaemonXPCConnection *)v15 setActivatedController:controllerCopy];
  }

  else
  {
LABEL_9:

LABEL_15:
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008050B8(controllerCopy);
    }

    v15 = objc_alloc_init(CBDaemonXPCConnection);
    [(CBDaemonXPCConnection *)v15 setActivatedController:controllerCopy];
    [(CBDaemonXPCConnection *)v15 setAppID:@"CBDaemon"];
    xpcConnections = self->_xpcConnections;
    if (!xpcConnections)
    {
      v17 = objc_alloc_init(NSMutableSet);
      v18 = self->_xpcConnections;
      self->_xpcConnections = v17;

      xpcConnections = self->_xpcConnections;
    }

    [(NSMutableSet *)xpcConnections addObject:v15, v19];
    [(CBDaemonXPCConnection *)v15 activate];
  }

  [(CBDaemonServer *)self scheduleControlUpdateImmediate:0];
  completionCopy[2](completionCopy, 0);
}

- (void)invalidateCBController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100E9C;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = controllerCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controllerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateCBController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        activatedController = [v13 activatedController];

        if (activatedController == controllerCopy)
        {
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_1008050F8(controllerCopy);
          }

          [(NSMutableSet *)self->_xpcConnections removeObject:v13];

          goto LABEL_14;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  [(CBDaemonServer *)self scheduleControlUpdateImmediate:0];
  completionCopy[2](completionCopy, 0);
}

- (void)activateCBDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101118;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = discoveryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = discoveryCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateCBDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      activatedDiscovery = [v13 activatedDiscovery];

      if (activatedDiscovery == discoveryCopy)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_15;
    }

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805138(discoveryCopy);
    }

    [(CBDaemonXPCConnection *)v15 setActivatedDiscovery:discoveryCopy];
  }

  else
  {
LABEL_9:

LABEL_15:
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805178(discoveryCopy);
    }

    v15 = objc_alloc_init(CBDaemonXPCConnection);
    [(CBDaemonXPCConnection *)v15 setActivatedDiscovery:discoveryCopy];
    appID = [discoveryCopy appID];
    v17 = appID;
    if (appID)
    {
      v18 = appID;
    }

    else
    {
      v18 = @"CBDaemon";
    }

    [(CBDaemonXPCConnection *)v15 setAppID:v18, v23];

    [(CBDaemonXPCConnection *)v15 setDispatchQueue:self->_dispatchQueue];
    xpcConnections = self->_xpcConnections;
    if (!xpcConnections)
    {
      v20 = objc_alloc_init(NSMutableSet);
      v21 = self->_xpcConnections;
      self->_xpcConnections = v20;

      xpcConnections = self->_xpcConnections;
    }

    [(NSMutableSet *)xpcConnections addObject:v15];
    [(CBDaemonXPCConnection *)v15 activate];
    v22 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v22 reportCBDiscovery:discoveryCopy daemonCnx:v15 action:@"strt"];
  }

  [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:0];
  completionCopy[2](completionCopy, 0);
}

- (void)invalidateCBDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101488;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = discoveryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = discoveryCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateCBDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        activatedDiscovery = [v13 activatedDiscovery];

        if (activatedDiscovery == discoveryCopy)
        {
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_1008051B8(discoveryCopy);
          }

          [(NSMutableSet *)self->_xpcConnections removeObject:v13];
          v15 = +[CBMetricsDaemon sharedCBMetricsDaemon];
          [v15 reportCBDiscovery:discoveryCopy daemonCnx:v13 action:@"stop"];

          [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:0];
          goto LABEL_14;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  completionCopy[2](completionCopy, 0);
}

- (void)activateCBSpatialInteractionSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101730;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = sessionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateCBSpatialInteractionSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      activatedSpatialInteractionSession = [v13 activatedSpatialInteractionSession];

      if (activatedSpatialInteractionSession == sessionCopy)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_15;
    }

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_1008051F8(sessionCopy);
    }

    [(CBDaemonXPCConnection *)v15 setActivatedSpatialInteractionSession:sessionCopy];
  }

  else
  {
LABEL_9:

LABEL_15:
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805238(sessionCopy);
    }

    v15 = objc_alloc_init(CBDaemonXPCConnection);
    [(CBDaemonXPCConnection *)v15 setActivatedSpatialInteractionSession:sessionCopy];
    [(CBDaemonXPCConnection *)v15 setAppID:@"CBDaemon"];
    xpcConnections = self->_xpcConnections;
    if (!xpcConnections)
    {
      v17 = objc_alloc_init(NSMutableSet);
      v18 = self->_xpcConnections;
      self->_xpcConnections = v17;

      xpcConnections = self->_xpcConnections;
    }

    [(NSMutableSet *)xpcConnections addObject:v15, v19];
    [(CBDaemonXPCConnection *)v15 activate];
  }

  [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:0];
  completionCopy[2](completionCopy, 0);
}

- (void)invalidateCBSpatialInteractionSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101A4C;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = sessionCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateCBSpatialInteractionSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        activatedSpatialInteractionSession = [v13 activatedSpatialInteractionSession];

        if (activatedSpatialInteractionSession == sessionCopy)
        {
          if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_100805278(sessionCopy);
          }

          [(NSMutableSet *)self->_xpcConnections removeObject:v13];
          [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:0];

          goto LABEL_14;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  completionCopy[2](completionCopy, 0);
}

- (void)aopMessageReceived:(id)received
{
  receivedCopy = received;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100101C9C;
  v7[3] = &unk_100ADF590;
  v7[4] = self;
  v8 = receivedCopy;
  v6 = receivedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_aopMessageReceived:(id)received
{
  receivedCopy = received;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        activatedSpatialInteractionSession = [v10 activatedSpatialInteractionSession];
        aopDataHandler = [activatedSpatialInteractionSession aopDataHandler];

        if (aopDataHandler)
        {
          if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
          {
            sub_1008052B8();
          }

          [v10 aopMessageReceived:receivedCopy];

          goto LABEL_17;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (dword_100B509C8 <= 90 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805314();
    v5 = v17;
LABEL_17:
  }
}

- (void)notifyConnectedDeviceUUID:(id)d name:(id)name servicesUUIDs:(id)ds
{
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100101F4C;
  v15[3] = &unk_100AE0468;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = dsCopy;
  v12 = dsCopy;
  v13 = nameCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)optimalWhbDeviceForStableIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102028;
  block[3] = &unk_100AE0440;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_performUserControllerActionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_systemMonitor;
  if (([(CUSystemMonitor *)v5 firstUnlocked]& 1) != 0)
  {
    v6 = self->_userController;
    if (v6)
    {
      v7 = v6;
      completionCopy[2](completionCopy, v6, 0);
      [(CBDaemonServer *)self _scheduleUserControllerInvalidation:0];
    }

    else
    {
      objc_initWeak(&location, self);
      [(CBStackAdaptor *)self->_stackAdaptor userControllerClass];
      v8 = objc_alloc_init(objc_opt_class());
      [v8 setDispatchQueue:self->_dispatchQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10010229C;
      v13[3] = &unk_100AE0040;
      objc_copyWeak(&v14, &location);
      [v8 setInvalidationHandler:v13];
      objc_storeStrong(&self->_userController, v8);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001022E0;
      v9[3] = &unk_100AE0490;
      objc_copyWeak(&v12, &location);
      v11 = completionCopy;
      v7 = v8;
      v10 = v7;
      [(CBUserController *)v7 activateWithCompletion:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    sub_100805368(completionCopy);
  }
}

- (void)_invalidateUserController
{
  v3 = self->_userController;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    [(CBUserController *)v3 invalidate];
    userController = self->_userController;
    self->_userController = 0;

    v4 = v8;
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (v6 = _LogCategory_Initialize(), v4 = v8, v6))
      {
        sub_100805458(v6, v4, v7);
        v4 = v8;
      }
    }
  }
}

- (void)_xpcListenerEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    [(CBDaemonServer *)self _xpcConnectionAccept:eventCopy];
    goto LABEL_8;
  }

  v6 = eventCopy;
  if (eventCopy == &_xpc_error_connection_invalid)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (type = _LogCategory_Initialize(), v6 = eventCopy, type))
      {
        sub_1008054D0(type, v6, v5);
        goto LABEL_8;
      }
    }
  }

  else if (dword_100B509C8 <= 90)
  {
    if (dword_100B509C8 != -1 || (v7 = _LogCategory_Initialize(), v6 = eventCopy, v7))
    {
      sub_100805474();
LABEL_8:
      v6 = eventCopy;
    }
  }
}

- (void)_xpcConnectionAccept:(id)accept
{
  acceptCopy = accept;
  v5 = objc_alloc_init(CBDaemonXPCConnection);
  [(CBDaemonXPCConnection *)v5 setDaemon:self];
  [(CBDaemonXPCConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(CBDaemonXPCConnection *)v5 setPid:xpc_connection_get_pid(acceptCopy)];
  [(CBDaemonXPCConnection *)v5 setXpcCnx:acceptCopy];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100102644;
  handler[3] = &unk_100ADFF40;
  handler[4] = v5;
  xpc_connection_set_event_handler(acceptCopy, handler);
  xpc_connection_set_target_queue(acceptCopy, self->_dispatchQueue);
  xpc_connection_activate(acceptCopy);

  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = self->_xpcConnections;
    self->_xpcConnections = v7;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v5];
  [(CBDaemonXPCConnection *)v5 activate];
}

- (void)xpcConnectionInvalidated:(id)invalidated
{
  xpcConnections = self->_xpcConnections;
  invalidatedCopy = invalidated;
  [(NSMutableSet *)xpcConnections removeObject:invalidatedCopy];
  [(CBDaemonServer *)self remoteDeregisterConnection:invalidatedCopy];

  [(CBDaemonServer *)self scheduleUpdateImmediate:0];
}

- (void)_xpcPublisherConnectionsAction:(unsigned int)action token:(unint64_t)token info:(id)info
{
  v6 = *&action;
  infoCopy = info;
  v11 = infoCopy;
  if (v6 == 2)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
      {
        infoCopy = sub_1008054EC(infoCopy, v9, v10);
      }
    }
  }

  else if (v6 == 1)
  {
    infoCopy = [(CBDaemonServer *)self _xpcPublisherConnectionsRemoveToken:token reason:"removed"];
  }

  else if (v6)
  {
    if (dword_100B509C8 <= 30)
    {
      v12 = infoCopy;
      if (dword_100B509C8 != -1 || (infoCopy = _LogCategory_Initialize(), v11 = v12, infoCopy))
      {
        sub_100805508(v11, v6);
      }
    }
  }

  else
  {
    infoCopy = [(CBDaemonServer *)self _xpcPublisherConnectionsAddToken:token info:?];
  }

  _objc_release_x3(infoCopy);
}

- (void)_xpcPublisherConnectionsAddToken:(unint64_t)token info:(id)info
{
  infoCopy = info;
  if ([(CBDaemonServer *)self xpcEventAllowedInfo:infoCopy])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->_xpcConnections;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if ([v12 xpcToken] == token)
        {
          xpcCnx = [v12 xpcCnx];

          if (!xpcCnx)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v14 = v12;

      if (!v14)
      {
        goto LABEL_17;
      }

      activatedConnection = [(CBDaemonXPCConnection *)v14 activatedConnection];
      [activatedConnection updateWithXPCSubscriberInfo:infoCopy];
      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherConnectionsAddToken:info:]", 30, "XPC subscriber update: connections, %llu, %@", token, v14);
      }
    }

    else
    {
LABEL_11:

LABEL_17:
      v14 = objc_alloc_init(CBDaemonXPCConnection);
      [(CBDaemonXPCConnection *)v14 setAppID:@"XPCProxy"];
      [(CBDaemonXPCConnection *)v14 setXpcToken:token];
      activatedConnection = objc_alloc_init(CBConnection);
      [(CBDaemonXPCConnection *)v14 setActivatedConnection:activatedConnection];
      [activatedConnection updateWithXPCSubscriberInfo:infoCopy];
      int64 = xpc_dictionary_get_int64(infoCopy, "psm");
      if (int64)
      {
        v17 = objc_alloc_init(CBServer);
        [activatedConnection setServer:v17];
        [v17 setBleListenPSM:int64];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100102B84;
        v23[3] = &unk_100AE04B8;
        v23[4] = v17;
        [v17 activateWithCompletion:v23];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100102C0C;
        v21[3] = &unk_100AE0508;
        v21[4] = activatedConnection;
        v21[5] = v14;
        v22 = int64;
        v21[6] = self;
        v21[7] = token;
        [v17 setAcceptHandler:v21];
      }

      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherConnectionsAddToken:info:]", 30, "XPC subscriber add: connections, token %llu, %@", token, v14);
      }

      xpcConnections = self->_xpcConnections;
      if (!xpcConnections)
      {
        v19 = objc_alloc_init(NSMutableSet);
        v20 = self->_xpcConnections;
        self->_xpcConnections = v19;

        xpcConnections = self->_xpcConnections;
      }

      [(NSMutableSet *)xpcConnections addObject:v14];
      [(CBDaemonXPCConnection *)v14 activate];
    }
  }

  else
  {
    [(CBDaemonServer *)self _xpcPublisherConnectionsRemoveToken:token reason:"not allowed"];
  }
}

- (void)_xpcPublisherConnectionsRemoveToken:(unint64_t)token reason:(const char *)reason
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_xpcConnections;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 xpcToken] == token)
        {
          xpcCnx = [v11 xpcCnx];

          if (!xpcCnx)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherConnectionsRemoveToken:reason:]", 30, "XPC subscriber remove: connections, reason %s, token %llu, %@", reason, token, v8);
  }

  if (v8)
  {
    [(NSMutableSet *)self->_xpcConnections removeObject:v8];
    [v8 invalidate];
  }
}

- (BOOL)xpcEventAllowedInfo:(id)info
{
  infoCopy = info;
  if (xpc_get_type(infoCopy) != &_xpc_type_dictionary)
  {
    LOBYTE(uTF8String) = 1;
    goto LABEL_12;
  }

  v4 = xpc_dictionary_get_array(infoCopy, "limitToDeviceClasses");
  v5 = xpc_dictionary_get_array(infoCopy, "denyProductList");
  if (!(v4 | v5))
  {
    LOBYTE(uTF8String) = 1;
    goto LABEL_11;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (v4)
  {
    v6 = MGCopyAnswer();
    uTF8String = [v6 UTF8String];

    if (!uTF8String)
    {
      goto LABEL_10;
    }

    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1001034F0;
    applier[3] = &unk_100AE0530;
    applier[4] = &v12;
    applier[5] = uTF8String;
    xpc_array_apply(v4, applier);
  }

  if (!v5)
  {
LABEL_9:
    LOBYTE(uTF8String) = *(v13 + 24);
    goto LABEL_10;
  }

  v8 = MGCopyAnswer();
  uTF8String = [v8 UTF8String];

  if (uTF8String)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100103548;
    v10[3] = &unk_100AE0530;
    v10[4] = &v12;
    v10[5] = uTF8String;
    xpc_array_apply(v5, v10);
    goto LABEL_9;
  }

LABEL_10:
  _Block_object_dispose(&v12, 8);
LABEL_11:

LABEL_12:
  return uTF8String & 1;
}

- (void)_xpcPublisherDiscoveryAction:(unsigned int)action token:(unint64_t)token info:(id)info
{
  v6 = *&action;
  infoCopy = info;
  v11 = infoCopy;
  if (v6 == 2)
  {
    if (dword_100B509C8 <= 30)
    {
      if (dword_100B509C8 != -1 || (infoCopy = _LogCategory_Initialize(), infoCopy))
      {
        infoCopy = sub_1008055D0(infoCopy, v9, v10);
      }
    }
  }

  else if (v6 == 1)
  {
    infoCopy = [(CBDaemonServer *)self _xpcPublisherDiscoveryRemoveToken:token reason:"removed"];
  }

  else if (v6)
  {
    if (dword_100B509C8 <= 30)
    {
      v12 = infoCopy;
      if (dword_100B509C8 != -1 || (infoCopy = _LogCategory_Initialize(), v11 = v12, infoCopy))
      {
        sub_1008055EC(v11, v6);
      }
    }
  }

  else
  {
    infoCopy = [(CBDaemonServer *)self _xpcPublisherDiscoveryAddToken:token info:?];
  }

  _objc_release_x3(infoCopy);
}

- (void)_xpcPublisherDiscoveryAddToken:(unint64_t)token info:(id)info
{
  infoCopy = info;
  if ([(CBDaemonServer *)self xpcEventAllowedInfo:infoCopy])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_xpcConnections;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v8;
    v10 = *v29;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 xpcToken] == token)
        {
          xpcCnx = [v12 xpcCnx];

          if (!xpcCnx)
          {
            v14 = v12;

            if (!v14)
            {
              goto LABEL_19;
            }

            activatedDiscovery = [(CBDaemonXPCConnection *)v14 activatedDiscovery];
            v16 = [activatedDiscovery updateWithXPCSubscriberInfo:infoCopy];
            if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
            {
              sub_100805658(v16, token, v14);
              if (!v16)
              {
                goto LABEL_33;
              }
            }

            else if (!v16)
            {
              goto LABEL_33;
            }

            v17 = +[CBMetricsDaemon sharedCBMetricsDaemon];
            v18 = v17;
            v19 = @"updt";
            goto LABEL_32;
          }
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

LABEL_11:

LABEL_19:
    v14 = objc_alloc_init(CBDaemonXPCConnection);
    [(CBDaemonXPCConnection *)v14 setAppID:@"XPCProxy"];
    [(CBDaemonXPCConnection *)v14 setXpcToken:token];
    activatedDiscovery = objc_alloc_init(CBDiscovery);
    string = xpc_dictionary_get_string(infoCopy, "label");
    if (string)
    {
      appID = [NSString stringWithUTF8String:string];
      v22 = [NSString stringWithFormat:@"ProxyFor:%@", appID];
      [activatedDiscovery setAppID:v22];

      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        sub_1008056CC(appID);
      }
    }

    else
    {
      appID = [(CBDaemonXPCConnection *)v14 appID];
      [activatedDiscovery setAppID:appID];
    }

    [(CBDaemonXPCConnection *)v14 setActivatedDiscovery:activatedDiscovery];
    [activatedDiscovery updateWithXPCSubscriberInfo:infoCopy];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100103B10;
    v27[3] = &unk_100AE0558;
    v27[4] = activatedDiscovery;
    v27[5] = v14;
    v27[6] = self;
    v27[7] = token;
    [activatedDiscovery setDeviceFoundHandler:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100103D70;
    v26[3] = &unk_100AE0558;
    v26[4] = activatedDiscovery;
    v26[5] = v14;
    v26[6] = self;
    v26[7] = token;
    [activatedDiscovery setDeviceLostHandler:v26];
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherDiscoveryAddToken:info:]", 30, "XPC subscriber add: discovery, token %llu, %@", token, v14);
    }

    xpcConnections = self->_xpcConnections;
    if (!xpcConnections)
    {
      v24 = objc_alloc_init(NSMutableSet);
      v25 = self->_xpcConnections;
      self->_xpcConnections = v24;

      xpcConnections = self->_xpcConnections;
    }

    [(NSMutableSet *)xpcConnections addObject:v14];
    [(CBDaemonXPCConnection *)v14 activate];
    v17 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    v18 = v17;
    v19 = @"strt";
LABEL_32:
    [v17 reportCBDiscovery:activatedDiscovery daemonCnx:v14 action:v19];

LABEL_33:
    [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:0];
  }

  else
  {
    [(CBDaemonServer *)self _xpcPublisherDiscoveryRemoveToken:token reason:"not allowed"];
  }
}

- (void)_xpcPublisherDiscoveryRemoveToken:(unint64_t)token reason:(const char *)reason
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_xpcConnections;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 xpcToken] == token)
        {
          xpcCnx = [v11 xpcCnx];

          if (!xpcCnx)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _xpcPublisherDiscoveryRemoveToken:reason:]", 30, "XPC subscriber remove: discovery, reason %s, token %llu, %@", reason, token, v8);
  }

  if (v8)
  {
    [(NSMutableSet *)self->_xpcConnections removeObject:v8];
    activatedDiscovery = [v8 activatedDiscovery];
    if (activatedDiscovery)
    {
      v14 = +[CBMetricsDaemon sharedCBMetricsDaemon];
      [v14 reportCBDiscovery:activatedDiscovery daemonCnx:v8 action:@"stop"];
    }

    [v8 invalidate];
    [(CBDaemonServer *)self scheduleDiscoveryUpdateImmediate:0];
  }
}

- (void)addLostDeviceToLostCBSpatialDevicesIfNeeded:(id)needed
{
  neededCopy = needed;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100104290;
  v7[3] = &unk_100ADF590;
  v7[4] = self;
  v8 = neededCopy;
  v6 = neededCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_stackBLEScannerDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v6 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (!v6)
    {
      v6 = objc_alloc_init(CBDevice);
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_deviceMap;
        self->_deviceMap = v8;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v6 forKeyedSubscript:identifier];
    }

    [v6 setInternalFlags:{objc_msgSend(v6, "internalFlags") | 2}];
    v10 = [v6 updateWithCBDevice:foundCopy];
    [v6 updateWithReceivedAuthTag:self->_selfAuthTag forType:21];
    if ([v6 changedTypesNeedsIdentify] && self->_stackBLENeedsIdentify)
    {
      [(CBDaemonServer *)self _identitiesResolveNearbyDevice:v6];
    }

    [(CBDaemonServer *)self _stackBLEScannerUpdateProxControlIfNeeded:v6];
    if ([v6 attributeInternalFlags])
    {
      stackController = self->_stackController;
      v12 = 0;
      [(CBStackController *)stackController modifyDevice:foundCopy error:&v12];
    }

    if (v10)
    {
      [(CBDaemonServer *)self _reportDeviceFound:v6];
    }
  }
}

- (void)_stackBLEScannerDeviceLost:(id)lost
{
  identifier = [lost identifier];
  if (identifier)
  {
    v5 = [sub_1001048B0() objectForKeyedSubscript:?];
    if (v5)
    {
      [(NSMutableDictionary *)self->_identifyDevices setObject:0 forKeyedSubscript:v17];
      if ([(CBStackController *)self->_stackController poweredOn])
      {
        if (([v5 deviceFlags] & 0x2000) != 0 || (objc_msgSend(v5, "deviceFlags") & 0x4000) != 0)
        {
          v6 = 2;
        }

        else
        {
          v6 = [v5 internalFlags] & 0x80 | 2;
        }
      }

      else
      {
        v6 = 65538;
      }

      v7 = [v5 removeInternalFlags:v6];
      if ((v7 & 0x8000000) != 0)
      {
        sub_1000BE96C(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
        if (IsAppleInternalBuild())
        {
          spatialInteractionDeviceTimestampArrayDictionary = [v5 spatialInteractionDeviceTimestampArrayDictionary];

          if (spatialInteractionDeviceTimestampArrayDictionary)
          {
            [sub_10009C5D4() addLostDeviceToLostCBSpatialDevicesIfNeeded:?];
          }
        }

        [sub_10009C5D4() _reportDeviceLost:?];
      }

      else
      {
        [sub_10009C5D4() _reportDeviceFound:?];
      }
    }

    identifier = v17;
  }
}

- (void)_stackClassicScannerDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (!v5)
    {
      v5 = objc_alloc_init(CBDevice);
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_deviceMap;
        self->_deviceMap = v7;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:identifier];
    }

    v9 = [v5 setInternalFlags:{objc_msgSend(v5, "internalFlags") | 0x80}];
    v17 = sub_100075D3C(v9, v10, v11, v12, v13, v14, v15, v16, v18, foundCopy);
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _stackClassicScannerDeviceFound:]", 30, "Classic Scanner Device Found: %@", v5);
    }

    if (v17)
    {
      [(CBDaemonServer *)self _reportDeviceFound:v5];
    }
  }
}

- (void)_stackClassicScannerDeviceLost:(id)lost
{
  identifier = [lost identifier];
  if (identifier)
  {
    v5 = [sub_1001048B0() objectForKeyedSubscript:?];
    if (v5)
    {
      if ([(CBStackController *)self->_stackController poweredOn])
      {
        if (([v5 deviceFlags] & 0x2000) != 0 || (objc_msgSend(v5, "deviceFlags") & 0x4000) != 0)
        {
          v6 = 128;
        }

        else
        {
          v6 = [v5 internalFlags] & 2 | 0x80;
        }
      }

      else
      {
        v6 = 65664;
      }

      v7 = [v5 removeInternalFlags:v6];
      if ((v7 & 0x8000000) != 0)
      {
        sub_1000BE96C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
        [sub_10009C5D4() _reportDeviceLost:?];
      }

      else
      {
        [sub_10009C5D4() _reportDeviceFound:?];
      }
    }

    identifier = v16;
  }
}

- (void)_stackDeviceMonitorDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (!v5)
    {
      v5 = objc_alloc_init(CBDevice);
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_deviceMap;
        self->_deviceMap = v7;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:identifier];
    }

    v9 = [v5 setInternalFlags:{objc_msgSend(v5, "internalFlags") | 4}];
    sub_100075D3C(v9, v10, v11, v12, v13, v14, v15, v16, v17, foundCopy);
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _stackDeviceMonitorDeviceFound:]", 30, "Monitor Device Found: %@", v5);
    }

    [(CBDaemonServer *)self _reportDeviceFound:v5];
  }
}

- (void)_stackDeviceMonitorDeviceLost:(id)lost
{
  identifier = [lost identifier];
  if (identifier)
  {
    v5 = [sub_1001048B0() objectForKeyedSubscript:?];
    if (v5)
    {
      if ([(CBStackController *)self->_stackController poweredOn])
      {
        v6 = 4;
      }

      else
      {
        v6 = 65540;
      }

      v7 = [v5 removeInternalFlags:v6];
      if ((v7 & 0x8000000) != 0)
      {
        sub_1000BE96C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
        [sub_10009C5D4() _reportDeviceLost:?];
      }

      else
      {
        [sub_10009C5D4() _reportDeviceFound:?];
      }
    }

    identifier = v16;
  }
}

- (void)_stackPowerSourceMonitorDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (!v5)
    {
      v5 = objc_alloc_init(CBDevice);
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_deviceMap;
        self->_deviceMap = v7;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:identifier];
    }

    v9 = [foundCopy setInternalFlags:{objc_msgSend(foundCopy, "internalFlags") | 0x8000}];
    v17 = sub_100075D3C(v9, v10, v11, v12, v13, v14, v15, v16, v18, foundCopy);
    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _stackPowerSourceMonitorDeviceFound:]", 30, "Power source monitor device found: %@", v5);
    }

    if (v17)
    {
      [(CBDaemonServer *)self _reportDeviceFound:v5];
    }
  }
}

- (void)_stackPowerSourceMonitorDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:identifier];
    if (v5)
    {
      v6 = [lostCopy setInternalFlags:{objc_msgSend(lostCopy, "internalFlags") | 0x8000}];
      v14 = sub_100075D3C(v6, v7, v8, v9, v10, v11, v12, v13, v15, lostCopy);
      if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _stackPowerSourceMonitorDeviceLost:]", 30, "Power source monitor device lost: %@", v5);
      }

      if (v14)
      {
        [(CBDaemonServer *)self _reportDeviceFound:v5];
      }
    }
  }
}

- (void)_whbDiscoveryDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v6 = [(NSMutableDictionary *)self->_whbDeviceMap objectForKeyedSubscript:identifier];
    if (!v6)
    {
      v6 = objc_alloc_init(CBDevice);
      whbDeviceMap = self->_whbDeviceMap;
      if (!whbDeviceMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_whbDeviceMap;
        self->_whbDeviceMap = v8;

        whbDeviceMap = self->_whbDeviceMap;
      }

      [(NSMutableDictionary *)whbDeviceMap setObject:v6 forKeyedSubscript:identifier];
    }

    [v6 setInternalFlags:{objc_msgSend(v6, "internalFlags") | 2}];
    [v6 updateWithCBDevice:foundCopy];
    remoteHostID = [foundCopy remoteHostID];
    [v6 setRemoteHostID:remoteHostID];

    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _whbDiscoveryDeviceFound:]", 30, "WHB Device Found: %@", v6);
    }

    v11 = self->_xpcConnections;
    sub_10009E0B8();
    v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(8 * i);
          activatedDiscoveryWHB = [v17 activatedDiscoveryWHB];
          v19 = activatedDiscoveryWHB;
          if (activatedDiscoveryWHB && ([activatedDiscoveryWHB disabledActive] & 1) == 0)
          {
            [v17 reportDeviceFound:v6];
          }
        }

        sub_10009E0B8();
        v14 = [NSMutableSet countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v14);
    }

    [foundCopy setChangeFlags:0];
  }
}

- (void)_whbDiscoveryDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v6 = [(NSMutableDictionary *)self->_whbDeviceMap objectForKeyedSubscript:identifier];
    if (v6)
    {
      [(NSMutableDictionary *)self->_whbDeviceMap setObject:0 forKeyedSubscript:identifier];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = self->_xpcConnections;
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            activatedDiscoveryWHB = [v12 activatedDiscoveryWHB];
            if (activatedDiscoveryWHB)
            {
              [v12 reportDeviceLost:v6];
            }
          }

          v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      [lostCopy setChangeFlags:0];
    }
  }
}

- (void)_notifyConnectedDeviceUUID:(id)d name:(id)name servicesUUIDs:(id)ds
{
  dCopy = d;
  nameCopy = name;
  dsCopy = ds;
  v34 = self->_xpcPublisherConnections;
  if (!v34)
  {
    goto LABEL_47;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (!v9)
  {

LABEL_43:
    if (dword_100B509C8 <= 20 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
    {
      v33 = CUPrintNSObjectOneLine();
      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _notifyConnectedDeviceUUID:name:servicesUUIDs:]", 20, "XPC subscriber connected: no matches, %@", v33);
    }

    goto LABEL_47;
  }

  v10 = v9;
  v40 = 0;
  v11 = *v54;
  v36 = *v54;
  v37 = v8;
  do
  {
    v12 = 0;
    v38 = v10;
    do
    {
      if (*v54 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v53 + 1) + 8 * v12);
      xpcToken = [v13 xpcToken];
      if (xpcToken)
      {
        v15 = xpcToken;
        activatedConnection = [v13 activatedConnection];
        v17 = activatedConnection;
        if (activatedConnection)
        {
          serviceUUIDs = [activatedConnection serviceUUIDs];
          if (serviceUUIDs)
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v19 = dsCopy;
            v43 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v43)
            {
              v20 = *v50;
              v44 = v19;
              v42 = *v50;
              while (2)
              {
                for (i = 0; i != v43; i = i + 1)
                {
                  if (*v50 != v20)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v22 = *(*(&v49 + 1) + 8 * i);
                  v45 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v23 = serviceUUIDs;
                  v24 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v46;
LABEL_17:
                    v27 = 0;
                    while (1)
                    {
                      if (*v46 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      if ([*(*(&v45 + 1) + 8 * v27) isEqual:v22])
                      {
                        break;
                      }

                      if (v25 == ++v27)
                      {
                        v25 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                        if (v25)
                        {
                          goto LABEL_17;
                        }

                        goto LABEL_23;
                      }
                    }

                    v19 = xpc_dictionary_create(0, 0, 0);
                    uUIDString = [dCopy UUIDString];
                    uTF8String = [uUIDString UTF8String];

                    if (!uTF8String)
                    {
                      goto LABEL_32;
                    }

                    xpc_dictionary_set_string(v19, "deviceID", uTF8String);
                    uTF8String2 = [nameCopy UTF8String];
                    v8 = v37;
                    v10 = v38;
                    v11 = v36;
                    if (uTF8String2)
                    {
                      xpc_dictionary_set_string(v19, "name", uTF8String2);
                    }

                    xpc_event_publisher_fire();
                    if (dword_100B509C8 <= 30 && (dword_100B509C8 != -1 || _LogCategory_Initialize()))
                    {
                      v31 = CUPrintNSObjectOneLine();
                      v32 = CUPrintErrorCode();
                      LogPrintF_safe(&dword_100B509C8, "[CBDaemonServer _notifyConnectedDeviceUUID:name:servicesUUIDs:]", 30, "XPC subscriber connected: token %llu, device %@, services %@, %@", v15, dCopy, v31, v32);
                    }

                    ++v40;
                    goto LABEL_35;
                  }

LABEL_23:

                  v19 = v44;
                  v20 = v42;
                }

                v43 = [v44 countByEnumeratingWithState:&v49 objects:v58 count:16];
                if (v43)
                {
                  continue;
                }

                break;
              }

LABEL_32:
              v8 = v37;
              v10 = v38;
              v11 = v36;
            }

LABEL_35:
          }
        }
      }

      v12 = v12 + 1;
    }

    while (v12 != v10);
    v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
  }

  while (v10);

  if (!v40)
  {
    goto LABEL_43;
  }

LABEL_47:
}

@end