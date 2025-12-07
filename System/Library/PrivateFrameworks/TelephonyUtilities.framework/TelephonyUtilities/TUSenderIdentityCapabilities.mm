@interface TUSenderIdentityCapabilities
- (BOOL)canAttemptEmergencyCallsWithoutCellularConnection;
- (BOOL)canAttemptTelephonyCallsWithoutCellularConnection;
- (BOOL)isCSCallingCurrentlyAvailable;
- (BOOL)isEmergencyWiFiCallingCurrentlyAvailable;
- (BOOL)isThumperCallingAllowedForCurrentDevice;
- (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
- (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)d;
- (BOOL)isThumperCallingCurrentlyAvailable;
- (BOOL)isThumperCallingEnabled;
- (BOOL)isThumperCallingProvisioningURLInvalid;
- (BOOL)isVoLTECallingCurrentlyAvailable;
- (BOOL)isVoLTECallingEnabled;
- (BOOL)isWiFiCallingCurrentlyAvailable;
- (BOOL)isWiFiCallingEnabled;
- (BOOL)isWiFiCallingProvisioningURLInvalid;
- (BOOL)isWiFiCallingRoamingEnabled;
- (BOOL)supportsEmergencyWiFiCalling;
- (BOOL)supportsSimultaneousVoiceAndData;
- (BOOL)supportsThumperCalling;
- (BOOL)supportsThumperCallingOverCellularData;
- (BOOL)supportsVoLTECalling;
- (BOOL)supportsWiFiCalling;
- (BOOL)supportsWiFiCallingRoaming;
- (NSData)thumperCallingProvisioningPostData;
- (NSData)wiFiCallingProvisioningPostData;
- (NSURL)thumperCallingProvisioningURL;
- (NSURL)wiFiCallingProvisioningURL;
- (TUCTCapabilityInfo)thumperCallingCapabilityInfo;
- (TUCTCapabilityInfo)voLTECallingCapabilityInfo;
- (TUCTCapabilityInfo)wiFiCallingCapabilityInfo;
- (TUSenderIdentityCapabilities)initWithSenderIdentityUUID:(id)d state:(id)state client:(id)client;
- (id)debugDescription;
- (int)thumperCallingProvisioningStatus;
- (int)wiFiCallingProvisioningStatus;
- (void)_sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:(id)capabilities;
- (void)cancelPinRequestFromPrimaryDeviceForThumperCalling;
- (void)invalidateAndRefreshThumperCallingProvisioningURL;
- (void)invalidateAndRefreshWiFiCallingProvisioningURL;
- (void)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
- (void)requestPinFromPrimaryDeviceForThumperCalling;
- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d;
- (void)setThumperCallingAllowedOnDefaultPairedSecondaryDevice:(BOOL)device;
- (void)setThumperCallingEnabled:(BOOL)enabled;
- (void)setVoLTECallingEnabled:(BOOL)enabled;
- (void)setWiFiCallingEnabled:(BOOL)enabled;
- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled;
@end

@implementation TUSenderIdentityCapabilities

- (BOOL)isThumperCallingEnabled
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isEnabled = [thumperCallingCapabilitiesState isEnabled];

  return isEnabled;
}

- (TUCTCapabilityInfo)thumperCallingCapabilityInfo
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  ctCapabilityInfo = [thumperCallingCapabilitiesState ctCapabilityInfo];

  return ctCapabilityInfo;
}

- (BOOL)isWiFiCallingEnabled
{
  supportsWiFiCalling = [(TUSenderIdentityCapabilities *)self supportsWiFiCalling];
  if (supportsWiFiCalling)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isEnabled = [wiFiCallingCapabilitiesState isEnabled];

    LOBYTE(supportsWiFiCalling) = isEnabled;
  }

  return supportsWiFiCalling;
}

- (BOOL)supportsWiFiCalling
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isSupported = [wiFiCallingCapabilitiesState isSupported];

  return isSupported;
}

- (BOOL)isVoLTECallingEnabled
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  isEnabled = [voLTECallingCapabilitiesState isEnabled];

  return isEnabled;
}

- (BOOL)supportsThumperCalling
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isSupported = [thumperCallingCapabilitiesState isSupported];

  return isSupported;
}

- (BOOL)supportsThumperCallingOverCellularData
{
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsCellularData = [state supportsCellularData];

  return supportsCellularData;
}

- (TUCTCapabilityInfo)wiFiCallingCapabilityInfo
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  ctCapabilityInfo = [wiFiCallingCapabilitiesState ctCapabilityInfo];

  return ctCapabilityInfo;
}

- (BOOL)supportsSimultaneousVoiceAndData
{
  state = [(TUSenderIdentityCapabilities *)self state];
  supportsSimultaneousVoiceAndData = [state supportsSimultaneousVoiceAndData];

  return supportsSimultaneousVoiceAndData;
}

- (BOOL)isWiFiCallingCurrentlyAvailable
{
  isWiFiCallingEnabled = [(TUSenderIdentityCapabilities *)self isWiFiCallingEnabled];
  if (isWiFiCallingEnabled)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isCurrentlyAvailable = [wiFiCallingCapabilitiesState isCurrentlyAvailable];

    LOBYTE(isWiFiCallingEnabled) = isCurrentlyAvailable;
  }

  return isWiFiCallingEnabled;
}

- (TUSenderIdentityCapabilities)initWithSenderIdentityUUID:(id)d state:(id)state client:(id)client
{
  dCopy = d;
  stateCopy = state;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = TUSenderIdentityCapabilities;
  v11 = [(TUSenderIdentityCapabilities *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    senderIdentityUUID = v11->_senderIdentityUUID;
    v11->_senderIdentityUUID = v12;

    v14 = [stateCopy copy];
    state = v11->_state;
    v11->_state = v14;

    objc_storeStrong(&v11->_client, client);
  }

  return v11;
}

- (BOOL)canAttemptTelephonyCallsWithoutCellularConnection
{
  if ([(TUSenderIdentityCapabilities *)self isWiFiCallingCurrentlyAvailable])
  {
    return 1;
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  if ([state supportsPrimaryCalling])
  {
    areRelayCallingFeaturesEnabled = 0;
  }

  else if ([(TUSenderIdentityCapabilities *)self isThumperCallingCurrentlyAvailable])
  {
    areRelayCallingFeaturesEnabled = 1;
  }

  else
  {
    client2 = [(TUSenderIdentityCapabilities *)self client];
    state2 = [client2 state];
    areRelayCallingFeaturesEnabled = [state2 areRelayCallingFeaturesEnabled];
  }

  return areRelayCallingFeaturesEnabled;
}

- (BOOL)canAttemptEmergencyCallsWithoutCellularConnection
{
  canAttemptTelephonyCallsWithoutCellularConnection = [(TUSenderIdentityCapabilities *)self canAttemptTelephonyCallsWithoutCellularConnection];
  if (canAttemptTelephonyCallsWithoutCellularConnection)
  {

    LOBYTE(canAttemptTelephonyCallsWithoutCellularConnection) = [(TUSenderIdentityCapabilities *)self isEmergencyWiFiCallingCurrentlyAvailable];
  }

  return canAttemptTelephonyCallsWithoutCellularConnection;
}

- (BOOL)isCSCallingCurrentlyAvailable
{
  state = [(TUSenderIdentityCapabilities *)self state];
  csCallingCapabilitiesState = [state csCallingCapabilitiesState];
  isCurrentlyAvailable = [csCallingCapabilitiesState isCurrentlyAvailable];

  return isCurrentlyAvailable;
}

- (BOOL)supportsVoLTECalling
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  isSupported = [voLTECallingCapabilitiesState isSupported];

  return isSupported;
}

- (TUCTCapabilityInfo)voLTECallingCapabilityInfo
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  ctCapabilityInfo = [voLTECallingCapabilitiesState ctCapabilityInfo];

  return ctCapabilityInfo;
}

- (BOOL)isVoLTECallingCurrentlyAvailable
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  isCurrentlyAvailable = [voLTECallingCapabilitiesState isCurrentlyAvailable];

  return isCurrentlyAvailable;
}

- (BOOL)supportsWiFiCallingRoaming
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isRoamingSupported = [wiFiCallingCapabilitiesState isRoamingSupported];

  return isRoamingSupported;
}

- (BOOL)isWiFiCallingRoamingEnabled
{
  supportsWiFiCallingRoaming = [(TUSenderIdentityCapabilities *)self supportsWiFiCallingRoaming];
  if (supportsWiFiCallingRoaming)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isRoamingEnabled = [wiFiCallingCapabilitiesState isRoamingEnabled];

    LOBYTE(supportsWiFiCallingRoaming) = isRoamingEnabled;
  }

  return supportsWiFiCallingRoaming;
}

- (BOOL)supportsEmergencyWiFiCalling
{
  supportsWiFiCalling = [(TUSenderIdentityCapabilities *)self supportsWiFiCalling];
  if (supportsWiFiCalling)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isEmergencySupported = [wiFiCallingCapabilitiesState isEmergencySupported];

    LOBYTE(supportsWiFiCalling) = isEmergencySupported;
  }

  return supportsWiFiCalling;
}

- (BOOL)isEmergencyWiFiCallingCurrentlyAvailable
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isEmergencyCurrentlyAvailable = [wiFiCallingCapabilitiesState isEmergencyCurrentlyAvailable];

  return isEmergencyCurrentlyAvailable;
}

- (int)wiFiCallingProvisioningStatus
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  provisioningStatus = [wiFiCallingCapabilitiesState provisioningStatus];

  return provisioningStatus;
}

- (NSURL)wiFiCallingProvisioningURL
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  provisioningURL = [wiFiCallingCapabilitiesState provisioningURL];

  return provisioningURL;
}

- (BOOL)isWiFiCallingProvisioningURLInvalid
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isProvisioningURLInvalid = [wiFiCallingCapabilitiesState isProvisioningURLInvalid];

  return isProvisioningURLInvalid;
}

- (NSData)wiFiCallingProvisioningPostData
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  provisioningPostData = [wiFiCallingCapabilitiesState provisioningPostData];

  return provisioningPostData;
}

- (BOOL)isThumperCallingAllowedForCurrentDevice
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isApproved = [thumperCallingCapabilitiesState isApproved];

  return isApproved;
}

- (BOOL)isThumperCallingCurrentlyAvailable
{
  isThumperCallingEnabled = [(TUSenderIdentityCapabilities *)self isThumperCallingEnabled];
  if (isThumperCallingEnabled)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
    isCurrentlyAvailable = [thumperCallingCapabilitiesState isCurrentlyAvailable];

    LOBYTE(isThumperCallingEnabled) = isCurrentlyAvailable;
  }

  return isThumperCallingEnabled;
}

- (int)thumperCallingProvisioningStatus
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  provisioningStatus = [thumperCallingCapabilitiesState provisioningStatus];

  return provisioningStatus;
}

- (NSURL)thumperCallingProvisioningURL
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  provisioningURL = [thumperCallingCapabilitiesState provisioningURL];

  return provisioningURL;
}

- (BOOL)isThumperCallingProvisioningURLInvalid
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isProvisioningURLInvalid = [thumperCallingCapabilitiesState isProvisioningURLInvalid];

  return isProvisioningURLInvalid;
}

- (NSData)thumperCallingProvisioningPostData
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  provisioningPostData = [thumperCallingCapabilitiesState provisioningPostData];

  return provisioningPostData;
}

- (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s can only be called from devices with [TUCallCapabilities supportsPrimaryCalling] = YES", "-[TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:]"];
    NSLog(&cfstr_TuassertionFai.isa, v8);

    if (_TUAssertShouldCrashApplication())
    {
      client2 = [(TUSenderIdentityCapabilities *)self client];
      state2 = [client2 state];
      supportsPrimaryCalling2 = [state2 supportsPrimaryCalling];

      if ((supportsPrimaryCalling2 & 1) == 0)
      {
        [TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:];
      }
    }
  }

  state3 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state3 thumperCallingCapabilitiesState];

  approvedSecondaryDeviceIDs = [thumperCallingCapabilitiesState approvedSecondaryDeviceIDs];
  v15 = [approvedSecondaryDeviceIDs containsObject:dCopy];

  return v15;
}

- (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice
{
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s can only be called from devices with [TUCallCapabilities supportsPrimaryCalling] = YES", "-[TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice]"];
    NSLog(&cfstr_TuassertionFai.isa, v6);

    if (_TUAssertShouldCrashApplication())
    {
      client2 = [(TUSenderIdentityCapabilities *)self client];
      state2 = [client2 state];
      supportsPrimaryCalling2 = [state2 supportsPrimaryCalling];

      if ((supportsPrimaryCalling2 & 1) == 0)
      {
        [TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice];
      }
    }
  }

  state3 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state3 thumperCallingCapabilitiesState];

  if ([thumperCallingCapabilitiesState supportsDefaultPairedDevice])
  {
    client3 = [(TUSenderIdentityCapabilities *)self client];
    state4 = [client3 state];
    defaultPairedDevice = [state4 defaultPairedDevice];
    uniqueID = [defaultPairedDevice uniqueID];
    v16 = [(TUSenderIdentityCapabilities *)self isThumperCallingAllowedOnSecondaryDeviceWithID:uniqueID];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setVoLTECallingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set VoLTE calling enabled to %d", v8, 8u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client setVoLTECallingEnabled:enabledCopy forSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)setWiFiCallingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set WiFi calling enabled to %d", v8, 8u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client setWiFiCallingEnabled:enabledCopy forSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)setWiFiCallingRoamingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set WiFi calling roaming enabled to %d", v8, 8u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client setWiFiCallingRoamingEnabled:enabledCopy forSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)invalidateAndRefreshWiFiCallingProvisioningURL
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to invalidate and refresh WiFi calling provisioning URL", v6, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)setThumperCallingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = enabledCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set Thumper calling enabled to %d", v8, 8u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client setThumperCallingEnabled:enabledCopy forSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)invalidateAndRefreshThumperCallingProvisioningURL
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to invalidate and refresh Thumper calling provisioning URL", v6, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)setThumperCallingAllowed:(BOOL)allowed onSecondaryDeviceWithID:(id)d
{
  allowedCopy = allowed;
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    [TUSenderIdentityCapabilities setThumperCallingAllowed:onSecondaryDeviceWithID:];
  }

  v11 = TUDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = allowedCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Asked to set Thumper calling allowed to %d on secondary device with ID %@", v14, 0x12u);
  }

  client2 = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client2 setThumperCallingAllowed:allowedCopy onSecondaryDeviceWithID:dCopy forSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)setThumperCallingAllowedOnDefaultPairedSecondaryDevice:(BOOL)device
{
  deviceCopy = device;
  v13 = *MEMORY[0x1E69E9840];
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    [TUSenderIdentityCapabilities setThumperCallingAllowedOnDefaultPairedSecondaryDevice:];
  }

  v9 = TUDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = deviceCopy;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set Thumper calling allowed on paired secondary device to %d", v12, 8u);
  }

  client2 = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client2 setThumperCallingAllowedOnDefaultPairedDevice:deviceCopy forSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)requestPinFromPrimaryDeviceForThumperCalling
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to request PIN from primary device for Thumper calling", v5, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  [client requestPinFromPrimaryDevice];
}

- (void)cancelPinRequestFromPrimaryDeviceForThumperCalling
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to cancel PIN from primary device for Thumper calling", v5, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  [client cancelPinRequestFromPrimaryDevice];
}

- (void)_sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:(id)capabilities
{
  v83 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  isWiFiCallingEnabled = [capabilitiesCopy isWiFiCallingEnabled];
  isVoLTECallingEnabled = [capabilitiesCopy isVoLTECallingEnabled];
  supportsThumperCalling = [capabilitiesCopy supportsThumperCalling];
  supportsThumperCallingOverCellularData = [capabilitiesCopy supportsThumperCallingOverCellularData];
  isThumperCallingEnabled = [capabilitiesCopy isThumperCallingEnabled];
  thumperCallingCapabilityInfo = [capabilitiesCopy thumperCallingCapabilityInfo];
  provisioningStatus = [thumperCallingCapabilityInfo provisioningStatus];

  wiFiCallingCapabilityInfo = [capabilitiesCopy wiFiCallingCapabilityInfo];
  provisioningURL = [wiFiCallingCapabilityInfo provisioningURL];

  thumperCallingCapabilityInfo2 = [capabilitiesCopy thumperCallingCapabilityInfo];
  provisioningURL2 = [thumperCallingCapabilityInfo2 provisioningURL];

  state = [capabilitiesCopy state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isAssociated = [thumperCallingCapabilitiesState isAssociated];

  state2 = [capabilitiesCopy state];

  thumperCallingCapabilitiesState2 = [state2 thumperCallingCapabilitiesState];
  supportsDefaultPairedDevice = [thumperCallingCapabilitiesState2 supportsDefaultPairedDevice];

  isWiFiCallingEnabled2 = [(TUSenderIdentityCapabilities *)self isWiFiCallingEnabled];
  isVoLTECallingEnabled2 = [(TUSenderIdentityCapabilities *)self isVoLTECallingEnabled];
  supportsThumperCalling2 = [(TUSenderIdentityCapabilities *)self supportsThumperCalling];
  supportsThumperCallingOverCellularData2 = [(TUSenderIdentityCapabilities *)self supportsThumperCallingOverCellularData];
  isThumperCallingEnabled2 = [(TUSenderIdentityCapabilities *)self isThumperCallingEnabled];
  thumperCallingCapabilityInfo3 = [(TUSenderIdentityCapabilities *)self thumperCallingCapabilityInfo];
  provisioningStatus2 = [thumperCallingCapabilityInfo3 provisioningStatus];

  wiFiCallingCapabilityInfo2 = [(TUSenderIdentityCapabilities *)self wiFiCallingCapabilityInfo];
  provisioningURL3 = [wiFiCallingCapabilityInfo2 provisioningURL];

  thumperCallingCapabilityInfo4 = [(TUSenderIdentityCapabilities *)self thumperCallingCapabilityInfo];
  provisioningURL4 = [thumperCallingCapabilityInfo4 provisioningURL];

  state3 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState3 = [state3 thumperCallingCapabilitiesState];
  isAssociated2 = [thumperCallingCapabilitiesState3 isAssociated];

  state4 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState4 = [state4 thumperCallingCapabilitiesState];
  supportsDefaultPairedDevice2 = [thumperCallingCapabilitiesState4 supportsDefaultPairedDevice];

  v26 = 0x1E696A000;
  if (isWiFiCallingEnabled != isWiFiCallingEnabled2)
  {
    v27 = TUDefaultLog(v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v64 = isWiFiCallingEnabled;
      *&v64[4] = 1024;
      *&v64[6] = isWiFiCallingEnabled2;
      _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "WiFi capabilities changed from %d to %d", buf, 0xEu);
    }

    client = [(TUSenderIdentityCapabilities *)self client];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke;
    v62[3] = &unk_1E7424DA0;
    v62[4] = self;
    [client performDelegateCallbackBlock:v62];

    v26 = 0x1E696A000uLL;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"TUCallCapabilitiesWiFiCallingChangedNotification" object:0];
  }

  if (isVoLTECallingEnabled != isVoLTECallingEnabled2)
  {
    v30 = TUDefaultLog(v25);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v64 = isVoLTECallingEnabled;
      *&v64[4] = 1024;
      *&v64[6] = isVoLTECallingEnabled2;
      _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, "VoLTE capabilities changed from %d to %d", buf, 0xEu);
    }

    client2 = [(TUSenderIdentityCapabilities *)self client];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_12;
    v61[3] = &unk_1E7424DA0;
    v61[4] = self;
    [client2 performDelegateCallbackBlock:v61];

    defaultCenter2 = [*(v26 + 3464) defaultCenter];
    [defaultCenter2 postNotificationName:@"TUCallCapabilitiesVoLTECallingChangedNotification" object:0];
  }

  if (supportsThumperCalling != supportsThumperCalling2 || ((supportsThumperCallingOverCellularData ^ supportsThumperCallingOverCellularData2) & 1) != 0 || ((isThumperCallingEnabled ^ isThumperCallingEnabled2) & 1) != 0 || provisioningStatus != provisioningStatus2 || ((supportsDefaultPairedDevice ^ supportsDefaultPairedDevice2) & 1) != 0 || isAssociated != isAssociated2)
  {
    v33 = TUDefaultLog(v25);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67111936;
      *v64 = supportsThumperCalling;
      *&v64[4] = 1024;
      *&v64[6] = supportsThumperCallingOverCellularData;
      LOWORD(v65) = 1024;
      *(&v65 + 2) = isThumperCallingEnabled;
      HIWORD(v65) = 1024;
      v66 = provisioningStatus;
      v67 = 1024;
      v68 = isAssociated;
      v69 = 1024;
      v70 = supportsDefaultPairedDevice;
      v71 = 1024;
      v72 = supportsThumperCalling2;
      v73 = 1024;
      v74 = supportsThumperCallingOverCellularData2;
      v75 = 1024;
      v76 = isThumperCallingEnabled2;
      v77 = 1024;
      v78 = provisioningStatus2;
      v79 = 1024;
      v80 = isAssociated2;
      v81 = 1024;
      v82 = supportsDefaultPairedDevice2;
      _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Thumper capabilities changed from (supported=%d overCellularData=%d enabled=%d provisioningStatus=%d, associated=%d, supportsDefaultPairedDevice=%d) to (supported=%d overCellularData=%d enabled=%d provisioningStatus=%d, associated=%d, supportsDefaultPairedDevice=%d)", buf, 0x4Au);
    }

    client3 = [(TUSenderIdentityCapabilities *)self client];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_15;
    v60[3] = &unk_1E7424DA0;
    v60[4] = self;
    [client3 performDelegateCallbackBlock:v60];

    defaultCenter3 = [*(v26 + 3464) defaultCenter];
    [defaultCenter3 postNotificationName:@"TUCallCapabilitiesThumperCallingChangedNotification" object:0];
  }

  v36 = TUObjectsAreEqualOrNil(provisioningURL, provisioningURL3);
  if ((v36 & 1) == 0)
  {
    v37 = TUDefaultLog(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v64 = provisioningURL;
      *&v64[8] = 2112;
      v65 = provisioningURL3;
      _os_log_impl(&dword_1956FD000, v37, OS_LOG_TYPE_DEFAULT, "WiFi calling URL changed from %@ to %@", buf, 0x16u);
    }

    client4 = [(TUSenderIdentityCapabilities *)self client];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_18;
    v59[3] = &unk_1E7424DA0;
    v59[4] = self;
    [client4 performDelegateCallbackBlock:v59];

    defaultCenter4 = [*(v26 + 3464) defaultCenter];
    [defaultCenter4 postNotificationName:@"TUCallCapabilitiesWiFiCallingProvisioningURLChangedNotification" object:0];
  }

  v40 = TUObjectsAreEqualOrNil(provisioningURL2, provisioningURL4);
  if ((v40 & 1) == 0)
  {
    v41 = TUDefaultLog(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v64 = provisioningURL2;
      *&v64[8] = 2112;
      v65 = provisioningURL4;
      _os_log_impl(&dword_1956FD000, v41, OS_LOG_TYPE_DEFAULT, "Thumper calling URL changed from %@ to %@", buf, 0x16u);
    }

    client5 = [(TUSenderIdentityCapabilities *)self client];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_21;
    v58[3] = &unk_1E7424DA0;
    v58[4] = self;
    [client5 performDelegateCallbackBlock:v58];

    defaultCenter5 = [*(v26 + 3464) defaultCenter];
    [defaultCenter5 postNotificationName:@"TUCallCapabilitiesThumperCallingProvisioningURLChangedNotification" object:0];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeVoLTECallingCapabilitiesForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_15(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_21(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:v3];
  }
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"== TUSenderIdentityCapabilities ==\n"];
  [v3 appendString:@"CDMA:\n"];
  [v3 appendFormat:@"    supportsSimultaneousVoiceAndData: %d\n", -[TUSenderIdentityCapabilities supportsSimultaneousVoiceAndData](self, "supportsSimultaneousVoiceAndData")];
  [v3 appendString:@"Wi-Fi calling:\n"];
  [v3 appendFormat:@"    supportsWiFiCalling: %d\n", -[TUSenderIdentityCapabilities supportsWiFiCalling](self, "supportsWiFiCalling")];
  [v3 appendFormat:@"    isWiFiCallingEnabled: %d\n", -[TUSenderIdentityCapabilities isWiFiCallingEnabled](self, "isWiFiCallingEnabled")];
  [v3 appendFormat:@"    isWiFiCallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isWiFiCallingCurrentlyAvailable](self, "isWiFiCallingCurrentlyAvailable")];
  [v3 appendFormat:@"    supportsEmergencyWiFiCalling: %d\n", -[TUSenderIdentityCapabilities supportsEmergencyWiFiCalling](self, "supportsEmergencyWiFiCalling")];
  [v3 appendFormat:@"    isEmergencyWiFiCallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isEmergencyWiFiCallingCurrentlyAvailable](self, "isEmergencyWiFiCallingCurrentlyAvailable")];
  [v3 appendString:@"VoLTE calling:\n"];
  [v3 appendFormat:@"    supportsVoLTECalling: %d\n", -[TUSenderIdentityCapabilities supportsVoLTECalling](self, "supportsVoLTECalling")];
  [v3 appendFormat:@"    isVoLTECallingEnabled: %d\n", -[TUSenderIdentityCapabilities isVoLTECallingEnabled](self, "isVoLTECallingEnabled")];
  [v3 appendFormat:@"    isVoLTECallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isVoLTECallingCurrentlyAvailable](self, "isVoLTECallingCurrentlyAvailable")];
  [v3 appendString:@"Thumper calling:\n"];
  [v3 appendFormat:@"    supportsThumperCalling: %d\n", -[TUSenderIdentityCapabilities supportsThumperCalling](self, "supportsThumperCalling")];
  [v3 appendFormat:@"    isThumperCallingAllowedForCurrentDevice: %d\n", -[TUSenderIdentityCapabilities isThumperCallingAllowedForCurrentDevice](self, "isThumperCallingAllowedForCurrentDevice")];
  [v3 appendFormat:@"    isThumperCallingEnabled: %d\n", -[TUSenderIdentityCapabilities isThumperCallingEnabled](self, "isThumperCallingEnabled")];
  [v3 appendFormat:@"    supportsThumperCallingOverCellularData: %d\n", -[TUSenderIdentityCapabilities supportsThumperCallingOverCellularData](self, "supportsThumperCallingOverCellularData")];
  [v3 appendFormat:@"    isThumperCallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isThumperCallingCurrentlyAvailable](self, "isThumperCallingCurrentlyAvailable")];

  return v3;
}

- (void)isThumperCallingAllowedOnSecondaryDeviceWithID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:]" object:? file:? lineNumber:? description:?];
}

- (void)isThumperCallingAllowedOnDefaultPairedSecondaryDevice
{
  OUTLINED_FUNCTION_0_2();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice]" object:? file:? lineNumber:? description:?];
}

- (void)setThumperCallingAllowed:onSecondaryDeviceWithID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities setThumperCallingAllowed:onSecondaryDeviceWithID:]" object:? file:? lineNumber:? description:?];
}

- (void)setThumperCallingAllowedOnDefaultPairedSecondaryDevice:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities setThumperCallingAllowedOnDefaultPairedSecondaryDevice:]" object:? file:? lineNumber:? description:?];
}

@end