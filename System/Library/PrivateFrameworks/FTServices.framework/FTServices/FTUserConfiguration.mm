@interface FTUserConfiguration
+ (id)sharedInstance;
- (BOOL)_adequateInternalOrCarrierInstall;
- (BOOL)_getCellularDataEnabledForBundleID:(id)d;
- (BOOL)_getNonBluetoothDataAllowedForBundleID:(id)d;
- (BOOL)_getWifiDataAllowedForBundleID:(id)d;
- (BOOL)_nonWifiFaceTimeEntitled;
- (BOOL)allowAnyNetwork;
- (FTUserConfiguration)init;
- (NSArray)selectedPhoneNumberRegistrationSubscriptionLabels;
- (NSNumber)selectedPhoneNumberRegistrationSubscriptionNumber;
- (__CTServerConnection)ctServerConnection;
- (void)_clearCaches;
- (void)_setAppCellularDataEnabled:(BOOL)enabled;
- (void)_setupUsageHandlerIfNeeded;
- (void)dealloc;
- (void)setIsDeviceInDualPhoneIdentityMode:(BOOL)mode;
- (void)setIsDeviceInManualPhoneSelectionMode:(BOOL)mode;
- (void)setSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels;
- (void)silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels;
@end

@implementation FTUserConfiguration

+ (id)sharedInstance
{
  if (qword_1ED7687B8 != -1)
  {
    sub_195928F80();
  }

  v3 = qword_1ED768718;

  return v3;
}

- (FTUserConfiguration)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = FTUserConfiguration;
  v2 = [(FTUserConfiguration *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldCacheCTConnection = 1;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if ([processName isEqualToString:@"InCallService"])
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = processName;
        _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Not building UserConfiguration cache for {processName: %@}", buf, 0xCu);
      }

      v3->_shouldCacheCTConnection = 0;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      cellularDataAvailableCache = v3->_cellularDataAvailableCache;
      v3->_cellularDataAvailableCache = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      wifiAllowedCache = v3->_wifiAllowedCache;
      v3->_wifiAllowedCache = v9;

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      nonBTAllowedCache = v3->_nonBTAllowedCache;
      v3->_nonBTAllowedCache = v11;
    }
  }

  return v3;
}

- (NSArray)selectedPhoneNumberRegistrationSubscriptionLabels
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x19A8B8420](@"com.apple.conference", @"phoneNumberRegistrationSubscriptionLabel");
  if (!v3)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(FTUserConfiguration *)self setSelectedPhoneNumberRegistrationSubscriptionLabels:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (NSNumber)selectedPhoneNumberRegistrationSubscriptionNumber
{
  v2 = MEMORY[0x19A8B8420](@"com.apple.conference", @"phoneNumberRegistrationSubscriptionNumber");
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = FTUserConfiguration;
  [(FTUserConfiguration *)&v4 dealloc];
}

- (__CTServerConnection)ctServerConnection
{
  v25 = *MEMORY[0x1E69E9840];
  ctServerConnection = self->_ctServerConnection;
  if (!ctServerConnection)
  {
    objc_initWeak(&location, self);
    v4 = im_primary_queue();
    objc_copyWeak(&v17, &location);
    ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    if (ctServerConnection)
    {
      v5 = *MEMORY[0x1E6965288];
      v6 = _CTServerConnectionRegisterForNotification();
      v7 = v6;
      if (v6)
      {
        v8 = HIDWORD(v6);
        v9 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v20 = v5;
          v21 = 1024;
          v22 = v7;
          v23 = 1024;
          v24 = v8;
          _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_ERROR, "Failed to register CT server DataAccessPolicyChanged notification %@ (domain: %d error: %d).", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }

      v10 = *MEMORY[0x1E6965260];
      v11 = _CTServerConnectionRegisterForNotification();
      v12 = v11;
      if (!v11)
      {
        goto LABEL_17;
      }

      v13 = HIDWORD(v11);
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v20 = v10;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_ERROR, "Failed to register CT server ConnectionInvalidated notification %@ (domain: %d error: %d).", buf, 0x18u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_ERROR, "Failed to create CT server connection", buf, 2u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_17;
      }
    }

    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
LABEL_17:
    if (self->_shouldCacheCTConnection)
    {
      self->_ctServerConnection = ctServerConnection;
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      return self->_ctServerConnection;
    }

    else
    {
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return ctServerConnection;
}

- (void)_clearCaches
{
  pthread_mutex_lock(&stru_1ED768558);
  [(NSMutableDictionary *)self->_cellularDataAvailableCache removeAllObjects];
  pthread_mutex_unlock(&stru_1ED768558);
  pthread_mutex_lock(&stru_1ED7684D8);
  [(NSMutableDictionary *)self->_wifiAllowedCache removeAllObjects];
  pthread_mutex_unlock(&stru_1ED7684D8);
  pthread_mutex_lock(&stru_1ED768518);
  [(NSMutableDictionary *)self->_nonBTAllowedCache removeAllObjects];

  pthread_mutex_unlock(&stru_1ED768518);
}

- (void)_setAppCellularDataEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(FTUserConfiguration *)self ctServerConnection])
  {
    v9 = *MEMORY[0x1E6965230];
    v4 = MEMORY[0x1E6965238];
    if (!enabledCopy)
    {
      v4 = MEMORY[0x1E6965240];
    }

    v10[0] = *v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    _CTServerConnectionSetCellularUsagePolicy();
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = @"com.apple.facetime";
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_ERROR, "Failed to set the data usage policy for bundle %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (BOOL)_getCellularDataEnabledForBundleID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    pthread_mutex_lock(&stru_1ED768558);
    v5 = [(NSMutableDictionary *)self->_cellularDataAvailableCache objectForKey:dCopy];
    if (!v5)
    {
      if ([(FTUserConfiguration *)self ctServerConnection])
      {
        v6 = _CTServerConnectionCopyCellularUsagePolicy();
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v12 = 0;
          v13 = 1024;
          v14 = v6;
          v15 = 1024;
          v16 = HIDWORD(v6);
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getCellularDataEnabledForBundleID copied cellularPolicy %@ {ctError.domain: %d, ctError.error: %d}", buf, 0x18u);
        }
      }

      else
      {
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getCellularDataEnabledForBundleID unable to get a server connection", buf, 2u);
        }
      }

      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = dCopy;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_ERROR, "Failed to get the data usage policy for bundle %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v5 = 0;
    }

    pthread_mutex_unlock(&stru_1ED768558);
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_getWifiDataAllowedForBundleID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    pthread_mutex_lock(&stru_1ED7684D8);
    v5 = [(NSMutableDictionary *)self->_wifiAllowedCache objectForKey:dCopy];
    if (!v5)
    {
      if ([(FTUserConfiguration *)self ctServerConnection])
      {
        v6 = _CTServerConnectionCopyCellularUsagePolicy();
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v12 = 0;
          v13 = 1024;
          v14 = v6;
          v15 = 1024;
          v16 = HIDWORD(v6);
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getWifiDataAllowedForBundleID copied cellularPolicy %@ {ctError.domain: %d, ctError.error: %d}", buf, 0x18u);
        }
      }

      else
      {
        v7 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "_getWifiDataAllowedForBundleID unable to get a server connection", buf, 2u);
        }
      }

      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = dCopy;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_ERROR, "Failed to get the data usage policy for bundle %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v5 = 0;
    }

    pthread_mutex_unlock(&stru_1ED7684D8);
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_setupUsageHandlerIfNeeded
{
  if (!self->_usageClient)
  {
    v3 = [MEMORY[0x1E69A61A0] weakRefWithObject:self];
    self->_usageClient = network_usage_policy_create_client();
    v4 = im_primary_queue();
    v6 = v3;
    v5 = v3;
    network_usage_policy_set_changed_handler();
  }
}

- (BOOL)_getNonBluetoothDataAllowedForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    pthread_mutex_lock(&stru_1ED768518);
    [(FTUserConfiguration *)self _setupUsageHandlerIfNeeded];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_19592BEB4;
    v18 = sub_19592BFE8;
    v19 = [(NSMutableDictionary *)self->_nonBTAllowedCache objectForKey:dCopy];
    if (!v15[5])
    {
      v5 = [MEMORY[0x1E69A61A0] weakRefWithObject:self];
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2020000000;
      v13 = 1;
      v6 = dispatch_semaphore_create(0);
      [dCopy UTF8String];
      v9 = dCopy;
      v10 = v5;
      v11 = v6;
      network_usage_policy_get_for_bundle();
      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

      _Block_object_dispose(v12, 8);
    }

    pthread_mutex_unlock(&stru_1ED768518);
    bOOLValue = [v15[5] BOOLValue];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_adequateInternalOrCarrierInstall
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isInternalInstall])
  {
    v3 = 1;
  }

  else
  {
    mEMORY[0x1E69A60F0]2 = [MEMORY[0x1E69A60F0] sharedInstance];
    if ([mEMORY[0x1E69A60F0]2 isCarrierInstall])
    {
      v3 = IMGetAppBoolForKey();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)allowAnyNetwork
{
  _adequateInternalOrCarrierInstall = [(FTUserConfiguration *)self _adequateInternalOrCarrierInstall];
  if (_adequateInternalOrCarrierInstall)
  {
    if (IMGetDomainBoolForKey())
    {
      LOBYTE(_adequateInternalOrCarrierInstall) = 1;
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v4 = [defaultManager fileExistsAtPath:@"/Library/Preferences/SystemConfiguration/rtether.plist"];

      LOBYTE(_adequateInternalOrCarrierInstall) = v4;
    }
  }

  return _adequateInternalOrCarrierInstall;
}

- (void)setSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels
{
  labelsCopy = labels;
  [(FTUserConfiguration *)self silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:labelsCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"FTUserConfigurationSelectedSubscriptionLabelDidChange" object:labelsCopy];
}

- (void)silentlySetSelectedPhoneNumberRegistrationSubscriptionLabels:(id)labels
{
  v7 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = labelsCopy;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Setting persisted phone number registration subscription label {subscriptionLabels: %@}", &v5, 0xCu);
  }

  IMSetDomainValueForKey();
}

- (void)setIsDeviceInDualPhoneIdentityMode:(BOOL)mode
{
  modeCopy = mode;
  v8 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (modeCopy)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Setting persisted dual phone identity mode {isDeviceInDualPhoneIdentityMode: %@}", &v6, 0xCu);
  }

  IMSetDomainBoolForKey();
}

- (void)setIsDeviceInManualPhoneSelectionMode:(BOOL)mode
{
  modeCopy = mode;
  v8 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (modeCopy)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Setting persisted manual phone identity mode {isDeviceInManualPhoneSelectionMode: %@}", &v6, 0xCu);
  }

  IMSetDomainBoolForKey();
}

- (BOOL)_nonWifiFaceTimeEntitled
{
  _adequateInternalOrCarrierInstall = [(FTUserConfiguration *)self _adequateInternalOrCarrierInstall];
  if (_adequateInternalOrCarrierInstall)
  {

    LOBYTE(_adequateInternalOrCarrierInstall) = IMGetCachedDomainBoolForKey();
  }

  return _adequateInternalOrCarrierInstall;
}

@end