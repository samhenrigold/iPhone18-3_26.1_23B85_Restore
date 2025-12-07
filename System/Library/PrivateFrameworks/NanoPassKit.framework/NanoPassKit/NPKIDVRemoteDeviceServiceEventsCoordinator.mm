@interface NPKIDVRemoteDeviceServiceEventsCoordinator
- (NPKIDVRemoteDeviceServiceEventsCoordinator)init;
- (NSString)remoteDeviceID;
- (id)remoteDeviceParingIDFor:(id)for;
- (unint64_t)registerEvents:(unint64_t)events forServiceName:(id)name;
- (unint64_t)unregisterEvents:(unint64_t)events forServiceName:(id)name;
- (void)_insideLockPersistServiceContext;
- (void)_insideLockSetupBiometricAuthenticationTokenReminderForDeviceID:(id)d serviceNames:(id)names;
- (void)_insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:(id)d;
- (void)_notifyProcessWithServiceNames:(id)names deviceEvent:(unint64_t)event forDeviceID:(id)d eventContext:(id)context;
- (void)handlePassDeletionForPass:(id)pass;
- (void)initializeWithDevice:(id)device;
- (void)insideLockTeardownCurrentRemoteDeviceContextWithReason:(unint64_t)reason;
- (void)setNeedsPrearmCredential:(BOOL)credential;
- (void)teardownCurrentRemoteDeviceContextWithReason:(unint64_t)reason;
@end

@implementation NPKIDVRemoteDeviceServiceEventsCoordinator

- (NPKIDVRemoteDeviceServiceEventsCoordinator)init
{
  v9.receiver = self;
  v9.super_class = NPKIDVRemoteDeviceServiceEventsCoordinator;
  v2 = [(NPKIDVRemoteDeviceServiceEventsCoordinator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_serviceContextLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_create("com.apple.NanoPassKit.RemoteDeviceServiceEventsCoordinator.remoteNotification", 0);
    remoteProcessNotificationQueue = v3->_remoteProcessNotificationQueue;
    v3->_remoteProcessNotificationQueue = v4;

    v6 = dispatch_queue_create("com.apple.NanoPassKit.RemoteDeviceServiceEventsCoordinator.lockStatus", 0);
    lockStatusChangeCoordinatorQueue = v3->_lockStatusChangeCoordinatorQueue;
    v3->_lockStatusChangeCoordinatorQueue = v6;
  }

  return v3;
}

- (NSString)remoteDeviceID
{
  os_unfair_lock_lock(&self->_serviceContextLock);
  remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  if (!remoteDeviceID)
  {
    v5 = pk_Payment_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Not active device initialized", v10, 2u);
      }
    }
  }

  return remoteDeviceID;
}

- (id)remoteDeviceParingIDFor:(id)for
{
  v29 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (forCopy)
  {
    os_unfair_lock_lock(&self->_serviceContextLock);
    remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
    v6 = self->_pairingID;
    os_unfair_lock_unlock(&self->_serviceContextLock);
    if (remoteDeviceID)
    {
      v8 = [remoteDeviceID isEqualToString:forCopy];
      if (v8)
      {
        v9 = v6;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v21 = pk_Payment_log(v8);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v16 = pk_Payment_log(v23);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v25 = 138412546;
          v26 = remoteDeviceID;
          v27 = 2112;
          v28 = forCopy;
          v17 = "Error: NPKIDVRemoteDeviceService: Current deviceID: %@ doesn't match expectedID:%@.";
          v18 = v16;
          v19 = OS_LOG_TYPE_ERROR;
          v20 = 22;
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v13 = pk_Payment_log(v7);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v16 = pk_Payment_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v17 = "Warning: NPKIDVRemoteDeviceService: Not active device initialized";
          v18 = v16;
          v19 = OS_LOG_TYPE_DEFAULT;
          v20 = 2;
LABEL_15:
          _os_log_impl(&dword_25B300000, v18, v19, v17, &v25, v20);
        }

LABEL_16:
      }
    }

    v9 = 0;
    goto LABEL_18;
  }

  v10 = pk_Payment_log(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v6 = pk_Payment_log(v12);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Unexpected nil remoteDeviceID", &v25, 2u);
    }

    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (void)teardownCurrentRemoteDeviceContextWithReason:(unint64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromNPKIDVRemoteDeviceTeardownReason(reason);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested tear down service context with reason:%@", &v13, 0xCu);
    }
  }

  if (reason)
  {
    v10 = 4 * (reason == 1);
  }

  else
  {
    v10 = 2;
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  v12 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:v10];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self insideLockTeardownCurrentRemoteDeviceContextWithReason:reason];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v12 deviceEvent:v10 forDeviceID:remoteDeviceID eventContext:0];
}

- (void)insideLockTeardownCurrentRemoteDeviceContextWithReason:(unint64_t)reason
{
  v33 = *MEMORY[0x277D85DE8];
  serviceContext = self->_serviceContext;
  if (serviceContext)
  {
    remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)serviceContext remoteDeviceID];
    v7 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:4];
    v8 = pk_Payment_log(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_serviceContext;
        serviceContextPath = self->_serviceContextPath;
        v14 = NSStringFromNPKIDVRemoteDeviceTeardownReason(reason);
        v25 = 138413058;
        v26 = v12;
        v27 = 2112;
        v28 = serviceContextPath;
        v29 = 2112;
        v30 = remoteDeviceID;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will tear down service context:%@ at path:%@ for deviceID:%@ reason:%@", &v25, 0x2Au);
      }
    }

    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
    v15 = self->_serviceContext;
    self->_serviceContext = 0;

    v16 = self->_serviceContextPath;
    self->_serviceContextPath = 0;

    pairingID = self->_pairingID;
    self->_pairingID = 0;

    v19 = pk_Payment_log(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromNPKIDVRemoteDeviceTeardownReason(reason);
        v25 = 138412546;
        v26 = remoteDeviceID;
        v27 = 2112;
        v28 = v23;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did tear down service context for deviceID:%@ reason:%@", &v25, 0x16u);
      }
    }

    if (reason)
    {
      v24 = 4 * (reason == 1);
    }

    else
    {
      v24 = 2;
    }

    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:remoteDeviceID];
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v7 deviceEvent:v24 forDeviceID:remoteDeviceID eventContext:0];
  }
}

- (void)initializeWithDevice:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested initialize service context for device with ParingID:%@", buf, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  if (self->_serviceContext)
  {
    v11 = pk_Payment_log(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
        *buf = 138412290;
        v52 = remoteDeviceID;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: It seem we didn't teardown deviceID:%@. Lets make sure we start from a clean state", buf, 0xCu);
      }
    }

    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self insideLockTeardownCurrentRemoteDeviceContextWithReason:0];
    serviceContext = self->_serviceContext;
    self->_serviceContext = 0;
  }

  v17 = pk_Payment_log(v10);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v18)
    {
      v20 = pk_Payment_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v5;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will initialize context for device with ParingID:%@", buf, 0xCu);
      }
    }

    v21 = NPKHomeDirectoryPathForDevice(deviceCopy);
    v22 = [v21 stringByAppendingPathComponent:@"remoteDeviceServiceContext.npkctx"];
    serviceContextPath = self->_serviceContextPath;
    self->_serviceContextPath = v22;

    v24 = self->_serviceContextPath;
    v50 = 0;
    v25 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v24 options:1 error:&v50];
    v26 = v50;
    v27 = v26;
    if (v26)
    {
      v28 = pk_Payment_log(v26);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

      if (!v29)
      {
LABEL_26:
        if (!self->_serviceContext)
        {
          v37 = pk_Payment_log(v30);
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

          if (v38)
          {
            v40 = pk_Payment_log(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = self->_serviceContextPath;
              *buf = 138412290;
              v52 = v41;
              _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: NPKIDVRemoteDeviceServiceContext from:%@ was nil.", buf, 0xCu);
            }
          }

          v42 = objc_alloc_init(NPKIDVRemoteDeviceServiceContext);
          v43 = self->_serviceContext;
          self->_serviceContext = v42;

          [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
        }

        objc_storeStrong(&self->_pairingID, v5);
        remoteDeviceID2 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
        v44 = pk_Payment_log(remoteDeviceID2);
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

        if (v45)
        {
          v47 = pk_Payment_log(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = self->_serviceContext;
            v49 = self->_serviceContextPath;
            *buf = 138413058;
            v52 = v48;
            v53 = 2112;
            v54 = v49;
            v55 = 2112;
            v56 = v5;
            v57 = 2112;
            v58 = remoteDeviceID2;
            _os_log_impl(&dword_25B300000, v47, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: initialized context:%@ at path:%@ for device with ParingID:%@ and deviceID:%@", buf, 0x2Au);
          }
        }

        v33 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:1];

        goto LABEL_37;
      }

      p_super = pk_Payment_log(v30);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_serviceContextPath;
        *buf = 138412546;
        v52 = v27;
        v53 = 2112;
        v54 = v32;
        _os_log_impl(&dword_25B300000, p_super, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: NPKIDVRemoteDeviceServiceContext error:%@ loading context from:%@", buf, 0x16u);
      }
    }

    else
    {
      v35 = objc_opt_class();
      v36 = NPKSecureUnarchiveObject(v25, v35);
      p_super = &self->_serviceContext->super;
      self->_serviceContext = v36;
    }

    goto LABEL_26;
  }

  if (!v18)
  {
    v33 = 0;
    remoteDeviceID2 = 0;
    goto LABEL_38;
  }

  v27 = pk_Payment_log(v19);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: No active device is found, this could be ok but we let you know just in case", buf, 2u);
  }

  v33 = 0;
  remoteDeviceID2 = 0;
LABEL_37:

LABEL_38:
  os_unfair_lock_unlock(&self->_serviceContextLock);
  if ([v33 count] && objc_msgSend(remoteDeviceID2, "length"))
  {
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v33 deviceEvent:1 forDeviceID:remoteDeviceID2 eventContext:0];
  }
}

- (void)setNeedsPrearmCredential:(BOOL)credential
{
  credentialCopy = credential;
  v15 = *MEMORY[0x277D85DE8];
  if (credential)
  {
    v5 = 8;
  }

  else
  {
    v5 = 16;
  }

  v6 = pk_Payment_log(self);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(v5);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested notify %@", &v13, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  v12 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:v5];
  if (credentialCopy)
  {
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockSetupBiometricAuthenticationTokenReminderForDeviceID:remoteDeviceID serviceNames:v12];
  }

  else
  {
    [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:remoteDeviceID];
  }

  os_unfair_lock_unlock(&self->_serviceContextLock);
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v12 deviceEvent:v5 forDeviceID:remoteDeviceID eventContext:0];
}

- (void)handlePassDeletionForPass:(id)pass
{
  v19 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v5 = pk_Payment_log(passCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(0x20uLL);
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested notify %@", &v17, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  remoteDeviceID = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext remoteDeviceID];
  v11 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext serviceNamesForEvent:32];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  secureElementPass = [passCopy secureElementPass];
  issuerAdministrativeAreaCode = [secureElementPass issuerAdministrativeAreaCode];

  if ([issuerAdministrativeAreaCode length])
  {
    [v12 setObject:issuerAdministrativeAreaCode forKey:@"NPKIDVRemoteDeviceServiceEventContextDeletedPassState"];
  }

  secureElementPass2 = [passCopy secureElementPass];
  issuerCountryCode = [secureElementPass2 issuerCountryCode];

  if ([issuerCountryCode length])
  {
    [v12 setObject:issuerCountryCode forKey:@"NPKIDVRemoteDeviceServiceEventContextDeletedPassCountry"];
  }

  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _notifyProcessWithServiceNames:v11 deviceEvent:32 forDeviceID:remoteDeviceID eventContext:v12];
}

- (unint64_t)registerEvents:(unint64_t)events forServiceName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = pk_Payment_log(nameCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(events);
      v23 = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = nameCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested register events:%@ forServiceName:%@", &v23, 0x16u);
    }
  }

  if (!self->_serviceContext)
  {
    v19 = pk_Payment_log(v9);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      v12 = 0xFFFFFFFF80000000;
      goto LABEL_15;
    }

    v17 = pk_Payment_log(v21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Not active device initialized, we can't register requested events", &v23, 2u);
    }

    v12 = 0xFFFFFFFF80000000;
    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v12 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext registerEvents:events forServiceName:nameCopy];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  v14 = pk_Payment_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_Payment_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(v12);
      v23 = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = nameCopy;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish register events with currentEvents:%@ forServiceName:%@", &v23, 0x16u);
    }

LABEL_13:
  }

LABEL_15:

  return v12;
}

- (unint64_t)unregisterEvents:(unint64_t)events forServiceName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = pk_Payment_log(nameCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(events);
      v23 = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = nameCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested unregister events:%@ forServiceName:%@", &v23, 0x16u);
    }
  }

  if (!self->_serviceContext)
  {
    v19 = pk_Payment_log(v9);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      v12 = 0xFFFFFFFF80000000;
      goto LABEL_15;
    }

    v17 = pk_Payment_log(v21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Not active device initialized, we can't unregister requested events", &v23, 2u);
    }

    v12 = 0xFFFFFFFF80000000;
    goto LABEL_13;
  }

  os_unfair_lock_lock(&self->_serviceContextLock);
  v12 = [(NPKIDVRemoteDeviceServiceContext *)self->_serviceContext unregisterEvents:events forServiceName:nameCopy];
  [(NPKIDVRemoteDeviceServiceEventsCoordinator *)self _insideLockPersistServiceContext];
  os_unfair_lock_unlock(&self->_serviceContextLock);
  v14 = pk_Payment_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_Payment_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(v12);
      v23 = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = nameCopy;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Finish unregister events with currentEvents:%@ forServiceName:%@", &v23, 0x16u);
    }

LABEL_13:
  }

LABEL_15:

  return v12;
}

- (void)_notifyProcessWithServiceNames:(id)names deviceEvent:(unint64_t)event forDeviceID:(id)d eventContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dCopy = d;
  contextCopy = context;
  v13 = [namesCopy count];
  v14 = pk_Payment_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(event);
        *buf = 138412802;
        v28 = namesCopy;
        v29 = 2112;
        v30 = v18;
        v31 = 2112;
        v32 = dCopy;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Found remote process with service Names:%@ event:%@ for deviceID:%@", buf, 0x20u);
      }
    }

    remoteProcessNotificationQueue = self->_remoteProcessNotificationQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke;
    v22[3] = &unk_279945958;
    v23 = namesCopy;
    eventCopy = event;
    v24 = dCopy;
    v25 = contextCopy;
    dispatch_async(remoteProcessNotificationQueue, v22);

    v20 = v23;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_8;
    }

    v20 = pk_Payment_log(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(event);
      *buf = 138412546;
      v28 = v21;
      v29 = 2112;
      v30 = dCopy;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: No service names to notify event:%@ for device with ID:%@", buf, 0x16u);
    }
  }

LABEL_8:
}

void __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke_2;
  v3[3] = &unk_279947FA0;
  v6 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __114__NPKIDVRemoteDeviceServiceEventsCoordinator__notifyProcessWithServiceNames_deviceEvent_forDeviceID_eventContext___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NPKIDVRemoteDeviceServiceClient alloc] initWithRemoteServiceName:v3];

  [(NPKIDVRemoteDeviceServiceClient *)v4 didReceiveEvent:a1[6] fromRemoteDeviceWithID:a1[4] eventContext:a1[5]];
}

- (void)_insideLockPersistServiceContext
{
  os_unfair_lock_assert_owner(&self->_serviceContextLock);
  v3 = NPKSecureArchiveObject(self->_serviceContext);
  [v3 writeToFile:self->_serviceContextPath atomically:1];
}

- (void)_insideLockSetupBiometricAuthenticationTokenReminderForDeviceID:(id)d serviceNames:(id)names
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  namesCopy = names;
  v8 = pk_Payment_log(namesCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Setup biometric authentication token reminder for deviceID:%@", buf, 0xCu);
    }
  }

  v12 = [[NPKLockStatusChangeCoordinator alloc] initWithQueue:self->_lockStatusChangeCoordinatorQueue reason:@"BiometricAuthenticationTokenReminder"];
  [(NPKLockStatusChangeCoordinator *)v12 setWipeBlocksAfterPerform:0];
  objc_initWeak(buf, self);
  v13 = [NPKLeakyBucket throttleWithEventsTimeInterval:@"BiometricAuthenticationTokenReminder" description:60.0];
  lockEventThrottle = self->_lockEventThrottle;
  self->_lockEventThrottle = v13;

  lockStatusChangeCoordinatorQueue = self->_lockStatusChangeCoordinatorQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke;
  v21[3] = &unk_279947FC8;
  v16 = v12;
  v22 = v16;
  objc_copyWeak(&v25, buf);
  v23 = namesCopy;
  v24 = dCopy;
  v17 = dCopy;
  v18 = namesCopy;
  dispatch_async(lockStatusChangeCoordinatorQueue, v21);
  lockStatusChangeCoordinator = self->_lockStatusChangeCoordinator;
  self->_lockStatusChangeCoordinator = v16;
  v20 = v16;

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_2;
  v3[3] = &unk_279945290;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performSubjectToEvent:1 blockToPerform:v3];

  objc_destroyWeak(&v6);
}

void __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 7);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_3;
    v5[3] = &unk_279945290;
    objc_copyWeak(&v8, a1 + 6);
    v6 = a1[4];
    v7 = a1[5];
    [v4 addEvent:v5];

    objc_destroyWeak(&v8);
  }
}

void __123__NPKIDVRemoteDeviceServiceEventsCoordinator__insideLockSetupBiometricAuthenticationTokenReminderForDeviceID_serviceNames___block_invoke_3(uint64_t a1)
{
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Reminder: remote device Needs biometric authentication token", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _notifyProcessWithServiceNames:*(a1 + 32) deviceEvent:8 forDeviceID:*(a1 + 40) eventContext:0];
}

- (void)_insideLockTeardownBiometricAuthenticationTokenReminderForDeviceID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = pk_Payment_log(dCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: tear down biometric authentication token reminder for deviceID:%@", &v11, 0xCu);
    }
  }

  lockEventThrottle = self->_lockEventThrottle;
  self->_lockEventThrottle = 0;

  lockStatusChangeCoordinator = self->_lockStatusChangeCoordinator;
  self->_lockStatusChangeCoordinator = 0;
}

@end