@interface PhoneSettingsTelephony
- (BOOL)allowNetworkSelection;
- (BOOL)allowPINChange;
- (BOOL)hasSubscriberIdentity;
- (PhoneSettingsTelephony)init;
- (__CTServerConnection)serverConnection;
- (id)_callForwardingSettingsForForwardingReason:(id)reason;
- (id)callForwardingNumber:(BOOL)number forReason:(id)reason;
- (id)currentNetwork;
- (id)descriptionDictionary;
- (id)lastUsedForwardingNumberForReason:(id)reason;
- (id)manuallySelectedNetworkDictionary;
- (id)myNumber;
- (id)pendingRequestForUniqueSettingType:(id)type;
- (id)pendingSaveForUniqueSettingType:(id)type;
- (id)unlockAttemptsRemainingString;
- (int)currentNetworkSelectionState;
- (int)networkSelectionMode;
- (int)showCallForwarding;
- (int)showCallWaiting;
- (int)showCallerID;
- (int)showSIMPIN;
- (unsigned)callForwardingEnabled:(BOOL)enabled forReason:(id)reason;
- (unsigned)callWaitingEnabled:(BOOL)enabled;
- (unsigned)callerIDMode:(BOOL)mode;
- (unsigned)callerIDModifiable:(BOOL)modifiable;
- (unsigned)simLocked:(BOOL)locked;
- (void)_handleCallForwardingSettings:(id)settings didAttemptToSet:(BOOL)set forwardingReason:(id)reason;
- (void)_handleCallWaitingSettings:(id)settings;
- (void)_handleCallerIDChanged;
- (void)_handleCallerIDSettings:(id)settings;
- (void)_handleNetworkList:(id)list;
- (void)_handlePINSettings:(id)settings;
- (void)_handleSIMLockSettings:(id)settings;
- (void)_invalidateSIMLockedSetting;
- (void)_networkSettingsDisabled;
- (void)_phoneBookSelected;
- (void)_phoneNumberChanged;
- (void)_phoneNumberSaveFinishedWithSuccess:(BOOL)success;
- (void)_phoneNumberWritten;
- (void)_requestCallForwardingSettingsForReason:(id)reason;
- (void)_requestSettings:(id)settings;
- (void)_reset;
- (void)_resetCallerIDSettings;
- (void)_saveCallForwardingEnabled:(BOOL)enabled number:(id)number forwardingReason:(id)reason;
- (void)_saveSettings:(id)settings;
- (void)_simPUKLocked;
- (void)_simRemoved;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)dealloc;
- (void)destroyServerConnection;
- (void)enableAutomaticNetworkSelection;
- (void)postCallForwardingChangedNotificationForForwardingReason:(id)reason;
- (void)receivedRequestResponseForUniqueSettingType:(id)type;
- (void)receivedSaveResponseForUniqueSettingType:(id)type;
- (void)requestNetworkList;
- (void)resetCallForwardingSettings;
- (void)resetLastUsedForwardingNumberForReason:(id)reason;
- (void)selectManualNetwork:(id)network;
- (void)setCallForwardingEnabled:(BOOL)enabled forReason:(id)reason;
- (void)setCallForwardingNumber:(id)number forReason:(id)reason;
- (void)setCallWaitingEnabled:(BOOL)enabled;
- (void)setCallerIDEnabled:(unsigned int)enabled;
- (void)setMyNumber:(id)number;
- (void)setPIN:(id)n password:(id)password;
- (void)setSIMLocked:(BOOL)locked password:(id)password;
- (void)startWatching;
- (void)stopWatching;
@end

@implementation PhoneSettingsTelephony

- (PhoneSettingsTelephony)init
{
  v26.receiver = self;
  v26.super_class = PhoneSettingsTelephony;
  v2 = [(PhoneSettingsTelephony *)&v26 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    v5 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsUnconditional = v2->_callForwardingSettingsUnconditional;
    v2->_callForwardingSettingsUnconditional = v5;

    [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number"];
    v7 = CFPreferencesCopyAppValue(@"call-forwarding-number", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional setDefaultCallForwardingNumber:v7];

    defaultCallForwardingNumber = [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional defaultCallForwardingNumber];

    if (!defaultCallForwardingNumber)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsUnconditional setDefaultCallForwardingNumber:v9];
    }

    v10 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsMobileBusy = v2->_callForwardingSettingsMobileBusy;
    v2->_callForwardingSettingsMobileBusy = v10;

    [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number-mobilebusy"];
    v12 = CFPreferencesCopyAppValue(@"call-forwarding-number-mobilebusy", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy setDefaultCallForwardingNumber:v12];

    defaultCallForwardingNumber2 = [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy defaultCallForwardingNumber];

    if (!defaultCallForwardingNumber2)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsMobileBusy setDefaultCallForwardingNumber:v14];
    }

    v15 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsNoReply = v2->_callForwardingSettingsNoReply;
    v2->_callForwardingSettingsNoReply = v15;

    [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number-noreply"];
    v17 = CFPreferencesCopyAppValue(@"call-forwarding-number-noreply", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply setDefaultCallForwardingNumber:v17];

    defaultCallForwardingNumber3 = [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply defaultCallForwardingNumber];

    if (!defaultCallForwardingNumber3)
    {
      v19 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsNoReply setDefaultCallForwardingNumber:v19];
    }

    v20 = objc_alloc_init(PHForwardingSettings);
    callForwardingSettingsNotReachable = v2->_callForwardingSettingsNotReachable;
    v2->_callForwardingSettingsNotReachable = v20;

    [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable setDefaultCallForwardingNumberPreferencesKey:@"call-forwarding-number-notreachable"];
    v22 = CFPreferencesCopyAppValue(@"call-forwarding-number-notreachable", @"com.apple.mobilephone.settings");
    [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable setDefaultCallForwardingNumber:v22];

    defaultCallForwardingNumber4 = [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable defaultCallForwardingNumber];

    if (!defaultCallForwardingNumber4)
    {
      v24 = objc_alloc_init(MEMORY[0x277CCACA8]);
      [(PHForwardingSettings *)v2->_callForwardingSettingsNotReachable setDefaultCallForwardingNumber:v24];
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PhoneSettingsTelephony *)self stopWatching];
  [(PhoneSettingsTelephony *)self destroyServerConnection];
  v4.receiver = self;
  v4.super_class = PhoneSettingsTelephony;
  [(PhoneSettingsTelephony *)&v4 dealloc];
}

- (void)destroyServerConnection
{
  if (self->_serverConnection)
  {
    _CTServerConnectionUnregisterForAllNotifications();
    CFRelease(self->_serverConnection);
    self->_serverConnection = 0;
  }
}

- (void)_reset
{
  [(PhoneSettingsTelephony *)self resetCallForwardingSettings];
  [(PhoneSettingsTelephony *)self _resetCallerIDSettings];
  self->_callWaitingEnabled = 0;
  self->_simLocked = 0;
  cachedPassword = self->_cachedPassword;
  self->_cachedPassword = 0;

  myNumber = self->_myNumber;
  self->_myNumber = 0;

  [(NSMutableDictionary *)self->_pendingSaves removeAllObjects];
  pendingRequests = self->_pendingRequests;

  [(NSMutableDictionary *)pendingRequests removeAllObjects];
}

- (void)resetCallForwardingSettings
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Resetting call forwarding settings", v4, 2u);
  }

  [(PHForwardingSettings *)self->_callForwardingSettingsUnconditional setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsUnconditional setCallForwardingNumber:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsMobileBusy setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsMobileBusy setCallForwardingNumber:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNoReply setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNoReply setCallForwardingNumber:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNotReachable setCallForwardingState:0];
  [(PHForwardingSettings *)self->_callForwardingSettingsNotReachable setCallForwardingNumber:0];
}

- (void)_resetCallerIDSettings
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Resetting Caller ID settings", v4, 2u);
  }

  self->_callerIDIsModifiable = 0;
  self->_callerIDMode = 0;
}

- (void)_invalidateSIMLockedSetting
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating SIM locked setting", v4, 2u);
  }

  self->_simLocked = 0;
}

- (void)startWatching
{
  v2 = PHDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C12D000, v2, OS_LOG_TYPE_DEFAULT, "", v3, 2u);
  }

  CTTelephonyCenterGetDefault();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
}

- (void)stopWatching
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  [(PhoneSettingsTelephony *)self _reset];
}

- (void)applicationDidEnterBackground:(id)background
{
  v8 = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  v5 = PHDefaultLog(backgroundCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = backgroundCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(PhoneSettingsTelephony *)self stopWatching];
  [(PhoneSettingsTelephony *)self destroyServerConnection];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v8 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  v5 = PHDefaultLog(foregroundCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = foregroundCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(PhoneSettingsTelephony *)self startWatching];
}

- (__CTServerConnection)serverConnection
{
  result = self->_serverConnection;
  if (!result)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 stringWithFormat:@"%@.%@", bundleIdentifier, v8];

    CFRunLoopGetMain();
    self->_serverConnection = _CTServerConnectionCreateOnRunLoop();

    return self->_serverConnection;
  }

  return result;
}

- (int)currentNetworkSelectionState
{
  v2 = CTRegistrationGetNetworkSelectionState();
  if (v2 == *MEMORY[0x277CC3D40])
  {
    v4 = 0;
  }

  else if (v2 == *MEMORY[0x277CC3D18])
  {
    v4 = 1;
  }

  else if (v2 == *MEMORY[0x277CC3D38])
  {
    v4 = 2;
  }

  else if (v2 == *MEMORY[0x277CC3D30])
  {
    v4 = 3;
  }

  else if (v2 == *MEMORY[0x277CC3D10] || v2 == *MEMORY[0x277CC3D28])
  {
    v4 = 5;
  }

  else if (v2 == *MEMORY[0x277CC3D20])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)myNumber
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_myNumber)
  {
    self->_myNumber = &stru_284EE7748;

    v3 = CTSettingCopyMyPhoneNumber();
    v4 = PHDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_23C12D000, v4, OS_LOG_TYPE_DEFAULT, "CTSettingCopyMyPhoneNumber returned %@", &v13, 0xCu);
    }

    if (v3)
    {
      active = PNCopyBestGuessCountryCodeForNumber();
      if (active || (active = CPPhoneNumberCopyActiveCountryCode()) != 0)
      {
        v6 = active;
        v7 = PHDefaultLog(active);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412546;
          v14 = v3;
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&dword_23C12D000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to format digits %@ using ISO country code %@", &v13, 0x16u);
        }

        v8 = PNCreateFormattedStringWithCountry();
        myNumber = self->_myNumber;
        self->_myNumber = v8;

        CFRelease(v6);
      }

      else
      {
        v12 = PHDefaultLog(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v3;
          _os_log_impl(&dword_23C12D000, v12, OS_LOG_TYPE_DEFAULT, "Could not determine the country code for the digits %@.", &v13, 0xCu);
        }
      }

      CFRelease(v3);
    }
  }

  v10 = self->_myNumber;

  return v10;
}

- (void)setMyNumber:(id)number
{
  v19 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = UIUnformattedPhoneNumberFromString();
  v6 = PHDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(self + 112) & 1;
    v13 = 138412802;
    v14 = numberCopy;
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_23C12D000, v6, OS_LOG_TYPE_DEFAULT, "Set my number called with: %@ normalized to: %@, was already saving phone number = %d", &v13, 0x1Cu);
  }

  *(self + 112) = *(self + 112) & 0xF8 | 1;
  newNumber = self->_newNumber;
  self->_newNumber = v5;
  v9 = v5;

  myNumber = self->_myNumber;
  self->_myNumber = 0;

  [(PhoneSettingsTelephony *)self serverConnection];
  v11 = _CTServerConnectionSelectPhonebook();
  if (HIDWORD(v11))
  {
    v12 = PHDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PhoneSettingsTelephony setMyNumber:];
    }
  }
}

- (BOOL)hasSubscriberIdentity
{
  [(PhoneSettingsTelephony *)self serverConnection];
  v2 = _CTServerConnectionCopyMobileEquipmentInfo();
  if (HIDWORD(v2))
  {
    allKeys = PHDefaultLog(v2);
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_ERROR))
    {
      [PhoneSettingsTelephony hasSubscriberIdentity];
    }

    goto LABEL_7;
  }

  allKeys = [0 allKeys];
  v4 = *MEMORY[0x277CC3B10];
  if (![allKeys containsObject:*MEMORY[0x277CC3B10]])
  {
LABEL_7:
    LOBYTE(v7) = 0;
    goto LABEL_10;
  }

  v5 = [0 objectForKey:v4];
  if (v5)
  {
    v6 = [0 objectForKey:v4];
    v7 = [v6 isEqual:&stru_284EE7748] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

LABEL_10:
  return v7;
}

- (BOOL)allowNetworkSelection
{
  SIMStatus = CTSIMSupportGetSIMStatus();
  v3 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  airplaneMode = [v3 airplaneMode];

  if (airplaneMode)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = CTRegistrationNetworkSelectionMenuAvailable();
    if (v5)
    {
      LOBYTE(v5) = SIMStatus == *MEMORY[0x277CC3F00];
    }
  }

  return v5;
}

- (id)currentNetwork
{
  v2 = CTRegistrationCopyLocalizedOperatorName();

  return v2;
}

- (void)enableAutomaticNetworkSelection
{
  v2 = PHDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C12D000, v2, OS_LOG_TYPE_DEFAULT, "", v3, 2u);
  }

  CTRegistrationAutomaticallySelectNetwork();
}

- (void)selectManualNetwork:(id)network
{
  v7 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v4 = PHDefaultLog(networkCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = networkCopy;
    _os_log_impl(&dword_23C12D000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  CTRegistrationManuallySelectNetwork();
}

- (unsigned)callForwardingEnabled:(BOOL)enabled forReason:(id)reason
{
  enabledCopy = enabled;
  reasonCopy = reason;
  v7 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reasonCopy];
  v8 = v7;
  if (enabledCopy && (![v7 callForwardingState] || objc_msgSend(v8, "callForwardingState") == 1))
  {
    [v8 setCallForwardingState:1];
    [(PhoneSettingsTelephony *)self _requestCallForwardingSettingsForReason:reasonCopy];
  }

  callForwardingState = [v8 callForwardingState];

  return callForwardingState & 0xFFFFFFF7;
}

- (void)setCallForwardingEnabled:(BOOL)enabled forReason:(id)reason
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reasonCopy];
  v8 = PHDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v9 = @"ENABLE";
    }

    else
    {
      v9 = @"DISABLE";
    }

    v11 = 138412802;
    v12 = v9;
    v13 = 1024;
    callForwardingState = [v7 callForwardingState];
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "Request to %@ call forwarding from current state %d for reason %@", &v11, 0x1Cu);
  }

  callForwardingNumber = [v7 callForwardingNumber];
  [(PhoneSettingsTelephony *)self _saveCallForwardingEnabled:enabledCopy number:callForwardingNumber forwardingReason:reasonCopy];
}

- (id)callForwardingNumber:(BOOL)number forReason:(id)reason
{
  numberCopy = number;
  reasonCopy = reason;
  v7 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reasonCopy];
  v8 = v7;
  if (numberCopy && ![v7 callForwardingState])
  {
    [v8 setCallForwardingState:1];
    [(PhoneSettingsTelephony *)self _requestCallForwardingSettingsForReason:reasonCopy];
  }

  callForwardingNumber = [v8 callForwardingNumber];

  return callForwardingNumber;
}

- (void)setCallForwardingNumber:(id)number forReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  reasonCopy = reason;
  v8 = PHDefaultLog(reasonCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = numberCopy;
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "Requested to set call forwarding number to %@ for reason %@", &v9, 0x16u);
  }

  -[PhoneSettingsTelephony _saveCallForwardingEnabled:number:forwardingReason:](self, "_saveCallForwardingEnabled:number:forwardingReason:", [numberCopy length] != 0, numberCopy, reasonCopy);
}

- (unsigned)callWaitingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  v5 = PHDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    callWaitingEnabled = self->_callWaitingEnabled;
    if (enabledCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v13 = v6;
    v14 = 1024;
    v15 = callWaitingEnabled;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony callWaitingEnabled:]: Request:%@, _callWaitingEnabledState is %d", buf, 0x12u);
  }

  if (enabledCopy && !self->_callWaitingEnabled)
  {
    v9 = PHDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony callWaitingEnabled:]: Setting _callWaitingEnabledState to SettingsPending", buf, 2u);
    }

    self->_callWaitingEnabled = 1;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"STSettingTypeUniqueIdentifier", *MEMORY[0x277CC4240], *MEMORY[0x277CC4230], *MEMORY[0x277CC4168], *MEMORY[0x277CC4160], 0}];
    [(PhoneSettingsTelephony *)self _requestSettings:v10];
  }

  return self->_callWaitingEnabled & 0xFFFFFFF7;
}

- (void)setCallWaitingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x277D85DE8];
  v5 = PHDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callWaitingEnabled = self->_callWaitingEnabled;
    v11[0] = 67109376;
    v11[1] = callWaitingEnabled;
    v12 = 1024;
    v13 = enabledCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Requested to set call waiting enabled from %d to %d", v11, 0xEu);
  }

  v7 = self->_callWaitingEnabled;
  if (enabledCopy)
  {
    if (v7 != 4)
    {
      return;
    }
  }

  else if (v7 != 2)
  {
    return;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = *MEMORY[0x277CC4240];
  [dictionary setObject:*MEMORY[0x277CC4240] forKey:@"STSettingTypeUniqueIdentifier"];
  [dictionary setObject:v9 forKey:*MEMORY[0x277CC4230]];
  [dictionary setObject:*MEMORY[0x277CC4168] forKey:*MEMORY[0x277CC4160]];
  v10 = MEMORY[0x277CBED28];
  if (!enabledCopy)
  {
    v10 = MEMORY[0x277CBED10];
  }

  [dictionary setObject:*v10 forKey:*MEMORY[0x277CC41E8]];
  self->_callWaitingEnabled |= 1u;
  [(PhoneSettingsTelephony *)self _saveSettings:dictionary];
}

- (unsigned)callerIDModifiable:(BOOL)modifiable
{
  if (modifiable && !self->_callerIDMode)
  {
    [(PhoneSettingsTelephony *)self callerIDMode:1];
  }

  return self->_callerIDIsModifiable & 0xFFFFFFF7;
}

- (unsigned)callerIDMode:(BOOL)mode
{
  if (mode && !self->_callerIDMode)
  {
    self->_callerIDMode = 1;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"STSettingTypeUniqueIdentifier", *MEMORY[0x277CC4248], *MEMORY[0x277CC4230], 0}];
    [(PhoneSettingsTelephony *)self _requestSettings:v4];
  }

  return self->_callerIDMode & 0xFFFFFFEF;
}

- (void)setCallerIDEnabled:(unsigned int)enabled
{
  if (self->_callerIDMode == enabled)
  {

    [(PhoneSettingsTelephony *)self _handleCallerIDSettings:0];
    return;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = *MEMORY[0x277CC41D8];
  switch(enabled)
  {
    case 2u:
      v6 = MEMORY[0x277CC41B0];
      goto LABEL_11;
    case 8u:
      v6 = MEMORY[0x277CC41D0];
      goto LABEL_11;
    case 4u:
      v6 = MEMORY[0x277CC41B8];
LABEL_11:
      v7 = *v6;

      v5 = v7;
      break;
  }

  v8 = *MEMORY[0x277CC4248];
  [dictionary setObject:*MEMORY[0x277CC4248] forKey:@"STSettingTypeUniqueIdentifier"];
  [dictionary setObject:v8 forKey:*MEMORY[0x277CC4230]];
  [dictionary setObject:v5 forKey:*MEMORY[0x277CC41A8]];
  self->_callerIDMode = 1;
  [(PhoneSettingsTelephony *)self _saveSettings:dictionary];
}

- (void)requestNetworkList
{
  v2 = PHDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23C12D000, v2, OS_LOG_TYPE_DEFAULT, "Requesting network list", v3, 2u);
  }

  CTRegistrationRequestNetworkList();
}

- (int)networkSelectionMode
{
  NetworkSelectionMode = CTRegistrationGetNetworkSelectionMode();
  if (NetworkSelectionMode == *MEMORY[0x277CC3D08])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (NetworkSelectionMode == *MEMORY[0x277CC3D00])
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (id)manuallySelectedNetworkDictionary
{
  v2 = CTRegistrationCopyManualNetworkSelection();

  return v2;
}

- (unsigned)simLocked:(BOOL)locked
{
  if (locked && !self->_simLocked)
  {
    if (CTSIMSupportGetSIMStatus() == *MEMORY[0x277CC3EE8])
    {
      self->_simLocked = 2;
    }

    else
    {
      self->_simLocked = 1;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"STSettingTypeUniqueIdentifier", *MEMORY[0x277CC4258], *MEMORY[0x277CC4230], 0}];
      [(PhoneSettingsTelephony *)self _requestSettings:v4];
    }
  }

  return self->_simLocked & 0xFFFFFFF7;
}

- (void)setSIMLocked:(BOOL)locked password:(id)password
{
  lockedCopy = locked;
  passwordCopy = password;
  simLocked = self->_simLocked;
  v13 = passwordCopy;
  if (!lockedCopy)
  {
    if (simLocked == 2)
    {
      v8 = 3;
      goto LABEL_6;
    }

LABEL_12:
    [(PhoneSettingsTelephony *)self _handleSIMLockSettings:0];
    goto LABEL_13;
  }

  if (simLocked != 4)
  {
    goto LABEL_12;
  }

  v8 = 5;
LABEL_6:
  self->_simLocked = v8;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277CC4258];
  [dictionary setObject:*MEMORY[0x277CC4258] forKey:@"STSettingTypeUniqueIdentifier"];
  [dictionary setObject:v10 forKey:*MEMORY[0x277CC4230]];
  v11 = MEMORY[0x277CBED28];
  if (!lockedCopy)
  {
    v11 = MEMORY[0x277CBED10];
  }

  [dictionary setObject:*v11 forKey:*MEMORY[0x277CC41E8]];
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    v12 = &stru_284EE7748;
  }

  [dictionary setObject:v12 forKey:*MEMORY[0x277CC4200]];
  [(PhoneSettingsTelephony *)self _saveSettings:dictionary];

LABEL_13:
}

- (id)unlockAttemptsRemainingString
{
  RemainingPINAttempts = CTSIMSupportGetRemainingPINAttempts();
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:RemainingPINAttempts];
  v5 = [v3 stringFromNumber:v4];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (RemainingPINAttempts == 1)
  {
    v8 = @"%@_SIM_ATTEMPT_REMAINING";
  }

  else
  {
    v8 = @"%@_SIM_ATTEMPTS_REMAINING";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_284EE7748 table:@"Phone"];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v5];

  return v10;
}

- (BOOL)allowPINChange
{
  allowSIMLock = [(PhoneSettingsTelephony *)self allowSIMLock];
  if (allowSIMLock)
  {
    LOBYTE(allowSIMLock) = [(PhoneSettingsTelephony *)self simLocked:0]== 2;
  }

  return allowSIMLock;
}

- (void)setPIN:(id)n password:(id)password
{
  v6 = MEMORY[0x277CBEB38];
  passwordCopy = password;
  nCopy = n;
  dictionary = [v6 dictionary];
  v9 = *MEMORY[0x277CC4250];
  [dictionary setObject:*MEMORY[0x277CC4250] forKey:*MEMORY[0x277CC4230]];
  [dictionary setObject:v9 forKey:@"STSettingTypeUniqueIdentifier"];
  [dictionary setObject:nCopy forKey:*MEMORY[0x277CC41F8]];

  [dictionary setObject:passwordCopy forKey:*MEMORY[0x277CC4200]];
  [(PhoneSettingsTelephony *)self _saveSettings:dictionary];
}

- (int)showCallForwarding
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = [(PhoneSettingsTelephony *)self hasSubscriberIdentity];
    if (result)
    {
      return [MEMORY[0x277D75128] isRunningInStoreDemoMode] ^ 1;
    }
  }

  return result;
}

- (int)showCallWaiting
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return [(PhoneSettingsTelephony *)self hasSubscriberIdentity];
  }

  return result;
}

- (int)showCallerID
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return [(PhoneSettingsTelephony *)self hasSubscriberIdentity];
  }

  return result;
}

- (int)showSIMPIN
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return ([MEMORY[0x277D75128] isRunningInStoreDemoMode] & 1) == 0 && -[PhoneSettingsTelephony simIsPresent](self, "simIsPresent");
  }

  return result;
}

- (id)pendingRequestForUniqueSettingType:(id)type
{
  typeCopy = type;
  null = typeCopy;
  if (!typeCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v6 = [(NSMutableDictionary *)self->_pendingRequests objectForKey:null];

  return v6;
}

- (id)pendingSaveForUniqueSettingType:(id)type
{
  typeCopy = type;
  null = typeCopy;
  if (!typeCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v6 = [(NSMutableDictionary *)self->_pendingSaves objectForKey:null];

  return v6;
}

- (void)receivedRequestResponseForUniqueSettingType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (!typeCopy)
  {
    typeCopy = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableDictionary *)self->_pendingRequests removeObjectForKey:typeCopy];
}

- (void)receivedSaveResponseForUniqueSettingType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (!typeCopy)
  {
    typeCopy = [MEMORY[0x277CBEB68] null];
  }

  [(NSMutableDictionary *)self->_pendingSaves removeObjectForKey:typeCopy];
}

- (id)_callForwardingSettingsForForwardingReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (([reasonCopy isEqualToString:*MEMORY[0x277CC41A0]] & 1) == 0)
  {
    if ([reasonCopy isEqualToString:*MEMORY[0x277CC4188]])
    {
      v5 = 40;
      goto LABEL_9;
    }

    if ([reasonCopy isEqualToString:*MEMORY[0x277CC4190]])
    {
      v5 = 48;
      goto LABEL_9;
    }

    v6 = [reasonCopy isEqualToString:*MEMORY[0x277CC4198]];
    if (v6)
    {
      v5 = 56;
      goto LABEL_9;
    }

    v10 = PHDefaultLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = reasonCopy;
      _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Was asked for call-forwarding settings for an unsupported reason (%@), returning unconditional", &v11, 0xCu);
    }
  }

  v5 = 32;
LABEL_9:
  v7 = *(&self->super.isa + v5);
  v8 = v7;

  return v7;
}

- (void)postCallForwardingChangedNotificationForForwardingReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:*MEMORY[0x277CC41A0]])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = defaultCenter;
    v7 = @"SettingsTelephonyCallForwardingChanged";
LABEL_9:
    [defaultCenter postNotificationName:v7 object:self];

    goto LABEL_10;
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277CC4188]])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = defaultCenter;
    v7 = @"SettingsTelephonyCallForwardingChangedForMobileBusy";
    goto LABEL_9;
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277CC4190]])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = defaultCenter;
    v7 = @"SettingsTelephonyCallForwardingChangedForNoReply";
    goto LABEL_9;
  }

  v8 = [reasonCopy isEqualToString:*MEMORY[0x277CC4198]];
  if (v8)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = defaultCenter;
    v7 = @"SettingsTelephonyCallForwardingChangedForNotReachable";
    goto LABEL_9;
  }

  v9 = PHDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = reasonCopy;
    _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Was asked to post a notification for an unsupported reason (%@), doing nothing", &v10, 0xCu);
  }

LABEL_10:
}

- (id)lastUsedForwardingNumberForReason:(id)reason
{
  v3 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reason];
  v4 = v3;
  if (v3)
  {
    defaultCallForwardingNumber = [v3 defaultCallForwardingNumber];
  }

  else
  {
    defaultCallForwardingNumber = 0;
  }

  return defaultCallForwardingNumber;
}

- (void)resetLastUsedForwardingNumberForReason:(id)reason
{
  v3 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reason];
  if (v3)
  {
    v5 = v3;
    [v3 setDefaultCallForwardingNumber:0];
    defaultCallForwardingNumberPreferencesKey = [v5 defaultCallForwardingNumberPreferencesKey];
    CFPreferencesSetAppValue(defaultCallForwardingNumberPreferencesKey, 0, @"com.apple.mobilephone.settings");

    CFPreferencesAppSynchronize(@"com.apple.mobilephone.settings");
    v3 = v5;
  }
}

- (void)_handleCallForwardingSettings:(id)settings didAttemptToSet:(BOOL)set forwardingReason:(id)reason
{
  setCopy = set;
  v29 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  reasonCopy = reason;
  v10 = PHDefaultLog(reasonCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    *v26 = settingsCopy;
    *&v26[8] = 1024;
    *&v26[10] = setCopy;
    v27 = 2112;
    v28 = reasonCopy;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "Handle call forwarding settings userInfo: %@ didSet: %d forwardingReason: %@", &v25, 0x1Cu);
  }

  if ([reasonCopy isEqualToString:*MEMORY[0x277CC4180]])
  {
    [(PhoneSettingsTelephony *)self _handleCallForwardingSettings:settingsCopy didAttemptToSet:setCopy forwardingReason:*MEMORY[0x277CC41A0]];
    [(PhoneSettingsTelephony *)self _handleCallForwardingSettings:settingsCopy didAttemptToSet:setCopy forwardingReason:*MEMORY[0x277CC4188]];
    [(PhoneSettingsTelephony *)self _handleCallForwardingSettings:settingsCopy didAttemptToSet:setCopy forwardingReason:*MEMORY[0x277CC4190]];
    [(PhoneSettingsTelephony *)self _handleCallForwardingSettings:settingsCopy didAttemptToSet:setCopy forwardingReason:*MEMORY[0x277CC4198]];
  }

  else
  {
    v11 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reasonCopy];
    v12 = v11;
    if (settingsCopy)
    {
      v13 = [settingsCopy objectForKey:*MEMORY[0x277CC41E8]];
      if ([v13 BOOLValue])
      {
        v14 = 2;
      }

      else
      {
        v14 = 4;
      }

      [v12 setCallForwardingState:v14];

      v15 = [settingsCopy objectForKey:*MEMORY[0x277CC4170]];
      v16 = v15;
      if (v15 && [v15 length])
      {
        active = CPPhoneNumberCopyActiveCountryCode();
        v18 = UIFormattedPhoneNumberFromStringWithCountry();
        [v12 setCallForwardingNumber:v18];
      }

      else
      {
        active = objc_alloc_init(MEMORY[0x277CCACA8]);
        [v12 setCallForwardingNumber:active];
      }

      if (setCopy)
      {
        callForwardingNumber = [v12 callForwardingNumber];
        [v12 setDefaultCallForwardingNumber:callForwardingNumber];

        defaultCallForwardingNumberPreferencesKey = [v12 defaultCallForwardingNumberPreferencesKey];
        defaultCallForwardingNumber = [v12 defaultCallForwardingNumber];
        CFPreferencesSetAppValue(defaultCallForwardingNumberPreferencesKey, defaultCallForwardingNumber, @"com.apple.mobilephone.settings");

        CFPreferencesAppSynchronize(@"com.apple.mobilephone.settings");
      }
    }

    else
    {
      [v11 setCallForwardingState:{objc_msgSend(v11, "callForwardingState") & 0xFFFFFFFELL}];
      v22 = [v12 setCallForwardingState:{objc_msgSend(v12, "callForwardingState") | 8}];
    }

    v23 = PHDefaultLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      callForwardingState = [v12 callForwardingState];
      v25 = 67109378;
      *v26 = callForwardingState;
      *&v26[4] = 2112;
      *&v26[6] = reasonCopy;
      _os_log_impl(&dword_23C12D000, v23, OS_LOG_TYPE_DEFAULT, "Set call forwarding state to %d for forwarding reason %@", &v25, 0x12u);
    }

    [(PhoneSettingsTelephony *)self postCallForwardingChangedNotificationForForwardingReason:reasonCopy];
    [v12 setCallForwardingState:{objc_msgSend(v12, "callForwardingState") & 0xFFFFFFF7}];
  }
}

- (void)_handleCallWaitingSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = PHDefaultLog(settingsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = settingsCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony _handleCallWaitingSettings]: Received a response for call-waiting request, userInfo is %@", &v15, 0xCu);
  }

  if (settingsCopy)
  {
    v7 = [settingsCopy objectForKey:*MEMORY[0x277CC41E8]];
    if ([v7 BOOLValue])
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }

    self->_callWaitingEnabled = v8;

    v10 = PHDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      callWaitingEnabled = self->_callWaitingEnabled;
      v15 = 67109120;
      LODWORD(v16) = callWaitingEnabled;
      v12 = "[PhoneSettingsTelephony _handleCallWaitingSettings]: _callWaitingEnabled was set to %d";
LABEL_11:
      _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 8u);
    }
  }

  else
  {
    self->_callWaitingEnabled = self->_callWaitingEnabled & 0xFFFFFFF6 | 8;
    v10 = PHDefaultLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_callWaitingEnabled;
      v15 = 67109120;
      LODWORD(v16) = v13;
      v12 = "[WARN] [PhoneSettingsTelephony _handleCallWaitingSettings]: call-waiting error, no userInfo was supplied, _callWaitingEnabled was set to %d";
      goto LABEL_11;
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonyCallWaitingChanged" object:self];

  self->_callWaitingEnabled &= ~8u;
}

- (void)_handleNetworkList:(id)list
{
  if (list)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:list forKey:@"SettingsTelephonyNetworkListParameter"];
  }

  else
  {
    v5 = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonyNetworksChanged" object:self userInfo:v5];
}

- (void)_handleCallerIDSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = PHDefaultLog(settingsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = settingsCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v12, 0xCu);
  }

  if (settingsCopy)
  {
    v6 = [settingsCopy objectForKey:*MEMORY[0x277CC41C8]];
    v7 = [settingsCopy objectForKey:*MEMORY[0x277CC41A8]];
    if (v6)
    {
      if ([v6 isEqualToString:*MEMORY[0x277CC41C0]])
      {
        v8 = 2;
      }

      else
      {
        v8 = 4;
      }

      self->_callerIDIsModifiable = v8;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CC41B8]])
    {
      v9 = 4;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277CC41B0]])
    {
      v9 = 2;
    }

    else
    {
      v9 = 8;
    }

    self->_callerIDMode = v9;
  }

  else
  {
    v10 = *&self->_callerIDIsModifiable;
    LODWORD(v10) = v10 & 0xFFFFFFF6 | 8;
    HIDWORD(v10) = HIDWORD(v10) & 0xFFFFFFF6 | 8;
    *&self->_callerIDIsModifiable = v10;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonyCallerIDChanged" object:self];

  *&self->_callerIDIsModifiable &= 0xFFFFFFF7FFFFFFF7;
}

- (void)_handleCallerIDChanged
{
  [(PhoneSettingsTelephony *)self _resetCallerIDSettings];

  [(PhoneSettingsTelephony *)self _handleCallerIDSettings:0];
}

- (void)_handleSIMLockSettings:(id)settings
{
  v11 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = PHDefaultLog(settingsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = settingsCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Handling SIM lock settings changed with user info: %@", &v9, 0xCu);
  }

  if (settingsCopy)
  {
    v6 = [settingsCopy objectForKey:*MEMORY[0x277CC41E8]];
    if ([v6 BOOLValue])
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    self->_simLocked = v7;
  }

  else
  {
    self->_simLocked = self->_simLocked & 0xFFFFFFF6 | 8;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonySIMLockChanged" object:self];

  self->_simLocked &= ~8u;
}

- (void)_handlePINSettings:(id)settings
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:settings != 0];
  v7 = [v4 dictionaryWithObject:v5 forKey:@"success"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonyPINChangedNotification" object:self userInfo:v7];
}

- (void)_requestCallForwardingSettingsForReason:(id)reason
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = *MEMORY[0x277CC4238];
  v6 = *MEMORY[0x277CC4230];
  v7 = *MEMORY[0x277CC4168];
  v8 = *MEMORY[0x277CC4160];
  v9 = *MEMORY[0x277CC4178];
  reasonCopy = reason;
  v12 = [v4 dictionaryWithObjectsAndKeys:{reasonCopy, @"STSettingTypeUniqueIdentifier", v5, v6, v7, v8, reasonCopy, v9, 0}];
  v11 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reasonCopy];

  [v11 setCallForwardingState:1];
  [(PhoneSettingsTelephony *)self _requestSettings:v12];
}

- (void)_saveCallForwardingEnabled:(BOOL)enabled number:(id)number forwardingReason:(id)reason
{
  enabledCopy = enabled;
  reasonCopy = reason;
  numberCopy = number;
  v13 = [(PhoneSettingsTelephony *)self _callForwardingSettingsForForwardingReason:reasonCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:reasonCopy forKey:@"STSettingTypeUniqueIdentifier"];
  [dictionary setObject:*MEMORY[0x277CC4238] forKey:*MEMORY[0x277CC4230]];
  [dictionary setObject:*MEMORY[0x277CC4168] forKey:*MEMORY[0x277CC4160]];
  [dictionary setObject:reasonCopy forKey:*MEMORY[0x277CC4178]];

  v11 = MEMORY[0x277CBED28];
  if (!enabledCopy)
  {
    v11 = MEMORY[0x277CBED10];
  }

  [dictionary setObject:*v11 forKey:*MEMORY[0x277CC41E8]];
  v12 = UIUnformattedPhoneNumberFromString();

  if (v12)
  {
    [dictionary setObject:v12 forKey:*MEMORY[0x277CC4170]];
  }

  [v13 setCallForwardingState:{objc_msgSend(v13, "callForwardingState") | 1}];
  [(PhoneSettingsTelephony *)self _saveSettings:dictionary];
}

- (void)_requestSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = PHDefaultLog(settingsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = settingsCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "[PhoneSettingsTelephony _requestSettings:]: Settings dictionary requested is %@", &v10, 0xCu);
  }

  pendingRequests = self->_pendingRequests;
  if (!pendingRequests)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_pendingRequests;
    self->_pendingRequests = v7;

    pendingRequests = self->_pendingRequests;
  }

  v9 = [settingsCopy objectForKey:@"STSettingTypeUniqueIdentifier"];
  [(NSMutableDictionary *)pendingRequests setObject:settingsCopy forKey:v9];

  CTSettingRequest();
}

- (void)_saveSettings:(id)settings
{
  v13 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  pendingSaves = self->_pendingSaves;
  if (!pendingSaves)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_pendingSaves;
    self->_pendingSaves = v6;

    pendingSaves = self->_pendingSaves;
  }

  v8 = [settingsCopy objectForKey:@"STSettingTypeUniqueIdentifier"];
  [(NSMutableDictionary *)pendingSaves setObject:settingsCopy forKey:v8];

  v10 = PHDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = settingsCopy;
    _os_log_impl(&dword_23C12D000, v10, OS_LOG_TYPE_DEFAULT, "SAVE SETTINGS: %@", &v11, 0xCu);
  }

  CTSettingSave();
}

- (void)_simRemoved
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"SettingsTelephonySIMRemoved";
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v5, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonySIMRemoved" object:self];

  [(PhoneSettingsTelephony *)self _reset];
}

- (void)_simPUKLocked
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"SettingsTelephonySIMPUKLocked";
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v5, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonySIMPUKLocked" object:self];
}

- (void)_networkSettingsDisabled
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"SettingsTelephonyNetworkSettingsDisabledNotification";
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v5, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SettingsTelephonyNetworkSettingsDisabledNotification" object:self];
}

- (void)_phoneBookSelected
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self + 112) & 1;
    newNumber = self->_newNumber;
    v6[0] = 67109378;
    v6[1] = v4;
    v7 = 2112;
    v8 = newNumber;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Phone book selected, _savingPhoneNumber=%d, _newNumber=%@", v6, 0x12u);
  }

  if (*(self + 112))
  {
    *(self + 112) |= 2u;
    [(PhoneSettingsTelephony *)self serverConnection];
    _CTServerConnectionSavePhonebookEntry();
  }
}

- (void)_phoneNumberSaveFinishedWithSuccess:(BOOL)success
{
  successCopy = success;
  v21 = *MEMORY[0x277D85DE8];
  v5 = PHDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = successCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "Phone number save finished with success=%d", &v17, 8u);
  }

  *(self + 112) &= ~1u;
  newNumber = self->_newNumber;
  if (successCopy)
  {
    if (newNumber)
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v9 = PHDefaultLog(active);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (active)
      {
        if (v10)
        {
          v17 = 138412546;
          v18 = newNumber;
          v19 = 2112;
          v20 = active;
          _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to format digits %@ using ISO country code %@", &v17, 0x16u);
        }

        v11 = PNCreateFormattedStringWithCountry();
        myNumber = self->_myNumber;
        self->_myNumber = v11;

        CFRelease(active);
      }

      else
      {
        if (v10)
        {
          v17 = 138412290;
          v18 = newNumber;
          _os_log_impl(&dword_23C12D000, v9, OS_LOG_TYPE_DEFAULT, "Could not determine the country code for the digits %@.", &v17, 0xCu);
        }
      }
    }

    v14 = PHDefaultLog(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_myNumber;
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_23C12D000, v14, OS_LOG_TYPE_DEFAULT, "Phone settings just got success for setting this number: %@", &v17, 0xCu);
    }

    newNumber = self->_newNumber;
    v13 = @"SettingsTelephonySetMyNumberSuccessNotification";
  }

  else
  {
    v13 = @"SettingsTelephonySetMyNumberFailureNotification";
  }

  self->_newNumber = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:v13 object:self];
}

- (void)_phoneNumberWritten
{
  v2 = *(self + 112);
  *(self + 112) = v2 | 4;
  if ((~v2 & 3) == 0)
  {
    [(PhoneSettingsTelephony *)self _phoneNumberSaveFinishedWithSuccess:1];
  }
}

- (void)_phoneNumberChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "Received phone number changed notification", v8, 2u);
  }

  myNumber = self->_myNumber;
  self->_myNumber = 0;

  if ((~*(self + 112) & 7) == 0)
  {
    v6 = PHDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(self + 112);
      v8[0] = 67109632;
      v8[1] = v7 & 1;
      v9 = 1024;
      v10 = (v7 >> 1) & 1;
      v11 = 1024;
      v12 = (v7 >> 2) & 1;
      _os_log_impl(&dword_23C12D000, v6, OS_LOG_TYPE_DEFAULT, "Promoting to a save finished with success notification: _savingPhoneNumber=%d, _phoneBookSelected=%d, _phoneNumberWritten=%d", v8, 0x14u);
    }

    [(PhoneSettingsTelephony *)self _phoneNumberSaveFinishedWithSuccess:1];
  }
}

- (id)descriptionDictionary
{
  manuallySelectedNetworkDictionary = [(PhoneSettingsTelephony *)self manuallySelectedNetworkDictionary];
  v4 = MEMORY[0x277CBEAC0];
  v5 = manuallySelectedNetworkDictionary;
  if (!manuallySelectedNetworkDictionary)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No Manual Network Dictionary"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[PhoneSettingsTelephony networkSelectionMode](self, "networkSelectionMode")}];
  v7 = CTRegistrationCopyLocalizedOperatorName();
  v8 = [v4 dictionaryWithObjectsAndKeys:{v5, @"ManuallySelectedNetworkDictionary", v6, @"NetworkSelectionMode", v7, @"CTRegistrationCopyLocalizedOperatorName", CTRegistrationGetStatus(), @"CTRegistrationGetStatus", 0}];
  v9 = [v4 dictionaryWithObject:v8 forKey:@"PhoneSettingsNetworkState"];

  if (!manuallySelectedNetworkDictionary)
  {
  }

  return v9;
}

@end